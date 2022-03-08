#!/usr/bin/Rscript
rm(list = ls())


#####################################################################
########## SET DIRECTORY ##########
#####################################################################

github.dir <- "/Users/rsayaman/Dropbox/MacBookPro BackUp/Documents/GitHub/TCGA_Germline_Immune_Response/Code/Epigenomic_Analysis"
RoadmapEpigenomicsDB.dir <- '/Users/rsayaman/Dropbox/MacBookPro BackUp/Documents/GitHub/TCGA_Germline_Immune_Response/Code/Epigenomic_Analysis/Expanded18StateModel'


#####################################################################
########## LOAD LIBRARIES ##########
#####################################################################

library(GenomicRanges)
library(rtracklayer)
library(dplyr)
library(reshape2)
library(ggplot2)


#####################################################################
########## Transform GWAS Results to Genomic Ranges Object ##########
#####################################################################

######## Load and curate Genome-wide significant p < 5x10-8 and Suggestive p < 1x10-6 SNPs

res.sugg <- as.data.frame(read.csv(file.path(github.dir, 'Supplemental Table 4A.csv'), 
                                  header=T, row.names=NULL, stringsAsFactors = F, fileEncoding="latin1"))
dim(res.sugg)
# [1] 1794   33

# Extract relevant columns
colnames(res.sugg)
SNPlist.raw <- unique(res.sugg[, c('PLINK.SNP', 'PLINK.CHR', 'PLINK.BP', 'Annot.SNPlocs.RefSNP_id', 'PLINK.P', 
                                   'Sayaman.InternalLabel', 'Sayaman.FriendlyLabel',
                                   'Annot.Figure.GenomewideSignificant.SNP', 'Annot.Figure.GenomewideSignificant.Loci')])
dim(SNPlist.raw)
# [1] 1794    9

# Calculate minimum GWAS P value
SNPlist <- as.data.frame(SNPlist.raw %>% 
                           group_by(PLINK.SNP, Annot.SNPlocs.RefSNP_id, PLINK.CHR, PLINK.BP, Annot.Figure.GenomewideSignificant.Loci) %>%
                           mutate(SNP.MIN.PLINK.PVAL = min(PLINK.P, na.rm=T)))
dim(SNPlist)
# [1] 1794   10

# For SNPs associated with multiple immune traits, retain most significant result
SNPlist <- SNPlist[SNPlist$PLINK.P == SNPlist$SNP.MIN.PLINK.PVAL, ]
dim(SNPlist)
# [1] 1587   10

# Remove GWAS P
SNPlist$PLINK.P <- NULL


########  Transform to Genomic Ranges object

SNPlist$chr <- paste0('chr', SNPlist$PLINK.CHR)
SNPlist$start <- SNPlist$PLINK.BP
SNPlist$end <- SNPlist$PLINK.BP

SNPlist.Granges <- makeGRangesFromDataFrame(SNPlist,
                         keep.extra.columns=TRUE,
                         ignore.strand=TRUE,
                         seqnames.field="chr",
                         start.field="start",
                         end.field="end",
                         starts.in.df.are.0based=FALSE)


#####################################################################
########## Map Roadmap Epigenomics Project 18-state model ##########
#####################################################################

# Download and unzip: all.mnemonics.bedFiles.tgz
# https://egg2.wustl.edu/roadmap/web_portal/chr_state_learning.html#exp_18state

bed.files <- dir(file.path(RoadmapEpigenomicsDB.dir, 'all.mnemonics.bedFiles'))
length(bed.files)
# [1] 98
epigenomes <- gsub("_mnemonics.bed.gz", "", bed.files)


######## NOTE: mnemonics.bed is start 0-based
# ARCHIVE of all mnemonics.bed files
# Tab delimited 4 columns
# chromosome, start (0-based), stop (1-based), state_label_mnemonic for that region

raw.bed <- read.table(file.path(RoadmapEpigenomicsDB.dir, 'test', 'E003_18_core_K27ac_mnemonics.bed.gz'),
                      header=F, row.names = NULL, stringsAsFactors = F)

