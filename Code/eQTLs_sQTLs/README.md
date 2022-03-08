## TCGA_PanCancer_Immune_Genetics

Last updated: 03/07/2022

## Expression and splicing quantitative trait locus analysis (eQTLs and sQTL)

This section describes eQTL and sQTL analysis in TCGA and GTEx data. For GTEx data, eQTL summary statistics across tissues were downloaded from https://gtexportal.org/home/index.html. For the TCGA dataset, the gene expression matrix was downloaded from  https://gdc.cancer.gov/about-data/publications/pancanatlas and analysis was conducted locally.

## Citations
Please cite Sayaman, Saad et al., Immunity 2021 when using the data and code contained here in. 
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

27.	TCGA Analysis

    a.	eQTL

    i.	Download gene expression matrix: EBPlusPlusAdjustPANCAN_IlluminaHiSeq_RNASeqV2.geneExp.tsv

    ii.	Download genes’ starts, ends, and types (i.e., protein coding, pseudogenes, miRNA, etc) from biomart from https://grch37.ensembl.org/biomart/martview/. Required columns from the mart_report.txt output files are: Chromosome, Start, End, and Gene type.

    iii.	Transpose the gene expression matrix. This can be run with R script OrganizeRNAMatrix.R.

    iv.	 Run association analysis between genome-wide and suggestive SNPs and genes within 1MB using a linear regression model accounting for PC1-7, Sex, Age, and Cancer Type (Table S1) (Sayaman et al., 2021). This can be achieved using the script eQTLanalysis.R. This script also runs eQTL analysis for the 30 cancers separately.

    v.	Summarize outcome: results will have the following: chromosome, position, gene name, distance from gene, pan-cancer sample size, pan-cancer effect size, pan-cancer p-value, and then the same information repeated for each cancer type.


    b.	sQTL

    i.	Download 5’, 3’, exon skipping, intron retention, and mutually exclusive exon splice events data from https://gdc.cancer.gov/about-data/publications/PanCanAtlas-Splicing-2018.

    ii.	Organize the data input and format it for SNP-splicing event association analysis. Use script PrepareData.sh. This script keeps the genes that mapped to the most significant SNPs (i.e. Suggestive and GW). Example: grep –f ListGenes.txt splice3prime > Data_3prime. It creates two more files that contain TCGA subject IDs, and splicing event IDs and types. It finally runs an R script Analyze.R that performs association analysis between SNP genotypes and splicing events using linear regression model accounting for PC1-7, Sex, Age, and Cancer Type (for pan-cancer analysis only).

    iii.	Summarize outcome,  An output file containing association results as follows: chromosome, position, ensemble ID, gene name, splicing event ID


