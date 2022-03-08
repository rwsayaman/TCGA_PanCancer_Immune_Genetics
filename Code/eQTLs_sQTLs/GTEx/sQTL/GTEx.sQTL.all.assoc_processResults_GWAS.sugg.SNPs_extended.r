#!bin/bash
# module load CBC r/3.6.3

rm(list = ls())

GTEx.dir <- '/Users/rosalyn/Dropbox/MacBookPro BackUp/Documents/DataAnalysis.GTEx'
# GTEx.dir <- '/zivlab/data3/rsayaman/GTEx'


######## CONCATENATE RESULTS

GTEx.sQTL.results.folder <- 'GTEx_Analysis_v8_sQTL_all_associations_GWAS.sugg.SNPs'
GTEx.sQTL.results.files <- dir(file.path(GTEx.dir, GTEx.sQTL.results.folder))
GTEx.sQTL.results.files <- GTEx.sQTL.results.files[grep('.RData', GTEx.sQTL.results.files)]


gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues <- NA
for (i in 1:length(GTEx.sQTL.results.files)) {
  
  print(i)
  print(GTEx.sQTL.results.files[i])
  
  print('loading results file')
  load(file.path(GTEx.dir, GTEx.sQTL.results.folder, GTEx.sQTL.results.files[i]))
  
  gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues <- rbind.data.frame(gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues,
                                                                       gtex.sQTL.all.assoc_GWAS.SNPlist.sugg)
  
}

# Remove NA from first line
gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues <- gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues[-1, ]

# Annotate GTEx on colnames
colnames(gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues) <- paste0("GTEx.", colnames(gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues))


######## CALCULATE FDR PER VARIANT across all genes and all tissue

library(dplyr)

gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues <- as.data.frame(gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues %>%
                                                                    group_by(GTEx.chr_bp_hg38) %>% 
                                                                    mutate(GTEx.FDR.perVariant = p.adjust(GTEx.pval_nominal, method='BH')))

######## ANNOTATE ENSEMBL ID

# Extract EnsemblID
gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues$GTEx.EnsemblID <- 
  sapply(strsplit(gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues$GTEx.phenotype_id, split=":"), function(x) x[5])
gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues$GTEx.EnsemblID <- 
  sapply(strsplit(gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues$GTEx.EnsemblID, split="\\."), function(x) x[1])


# NOTE: Use EnsDb.Hsapiens for mapping of ENSEMBLIDs, org.Hs.eg.db for mapping ENTREZIDs
library(EnsDb.Hsapiens.v86)
keytypes(EnsDb.Hsapiens.v86)

gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues$EnsDb.Hsapiens.v86.GeneSYM <- unlist(mapIds(
  EnsDb.Hsapiens.v86,
  keys=gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues$GTEx.EnsemblID, 
  column="GENENAME", 
  keytype="GENEID", 
  multiVals="first"
))

library(org.Hs.eg.db)
keytypes(org.Hs.eg.db)

gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues$org.Hs.eg.db.GeneSYM <- unlist(mapIds(
  org.Hs.eg.db,
  keys=gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues$GTEx.EnsemblID,
  column="SYMBOL",
  keytype="ENSEMBL",
  multiVals="first"
))

head(gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues)
colnames(gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues)
dim(gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues)

# Reorder columns
gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues <- gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues[,
  c("GTEx.tissues", "GTEx.phenotype_id", "GTEx.EnsemblID", "EnsDb.Hsapiens.v86.GeneSYM", "org.Hs.eg.db.GeneSYM",
    "GTEx.variant_id", "GTEx.chr_bp_hg38", "GTEx.tss_distance", "GTEx.ma_samples", "GTEx.ma_count", "GTEx.maf", 
    "GTEx.slope", "GTEx.slope_se", "GTEx.pval_nominal", "GTEx.FDR.perVariant")]
dim(gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues)


######## ANNOTATE WITH SNP INFO

load(file=file.path(GTEx.dir, 'GWAS_SNPs', 'GWAS.SNPlist.sugg.hg38_extended.RData'))
head(GWAS.SNPlist.sugg.hg38)