head(raw.bed)
# V1     V2     V3          V4
# 1 chr10      0  94400    18_Quies
# 2 chr10  94400 112000      13_Het
# 3 chr10 112000 117200    18_Quies
# 4 chr10 117200 119200 17_ReprPCWk
# 5 chr10 119200 119400   16_ReprPC
# 6 chr10 119400 120200   14_TssBiv
# Note raw bed file start is 0-based
rm(raw.bed)


########  NOTE: import of mnemonics.bed auto converts to start 1-based
# GRanges object 4 columns
# chromosome, start (1-based), stop (1-based), state_label_mnemonic for that region

bed <- import(file.path(RoadmapEpigenomicsDB.dir, 'all.mnemonics.bedFiles', bed.files[1]), format="bed")
head(bed)
# GRanges object with 6 ranges and 1 metadata column:
#   seqnames        ranges strand |        name
# <Rle>     <IRanges>  <Rle> | <character>
# [1]    chr10       1-94400      * |    18_Quies
# [2]    chr10  94401-112000      * |      13_Het
# [3]    chr10 112001-117200      * |    18_Quies
# [4]    chr10 117201-119200      * | 17_ReprPCWk
# [5]    chr10 119201-119400      * |   16_ReprPC
# [6]    chr10 119401-120200      * |   14_TssBiv
# -------
#   seqinfo: 25 sequences from an unspecified genome; no seqlengths
# NOTE rtracklayer automatically converts to start 1-based 
rm(bed)


########  Overlap GWAS SNPs with 18-state epigenomic model
overlap.snp.epigenome.ls <- NA
# i=1
for (i in 1: length(bed.files)) {
  
  # import mnemonic bed files
  bed <- import(file.path(RoadmapEpigenomicsDB.dir, 'all.mnemonics.bedFiles', bed.files[i]), format="bed")
  bed$epigenome <- epigenomes[i]
  
  # overlap SNPs with 18-state epigenomic model
  overlap.snp.epigenome <- as.data.frame(mergeByOverlaps(bed, SNPlist.Granges))
  overlap.snp.epigenome.ls <- rbind.data.frame(overlap.snp.epigenome.ls, overlap.snp.epigenome)
}
head(overlap.snp.epigenome.ls)
overlap.snp.epigenome.ls <- overlap.snp.epigenome.ls[-1, ]
head(overlap.snp.epigenome.ls)

dim(overlap.snp.epigenome.ls)
# [1] 155526     32
# write.csv(overlap.snp.epigenome.ls, file.path(github.dir, 'overlap.sugg.signif.snp.epigenome.ls.csv'), row.names=F, col.names=T)

length(unique(overlap.snp.epigenome.ls$SNPlist.Granges.PLINK.SNP))
# [1] 1587


#####################################################################
########## Plot GWAS SNP 18-state epigenomic model ##########
#####################################################################

# Check
overlap.snp.epigenome.ls.summary <- overlap.snp.epigenome.ls %>% group_by(SNPlist.Granges.PLINK.SNP, bed.epigenome, bed.name) %>%
  summarize(count=n())
head(overlap.snp.epigenome.ls.summary)
max(overlap.snp.epigenome.ls.summary$count)
# [1] 1


##########  Assign epigenome mnemonic colors

# Import 18-state color scheme annotation file
colors <- read.csv(file.path(RoadmapEpigenomicsDB.dir, 'FigureColors.csv'), header=T, stringsAsFactors = F)
colors$hex <- sapply(strsplit(colors$COLOR.CODE, split=","), function(x) paste(as.hexmode(as.numeric(x)), collapse = ''))
mnemonic.colors <- paste0("#", colors$hex)
names(mnemonic.colors) <- paste(colors$STATE.NO, colors$MNEMONIC, sep="_")

overlap.snp.epigenome.ls$epigenome.mnemonic.colors <- mnemonic.colors[overlap.snp.epigenome.ls$bed.name]
head(overlap.snp.epigenome.ls)


########## Define ggplot data
ggplotData <- overlap.snp.epigenome.ls
head(ggplotData)

# Factor mnemonic states
ggplotData$name <- factor(ggplotData$name, levels=names(mnemonic.colors))

# Factor SNPs by CHR and BP 
ggplotData$SNPlist.Granges.PLINK.SNP <- factor(ggplotData$SNPlist.Granges.PLINK.SNP,
                                               levels=unique(ggplotData[order(ggplotData$SNPlist.Granges.seqnames,
                                                                       ggplotData$SNPlist.Granges.start), ]$SNPlist.Granges.PLINK.SNP))

