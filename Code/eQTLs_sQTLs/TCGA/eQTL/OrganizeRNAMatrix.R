RNA = read.delim("EBPlusPlusAdjustPANCAN_IlluminaHiSeq_RNASeqV2.geneExp.tsv", h=TRUE,sep="\t")
GENE_IDS = read.table("GENE_IDS")
RNA_ID = read.table("Sample_ID_RNA")
colnames(RNA_ID) = "FID"
RNA = RNA[,-c(1)]
RNA = t(RNA)
RNA = cbind(RNA_ID, RNA)
RNA = as.data.frame(RNA)
colnames(RNA) = GENE_IDS[,1]

genes = read.table("/export/cse02/msaad/TCGA/eQTL/mart_export.txt",sep=",",h=TRUE)

CHR = as.character(1:22)
L = match(genes$Chromosome.scaffold.name , CHR)
genes = genes[-c(which(is.na(L))), ]
write.table(genes , "GENE_INFO_AUTO",quote=FALSE , col.names=TRUE, row.names = FALSE)
genes = read.table("GENE_INFO_AUTO",h=TRUE)

##
BIM = read.table("../selSig_tcga_imputed_hrc1.1_chrAll.bim")

MASTER = read.table("/export/cse02/msaad/TCGA/WES/KUAN/NEW/FROM_GOOD_VCF/BURDEN/FinalMasterFile.csv",sep=",",h=TRUE)
L = match(RNA_ID$FID , MASTER$RNASeq.Barcode) 

COL = colnames(MASTER)[9:18]

RNA[,c(COL)] = MASTER[L, c(COL)]
RNA[,"FID"] = MASTER[L, "Patient.ID"]

colnames(RNA)[2:(1+nrow(GENE_IDS))] = as.character(GENE_IDS[,1])

save.image("RNA_DATA.RData")
q("no")
