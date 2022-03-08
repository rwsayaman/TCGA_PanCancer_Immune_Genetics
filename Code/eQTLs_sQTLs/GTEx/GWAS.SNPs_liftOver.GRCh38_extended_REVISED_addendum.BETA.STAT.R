rm(list = ls())

# if (!requireNamespace("BiocManager", quietly = TRUE))
#   install.packages("BiocManager")
# BiocManager::install(version = "3.10")
# BiocManager::install("GenomicRanges")
# BiocManager::install("AnnotationHub")
# BiocManager::install("rtracklayer")

library(GenomicRanges)
library(AnnotationHub)
library(rtracklayer)
library(dplyr)


######## LOAD ALL TCGA GWAS SUGGESTIVE SNPs

GWAS.SNP.dir <- '/Users/rosalyn/Dropbox/MacBookPro BackUp/Documents/DataAnalysis.GTEx/GWAS_SNPs'

res.sugg <- as.data.frame(read.csv(file.path(GWAS.SNP.dir, 'Table S4_GWAS Results_v20200106_Suggestive.csv'), header=T, stringsAsFactors = F))
dim(res.sugg)
# [1] 1794   28
head(res.sugg)


GWAS.SNPlist.sugg.hg19.extended <- res.sugg[, c('Sayaman.InternalLabel', 'Sayaman.FriendlyLabel', 'PLINK.SNP', 'Annot.SNPlocs.RefSNP_id', 'PLINK.CHR', 'PLINK.BP', 'PLINK.A1', 'PLINK.A2',
                                            'Minimac3.HRC.Genotyped', 'Minimac3.HRC.Rsq', 'Minimac3.HRC.AvgCall', 'Minimac3.HRC.MAF', 'PLINK.9603.MAF',
                                            'Annot.Figure.GenomewideSignificant.Loci', 'PLINK.P', 'PLINK.BETA.OR', 'PLINK.STAT', 'PLINK.Assoc.Test')]

########## 
########## REVISED Loci9: Extent of HLA
########## 
table(GWAS.SNPlist.sugg.hg19.extended$Annot.Figure.GenomewideSignificant.Loci)
# 1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22  23 
# 6  13   3 156   4   3  33   8 855   1   2   6   2   1   4  13   4   2  11   1   1  20  10 
str(GWAS.SNPlist.sugg.hg19.extended)
GWAS.SNPlist.sugg.hg19.extended[
  GWAS.SNPlist.sugg.hg19.extended$PLINK.CHR %in% 6 &
    GWAS.SNPlist.sugg.hg19.extended$PLINK.BP >= 28000000 & 
    GWAS.SNPlist.sugg.hg19.extended$PLINK.BP <= 34000000,]$Annot.Figure.GenomewideSignificant.Loci <- 9
table(GWAS.SNPlist.sugg.hg19.extended$Annot.Figure.GenomewideSignificant.Loci)
# 1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20  21  22  23 
# 6  13   3 156   4   3  33   8 874   1   2   6   2   1   4  13   4   2  11   1   1  20  10 


########## 
########## Min Pval, associated Beta and Traits
########## 
# Calculate best (minimum) p-value for a given SNP
GWAS.SNPlist.sugg.hg19.extended <- as.data.frame(GWAS.SNPlist.sugg.hg19.extended %>% group_by(PLINK.SNP) %>%
  mutate(SNP.MIN.PLINK.PVAL = min(PLINK.P, na.rm=T), 
         SNP.MIN.PLINK.PVAL.BETA.OR = PLINK.BETA.OR[which(PLINK.P == min(PLINK.P))],
         SNP.MIN.PLINK.PVAL.STAT = PLINK.STAT[which(PLINK.P == min(PLINK.P))],
         SNP.MIN.PLINK.PVAL.Assoc.Test = PLINK.Assoc.Test[which(PLINK.P == min(PLINK.P))],
         SNP.MIN.PLINK.PVAL.TRAIT.Internal = Sayaman.InternalLabel[which(PLINK.P == min(PLINK.P))],
         SNP.MIN.PLINK.PVAL.TRAIT = Sayaman.FriendlyLabel[which(PLINK.P == min(PLINK.P))],
         SNP.PLINK.ALL.SIGNIF.TRAITS = paste(Sayaman.FriendlyLabel[PLINK.P < 5e-8], collapse = ", "),
         SNP.PLINK.ALL.SUGG.TRAITS = paste(Sayaman.FriendlyLabel[PLINK.P >= 5e-8 & PLINK.P < 1e-6], collapse = ", ")))
