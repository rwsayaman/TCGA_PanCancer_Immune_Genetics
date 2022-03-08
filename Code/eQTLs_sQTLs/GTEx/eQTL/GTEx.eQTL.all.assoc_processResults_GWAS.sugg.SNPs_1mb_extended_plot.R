#!bin/bash
# module load CBC r/3.6.3

rm(list = ls())

GTEx.dir <- '/Users/rosalyn/Dropbox/MacBookPro BackUp/Documents/DataAnalysis.GTEx'
# GTEx.dir <- '/zivlab/data3/rsayaman/GTEx'

########## Set Results Folder
GTEx.eQTL.results.folder <- 'GTEx_Analysis_v8_eQTL_all_associations_GWAS.sugg.SNPs'


########## Load redo unique file
load(file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.RData'))
head(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot)


########## Check Unique: known duplicate entries
# Original 
nrow(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot)
# [1] 4270470

gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot_unique <- unique(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot)
nrow(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot_unique)
# [1] 4270470
gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb <- gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot_unique


### NOTE: ENTRIES ARE UNIQUE NO NEED TO RECALCULATE
# ######## RECALCULATE FDR PER VARIANT for uniqe set for +/-1mb across all genes and all tissue
# 
# library(dplyr)
# gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb <- as.data.frame(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb %>%
#                                                                                                group_by(GTEx.chr_bp_hg38) %>% 
#                                                                                                mutate(GTEx.FDR.perVariant = p.adjust(GTEx.pval_nominal, method='BH')))

# Save updated unique files
save(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb,
     file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.RData'))

write.csv(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb,
          file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.csv'))



######## Filter all GTEx eQTL results for Genomewide-significant loci only - non HLA (9) & non IL17R loci (22)

gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb_non.HLA.IL17R.genomewideSignifLoci <-
  gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb[
    !is.na(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci) &
      !gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci %in% c(9, 22), ]

dim(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb_non.HLA.IL17R.genomewideSignifLoci)
# [1] 88069     31

# Save files 
save(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb_non.HLA.IL17R.genomewideSignifLoci,
     file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb_non.HLA.IL17R.genomewideSignifLoci.RData'))

write.csv(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb_non.HLA.IL17R.genomewideSignifLoci,
          file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb_non.HLA.IL17R.genomewideSignifLoci.csv'))


# ######## Filter all GTEx eQTL results for Genomewide-significant loci only - non HLA (9) & non IL17R loci (22) - nominal pval < 0.05 for colocalization
# 
# gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb_non.HLA.IL17R.genomewideSignifLoci_GTEx.nominal.pval.05  <-
#   gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb_non.HLA.IL17R.genomewideSignifLoci[
#     gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb_non.HLA.IL17R.genomewideSignifLoci$GTEx.pval_nominal < 0.05, ]
# dim(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb_non.HLA.IL17R.genomewideSignifLoci_GTEx.nominal.pval.05)
# # [1] 5562    31



######## PLOT
library(ggplot2)
library(ggrepel)
library(RColorBrewer)
library(viridis)
library(dplyr)

ggploData <- gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb_non.HLA.IL17R.genomewideSignifLoci
nrow(ggploData)
# [1] 88069

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
#       21                   12                  492 

stat$GTEx.signif.fontface <- "plain"
stat[stat$GTEx.FDR.perVariant < 0.1, ]$GTEx.signif.fontface <- "bold"
table(stat$GTEx.signif.fontface)
# bold plain 
# 33   492

stat <- unique(stat[, c("GTEx.VGPair", "GeneSYM_label", "GTEx.tss_distance", "GTEx.FDR.perVariant", "GTEx.signif", "GTEx.signif.fontface")])

pdf(file.path(GTEx.dir, GTEx.eQTL.results.folder, "TSSDistance_gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb_non.HLA.IL17R.genomewideSignifLoci_FINAL.pdf"),
    height=15, width=50)
ggplot(ggploData) +
  xlab("TSS distance") + ylab("GTEx eQTL -log10(FDR per variant)") +
  ggtitle("GTEx eQTL gene-variant associations") +
  geom_hline(aes(yintercept=-log10(0.1)), colour="dodgerblue2", linetype="dotted") +
  geom_hline(aes(yintercept=-log10(0.05)), colour="red2", linetype="dotdash") +
  geom_point(aes(x=GTEx.tss_distance, y=-log10(GTEx.FDR.perVariant), 
                 fill=-log10(TCGA.Germline.GWAS.SNPlist.SNP.MIN.PLINK.PVAL)), 
             alpha=0.95, size=4, pch=21, colour="white", stroke=0) +
  scale_fill_distiller("TCGA Germline-Immune\nGWAS SNP -log10(p-value)", type="seq", palette="Spectral") +
  geom_text_repel(data=stat, aes(x=GTEx.tss_distance, y=-log10(GTEx.FDR.perVariant), 
                                 label=GeneSYM_label, colour=GTEx.signif, fontface=GTEx.signif.fontface), 
                  size=4, segment.size = 0.1, show.legend = T) +
  scale_colour_manual("GTEx eQTL significance", values=c("red2", "dodgerblue2", "black")) +
  theme(legend.position = "bottom", plot.title = element_text(size=24),
        axis.text = element_text(size=16, colour="black"), axis.title = element_text(size=20),
        legend.text = element_text(size=16, colour="black"), legend.title = element_text(size=16)) +
  guides(fill = guide_colourbar(barwidth = 20, barheight = 1), colour = guide_legend(order=2, ncol=1))
foo <- dev.off()  




######## Analyze Results FDR < 0.05

# Extract VGPairs with FDR < 0.05
signif.VGPair_hg38.FDR.05 <- 
  gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb[gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$GTEx.FDR.perVariant < 0.05, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.05)
# [1] 394558

# Extract VGPairs with FDR < 0.05 mapping to HLA locus
signif.VGPair_hg38.FDR.05_HLA <- 
  gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb[gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$GTEx.FDR.perVariant < 0.05 &
                                                                         gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci %in% 9, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.05_HLA)
# [1] 387452

# Extract VGPairs with FDR < 0.05 mapping to ILI17R locus
signif.VGPair_hg38.FDR.05_IL17R <- 
  gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb[gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$GTEx.FDR.perVariant < 0.05 &
                                                                         gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci %in% 22, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.05_IL17R)
# [1] 938

# Extract VGPairs with FDR < 0.05 mapping to non-HLA, non-ILI17R locus
signif.VGPair_hg38.FDR.05_non.HLA.IL17R <- setdiff(signif.VGPair_hg38.FDR.05, c(signif.VGPair_hg38.FDR.05_HLA, signif.VGPair_hg38.FDR.05_IL17R))
length(signif.VGPair_hg38.FDR.05_non.HLA.IL17R)
# [1] 1198


######## Extract significant results
# Extract Results for VGPairs with at least FDR < 0.05 in one tissue in HLA locus
gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_HLA <- 
  gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb[gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$GTEx.VGPair %in% signif.VGPair_hg38.FDR.05_HLA, ]
dim(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_HLA)
# [1] 1992448      31

# Extract Results for VGPairs with at least FDR < 0.05 in one tissue in IL17R locus
gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_IL17R <- 
  gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb[gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$GTEx.VGPair %in% signif.VGPair_hg38.FDR.05_IL17R, ]
dim(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_IL17R)
# [1] 6212   31

# Extract Results for VGPairs with at least FDR < 0.05 in one tissue in non-HLA, non-IL17R locus
gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R <- 
  gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb[gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$GTEx.VGPair %in% signif.VGPair_hg38.FDR.05_non.HLA.IL17R, ]
dim(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R)
# [1] 43272    31

# Reorder groups by best FDR within group
gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R <- 
  as.data.frame(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R %>% group_by(GTEx.VGPair) %>% 
                  mutate(min.FDR = min(GTEx.FDR.perVariant, na.rm=T)) %>% 
                  arrange(min.FDR, GTEx.VGPair, GTEx.FDR.perVariant) %>%
                  select(-min.FDR))
dim(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R)
# [1] 43272    31


######## SAVE
save(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_HLA,
     file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_HLA.RData'))
save(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_IL17R,
     file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_IL17R.RData'))
save(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R,
     file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R.RData'))

write.csv(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_HLA,
          file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_HLA.csv'))
write.csv(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_IL17R,
          file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_IL17R.csv'))
write.csv(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R,
          file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R.csv'))


######## Explore Genes 
FDR.05_non.HLA.IL17R_GeneSYM <- unique(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R$EnsDb.Hsapiens.v86.GeneSYM)
FDR.05_non.HLA.IL17R_GeneSYM <- FDR.05_non.HLA.IL17R_GeneSYM[order(FDR.05_non.HLA.IL17R_GeneSYM)]
length(FDR.05_non.HLA.IL17R_GeneSYM)
# [1] 282
FDR.05_non.HLA.IL17R_GeneSYM
# [1] "ABCF1"              "AC007682.1"         "AC009229.5"         "AC009229.6"         "AC073326.3"         "AC074117.13"        "AC159540.1"         "AC159540.14"       
# [9] "ACTN2"              "AF131215.2"         "AF131215.9"         "ANKFN1"             "ANKRD36"            "ANKRD36B"           "AP001469.9"         "AP001610.5"        
# [17] "AP001619.2"         "APOM"               "ARHGEF39"           "ART5"               "ATF6B"              "ATL2"               "ATP5E"              "ATP6V1G2"          
# [25] "BACE2"              "BAG6"               "BANK1"              "BX322557.10"        "C1QC"               "C2"                 "C4A"                "C4B"               
# [33] "C4orf36"            "C6orf15"            "C6orf25"            "C6orf47"            "CA9"                "CCDC107"            "CCHCR1"             "CDSN"              
# [41] "CFB"                "CLDN23"             "CLEC18A"            "CLIC1"              "CNNM3"              "COG4"               "COL4A3BP"           "COL5A1-AS1"        
# [49] "COX5B"              "CSNK2B"             "CTA-398F10.2"       "CTU1"               "CXXC5"              "CYB5B"              "CYP1B1"             "CYP1B1-AS1"        
# [57] "CYP21A1P"           "CYP21A2"            "CYSTM1"             "DDAH2"              "DDR1"               "DDX19B"             "DDX39B-AS1"         "DENR"              
# [65] "DNAJC18"            "DPCR1"              "ECSCR"              "ENC1"               "ERC2"               "ERI1"               "FAHD2B"             "FAM178B"           
# [73] "FAM221B"            "FAM3B"              "FAM85B"             "FAM86B3P"           "FANCG"              "FKBPL"              "FLJ20021"           "FLOT1"             
# [81] "FUK"                "GALM"               "GBA2"               "GPANK1"             "GPAT2P2"            "GYS2"               "HCG15"              "HCG17"             
# [89] "HCG18"              "HCG20"              "HCG21"              "HCG22"              "HCG27"              "HCG4"               "HCG4B"              "HCG4P11"           
# [97] "HCG4P3"             "HCG4P5"             "HCG4P7"             "HCG9"               "HCP5"               "HCP5B"              "HEATR1"             "HLA-A"             
# [105] "HLA-B"              "HLA-C"              "HLA-E"              "HLA-F"              "HLA-F-AS1"          "HLA-H"              "HLA-J"              "HLA-K"             
# [113] "HLA-L"              "HLA-S"              "HLA-T"              "HLA-U"              "HLA-V"              "HLA-W"              "HRCT1"              "HSPA1A"            
# [121] "IFITM4P"            "IGIP"               "IL20RA"             "IL34"               "INCENP"             "INO80D"             "KCNT1"              "KRT18P1"           
# [129] "LGALS8"             "LGALS8-AS1"         "LHX3"               "LINC00243"          "LINC00323"          "LINC00950"          "LINC00961"          "LINC01125"         
# [137] "LINC01493"          "LINC01515"          "LINC01556"          "LINC01623"          "LINCR-0001"         "LL21NC02-1C16.1"    "LTA"                "LY6G5B"            
# [145] "LY6G6C"             "LY6G6F"             "MCM3AP-AS1"         "METTL24"            "MFHAS1"             "MFSD1"              "MICB"               "MICD"              
# [153] "MICE"               "MIR6891"            "MOG"                "MRPS18B"            "MSH5"               "MSRA"               "MTMR14"             "MUC22"             
# [161] "MX1"                "MX2"                "NARS"               "NELFE"              "NLGN1"              "NPR2"               "NQO1"               "NRG2"              
# [169] "NUDT9"              "OR2H4P"             "OR2I1P"             "OR2J2"              "OXTR"               "P2RX1"              "PAIP1P1"            "PCBP3"             
# [177] "PCTP"               "PDE11A"             "PDF"                "PDPR"               "PGAP2"              "PLAC4"              "POU5F1"             "PPIL2"             
# [185] "PPP1R18"            "PROB1"              "PRRC2A"             "PSD2"               "PSORS1C1"           "PSORS1C2"           "PSORS1C3"           "RALYL"             
# [193] "RAP1B"              "RFPL3S"             "RGP1"               "RMDN2-AS1"          "RN7SKP202"          "RN7SL608P"          "RP1-149A16.17"      "RP1-309F20.4"      
# [201] "RP11-100K18.1"      "RP11-1017G21.5"     "RP11-112J3.16"      "RP11-179K3.2"       "RP11-261P9.4"       "RP11-313M3.1"       "RP11-314C9.1"       "RP11-314C9.2"      
# [209] "RP11-331F9.3"       "RP11-331F9.4"       "RP11-379F4.9"       "RP11-385F5.5"       "RP11-394B2.5"       "RP11-416H1.2"       "RP11-499E14.1"      "RP11-529K1.2"      
# [217] "RP11-62H7.2"        "RP11-676J12.6"      "RP11-707G18.1"      "RP11-91K8.5"        "RP13-726E6.2"       "RPL23AP1"           "RRH"                "RTCB"              
# [225] "S100B"              "SAPCD1"             "SEMA4C"             "SF3B3"              "SFTA2"              "SGK223"             "SKIV2L"             "SLC10A6"           
# [233] "SLC22A18AS"         "SLC23A1"            "SLC44A4"            "SLC4A9"             "SPAG8"              "SPATA24"            "SSPN"               "ST3GAL2"           
# [241] "STK19"              "STK19B"             "STX16"              "SUMO2P1"            "TCF19"              "TERF2"              "TESK1"              "TLN1"              
# [249] "TMEM100"            "TMEM108"            "TMEM173"            "TMEM8B"             "TNXA"               "TPM2"               "TRIM15"             "TRIM26"            
# [257] "TRIM27"             "TRIM31"             "TRIM31-AS1"         "TRIM39"             "TRPC2"              "U47924.6"           "UBE2L3"             "VARS2"             
# [265] "VPS4A"              "WASF1"              "WASF5P"             "WWP2"               "XXbac-BCX196D17.5"  "XXbac-BPG13B8.10"   "XXbac-BPG181B23.7"  "XXbac-BPG248L24.12"
# [273] "XXbac-BPG283O16.9"  "XXbac-BPG299F13.17" "ZBED9"              "ZBTB12"             "ZDHHC20P1"          "ZFP57"              "ZNF311"             "ZNF532"            
# [281] "ZSCAN12"            "ZSCAN23"           


######## GTEx FDR < 0.05 - Genomwide-significant loci
gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R.genomewideSignifLoci <- 
  gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R[!is.na(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci), ]
dim(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R.genomewideSignifLoci)
# [1] 1474   31

######## SAVE
save(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R.genomewideSignifLoci,
     file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R.genomewideSignifLoci.RData'))
write.csv(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R.genomewideSignifLoci,
          file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R.genomewideSignifLoci.csv'))

FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM <- unique(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.05_non.HLA.IL17R.genomewideSignifLoci$EnsDb.Hsapiens.v86.GeneSYM)
FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM <- FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM[order(FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM)]
length(FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM)
# [1] 11
FDR.05_non.HLA.IL17R.genomewideSignifLoci_GeneSYM
# [1]  [1] "COL4A3BP"      "ENC1"          "LINC01515"     "NARS"          "P2RX1"         "RN7SL608P"     "RP11-179K3.2"  "RP11-676J12.6" "RP11-91K8.5"   "TMEM108"       "ZNF532"       




######## Analyze Results FDR < 0.1

# Extract VGPairs with FDR < 0.1
signif.VGPair_hg38.FDR.1 <- 
  gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb[gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$GTEx.FDR.perVariant < 0.1, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.1)
# [1] 487504

# Extract VGPairs with FDR < 0.1 mapping to HLA locus
signif.VGPair_hg38.FDR.1_HLA <- 
  gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb[gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$GTEx.FDR.perVariant < 0.1 &
                                                                         gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci %in% 9, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.1_HLA)
# [1] 478075

# Extract VGPairs with FDR < 0.1 mapping to ILI17R locus
signif.VGPair_hg38.FDR.1_IL17R <- 
  gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb[gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$GTEx.FDR.perVariant < 0.1 &
                                                                         gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci %in% 22, ]$GTEx.VGPair
length(signif.VGPair_hg38.FDR.1_IL17R)
# [1] 1129

# Extract VGPairs with FDR < 0.1 mapping to non-HLA, non-ILI17R locus
signif.VGPair_hg38.FDR.1_non.HLA.IL17R <- setdiff(signif.VGPair_hg38.FDR.1, c(signif.VGPair_hg38.FDR.1_HLA, signif.VGPair_hg38.FDR.1_IL17R))
length(signif.VGPair_hg38.FDR.1_non.HLA.IL17R)
# [1] 1684


######## Extract significant results
# Extract Results for VGPairs with at least FDR < 0.1 in one tissue in HLA locus
gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_HLA <- 
  gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb[gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$GTEx.VGPair %in% signif.VGPair_hg38.FDR.1_HLA, ]
dim(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_HLA)
# [1] 2619856      31

# Extract Results for VGPairs with at least FDR < 0.1 in one tissue in IL17R locus
gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_IL17R <- 
  gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb[gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$GTEx.VGPair %in% signif.VGPair_hg38.FDR.1_IL17R, ]
dim(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_IL17R)
# [1] 7887   31

# Extract Results for VGPairs with at least FDR < 0.1 in one tissue in non-HLA, non-IL17R locus
gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R <- 
  gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb[gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb$GTEx.VGPair %in% signif.VGPair_hg38.FDR.1_non.HLA.IL17R, ]
dim(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R)
# [1] 60792    31

# Reorder groups by best FDR within group
gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R <- 
  as.data.frame(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R %>% group_by(GTEx.VGPair) %>% 
                  mutate(min.FDR = min(GTEx.FDR.perVariant, na.rm=T)) %>% 
                  arrange(min.FDR, GTEx.VGPair, GTEx.FDR.perVariant) %>%
                  select(-min.FDR))
dim(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R)
# [1] 60792    31


######## SAVE
save(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_HLA,
     file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_HLA.RData'))
save(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_IL17R,
     file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_IL17R.RData'))
save(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R,
     file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R.RData'))

write.csv(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_HLA,
          file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_HLA.csv'))
write.csv(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_IL17R,
          file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_IL17R.csv'))
write.csv(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R,
          file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R.csv'))


######## Explore Genes 
FDR.1_non.HLA.IL17R_GeneSYM <- unique(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R$EnsDb.Hsapiens.v86.GeneSYM)
FDR.1_non.HLA.IL17R_GeneSYM <- FDR.1_non.HLA.IL17R_GeneSYM[order(FDR.1_non.HLA.IL17R_GeneSYM)]
length(FDR.1_non.HLA.IL17R_GeneSYM)
# [1] 404
FDR.1_non.HLA.IL17R_GeneSYM
# [1] "AARS"               "ABCF1"              "AC007682.1"         "AC009229.5"         "AC009229.6"         "AC073326.3"         "AC074117.13"        "AC159540.1"        
# [9] "AC159540.14"        "ACKR4"              "ACTN2"              "ACTR1B"             "ADAM23"             "AF131215.2"         "AF131215.8"         "AF131215.9"        
# [17] "ALG1L13P"           "ANKFN1"             "ANKRD36"            "ANKRD36B"           "AP001469.9"         "AP001610.5"         "AP001619.2"         "APOM"              
# [25] "ARHGEF3"            "ARHGEF39"           "ART5"               "ATF6B"              "ATL2"               "ATP1B1P1"           "ATP5E"              "ATP6V1B2"          
# [33] "ATP6V1G2"           "BACE2"              "BAG6"               "BANK1"              "BX322557.10"        "C1QC"               "C2"                 "C4A"               
# [41] "C4B"                "C4orf36"            "C6orf15"            "C6orf25"            "C6orf47"            "C6orf48"            "CA9"                "CAV3"              
# [49] "CCDC107"            "CCHCR1"             "CD24"               "CDSN"               "CFB"                "CINP"               "CLDN23"             "CLEC18A"           
# [57] "CLIC1"              "CNNM3"              "COG4"               "COL18A1-AS1"        "COL4A3BP"           "COL5A1-AS1"         "COX5B"              "CPNE9"             
# [65] "CREB3"              "CSNK2B"             "CTA-276O3.4"        "CTA-398F10.2"       "CTB-131B5.2"        "CTC-329D1.2"        "CTD-2033A16.2"      "CTU1"              
# [73] "CXXC5"              "CYB5B"              "CYP1B1"             "CYP1B1-AS1"         "CYP21A1P"           "CYP21A2"            "CYSTM1"             "DDAH2"             
# [81] "DDIT4L"             "DDO"                "DDR1"               "DDR1-AS1"           "DDX19B"             "DDX39B-AS1"         "DENR"               "DEPDC5"            
# [89] "DHFRP2"             "DNAJB5-AS1"         "DNAJC18"            "DPCR1"              "ECSCR"              "ECT2"               "EDN3"               "EHMT2"             
# [97] "ENC1"               "ERC2"               "ERI1"               "ETF1"               "EXOSC6"             "FAHD2B"             "FAM178B"            "FAM221B"           
# [105] "FAM3B"              "FAM46A"             "FAM85B"             "FAM86B3P"           "FANCG"              "FKBPL"              "FLJ20021"           "FLOT1"             
# [113] "FUK"                "GABBR1"             "GALM"               "GARS"               "GBA2"               "GNE"                "GNL1"               "GPANK1"            
# [121] "GPAT2P2"            "GYS2"               "HBEGF"              "HCG15"              "HCG17"              "HCG18"              "HCG20"              "HCG21"             
# [129] "HCG22"              "HCG27"              "HCG4"               "HCG4B"              "HCG4P11"            "HCG4P3"             "HCG4P5"             "HCG4P7"            
# [137] "HCG9"               "HCP5"               "HCP5B"              "HEATR1"             "HINT2"              "HLA-A"              "HLA-B"              "HLA-C"             
# [145] "HLA-E"              "HLA-F"              "HLA-F-AS1"          "HLA-H"              "HLA-J"              "HLA-K"              "HLA-L"              "HLA-S"             
# [153] "HLA-T"              "HLA-U"              "HLA-V"              "HLA-W"              "HRCT1"              "HSPA1A"             "IDNK"               "IER3"              
# [161] "IFITM4P"            "IGIP"               "IL20RA"             "IL34"               "INCENP"             "INO80D"             "INPP4A"             "ITGB2-AS1"         
# [169] "KCNQ1OT1"           "KCNT1"              "KRT18P1"            "LGALS8"             "LGALS8-AS1"         "LHX3"               "LINC00243"          "LINC00323"         
# [177] "LINC00533"          "LINC00950"          "LINC00961"          "LINC01125"          "LINC01149"          "LINC01493"          "LINC01515"          "LINC01556"         
# [185] "LINC01623"          "LINCR-0001"         "LL21NC02-1C16.1"    "LMAN2L"             "LMCD1"              "LST1"               "LTA"                "LY6G5B"            
# [193] "LY6G6C"             "LY6G6D"             "LY6G6F"             "MATR3"              "MCM3AP-AS1"         "MDC1"               "METTL24"            "MFHAS1"            
# [201] "MFSD1"              "MICA"               "MICB"               "MICD"               "MICE"               "MIR6891"            "MOG"                "MRPS18B"           
# [209] "MSH5"               "MSRA"               "MTMR14"             "MUC22"              "MX1"                "MX2"                "NARS"               "NCR3"              
# [217] "NELFE"              "NEU1"               "NLGN1"              "NPR2"               "NQO1"               "NRG2"               "NRM"                "NRXN1"             
# [225] "NUDT9"              "OR13J1"             "OR2B4P"             "OR2H2"              "OR2H4P"             "OR2I1P"             "OR2J2"              "OR2S1P"            
# [233] "OR2U2P"             "ORC5"               "OXTR"               "P2RX1"              "PAIP1P1"            "PCBP3"              "PCTP"               "PDE11A"            
# [241] "PDF"                "PDPR"               "PDXDC2P"            "PGAP2"              "PHF24"              "PHLDA2"             "PLAC4"              "POU5F1"            
# [249] "PPIL2"              "PPP1R10"            "PPP1R11"            "PPP1R18"            "PPP1R3B"            "PROB1"              "PRRC2A"             "PRSS51"            
# [257] "PSD2"               "PSORS1C1"           "PSORS1C2"           "PSORS1C3"           "RALYL"              "RAP1B"              "RFPL3S"             "RGP1"              
# [265] "RMDN2-AS1"          "RN7SKP202"          "RN7SL608P"          "RNF39"              "RP1-149A16.17"      "RP1-309F20.4"       "RP1-45C12.1"        "RP1-79C4.4"        
# [273] "RP11-100K18.1"      "RP11-1017G21.5"     "RP11-10A14.5"       "RP11-112J3.16"      "RP11-115J16.2"      "RP11-115J16.3"      "RP11-179K3.2"       "RP11-182N22.9"     
# [281] "RP11-235E17.6"      "RP11-261P9.4"       "RP11-313M3.1"       "RP11-314C16.1"      "RP11-314C9.1"       "RP11-314C9.2"       "RP11-331F9.3"       "RP11-331F9.4"      
# [289] "RP11-353K11.1"      "RP11-375N15.2"      "RP11-379F4.9"       "RP11-385F5.5"       "RP11-392A14.8"      "RP11-392A14.9"      "RP11-394B2.5"       "RP11-416H1.2"      
# [297] "RP11-419C5.2"       "RP11-421P23.1"      "RP11-499E14.1"      "RP11-529K1.2"       "RP11-546K22.3"      "RP11-575L7.8"       "RP11-582E3.4"       "RP11-62H7.2"       
# [305] "RP11-676J12.6"      "RP11-707G18.1"      "RP11-82L18.2"       "RP11-91K8.5"        "RP11-981G7.3"       "RP11-981G7.6"       "RP13-726E6.2"       "RP4-580N22.2"      
# [313] "RPL17P35"           "RPL23AP1"           "RPL3P7"             "RPP21"              "RPS24P14"           "RRH"                "RTCB"               "RUSC2"             
# [321] "S100B"              "SAPCD1"             "SAPCD1-AS1"         "SEMA4C"             "SETD5"              "SF3B3"              "SFTA2"              "SGK223"            
# [329] "SHC3"               "SHISA3"             "SIT1"               "SKIV2L"             "SLC10A6"            "SLC22A18AS"         "SLC23A1"            "SLC31A1P1"         
# [337] "SLC44A4"            "SLC4A9"             "SMIM2-IT1"          "SPAG8"              "SPATA24"            "SSPN"               "ST13P20"            "ST3GAL2"           
# [345] "STK19"              "STK19B"             "STX16"              "SUMO2P1"            "TBC1D9B"            "TCF19"              "TERF2"              "TESK1"             
# [353] "TIMP3"              "TLN1"               "TMEM100"            "TMEM108"            "TMEM173"            "TMEM8B"             "TNF"                "TNXA"              
# [361] "TPM2"               "TRIM10"             "TRIM15"             "TRIM26"             "TRIM27"             "TRIM31"             "TRIM31-AS1"         "TRIM39"            
# [369] "TRPC2"              "TRPV3"              "U47924.6"           "UBD"                "UBE2L3"             "UNC13B"             "VAC14-AS1"          "VARS2"             
# [377] "VCP"                "VPS4A"              "VWA3B"              "VWA7"               "WASF1"              "WASF5P"             "WWP2"               "XXbac-BCX196D17.5" 
# [385] "XXbac-BPG13B8.10"   "XXbac-BPG181B23.7"  "XXbac-BPG248L24.12" "XXbac-BPG27H4.8"    "XXbac-BPG283O16.9"  "XXbac-BPG299F13.17" "XXbac-BPG308K3.5"   "YBX1P10"           
# [393] "YWHAQP5"            "ZAP70"              "ZBED9"              "ZBTB12"             "ZDHHC20P1"          "ZFP57"              "ZNF195"             "ZNF311"            
# [401] "ZNF532"             "ZNRD1ASP"           "ZSCAN12"            "ZSCAN23"           


######## GTEx FDR < 0.1 - Genomwide-significant loci
gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R.genomewideSignifLoci <- 
  gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R[!is.na(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci), ]
dim(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R.genomewideSignifLoci)
# [1] 3965   31

######## SAVE
save(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R.genomewideSignifLoci,
     file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R.genomewideSignifLoci.RData'))
write.csv(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R.genomewideSignifLoci,
          file=file.path(GTEx.dir, GTEx.eQTL.results.folder, 'gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R.genomewideSignifLoci.csv'))

FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM <- unique(gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R.genomewideSignifLoci$EnsDb.Hsapiens.v86.GeneSYM)
FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM <- FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM[order(FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM)]
length(FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM)
# [1] 15
FDR.1_non.HLA.IL17R.genomewideSignifLoci_GeneSYM
# [1] "ACKR4"         "COL4A3BP"      "ENC1"          "LINC01515"     "NARS"          "P2RX1"         "RN7SL608P"     "RP11-179K3.2"  "RP11-235E17.6" "RP11-676J12.6" "RP11-91K8.5"  
# [12] "RPL17P35"      "TMEM108"       "TRPV3"         "ZNF532"       





######## PLOT
library(ggplot2)
library(ggrepel)
library(RColorBrewer)
library(viridis)
library(dplyr)

ggploData <- gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R
nrow(ggploData)
# [1] 60792

# label
ggploData$GeneSYM_label <- ggploData$EnsDb.Hsapiens.v86.GeneSYM
ggploData[is.na(ggploData$GeneSYM_label), ]$GeneSYM_label <- ggploData[is.na(ggploData$GeneSYM_label), ]$GTEx.EnsemblID

stat <- as.data.frame(ggploData %>%
                        group_by(GeneSYM_label) %>%
                        mutate(min.GTEx.FDR.perVariant = min(GTEx.FDR.perVariant, na.rm=T)))
stat <- stat[stat$GTEx.FDR.perVariant == stat$min.GTEx.FDR.perVariant, ]
stat <- stat[stat$GTEx.FDR.perVariant < 0.1, ]

stat$GWAS.signif.loci <- NA
stat[is.na(stat$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci), ]$GWAS.signif.loci <- "GWAS Suggestive Loci & GTEx eQTL FDR < 0.1"
stat[!is.na(stat$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci) & stat$GTEx.FDR.perVariant < 0.1, ]$GWAS.signif.loci <- "GWAS Significant Loci & GTEx eQTL FDR < 0.1"
stat[!is.na(stat$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci) & stat$GTEx.FDR.perVariant < 0.05, ]$GWAS.signif.loci <- "GWAS Significant Loci & GTEx eQTL FDR < 0.05"

stat$GWAS.signif.loci <- factor(stat$GWAS.signif.loci,
                                levels=c("GWAS Significant Loci & GTEx eQTL FDR < 0.05", 
                                         "GWAS Significant Loci & GTEx eQTL FDR < 0.1", 
                                         "GWAS Suggestive Loci & GTEx eQTL FDR < 0.1"))

stat$GWAS.signif.loci.fontface <- NA
stat[is.na(stat$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci), ]$GWAS.signif.loci.fontface <- "plain"
stat[!is.na(stat$TCGA.Germline.GWAS.SNPlist.Annot.Figure.GenomewideSignificant.Loci), ]$GWAS.signif.loci.fontface <- "bold"

stat <- unique(stat[, c("GTEx.VGPair", "GeneSYM_label", "GTEx.tss_distance", "GTEx.FDR.perVariant", "GWAS.signif.loci", "GWAS.signif.loci.fontface")])

pdf(file.path(GTEx.dir, GTEx.eQTL.results.folder, "TSSDistance_gtex.eQTL.all.assoc_TCGA.Germline.GWAS.SNPlist.sugg.allTissues.annot.1000kb.FDR.1_non.HLA.IL17R_FINAL.pdf"),
    height=15, width=50)
ggplot(ggploData) +
  xlab("TSS distance") + ylab("GTEx eQTL -log10(FDR per variant)") +
  ggtitle("GTEx eQTL gene-variant associations") +
  geom_hline(aes(yintercept=-log10(0.1)), colour="dodgerblue2", linetype="dotted") +
  geom_hline(aes(yintercept=-log10(0.05)), colour="red2", linetype="dotdash") +
  geom_point(aes(x=GTEx.tss_distance, y=-log10(GTEx.FDR.perVariant), 
                 fill=-log10(TCGA.Germline.GWAS.SNPlist.SNP.MIN.PLINK.PVAL)), 
             alpha=0.95, size=4, pch=21, colour="white", stroke=0) +
  scale_fill_distiller("TCGA Germline-Immune\nGWAS SNP -log10(p-value)", type="seq", palette="Spectral") +
  geom_text_repel(data=stat, aes(x=GTEx.tss_distance, y=-log10(GTEx.FDR.perVariant), 
                                 label=GeneSYM_label, colour=GWAS.signif.loci, fontface=GWAS.signif.loci.fontface), 
                  size=4, segment.size = 0.1, show.legend = T) +
  scale_colour_manual("TCGA Germline-Immune GWAS Loci \nGTEx Variant-Gene eQTL", values=c("red2", "dodgerblue2", "black")) +
  theme(legend.position = "bottom", plot.title = element_text(size=24),
        axis.text = element_text(size=16, colour="black"), axis.title = element_text(size=20),
        legend.text = element_text(size=16, colour="black"), legend.title = element_text(size=16)) +
  guides(fill = guide_colourbar(barwidth = 20, barheight = 1, order=1), colour = guide_legend(order=2, ncol=1))
foo <- dev.off()  


