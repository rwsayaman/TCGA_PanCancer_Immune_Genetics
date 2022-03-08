#!bin/bash
# module load CBC r/3.6.3

rm(list = ls())

GTEx.dir <- '/Users/rosalyn/Dropbox/MacBookPro BackUp/Documents/DataAnalysis.GTEx'
# GTEx.dir <- '/zivlab/data3/rsayaman/GTEx'

########## Set Results Folder
GTEx.sQTL.results.folder <- 'GTEx_Analysis_v8_sQTL_all_associations_GWAS.sugg.SNPs'


########## Filter for +/-500kb from TSS
load(file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.RData'))
head(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb)
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb)
# [1] 22010213       31

max(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$GTEx.tss_distance)
# [1] 1000000
min(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$GTEx.tss_distance)
# [1] -999977

# quartz()
# ggplot(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb) +
#   geom_histogram(aes(x=GTEx.tss_distance), fill="white", colour="black") +
#   theme_bw()

gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb[
    abs(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$GTEx.tss_distance) <= 500000, ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb)
# [1] 8608310      31


######## RECALCULATE FDR PER VARIANT for +/-500kb set across all genes and all tissue

library(dplyr)

gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb <- as.data.frame(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb %>%
                                                                                              group_by(GTEx.chr_bp_hg38) %>% 
                                                                                              mutate(GTEx.FDR.perVariant = p.adjust(GTEx.pval_nominal, method='BH')))

# Save updated unique files
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.RData'))

write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb,
          file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.csv'))


# quartz()
# plot(density(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$GTEx.FDR.perVariant), main="")
# lines(density(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$GTEx.FDR.perVariant), col="red")


######## Filter all GTEx sQTL results for Genomewide-significant loci only - non HLA (9) & non IL17R loci (22)

gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb_non.HLA.IL17R.genomewideSignifLoci <-
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb[
    !is.na(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci) &
      !gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci %in% c(9, 22), ]

dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb_non.HLA.IL17R.genomewideSignifLoci)
# [1] 136155     31

# Save files 
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb_non.HLA.IL17R.genomewideSignifLoci,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb_non.HLA.IL17R.genomewideSignifLoci.RData'))

write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb_non.HLA.IL17R.genomewideSignifLoci,
          file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb_non.HLA.IL17R.genomewideSignifLoci.csv'))


# ######## Filter all GTEx sQTL results for Genomewide-significant loci only - non HLA (9) & non IL17R loci (22) - nominal pval < 0.05 for colocalization
# 
# gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb_non.HLA.IL17R.genomewideSignifLoci_GTEx.nominal.pval.05  <-
#   gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb_non.HLA.IL17R.genomewideSignifLoci[
#     gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb_non.HLA.IL17R.genomewideSignifLoci$GTEx.pval_nominal < 0.05, ]
# dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb_non.HLA.IL17R.genomewideSignifLoci_GTEx.nominal.pval.05)
# # [1] 8275    31



######## PLOT
library(ggplot2)
library(ggrepel)
library(RColorBrewer)
library(viridis)
library(dplyr)

ggploData <- gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb_non.HLA.IL17R.genomewideSignifLoci
nrow(ggploData)
# [1] 136155

# label
ggploData$GeneSYM_label <- ggploData$EnsDb.Hsapiens.v86.GeneSYM
ggploData[is.na(ggploData$GeneSYM_label), ]$GeneSYM_label <- ggploData[is.na(ggploData$GeneSYM_label), ]$GTEx.EnsemblID

# stat
stat <- as.data.frame(ggploData %>%
                        group_by(GeneSYM_label) %>%
                        mutate(min.GTEx.FDR.perVariant = min(GTEx.FDR.perVariant, na.rm=T)))
stat <- unique(stat[stat$GTEx.FDR.perVariant == stat$min.GTEx.FDR.perVariant, ])
stat <- stat[stat$GTEx.pval_nominal < 0.05, ]

stat$GTEx.signif <- NA
stat[stat$GTEx.pval_nominal < 0.05, ]$GTEx.signif <- "p-val nominal < 0.05"
stat[stat$GTEx.FDR.perVariant < 0.1, ]$GTEx.signif <- "FDR < 0.1"
stat[stat$GTEx.FDR.perVariant < 0.05, ]$GTEx.signif <- "FDR < 0.05"
stat$GTEx.signif <- factor(stat$GTEx.signif,
                           levels=c("FDR < 0.05", "FDR < 0.1", "p-val nominal < 0.05"))
