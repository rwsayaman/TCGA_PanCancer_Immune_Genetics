## TCGA_PanCancer_Immune_Genetics

## Ancestry-specific Heritability Analysis: Genome-wide complex trait analysis (GCTA) using genome-based restricted maximum likelihood (GREML)

Please cite Sayaman, Saad et al., Immunity 2021 when using the data and code contained here in. 

Please additionally cite: Thorsson et al., Immunity 2018 when referencing the immune traits; and Carrot-Zhang et al., Cancer Cell 2020 when referencing ancestry assignments.


## Citations
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011
* Thorsson et al., Immunity (2018). The Immune Landscape of Cancer. https://doi.org/10.1016/j.immuni.2018.03.023
* Carrot-Zhang et al., Cancer Cell (2020). Comprehensive Analysis of Genetic Ancestry and Its Molecular Correlates in Cancer. https://doi.org/10.1016/j.ccell.2020.04.012


## Contributors
* Rosalyn W. Sayaman, Ph.D., University of California, San Francisco: rwsayaman@gmail.com


## Description
Code contained herein are meant as a guide and should be modified and adapted to match your server specifications and directories.

Authors will not be available to assist with troubleshooting. Please familiarize yourself with the associated scripting languages, and contact your server admin for instructions on the proper format for submitting jobs to your compute cluster and to ensure all necessary programs are installed.


## Required Inputs
* Sample files by ancestry
* Covariate files
* Immune traits (transformed)


## Required Software
* GCTA (1.91.2beta)


## Workflow
# Heritability Analysis   

Timing: 2 weeks 

Heritability analysis on 139 traits is conducted using a mixed-model approach implemented in genome-wide complex trait analysis (GCTA) with the genomic-relatedness-based restricted maximum-likelihood (GREML) method (Yang et al., 2010, 2011). This calculates the proportion of immune trait variation that is attributable to common genetic variants (% Heritability). Refer to the GCTA website for details (https://cnsgenomics.com/software/gcta) 

 

1. Format immune trait input file: 

i. Formatted input file of TCGA immune traits is provided in the [Sayaman, Saad et al., 2021] GitHub repository: 

* Immune.pheno.139.source.coded.TCGAID.9769.txt 

2. Identify genetic ancestry assignment of each individual and create a filtered sample list for each genetic ancestry cluster: 

i. Ancestry assignments for each TCGA individual are provided in Table S1. TCGA Sample List Used in the Analysis from [Sayaman, Saad et al., 2021]. 

ii. Formatted input file of TCGA patient barcodes assigned to each genetic ancestry cluster is provided in the [Sayaman, Saad et al., 2021] GitHub repository: 

* TCGAID_Cluster1.EUR.8036.txt 

* TCGAID_Cluster2.ASIAN.605.txt 

* TCGAID_Cluster3.AFR.904.txt 

* TCGAID_Cluster4.AMR.222.txt 

3. To conduct heritability analyses within each ancestry subgroup (NEuropean=7,813, NAfrican=863, NAsian=570, and NAmerican=209 individuals), subset individuals belonging to specified ancestry group from the filtered TCGA HRC imputed genotyping data in PLINK (--keep) using ancestry assignments. 

* plink --bfile [input file]  

* --keep [ancestry cluster sample file list]  

* --make-bed  

* --out [output filename] 

* See: " “qsub_plink_whitelist_geno_mind_unique.indv_chr.auto_hardy.nonriskSNP_maf_uniqueSNP_TCGAID_ancestry.txt " 

 

Note: Analysis is automatically run on samples with complete data. A subset of the defined samples within each genetic ancestry cluster are automatically skipped due to missing data (e.g. immune trait or covariate values). 

 

4. Calculate genetic relatedness matrix in each ancestry group in GCTA: 

* gcta64 --bfile [input filename] 

* --autosome  

* --maf 0.01  

* --make-grm  

* --out [output filename]  

* --thread-num [numeric value for number of threads] 

* See: "qsub_gcta_whitelist_geno_mind_unique.indv_chr.auto_hardy.nonriskSNP_maf_uniqueSNP_TCGAID_ancestry_grm.txt" 

5. Filter out individuals for relatedness (cut-off = 0.05), see: 

* gcta64 --grm [input filename]  

* --grm-cutoff 0.05  

* --make-grm  

* --out [output filename] 

6. Run GCTA GREML unconstrained (using default algorithm: Average Information) to estimate variance explained by SNPs with defined categorical and continuous covariates using the following parameters: 

* gcta64 --reml-no-constrain  

* --grm [input filename]  

* --pheno [immune trait matrix filename]  

* --mpheno [numeric index of immune trait in input matrix] 

* --covar [categorical covariates filename]  

* --qcovar [continous covariates filename] --thread-num [numeric value for number of threads] 

*  --out [output filename] 

* See: "qsub_grm.cutoff.0.05_greml_EUR.ImmunePheno216_CancerTypeSex.covar_PCA.AgeYears.qcovar.txt" 

 
Note: 	Scripts used in this section are available at:  

https://github.com/rwsayaman/TCGA_PanCancer_Immune_Genetics 

 

# Limitations 

For immune traits heritability estimates run via GCTA GREML, the GCTA FAQ (https://cnsgenomics.com/software/gcta/#FAQ) states that at least 3,160 samples from unrelated individuals are needed to get estimates with standard errors (SEs) down to 0.1 for common SNPs. Only the European ancestry group meets this criteria. Nonetheless, heritability estimates were run in the smaller sized ancestry groups with expectation of large SEs to provide preliminary analyses of immune traits in ancestry groups that are not well studied or sampled. 
