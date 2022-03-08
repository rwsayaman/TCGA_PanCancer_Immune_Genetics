rm(list = ls())

#####################################################################
########## SET DIRECTORY ##########
#####################################################################

github.dir <- '/Users/rsayaman/Dropbox/MacBookPro BackUp/Documents/GitHub/TCGA_Germline_Immune_Response/Code/GWAS'
setwd(github.dir)


#####################################################################
########## LOAD LIBRARIES ##########
#####################################################################

library(biomaRt)
library(snplist)
library(SNPlocs.Hsapiens.dbSNP144.GRCh37)
library(GenomicRanges)
library(dplyr)



#####################################################################
########## GET ALL GENES ##########
#####################################################################

# # Get the gene symbol that are mapped to an entrez gene identifiers
# mapped_genes <- mappedkeys(org.Hs.egSYMBOL)
# # Convert to a list
# genes.ls <- as.list(org.Hs.egSYMBOL[mapped_genes])
# genes <- unique(unlist(genes.ls))

grch37.mart <- useMart("ensembl", host="grch37.ensembl.org",
                   path="/biomart/martservice",
                   dataset="hsapiens_gene_ensembl")  # using ensembl database data
listAttributes(mart=grch37.mart)$name
mapping <- getBM(attributes=c('ensembl_gene_id','ensembl_transcript_id',
                              'external_gene_name',
                              'description',
                              'chromosome_name',
                              'start_position',
                              'end_position',
                              'strand','entrezgene_id'), mart = grch37.mart)


#####################################################################
########## MAP GENE INFO ##########
#####################################################################

dim(mapping)
# [1] 233005      9
genes <- mapping$external_gene_name[!is.na(mapping$external_gene_name)]
length(genes)
# [1] 233005
geneInfo <- getBioMartData(genes, biomart="ENSEMBL_MART_ENSEMBL",
                           host="grch37.ensembl.org",
                           path="/biomart/martservice",
                           dataset="hsapiens_gene_ensembl")
table(geneInfo$chr)
# 1   10   11   12   13   14   15   16   17   18   19    2   20   21   22    3    4    5    6    7    8    9   MT    X    Y 
# 3188 1405 1971 1525 1023 1362 1105 1164 1660  509 1837 2174  881  469  772 1949 1347 1404 1769 1602 1191 1302   37 1527  411


###############################################################################
########## SAVE WORKSPACE ##########
###############################################################################

# Workspace file name:
workspace.fileName = 'r_annotation_SNP'
save.image(file.path(github.dir, paste(workspace.fileName,'.RData', sep = "")))


###############################################################################
########## ANNOTATE SNPs ##########
###############################################################################