table(stat$GTEx.signif)
# FDR < 0.05            FDR < 0.1 p-val nominal < 0.05
#         7                   13                  283

stat$GTEx.signif.fontface <- "plain"
stat[stat$GTEx.FDR.perVariant < 0.1, ]$GTEx.signif.fontface <- "bold"
table(stat$GTEx.signif.fontface)
# bold plain 
# 20   283  

stat <- unique(stat[, c("GTEx.VGPair", "GeneSYM_label", "GTEx.tss_distance", "GTEx.FDR.perVariant", "GTEx.signif", "GTEx.signif.fontface")])

pdf(file.path(GTEx.dir, GTEx.sQTL.results.folder, "TSSDistance_gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb_non.HLA.IL17R.genomewideSignifLoci_FINAL.pdf"),
    height=15, width=50)
ggplot(ggploData) +
  xlab("TSS distance") + ylab("GTEx sQTL -log10(FDR per variant)") +
  ggtitle("GTEx sQTL gene-variant associations") +
  geom_hline(aes(yintercept=-log10(0.1)), colour="dodgerblue2", linetype="dotted") +
  geom_hline(aes(yintercept=-log10(0.05)), colour="red2", linetype="dotdash") +
  geom_point(aes(x=GTEx.tss_distance, y=-log10(GTEx.FDR.perVariant), 
                 fill=-log10(TCGA.Germline.GWAS.SNPlist.SNP.MIN.PLINK.PVAL)), 
             alpha=0.95, size=4, pch=21, colour="white", stroke=0) +
  scale_fill_distiller("TCGA Germline-Immune\nGWAS SNP -log10(p-value)", type="seq", palette="Spectral") +
  geom_text_repel(data=stat, aes(x=GTEx.tss_distance, y=-log10(GTEx.FDR.perVariant), 
                                 label=GeneSYM_label, colour=GTEx.signif, fontface=GTEx.signif.fontface), 
                  size=4, segment.size = 0.1, show.legend = T) +
  scale_colour_manual("GTEx sQTL significance", values=c("red2", "dodgerblue2", "black")) +
  theme(legend.position = "bottom", plot.title = element_text(size=24),
        axis.text = element_text(size=16, colour="black"), axis.title = element_text(size=20),
        legend.text = element_text(size=16, colour="black"), legend.title = element_text(size=16)) +
  guides(fill = guide_colourbar(barwidth = 20, barheight = 1), colour = guide_legend(order=2, ncol=1))
foo <- dev.off()  




######## Analyze Results FDR < 0.05

# Extract VGPairs with FDR < 0.05
signif.VGPair_hg38.FDR.05 <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$GTEx.FDR.perVariant < 0.05, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.05)
# [1] 1160795

# Extract VGPairs with FDR < 0.05 mapping to HLA locus
signif.VGPair_hg38.FDR.05_HLA <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$GTEx.FDR.perVariant < 0.05 &
                                                                         gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci %in% 9, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.05_HLA)
# [1] 1156034

# Extract VGPairs with FDR < 0.05 mapping to ILI17R locus
signif.VGPair_hg38.FDR.05_IL17R <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$GTEx.FDR.perVariant < 0.05 &
                                                                         gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci %in% 22, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.05_IL17R)
# [1] 1932

# Extract VGPairs with FDR < 0.05 mapping to non-HLA, non-ILI17R locus
signif.VGPair_hg38.FDR.05_non.HLA.IL17R <- setdiff(signif.VGPair_hg38.FDR.05, c(signif.VGPair_hg38.FDR.05_HLA, signif.VGPair_hg38.FDR.05_IL17R))
length(signif.VGPair_hg38.FDR.05_non.HLA.IL17R)
# [1] 385


######## Extract significant results
# Extract Results for VGPairs with at least FDR < 0.05 in one tissue in HLA locus
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_HLA <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$GTEx.VGPair %in% signif.VGPair_hg38.FDR.05_HLA, ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_HLA)
# [1] 7371034      31

# Extract Results for VGPairs with at least FDR < 0.05 in one tissue in IL17R locus
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_IL17R <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$GTEx.VGPair %in% signif.VGPair_hg38.FDR.05_IL17R, ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_IL17R)
# [1] 34126   31