GWAS.SNPlist.sugg.hg19.extended <- GWAS.SNPlist.sugg.hg19.extended[order(GWAS.SNPlist.sugg.hg19.extended$PLINK.SNP), ]
dim(GWAS.SNPlist.sugg.hg19.extended)
# [1] 1794   20

# Remove Sayaman.InternalLabel
colnames(GWAS.SNPlist.sugg.hg19.extended)
GWAS.SNPlist.sugg.hg19.extended[[1]] <- NULL
# Remove Sayaman.FriendlyLabel
colnames(GWAS.SNPlist.sugg.hg19.extended)
GWAS.SNPlist.sugg.hg19.extended[[1]] <- NULL
# Remove p-val
colnames(GWAS.SNPlist.sugg.hg19.extended)
GWAS.SNPlist.sugg.hg19.extended[[13]] <- NULL
# Remove beta/or
colnames(GWAS.SNPlist.sugg.hg19.extended)
GWAS.SNPlist.sugg.hg19.extended[[13]] <- NULL
# Remove stat
colnames(GWAS.SNPlist.sugg.hg19.extended)
GWAS.SNPlist.sugg.hg19.extended[[13]] <- NULL
# Remove assoc test
colnames(GWAS.SNPlist.sugg.hg19.extended)
GWAS.SNPlist.sugg.hg19.extended[[13]] <- NULL


# Take unique SNPs only
GWAS.SNPlist.sugg.hg19.extended <- unique(GWAS.SNPlist.sugg.hg19.extended)
dim(GWAS.SNPlist.sugg.hg19.extended)
# [1] 1587   20
length(unique(GWAS.SNPlist.sugg.hg19.extended$PLINK.SNP))
# [1] 1587
length(unique(GWAS.SNPlist.sugg.hg19.extended$Annot.SNPlocs.RefSNP_id))
# [1] 773

head(GWAS.SNPlist.sugg.hg19.extended)
# PLINK.SNP Annot.SNPlocs.RefSNP_id PLINK.CHR  PLINK.BP PLINK.A1 PLINK.A2 Minimac3.HRC.Genotyped Minimac3.HRC.Rsq Minimac3.HRC.AvgCall Minimac3.HRC.MAF PLINK.9603.MAF
# 37 1:170995404:C:T              rs75804706         1 170995404        C        T                Imputed          0.55020              0.98894          0.02014       0.013230
# 38 1:176921020:A:G             rs144793703         1 176921020        G        A                Imputed          0.78908              0.99834          0.00651       0.005936
# 39 1:181732884:C:T              rs73045141         1 181732884        C        T                Imputed          0.98475              0.99961          0.02030       0.020620
# 40 1:195998692:C:T               rs1126242         1 195998692        T        C                Imputed          0.98092              0.99774          0.10924       0.108600
# 41 1:204443859:C:T              rs16853809         1 204443859        T        C                Imputed          0.91990              0.99922          0.00757       0.007498
# 43 1:219325460:C:T             rs115596659         1 219325460        T        C                Imputed          0.94819              0.99967          0.00493       0.005051
# Annot.Figure.GenomewideSignificant.Loci SNP.MIN.PLINK.PVAL SNP.MIN.PLINK.PVAL.BETA.OR SNP.MIN.PLINK.PVAL.STAT SNP.MIN.PLINK.PVAL.Assoc.Test
# 37                                      NA           8.69e-07                    2.05800                   4.919                      logistic
# 38                                      NA           4.15e-07                    0.01230                   5.066                        linear
# 39                                      NA           7.76e-07                    0.00744                   4.945                        linear
# 40                                      NA           3.63e-07                    1.30700                   5.088                      logistic
# 41                                      NA           5.18e-08                    0.01452                   5.450                        linear
# 43                                      NA           2.37e-07                    0.01636                   5.172                        linear
# SNP.MIN.PLINK.PVAL.TRAIT.Internal               SNP.MIN.PLINK.PVAL.TRAIT SNP.PLINK.ALL.SIGNIF.TRAITS
# 37 Core56.Cell.Proportion_T.Cells.CD8_Binary.MedianLowHigh Leukocyte Subset (%) - T Cells CD8 (%)                            
# 38                              Sigs160.Bindea_Eosinophils      Leukocyte Subset ES - Eosinophils                            
# 39                              Sigs160.Bindea_CD8.T.cells      Leukocyte Subset ES - CD8 T cells                            
# 40 Core56.Cell.Proportion_T.Cells.CD8_Binary.MedianLowHigh Leukocyte Subset (%) - T Cells CD8 (%)                            
# 41                           Sigs160.Bindea_T.helper.cells   Leukocyte Subset ES - T helper cells                            
# 43                              Sigs160.Bindea_CD8.T.cells      Leukocyte Subset ES - CD8 T cells                            
# SNP.PLINK.ALL.SUGG.TRAITS
# 37                                Leukocyte Subset (%) - T Cells CD8 (%)
# 38                                     Leukocyte Subset ES - Eosinophils
# 39                                     Leukocyte Subset ES - CD8 T cells
# 40                                Leukocyte Subset (%) - T Cells CD8 (%)
# 41 Leukocyte Subset ES - T helper cells, Leukocyte Subset ES - Tcm cells
# 43                                     Leukocyte Subset ES - CD8 T cells

