#!/usr/bin/Rscript
rm(list = ls())

gwas_dir <- '/zivlab/data2/rsayaman/tcga_legacy/TCGA_Germline_SevenBridgesDownload/RawFiles_birdseed_ALL_n11669/ZivLab.whitelist.10946_FINAL/ZivLab.whitelist.10128_pam.pca.123.k.4_unique.indv/GWAS'
hrc_dir <- '/zivlab/data2/rsayaman/tcga_legacy/TCGA_Germline_SevenBridgesDownload/RawFiles_birdseed_ALL_n11669/ZivLab.whitelist.10946_FINAL/ZivLab.whitelist.10128_pam.pca.123.k.4_unique.indv/HRC'

pheno.n=1
# chr=1

#####################################################################
########## Set Parameters ##########
#####################################################################

immune.pheno.names = 'Immune.phenotype.33.Set1.GWAS.txt'
freq.group = 'TCGA.IBD.ALL'
gwas.group = 'GWAS.IBD.ALL'
immune.pheno.result = 'GWAS.IBD.ALL_pheno.Immune'
immune.pheno.dir = 'GWAS.Results_Immune.33'

maf.cutoff = 0.005
sig = 5e-8 # significant threshold line
sugg = 1e-6 # suggestive threshold line


#####################################################################
########## LOAD LIBRARIES ##########
#####################################################################

library(readr)
library(ggrepel)
library(ggplot2)
library(dplyr)
library(RColorBrewer)
library(snpStats)
library(grid)
library(gridExtra)
library(gtable)
library(gridBase)


#####################################################################
########## FUNCTION: Manhattan Plot ##########
#####################################################################

# Adapted from code by Pagé Goddard
# https://github.com/pcgoddard/Burchardlab_Tutorials/wiki/GGplot2-Manhattan-Plot-Function

# Define colors
blues.n <- c("#5D82BB", "#3B64A5", "#1E4F9E", "#103B7E", "#082B64") # method 2

gg.manhattan.mod <- function(df, threshold, hlight, col, ylims, title, subtitle){
  # format df
  df.tmp <- df %>% 
    
    # Compute chromosome size
    group_by(CHR) %>% 
    summarise(chr_len=max(BP)) %>% 
    
    # Calculate cumulative position of each chromosome
    mutate(tot=cumsum(chr_len)-chr_len) %>%
    dplyr::select(-chr_len) %>%
    
    # Add this info to the initial dataset
    left_join(df, ., by=c("CHR"="CHR")) %>%
    
    # Add a cumulative position of each SNP
    arrange(CHR, BP) %>%
    mutate( BPcum=BP+tot) %>%
    
    # Add highlight and annotation information
    mutate( is_highlight=ifelse(SNP %in% hlight, "yes", "no")) %>%
    mutate( is_annotate=ifelse(P < threshold, "yes", "no"))
  
  # get chromosome center positions for x-axis
  axisdf <- df.tmp %>% group_by(CHR) %>% summarize(center=( max(BPcum) + min(BPcum) ) / 2 )
  
  mht.plot <- ggplot(df.tmp, aes(x=BPcum, y=-log10(P))) +
    
    # add genome-wide sig and sugg lines
    geom_hline(yintercept = -log10(sig), colour="red3", size=0.5) +
    geom_hline(yintercept = -log10(sugg), linetype="longdash", colour="gray10", size=0.5) +
    geom_hline(yintercept = ylims[1], colour="black", linetype="solid", size=0.75) +
    geom_hline(yintercept = ylims[2], colour="black", linetype="solid", size=0.75) +
    
    # Show all points
    geom_point(aes(color=as.factor(CHR)), alpha=0.8, size=3) +
    scale_color_manual(values = rep(col, 22 )) +
    
    # custom X axis:
    scale_x_continuous( label = axisdf$CHR, breaks= axisdf$center ) +
    scale_y_continuous(expand = c(0, 0), limits = ylims, 
                       breaks = unique(c(seq(ylims[1], ylims[2], by=2), ylims[2])),
                       labels = unique(c(seq(ylims[1], ylims[2], by=2), ylims[2]))) + # expand=c(0,0)removes space between plot area and x axis 
    
    # add plot and axis titles
    labs(title=title, subtitle=subtitle, x = "\nChromosome", y = "-log10(P)\n") +
    
    # Add highlighted points
    #geom_point(data=subset(df.tmp, is_highlight=="yes"), color="orange", size=2) +
    
    # Add label using ggrepel to avoid overlapping
    geom_label_repel(data=df.tmp[df.tmp$is_annotate=="yes",], aes(label=as.factor(SNP), alpha=0.7), size=5, force=1.3) +
    
    # Custom the theme:
    theme_bw() +
    theme( 
      legend.position="none",
      panel.border = element_blank(),
      panel.grid.major.y = element_line(colour="gray75", size=0.5),
      panel.grid.minor.y = element_blank(),
      panel.grid.major.x = element_blank(),
      panel.grid.minor.x = element_blank(),
      axis.text.x = element_text(colour="black", size=36, angle=90, hjust = 1, family="Arial"),
      axis.text.y = element_text(colour="black", size=36, family="Arial"),
      axis.title = element_text(colour="black", size=40, family="Arial"),
      plot.title = element_text(colour="black", size=40, hjust = 0.5, face="bold", family="Arial"),
      plot.subtitle = element_text(colour="black", size=34, hjust = 0.5, face="italic", family="Arial"),
      plot.margin = margin(t=2.5, r=2.5, b=0, l=2.5, "mm")
    )
  return(mht.plot)
}  


