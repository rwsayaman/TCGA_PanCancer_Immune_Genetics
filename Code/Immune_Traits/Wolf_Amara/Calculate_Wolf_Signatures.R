## Contributors
# Rosalyn W. Sayaman, Ph.D., University of California, San Francisco: rwsayaman@gmail.com
# Denise Wolf, Ph.D., University of California, San Francisco

## Citations
# Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011
# Wolf et al., PLoS ONE (2014). Gene co-expression modules as clinically relevant hallmarks of breast cancer diversity. https://doi.org/10.1371/journal.pone.0088309
# Wolf_Amara et al., Breast Cancer Res Treat (2017). Co-expression modules identified from published immune signatures reveal five distinct immune subtypes in breast cancer.  https://doi.org/10.1007/s10549-016-4041-3


rm(list=ls())


########## Input Data
# Load input data ExprData.RData: a gene expression matrix with gene symbols as rows and sample ids as columns
load(file.path(getwd(), 'ExprData.RData'))


###############################################################################
########## Gene Median-Center ##########
###############################################################################

########### Center FUNCTION
center.rows <- function(x){
  return(t(apply(x, 1, function(x) (x - mean(na.omit(x))))))
}
center.rows2 <- function(x){
  return(t(apply(x, 1, function(x) (x - median(na.omit(x))))))
}

ExprData.mdCtr <- center.rows2(ExprData)
dim(ExprData.mdCtr)

# quartz()
# par(las=2)
# boxplot(ExprData[1:10, ])
# quartz()
# par(las=2)
# boxplot(ExprData.mdCtr[1:10, ])



###############################################################################
########## MAP to ENTREZID ##########
###############################################################################

library(org.Hs.eg.db)
keytypes(org.Hs.eg.db)

ExprData.mdCtr <- as.data.frame(ExprData.mdCtr)
ExprData.mdCtr$ENTREZID <- unlist(mapIds(
  org.Hs.eg.db,
  keys=rownames(ExprData.mdCtr), # input
  column="ENTREZID", # output keytype
  keytype="SYMBOL", # input keytype
  multiVals="first" # take first value if mapping not 1:1
))



###############################################################################
########## FILTER AND ANNOTATE FOR ENTREZID ##########
###############################################################################

ExprData.mdCtr.filt <- ExprData.mdCtr[!is.na(ExprData.mdCtr$ENTREZID), ]
dim(ExprData.mdCtr.filt)

ExprData.mdCtr.filt.anno <- ExprData.mdCtr.filt
ExprData.mdCtr.filt.anno$GeneSYM <- rownames(ExprData.mdCtr.filt)

# Format Entrez ID names
rownames(ExprData.mdCtr.filt.anno) <- paste0("eg_", ExprData.mdCtr.filt.anno$ENTREZID)
rownames(ExprData.mdCtr.filt) <- paste0("eg_", ExprData.mdCtr.filt$ENTREZID)
ExprData.mdCtr.filt$ENTREZID <- NULL

ExprData.mdCtr.filt <- as.matrix(ExprData.mdCtr.filt)
all(rownames(ExprData.mdCtr.filt.anno) == rownames(ExprData.mdCtr.filt))
# [1] TRUE



#####################################################################
##########  PREPARE DATA FUNCTION ##########
#####################################################################


########## Load Wolf, Amara Coherent Representative Signatures ##########


# Load Wolf, Amara Gene Signatures
#################################################################################
### Immune Subtyping - D. Wolf, C. Yau
### Gene Signatures
load(file.path(getwd(), "Wolf_Amara", "comparative_immuneSigs_geneLists4.rda"))
head(sigs1_2_eg2)
length(sigs1_2_eg2)
# [1] 71

# D. Wolf TCGA_newPanCan2016g_forChristina.R
# Edited R. Sayaman 20170724
# Revision to PCA signature score calculation R. Sayaman 20170831
#################################################################################

