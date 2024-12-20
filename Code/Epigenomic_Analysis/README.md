## TCGA_PanCancer_Immune_Genetics

Last updated: 03/07/2022

## Epigenomic Analysis

This section describes the mapping of genome-wide significant and suggestive SNPs to the Roadmap Epigenomics Project Epigenomic Expanded 18-state model which uses 6 marks across 98 epigenomes:  https://egg2.wustl.edu/roadmap/web_portal/chr_state_learning.html#exp_18state 
(Roadmap Epigenomics Consortium et al., 2015)


## Citations
Please cite the following when using the data and code contained here in: 
* Sayaman, Saad, Heimann, et al., STAR Protocols (2022). Analytic pipelines to assess the relationship between immune response and germline genetics in human tumors. https://doi.org/10.1016/j.xpro.2022.101809
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011


## Contributors
* Rosalyn W. Sayaman, Ph.D., University of California, San Francisco: rwsayaman@gmail.com
* Acknowledgement: Michele Ceccarelli, Ph.D., University of Naples "Federico II", Istituto di Ricerche Genetiche "G. Salvatore"


## Description
Code contained herein are meant as a guide and should be modified and adapted to match your server specifications and directories.

Authors will not be available to assist with troubleshooting. Please familiarize yourself with the associated scripting languages, and contact your server admin for instructions on the proper format for submitting jobs to your compute cluster and to ensure all necessary programs are installed.


## Required Inputs
* Filtered GWAS Summary Statistics (genome-wide significant p < 5x10-8 and suggestive p < 1x10-6)
* Roadmap Epigenomics Project Expanded 18-state model (6 marks, 98 epigenomes) for Build GRCh37/hg19: https://egg2.wustl.edu/roadmap/web_portal/chr_state_learning.html#exp_18state


## Required Software
* R (https://www.r-project.org/)


## Workflow
**Timing: 1-2 days**

22.	Transform the Immune-Germline GWAS suggestive and genome-wide significant SNPs results table into a GRanges object using the GenomicRanges package in R.
    
    a.	Import the GWAS suggestive and genome-wide significant SNP result table into R.
    b.	Create a unique data frame of SNP IDs, chromosome and base pair positions.
    c.	Convert into GRanges object using the makeGRangesFromDataFrame function in GenomicRanges package.

23.	Iteratively loop and import each Roadmap Epigenomics Project epigenome, and extract epigenomic states that overlap each of the Germline-Immune SNP chromosome and base pair position.
    
    a.	Using rtracklayer package in R, import each epigenome bed file with the annotated Epigenomic Expanded 18-state model.
    b.	At each GRange SNP chromosome and base pair position, extract the corresponding epigenomic state from each epigenome using the mergeByOverlaps function in GenomicRanges package.

24.	Map epigenome IDs to corresponding epigenome descriptions of source cell types and tissue types using the “Roadmap.metadata.qc.jul2013.csv” annotation file.

25.	Annotate epigenetic states with published color schema using “FigureColors.csv” file.

26.	Manually curate immune-associated epigenomes via cell type or tissue of origin (Sayaman et al., 2021) (Table S4).

**Note:** 	Scripts used in this section are available, see the “MapEpigeneticState_ImmuneGermlineSNPs.R” script.



## Expected Outcomes

The output table includes all genome-wide and suggestively significant SNPs annotated with the mapped epigenetic state from the Roadmap Epigenomics Project Expanded 18-state model. Each epigenome ID/epigenome represent a column with entries designating the epigenetic state (numeric and descriptive value) at the SNP chromosome and base pair position (See Table S4, (Sayaman et al., 2021)).


## Limitations 

Epigenomes are tissue- or cell line-specific. Due to cellular heterogeneity of tissue composition, epigenomes represent chromatin states of the bulk population. Interpretation of results should take into account the epigenomes of interest. A specific focus was given to immune-associated epigenomes in the analysis.



