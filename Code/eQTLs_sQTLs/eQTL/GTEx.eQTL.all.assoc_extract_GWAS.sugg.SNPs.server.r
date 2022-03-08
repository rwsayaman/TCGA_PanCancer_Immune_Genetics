#!bin/bash
# module load CBC r/3.6.3

rm(list = ls())

GTEx.dir <- '/zivlab/data3/rsayaman/GTEx'


######## LOAD GWAS SNPs

load(file=file.path(GTEx.dir, 'GWAS_SNPs', 'GWAS.SNPlist.sugg.hg38.RData'))


######## GTEx Data
GTEx.eQTL.folder <- 'gtex-resources/GTEx_Analysis_v8_QTLs/GTEx_Analysis_v8_eQTL_all_associations'
GTEx.eQTL.files <- dir(file.path(GTEx.dir, GTEx.eQTL.folder))
GTEx.eQTL.files <- GTEx.eQTL.files[grep('txt.gz', GTEx.eQTL.files)]

# List all tissues
tissues <- gsub(".allpairs.txt.gz", "", GTEx.eQTL.files)
tissues

for (i in 1:length(GTEx.eQTL.files)) {

  print(i)
  print(tissues[i])
  
  print('loading GTEx QTL file')
  gtex.eQTL.all.assoc <- read.table(file.path(GTEx.dir, GTEx.eQTL.folder, GTEx.eQTL.files[i]), header = T, stringsAsFactors = F)

  print('creating variant index')
  gtex.eQTL.all.assoc$chr_bp_hg38 <- sapply(strsplit(gtex.eQTL.all.assoc$variant_id, split="_"), function(x) paste(x[1:2], collapse="_"))
  print('annotating tissue')
  gtex.eQTL.all.assoc$tissues <- tissues[i]
  
  print('extracting QTL for matching GWAS SNPs')
  gtex.eQTL.all.assoc_GWAS.SNPlist.sugg <- gtex.eQTL.all.assoc[gtex.eQTL.all.assoc$chr_bp_hg38 %in% GWAS.SNPlist.sugg.hg38$chr_bp_hg38, ]
  
  print('saving QTL for matching GWAS SNPs')
  save(gtex.eQTL.all.assoc_GWAS.SNPlist.sugg, 
       file=file.path(GTEx.dir, 'GTEx_Analysis_v8_eQTL_all_associations_GWAS.sugg.SNPs', 
                      paste0('gtex.eQTL.all.assoc_GWAS.SNPlist.sugg_', tissues[i], '.RData')))
  
  rm(gtex.eQTL.all.assoc)
  
}