Wolf_Amara_ImmuneGeneSigs.ls <- sigs1_2_eg2
Wolf_Amara_ImmuneGeneSigs <- sapply(Wolf_Amara_ImmuneGeneSigs.ls, function(x) x$src)
length(Wolf_Amara_ImmuneGeneSigs)
# [1] 71
Wolf_Amara_ImmuneGeneSigs
# [1] "IR7_score"                           "Buck14_score"                        "ICS5_score"                          "LIexpression_score"                  "Chemokine12_score"                  
# [6] "NHI_5gene_score"                     "CD68"                                "CD8A"                                "CD8_CD68_ratio"                      "PD1_data"                           
# [11] "PDL1_data"                           "PD1_PDL1_score"                      "CTLA4_data"                          "Bcell_mg_IGJ"                        "Bcell_receptors_score"              
# [16] "STAT1_score"                         "CSF1_response"                       "Module3_IFN_score"                   "Module4_TcellBcell_score"            "Module5_TcellBcell_score"           
# [21] "Module11_Prolif_score"               "TAMsurr_score"                       "TcClassII_score"                     "TAMsurr_TcClassII_ratio"             "IL12_score_21050467"                
# [26] "IL4_score_21050467"                  "IL2_score_21050467"                  "IL13_score_21050467"                 "IFNG_score_21050467"                 "TGFB_score_21050467"                
# [31] "TREM1_data"                          "DAP12_data"                          "Immune_NSCLC_score"                  "Tcell_receptors_score"               "CHANG_CORE_SERUM_RESPONSE_UP"       
# [36] "CSR_Activated_15701700"              "GP2_ImmuneTcellBcell_score"          "GP11_Immune_IFN"                     "KEGG_HEMATOPOIETIC_CELL_LINEAGE"     "REACTOME_SIGNALING_IN_IMMUNE_SYSTEM"
# [41] "ZHANG_INTERFERON_RESPONSE"           "IgG_19272155"                        "Interferon_19272155"                 "LCK_19272155"                        "MHC.I_19272155"                     
# [46] "MHC.II_19272155"                     "STAT1_19272155"                      "Troester_WoundSig_19887484"          "MDACC.FNA.1_20805453"                "IGG_Cluster_21214954"               
# [51] "Minterferon_Cluster_21214954"        "Immune_cell_Cluster_21214954"        "MCD3_CD8_21214954"                   "Interferon_Cluster_21214954"         "B_cell_PCA_16704732"                
# [56] "CD8_PCA_16704732"                    "GRANS_PCA_16704732"                  "LYMPHS_PCA_16704732"                 "T_cell_PCA_16704732"                 "TGFB_PCA_17349583"                  
# [61] "Rotterdam_ERneg_PCA_15721472"        "HER2_Immune_PCA_18006808"            "IL8_21978456"                        "IFN_21978456"                        "MHC1_21978456"                      
# [66] "MHC2_21978456"                       "Bcell_21978456"                      "Tcell_21978456"                      "CD103pos_mean_25446897"              "CD103neg_mean_25446897"             
# [71] "CD103pos_neg_ratio_25446897"   
Wolf_Amara_ImmuneGeneSigs.ls.ENTREZID <- unique(unlist(sapply(Wolf_Amara_ImmuneGeneSigs.ls, function(x) x$entrezg)))
Wolf_Amara_ImmuneGeneSigs.ls.ENTREZID <- Wolf_Amara_ImmuneGeneSigs.ls.ENTREZID[!is.na(Wolf_Amara_ImmuneGeneSigs.ls.ENTREZID)]
length(Wolf_Amara_ImmuneGeneSigs.ls.ENTREZID)
# [1] 2478



########## EVALUATE SIGNATURES ##########

# Find all ENTREZID associated to immune sigs
ImmuneSig.ENTREZID <- unique(c(Wolf_Amara_ImmuneGeneSigs.ls.ENTREZID))
length(ImmuneSig.ENTREZID)
# [1] 2478


####### Prepare Immune Expression Data Function