#####################################################################
########## FUNCTION: QQ Plot ##########
#####################################################################

qq.chisq.mod <- function (x, df = 1, x.max, main = "QQ plot", sub, 
                          xlab = paste0("Expected", "\nExpected distribution: chi-squared (", df, "df)"), ylab = "Observed", 
                          conc = c(0.025, 0.975), overdisp = FALSE, trim = 0.5, slope.one = FALSE, 
                          slope.lambda = FALSE, pvals = FALSE, thin = c(0.25, 50), 
                          oor.pch = 24, col.shade = "gray", ...) 
{
  shade <- function(x1, y1, x2, y2, color = col.shade) {
    n <- length(x2)
    polygon(c(x1, x2[n:1]), c(y1, y2[n:1]), border = NA, 
            col = color)
  }
  obsvd <- sort(x, na.last = NA)
  N <- length(obsvd)
  top <- obsvd[N]
  if (missing(x.max)) {
    Np <- N
  }
  else {
    Np <- sum(obsvd <= abs(x.max))
    if (Np < N || x.max < 0) 
      top <- abs(x.max)
  }
  if (Np == 0) 
    stop("Nothing to plot")
  if (df == 2) {
    expctd <- 2 * cumsum(1/(N:1))
  }
  else {
    expctd <- qchisq(p = (1:N)/(N + 1), df = df)
  }
  if (!is.null(conc)) {
    if (conc[1] > 0) {
      e.low <- qchisq(p = qbeta(conc[1], 1:N, N:1), df = df)
    }
    else {
      e.low <- rep(0, N)
    }
    if (conc[2] < 1) {
      e.high <- qchisq(p = qbeta(conc[2], 1:N, N:1), df = df)
    }
    else {
      e.high <- 1.1 * rep(max(x), N)
    }
  }
  right <- expctd[N]
  par(mar = c(8, 4, 4, 2) + 0.1, las = 1, cex= 1.75, family="Arial")
  if (pvals) {
    mlp <- floor(-log10(pchisq(top, df = df, lower.tail = FALSE)))
    if (mlp > 0) {
      gap <- ceiling(mlp/5)
      lp.vals <- seq(mlp, 1, -gap)
      chi2.vals <- qchisq(10^(-lp.vals), df = df, lower.tail = FALSE)
      par(mar = c(8, 4, 4, 4) + 0.1, las = 1, cex= 1.75, family="Arial")
    }
    else pvals <- FALSE
  }
  plot(c(0, right), c(0, top), type = "n", xlab = xlab, ylab = ylab, 
       main = main)
  title(sub=sub, line=6)
  if (pvals) {
    nvals <- length(lp.vals)
    for (i in 1:nvals) axis(side = 4, at = chi2.vals[i], 
                            labels = substitute(10^{
                              a
                            }, list(a = -lp.vals[i])), xaxt = "n")
    mtext("P-value", side = 4, line = 3, las = 0, padj = 0, cex=2, family="Arial")
  }
  if (is.na(thin[1])) {
    show <- 1:Np
  }
  else if (length(thin) != 2 || thin[1] < 0 || thin[1] > 1 || 
           thin[2] < 1) {
    warning("invalid thin parameter; no thinning carried out")
    show <- 1:Np
  }
  else {
    space <- right * thin[1]/floor(thin[2])
    iat <- round((N + 1) * pchisq(q = (1:floor(thin[2])) * 
                                    space, df = df))
    if (max(iat) > thin[2]) 
      show <- unique(c(iat, (1 + max(iat)):Np))
    else show <- 1:Np
  }
  Nu <- floor(trim * N)
  if (Nu > 0) 
    lambda <- mean(obsvd[1:Nu])/mean(expctd[1:Nu])
  if (!is.null(conc)) {
    if (Np < N) 
      vert <- c(show, (Np + 1):N)
    else vert <- show
    if (overdisp) 
      shade(expctd[vert], lambda * e.low[vert], expctd[vert], 
            lambda * e.high[vert])
    else shade(expctd[vert], e.low[vert], expctd[vert], e.high[vert])
  }
  points(expctd[show], obsvd[show], ...)
  if (Np < N) {
    over <- (Np + 1):N
    points(expctd[over], rep(top, N - Np), pch = oor.pch)
  }
  line.types <- c("solid", "dashed", "dotted")
  key <- NULL
  txt <- NULL
  if (slope.one) {
    key <- c(key, line.types[1])
    txt <- c(txt, "y = x")
    abline(a = 0, b = 1, lty = line.types[1])
  }
  if (slope.lambda && Nu > 0) {
    key <- c(key, line.types[2])
    txt <- c(txt, paste("y = ", format(lambda, digits = 4), 
                        "x", sep = ""))
    if (!is.null(conc)) {
      if (Np < N) 
        vert <- c(show, (Np + 1):N)
      else vert <- show
    }
    abline(a = 0, b = lambda, lty = line.types[2])
  }
  if (!is.null(key)) 
    legend(0, top, legend = txt, lty = key)
  c(N = N, omitted = N - Np, lambda = lambda)
}