# Extract Results for VGPairs with at least FDR < 0.05 in one tissue in non-HLA, non-IL17R locus
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$GTEx.VGPair %in% signif.VGPair_hg38.FDR.05_non.HLA.IL17R, ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R)
# [1] 84197    31

# Reorder groups by best FDR within group
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R <- 
  as.data.frame(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R %>% group_by(GTEx.VGPair) %>% 
                  mutate(min.FDR = min(GTEx.FDR.perVariant, na.rm=T)) %>% 
                  arrange(min.FDR, GTEx.VGPair, GTEx.FDR.perVariant) %>%
                  select(-min.FDR))
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R)
# [1] 84197    31


######## SAVE
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_HLA,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_HLA.RData'))
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_IL17R,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_IL17R.RData'))
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R.RData'))

write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_HLA,
          file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_HLA.csv'))
write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_IL17R,
          file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_IL17R.csv'))
write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R,
          file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R.csv'))


######## Explore Genes 
FDR.05_non.HLA.IL17R_GeneSYM <- unique(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R$EnsDb.Hsapiens.v86.GeneSYM)
FDR.05_non.HLA.IL17R_GeneSYM <- FDR.05_non.HLA.IL17R_GeneSYM[order(FDR.05_non.HLA.IL17R_GeneSYM)]
length(FDR.05_non.HLA.IL17R_GeneSYM)
# [1] 126
FDR.05_non.HLA.IL17R_GeneSYM
# [1] "AARS"              "ABAT"              "ACTN2"             "ACTR1B"            "AIF1"              "ANKRD36B"         
# [7] "AP5Z1"             "C6orf136"          "CCDC107"           "CCHCR1"            "CCZ1"              "COX10"            
# [13] "CTSZ"              "CXXC5"             "DDR1"              "DDX39B"            "DHX16"             "DNAJC18"          
# [19] "ECSCR"             "ERI1"              "ERO1B"             "FAM221B"           "FBXO32"            "FBXW11"           
# [25] "FLJ20021"          "FLOT1"             "FMO3"              "FUK"               "GABBR1"            "GBA2"             
# [31] "GNAS"              "GPR137B"           "GTF2H4"            "HCG16"             "HCG21"             "HCK"              
# [37] "HLA-B"             "HLA-C"             "HLA-F"             "HLA-G"             "INTS10"            "KDM1A"            
# [43] "KIF5C"             "LGALS8"            "LINC00347"         "LINC00961"         "LINC01029"         "LST1"             
# [49] "MAPK1"             "MDC1"              "METTL22"           "MICA"              "MICB"              "MMD"              
# [55] "MTR"               "MYPN"              "NEMF"              "NFKBIL1"           "NID1"              "NPEPL1"           
# [61] "NRM"               "OSBPL6"            "OXTR"              "P2RX5"             "PCTP"              "PLA2G4E"          
# [67] "PLA2G4E-AS1"       "POU5F1"            "PPM1F"             "PPP1R3B"           "PRELID3B"          "PRRC2A"           
# [73] "PRRC2C"            "PSORS1C1"          "PSORS1C3"          "RAB22A"            "RALYL"             "RBM45"            
# [79] "RECQL"             "RGP1"              "RICTOR"            "RIOK1"             "RP11-10A14.4"      "RP11-10A14.5"     
# [85] "RP11-112J3.16"     "RP11-115J16.2"     "RP11-385F5.4"      "RP11-62H7.2"       "RP11-655H13.2"     "RP13-726E6.2"     
# [91] "RPA1"              "RUFY1"             "SERPINF1"          "SFTA2"             "SH3PXD2B"          "SIL1"             
# [97] "SIPA1L2"           "SLC23A1"           "SLCO1A2"           "SMARCA2"           "SNHG4"             "SOS1"             
# [103] "SPAG8"             "SPATA24"           "SSPN"              "STX16"             "SUPT20H"           "TCF19"            
# [109] "TMEM100"           "TMEM131"           "TMEM173"           "TMEM8B"            "TNKS"              "TPM2"             
# [115] "TRIM27"            "TSR1"              "UBE2D2"            "VAC14"             "VARS2"             "VLDLR"            
# [121] "VWA3B"             "XXbac-BCX196D17.5" "XXbac-BPG308J9.3"  "ZBTB40"            "ZNF106"            "ZNF311"           


