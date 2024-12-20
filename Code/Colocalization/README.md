## TCGA_PanCancer_Immune_Genetics

Last updated: 03/07/2022

## Colocalization with eCaviar and manual curation of the expanded region

This section describes colocalization analysis performed with eCAVIAR. This analysis was performed using TCGA and GTEx gene expression data. This analysis requires four input files: (1) GWAS summary statistics, (2) eQTL summary statistics, (3) LD matrix computed with GWAS data, and (4) LD matrix computed with genotype data used for eQTL analysis.

## Citations
Please cite the following when using the data and code contained here in: 
* Sayaman, Saad, Heimann, et al., STAR Protocols (2022). Analytic pipelines to assess the relationship between immune response and germline genetics in human tumors. https://doi.org/10.1016/j.xpro.2022.101809
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011


## Contributors
* Rosalyn W. Sayaman, Ph.D., University of California, San Francisco: rwsayaman@gmail.com
* Mohamad Saad, Ph.D., Qatar Computing Research Institute: msaad@hbku.edu.qa
* Donglei Hu, Ph.D., University of California, San Francisco


## Description
Code contained herein are meant as a guide and should be modified and adapted to match your server specifications and directories.

Authors will not be available to assist with troubleshooting. Please familiarize yourself with the associated scripting languages, and contact your server admin for instructions on the proper format for submitting jobs to your compute cluster and to ensure all necessary programs are installed.


## Workflow
**Timing: 1 week**

29.	TCGA Analysis

    a.	 Create a file to determine SNP-gene-trait to be tested for colocalization. Run R script DetermineRegions.R. This script reads eQTL results and keeps SNP-gene eQTL FDR p-value < 0.1. Output of this script will be a file that contains 5 columns: chromosome, position, gene name, trait, and SNP significance (GW or suggestive).
    
    b.	 For each SNP-gene pair, run eQTL analysis between the SNP and the gene, and also between the 200 extra SNPs centered at the selected SNP and the gene. Use R script “RunEQTL.sh”. This script creates a folder for each SNP-gene pair. It extracts the list of 201 SNPs, calculates LD matrix (plink --bfile EXTRACTED --r square --out EXTRACTED), and performs GWAS and eQTL association analysis using eQTL.R R script. eQTL.R script outputs two files: one for GWAS and one for eQTL analysis containing the z-score, beta, and p-value.
    
    c.	Run eCAVIAR using “RunECAVIAR.sh” script. It calls eCAVIAR as follows: eCAVIAR -o coloc_c1.out -l EXTRACTED.ld -l EXTRACTED.ld -z GWAS.z -z eQTL.z -f 1 -c 1. The GWAS.z and eQTL.z are the z-score produced in the previous step. EXTRACTED.ld is a 1-line file that contains the LD between the selected SNP and the 200 SNPs surrounding it (100 SNP to the left and 100 SNPs to the right). The -c flag indicates the number of causal variants assumed in the model (Model was run twice assuming 1 and 2 causal variants). The output that contains the CLPP for each SNP (total of 201 SNPs) is coloc_c1.out_col.
    
    d.	The same strategy is conducted for sQTL results.