prepareImmuneExpressionData.fxn <- function(expr.data, expr.data.ANNO.df, ImmuneSig.ENTREZID) {
  # Subset expr data and pheno data by immune sig ENTREZID
  expr.data.ImmuneSig <- expr.data[expr.data.ANNO.df$ENTREZID %in% ImmuneSig.ENTREZID, ]
  dim(expr.data.ImmuneSig)
  
  expr.data.ImmuneSig.ANNO.df <- expr.data.ANNO.df[expr.data.ANNO.df$ENTREZID %in% ImmuneSig.ENTREZID, ]
  
  length(unique(expr.data.ImmuneSig.ANNO.df$ENTREZID))
  length(unique(expr.data.ImmuneSig.ANNO.df$GeneSYM))
  
  
  geneExp.V2_geneName_anno.df <- expr.data.ImmuneSig.ANNO.df
  geneExp.V2_geneName_entrezIDs <- geneExp.V2_geneName_anno.df[rownames(expr.data.ImmuneSig),]$ENTREZID
  length(unique(geneExp.V2_geneName_entrezIDs))
  
  geneExp.V2_geneName_symbols <- geneExp.V2_geneName_anno.df[rownames(expr.data.ImmuneSig),]$GeneSYM
  length(unique(geneExp.V2_geneName_symbols))
  
  geneExp.V2_geneNameIDs <- paste(geneExp.V2_geneName_symbols, "|", geneExp.V2_geneName_entrezIDs)
  names(geneExp.V2_geneName_entrezIDs) <- geneExp.V2_geneNameIDs
  
  data2 <- expr.data.ImmuneSig
  rownames(data2) <- geneExp.V2_geneName_entrezIDs
  
  return(data2)
}


#####################################################################
##########  PREPARE DATA ##########
#####################################################################

ExprData.WolfSig.data2.mdCtr <- prepareImmuneExpressionData.fxn(expr.data=ExprData.mdCtr.filt, 
                                                                  expr.data.ANNO.df=ExprData.mdCtr.filt.anno, 
                                                                  ImmuneSig.ENTREZID=ImmuneSig.ENTREZID)

dim(ExprData.WolfSig.data2.mdCtr)
# [1] 2326  348



#####################################################################
##########  CALCULATE SIGNATURE FUNCTION ##########
#####################################################################

####### FUNCTIONS REQUIRED FOR MODULES

#for modules
sample.scores<-function(signature.data, sig) {
  # sig must be a named with probesets as names
  # signature.data must be a matrix with samples as columns, probesets as rows with probesets named.
  signature.data <- signature.data[match(names(sig), rownames(signature.data)),]
  d <- apply(signature.data, 2, function(x) get.distances(sig, x))
  return(d[1,])
}
get.distances<-function(t1, sample.data) {
  centroid.distances <- as.matrix(dist(rbind(t1, d=sample.data, o=rep(0,length(t1)))))/sqrt(length(t1) - 1)
  c <- centroid.distances[1,3] # 1
  b <- centroid.distances[2,1]
  a <- centroid.distances[3,2]
  A <- acos((b^2 + c^2 - a^2)/(2*b*c))
  sigma <- sin(A)*b
  score <- 1 - (cos(A)*b)
  return(c(score=score, sigma=sigma))
}

########### Zscore FUNCTION
zscore.rows <- function(x){
  return(t(apply(x, 1, function(x) (x - mean(na.omit(x)))/sd(na.omit(x)))))
}
zscore.rows2 <- function(x){
  return(t(apply(x, 1, function(x) (x - median(na.omit(x)))/sd(na.omit(x)))))
}

####### Module Score Function
calculate_Wolf_Amara_Signatures_fxn <- function(sigs.select, data2, expr.data.ANNO.df) {
  
  length(sigs.select)
  
  sigs.select.type <- sapply(sigs.select, function(x) x$title)
  sigs.select.name <- sapply(sigs.select, function(x) x$src)
  
  ####### gather together the entrezgIDs
  
  sigs.select.ENTREZID <- as.character(na.omit(sigs.select[[1]]$entrezg))
  for(i in 2:length(sigs.select)){
    sigs.select.ENTREZID<-c(sigs.select.ENTREZID,as.character(na.omit(sigs.select[[i]]$entrezg)))
  }
  sigs.select.ENTREZID<-unique(sigs.select.ENTREZID)   
  length(sigs.select.ENTREZID)
  
  #######################################################################################
  
  ####### see how many genes are found in compdat set
  sigs.select.ENTREZID.expr.intersect<-intersect(rownames(data2),sigs.select.ENTREZID)  
  length(sigs.select.ENTREZID.expr.intersect)
  
  ##1#####################################
  ####first evaluate the signatures calculated as the mean expression of genes in the signature
  
  data_otherimmune2<-NA
  
  for(i in 1:length(sigs.select)){
    print(sigs.select[[i]]$src)
    
    if(sigs.select.type[i]=="mean"){
      vars<-intersect(sigs.select.ENTREZID.expr.intersect,sigs.select[[i]]$entrezg)
      if(length(vars)>0){
        dat<-data2[vars,]
        if(length(vars)==1){sig<-dat}
        if(length(vars)>1){sig<-apply(dat,2,mean,na.rm=T)}
        data_otherimmune2<-rbind(data_otherimmune2,sig)
        rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]<-sigs.select.name[i]
        cat(paste(rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]),"\n")
      }
    }
  }  
  data_otherimmune2<-data_otherimmune2[-1,]	#get rid of the first row of
  
  
  ##2#########################################
  ####next, evaluate the signatures calculated as the median expression level of genes in the signature
  
  
  for(i in 1:length(sigs.select)){
    
    if(sigs.select.type[i]=="median"){
      vars<-intersect(sigs.select.ENTREZID.expr.intersect,sigs.select[[i]]$entrezg)
      if(length(vars)>0){
        dat<-data2[vars,]
        if(length(vars)==1){sig<-dat}
        if(length(vars)>1){sig<-apply(dat,2,median,na.rm=T)} # # RWS: 20170914 should be median
        data_otherimmune2<-rbind(data_otherimmune2,sig)
        rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]<-sigs.select.name[i]
        cat(paste(rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]),"\n")
      }
    }
  }  
  
  ###3##########################################
  ####evaluate weighted_mean signatures
  #translate to entrezg
  
  names(sigs12_weighted_means) <- names(sigs12_weighted_means)
  ## subset for selected sigs
  sigs12_weighted_means_module <- names(sigs12_weighted_means)[names(sigs12_weighted_means) %in% sigs.select.name]
  sigs12_weighted_means <- sigs12_weighted_means[sigs12_weighted_means_module]
  
  # RWS: no sigs1_2_eg and sigs1_2_names defined, changed to sigs.select and sigs.select.name
  sigs12_weighted_means_eg<-sigs12_weighted_means
  for(i in 1:length(sigs12_weighted_means)){
    names(sigs12_weighted_means_eg[[i]])<-sigs.select[[which(sigs.select.name==names(sigs12_weighted_means)[i])]]$entrezg[names(sigs12_weighted_means[[i]])]
  }
  
  for(i in 1:length(sigs.select)){
    
    if(sigs1_2_type2[i]=="weighted_mean"){
      vars<-intersect(sigs.select.ENTREZID.expr.intersect,sigs.select[[i]]$entrezg)
      if(length(vars)>0){
        dat<-data2[vars,]
        wt<-sigs12_weighted_means_eg[[sigs.select.name[i]]][vars]
        dat<-wt*dat
        sig<-round(apply(dat,2,mean,na.rm=T),digits=5)
        data_otherimmune2<-rbind(data_otherimmune2,sig)
        rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]<-sigs.select.name[i]
        cat(paste(rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]),"\n")
      }
    }
  } 
  
  ###4######################################
  ###evaluate special signatures
  
  #first, brca gene expression immune modules, and the proliferation module
  
  ## RWS: No modules and modules_wts variable defined, added from Signatures_evaluate_automatic5.R
  ## Rename with Wolf_Amara prefix
  modules<-c("Module3_IFN_score","Module4_TcellBcell_score", "Module5_TcellBcell_score", "Module11_Prolif_score")
  ## subset for selected sigs
  modules <- modules[modules %in% sigs.select.name]
  ## RWS: Module weight in gene symbols transform to entrez IDs
  
  ## Rename with Wolf_Amara prefix
  names(sigs12_module_weights) <- names(sigs12_module_weights)
  
  modules_wts_geneSYM=sigs12_module_weights[modules]
  modules_wts=modules_wts_geneSYM
  for(i in 1:length(modules_wts_geneSYM)){
    names(modules_wts[[i]]) <- sapply(names(modules_wts_geneSYM[[i]]), function(x) {
      unique(expr.data.ANNO.df[which(expr.data.ANNO.df$GeneSYM == x), ]$ENTREZID)
    })
  }
  
  for(i in 1:length(modules)){
    j=which(sigs.select.name==modules[i])
    vars<-intersect(sigs.select.ENTREZID.expr.intersect,sigs.select[[j]]$entrezg)
    if(length(vars)>0){
      dat<-data2[vars,]
      wt<-modules_wts[[i]][vars]
      sig<-sample.scores(dat,wt)
      data_otherimmune2<-rbind(data_otherimmune2,sig)
      rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]<-sigs.select.name[j]
      cat(paste(rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]),"\n")
    }
    
  }
  
  ######now gene programs GP11_Immune_IFN and GP2_ImmuneTcellBcell_score  
  ##GP11 most correlated signatures are Minterferon_Cluster_21214954 and ZHANG_INTERFERON_RESPONSE, so take mean of two
  i=which(sigs.select.name=="ZHANG_INTERFERON_RESPONSE")
  vars<-intersect(sigs.select.ENTREZID.expr.intersect,sigs.select[[i]]$entrezg)
  if(length(vars)>0){
    dat<-data2[vars,]
    sig_zhang<-apply(dat,2,median,na.rm=T)		
  }
  sig<-(sig_zhang+data_otherimmune2["Minterferon_Cluster_21214954",2])/2
  data_otherimmune2<-rbind(data_otherimmune2,sig)
  rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]<-"GP11_Immune_IFN"
  cat(paste(rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]),"\n")
  
  ##GP2 most correlated signatures are "KEGG_HEMATOPOEITIC_CELL_LINEAGE"   and  "REACTOME_SIGNALING_IN_IMMUNE_SYSTEM" but I couldn't find the gene list for the latter so use former
  i=which(sigs.select.name=="KEGG_HEMATOPOIETIC_CELL_LINEAGE")
  vars<-intersect(sigs.select.ENTREZID.expr.intersect,sigs.select[[i]]$entrezg)
  if(length(vars)>0){
    dat<-data2[vars,]
    sig<-apply(dat,2,median,na.rm=T)
    data_otherimmune2<-rbind(data_otherimmune2,sig)
    rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]<-"GP2_ImmuneTcellBcell_score"	
    cat(paste(rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]),"\n")		
  }
  
  #####ratios
  
  ##CD8/CD68
  
  if((sum(is.na(data_otherimmune2["CD8A",])==FALSE)>0.1*dim(data_otherimmune2)[2])&(sum(is.na(data_otherimmune2["CD68",])==FALSE)>0.1*dim(data_otherimmune2)[2])){
    CD8<-as.numeric(data_otherimmune2["CD8A",])
    CD68<-as.numeric(data_otherimmune2["CD68",])
    CD8<-(CD8-median(CD8,na.rm=T))/sd(CD8,na.rm=T)
    CD68<-(CD68-median(CD68,na.rm=T))/sd(CD68,na.rm=T)
    ph<-abs(min(min(CD8),min(CD68)))+1
    CD8_CD68_ratio<-log((CD8+ph)/(CD68+ph))
    CD8_CD68_ratio<-CD8_CD68_ratio/sd(CD8_CD68_ratio)
    sig<-CD8_CD68_ratio
    data_otherimmune2<-rbind(data_otherimmune2,sig)
    rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]<-"CD8_CD68_ratio"
    cat(paste(rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]),"\n")
  }
  
  ##TAMsurr_TcClassII_ratio
  
  if((sum(is.na(data_otherimmune2["TAMsurr_score",])==FALSE)>0.1*dim(data_otherimmune2)[2])&(sum(is.na(data_otherimmune2["TcClassII_score",])==FALSE)>0.1*dim(data_otherimmune2)[2])){
    TAMsurr<-as.numeric(data_otherimmune2["TAMsurr_score",])
    TcClassII<-as.numeric(data_otherimmune2["TcClassII_score",])
    TAMsurr<-(TAMsurr-median(TAMsurr,na.rm=T))/sd(TAMsurr,na.rm=T)
    TcClassII<-(TcClassII-median(TcClassII,na.rm=T))/sd(TcClassII,na.rm=T)
    ph<-abs(min(min(TAMsurr),min(TcClassII)))+1
    TAMsurr_TcClassII_ratio<-log((TAMsurr+ph)/(TcClassII+ph))
    TAMsurr_TcClassII_ratio<-TAMsurr_TcClassII_ratio/sd(TAMsurr_TcClassII_ratio)
    sig<-TAMsurr_TcClassII_ratio
    data_otherimmune2<-rbind(data_otherimmune2,sig)
    rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]<-"TAMsurr_TcClassII_ratio"
    cat(paste(rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]),"\n")}
  
  #CD103pos/CD103neg ratio
  CD103pos<-as.numeric(data_otherimmune2["CD103pos_mean_25446897",])
  CD103neg<-as.numeric(data_otherimmune2["CD103neg_mean_25446897",])
  CD103pos<-(CD103pos-median(CD103pos,na.rm=T))/sd(CD103pos,na.rm=T)
  CD103neg<-(CD103neg-median(CD103neg,na.rm=T))/sd(CD103neg,na.rm=T)
  ph<-abs(min(min(CD103pos),min(CD103neg)))+1
  CD103pos_CD103neg_ratio_25446897<-log((CD103pos+ph)/(CD103neg+ph))
  CD103pos_CD103neg_ratio_25446897<-CD103pos_CD103neg_ratio_25446897/sd(CD103pos_CD103neg_ratio_25446897,na.rm=T)
  sig<-CD103pos_CD103neg_ratio_25446897
  data_otherimmune2<-rbind(data_otherimmune2,sig)
  rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]<-"CD103pos_CD103neg_ratio_25446897"
  cat(paste(rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]),"\n")
  
  ####MSIGDB CHANG_SERUM_response_up
  
  i=which(sigs.select.name=="CHANG_CORE_SERUM_RESPONSE_UP") 
  vars<-intersect(sigs.select.ENTREZID.expr.intersect,sigs.select[[i]]$entrezg)
  if(length(vars)>0){
    dat<-data2[vars,]
    sig<-apply(dat,2,median,na.rm=T)
    data_otherimmune2<-rbind(data_otherimmune2,sig)
    rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]<-"CHANG_CORE_SERUM_RESPONSE_UP"
    cat(paste(rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]),"\n")		
  }
  # RWS: 20170914 Comment out, do after all scores calc
  # data_otherimmune2<-round(data_otherimmune2,digits=4) 
  
  
  ####correlation "CSR_Activated_15701700"
  
  i=which(sigs.select.name=="CSR_Activated_15701700") 
  vars<-intersect(sigs.select.ENTREZID.expr.intersect,sigs.select[[i]]$entrezg)
  if(length(vars)>0){
    dat<-data2[vars,]
    wt<-sigs12_weighted_means_eg[[sigs.select.name[i]]][vars]
    dat<-wt*dat
    sig<-apply(dat,2,mean,na.rm=T)
    data_otherimmune2<-rbind(data_otherimmune2,sig)
    rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]<-sigs.select.name[i]
    cat(paste(rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]),"\n")
  }
  
  ##5###########################################
  ####evaluate the signatures calculated as the PCA of the gene block
  
  
  for(i in 1:length(sigs1_2_eg2)){
    
    if(sigs1_2_type2[i]=="PCA"){
      vars<-intersect(sigs.select.ENTREZID.expr.intersect,sigs.select[[i]]$entrezg)
      if(length(vars)>3){
        dat<-data2[vars,]
        d.pca<-prcomp(~ .,data=data.frame(dat),center=F,scale=F,na.action=na.omit)$rotation[,1]
        sig<-(d.pca-mean(d.pca))/sd(d.pca)   #standardize rotation vector
        data_otherimmune2<-rbind(data_otherimmune2,sig)
        rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]<-sigs.select.name[i]
        ##PCA are sign-undetermined, so look to see if should flip sign (if highly anticorrelated with rest of immune genes, multiply by -1)
        sigmean<-apply(dat,2,mean,na.rm=T) #signature if it were mean of genes
        if(cor.test(sigmean,sig)$estimate<(-0.25)){data_otherimmune2[dim(data_otherimmune2)[1],]<-(-1)*data_otherimmune2[dim(data_otherimmune2)[1],]}
        cat(paste(rownames(data_otherimmune2)[dim(data_otherimmune2)[1]]),"\n")
      }
    }
  }  
  
  return(data_otherimmune2)
}


#####################################################################
##########  CALCULATE SIGNATURES ##########
#####################################################################

ExprData.WolfSignatures <- calculate_Wolf_Amara_Signatures_fxn(sigs.select=Wolf_Amara_ImmuneGeneSigs.ls, 
                                                          data2=ExprData.WolfSig.data2.mdCtr, 
                                                          expr.data.ANNO.df=ExprData.mdCtr.filt.anno)
dim(ExprData.WolfSignatures)
# [1]  68 348
head(ExprData.WolfSignatures)

zscore.rows <- function(x){
  return(t(apply(x, 1, function(x) (x - mean(na.omit(x)))/sd(na.omit(x)))))
}
zscore.rows2 <- function(x){
  return(t(apply(x, 1, function(x) (x - median(na.omit(x)))/sd(na.omit(x)))))
}

ExprData.WolfSignatures.meanCtrScl <- round(zscore.rows(ExprData.WolfSignatures),digits=4)
ExprData.WolfSignatures.mdCtrScl <- round(zscore.rows2(ExprData.WolfSignatures),digits=4)



# ###############################################################################
# ########## SAVE WORKSPACE ##########
# ###############################################################################
# 
# # Workspace file name:
# workspace.fileName = 'Calculate_Wolf_Signatures'
# save.image(file.path(getwd(), paste(workspace.fileName,'.RData', sep = "")))


