library(MASS)
library(foreach)
library(parallel)
library(ggplot2)
library(abind)

##

genes = read.table("/export/cse02/msaad/TCGA/eQTL/mart_export.txt",sep=",",h=TRUE)

CHR = as.character(1:22)
L = match(genes$Chromosome.scaffold.name , CHR)
genes = genes[-c(which(is.na(L))), ]
write.table(genes , "GENE_INFO_AUTO",quote=FALSE , col.names=TRUE, row.names = FALSE)
genes = read.table("GENE_INFO_AUTO",h=TRUE)
### 


load("/export/cse02/msaad/TCGA/eQTL/GDC_MATRIX/RNA_DATA.RData")
CANCER = names(table(RNA[,"Cancer.Type"]))
FREQ= read.table("FREQ.frq",h=TRUE)
## To merge Betas and Ps
RSNAMES = read.table("rsNAMES",sep="\t",h=TRUE)
UNIQUE = unique(RSNAMES$CHR.BP)
RSNAMES[,"BestTrait"] = RSNAMES$Sayaman.InternalLabel
RSNAMES[,"BestPvalue"] = RSNAMES$PLINK.P
for(i in 1:length(UNIQUE))
{
ll =  which(RSNAMES$CHR.BP == as.character(UNIQUE[i]))
if (length(ll)>1) {
mm = which(RSNAMES[ll,"BestPvalue"] == min(RSNAMES[ll,"BestPvalue"]))
RSNAMES[ll,"BestPvalue"] = min(RSNAMES[ll,"BestPvalue"])
RSNAMES[ll, "BestTrait"] =RSNAMES[ll,][mm[1], "BestTrait"]
#print(i)
#RSNAMES[RSNAMES$CHR.BP == as.character(UNIQUE[i]),c("BestTrait" , "BestPvalue")] = }
}
}
##
A = 1:31
B= 32:62
C= 63:93
rank = c(1:31,1:31,1:31)
temp = cbind(c(A,B,C),rank) ; SEQ = temp[order(temp[,2]),1]
##
PVAL_LIST = list()
GENE_LIST = list()
DISTANCE_LIST = list()

genes[,"dup"] = duplicated(genes$Gene.name)
genes= genes[genes$dup==FALSE , ]
genes = genes[,-c(ncol(genes))]
GENES = genes[genes$Gene.type== "protein_coding" , ]

##
FAM = read.table("/export/cse02/msaad/TCGA/eQTL/SUGGESTIVE/selSugE6_tcga_imputed_hrc1.1_chrAll.fam")
BIM = read.table("/export/cse02/msaad/TCGA/eQTL/SUGGESTIVE/selSugE6_tcga_imputed_hrc1.1_chrAll.bim")
RAW = read.table("/export/cse02/msaad/TCGA/eQTL/SUGGESTIVE/selSugE6_tcga_imputed_hrc1.1_chrAll_recodeA.raw",h=TRUE)
RAW = RAW[,-c(2,3,4,5,6)]

BIM[,"U50K"] = BIM[,4] + 1000000
BIM[,"D50K"] = BIM[,4] - 1000000
BIM[,"MAF"] = FREQ$MAF
ll = match(BIM$V2 , RSNAMES$CHR.BP)
RS_COL = colnames(RSNAMES)
for ( i in 1:length(RS_COL))
{
BIM[which(!is.na(ll)) , RS_COL[i]] = RSNAMES[ll[!is.na(ll)] , RS_COL[i]]
}


ALL_RES = matrix(NA , nr=0 , nc=38)
ALL_RES_B = matrix(NA , nr=0 , nc=38)
ALL_RES_P_B = matrix(NA , nr=0 , nc=128)