30.	GTEX Analysis

    a.	Run the R script “r_match_tcga_gtex.txt” to match the effect allele between GTEx eQTL/sQTL results and TCGA GWAS results. It then calculates Z scores for both GTEx eQTL/sQTL and TCGA GWAS results

    
    b.	This R script requires 4 input files:

    i.	A table for index SNPs. The 1st column should be SNP ID and the 3rd column should be base-pair position in build 38
    
    ii.	A list of GTEx eQTL/sQTL results. Each line is the name of a GTEx eQTL/sQTL result. The last part of the file name should be "_ rsid.txt". Each GTEx eQTL/sQTL result file has the following columns: gene_id, variant_id, tss_distance, ma_samples, ma_count, maf, pval_nominal, slope, and slope_se.
    
    iii.	A plink bim file for TCGA genotype data. It has the following columns: chromosome, SNP ID, genetic distance, base-pair position, minor allele, and major allele.
    
    iv.	A GWAS result file for TCGA. It has the following columns: chr:bp, CHR, SNP ID, BP, A1, A2, Genotyped, Rsq, AvgCall, MAF, Stratified.Freq, NCHROBSTEST, NMISS, BETA, STAT, and P.

    
    c.	This R script generates 6 output files:

    i.	Z score for GTEx eQTL/sQTL result
    
    ii.	Z score for TCGA GWAS result
    
    iii.	The list of SNPs in GTEx eQTL/sQTL result
    
    iv.	The list of SNPs in TCGA GWAS result

    v.	The list of SNPs and effect alleles in GTEx eQTL/sQTL result

    vi.	The list of SNPs and effect alleles in TCGA GWAS result

    
    d.	Output files iii-vi will be used to generate LD matrix for eCAVIAR. Output files i and ii will be used directly for eCAVIAR.

    e.	Run plink commands to generate numeric genotype data for GTEx and TCGA for SNPs that were extracted as output files iii and iv from the previous step.

    i.	Run the python script “make_plink_command_gtex.py” and “make_plink_command_tcga.py” to generate plink commands for GTEx and TCGA separately.  The output is a Linux bash file that contains a number of plink commands.

    ii.	Run the bash file from step i.
    
    * Example for GTEx
    
      I.	plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000005801_Nerve_Tibial_ZNF195_rs7951724.txt --make-bed --out temp_gtex
      II.	plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000005801_Nerve_Tibial_ZNF195_rs7951724.txt 2 1 --recode A --out Geno_gtex_ENSG00000005801_Nerve_Tibial_ZNF195_rs7951724

    * Example for TCGA
      
      I.	plink --bfile /wynton/scratch/dhu/tcga_geno/tcga_imputed_hrc1.1_noMissnp_b38_chr11 --extract snps_tcga_ENSG00000005801_Nerve_Tibial_ZNF195_rs7951724.txt --make-bed --out temp_tcga
      II.	plink --bfile temp_tcga --a1-allele snps_alt_tcga_ENSG00000005801_Nerve_Tibial_ZNF195_rs7951724.txt 2 1 --recode A --out Geno_tcga_ENSG00000005801_Nerve_Tibial_ZNF195_rs7951724

    f.	Run the R scripts r_cor_gtex.txt and r_cor_tcga.txt to calculate Pearson correlation coefficients for each pair of SNPs in GTEx and TCGA genotype data. There are 2 input files for each R script. The 1st one is the genotype file that was generated from the previous step. The 2nd one is the file with SNP ID and alternate allele. This file was generated as the output file 5 or 6 in the step for running r_match_tcga_gtex.txt
    
    g.	Run eCAVIAR assuming 2 causal SNPs
    
    i.	Run the python script make_ecaviar.py to generate commands to run eCAVIAR.  The output is a Linux bash script that contains a number of eCAVIAR commands.
    
    ii.	Run the Linux bash script from step i.
    
    * Example
      
      I.	eCAVIAR -l Cor_tcga_ENSG00000281491_Minor_Salivary_Gland_DNAJB5-AS1_rs72729406.txt -l Cor_gtex_ENSG00000281491_Minor_Salivary_Gland_DNAJB5-AS1_rs72729406.txt -z Result_tcga_ENSG00000281491_Minor_Salivary_Gland_DNAJB5-AS1_rs72729406.txt -z Result_gtex_ENSG00000281491_Minor_Salivary_Gland_DNAJB5-AS1_rs72729406.txt -c 2 -f 1 -o Result_eCAVIAR_c2_ENSG00000281491_Minor_Salivary_Gland_DNAJB5-AS1_rs72729406.txt