###############################################################################
########## SAVE SIGNATURES ##########
###############################################################################

save(ExprData.WolfSignatures.meanCtrScl, file=file.path(getwd(), "ExprData.WolfSignatures.meanCtrScl.RData"))
save(ExprData.WolfSignatures.mdCtrScl, file=file.path(getwd(), "ExprData.WolfSignatures.mdCtrScl.RData"))

ExprData.WolfSignatures.GeneSYM <- ExprData.mdCtr.filt.anno[ExprData.mdCtr.filt.anno$ENTREZID %in% Wolf_Amara_ImmuneGeneSigs.ls.ENTREZID, c("GeneSYM", "ENTREZID")]
rownames(ExprData.WolfSignatures.GeneSYM) <- NULL

save(ExprData.WolfSignatures.GeneSYM, file=file.path(getwd(), "ExprData.WolfSignatures.GeneSYM.RData"))


sessionInfo()
# R version 3.5.0 (2018-04-23)
# Platform: x86_64-apple-darwin15.6.0 (64-bit)
# Running under: macOS Sierra 10.12.6
# 
# Matrix products: default
# BLAS: /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libBLAS.dylib
# LAPACK: /Library/Frameworks/R.framework/Versions/3.5/Resources/lib/libRlapack.dylib
# 
# locale:
#   [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
# 
# attached base packages:
#   [1] parallel  stats4    stats     graphics  grDevices utils     datasets  methods   base     
# 
# other attached packages:
#   [1] org.Hs.eg.db_3.6.0   AnnotationDbi_1.42.1 IRanges_2.14.12      S4Vectors_0.18.3     Biobase_2.40.0       BiocGenerics_0.26.0 
# 
# loaded via a namespace (and not attached):
#   [1] Rcpp_1.0.4      digest_0.6.25   DBI_1.1.0       RSQLite_2.2.0   rlang_0.4.5     blob_1.2.1      vctrs_0.2.4     tools_3.5.0     bit64_0.9-7     bit_1.1-15.2   
# [11] yaml_2.2.1      compiler_3.5.0  pkgconfig_2.0.3 memoise_1.1.0  

