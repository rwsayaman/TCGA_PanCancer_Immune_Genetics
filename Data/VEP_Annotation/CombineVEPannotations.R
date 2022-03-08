## Read VEP output and combine annotation for multiple SNPs.

VEP = read.table("vep.out.txt",h=TRUE,sep="\t") ## Read vep outputs
VEP = VEP[VEP$SYMBOL != "-", ]  ## Remove Gene Symbol


VEP$dup = duplicated(paste(VEP$Uploaded_variation,":", VEP$IMPACT , ":", VEP$SYMBOL,sep="")) ## Find duplicates of Variant:Impact:geneSymbol

VEP = VEP[VEP$dup==FALSE , ]  ## Remove duplicates

T = table(VEP$Uploaded_variation)  ## List of uploaded variants

for (i in 1:length(T)) 
{
temp =  paste(VEP[VEP[,1]==names(T)[i],"SYMBOL"] , VEP[VEP[,1]==names(T)[i],"Consequence"],VEP[VEP[,1]==names(T)[i],"IMPACT"],sep=":",collapse="|") ; VEP[VEP[,1]==names(T)[i] , "combined_annotation"] = rep(temp,T[[i]])
}


VEP$dup = duplicated(paste(VEP$Uploaded_variation,VEP$SYMBOL)) ## Find duplicates of Variants
VEP = VEP[VEP$dup==FALSE , ]   ## Remove duplicated variants
dim(VEP)
write.table(VEP , "vep_updated.out.txt.tsv", quote=FALSE,row.names=FALSE,col.names=TRUE,sep="\t")