results <- mclapply(1:nrow(BIM), FUN=function(i)
{
GENES[,"D50K"] = BIM[i,"D50K"]
GENES[,"U50K"] = BIM[i,"U50K"]
GENES[,"CHR"] = BIM[i,1]

GENES[,"flag"] = apply(GENES[,c(8,3,4,9,10,11)],1,function(x){ if (x[1]==x[6] & ((x[2]>x[4] & x[2]<x[5]) | (x[3]>x[4] & x[3]<x[5]))) {return(c(1))} else {return(c(0))}})

list_genes = GENES[GENES$flag==1 , ]
if (nrow(list_genes)>0)
{
list_genes[ , "temp1"]=list_genes[,"U50K"] -1000000
list_genes[ , "temp2"]=list_genes[,"temp1"] - list_genes[,"Gene.start..bp."]
list_genes[ , "temp3"]=list_genes[,"temp1"] - list_genes[,"Gene.end..bp."]
list_genes[,"DST"] = 0 ;
list_genes[list_genes$temp2<0 & list_genes$temp3<0, "DST"] = (list_genes[list_genes$temp2<0 & list_genes$temp3<0, "temp2"] )  ## SNP is on the left of the gene
list_genes[list_genes$temp2>0 & list_genes$temp3>0, "DST"] = (list_genes[list_genes$temp2>0 & list_genes$temp3>0, "temp3"] )  ## SNP is on the right of the gene
distance= list_genes[, "DST"]
list_genes = list_genes[, "Gene.name"]

L1 = c("FID",COL,as.character(list_genes))
L2 = match(L1, colnames(RNA))

if(length(list_genes)>0 & length(L2[!is.na(L2)])>11)
{
DATA = RNA[,L2[!is.na(L2)]]
MERGE = merge(RAW[,c(1,i+1)], DATA, by = c("FID"))
n = ncol(MERGE) - 12
if (n == 1)
{
list_genes = colnames(MERGE)[13]
} else {
list_genes = colnames(MERGE)[13:ncol(MERGE)]
}
GENE_LIST[[i]] = as.character(list_genes)
L2 = L2[-c(1:11)]
DISTANCE_LIST[[i]] = distance[which(!is.na(L2))]
for (j in 1:n)
{
P = vector("numeric")
B = vector("numeric")
N = vector("numeric")
for (k in c(31,1:30))
{
if (k ==31)  ## Pancancer
{
N = c(N , nrow(MERGE[!is.na(MERGE[,as.character(list_genes[j])]) & !is.na(MERGE[,2]) , ]  )  )
mod = lm(MERGE[,as.character(list_genes[j])] ~ MERGE[,2]+ MERGE[,"Cancer.Type"] + MERGE[,"Age.Diagnosis"] +MERGE[,"Curated.Imputed.Gender"] +MERGE[,"PC.1"] +MERGE[,"PC.2"] +MERGE[,"PC.3"] +MERGE[,"PC.4"] +MERGE[,"PC.5"] +MERGE[,"PC.6"] +MERGE[,"PC.7"] )
S = summary(mod)
if(length(grep("2]",rownames(S$coefficients)))==0) {P = c(P,"NA") ; B = c(B,"NA")} else {
P = c(P,S$coefficients[2,4])
B = c(B,S$coefficients[2,1])}
if(P[length(P)]<10^-08 & !is.na(P[length(P)]) )
{
temp = MERGE[ !is.na(MERGE[,as.character(list_genes[j])]) & !is.na(MERGE[,2]) , ]
temp = as.data.frame(cbind(temp[, as.character(list_genes[j])]  ,  temp[,2],as.character(temp[,"Cancer.Type"])))
colnames(temp) = c("GeneExpression","SNP","Cancer.Type")
temp$GeneExpression = as.numeric(temp$GeneExpression)
temp$SNP = as.character(temp$SNP)
for (kk in 1:30) {cancer.scaled = scale(as.numeric(temp[temp$Cancer.Type == CANCER[kk] & !is.na(temp$Cancer.Type),"GeneExpression"]),center = TRUE); temp[temp$Cancer.Type== CANCER[kk] & !is.na(temp$Cancer.Type) ,"GeneExpression"] = cancer.scaled }
TABLE = table(temp[,2])
if(dim(TABLE)==2) {NAMES = c( paste(BIM[i,6],BIM[i,6],sep=""),  paste(BIM[i,5],BIM[i,6],sep=""))} else {NAMES = c( paste(BIM[i,6],BIM[i,6],sep=""),  paste(BIM[i,5],BIM[i,6],sep="") ,  paste(BIM[i,5],BIM[i,5],sep=""))}
temp[temp$SNP==0 & !is.na(temp$SNP), "SNP"] = NAMES[1] ; temp[temp$SNP==1& !is.na(temp$SNP), "SNP"] = NAMES[2] ; temp[temp$SNP==2& !is.na(temp$SNP), "SNP"] = NAMES[3] ;
p <- ggplot(temp, aes(x=SNP , y=GeneExpression, fill=SNP)) + 
geom_violin(trim=FALSE)+   geom_jitter(shape=1, position=position_jitter(0.05))
png(paste("./PLOTS/",as.character(list_genes[j]),"_",as.matrix(BIM[i,2]),".png",sep=""),width=800,height=700)
print(p + stat_summary(fun=mean,width=0.2, size=0.5,col="red",geom="crossbar") +theme(axis.text=element_text(size=14), axis.title=element_text(size=16)) +ggtitle(paste(as.character(list_genes[j]), ", chr", BIM[i,2],", P=", signif(S$coefficients[2,4],digits=3),", Beta=", round(S$coefficients[2,1],3) ,sep="" )) )
dev.off()
} } else {
GENDER = table(as.character(MERGE[MERGE$Cancer.Type == CANCER[k],"Curated.Imputed.Gender"]))
MAF = table(as.character(MERGE[MERGE$Cancer.Type == CANCER[k],2]))
TRAIT = table(as.character(MERGE[MERGE$Cancer.Type == CANCER[k],as.character(list_genes[j])]))
if(length(MAF)>1 & length(TRAIT)>0)
{
if(length(GENDER) >1 )
{
N = c(N , nrow(MERGE[!is.na(MERGE[,as.character(list_genes[j])]) & !is.na(MERGE[,2]) & MERGE$Cancer.Type == CANCER[k] & !is.na(MERGE$Cancer.Type) , ]  )  )
mod = lm(MERGE[MERGE$Cancer.Type == CANCER[k],as.character(list_genes[j])] ~ MERGE[MERGE$Cancer.Type == CANCER[k],2] + MERGE[MERGE$Cancer.Type == CANCER[k],"Age.Diagnosis"] +MERGE[MERGE$Cancer.Type == CANCER[k],"Curated.Imputed.Gender"] +MERGE[MERGE$Cancer.Type == CANCER[k],"PC.1"] +MERGE[MERGE$Cancer.Type == CANCER[k],"PC.2"] +MERGE[MERGE$Cancer.Type == CANCER[k],"PC.3"] +MERGE[MERGE$Cancer.Type == CANCER[k],"PC.4"] +MERGE[MERGE$Cancer.Type == CANCER[k],"PC.5"] +MERGE[MERGE$Cancer.Type == CANCER[k],"PC.6"] +MERGE[MERGE$Cancer.Type == CANCER[k],"PC.7"] )
S = summary(mod)
P = c(P,S$coefficients[2,4])
B = c(B,S$coefficients[2,1])
} else {   ## Remove SEX from covariate
N = c(N , nrow(MERGE[!is.na(MERGE[,as.character(list_genes[j])]) & !is.na(MERGE[,2]) & MERGE$Cancer.Type == CANCER[k] & !is.na(MERGE$Cancer.Type) , ]  )  )
mod = lm(MERGE[MERGE$Cancer.Type == CANCER[k],as.character(list_genes[j])] ~ MERGE[MERGE$Cancer.Type == CANCER[k],2] + MERGE[MERGE$Cancer.Type == CANCER[k],"Age.Diagnosis"] +MERGE[MERGE$Cancer.Type == CANCER[k],"PC.1"] +MERGE[MERGE$Cancer.Type == CANCER[k],"PC.2"] +MERGE[MERGE$Cancer.Type == CANCER[k],"PC.3"] +MERGE[MERGE$Cancer.Type == CANCER[k],"PC.4"] +MERGE[MERGE$Cancer.Type == CANCER[k],"PC.5"] +MERGE[MERGE$Cancer.Type == CANCER[k],"PC.6"] +MERGE[MERGE$Cancer.Type == CANCER[k],"PC.7"] )
S = summary(mod)
P = c(P,S$coefficients[2,4])
B = c(B,S$coefficients[2,1])
}
} else {
P = c(P,"NA")
B = c(B,"NA")
N = c(N,0)
} } }
ALL_RES_P_B = rbind(ALL_RES_P_B , c(BIM[i,1],BIM[i,4] ,GENE_LIST[[i]][j] , DISTANCE_LIST[[i]][j] , c(N,B,P)[SEQ], as.matrix(BIM[i,10:40])))
} 
return(ALL_RES_P_B)
}}} , mc.cores = 40)