# Create and factor SNP label by CHR and BP
ggplotData$SNP.label <- paste(as.character(ggplotData$Annot.SNPlocs.RefSNP_id), "|",
                              as.character(ggplotData$PLINK.SNP))
length(which(is.na(as.character(ggplotData$Annot.SNPlocs.RefSNP_id)) == T))
# [1] 79870
ggplotData[is.na(as.character(ggplotData$Annot.SNPlocs.RefSNP_id)), ]$SNP.label <- ggplotData[is.na(as.character(ggplotData$Annot.SNPlocs.RefSNP_id)), ]$PLINK.SNP
ggplotData$SNP.label <- factor(ggplotData$SNP.label,
                               levels=unique(ggplotData[order(ggplotData$SNPlist.Granges.seqnames,
                                                              ggplotData$SNPlist.Granges.start), ]$SNP.label))


##########  Import epigenome source key
epigenome.source.df <- read.csv(file.path(github.dir, 'Roadmap.metadata.qc.jul2013.csv'), header=T, stringsAsFactors = F)
epigenome.source <- epigenome.source.df[, c("Epigenome.ID..EID.", "ORDER", "Epigenome.Mnemonic", "Standardized.Epigenome.name")]
colnames(epigenome.source) <- gsub("Epigenome.ID..EID.", "Epigenome.ID", colnames(epigenome.source))

epigenome.source$Label <- paste(epigenome.source$Epigenome.ID, "|",
                                epigenome.source$Standardized.Epigenome.name)
rownames(epigenome.source) <- epigenome.source$Epigenome.ID
head(epigenome.source)

# Annotate ggplot data
head(ggplotData)
ggplotData$Epigenome.ID <- sapply(strsplit(as.character(ggplotData$epigenome), split="_"), function(x) x[1])
ggplotData$Epigenome.Label <- epigenome.source[ggplotData$Epigenome.ID, ]$Label
unique(ggplotData$Epigenome.Label)

ggplotData$Epigenome.Label <- gsub("\xca", " ", ggplotData$Epigenome.Label)
ggplotData$Epigenome.Label <- gsub("_", " ", ggplotData$Epigenome.Label)
ggplotData$Order <- epigenome.source[ggplotData$Epigenome.ID, ]$ORDER
head(ggplotData)

# Factor by source key ID order
ggplotData$Epigenome.Label <- factor(ggplotData$Epigenome.Label,
                           levels=unique(ggplotData[order(ggplotData$Order), ]$Epigenome.Label))