28.	GTEX Analysis

    a.	Convert all GWAS suggestive and genome-wide significant SNP chromosome and base pair positions from build GRCh37 to build GRCh38 to match GTEx annotation.

    i.	Import the GRanges object of SNP chromosome and base pair positions from 13.

    ii.	Load the chain file 'AH14150' for Homo sapiens rRNA hg19 to hg38 from the AnnotationHub package in R.

    iii.	Convert SNP chromosome and base pair positions from build GRCh37 to build GRCh38 using the liftOver function in the rtracklayer package in R. 

    **Note:** See: “GWAS.SNPs_liftOver.GRCh38_extended.r” script.


    b.	eQTL

    i.	From each tissue type, extract only GTEx eQTL SNP results that match the GWAS SNP GRCh38 chromosome and base pair position. The output is an R object of GTEx eQTL for suggestively significant variants.

    **Note:** See: “GTEx.eQTL.all.assoc_extract_GWAS.sugg.SNPs.server.r” script.

    ii.	Concatenate filtered GTEx eQTL files from each tissue corresponding to the GWAS suggestively significant variants 

    *	Iteratively load, annotate with tissue source, extract GRCh38 chromosome and base pair position from variant ID, and append each file into a single data frame in R.

    iii.	Calculate the false discovery rate (FDR) per variant across all genes and all tissues.

    iv.	Using the GTEx Ensembl IDs, map to gene symbol and Entrez IDs using the EnsDb.Hsapiens.v86 package in R. 

    v.	Merge with Immune-Germline SNP annotation.

    vi.	Extract GTEx eQTL results for variant-gene pairs with an FDR < 0.05 in at least one tissue. Exclude the HLA and IL17R locus which are simple eQTLs.

    vii.	Optional: Visualize results by plotting the GTEx eQTL -log10 FDR p-value against the distance from the TSS (“tss_distance”).

    **Note:** See: “GTEx.eQTL.all.assoc_processResults_GWAS.sugg.SNPs_extended.r” and “GTEx.eQTL.all.assoc_processResults_GWAS.sugg.SNPs_1mb_extended_plot.r” scripts.


    c.	sQTL

    i.	From each tissue type, extract only GTEx sQTL SNP results that match the GWAS SNP GRCh38 chromosome and base pair position. The output is an R object of GTEx eQTL for suggestively significant variants.

    *	Run the Linux bash script “run_split_sqtl.sh”.  Each GTEx sQTL file is very large.  This step separates the large GTEx sQTL file into a number of small files.  The input of this script is a list of file names for GTEx sQTL.  Each line of this input file is a file name for GTEx sQTL.  The script generates a number of small files for each original GTEx sQTL file.

    *	Run the R script “r_extract.txt”.  This script takes 2 input files.  One is an R object for GWAS suggestively significant variants.  The other input file is the GTEx sQTL file generated from the previous step.  The output is an R object of GTEx sQTL for suggestively significant variants.

    ii.	Concatenate filtered GTEx sQTL files from each tissue corresponding to the GWAS suggestively significant variants 

    *	Iteratively load, annotate with tissue source, extract GRCh38 chromosome and base pair position from variant ID, and append each file into a single data frame in R.

    iii.	For sQTL, limit analysis to +/- 500KB region

    *	Filter the resulting concatenated GTEx sQTL file using the absolute value of the “tss_distance”, set a threshold ≤ 500,000 bp.

    iv.	Calculate the false discovery rate (FDR) per variant across all genes and all tissues.

    v.	Using the GTEx Ensembl IDs, map to gene symbol and Entrez IDs using the EnsDb.Hsapiens.v86 package in R. 

    vi.	Merge with Immune-Germline SNP annotation.

    vii.	Extract GTEx sQTL results for variant-gene pairs with an FDR < 0.05 in at least one tissue. Exclude the HLA and IL17R locus which are simple eQTLs.

    viii.	**Optional:** Visualize results by plotting the GTEx sQTL -log10 FDR p-value against the distance from the TSS (“tss_distance”).

    **Note:** See: “GTEx.sQTL.all.assoc_processResults_GWAS.sugg.SNPs_500kb _extended.r” and “GTEx.sQTL.all.assoc_processResults_GWAS.sugg.SNPs_500kb_extended_plot” scripts.

**Note:** 	Scripts used in this section are available at: 
https://github.com/rwsayaman/TCGA_PanCancer_Immune_Genetics. 


## Expected Outcomes

Output files for eQTL will have the following: chromosome, position, gene name, distance from gene, pan-cancer sample size, pan-cancer effect size, pan-cancer p-value, and then the same information repeated for each cancer type.

Output file for sQTL will contain association results as follows: chromosome, position, ensemble ID, gene name, splicing event ID.


## Limitations

GTEx data are derived from normal, tissue-specific samples; QTLs may capture features of normal tissue and those associated with specific to certain tissue types. TCGA data are cancer-specific; QTLs may capture features associated only with specific cancers. Both GTEx and TCGA include expression from bulk tissues and so may miss eQTLs from cells that represent a small fraction of the tissue. Single cell RNA-seq is likely more robust for these types of analyses. Single cell RNA-seq is currently not available from TCGA or GTEx but in the future, as it becomes available, these eQTL analyses could be repeated to identify more variants colocalizing with certain genes and/or to determine cell-specific eQTLs.


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