annotateSNP.fxn <- function(GWAS_dir, Results_folder, Results_file, FigName) {

res <- read.csv(file.path(GWAS_dir, Results_folder, paste0(Results_file, ".csv")), header = T, stringsAsFactors = F)
res$Position <- paste0(res$CHR, ":", res$BP)

locs <- GRanges(res$CHR, IRanges(res$BP, width=1))
snps <- SNPlocs.Hsapiens.dbSNP144.GRCh37

# RefSNP_id: RefSNP ID (aka "rs id"). Character vector with no NAs and no duplicates.
# alleles_as_ambig: A character vector with no NAs containing the alleles for each SNP represented by an IUPAC nucleotide ambiguity code. 
# See ?IUPAC_CODE_MAP in the Biostrings package for more information. The alleles are always reported with respect to the positive strand.
locs.df <- as.data.frame(snpsByOverlaps(snps, locs))
locs.df$Position <- paste0(locs.df$seqnames, ":", locs.df$pos)

res.df <- merge(res, locs.df, by.x="Position", by.y="Position", all=T)

snpInfo <- data.frame(chr=res.df$CHR,
                      pos=res.df$BP,
                      rsid=res.df$RefSNP_id,
                      stringsAsFactors=FALSE)
setSNPTable(snpInfo)
setGeneTable(geneInfo)

##########  Genes up and downstream of SNP: +/-50kb, +/-500kb, +/-1mb
geneset.50kb <- makeGeneSet(margin=50000)
geneset.500kb <- makeGeneSet(margin=500000)
geneset.1000kb <- makeGeneSet(margin=1000000)

geneset.50kb.df <- reshape2::melt(lapply(setNames(geneset.50kb, names(geneset.50kb)), function(x) unlist(strsplit(x, ', | |,'))))
geneset.50kb.rsID.df <- as.data.frame(geneset.50kb.df %>%
                                        group_by(value) %>%
                                        summarise(id = paste(L1, collapse = ",")))
rownames(geneset.50kb.rsID.df) <- geneset.50kb.rsID.df$value
colnames(geneset.50kb.rsID.df) <- c("RefSNP_id", "genes_50kb")

geneset.500kb.df <- reshape2::melt(lapply(setNames(geneset.500kb, names(geneset.500kb)), function(x) unlist(strsplit(x, ', | |,'))))
geneset.500kb.rsID.df <- as.data.frame(geneset.500kb.df %>%
                                         group_by(value) %>%
                                         summarise(id = paste(L1, collapse = ",")))
rownames(geneset.500kb.rsID.df) <- geneset.500kb.rsID.df$value
colnames(geneset.500kb.rsID.df) <- c("RefSNP_id", "genes_500kb")

geneset.1000kb.df <- reshape2::melt(lapply(setNames(geneset.1000kb, names(geneset.1000kb)), function(x) unlist(strsplit(x, ', | |,'))))
geneset.1000kb.rsID.df <- as.data.frame(geneset.1000kb.df %>%
                                          group_by(value) %>%
                                          summarise(id = paste(L1, collapse = ",")))
rownames(geneset.1000kb.rsID.df) <- geneset.1000kb.rsID.df$value
colnames(geneset.1000kb.rsID.df) <- c("RefSNP_id", "genes_1000kb")


res.df_gene.annot <- merge(res.df, geneset.50kb.rsID.df, by.x="RefSNP_id", by.y="RefSNP_id", all=T)
res.df_gene.annot <- merge(res.df_gene.annot, geneset.500kb.rsID.df, by.x="RefSNP_id", by.y="RefSNP_id", all=T)
res.df_gene.annot <- merge(res.df_gene.annot, geneset.1000kb.rsID.df, by.x="RefSNP_id", by.y="RefSNP_id", all=T)

res.df_gene.annot$Variant <- paste(res.df_gene.annot$CHR, res.df_gene.annot$BP, sep=":")
head(res.df_gene.annot)


##########  Add vep annotation
VEP.annot <- read.csv(file.path(github.dir, 'VEP_MS_improved.csv'),
                      header=T, stringsAsFactors = F, row.names = NULL)
dim(VEP.annot)
# [1] 2673    5
head(VEP.annot)

# use new annotations which concatenates IMPACT and SYMBOL when mapped to the same variant
VEP.annot$IMPACT <- NULL
VEP.annot$SYMBOL <- NULL
VEP.annot <- unique(VEP.annot)
dim(VEP.annot)
# [1] 1584    3
length(unique(VEP.annot$Variant))
# [1] 1584

rownames(VEP.annot) <- VEP.annot$Variant
colnames(VEP.annot) <- c("Variant", "VEP.annot.IMPACT", "VEP.annot.SYMBOL")

res.df_gene.annot_vep.annot <- merge(x=res.df_gene.annot, y=VEP.annot,
                                     by.x="Variant", by.y="Variant",
                                     all.x=T, all.y=F)


########## Save annotation
colnames(res.df_gene.annot_vep.annot)

# Reorder columns
res.df_FINAL <- res.df_gene.annot_vep.annot[, c("SNP", "RefSNP_id", "alleles_as_ambig", "CHR", "BP",
                           "A1", "A2", "Genotyped", "Rsq", "AvgCall", "MAF", "Stratified.Freq", 
                           "NCHROBS", "TEST", "NMISS", "BETA", "STAT", "P", "Significance", 
                           "genes_50kb", "genes_500kb", "genes_1000kb", "VEP.annot.IMPACT", "VEP.annot.SYMBOL")]

write.csv(res.df_FINAL, file.path(github.dir, Results_folder, paste0(Results_file, "_anno.csv")), row.names = F, col.names = T)

}

Results_folder <- 'GWAS.Results_Immune.33'
annotateSNP.fxn(GWAS_dir = github.dir, 
                Results_folder = Results_folder,
                Results_file = 'GWAS.IBD.ALL_R2.0.5_maf.0.005_P1.Sigs160.Bindea_aDC_n.sugg.12',
                FigName = "Sigs160.Bindea_aDC_n.sugg.12")
