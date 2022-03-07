rm(list = ls())

#####################################################################
########## SET DIRECTORY ##########
#####################################################################

github.dir <- '/Users/rsayaman/Dropbox/MacBookPro BackUp/Documents/GitHub/TCGA_Germline_Immune_Response/Code/Immune_Traits'
setwd(github.dir)

#####################################################################
########## LOAD LIBRARIES ##########
#####################################################################

# install.packages("RColorBrewer")
# install.packages("gplots")

library(RColorBrewer)
library(gplots)


#####################################################################
########## LOAD DATA ##########
#####################################################################

load(file.path(github.dir, "Immune.pheno.139.FriendlyName.Cibersort.continuous_annot.RData"))
load(file.path(github.dir, "Immune.pheno.139.FriendlyName.Cibersort.continuous_values.RData"))

head(Immune.pheno.139.FriendlyName.Cibersort.continuous_values)
dim(Immune.pheno.139.FriendlyName.Cibersort.continuous_values)
# [1] 9769  139

head(Immune.pheno.139.FriendlyName.Cibersort.continuous_annot)
dim(Immune.pheno.139.FriendlyName.Cibersort.continuous_annot)
# [1] 139   6


#####################################################################
########## PEARSON CORRELATION ##########
#####################################################################

cor.pearson_Immune.pheno.139.FriendlyName.Cibersort.continuous_values <-
  cor(Immune.pheno.139.FriendlyName.Cibersort.continuous_values, use="pairwise.complete.obs", method="pearson")

dim(cor.pearson_Immune.pheno.139.FriendlyName.Cibersort.continuous_values)
# [1] 139 139

save(cor.pearson_Immune.pheno.139.FriendlyName.Cibersort.continuous_values,
     file=file.path(github.dir, "cor.pearson_Immune.pheno.139.FriendlyName.Cibersort.continuous_values.RData"))


#####################################################################
########## PEARSON CORRELATION MATRIX HEATMAP ##########
#####################################################################

# check
all(rownames(cor.pearson_Immune.pheno.139.FriendlyName.Cibersort.continuous_values) == rownames(Immune.pheno.139.FriendlyName.Cibersort.continuous_annot))
# [1] TRUE
all(colnames(cor.pearson_Immune.pheno.139.FriendlyName.Cibersort.continuous_values) == rownames(Immune.pheno.139.FriendlyName.Cibersort.continuous_annot))
# [1] TRUE

heatmapData <- cor.pearson_Immune.pheno.139.FriendlyName.Cibersort.continuous_values
rownames(heatmapData) <- Immune.pheno.139.FriendlyName.Cibersort.continuous_annot$FriendlyNameElement
colnames(heatmapData) <- Immune.pheno.139.FriendlyName.Cibersort.continuous_annot$FriendlyNameElement


####### Plot Heatmap & Annotate Categories

cat.colors_139 <- rep(NA, ncol(heatmapData))
names(colors_139) <- Immune.pheno.139.FriendlyName.Cibersort.continuous_annot$FriendlyNameCategory

cat.colors_139[names(cat.colors_139) %in% "Leukocyte Subset ES"] <- '#f0027f'
cat.colors_139[names(cat.colors_139) %in% "Leukocyte Subset (%)"] <- '#7570b3'
cat.colors_139[names(cat.colors_139) %in% "Overall Proportion"] <- '#d95f02'
cat.colors_139[names(cat.colors_139) %in% "Adaptive Receptor"] <- '#e6ab02'
cat.colors_139[names(cat.colors_139) %in% "Expression Signature"] <- '#1b9e77'
cat.colors_139[names(cat.colors_139) %in% "Attractor Metagene"] <- '#386cb0'

quartz()
hp.pheno.full.cat <- heatmap.2(as.matrix(heatmapData),
                           col=colorRampPalette(c("#053061", "#4E73BB", "white", "#d6656a", "#67001F"))(100),
                           # col=colorRampPalette(rev(brewer.pal(11, "RdBu")))(100),
                           scale="none", margins=c(40,40),
                           symbreaks=TRUE, key=TRUE, symkey=TRUE, keysize=1, key.title = "", 
                           key.xlab="Pearson Correlation\n Immune Traits",
                           density.info="none", trace="none",
                           cexRow = 2, cexCol = 2,
                           ColSideColors = cat.colors_139,
                           RowSideColors = cat.colors_139,
                           hclust=function(x) hclust(x,method="complete"),
                           distfun=function(x) as.dist(1-x))