# Remove unnecessary columns
GWAS.SNPlist.sugg.hg38[[3]] <- NULL
GWAS.SNPlist.sugg.hg38[[3]] <- NULL
GWAS.SNPlist.sugg.hg38[[3]] <- NULL

# Reorder
colnames(GWAS.SNPlist.sugg.hg38)
GWAS.SNPlist.sugg.hg38 <- GWAS.SNPlist.sugg.hg38[, c(16, 3:4, 1:2, 5:15)]
dim(GWAS.SNPlist.sugg.hg38)
head(GWAS.SNPlist.sugg.hg38)


# Annotate GWAS.SNPlist on colnames
colnames(GWAS.SNPlist.sugg.hg38) <- paste0("TCGA.Germline.GWAS.SNPlist.", colnames(GWAS.SNPlist.sugg.hg38))

# Merge data with SNPlist Annotation
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot <- merge(gtex.sQTL.all.assoc_GWAS.SNPlist.sugg.allTissues,
                                                                              GWAS.SNPlist.sugg.hg38, 
                                                                              by.x="GTEx.chr_bp_hg38", by.y="TCGA.Germline.GWAS.SNPlist.chr_bp_hg38", all.x=TRUE)
head(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot)


######## Annotate Results
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.VGPair <- paste0(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.chr_bp_hg38, "-", 
                                                                             gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.EnsemblID, "-",
                                                                             gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$EnsDb.Hsapiens.v86.GeneSYM)
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot)
length(unique(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.tissues))
table(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.tissues)
# NOTE NOT ALL tissues have same number of elements

head(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot)
colnames(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot)

# Reorder
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot <-
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot[, c(31, 2:6, 1, 7:30)]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot)

######## SAVE
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.RData'))
write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.csv'))


######## Analyze Results

# Extract VGPairs with FDR < 0.05
signif.VGPair_hg38.FDR.05 <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.FDR.perVariant < 0.05, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.05)

# Extract VGPairs with FDR < 0.05 mapping to HLA locus
signif.VGPair_hg38.FDR.05_HLA <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.FDR.perVariant < 0.05 &
                                                           gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci %in% 9, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.05_HLA)

# Extract VGPairs with FDR < 0.05 mapping to ILI17R locus
signif.VGPair_hg38.FDR.05_IL17R <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.FDR.perVariant < 0.05 &
                                                           gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci %in% 22, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.05_IL17R)

# Extract VGPairs with FDR < 0.05 mapping to non-HLA, non-ILI17R locus
signif.VGPair_hg38.FDR.05_non.HLA.IL17R <- setdiff(signif.VGPair_hg38.FDR.05, c(signif.VGPair_hg38.FDR.05_HLA, signif.VGPair_hg38.FDR.05_IL17R))
length(signif.VGPair_hg38.FDR.05_non.HLA.IL17R)


######## Extract significant results
# Extract Results for VGPairs with at least FDR < 0.05 in one tissue in HLA locus
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_HLA <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.VGPair %in% signif.VGPair_hg38.FDR.05_HLA, ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_HLA)

# Extract Results for VGPairs with at least FDR < 0.05 in one tissue in IL17R locus
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_IL17R <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.VGPair %in% signif.VGPair_hg38.FDR.05_IL17R, ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_IL17R)

# Extract Results for VGPairs with at least FDR < 0.05 in one tissue in non-HLA, non-IL17R locus
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.VGPair %in% signif.VGPair_hg38.FDR.05_non.HLA.IL17R, ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R)

# Reorder groups by best FDR within group
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R <- 
  as.data.frame(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R %>% group_by(GTEx.VGPair) %>% 
                  mutate(min.FDR = min(GTEx.FDR.perVariant, na.rm=T)) %>% 
                  arrange(min.FDR, GTEx.VGPair, GTEx.FDR.perVariant) %>%
                  select(-min.FDR))
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R)

  
######## SAVE
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_HLA,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_HLA.RData'))
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_IL17R,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_IL17R.RData'))
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R.RData'))

write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_HLA,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_HLA.csv'))
write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_IL17R,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_IL17R.csv'))
write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R.csv'))