#####################################################################
########## PLOT & SAVE RESULTS ##########
#####################################################################

immune.pheno.df <- read.table(file.path(gwas_dir, immune.pheno.names),
                              header=T, stringsAsFactors = F, quote = "\"'", sep="\t")

result.ls.sugg.combined <- list()
sapply(1:(ncol(immune.pheno.df)-2), function(pheno.n) {
  
  print(paste("immune pheno number", pheno.n))
  immune.pheno <- colnames(immune.pheno.df[pheno.n+2])
  print(paste("immune pheno", immune.pheno))
  immune.pheno.label <- gsub("_|\\.", " ", immune.pheno)
  
  print(paste("Stratification Group:", gwas.group))
  print(paste("Immune Phenotype:", immune.pheno))
  
  result.ls <- do.call(rbind, lapply(1:22, function(chr) {
    
    inNameResult <- file.path(gwas_dir, immune.pheno.dir, paste0(immune.pheno.result, "_chr", chr, ".", immune.pheno, ".assoc.linear"))

    inNameFreq <- file.path(gwas_dir, "Freq", paste0(freq.group, "_plink_freq_chr", chr, ".frq"))
    inNameInfo <- file.path(hrc_dir, paste0("chr", chr, ".info.rsq05"))
    
    result <- read.table(inNameResult, header=T, stringsAsFactors=F)
    freq <- read.table(inNameFreq, header=T, stringsAsFactors=F)
    info <- read.table(inNameInfo, header=T, stringsAsFactors=F)
    
    colnames(freq) <- gsub("MAF", "Stratified.Freq", colnames(freq))
    
    print(paste("chr", chr, "result file", paste(dim(result), collapse=" x ")))
    print(paste("chr", chr, "freq file", paste(dim(freq), collapse=" x ")))
    print(paste("chr", chr, "info file", paste(dim(info), collapse=" x ")))
    
    if (all(freq$SNP==result$SNP)&all(freq$A1==result$A1)) {
      result <- cbind.data.frame(result[, c("CHR", "SNP", "BP")], 
                                 freq[, c("A1", "A2", "Stratified.Freq", "NCHROBS")], 
                                 result[, c("TEST", "NMISS", "BETA", "STAT", "P")])
    } else {
      print("ERROR: result file and freq file SNPs do not match.")
    }
    
    if (all(info$SNP_new==result$SNP)&all(info$LT.1.==result$A1)) {
      result <- cbind.data.frame(result[, c("CHR", "SNP", "BP", "A1", "A2")], 
                                 info[, c("Genotyped", "Rsq", "AvgCall", "MAF")], 
                                 result[, c("Stratified.Freq", "NCHROBS", "TEST", "NMISS", "BETA", "STAT", "P")])
    } else {
      print("ERROR: result file and info file SNPs do not match.")
    }
    
    result
  }))
  
  # Bindea only
  immune.pheno <- gsub("Sigs160", "Sigs160.Bindea", immune.pheno)
  
  n.P.notNA <- nrow(result.ls[!is.na(result.ls$P), ])
  
  print(paste("Saving chr 1-22 result file:", paste(dim(result.ls), collapse=" x ")))
  save(result.ls, file=file.path(gwas_dir, immune.pheno.dir, paste0(gwas.group, "_R2.0.5_P", pheno.n, ".", immune.pheno, "_n.P.notNA.", n.P.notNA, ".RData")))
  
  if (n.P.notNA == 0) {
    
    print("WARNING: All linear association P-values are NA, PLINK will set the output to be all NAs if it was unable to fit the regression model.")
    # result.ls.sugg.combined[[pheno.n]] <- NA
    
  } else if (n.P.notNA != 0) {
    
    print(paste("number of SNPs with non-NA P-values:", n.P.notNA))
    result.ls.sugg <- result.ls[!is.na(result.ls$P) & result.ls$P < sugg, ]
    
    if (nrow(result.ls.sugg) > 0) {
      # if (length(which((result.ls.sugg$P < sugg) == T)) > 0 ) {
      #   result.ls.sugg$Significance <- ""
      #   result.ls.sugg[result.ls.sugg$P < sugg, ]$Significance <- paste0("(< ", sugg, ")")
      #   if (length(which((result.ls.sugg$Stratified.Freq >= maf.cutoff &
      #                     !is.na(result.ls.sugg$Stratified.Freq) &
      #                     !is.na(result.ls.sugg$P) & result.ls.sugg$P < sugg) == T)) > 0 ) {
      #     result.ls.sugg[result.ls.sugg$Stratified.Freq >= maf.cutoff &
      #                      !is.na(result.ls.sugg$Stratified.Freq) &
      #                      !is.na(result.ls.sugg$P) & result.ls.sugg$P < sugg, ]$Significance <- paste0("< ", sugg)
      #   }
      #   
      #   if (length(which((result.ls.sugg$P < sig) == T)) > 0 ) {
      #     result.ls.sugg[result.ls.sugg$P < sig, ]$Significance <- paste0("(<", sig, ")")
      #     if (length(which((result.ls.sugg$Stratified.Freq >= maf.cutoff &
      #                       !is.na(result.ls.sugg$Stratified.Freq) &
      #                       !is.na(result.ls.sugg$P) & result.ls.sugg$P < sig) == T)) > 0 ) {
      #       result.ls.sugg[result.ls.sugg$Stratified.Freq >= maf.cutoff &
      #                        !is.na(result.ls.sugg$Stratified.Freq) &
      #                        !is.na(result.ls.sugg$P) & result.ls.sugg$P < sig, ]$Significance <- paste0("< ", sig)
      #     }
      #   }
      #   result.ls.sugg$Immune.Phenotype <- immune.pheno
      # }
      
      result.ls.sugg <- result.ls.sugg[order(result.ls.sugg$P, decreasing=F), ]
      print(paste0("number suggestive SNPs (P < ", sugg, ") without MAF threshold: ", nrow(result.ls.sugg)))
      
      # result.ls.sugg.combined[[pheno.n]] <- result.ls.sugg
      
    }
    
    print(paste("Immune Phenotype:", immune.pheno))
    print(paste("Filtering results for SNPs with stratified MAF >=", maf.cutoff))
    result.maf.ls <- result.ls[result.ls$Stratified.Freq >= maf.cutoff & 
                                 !is.na(result.ls$Stratified.Freq) &
                                 !is.na(result.ls$P), ]
    print(paste0("number SNPs with stratified MAF >=", maf.cutoff, ": ", nrow(result.maf.ls)))
    
    print(paste0("Saving chr 1-22 result file maf >= ", maf.cutoff, ": ", paste(dim(result.maf.ls), ": ", collapse=" x ")))
    save(result.maf.ls, file=file.path(gwas_dir, immune.pheno.dir, paste0(gwas.group, "_R2.0.5_maf.", maf.cutoff, "_P", pheno.n, ".", immune.pheno, ".RData")))
    
    result.maf.ls.sugg <- result.maf.ls[result.maf.ls$P < sugg, ]
    print(paste0("number suggestive SNPs (P < ", sugg, ") at stratified MAF >= ", maf.cutoff, ": ", nrow(result.maf.ls.sugg)))
    
    result.maf.ls.signif <- result.maf.ls.sugg[result.maf.ls.sugg$P < sig, ]
    print(paste0("number significant SNPs (P < ", sig, ") at stratified MAF >= ", maf.cutoff, ": ", nrow(result.maf.ls.signif)))
    
    print("Annotating P-val Significance")
    if (nrow(result.maf.ls.sugg) > 0) {
      result.maf.ls.sugg <- result.maf.ls.sugg[order(result.maf.ls.sugg$P, decreasing=F), ]
      result.maf.ls.sugg$Significance <- paste("<", sugg)
      
      if (nrow(result.maf.ls.signif) > 0) {
        result.maf.ls.sugg[result.maf.ls.sugg$P < sig, ]$Significance <- paste("<", sig)
      }
      
      print(paste0("Saving suggestive SNPs (P < ", sugg, ") at stratified MAF >= ", maf.cutoff, ": ", paste(dim(result.maf.ls.sugg), collapse=" x ")))
      write.csv(result.maf.ls.sugg, 
                file.path(gwas_dir, immune.pheno.dir, paste0(gwas.group, "_R2.0.5_maf.", maf.cutoff, "_P", pheno.n, ".", 
                                                             immune.pheno, "_n.sugg.", nrow(result.maf.ls.sugg), ".csv")),
                col.names = T, row.names = F, quote = F)
    }
    
    if (nrow(result.maf.ls.signif) > 0) {
      result.maf.ls.signif <- result.maf.ls.signif[order(result.maf.ls.signif$P, decreasing=F), ]
      result.maf.ls.signif$Significance <- paste("<", sig)
      
      print(paste0("Saving significant SNPs (P < ", sig, ") at stratified MAF >= ", maf.cutoff, ": ", paste(dim(result.maf.ls.signif), collapse=" x ")))
      write.csv(result.maf.ls.signif, 
                file.path(gwas_dir, immune.pheno.dir, paste0(gwas.group, "_R2.0.5_maf.", maf.cutoff, "_P", pheno.n, ".", 
                                                             immune.pheno, "_n.signif.", nrow(result.maf.ls.signif), ".csv")),
                col.names = T, row.names = F, quote = F)
    }
    
    
    n.sugg.n.sig <- paste0("Number suggestive SNPs (P < ", sugg, "): ", formatC(nrow(result.maf.ls.sugg), format="d", big.mark=","),
                           "; Number significant SNPs (P < ", sig, "): ", formatC(nrow(result.maf.ls.signif), format="d", big.mark=","))
    
    print("Gathering top 25 SNPs for the report")
    if (nrow(result.maf.ls.signif) == 0 & nrow(result.maf.ls.sugg) == 0) {
      n.display <- paste0("Table: No significant SNPs (P < ", sig, "); No suggestive SNPs (P < ", sugg, ")")
      result.maf.ls.top <- ""
    } else if (nrow(result.maf.ls.sugg) > 0) {
      if (nrow(result.maf.ls.signif) == 0 & nrow(result.maf.ls.sugg) > 25) {
        result.maf.ls.top <- result.maf.ls.sugg[1:25, ]
        n.display <- paste0("Table: No significant SNPs (P < ", sig, "); Top 25 of ", 
                            formatC(nrow(result.maf.ls.sugg), format="d", big.mark=","), " suggestive SNPs (P < ", sugg, ")")
      } else if (nrow(result.maf.ls.signif) == 0 & nrow(result.maf.ls.sugg) <= 25) {
        result.maf.ls.top <- result.maf.ls.sugg
        n.display <- paste0("Table: No significant SNPs (P < ", sig, "); ", 
                            formatC(nrow(result.maf.ls.sugg), format="d", big.mark=","), " suggestive SNPs (P <", sugg, ")")
      } else if (nrow(result.maf.ls.signif) > 25) {
        result.maf.ls.top <- result.maf.ls.signif[1:25, ]
        n.display <- paste0("Table: Top 25 of ", formatC(nrow(result.maf.ls.signif), format="d", big.mark=","), " significant SNPs (P <", sig, "); ", 
                            formatC(nrow(result.maf.ls.sugg), format="d", big.mark=","), " suggestive SNP (P <", sugg, ")")
      } else if (nrow(result.maf.ls.signif) < 25 & nrow(result.maf.ls.sugg) > 25) {
        result.maf.ls.top <- result.maf.ls.sugg[1:25, ]
        n.display <- paste0("Table: ", formatC(nrow(result.maf.ls.signif), format="d", big.mark=","), " significant SNPs (P < ", sig, "); Top ", 25-nrow(result.maf.ls.signif), 
                            " of ", formatC(nrow(result.maf.ls.sugg), format="d", big.mark=","), " suggestive SNPs (P <", sugg, ")")
      } else if (nrow(result.maf.ls.signif) <= 25) {
        result.maf.ls.top <- result.maf.ls.sugg
        n.display <- paste0("Table: ", formatC(nrow(result.maf.ls.signif), format="d", big.mark=","), " significant SNPs (P < ", sig, "); ", 
                            formatC(nrow(result.maf.ls.sugg), format="d", big.mark=","), " suggestive SNPs (P <", sugg, ")")
      }
    }
    
    print("Preparing data for plotting")
    if (nrow(result.maf.ls.sugg) > 0) {
      
      # Plot Top SNPs
      
      # title <- textGrob(paste(immune.pheno.label, "\nStratification:", gwas.group), gp = gpar(fontsize = 24, fontface="bold"))
      # subtitle <- textGrob(n.display, gp = gpar(fontsize = 24, fontface="italic", fontfamily = "Arial"))
      subtitle <- textGrob(n.display, gp = gpar(fontsize = 22, fontface="italic", fontfamily = "Arial"))
      
      mytheme <- gridExtra::ttheme_default(
        core = list(fg_params=list(cex = 1.5, fontfamily="Arial")),
        colhead = list(fg_params=list(cex = 1.5, fontfamily="Arial")),
        rowhead = list(fg_params=list(cex = 1.5, fontfamily="Arial")))
      
      table <- tableGrob(result.maf.ls.top[, c("CHR", "SNP", "BP", "A1", "A2", "Genotyped",
                                               "Rsq", "AvgCall", "MAF", "Stratified.Freq",
                                               "BETA", "STAT", "P", "Significance")], row=NULL, theme = mytheme)
      padding <- unit(0.5,"line")
      table <- gtable_add_rows(
        table, heights = grobHeight(subtitle) + padding, pos = 0
      )
      table <- gtable_add_grob(
        table, list(subtitle),
        t = 1, l = 1, r = ncol(table)
      )
      # table <- gtable_add_grob(
      #   table, list(title),
      #   t = 1, l = 1, r = ncol(table)
      # )
    } else {
      table <- tableGrob(result.maf.ls.top)
    }
    
    print("Calculating KS Test and ChiSq Test P-values")
    KSTest <- ks.test(result.maf.ls$P, "punif", 0, 1)
    ChiSqTest <- chisq.test(table(cut(result.maf.ls$P,breaks= seq(0,1,0.1))), p=rep(0.1, 10))
    
    if (KSTest$p.value == 0){
      KSTest.pval <- "Kolmogorov-Smirnov Test p-val < 2.2e-16"
    } else {
      KSTest.pval <- paste("Kolmogorov-Smirnov Test p-val =", formatC(KSTest$p.value, format = "e", digits = 2))
    }
    if (ChiSqTest$p.value == 0){
      ChiSqTest.pval <- "Chi-square Goodness-of-Fit Test p-val < 2.2e-16"
    } else {
      ChiSqTest.pval <- paste("Chi-square Goodness-of-Fit Test p-val =", formatC(ChiSqTest$p.value, format = "e", digits = 2))
    }
    print(KSTest.pval)
    print(ChiSqTest.pval)
    
    
    print("Calculating Genomic Inflation Factor lambda")
    GenomicInflationFactor <- median(qchisq(result.maf.ls$P, 1, lower.tail = F))/median(qchisq(1:length(result.maf.ls$P)/length(result.maf.ls$P), 1, lower.tail = F))
    GenomicInflationFactor.lambda <- paste("Genomic Inflation Factor lambda =", formatC(GenomicInflationFactor, digits = 4))
    print(GenomicInflationFactor.lambda)
    
    # stat.label <- paste0(KSTest.pval, "; ", ChiSqTest.pval, "\n", GenomicInflationFactor.lambda)
    stat.label <- paste0(GenomicInflationFactor.lambda)
    
    
    print("Plotting Manhattan Plot, Top SNPs and QQ ChiSq Plot")
    # Manhattan Plot
    mht.plot.ylim <- ceiling(max(-log10(result.maf.ls$P)))
    mht.plot <- gg.manhattan.mod(df=result.maf.ls, threshold=NA, hlight=NA, 
                                 ylims=c(2, max(8, mht.plot.ylim, na.rm=T)), col=blues.n,
                                 title=paste(immune.pheno.label, "\nStratification:", gwas.group),
                                 subtitle=paste0(n.sugg.n.sig, "\n"))
    
    png(file.path(gwas_dir, immune.pheno.dir, paste0("manhattan_", gwas.group, "_R2.0.5_maf.", maf.cutoff, "_P", pheno.n, ".", 
                                                     immune.pheno, "_n.sugg.", nrow(result.maf.ls.sugg), "_n.signif.", nrow(result.maf.ls.signif), ".png")), 
        width=2200, height=1500)
    print(mht.plot)
    foo <- dev.off()
    
    png(file.path(gwas_dir, immune.pheno.dir, paste0("qq.topSNPs_", gwas.group, "_R2.0.5_maf.", maf.cutoff, "_P", pheno.n, ".", 
                                                     immune.pheno, "_n.sugg.", nrow(result.maf.ls.sugg), "_n.signif.", nrow(result.maf.ls.signif), ".png")), 
        width=2200, height=900)
    
    
    layout(matrix(c(1,2), nrow = 1, ncol = 2, byrow = TRUE),
           widths=c(1.5, 1), heights=c(1))
    

    frame()
    # Grid regions of current base plot (ie from frame)
    vps <- baseViewports()
    pushViewport(vps$inner, vps$figure, vps$plot)
    # Draw table grob
    grid.draw(table)
    
    
    popViewport(3)
    
    # Draw base plot
    # QQ Plot
    qq.chisq.mod(-2*log(result.maf.ls$P), df = 2, pvals= TRUE, conc=c(0.05, 0.95),
                 overdisp = T, slope.one = T, slope.lambda = T,
                 main=paste(immune.pheno.label, "\nStratification:", gwas.group),
                 sub=stat.label)

    foo <- dev.off()
    
  }
  
})