######## CREATE GENOMIC RANGES, data is hg19

GWAS.SNPlist.sugg.hg19.extended$chr <- paste0('chr', GWAS.SNPlist.sugg.hg19.extended$PLINK.CHR)
GWAS.SNPlist.sugg.hg19.extended$start <- GWAS.SNPlist.sugg.hg19.extended$PLINK.BP
GWAS.SNPlist.sugg.hg19.extended$end <- GWAS.SNPlist.sugg.hg19.extended$PLINK.BP
str(GWAS.SNPlist.sugg.hg19.extended)

GWAS.SNPlist.sugg.Granges.hg19 <- makeGRangesFromDataFrame(GWAS.SNPlist.sugg.hg19.extended,
                                                      keep.extra.columns=TRUE,
                                                      ignore.strand=TRUE,
                                                      seqnames.field="chr",
                                                      start.field="start",
                                                      end.field="end",
                                                      starts.in.df.are.0based=FALSE)
GWAS.SNPlist.sugg.Granges.hg19
# GRanges object with 1587 ranges and 16 metadata columns:
#   seqnames    ranges strand |       PLINK.SNP Annot.SNPlocs.RefSNP_id PLINK.CHR  PLINK.BP    PLINK.A1    PLINK.A2 Minimac3.HRC.Genotyped Minimac3.HRC.Rsq
# <Rle> <IRanges>  <Rle> |     <character>             <character> <integer> <integer> <character> <character>            <character>        <numeric>
# 37     chr1 170995404      * | 1:170995404:C:T              rs75804706         1 170995404           C           T                Imputed           0.5502
# 38     chr1 176921020      * | 1:176921020:A:G             rs144793703         1 176921020           G           A                Imputed          0.78908
# 39     chr1 181732884      * | 1:181732884:C:T              rs73045141         1 181732884           C           T                Imputed          0.98475
# 40     chr1 195998692      * | 1:195998692:C:T               rs1126242         1 195998692           T           C                Imputed          0.98092
# 41     chr1 204443859      * | 1:204443859:C:T              rs16853809         1 204443859           T           C                Imputed           0.9199
# ...      ...       ...    ... .             ...                     ...       ...       ...         ...         ...                    ...              ...
# 1444     chr9    629418      * |    9:629418:A:G              rs16921346         9    629418           G           A                Imputed          0.97867
# 1445     chr9    630062      * |    9:630062:A:G             rs111651935         9    630062           G           A                Imputed          0.97961
# 1460     chr9  82858748      * |  9:82858748:A:G              rs73656317         9  82858748           A           G                Imputed          0.94095
# 1461     chr9  86856185      * |  9:86856185:A:G              rs12350607         9  86856185           G           A                Imputed          0.98666
# 1462     chr9  92449453      * |  9:92449453:A:G               rs9722568         9  92449453           A           G              Genotyped          0.99864
# Minimac3.HRC.AvgCall Minimac3.HRC.MAF PLINK.9603.MAF Annot.Figure.GenomewideSignificant.Loci SNP.MIN.PLINK.PVAL               SNP.MIN.PLINK.PVAL.TRAIT
# <numeric>        <numeric>      <numeric>                               <numeric>          <numeric>                            <character>
# 37              0.98894          0.02014        0.01323                                    <NA>           8.69e-07 Leukocyte Subset (%) - T Cells CD8 (%)
# 38              0.99834          0.00651       0.005936                                    <NA>           4.15e-07      Leukocyte Subset ES - Eosinophils
# 39              0.99961           0.0203        0.02062                                    <NA>           7.76e-07      Leukocyte Subset ES - CD8 T cells
# 40              0.99774          0.10924         0.1086                                    <NA>           3.63e-07 Leukocyte Subset (%) - T Cells CD8 (%)
# 41              0.99922          0.00757       0.007498                                    <NA>           5.18e-08   Leukocyte Subset ES - T helper cells
# ...                  ...              ...            ...                                     ...                ...                                    ...
# 1444              0.99971          0.01065        0.01057                                    <NA>           8.47e-07         Leukocyte Subset ES - NK cells
# 1445               0.9997          0.01138        0.01125                                    <NA>           9.16e-07         Leukocyte Subset ES - NK cells
# 1460              0.99953          0.00593       0.005884                                    <NA>           2.31e-07   Leukocyte Subset ES - T helper cells
# 1461              0.99941          0.03211        0.03244                                    <NA>           6.22e-07        Leukocyte Subset ES - Tfh cells
# 1462              0.99965           0.2487         0.2486                                    <NA>           5.17e-07         Attractor Metagene - G SIGLEC9
# SNP.PLINK.ALL.SIGNIF.TRAITS                                             SNP.PLINK.ALL.SUGG.TRAITS
# <character>                                                           <character>
# 37                                                            Leukocyte Subset (%) - T Cells CD8 (%)
# 38                                                                 Leukocyte Subset ES - Eosinophils
# 39                                                                 Leukocyte Subset ES - CD8 T cells
# 40                                                            Leukocyte Subset (%) - T Cells CD8 (%)
# 41                             Leukocyte Subset ES - T helper cells, Leukocyte Subset ES - Tcm cells
# ...                         ...                                                                   ...
# 1444                                                                    Leukocyte Subset ES - NK cells
# 1445                                                                    Leukocyte Subset ES - NK cells
# 1460                                                              Leukocyte Subset ES - T helper cells
# 1461                                                                   Leukocyte Subset ES - Tfh cells
# 1462                                                                    Attractor Metagene - G SIGLEC9
# -------
#   seqinfo: 22 sequences from an unspecified genome; no seqlengths



