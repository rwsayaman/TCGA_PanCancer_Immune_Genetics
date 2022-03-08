EQTL = read.table("../../eQTL/GDC_MATRIX/PER_CANCER/OUTPUT_PER_CANCER_P_B.tsv",h=TRUE,sep="\t")
EQTL = EQTL[order(EQTL$Annot.Figure.GenomewideSignificant.Loci,EQTL$BestPvalue) ,]
EQTL =EQTL[,1:130]
EQTL =EQTL[,-c(8:97)]
EQTL1 = EQTL

EQTL = EQTL[,-c(9,10,11,12,15:24,26:29,31,33,35)]
EQTL2 = EQTL
EQTL = EQTL[EQTL$P_Pancancer_FDR_500KB <0.1 & !is.na(EQTL$P_Pancancer_FDR_500KB), ]
EQTL[,"Remove"] = 0
EQTL[EQTL$CHR==6 & EQTL$BP>28000000 & EQTL$BP<34000000, "Remove"] = 1
EQTL[EQTL$CHR==22 & EQTL$BP>16000000 & EQTL$BP<18000000, "Remove"] = 1
EQTL = EQTL[EQTL$Remove == 0 , ]

EQTL = EQTL[order(EQTL[,"P_Pancancer"]),]

EQTL = EQTL[order(EQTL[,"CHR"],EQTL[,"BP"]),]

write.table(EQTL[,c("CHR","BP","Gene","Sayaman.InternalLabel","Significance")], "top_regions",quote=F,col.names=FALSE,row.names=F)

q("no")