ALL_RES_P_B = abind(results,along=1)


A = 1:30
B= 31:60
C= 61:90
rank = c(1:30,1:30,1:30)
temp = cbind(c(A,B,C),rank) ; SEQ1 = temp[order(temp[,2]),1]

colnames(ALL_RES_P_B) = c(c("CHR","BP","Gene","distance","N_Pancancer","B_Pancancer","P_Pancancer"),c(paste("N_",CANCER,sep=""),paste("B_",CANCER,sep=""),paste("P_",CANCER,sep=""))[SEQ1] , colnames(BIM[,10:40]))

write.table(ALL_RES_P_B , "OUTPUT_PER_CANCER_P_B.csv",quote=FALSE , col.names=TRUE, row.names = FALSE,sep="\t")

ALL_RES_P_B = read.table("OUTPUT_PER_CANCER_P_B.csv",h=TRUE , sep="\t")
ALL_RES_P_B$P_Pancancer_FDR_1MB = NA
ALL_RES_P_B$P_Pancancer_FDR_500KB = NA

for (i in 1:nrow(BIM))
{
ALL_RES_P_B[ALL_RES_P_B[,"CHR"]==BIM[i,1]  & ALL_RES_P_B[,"BP"]== BIM[i,4]  , "P_Pancancer_FDR_1MB" ] = p.adjust(ALL_RES_P_B[ALL_RES_P_B[,"CHR"]==BIM[i,1]  & ALL_RES_P_B[,"BP"]== BIM[i,4]  ,  "P_Pancancer"],"fdr")
for(kk in 1:30)
{
ALL_RES_P_B[ALL_RES_P_B[,"CHR"]==BIM[i,1]  & ALL_RES_P_B[,"BP"]== BIM[i,4]  , paste("P_", CANCER[kk],"_FDR_1MB",sep="") ] = p.adjust(ALL_RES_P_B[ALL_RES_P_B[,"CHR"]==BIM[i,1]  & ALL_RES_P_B[,"BP"]== BIM[i,4]  , paste("P_", CANCER[kk],sep="") ],"fdr")
}
}