# Genes 
FDR.05_non.HLA.IL17R_GeneSYM <- unique(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R$EnsDb.Hsapiens.v86.GeneSYM)
FDR.05_non.HLA.IL17R_GeneSYM <- FDR.05_non.HLA.IL17R_GeneSYM[order(FDR.05_non.HLA.IL17R_GeneSYM)]
length(FDR.05_non.HLA.IL17R_GeneSYM)
FDR.05_non.HLA.IL17R_GeneSYM

gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R.genomewideSignifLoci <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R[!is.na(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci), ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R.genomewideSignifLoci)


######## SAVE
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R.genomewideSignifLoci,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R.genomewideSignifLoci.RData'))
write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R.genomewideSignifLoci,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R.genomewideSignifLoci.csv'))

FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM <- unique(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.05_non.HLA.IL17R.genomewideSignifLoci$EnsDb.Hsapiens.v86.GeneSYM)
FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM <- FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM[order(FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM)]
length(FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM)
FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM



######## FDR < 0.1

# Extract VGPairs with FDR < 0.1
signif.VGPair_hg38.FDR.1 <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.FDR.perVariant < 0.1, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.1)

# Extract VGPairs with FDR < 0.1 mapping to HLA locus
signif.VGPair_hg38.FDR.1_HLA <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.FDR.perVariant < 0.1 &
                                                                         gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci %in% 9, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.1_HLA)

# Extract VGPairs with FDR < 0.1 mapping to ILI17R locus
signif.VGPair_hg38.FDR.1_IL17R <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.FDR.perVariant < 0.1 &
                                                                         gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci %in% 22, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.1_IL17R)

# Extract VGPairs with FDR < 0.1 mapping to non-HLA, non-ILI17R locus
signif.VGPair_hg38.FDR.1_non.HLA.IL17R <- setdiff(signif.VGPair_hg38.FDR.1, c(signif.VGPair_hg38.FDR.1_HLA, signif.VGPair_hg38.FDR.1_IL17R))
length(signif.VGPair_hg38.FDR.1_non.HLA.IL17R)


######## Extract significant results
# Extract Results for VGPairs with at least FDR < 0.1 in one tissue in HLA locus
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_HLA <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.VGPair %in% signif.VGPair_hg38.FDR.1_HLA, ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_HLA)

# Extract Results for VGPairs with at least FDR < 0.1 in one tissue in IL17R locus
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_IL17R <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.VGPair %in% signif.VGPair_hg38.FDR.1_IL17R, ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_IL17R)

# Extract Results for VGPairs with at least FDR < 0.1 in one tissue in non-HLA, non-IL17R locus
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot$GTEx.VGPair %in% signif.VGPair_hg38.FDR.1_non.HLA.IL17R, ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R)

# Reorder groups by best FDR within group
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R <- 
  as.data.frame(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R %>% group_by(GTEx.VGPair) %>% 
                  mutate(min.FDR = min(GTEx.FDR.perVariant, na.rm=T)) %>% 
                  arrange(min.FDR, GTEx.VGPair, GTEx.FDR.perVariant) %>%
                  select(-min.FDR))
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R)


######## SAVE
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_HLA,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_HLA.RData'))
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_IL17R,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_IL17R.RData'))
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R.RData'))

write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_HLA,
          file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_HLA.csv'))
write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_IL17R,
          file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_IL17R.csv'))
write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R,
          file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R.csv'))




# Genes 
FDR.1_non.HLA.IL17R_GeneSYM <- unique(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R$EnsDb.Hsapiens.v86.GeneSYM)
FDR.1_non.HLA.IL17R_GeneSYM <- FDR.1_non.HLA.IL17R_GeneSYM[order(FDR.1_non.HLA.IL17R_GeneSYM)]
length(FDR.1_non.HLA.IL17R_GeneSYM)
FDR.1_non.HLA.IL17R_GeneSYM


gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R.genomewideSignifLoci <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R[!is.na(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci), ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R.genomewideSignifLoci)

######## SAVE
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R.genomewideSignifLoci,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R.genomewideSignifLoci.RData'))
write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R.genomewideSignifLoci,
          file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R.genomewideSignifLoci.csv'))

FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM <- unique(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.FDR.1_non.HLA.IL17R.genomewideSignifLoci$EnsDb.Hsapiens.v86.GeneSYM)
FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM <- FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM[order(FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM)]
length(FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM)
FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM

