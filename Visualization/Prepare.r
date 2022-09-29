#This script demonstrates how one can read in the .RData files provided and get output that can be used for Pheweb
#Using this script as is may require over 8GB of memory and be fairly slow, so those using computers without 
#extensive resources may prefer to write the output into a more typical genomics format in order to deal with 
#manipulating large data in memory in R as little as possible.  Some references to do that are: 

#For writing out a VCF (it is near the end), consider the vcfR package:
#https://cran.r-project.org/web/packages/vcfR/vignettes/intro_to_vcfR.html

#For writing out a Plink format file, consider the snpStats package:
#https://www.bioconductor.org/packages/release/bioc/html/snpStats.html
#https://www.bioconductor.org/packages/release/bioc/manuals/snpStats/man/snpStats.pdf  In particular one might proceed by creating a SnpMatrix and then writing it out
#https://www.rdocumentation.org/packages/snpStats/versions/1.22.0/topics/SnpMatrix-class
#https://www.rdocumentation.org/packages/snpStats/versions/1.22.0/topics/write.plink

#Assuming the reference is formatted roughly as:
##CHROM  POS     ID      REF     ALT     AC      AN      AF      AC_EXCLUDING_1000G      AN_EXCLUDING_1000G      AF_EXCLUDING_1000G      AA
#1       13380   rs571093408     C       G       5       64940   7.69941e-05     0       59950   0       .
#1       16071   rs541172944     G       A       8       64940   0.000123191     0       59950   0       G
#1       16141   rs529651976     C       T       9       64940   0.000138589     4       59950   6.67223e-05     C
#...
#The only parts we need are the columns for chromosome, position, reference allele and alternative allele.  

load("downloaded_filename.RData") #Here we load a downloaded file from the figshare link in the paper into R (https://figshare.com/articles/dataset/Sayaman_et_al_TCGA_Germline-Immune_GWAS_Summary_Statistics/13077920/1)
#Every .RData file from this study will load the data into the variable "result.maf.ls"

#Should have the following columns:
#> colnames(result.maf.ls)
# [1] "CHR"             "SNP"             "BP"              "A1"             
# [5] "A2"              "Genotyped"       "Rsq"             "AvgCall"        
# [9] "MAF"             "Stratified.Freq" "NCHROBS"         "TEST"           
#[13] "NMISS"           "OR"              "STAT"            "P"  

result.maf.ls[,"CHR_BP"] = paste(result.maf.ls$CHR , result.maf.ls$BP, sep=":")
result.maf.ls[,"A"] = apply(result.maf.ls[,3:4] , 1 , function(x) {paste(as.matrix(sort(x)),collapse=":") }) 

reference = read.table("tab_delimited_reference_file",sep="\t")  # Here we used "HRC.r1-1.GRCh37.wgs.mac5.sites.tab", available directly from the HRC, here: http://www.haplotype-reference-consortium.org/site
#Note that we lose the header of the reference reading it in this way because it starts with a '#', which is used for comments by R.  There are various workarounds for this if you need to keep the header info.
#Such as modifying the header of the file, or setting the comment character to be blank (comment.char = ""), which is an argument to read.table().  
reference[,"CHR_BP"] = paste(reference[,1] , reference[,2], sep=":")
reference[,"A"] = apply(reference[,4:5] , 1 , function(x) {paste(as.matrix(sort(x)),collapse=":") }) 

#The idea behind the sorting is to generate a matching key between the files without changing the original ref and alt columns.  
#The matching uses the sorting so that, e.g. A:C and C:A are both A:C for the key, though C may actually be ref, so we select from the original columns (4 and 5) below

reference[,"CHR_BP_A"] = paste(reference[,"CHR_BP"] , reference[,"A"], sep=":")
result.maf.ls[,"CHR_BP_A"] = paste(result.maf.ls[,"CHR_BP"] , result.maf.ls[,"A"], sep=":")

L = match(result.maf.ls$CHR_BP_A , reference$CHR_BP_A)

result.maf.ls[,"REF"] = reference[L, 4]
result.maf.ls[,"ALT"] = reference[L, 5]

#Should have the following columns:
#> colnames(result.maf.ls)
# [1] "CHR"             "SNP"             "BP"              "Genotyped"
# [5] "Rsq"             "AvgCall"         "MAF"             "Stratified.Freq"
# [9] "NCHROBS"         "TEST"            "NMISS"           "OR"
#[13] "STAT"            "P"               "REF"             "ALT"
#Rename for Pheweb:

colnames(result.maf.ls) <- [c("chrom", "rsName", "pos", "ToRemove1", "ToRemove2", "Genotyped", "r2", "AvgCall", "maf", "af", 
                              "NCHROBS", "TEST", "NMISS", "or", "STAT", "pval", "ToRemove3", "ToRemove4", "ref", "alt")]

#Write the output, without the incorrect ref/alt (4 and 5) and temporary matching columns (17 and 18)
write.table(result.maf.ls[,c(-4,-5,-17,-18)] , "output_filename.tsv", quote=F,row.names=F,col.names=TRUE,sep="\t")
#Columns that Pheweb can't use can be excluded from this later quite easily and quickly with the BASH command: 
#cut -d '  ' -f1,3,14,15,16 > output_filename_pheweb.tsv
#A few things about this command, 1) cut cannot reorder columns, but fortunately Pheweb doesn't care about the order
#2) We wrote a tab delimited file, so the argument to -d is a literal tab, to get a literal tab in the terminal, first
#press ctrl+v, then press the tab key. 3) the args to -f are the columns, they are different than for the below because 
#there are only 16 columns after we wrote the file above.

#Or write an output with only the columns we strictly need for Pheweb:
write.table(result.maf.ls[,c(1,3,19,20,16)] , "output_filename_pheweb.tsv", quote=F,row.names=F,col.names=TRUE,sep="\t")