######## LOAD ANNOTATION CHAIN hg19 to hg38

hub <- AnnotationHub()

chainfiles <- query(hub , c("hg38", "hg19", "chainfile"))
chainfiles
## AnnotationHub with 4 records
## # snapshotDate(): 2020-03-31
## # $dataprovider: UCSC, NCBI
## # $species: Homo sapiens
## # $rdataclass: ChainFile
## # additional mcols(): taxonomyid, genome, description, coordinate_1_based, maintainer,
## #   rdatadateadded, preparerclass, tags, rdatapath, sourceurl, sourcetype 
## # retrieve records with, e.g., 'object[["AH14108"]]' 
## 
##             title                                        
##   AH14108 | hg38ToHg19.over.chain.gz                     
##   AH14150 | hg19ToHg38.over.chain.gz                     
##   AH78915 | Chain file for Homo sapiens rRNA hg19 to hg38
##   AH78916 | Chain file for Homo sapiens rRNA hg38 to hg19

# Chain file for Homo sapiens rRNA hg19 to hg38
chain <- chainfiles[['AH14150']]



######## CONVERT GENOMIC RANGES from hg19 to hg38

GWAS.SNPlist.sugg.Granges.hg38 <- unlist(liftOver(GWAS.SNPlist.sugg.Granges.hg19, chain))
GWAS.SNPlist.sugg.hg38 <- as.data.frame(GWAS.SNPlist.sugg.Granges.hg38)
head(GWAS.SNPlist.sugg.hg38)
str(GWAS.SNPlist.sugg.hg38)
GWAS.SNPlist.sugg.hg38$seqnames <- as.character(GWAS.SNPlist.sugg.hg38$seqnames)
GWAS.SNPlist.sugg.hg38$strand <- as.character(GWAS.SNPlist.sugg.hg38$strand)

# indicate hg38
colnames(GWAS.SNPlist.sugg.hg38) <- gsub('seqnames', 'seqnames_hg38', colnames(GWAS.SNPlist.sugg.hg38))
colnames(GWAS.SNPlist.sugg.hg38) <- gsub('start', 'start_hg38', colnames(GWAS.SNPlist.sugg.hg38))
colnames(GWAS.SNPlist.sugg.hg38) <- gsub('end', 'end_hg38', colnames(GWAS.SNPlist.sugg.hg38))

GWAS.SNPlist.sugg.hg38$chr_bp_hg38 <- paste0(GWAS.SNPlist.sugg.hg38$seqnames, '_',
                                             GWAS.SNPlist.sugg.hg38$start)
GWAS.SNPlist.sugg.hg38$chr_bp_hg19 <- paste0('chr', GWAS.SNPlist.sugg.hg38$PLINK.CHR, '_',
                                             GWAS.SNPlist.sugg.hg38$PLINK.BP)