######## GTEx FDR < 0.05 - Genomwide-significant loci
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R.genomewideSignifLoci <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R[!is.na(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci), ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R.genomewideSignifLoci)
# [1] 4825   31

######## SAVE
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R.genomewideSignifLoci,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R.genomewideSignifLoci.RData'))
write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R.genomewideSignifLoci,
          file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R.genomewideSignifLoci.csv'))

FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM <- unique(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.05_non.HLA.IL17R.genomewideSignifLoci$EnsDb.Hsapiens.v86.GeneSYM)
FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM <- FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM[order(FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM)]
length(FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM)
# [1] 4
FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM
# [1] "AP5Z1"  "INTS10" "KIF5C"  "P2RX5" 




######## Analyze Results FDR < 0.1

# Extract VGPairs with FDR < 0.1
signif.VGPair_hg38.FDR.1 <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$GTEx.FDR.perVariant < 0.1, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.1)
# [1] 1320953

# Extract VGPairs with FDR < 0.1 mapping to HLA locus
signif.VGPair_hg38.FDR.1_HLA <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$GTEx.FDR.perVariant < 0.1 &
                                                                         gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci %in% 9, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.1_HLA)
# [1] 1315077

# Extract VGPairs with FDR < 0.1 mapping to ILI17R locus
signif.VGPair_hg38.FDR.1_IL17R <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$GTEx.FDR.perVariant < 0.1 &
                                                                         gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci %in% 22, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.1_IL17R)
# [1] 2328

# Extract VGPairs with FDR < 0.1 mapping to non-HLA, non-ILI17R locus
signif.VGPair_hg38.FDR.1_non.HLA.IL17R <- setdiff(signif.VGPair_hg38.FDR.1, c(signif.VGPair_hg38.FDR.1_HLA, signif.VGPair_hg38.FDR.1_IL17R))
length(signif.VGPair_hg38.FDR.1_non.HLA.IL17R)
# [1] 477


######## Extract significant results
# Extract Results for VGPairs with at least FDR < 0.1 in one tissue in HLA locus
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_HLA <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$GTEx.VGPair %in% signif.VGPair_hg38.FDR.1_HLA, ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_HLA)
# [1] 7715685      31

# Extract Results for VGPairs with at least FDR < 0.1 in one tissue in IL17R locus
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_IL17R <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$GTEx.VGPair %in% signif.VGPair_hg38.FDR.1_IL17R, ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_IL17R)
# [1] 37990   31

# Extract Results for VGPairs with at least FDR < 0.1 in one tissue in non-HLA, non-IL17R locus
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb[gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb$GTEx.VGPair %in% signif.VGPair_hg38.FDR.1_non.HLA.IL17R, ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R)
# [1] 110731    31

# Reorder groups by best FDR within group
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R <- 
  as.data.frame(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R %>% group_by(GTEx.VGPair) %>% 
                  mutate(min.FDR = min(GTEx.FDR.perVariant, na.rm=T)) %>% 
                  arrange(min.FDR, GTEx.VGPair, GTEx.FDR.perVariant) %>%
                  select(-min.FDR))
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R)
# [1] 110731    31


######## SAVE
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_HLA,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_HLA.RData'))
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_IL17R,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_IL17R.RData'))
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R.RData'))

write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_HLA,
          file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_HLA.csv'))
write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_IL17R,
          file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_IL17R.csv'))
write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R,
          file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R.csv'))


