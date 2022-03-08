library(MASS)
library(foreach)
library(parallel)
library(ggplot2)
library(abind)

load("/export/cse02/msaad/TCGA/eQTL/GDC_MATRIX/RNA_DATA.RData")
CANCER = names(table(RNA[,"Cancer.Type"]))
LIST = read.table("LS_DIR")

for (KK in 1:nrow(LIST))
{
setwd(as.character(LIST[KK,1]))
REGIONS = read.table("REGIONS")
list_genes=as.character(REGIONS[1,3])
PHENO=as.character(REGIONS[1,4])

genes[,"dup"] = duplicated(genes$Gene.name)
genes= genes[genes$dup==FALSE , ]
genes = genes[,-c(ncol(genes))]
GENES = genes[genes$Gene.type== "protein_coding" , ]

##
FAM = read.table("EXTRACTED.fam")
BIM = read.table("EXTRACTED.bim")
RAW = read.table("EXTRACTED.raw",h=TRUE)
RAW = RAW[,-c(2,3,4,5,6)]
colnames(MASTER)[2] = "FID"

results <- mclapply(1:nrow(BIM), FUN=function(i)
{
L1 = c("FID",COL,as.character(list_genes))
L2 = match(L1, colnames(RNA))

DATA = RNA[,L2[!is.na(L2)]]
MERGE = merge(RAW[,c(1,i+1)], DATA, by = c("FID"))


#N = c(N , nrow(MERGE[!is.na(MERGE[,as.character(list_genes[j])]) & !is.na(MERGE[,2]) , ]  )  )
mod = lm(MERGE[,as.character(list_genes)] ~ MERGE[,2]+ MERGE[,"Cancer.Type"] + MERGE[,"Age.Diagnosis"] +MERGE[,"Curated.Imputed.Gender"] +MERGE[,"PC.1"] +MERGE[,"PC.2"] +MERGE[,"PC.3"] +MERGE[,"PC.4"] +MERGE[,"PC.5"] +MERGE[,"PC.6"] +MERGE[,"PC.7"] )
S = summary(mod)
if(length(grep("2]",rownames(S$coefficients)))==0) {P = c(P,"NA") ; B = c(B,"NA") ;  Z = c(Z,"NA")} else {
P = S$coefficients[2,4]
Z = S$coefficients[2,3]
B = S$coefficients[2,1]
}
return(c(BIM[i,1],BIM[i,4],as.character(list_genes),B, Z , P) )
} , mc.cores = 48)

ALL_RES = t(abind(results,along=2))
colnames(ALL_RES) = c(c("CHR","BP","Gene","B","Z","P"))
write.table(ALL_RES , "OUTPUT_eQTL.tsv",quote=FALSE , col.names=TRUE, row.names = FALSE,sep="\t")

N = length(grep("MedianLowHigh",PHENO))
if (N ==0)
{
results <- mclapply(1:nrow(BIM), FUN=function(i)
{
MERGE = merge(RAW[,c(1,i+1)], MASTER[,c("FID",PHENO,COL)], by = c("FID"))

P = vector("numeric")
Z = vector("numeric")
B = vector("numeric")

mod = lm(MERGE[,PHENO] ~ MERGE[,2] + MERGE[,"Cancer.Type"] + MERGE[,"Age.Diagnosis"] +MERGE[,"Curated.Imputed.Gender"] +MERGE[,"PC.1"] +MERGE[,"PC.2"] +MERGE[,"PC.3"] +MERGE[,"PC.4"] +MERGE[,"PC.5"] +MERGE[,"PC.6"] +MERGE[,"PC.7"] )
S = summary(mod)
if(length(grep("2]",rownames(S$coefficients)))==0) {P = c(P,"NA") ; B = c(B,"NA") ;  Z = c(Z,"NA")} else {
P = S$coefficients[2,4]
Z = S$coefficients[2,3]
B = S$coefficients[2,1]
}
return(c(BIM[i,1],BIM[i,4],as.character(list_genes),B, Z , P) )
} , mc.cores = 48)
} else {
results <- mclapply(1:nrow(BIM), FUN=function(i)
{
MERGE = merge(RAW[,c(1,i+1)], MASTER[,c("FID",PHENO,COL)], by = c("FID"))

P = vector("numeric")
Z = vector("numeric")
B = vector("numeric")

mod = glm(MERGE[,PHENO] ~ MERGE[,2] + MERGE[,"Cancer.Type"] + MERGE[,"Age.Diagnosis"] +MERGE[,"Curated.Imputed.Gender"] +MERGE[,"PC.1"] +MERGE[,"PC.2"] +MERGE[,"PC.3"] +MERGE[,"PC.4"] +MERGE[,"PC.5"] +MERGE[,"PC.6"] +MERGE[,"PC.7"] , family = "binomial")
S = summary(mod)
if(length(grep("2]",rownames(S$coefficients)))==0) {P = c(P,"NA") ; B = c(B,"NA") ;  Z = c(Z,"NA")} else {
P = S$coefficients[2,4]
Z = S$coefficients[2,3]
B = S$coefficients[2,1]
}
return(c(BIM[i,1],BIM[i,4],as.character(list_genes),B, Z , P) )
} , mc.cores = 48)}


 ALL_RES = t(abind(results,along=2))
 colnames(ALL_RES) = c(c("CHR","BP","Gene","B","Z","P"))
write.table(ALL_RES , "OUTPUT_GWAS.tsv",quote=FALSE , col.names=TRUE, row.names = FALSE,sep="\t")
setwd("../")
print(KK)
}


q("no")