**Note:** All programming scripts for GTEx were run on the High-Performance Computing (HPC) Cluster Wynton in UCSF (https://wynton.ucsf.edu/hpc/).  An example of script for submitting jobs on the cluster is qsub_run_plink_gtex.txt.  The command for submitting the job is qsub qsub_run_plink_gtex.txt  Depending on the setup of the HPC cluster, the user might need to consult the cluster administrator on how to set up this script.


## Expected Outcomes

Colocalization output table includes all genome-wide and suggestively significant SNPs and associated germline-immune GWAS summary stats from our study, the GTEx or TCGA QTL summary stats, and the E-Caviar statistics which include: CLPP value for 1 causal SNP; regional CLPP value for 1 causal SNP; CLPP value for 2 causal SNP; regional CLPP value for 2 causal SNP; and the maximum CLPP value from 1 or 2 causal SNPs analysis or regional CLPP analysis. Finally, statistics from counter-evidence SNP colocolization analysis are included that gives the counter SNP’s ID, rsID, GTEx or TCGA QTL p-value, germline-immune GWAS p-value, and distance to the QTL TSS; the -log10 QTL p-value of the index SNP and counter SNP, and difference between these values (delta Counter SNP-Index SNP); and the curated expanded range colocalization evidence assessment. See Table S5, (Sayaman et al., 2021). 


## Limitations

Our protocol performed colocalization within a 200 SNP window (+/- 100 from the index SNP.)  In some cases, we observed that there were SNPs outside of that window that had better association with gene expression but weaker or no association with the immune trait. Therefore, we also performed a manual inspection of the entire locus (1 MB for eQTLs, 500 KB for sQTLs). We only performed this expanded region analysis of colocalization if there was plausible evidence of colocalization (eCAVIAR posterior probability of >0.01) for the 200 SNP window. This expanded region analysis was intended to provide a more stringent criteria. 

To perform these we plotted the negative log p value of association with the immune trait for each SNP in the region on the X-axis and the negative log p value for association with the relevant gene expression (for eQTL analysis) or splicing event (for sQTL analysis.). If we found additional SNPs outside of the 200 BP window and they demonstrated a stronger effect for association with gene expression or the sQTL and weaker association with the index SNP, we developed additional criteria for colocalization. If we identified one or more SNPs outside of the window that had a –log10p value with expression or splicing that was >1.5 than the index SNP, we considered that as negative evidence for colocalization. If the SNP/s with stronger evidence for eQTL or sQTL association had a –log10p value that was <=1.5 compared with the index SNP, we considered the evidence for colocalization as “intermediate.” Finally, if we found no other SNP in the entire region with strong eQTL or sQTL that had a better p value than the index SNP and the eCAVIAR results gave a posterior probability of colocalization of >0.01, we considered the evidence to be “strong.”  

Although we used this manual second step in addition to eCAVIAR an alternative approach would have been to use COLOC (Giambartolomei et al., 2014).This package has the disadvantage that linkage disequilibrium is not explicitly modeled (unlike eCAVIAR.)

Within the TCGA dataset, colocalization was performed on a pan-cancer level. This analysis can be conducted on each cancer type separately, assuming that GWAS and eQTL analyses are also performed for each cancer type separately. Low sample size can be a limiting factor for the per-cancer analysis. 
 

## Troubleshooting

### Problem:

Cannot load software or run scripts on the high-performance compute server. Implementation of provided GitHub code produces error.

#### Potential solution: 

Consult your institution’s IT or compute cluster administrator for proper installation of necessary software including all need libraries based on the high-performance compute environment. Ensure that the proper software versions, including all libraries and dependencies, are installed. Software implementation may be version specific, the versions used in the protocol are provided to ensure reproducibility. 

Job submission scripts are dependent on the resource allocation management system. Provided code should be considered as a guide. Adjust parameters based on cluster capabilities and specifications. Job submission scripts are dependent on the resource allocation management system. E.g. the provided GitHub codes for heritability analysis and GWAS were optimized for the high-performance compute environment resources; consult your system administrator to adapt the provided code to your system. 

For reference, eQTL and sQTL analysis in Sayaman et al., Immunity 2021 was run in either: 

1. the UCSF Wynton HPC, which currently contains 449 nodes with over 12572 Intel CPU cores and 42 nodes containing a total of 148 NVIDIA GPUs;
2. the original UCSF TIPCC HPC cluster (now C4), which had 8 communal compute nodes and 1 dedicated node, each with12 to 64 cores (Each node had from  64 to 512 GiB of RAM and at least 1.8 TiB of fast local disk space); 
3. two additional severs with 32 and 48 CPUs (Intel(R) Xeon(R) CPU E5-2650 0 @ 2.00GHz), respectively.


### Problem:

The genomic coordinates were different in the original TCGA and GTEx data. TCGA data were in Build 37 (GRCh37) but the GTEx data were in build 38 GRCh38. 

#### Potential solution: 

The TCGA data were in Genome Reference Consortium Human Build 37 (GRCh37) but the GTEx data were in GRCh38.  We converted the genomic coordinates in TCGA from GRCh37 to GRCh38 using liftOver (https://genome-store.ucsc.edu/) so these 2 data sets can be compared. 