levels(ggplotData$Epigenome.Label)
# [1] "E017 | IMR90 fetal lung fibroblasts Cell Line"                        
# [2] "E008 | H9 Cells"                                                      
# [3] "E015 | HUES6 Cells"                                                   
# [4] "E014 | HUES48 Cells"                                                  
# [5] "E016 | HUES64 Cells"                                                  
# [6] "E003 | H1 Cells"                                                      
# [7] "E020 | iPS-20b Cells"                                                 
# [8] "E019 | iPS-18 Cells"                                                  
# [9] "E021 | iPS DF 6.9 Cells"                                              
# [10] "E022 | iPS DF 19.11 Cells"                                            
# [11] "E007 | H1 Derived Neuronal Progenitor Cultured Cells"                 
# [12] "E013 | hESC Derived CD56+ Mesoderm Cultured Cells"                    
# [13] "E012 | hESC Derived CD56+ Ectoderm Cultured Cells"                    
# [14] "E011 | hESC Derived CD184+ Endoderm Cultured Cells"                   
# [15] "E004 | H1 BMP4 Derived Mesendoderm Cultured Cells"                    
# [16] "E005 | H1 BMP4 Derived Trophoblast Cultured Cells"                    
# [17] "E006 | H1 Derived Mesenchymal Stem Cells"                             
# [18] "E062 | Primary mononuclear cells from peripheral blood"               
# [19] "E034 | Primary T cells from peripheral blood"                         
# [20] "E045 | Primary T cells effector/memory enriched from peripheral blood"
# [21] "E044 | Primary T regulatory cells from peripheral blood"              
# [22] "E043 | Primary T helper cells from peripheral blood"                  
# [23] "E039 | Primary T helper naive cells from peripheral blood"            
# [24] "E041 | Primary T helper cells PMA-I stimulated"                       
# [25] "E042 | Primary T helper 17 cells PMA-I stimulated"                    
# [26] "E040 | Primary T helper memory cells from peripheral blood 1"         
# [27] "E037 | Primary T helper memory cells from peripheral blood 2"         
# [28] "E048 | Primary T CD8+ memory cells from peripheral blood"             
# [29] "E038 | Primary T helper naive cells from peripheral blood"            
# [30] "E047 | Primary T CD8+ naive cells from peripheral blood"              
# [31] "E029 | Primary monocytes from peripheral blood"                       
# [32] "E050 | Primary hematopoietic stem cells G-CSF-mobilized Female"       
# [33] "E032 | Primary B cells from peripheral blood"                         
# [34] "E046 | Primary Natural Killer cells from peripheral blood"            
# [35] "E026 | Bone Marrow Derived Cultured Mesenchymal Stem Cells"           
# [36] "E049 | Mesenchymal Stem Cell Derived Chondrocyte Cultured Cells"      
# [37] "E055 | Foreskin Fibroblast Primary Cells skin01"                      
# [38] "E056 | Foreskin Fibroblast Primary Cells skin02"                      
# [39] "E059 | Foreskin Melanocyte Primary Cells skin01"                      
# [40] "E061 | Foreskin Melanocyte Primary Cells skin03"                      
# [41] "E058 | Foreskin Keratinocyte Primary Cells skin03"                    
# [42] "E112 | Thymus"                                                        
# [43] "E093 | Fetal Thymus"                                                  
# [44] "E071 | Brain Hippocampus Middle"                                      
# [45] "E074 | Brain Substantia Nigra"                                        
# [46] "E068 | Brain Anterior Caudate"                                        
# [47] "E069 | Brain Cingulate Gyrus"                                         
# [48] "E072 | Brain Inferior Temporal Lobe"                                  
# [49] "E067 | Brain Angular Gyrus"                                           
# [50] "E073 | Brain Dorsolateral Prefrontal Cortex"                          
# [51] "E063 | Adipose Nuclei"                                                
# [52] "E100 | Psoas Muscle"                                                  
# [53] "E108 | Skeletal Muscle Female"                                        
# [54] "E089 | Fetal Muscle Trunk"                                            
# [55] "E090 | Fetal Muscle Leg"                                              
# [56] "E104 | Right Atrium"                                                  
# [57] "E095 | Left Ventricle"                                                
# [58] "E105 | Right Ventricle"                                               
# [59] "E065 | Aorta"                                                         
# [60] "E078 | Duodenum Smooth Muscle"                                        
# [61] "E076 | Colon Smooth Muscle"                                           
# [62] "E103 | Rectal Smooth Muscle"                                          
# [63] "E111 | Stomach Smooth Muscle"                                         
# [64] "E092 | Fetal Stomach"                                                 
# [65] "E085 | Fetal Intestine Small"                                         
# [66] "E084 | Fetal Intestine Large"                                         
# [67] "E109 | Small Intestine"                                               
# [68] "E106 | Sigmoid Colon"                                                 
# [69] "E075 | Colonic Mucosa"                                                
# [70] "E101 | Rectal Mucosa Donor 29"                                        
# [71] "E102 | Rectal Mucosa Donor 31"                                        
# [72] "E079 | Esophagus"                                                     
# [73] "E094 | Gastric"                                                       
# [74] "E099 | Placenta Amnion"                                               
# [75] "E097 | Ovary"                                                         
# [76] "E087 | Pancreatic Islets"                                             
# [77] "E080 | Fetal Adrenal Gland"                                           
# [78] "E091 | Placenta"                                                      
# [79] "E066 | Liver"                                                         
# [80] "E098 | Pancreas"                                                      
# [81] "E096 | Lung"                                                          
# [82] "E113 | Spleen"                                                        
# [83] "E114 | A549 EtOH 0.02pct Lung Carcinoma Cell Line"                    
# [84] "E115 | Dnd41 TCell Leukemia Cell Line"                                
# [85] "E116 | GM12878 Lymphoblastoid Cells"                                  
# [86] "E117 | HeLa-S3 Cervical Carcinoma Cell Line"                          
# [87] "E118 | HepG2 Hepatocellular Carcinoma Cell Line"                      
# [88] "E119 | HMEC Mammary Epithelial Primary Cells"                         
# [89] "E120 | HSMM Skeletal Muscle Myoblasts Cells"                          
# [90] "E121 | HSMM cell derived Skeletal Muscle Myotubes Cells"              
# [91] "E122 | HUVEC Umbilical Vein Endothelial Primary Cells"                
# [92] "E123 | K562 Leukemia Cells"                                           
# [93] "E124 | Monocytes-CD14+ RO01746 Primary Cells"                         
# [94] "E125 | NH-A Astrocytes Primary Cells"                                 
# [95] "E126 | NHDF-Ad Adult Dermal Fibroblast Primary Cells"                 
# [96] "E127 | NHEK-Epidermal Keratinocyte Primary Cells"                     
# [97] "E128 | NHLF Lung Fibroblast Primary Cells"                            
# [98] "E129 | Osteoblast Primary Cells" 