######## Explore Genes 
FDR.1_non.HLA.IL17R_GeneSYM <- unique(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R$EnsDb.Hsapiens.v86.GeneSYM)
FDR.1_non.HLA.IL17R_GeneSYM <- FDR.1_non.HLA.IL17R_GeneSYM[order(FDR.1_non.HLA.IL17R_GeneSYM)]
length(FDR.1_non.HLA.IL17R_GeneSYM)
# [1] 165
FDR.1_non.HLA.IL17R_GeneSYM
# [1] "AARS"              "ABAT"              "AC009948.5"        "ACTN2"             "ACTR1B"            "AGMO"             
# [7] "AIF1"              "ANKRD36B"          "ANKRD60"           "AP5Z1"             "ATP8B1"            "ATP8B5P"          
# [13] "BACE2"             "C1QC"              "C6orf136"          "CA9"               "CCDC107"           "CCHCR1"           
# [19] "CCZ1"              "CD72"              "CDC40"             "CDV3"              "COX10"             "CREB5"            
# [25] "CTB-35F21.2"       "CTSZ"              "CXXC5"             "DDR1"              "DDX39B"            "DENR"             
# [31] "DHX16"             "DNAJC18"           "DPCR1"             "ECSCR"             "EMCN"              "ERI1"             
# [37] "ERO1B"             "FAM221B"           "FBXO32"            "FBXW11"            "FLJ20021"          "FLOT1"            
# [43] "FMO3"              "FUK"               "GABBR1"            "GBA2"              "GNAS"              "GPR137B"          
# [49] "GTF2H4"            "HCG16"             "HCG21"             "HCK"               "HCP5"              "HEATR1"           
# [55] "HLA-B"             "HLA-C"             "HLA-F"             "HLA-G"             "HLF"               "INTS10"           
# [61] "KDM1A"             "KIF5C"             "LGALS8"            "LINC00347"         "LINC00961"         "LINC01029"        
# [67] "LINC01125"         "LST1"              "LTB"               "MAPK1"             "MDC1"              "METTL22"          
# [73] "MICA"              "MICB"              "MMD"               "MTR"               "MYPN"              "NAPG"             
# [79] "NCR3"              "NELFCD"            "NEMF"              "NFKBIL1"           "NID1"              "NPEPL1"           
# [85] "NPHP3"             "NPR2"              "NRG1-IT3"          "NRM"               "OSBPL6"            "OXTR"             
# [91] "P2RX5"             "PCTP"              "PDE11A"            "PEX7"              "PLA2G4E"           "PLA2G4E-AS1"      
# [97] "POU5F1"            "PPM1F"             "PPP1R18"           "PPP1R3B"           "PRELID3B"          "PRRC2A"           
# [103] "PRRC2C"            "PSORS1C1"          "PSORS1C3"          "RAB22A"            "RALYL"             "RBM45"            
# [109] "RECK"              "RECQL"             "RGMA"              "RGP1"              "RICTOR"            "RIOK1"            
# [115] "RP11-10A14.4"      "RP11-10A14.5"      "RP11-1101K5.1"     "RP11-112J3.16"     "RP11-115J16.2"     "RP11-385F5.4"     
# [121] "RP11-62H7.2"       "RP11-655H13.2"     "RP13-726E6.2"      "RPA1"              "RUFY1"             "SERPINF1"         
# [127] "SFTA2"             "SGSM2"             "SH3PXD2B"          "SHPK"              "SIL1"              "SIPA1L2"          
# [133] "SLC23A1"           "SLCO1A2"           "SMARCA2"           "SNHG4"             "SOS1"              "SPAG8"            
# [139] "SPATA24"           "SSPN"              "STK10"             "STX16"             "SUPT20H"           "TCF19"            
# [145] "TMA16"             "TMEM100"           "TMEM131"           "TMEM173"           "TMEM8B"            "TNKS"             
# [151] "TPM2"              "TRIM27"            "TSR1"              "UBE2D2"            "UBE2V1"            "VAC14"            
# [157] "VAPB"              "VARS2"             "VLDLR"             "VWA3B"             "XXbac-BCX196D17.5" "XXbac-BPG308J9.3" 
# [163] "ZBTB40"            "ZNF106"            "ZNF311"           


######## GTEx FDR < 0.1 - Genomwide-significant loci
gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R.genomewideSignifLoci <- 
  gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R[!is.na(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci), ]
dim(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R.genomewideSignifLoci)
# [1] 17802   31

