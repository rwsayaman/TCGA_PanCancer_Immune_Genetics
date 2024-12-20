## TCGA_PanCancer_Immune_Genetics

## Immune Traits
The workfflow and code provided calculates immune signatures from gene expression profiles as described in Wolf et al. PLoS ONE 2014, and Amara et al. Breast Cancer Res Treat 2017.


## Citations
Please cite the following when using the data and code contained here in: 
* Sayaman, Saad, Heimann, et al., STAR Protocols (2022). Analytic pipelines to assess the relationship between immune response and germline genetics in human tumors. https://doi.org/10.1016/j.xpro.2022.101809
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011

Please additionally cite the following when using code to calculate gene expression signatures from Wolf et al. and Amara et al.:
* Wolf et al., PLoS ONE (2014). Gene co-expression modules as clinically relevant hallmarks of breast cancer diversity. https://doi.org/10.1371/journal.pone.0088309
* Amara et al., Breast Cancer Res Treat (2017). Co-expression modules identified from published immune signatures reveal five distinct immune subtypes in breast cancer.  https://doi.org/10.1007/s10549-016-4041-3


## Contributors
* Denise Wolf, Ph.D., University of California, San Francisco
* Rosalyn W. Sayaman, Ph.D., University of California, San Francisco: rwsayaman@gmail.com


## Description
Code contained herein are meant as a guide and should be modified and adapted to match your server specifications and directories.

Authors will not be available to assist with troubleshooting. Please familiarize yourself with the associated scripting languages, and contact your server admin for instructions on the proper format for submitting jobs to your compute cluster and to ensure all necessary programs are installed.


## Required Software
* R (https://www.r-project.org/)
* Bioconductor package: org.Hs.eg.db (https://bioconductor.org/packages/release/data/annotation/html/org.Hs.eg.db.html)


## Workflow
1. Prepare `ExprData` gene expression matrix with gene symbols as rows and sample ids as columns in R.

2. Set working directory and save `ExprData` gene expression matrix as a .RData file: `ExprData.RData` as input file for signature calculation.

3. Run the `Calculate_Wolf_Signatures.R` script. This takes performs the following:

    a. Loads `ExprData.RData` expression matrix file from working directory. 
    
    b. Performs median centering of the `ExprData` gene expression matrix. Ouput variable: `ExprData.mdCtr`.

    c. Maps the gene symbols to entrez ids using the org.Hs.eg.db database. Ouput column: `EntrezID`.

    d. Filters and annotates the `ExprData.mdCtr` gene expression matrix based on entrez ids. Ouput variable: `ExprData.mdCtr.filt`.

    e. Prepares data for immune signature calculation. Output variable: `ExprData.WolfSig.data2.mdCtr`

    f. Calculates immune signatures. Output variable: `ExprData.WolfSignatures`.

    g. Performs either mean centering and scaling (i.e. standard deviations scaled to one) or median centering and scaling of the immune signatures. Output variable: `ExprData.WolfSignatures.meanCtrScl` or `ExprData.WolfSignatures.mdCtrScl`.

    h. Saves signatures and original gene symbols as .RData files to working directory. Ouput data: `ExprData.WolfSignatures.meanCtrScl` or `ExprData.WolfSignatures.mdCtrScl`, and `ExprData.WolfSignatures.GeneSYM`.