# Create factored chr column
ggplotData$CHR <- as.numeric(gsub("chr", "", ggplotData$bed.seqnames))
table(ggplotData$CHR)
ggplotData$CHR <- factor(ggplotData$CHR, levels=1:22)


##### Create epigenome matrix: SNPs as rows, epigenomes as columns, epigenetic states as values 
epigenome.matrix <- ggplotData %>% reshape2::dcast(SNP.label~Epigenome.Label, value.var="name")
head(epigenome.matrix)
write.csv(epigenome.matrix, file.path(RoadmapEpigenomicsDB.dir, 'Table4 NIH Roadmap Epigenomics.csv'), row.names=F, col.names=T)


##### Annotate epigenome matrix with genome-wide significant loci
gw.loci.annot <- unique(ggplotData[, c("SNP.label", "SNPlist.Granges.PLINK.CHR", "SNPlist.Granges.PLINK.BP", 
                                       "SNPlist.Granges.PLINK.SNP", "SNPlist.Granges.Annot.SNPlocs.RefSNP_id",
                                       "Annot.Figure.GenomewideSignificant.Loci")])
colnames(gw.loci.annot) <- gsub("SNPlist.Granges.", "", colnames(gw.loci.annot))
head(gw.loci.annot)

epigenome.matrix.annot <- merge(gw.loci.annot, epigenome.matrix, by.x="SNP.label", by.y="SNP.label", all=T)
write.csv(epigenome.matrix.annot, file.path(RoadmapEpigenomicsDB.dir, 'Table4 NIH Roadmap Epigenomics Annotation.csv'), row.names=F, col.names=T)



##### ORDER Epigenomes
# Save epigenome labels
epigenome.labels <- unique(ggplotData$Epigenome.Label)
write.csv(epigenome.labels, file.path(RoadmapEpigenomicsDB.dir, 'Table4 NIH Roadmap Epigenomics Annotation - Epigenome Labels.csv'), row.names=F, col.names=T)

# Manually curate and order epigenome labels: Group by source and immune-relatedness
# ordered in excel, import
epigenome.labels.ordered <- read.csv(file.path(RoadmapEpigenomicsDB.dir, 'Table4 NIH Roadmap Epigenomics Annotation - Epigenome Labels Ordered.csv'), header=T, stringsAsFactors = F)
epigenome.labels.ordered


##### ORDER Epigenome matrix
head(epigenome.matrix.annot)
epigenome.matrix.annot.ordered <- epigenome.matrix.annot[, c("SNP.label", "PLINK.CHR", "PLINK.BP", 
                                                           "PLINK.SNP", "Annot.SNPlocs.RefSNP_id", "Annot.Figure.GenomewideSignificant.Loci",
                                                           epigenome.labels.ordered$x)]
dim(epigenome.matrix.annot.ordered)
# [1] 1587  104
write.csv(epigenome.matrix.annot.ordered, file.path(RoadmapEpigenomicsDB.dir, 'Table4 NIH Roadmap Epigenomics Annotation Ordered.csv'), row.names=F, col.names=T)


