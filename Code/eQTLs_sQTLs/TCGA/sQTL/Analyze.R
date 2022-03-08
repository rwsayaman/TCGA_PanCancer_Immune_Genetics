 library(MASS)
 library(foreach)
 library(parallel)
 library(ggplot2)
 library(abind)
 
 args=(commandArgs(TRUE))
 opt = as.list(args);
 DATA = args[[1]]
 meta = args[[2]]
 HEADER = args[[3]]
 OUT = args[[4]]
 
 #q("yes")
 GENE = read.table("GeneInfo",h=TRUE)
 colnames(GENE)[1] = "Gene"
 META = read.table(meta)
 colnames(META) = c("as_id","sType","CHR","Gene","dummy")
 M = merge(GENE , META , by = "Gene")
 PREVIOUS = read.table("../../../eQTL/GDC_MATRIX/PER_CANCER/OUTPUT_PER_CANCER_P_B.tsv",h=TRUE,sep="\t")
 #PREVIOUS = PREVIOUS[,c(1,2,3,4,5,6)]
 colnames(PREVIOUS)[3] = "Gene.name"
 MM = merge(M,PREVIOUS , by = "Gene.name")
 MM$SNP = paste(MM$CHR.x,MM$BP,sep=":")
 ######################################################
 FREQ= read.table("FREQ.frq",h=TRUE)
 MM = merge(MM,FREQ , by = c("SNP"))
 #####
 ALL_DATA = read.table(DATA,sep="\t")
 HEADER = read.table(HEADER)
 colnames(ALL_DATA) = as.character(as.matrix(HEADER[,1]))
 
 ALL_DATA1 = ALL_DATA
 
 ALL_DATA = as.data.frame(t(ALL_DATA[,c(1,7:ncol(ALL_DATA))]))
 colnames(ALL_DATA) = as.matrix(ALL_DATA[1,])
 ALL_DATA = ALL_DATA[-1,]
 ID = rownames(ALL_DATA) 
 #= as.character(ID_SPLICE[,1])
 
 MASTER = read.table("/export/cse02/msaad/TCGA/WES/KUAN/NEW/FROM_GOOD_VCF/BURDEN/FinalMasterFile.csv",sep=",",h=TRUE)
 COL = c("Cancer.Type"  ,"Age.Diagnosis" ,"Curated.Imputed.Gender" ,"PC.1" ,"PC.2" ,"PC.3" ,"PC.4" ,"PC.5" ,"PC.6" ,"PC.7")
 CANCER = names(table(MASTER[,"Cancer.Type"]))
 
 L = match(ID, MASTER$RNASeq.Barcode)

 for(i in 1:length(COL))
 {
 ALL_DATA[,COL[i]] = NA
 ALL_DATA[which(!is.na(L)),COL[i]] = as.matrix(MASTER[L[!is.na(L)],COL[i]])
 }
 
 FAM = read.table("/export/cse02/msaad/TCGA/eQTL/SUGGESTIVE/selSugE6_tcga_imputed_hrc1.1_chrAll.fam")
 BIM = read.table("/export/cse02/msaad/TCGA/eQTL/SUGGESTIVE/selSugE6_tcga_imputed_hrc1.1_chrAll.bim")
 colnames(BIM)[c(1,4,5,6)] = c("CHR.x","BP","A1","A2")
 RAW = read.table("/export/cse02/msaad/TCGA/eQTL/SUGGESTIVE/selSugE6_tcga_imputed_hrc1.1_chrAll_recodeA.raw",h=TRUE)
 RAW = RAW[,-c(2,3,4,5,6)]
 
 raw = RAW[,1:2]
 colnames(raw)[1] = "Patient.ID"
 master = MASTER[,c("RNASeq.Barcode","Patient.ID")]
 mm = merge(raw , master , by = "Patient.ID")
 ID_GENO_RNA = mm[!is.na(mm$RNASeq.Barcode),c(1,3)]
 
 LL = match(RAW$FID , ID_GENO_RNA$Patient.ID)
 RAW$RNASeq.Barcode = NA 
 RAW[which(!is.na(LL)), "RNASeq.Barcode"] = as.matrix(ID_GENO_RNA[LL[!is.na(LL)], 2] )
 
 L = match(ID , RAW$RNASeq.Barcode)
 
 
 i=1
 l = which(BIM$BP== MM[i,"BP"] & BIM$CHR.x == MM[i,"CHR.x"])
 for(i in 1:nrow(BIM))
 {
 ALL_DATA[which(!is.na(L)),as.character(BIM[i,2])] = RAW[L[!is.na(L)],i+1]
 }
 #ALL_DATA[,"SNP"] = NA
 write.table(ALL_DATA , paste(OUT,"temp",sep="_"),quote=F,row.names=FALSE,col.names=TRUE)
 #write.table(ALL_DATA , paste(OUT,"ToExport.csv",sep="_"),quote=F,row.names=TRUE,col.names=TRUE,sep=",")
 write.table(c("IID",rownames(ALL_DATA)) , "ID_SPLICE",quote=F,row.names=FALSE,col.names=FALSE)
 ALL_DATA1 = read.table(paste(OUT,"temp",sep="_"),h=TRUE)
 
 ###############################################################################
 A = 1:31
 B= 32:62
 C= 63:93
 rank = c(1:31,1:31, 1:31)
 temp = cbind(c(A,B,C),rank) ; SEQ = temp[order(temp[,2]),1]
 ALL_RES = matrix(NA , nr=0 , nc=41)
 ALL_RES_B = matrix(NA , nr=0 , nc=41)
 ALL_RES_P_B = matrix(NA , nr=0 , nc=136)
