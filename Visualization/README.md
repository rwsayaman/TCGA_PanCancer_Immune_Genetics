# TCGA_PanCancer_Immune_Genetics

Last updated: 03/07/2022

## Description
Germline genetic variants shape immune response and may explain some of the immunological heterogeneity observed across patients’ tumors. We present a workflow to assess the contribution of hosts’ genetic background to the immune landscape of solid tumors using harmonized data from more than 9000 patients enrolled in the TCGA. The protocol is developed around the structure of TCGA, but it can be adapted to explore other repositories, for instance in the context of cancer immunotherapy.

The code and data deposited here were used to generate the results and resource files for the Sayaman, Saad et al., 2021 paper.

Code contained herein are meant as a guide and should be modified and adapted to match your server specifications and directories.


## Citations
Please cite the following when using the data and code contained here in: 
* Sayaman, Saad, Heimann, et al., STAR Protocols (2022). Analytic pipelines to assess the relationship between immune response and germline genetics in human tumors. https://doi.org/10.1016/j.xpro.2022.101809
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011

Please cite the following when downloading the TCGA QC and HRC imputed genotyping data:
* Chambwe, Sayaman, et al., STAR Protocols (2022). Analysis of germline-driven ancestry-associated gene expression in cancers. https://doi.org/10.1016/j.xpro.2022.101586
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011
* Carrot-Zhang et al., Cancer Cell (2020). Comprehensive Analysis of Genetic Ancestry and Its Molecular Correlates in Cancer. https://doi.org/10.1016/j.ccell.2020.04.012
  
Please cite the following when referencing ancestry assignments:
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011
* Carrot-Zhang et al., Cancer Cell (2020). Comprehensive Analysis of Genetic Ancestry and Its Molecular Correlates in Cancer. https://doi.org/10.1016/j.ccell.2020.04.012

Please additionally cite the following when referencing the immune traits:
* Thorsson et al., Immunity (2018). The Immune Landscape of Cancer. https://doi.org/10.1016/j.immuni.2018.03.023


## Code Contributors
* Carolina Heimann, Institute for Systems Biology
* Khalid Kunji, Qatar Computing Research Institute
* Mohamad Saad, Ph.D., Qatar Computing Research Institute: msaad@hbku.edu.qa
* Rosalyn W. Sayaman, Ph.D., University of California, San Francisco: rwsayaman@gmail.com

## Acknowledgment
* David L. Gibbs, Ph.D., Institute for Systems Biology
* Michele Ceccarelli, Ph.D., University of Naples "Federico II", Istituto di Ricerche Genetiche "G. Salvatore"

## Senior Authors
* Davide Bedognetti, Ph.D., Sidra Medicine
* Elad Ziv, Ph.D., University of California, San Francisco


## Contents
Interactive visualization of results
  * CRI iAtlas (https://www.cri-iatlas.org/)
  * PheWeb (https://pheweb-tcga.qcri.org/)

## Interactive visualization of results

* Results of the analysis can be explored interactively with web-based interactive visualizations. 

  * Results of heritability, GWAS, colocalization, and rare variants can be visualized interactively in CRI iAtlas (https://www.cri-iatlas.org/), in the "Germline Analysis" module. CRI iAtlas is a web portal for data exploration of immuno-oncology research (Eddy et al., 2020). 

    * Heritability and GWAS results displayed in iAtlas were collected from the (Sayaman et al., 2021) Supplementary Materials, respectively: 
      
      * TableS3_Heritability Results_v20200106_REVISED_v20201007.xlsx 
      * TableS4_GWAS Results_v20200831_REVISED_v20201008.xlsx

    * Colocalization plots in iAtlas were collected from Figshare 
      
      * GTEX expanded region analysis plots: https://doi.org/10.6084/m9.figshare.13089341 
      * TCGA expanded region analysis plots: https://doi.org/10.6084/m9.figshare.13090031
      * TCGA three level plots: https://doi.org/10.6084/m9.figshare.13708720.v1

    * Rare Variants boxplots in iAtlas are generated from summary statistics computed from the germline data. 

    * Immune traits labels in CRI iAtlas used the annotation in the Thorsson.TableS1.friendlyLabel column from TableS2_Immune Traits_v2020921_REVISED_v20201007.xlsx in the Supplementary Materials.

* Table 1. Summary of figures from the (Sayaman et al., 2021) manuscript that can be reproduced in CRI iAtlas, with a description of available expanded analysis.

  * Figure in Sayaman et al., 2021	Expanded Analysis

    * 2A:	
      * Selection of p-value threshold for inclusion of results. 
      * Visualization of heritability of a given immune trait, immune trait category or immune trait module across different ancestry clusters.
    * 2B:	
      * Selection of p-value threshold for inclusion of results.
    * 3A:	
      * Selection of immune features of interest to include or exclude from the Manhattan plot. 
      * Zoom to region, gene or SNP of interest. 
      * Visualization of genomic regions in IGV tracks. 
      * Link of SNP of interest to external databases (dbSNP, GTEx, GWAS Catalog, DICE, PheWeb).
    * 4A, 4C, 4E, 4G:	
      * Visualization of GWAS hits with -log10p(GWAS) > 6. 
      * Zoom to region, gene or SNP of interest. 
      * Visualization of genomic regions in IGV tracks. 
      * Link of SNP of interest to external databases (dbSNP, GTEx, GWAS Catalog, DICE, PheWeb).
    * 5A:	
      * Selection of immune features of interest to include or exclude from the Manhattan plot. 
      * Zoom to region, gene or SNP of interest. 
      * Visualization of genomic regions in IGV tracks. 
      * Link of SNP of interest to external databases (dbSNP, GTEx, GWAS Catalog, DICE, PheWeb).
    * 5C:	
      * Visualization of GWAS hits with -log10p(GWAS) > 6. 
      * Zoom to region, gene or SNP of interest. 
      * Visualization of genomic regions in IGV tracks. 
      * Link of SNP of interest to external databases (dbSNP, GTEx, GWAS Catalog, DICE, PheWeb).
    * 5D:	
      * No expanded analysis available
    * 6B:	
      * Selection of functional pathway of interest. Summary statistics available for download.

  * A PheWeb tool (https://pheweb-tcga.qcri.org/) was setup to visualize GWAS summary statistics of all tested immune traits (Sayaman et al., 2021). The online tool displays an interactive Manhattan plot for each trait and a summary of the most significant SNPs. Zoom-in and –out options are available to get a closer look at genomic regions, where Linkage Disequilibrium (LD) and gene track are shown. 

## Limitations

The iAtlas Germline Immune module is prepopulated with data and results from . The GWAS section of iAtlas provides visualization of significant GWAS hits (p-value < 10-6), and colocalization results with Colocalization Posterior Probability higher than 0.01.

In PheWeb Gene tracks represent the physical start and end of a gene, and does not imply any “causal” relationship with the SNP in question. Ancestry used to compute LD can be specified by the user (European, African, South Asian, etc.). SNP significance can be also shown for a specific SNP across all tested traits. External resources for SNPs can be accessed from PheWeb (e.g., GWAS Catalog, dbSNP, etc).

## Troubleshooting
For issues with installation of iAtlas , see troubleshooting guide on the software website https://github.com/CRI-iAtlas/iatlas-app.