#####  Annotate significance based on best p-value
str(ggplotData)
ggplotData$SNP.label2 <- as.character(ggplotData$SNP.label)
ggplotData[ggplotData$SNP.MIN.PLINK.PVAL < 5E-8, ]$SNP.label2 <- paste("*", ggplotData[ggplotData$SNP.MIN.PLINK.PVAL < 5E-8, ]$SNP.label2)
head(ggplotData)

ggplotData$SNP.label2 <- factor(ggplotData$SNP.label2,
                               levels=unique(ggplotData[order(ggplotData$SNPlist.Granges.seqnames,
                                                              ggplotData$SNPlist.Granges.start), ]$SNP.label2))


#### Plot with Annotation and ORDERED Epigenome

# Factor epigenome label using manually-curated ordered and grouped labels based on source and immune-relatedness
ggplotData$Epigenome.Label <- factor(as.character(ggplotData$Epigenome.Label),
                                     levels=rev(epigenome.labels.ordered$x))

pdf(file.path(RoadmapEpigenomicsDB.dir, 'Figures', 'overlap.sugg.signif.snp.loci.epigenome.ls.annot.ordered_GWsignif.pdf'), width=35, height=11)

# Chr 1:7 excluding HLA region (GenomewideSignificant.Loci 9)
ggplot(ggplotData[! ggplotData$SNPlist.Granges.Annot.Figure.GenomewideSignificant.Loci %in% "9" & 
                    as.character(ggplotData$bed.seqnames) %in% paste0('chr', c(1:7)), ]) +
  geom_tile(aes(x=SNP.label2, y=Epigenome.Label, fill=name)) +
  scale_fill_manual("State", values=mnemonic.colors) +
  ylab("Epigenome") + xlab("SNPs") + ggtitle("Chromosome") +
  facet_grid(.~CHR, scales="free_x", space="free_x") +
  theme(legend.position = "right", plot.title = element_text(size=30), strip.text = element_text(size=30, colour="black"),
        axis.text.x=element_text(angle=90, hjust=1, size=6, colour="black"), 
        axis.text.y=element_text(colour="black", size=6), axis.title=element_text(colour="black", size=30), 
        strip.background = element_rect(colour="white"),
        legend.text=element_text(colour="black", size=26), legend.title=element_text(colour="black", size=30))

# Chr 8:22 excluding HLA region (GenomewideSignificant.Loci 9)
ggplot(ggplotData[! ggplotData$SNPlist.Granges.Annot.Figure.GenomewideSignificant.Loci %in% "9" & 
                    as.character(ggplotData$bed.seqnames) %in% paste0('chr', 8:22), ]) +
  geom_tile(aes(x=SNP.label2, y=Epigenome.Label, fill=name)) +
  scale_fill_manual("State", values=mnemonic.colors) +
  ylab("Epigenome") + xlab("SNPs") + ggtitle("Chromosome") +
  facet_grid(.~CHR, scales="free_x", space="free_x") +
  theme(legend.position = "right", plot.title = element_text(size=30), strip.text = element_text(size=30, colour="black"),
        axis.text.x=element_text(angle=90, hjust=1, size=6, colour="black"), 
        axis.text.y=element_text(colour="black", size=6), axis.title=element_text(colour="black", size=30), 
        strip.background = element_rect(colour="white"),
        legend.text=element_text(colour="black", size=26), legend.title=element_text(colour="black", size=30))

# Chr 6 HLA region (GenomewideSignificant.Loci 9)
ggplot(ggplotData[ggplotData$SNPlist.Granges.Annot.Figure.GenomewideSignificant.Loci %in% "9", ]) +
  geom_tile(aes(x=SNP.label2, y=Epigenome.Label, fill=name)) +
  scale_fill_manual("State", values=mnemonic.colors) +
  ylab("Epigenome") + xlab("SNPs") + ggtitle("Chromosome") +
  facet_grid(.~CHR, scales="free_x", space="free_x") +
  theme(legend.position = "right", plot.title = element_text(size=30), strip.text = element_text(size=30, colour="black"),
        axis.text.x=element_text(angle=90, hjust=1, size=6, colour="black"), 
        axis.text.y=element_text(colour="black", size=6), axis.title=element_text(colour="black", size=30), 
        strip.background = element_rect(colour="white"),
        legend.text=element_text(colour="black", size=26), legend.title=element_text(colour="black", size=30))

foo <- dev.off()