for (i in 1:nrow(BIM))
{
ALL_RES_P_B[ALL_RES_P_B[,"CHR"]==BIM[i,1]  & ALL_RES_P_B[,2]== BIM[i,4]  & abs(ALL_RES_P_B$distance)<=500000  , "P_Pancancer_FDR_500KB" ] = p.adjust(ALL_RES_P_B[ALL_RES_P_B[,"CHR"]==BIM[i,1]  & ALL_RES_P_B[,2]== BIM[i,4] & abs(ALL_RES_P_B$distance)<=500000  ,  "P_Pancancer"],"fdr")
for(kk in 1:30)
{
ALL_RES_P_B[ALL_RES_P_B[,"CHR"]==BIM[i,1]  & ALL_RES_P_B[,2]== BIM[i,4] & abs(ALL_RES_P_B$distance)<=500000 , paste("P_", CANCER[kk],"_FDR_500KB",sep="") ] = p.adjust(ALL_RES_P_B[ALL_RES_P_B[,"CHR"]==BIM[i,1]  & ALL_RES_P_B[,2]== BIM[i,4] & abs(ALL_RES_P_B$distance)<=500000  , paste("P_", CANCER[kk],sep="") ],"fdr")
}
}

ALL_RES_P_B[ALL_RES_P_B$P_Pancancer<10^(-300),"P_Pancancer"] = 0
ALL_RES_P_B[ALL_RES_P_B$P_Pancancer_FDR_1MB<10^(-300),"P_Pancancer_FDR_1MB"] = 0
ALL_RES_P_B[ALL_RES_P_B$P_Pancancer_FDR_500KB<10^(-300) & !is.na(ALL_RES_P_B$P_Pancancer_FDR_500KB<10^(-300)),"P_Pancancer_FDR_500KB"] = 0

L = match(ALL_RES_P_B$Gene , genes$Gene.name)
ALL_RES_P_B[,"GeneStart"] = genes[L,"Gene.start..bp."]
ALL_RES_P_B[,"GeneEnd"] = genes[L,"Gene.end..bp."]

write.table(ALL_RES_P_B , "OUTPUT_PER_CANCER_P_B.tsv",quote=FALSE , col.names=TRUE, row.names = FALSE,sep="\t")

q("no")