######## SAVE
save(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R.genomewideSignifLoci,
     file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R.genomewideSignifLoci.RData'))
write.csv(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R.genomewideSignifLoci,
          file=file.path(GTEx.dir, GTEx.sQTL.results.folder, 'gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R.genomewideSignifLoci.csv'))

FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM <- unique(gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R.genomewideSignifLoci$EnsDb.Hsapiens.v86.GeneSYM)
FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM <- FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM[order(FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM)]
length(FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM)
# [1] 8
FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM
# [1] "AP5Z1"  "ATP8B1" "CDV3"   "INTS10" "KIF5C"  "NPHP3"  "P2RX5"  "SHPK"  




######## PLOT
library(ggplot2)
library(ggrepel)
library(RColorBrewer)
library(viridis)
library(dplyr)

ggploData <- gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R
nrow(ggploData)
# [1] 110731

# label
ggploData$GeneSYM_label <- ggploData$EnsDb.Hsapiens.v86.GeneSYM
ggploData[is.na(ggploData$GeneSYM_label), ]$GeneSYM_label <- ggploData[is.na(ggploData$GeneSYM_label), ]$GTEx.EnsemblID

stat <- as.data.frame(ggploData %>%
                        group_by(GeneSYM_label) %>%
                        mutate(min.GTEx.FDR.perVariant = min(GTEx.FDR.perVariant, na.rm=T)))
stat <- stat[stat$GTEx.FDR.perVariant == stat$min.GTEx.FDR.perVariant, ]
stat <- stat[stat$GTEx.FDR.perVariant < 0.1, ]

stat$GWAS.signif.loci <- NA
stat[is.na(stat$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci), ]$GWAS.signif.loci <- "GWAS Suggestive Loci & GTEx sQTL FDR < 0.1"
stat[!is.na(stat$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci) & stat$GTEx.FDR.perVariant < 0.1, ]$GWAS.signif.loci <- "GWAS Significant Loci & GTEx sQTL FDR < 0.1"
stat[!is.na(stat$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci) & stat$GTEx.FDR.perVariant < 0.05, ]$GWAS.signif.loci <- "GWAS Significant Loci & GTEx sQTL FDR < 0.05"

stat$GWAS.signif.loci <- factor(stat$GWAS.signif.loci,
                                levels=c("GWAS Significant Loci & GTEx sQTL FDR < 0.05", 
                                         "GWAS Significant Loci & GTEx sQTL FDR < 0.1", 
                                         "GWAS Suggestive Loci & GTEx sQTL FDR < 0.1"))

stat$GWAS.signif.loci.fontface <- NA
stat[is.na(stat$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci), ]$GWAS.signif.loci.fontface <- "plain"
stat[!is.na(stat$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci), ]$GWAS.signif.loci.fontface <- "bold"

stat <- unique(stat[, c("GTEx.VGPair", "GeneSYM_label", "GTEx.tss_distance", "GTEx.FDR.perVariant", "GWAS.signif.loci", "GWAS.signif.loci.fontface")])

pdf(file.path(GTEx.dir, GTEx.sQTL.results.folder, "TSSDistance_gtex.sQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.500kb.FDR.1_non.HLA.IL17R_FINAL.pdf"),
    height=15, width=50)
ggplot(ggploData) +
  xlab("TSS distance") + ylab("GTEx sQTL -log10(FDR per variant)") +
  ggtitle("GTEx sQTL gene-variant associations") +
  geom_hline(aes(yintercept=-log10(0.1)), colour="dodgerblue2", linetype="dotted") +
  geom_hline(aes(yintercept=-log10(0.05)), colour="red2", linetype="dotdash") +
  geom_point(aes(x=GTEx.tss_distance, y=-log10(GTEx.FDR.perVariant), 
                 fill=-log10(TCGA.Germline.GWAS.SNPlist.SNP.MIN.PLINK.PVAL)), 
             alpha=0.95, size=4, pch=21, colour="white", stroke=0) +
  scale_fill_distiller("TCGA Germline-Immune\nGWAS SNP -log10(p-value)", type="seq", palette="Spectral") +
  geom_text_repel(data=stat, aes(x=GTEx.tss_distance, y=-log10(GTEx.FDR.perVariant), 
                                 label=GeneSYM_label, colour=GWAS.signif.loci, fontface=GWAS.signif.loci.fontface), 
                  size=4, segment.size = 0.1, show.legend = T) +
  scale_colour_manual("TCGA Germline-Immune GWAS Loci \nGTEx Variant-Gene sQTL", values=c("red2", "dodgerblue2", "black")) +
  theme(legend.position = "bottom", plot.title = element_text(size=24),
        axis.text = element_text(size=16, colour="black"), axis.title = element_text(size=20),
        legend.text = element_text(size=16, colour="black"), legend.title = element_text(size=16)) +
  guides(fill = guide_colourbar(barwidth = 20, barheight = 1, order=1), colour = guide_legend(order=2, ncol=1))
foo <- dev.off()  