##
 results <- mclapply(1:nrow(MM), FUN=function(i)
 {
 ALL_DATA = ALL_DATA1
 l = which(BIM$BP== MM[i,"BP"] & BIM$CHR.x == MM[i,"CHR.x"])
 ALL_DATA[,"SNP"] = NA
 ALL_DATA[which(!is.na(L)),"SNP"] = RAW[L[!is.na(L)],l+1]
 ALL_DATA[, "PSI"]   = ALL_DATA[, as.matrix(MM[i,"as_id"])]
 LIST_NA = apply( ALL_DATA[,c(as.matrix(MM[i,"as_id"]),COL)] , 1 , function(x){length(x[is.na(x)])})
 P = vector("numeric")
 Pord = vector("numeric")
 B = vector("numeric")
 N = vector("numeric")
 for (k in c(31,1:30))
 {
 if (k ==31)  ## Pancancer
 {
 temp_N = apply( ALL_DATA[,c(as.matrix(MM[i,"as_id"]),COL)] , 1 , function(x){length(x[is.na(x)])}) ; N= c(N,length(temp_N[temp_N ==0]))
 E1 = tryCatch({ mod1 = lm(ALL_DATA[,as.matrix(MM[i,"as_id"])] ~ ALL_DATA[,"SNP"]+ ALL_DATA[,"Cancer.Type"] + ALL_DATA[,"Age.Diagnosis"] +ALL_DATA[,"Curated.Imputed.Gender"] +ALL_DATA[,"PC.1"] +ALL_DATA[,"PC.2"] +ALL_DATA[,"PC.3"] +ALL_DATA[,"PC.4"] +ALL_DATA[,"PC.5"] +ALL_DATA[,"PC.6"] +ALL_DATA[,"PC.7"] )} , error = function(e) {return("ERROR")}, warning = function(w){"WARNING"} )
 if(E1[1]!="ERROR" & E1[1] !="WARNING"){
 S = summary(mod1)
 if(length(grep("SNP",rownames(S$coefficients)))==0) {P = c(P,"NA") ; B = c(B,"NA")} else {
 P = c(P,S$coefficients[2,4])
 B = c(B,S$coefficients[2,1])}
 if(P[length(P)]<10^-10 & !is.na(P[length(P)]) ) {
 temp = ALL_DATA[ !is.na(ALL_DATA[,"PSI"]) & !is.na(ALL_DATA[,"SNP"]) & !is.na(ALL_DATA[,"Cancer.Type"]) , c("PSI","SNP","Cancer.Type") ]
 temp$PSI = as.numeric(temp$PSI)
 temp$SNP = as.character(temp$SNP)
 for (kk in 1:30) {if (length(as.numeric(temp[temp$Cancer.Type == CANCER[kk] & !is.na(temp$Cancer.Type),"PSI"]))>1& dim(table(as.numeric(temp[temp$Cancer.Type == CANCER[kk] & !is.na(temp$Cancer.Type),"PSI"])))>1) {cancer.scaled = scale(as.numeric(temp[temp$Cancer.Type == CANCER[kk] & !is.na(temp$Cancer.Type),"PSI"]),center = TRUE);} else{cancer.scaled= as.numeric(temp[temp$Cancer.Type == CANCER[kk] & !is.na(temp$Cancer.Type),"PSI"])}; temp[temp$Cancer.Type== CANCER[kk] & !is.na(temp$Cancer.Type) ,"PSI"] = cancer.scaled; summary(cancer.scaled) }
 TABLE = table(temp[,"SNP"])
 if(dim(TABLE)==2) {NAMES = c( paste(MM[i,"A2"],MM[i,"A2"],sep=""),  paste(MM[i,"A1"],MM[i,"A2"],sep=""))} else {NAMES = c( paste(MM[i,"A2"],MM[i,"A2"],sep=""),  paste(MM[i,"A1"],MM[i,"A2"],sep="") ,  paste(MM[i,"A1"],MM[i,"A1"],sep=""))}
 temp[temp$SNP==0 & !is.na(temp$SNP), "SNP"] = NAMES[1] ; temp[temp$SNP==1& !is.na(temp$SNP), "SNP"] = NAMES[2] ; temp[temp$SNP==2& !is.na(temp$SNP), "SNP"] = NAMES[3] ;
 p <- ggplot(temp, aes(x=SNP , y=PSI, fill=SNP)) +
 geom_violin(trim=FALSE)+   geom_jitter(shape=1, position=position_jitter(0.05))
 png(paste("./PLOTS/",as.character(MM[i,"Gene.name"]),"_",as.matrix(MM[i,"as_id"]), "_",MM[i,"CHR.x"],"_" ,MM[i,"BP"],".png",sep=""),width=800,height=700)
 print(p + stat_summary(fun=mean,width=0.2, size=0.5,col="red",geom="crossbar") +theme(axis.text=element_text(size=14), axis.title=element_text(size=16)) +ggtitle(paste(as.character(MM[i,"Gene.name"]), ", ", as.matrix(MM[i,"as_id"]), ", chr", MM[i,1],", P=", signif(S$coefficients[2,4],digits=3),", Beta=", round(S$coefficients[2,1],3) ,sep="" )) )
 dev.off()
 } } else {P = c(P,"NA");  B = c(B,"NA")}
 rm(mod1)} else {
 GENDER = table(as.character(ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"Curated.Imputed.Gender"]))
 MAF = table(as.character(ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"SNP"]))
 TRAIT = table(as.character(ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"PSI"]))
 if(length(MAF)>1 & length(TRAIT)>1)
 {
 if(length(GENDER) >1 )
 {
 temp_N = apply( ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],c(as.matrix(MM[i,"as_id"]),COL)] , 1 , function(x){length(x[is.na(x)])}) ; N= c(N,length(temp_N[temp_N ==0]))
 E1 = tryCatch({ mod2 = lm(ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],as.matrix(MM[i,"as_id"])] ~ ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"SNP"] + ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"Age.Diagnosis"] +ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"Curated.Imputed.Gender"] +ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"PC.1"] +ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"PC.2"] +ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"PC.3"] +ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"PC.4"] +ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"PC.5"] +ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"PC.6"] +ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"PC.7"] )} , error = function(e) {return("ERROR")}, warning = function(w){"WARNING"} )
 if(E1[1]!="ERROR" & E1[1] !="WARNING"){
 S = summary(mod2)
 if(length(grep("SNP",rownames(S$coefficients)))==0) {P = c(P,"NA") ; B = c(B,"NA")} else {
 P = c(P,S$coefficients[2,4])
 B = c(B,S$coefficients[2,1])}
 rm(mod2)
 } else {P = c(P,"NA") ; B = c(B,"NA") }
 } else {   ## Remove SEX from covariate
 temp_N = apply( ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],c(as.matrix(MM[i,"as_id"]),COL)] , 1 , function(x){length(x[is.na(x)])}) ; N= c(N,length(temp_N[temp_N ==0]))
 E1 = tryCatch({ mod3 = lm(ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],as.matrix(MM[i,"as_id"])] ~ ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"SNP"] + ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"Age.Diagnosis"] +ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"PC.1"] +ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"PC.2"] +ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"PC.3"] +ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"PC.4"] +ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"PC.5"] +ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"PC.6"] +ALL_DATA[ALL_DATA$Cancer.Type == CANCER[k],"PC.7"] )} , error = function(e) {return("ERROR")}, warning = function(w){"WARNING"} )
 if(E1[1]!="ERROR" & E1[1] !="WARNING"){
 S = summary(mod3)
 if(length(grep("SNP",rownames(S$coefficients)))==0) {P = c(P,"NA") ; B = c(B,"NA")} else {
 P = c(P,S$coefficients[2,4])
 B = c(B,S$coefficients[2,1])}
 } else {P = c(P,"NA");  B = c(B,"NA") }
 rm(mod3)}} else {
 P = c(P,"NA")
 B = c(B,"NA")
 N = c(N,0)
 } } }
 ALL_RES_P_B = rbind(ALL_RES_P_B ,  c(MM[i,"CHR.x"], MM[i,"BP"], as.character(MM[i,"Sig"]) , as.character(MM[i,"Gene"]),  as.character(MM[i,"Gene.name"]), as.matrix(MM[i,"as_id"]), as.matrix(MM[i,"sType"]), c(N,B,P)[SEQ], as.matrix(MM[i,c(13,107:137,14,16,138:139)]),as.matrix(abs(MM[i,"distance"]))))
 return(ALL_RES_P_B)
 },  mc.cores = 48)

 ALL_RES_P_B = abind(results,along=1)
 
 A = 1:30
 B= 31:60
 C= 61:90
 rank = c(1:30,1:30,1:30)
 temp = cbind(c(A,B,C),rank) ; SEQ1 = temp[order(temp[,2]),1]
 

