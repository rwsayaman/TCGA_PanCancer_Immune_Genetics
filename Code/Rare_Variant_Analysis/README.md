# TCGA_PanCancer_Immune_Genetics




# Rare variant burden association analysis for Germline cancer mutations with immune traits
Rare variant analysis was based on TCGA germline WES data. We selected pathogenic and likely pathogenic variants that were identified by Huang KL et al, Cell, 2018 within 99 genes. We collapsed these variants within each gene. Then each gene was assigned to a pathway, and gene burden of rare variants were then collapsed to form a pathway burden of rare variants. Association was tested between immune traits and both pathway and gene burden of rare variants. Linear regression was performed for continuous traits (with or without log10 transformation) and logistic regression was performed for dichotomized traits. Several covariates were included in the model: Age, Sex, PC1-7, and Cancer Type.

## R script for association analysis
Analysis was performed using R version 3.5.2 (https://cran.r-project.org/). R script `RareVariantAnalysis.R` is attached with input and output examples. 

Seven ```input files``` are required:
1. Phenotype file (```PhenoFile.csv```): This file contains the subject IDs, all immune traits, and covariates. The file's header indicate the name of each column. 

2. Genotype data for collapsed variants within genes (```BurdenRareVariants.txt```): the first 2 columns of this file are the subjects IDs, and the remaining 99 columns are for the studied genes (this indicates the number of rare allele for each subject within each gene on all selected pathogenic variants).

3. List of phenotypes to be tested (```ListPheno.txt```): This is a one column file that contains the phenotype name to be extracted from the Phenotype file. 

4. List of phenotypes where log transformation will be applied (```ToLog.txt```): This is a one column file that contains the phenotype name to be log10 transformed prior to association analysis.

5. List of phenotypes for which cancer type will be omitted from the covariate list (```ToOmitCancerType.txt```): This is a one column file that could be left empty if cancer type will be included as covariate for all phenotypes.

6. List of binary traits (```BinaryPheno.txt```): This is a one column file as well with the name of binary phenotypes.

7. List of pathways to be studied (```ListPathway.txt```): This file does not contain a header. A row has the following format: PathwayName PathwayType Gene1,Gene2,etc.; eg., Cell_cycle D RB1,CDKN1B,CDKN2A,BUB1B,DOCK8

Three ```output files``` will be produced:
1. A summary for each pathway with the number of genes and total number of rare variants within each pathway (```SummaryPathway.txt```). 

2. Result file for pathway-level of burden association analysis (```PathwayResults.txt```).
```
PathwayName     PathwayType Phenotype                                          BurdenVariants  SampleSize  Beta   Pvalue
Androgen_receptor D MANTIS_score                                               4               9017        0.4851 3.190618e-06
Androgen_receptor D Core56.Cell.Proportion_B.Cells.Memory_Binary.MedianLowHigh 4               8429       -0.3977 0.74786081
.....
```

3. Result file for gene-level of burden association analysis (```GeneResults.txt```).
```
GeneName     Phenotype                                  BurdenVariants  SampleSize  Beta    Pvalue
BRCA1 MANTIS_score                                               82     9017        0.02176 0.289766657494491
BRCA1 Core56.Cell.Proportion_B.Cells.Memory_Binary.MedianLowHigh 82     8429       -0.33800 0.215289215338016
.....
```



## Contact

Mohamad Saad, Ph.D., Qatar Computing Research Institute
msaad@hbku.edu.qa