pdf(file.path(github.dir, "Figures",
              "cor.pearson_Immune.pheno.139.FriendlyName.Cibersort.continuous_values_category.annot_hclust.complete.dist.1-cor.pdf"), height=40, width=40)
print(eval(hp.pheno.full.cat$call))
foo <- dev.off()


####### Plot Heatmap & Annotate Modules
mod.colors_139 <- rep(NA, ncol(heatmapData))
names(mod.colors_139) <- Immune.pheno.139.FriendlyName.Cibersort.continuous_annot$Module

mod.colors_139[names(mod.colors_139) %in% ""] <- 'gray90'
mod.colors_139[names(mod.colors_139) %in% "Lymphocyte Infiltration"] <- '#a6cee3'
mod.colors_139[names(mod.colors_139) %in% "Macrophage/Monocyte"] <- '#b2df8a'
mod.colors_139[names(mod.colors_139) %in% "IFN Response"] <- '#ffff99'
mod.colors_139[names(mod.colors_139) %in% "TGF-b Response"] <- '#cab2d6'
mod.colors_139[names(mod.colors_139) %in% "Cytotoxic"] <- '#fdbf6f'
mod.colors_139[names(mod.colors_139) %in% "Wound Healing"] <- '#fb9a99'


quartz()
hp.pheno.full.mod <- heatmap.2(as.matrix(heatmapData),
                           col=colorRampPalette(c("#053061", "#4E73BB", "white", "#d6656a", "#67001F"))(100),
                           # col=colorRampPalette(rev(brewer.pal(11, "RdBu")))(100),
                           scale="none", margins=c(40,40),
                           symbreaks=TRUE, key=TRUE, symkey=TRUE, keysize=1, key.title = "", 
                           key.xlab="Pearson Correlation\n Immune Traits",
                           density.info="none", trace="none",
                           cexRow = 2, cexCol = 2,
                           ColSideColors = mod.colors_139,
                           RowSideColors = mod.colors_139,
                           hclust=function(x) hclust(x,method="complete"),
                           distfun=function(x) as.dist(1-x))
pdf(file.path(github.dir, "Figures",
              "cor.pearson_Immune.pheno.139.FriendlyName.Cibersort.continuous_values_module.annot_hclust.complete.dist.1-cor.pdf"), height=40, width=40)
print(eval(hp.pheno.full.mod$call))
foo <- dev.off()


# Threshold at abs.cor >= 0.5
heatmapData_thr.abs.cor.0.5 <- heatmapData
heatmapData_thr.abs.cor.0.5[abs(heatmapData_thr.abs.cor.0.5) < 0.5] <- 0

heatmapData_thr.abs.cor.0.5 <- heatmapData_thr.abs.cor.0.5[rev(hp.pheno.full.mod$rowInd), hp.pheno.full.mod$colInd]

quartz()
hp.pheno.full.mod_thr.abs.cor.0.5 <- heatmap.2(as.matrix(heatmapData_thr.abs.cor.0.5),
                               dendrogram = "none", Rowv=F, Colv=F,
                               col=colorRampPalette(c("#053061", "#4E73BB", "white", "#d6656a", "#67001F"))(100),
                               # col=colorRampPalette(rev(brewer.pal(11, "RdBu")))(100),
                               scale="none", margins=c(40,40),
                               symbreaks=TRUE, key=TRUE, symkey=TRUE, keysize=1, key.title = "", 
                               key.xlab="Pearson Correlation\n Immune Traits",
                               density.info="none", trace="none",
                               cexRow = 2, cexCol = 2,
                               ColSideColors = mod.colors_139[hp.pheno.full.mod$colInd],
                               RowSideColors = mod.colors_139[rev(hp.pheno.full.mod$rowInd)])
pdf(file.path(github.dir, "Figures",
              "cor.pearson_Immune.pheno.139.FriendlyName.Cibersort.continuous_values_module.annot_thr.abs.cor.0.5.pdf"), height=40, width=40)
print(eval(hp.pheno.full.mod_thr.abs.cor.0.5$call))
foo <- dev.off()