colnames(ALL_RES_P_B) = c(c("CHR","BP","EnsID","Gene","Splice_ID","Splice_Type","N","B_Pancancer","P_Pancancer"),c(paste("N_",CANCER,sep=""),paste("B_",CANCER,sep=""),paste("P_",CANCER,sep=""))[SEQ1], colnames(MM)[c(13,107:137)],c("N_eQTL","P_eQTL","P_eQT_FDR_1MB","P_eQTL_500KB","abs_distance"))

write.table(ALL_RES_P_B , paste(OUT,"_PER_CANCER_P_B.tsv",sep=""),quote=FALSE , col.names=TRUE, row.names = FALSE,sep="\t")
ALL_RES_P_B = read.table( paste(OUT,"_PER_CANCER_P_B.tsv",sep=""),sep="\t",h=TRUE)
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

ALL_RES_P_B[ALL_RES_P_B$P_Pancancer<10^(-300) & !is.na(ALL_RES_P_B$P_Pancancer) ,"P_Pancancer"] = 0
ALL_RES_P_B[ALL_RES_P_B$P_Pancancer_FDR_1MB<10^(-300) & !is.na(ALL_RES_P_B$P_Pancancer_FDR_1MB),"P_Pancancer_FDR_1MB"] = 0
ALL_RES_P_B[ALL_RES_P_B$P_Pancancer_FDR_500KB<10^(-300) & !is.na(ALL_RES_P_B$P_Pancancer_FDR_500KB<10^(-300)),"P_Pancancer_FDR_500KB"] = 0
write.table(ALL_RES_P_B , paste(OUT,"_PER_CANCER_P_B.tsv",sep=""),quote=FALSE , col.names=TRUE, row.names = FALSE,sep="\t")


q("no")