######## SAVE AS DATA FRAME
colnames(GWAS.SNPlist.sugg.hg38)
GWAS.SNPlist.sugg.hg38 <- GWAS.SNPlist.sugg.hg38[, 6:ncol(GWAS.SNPlist.sugg.hg38)]
dim(GWAS.SNPlist.sugg.hg38)
# [1] 1587   22

head(GWAS.SNPlist.sugg.hg38)
# PLINK.SNP Annot.SNPlocs.RefSNP_id PLINK.CHR  PLINK.BP PLINK.A1 PLINK.A2 Minimac3.HRC.Genotyped Minimac3.HRC.Rsq Minimac3.HRC.AvgCall Minimac3.HRC.MAF PLINK.9603.MAF
# 37 1:170995404:C:T              rs75804706         1 170995404        C        T                Imputed          0.55020              0.98894          0.02014       0.013230
# 38 1:176921020:A:G             rs144793703         1 176921020        G        A                Imputed          0.78908              0.99834          0.00651       0.005936
# 39 1:181732884:C:T              rs73045141         1 181732884        C        T                Imputed          0.98475              0.99961          0.02030       0.020620
# 40 1:195998692:C:T               rs1126242         1 195998692        T        C                Imputed          0.98092              0.99774          0.10924       0.108600
# 41 1:204443859:C:T              rs16853809         1 204443859        T        C                Imputed          0.91990              0.99922          0.00757       0.007498
# 43 1:219325460:C:T             rs115596659         1 219325460        T        C                Imputed          0.94819              0.99967          0.00493       0.005051
# Annot.Figure.GenomewideSignificant.Loci SNP.MIN.PLINK.PVAL SNP.MIN.PLINK.PVAL.BETA.OR SNP.MIN.PLINK.PVAL.STAT SNP.MIN.PLINK.PVAL.Assoc.Test
# 37                                      NA           8.69e-07                    2.05800                   4.919                      logistic
# 38                                      NA           4.15e-07                    0.01230                   5.066                        linear
# 39                                      NA           7.76e-07                    0.00744                   4.945                        linear
# 40                                      NA           3.63e-07                    1.30700                   5.088                      logistic
# 41                                      NA           5.18e-08                    0.01452                   5.450                        linear
# 43                                      NA           2.37e-07                    0.01636                   5.172                        linear
# SNP.MIN.PLINK.PVAL.TRAIT.Internal               SNP.MIN.PLINK.PVAL.TRAIT SNP.PLINK.ALL.SIGNIF.TRAITS
# 37 Core56.Cell.Proportion_T.Cells.CD8_Binary.MedianLowHigh Leukocyte Subset (%) - T Cells CD8 (%)                            
# 38                              Sigs160.Bindea_Eosinophils      Leukocyte Subset ES - Eosinophils                            
# 39                              Sigs160.Bindea_CD8.T.cells      Leukocyte Subset ES - CD8 T cells                            
# 40 Core56.Cell.Proportion_T.Cells.CD8_Binary.MedianLowHigh Leukocyte Subset (%) - T Cells CD8 (%)                            
# 41                           Sigs160.Bindea_T.helper.cells   Leukocyte Subset ES - T helper cells                            
# 43                              Sigs160.Bindea_CD8.T.cells      Leukocyte Subset ES - CD8 T cells                            
# SNP.PLINK.ALL.SUGG.TRAITS    chr_bp_hg38    chr_bp_hg19
# 37                                Leukocyte Subset (%) - T Cells CD8 (%) chr1_171026263 chr1_170995404
# 38                                     Leukocyte Subset ES - Eosinophils chr1_176951884 chr1_176921020
# 39                                     Leukocyte Subset ES - CD8 T cells chr1_181763748 chr1_181732884
# 40                                Leukocyte Subset (%) - T Cells CD8 (%) chr1_196029562 chr1_195998692
# 41 Leukocyte Subset ES - T helper cells, Leukocyte Subset ES - Tcm cells chr1_204474731 chr1_204443859
# 43                                     Leukocyte Subset ES - CD8 T cells chr1_219152118 chr1_219325460


write.csv(GWAS.SNPlist.sugg.hg38, file.path(GWAS.SNP.dir, 'GWAS.SNPlist.sugg.hg38_extended_REVISED_2020716_Addendum.Beta.Stat.csv'), row.names=F, col.names=T)
save(GWAS.SNPlist.sugg.hg38, file=file.path(GWAS.SNP.dir, 'GWAS.SNPlist.sugg.hg38_extended_REVISED_2020716_Addendum.Beta.Stat.RData'))
