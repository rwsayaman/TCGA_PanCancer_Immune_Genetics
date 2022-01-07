TCGA_PanCancer_Immune_Genetics
Immune Traits: Wolf et al., 2014, Amara et al., 2017 Gene Expression Immune Signatures
Please cite Sayaman, Saad et al., Immunity 2021 when using the data and code contained here in.

Please additionally cite: Wolf et al., and Amara et al., when using code to calculate gene expression immune signatures from Wolf et al. and Amara et al.

Citations
Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011
Wolf et al., PLoS ONE (2014). Gene co-expression modules as clinically relevant hallmarks of breast cancer diversity. https://doi.org/10.1371/journal.pone.0088309
Amara et al., Breast Cancer Res Treat (2017). Co-expression modules identified from published immune signatures reveal five distinct immune subtypes in breast cancer. https://doi.org/10.1007/s10549-016-4041-3
Contributors
Rosalyn W. Sayaman, Ph.D., University of California, San Francisco: rwsayaman@gmail.com
Denise Wolf, Ph.D., University of California, San Francisco
Description
Code contained herein are meant as a guide and should be modified and adapted to match your server specifications and directories.

Authors will not be available to assist with troubleshooting. Please familiarize yourself with the associated scripting languages, and contact your server admin for instructions on the proper format for submitting jobs to your compute cluster and to ensure all necessary programs are installed.

Required Software
R (https://www.r-project.org/)
Workflow
Prepare ExprData gene expression matrix with gene symbols as rows and sample ids as columns in R.

Save ExprData gene expression matrix as a .RData file: ExprData.RData as input file for signature calculation.

Set working directory and run the Calculate_Wolf_Signatures.R script. This takes ExprData.RData expression matrix file and performs the following:

a. Performs median centering of the ExprData gene expression matrix. Ouput variable: ExprData.mdCtr.

b. Maps the gene symbols to entrez ids using the org.Hs.eg.db database. Ouput column: EntrezID.

c. Filters and annotates the ExprData gene expression matrix based on entrez ids. Ouput variable: ExprData.mdCtr.filt.

d. Prepares data for immune signature calculation. Output variable: ExprData.WolfSig.data2.mdCtr

e. Calculates immune signatures. Output variable: ExprData.WolfSignatures.

f. Performs either mean centering and scaling (sd) or median centering and scaling (sd) of the immune signatures. Output variable: ExprData.WolfSignatures.meanCtrScl or ExprData.WolfSignatures.mdCtrScl.

g. Saves signatures and original gene symbols a .RData file. Ouput data: ExprData.WolfSignatures.meanCtrScl or ExprData.WolfSignatures.mdCtrScl, and ExprData.WolfSignatures.GeneSYM.
