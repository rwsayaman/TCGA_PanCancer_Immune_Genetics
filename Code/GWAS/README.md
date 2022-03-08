## TCGA_PanCancer_Immune_Genetics

Last updated: 03/07/2022

## Genome-wide Association Studies (GWAS)

GWAS were performed on traits that we found to have significant heritability since these would be most likely driven by common genetic variants. 

## Citations
Please cite Sayaman, Saad et al., Immunity 2021 when using the data and code contained here in. 
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011

Please additionally cite: Thorsson et al., Immunity 2018 when referencing the immune traits.
* Thorsson et al., Immunity (2018). The Immune Landscape of Cancer. https://doi.org/10.1016/j.immuni.2018.03.023


## Contributors
* Rosalyn W. Sayaman, Ph.D., University of California, San Francisco: rwsayaman@gmail.com
* Donglei Hu, Ph.D., University of California, San Francisco


## Description
Code contained herein are meant as a guide and should be modified and adapted to match your server specifications and directories.

Authors will not be available to assist with troubleshooting. Please familiarize yourself with the associated scripting languages, and contact your server admin for instructions on the proper format for submitting jobs to your compute cluster and to ensure all necessary programs are installed.


## Required Inputs
* TCGA HRC imputed genotyping data in plink format
* Sample file filtered for Identity by Descent (IBD): GWAS.IBD.ALL.TCGAID.txt
* Covariate file (cancer type, curated germline-imputed sex assignment, age at diagnosis, germline-based ancestry PCA): covar.GWAS.IBD.ALL.txt
* Immune traits (transformed): Immune.phenotype.txt


## Required Software
* plink (PLINK v1.90b5): https://www.cog-genomics.org/plink/

## Workflow
**Timing: 4 Weeks**

11.	Perform Identity-by-Descent (IBD) analysis in PLINK and filter individuals out for relatedness (pihat < 0.25). This leaves 9,603 unrelated individuals in the TCGA cohort in the output file: 
    * GWAS.IBD.ALL.TCGAID.txt

12.	Recalculate allele frequencies in PLINK for the subset of individuals used in the analysis in PLINK:
    * plink --bed [input .bed filename] 
    * --bim [input .bim filename] 
    * --fam [input .fam filename]
    * --allow-no-sex 
    * --keep-allele-order 
    * --keep [GWAS.IBD.ALL.TCGAID.txt] 
    * --freq 
    * --out [Freq/output filename]
    * See script: "qsub_plink_freq_GWAS.IBD.ALL.txt"
    
13.	Prepare the covariate file: 
    * covar.GWAS.IBD.ALL.txt

14.	Prepare the phenotype file: 
    * Immune.phenotype.txt

15.	Run linear association analysis for each continuous immune traits in PLINK:
    * plink --bed [input .bed filename] 
    * --bim [input .bim filename] 
    * --fam [input .fam filename] 
    * --allow-no-sex 
    * --keep-allele-order 
    * --keep [GWAS.IBD.ALL.TCGAID.txt]
    * --pheno [Immune.phenotype.txt]
    * --all-pheno 
    * --covar [covar.GWAS.IBD.ALL.txt] 
    * --linear hide-covar 
    * --out [output filename]
    * See script: "qsub_plink_linear_GWAS.IBD.ALL_Immune.33.Wolf.Set1.txt" as an example.
    **Note:** The Immune.phenotype.txt file was divided into batches or sets of 5 traits that were ran in parallel. 

16.	Run logistic regression on binarized discrete immune traits in PLINK:
    * --logistic

**Note:** .bed, .bim and .bim input files are provided separately in the sample code because SNP ID names from the original HRC imputed dataset were renamed with alleles listed in alphabetical order to assist matching with other datasets. This only affects the SNP ID name and not the encoding of the A1 and A2 alleles in PLINK which is maintained.

17.	Filter resulting summary statistics from PLINK based on test p-values (P in PLINK). Genome-wide significance was defined at p < 5x10-8 and suggestive significance at p < 1x10-6 in our study.
    * See code: "r_plotResults_GWAS.IBD.ALL_Immune.*.r"

18.	Optional: Visualize results for exploratory data analysis: 

    a.	Manhattan plot, plotting GWAS -log10 p-value against the base pair position per chromosome;
    * See code: "r_plotResults_GWAS.IBD.ALL_Immune.*.r"

    b.	QQplot, plotting the quantile distribution of observed P values for each SNP against expected values from a theoretical χ2-distribution; calculate the genomic inflation factor (lamba), the median of the χ2 test statistics divided by the expected median of the χ2 distribution.
    
    * See code: “r_plotResults_GWAS.IBD.ALL_Immune.*.r”

**Note:** Interactive visualization of GWAS from  (Sayaman et al., 2021) can be done in CRI iAtlas (https://www.cri-iatlas.org/), in the "Germline Analysis" module or using the PheWeb tool (See the "Interactive visualization of results" section).

19.	Optional: Each SNP can be further annotated (See Table S4, (Sayaman et al., 2021)) with: 
    
    a.	Map the genomic chromosome and base pair position to corresponding SNP rsIDs and IUPAC nucleotide ambiguity codes using the R SNPlocs.Hsapiens.dbSNP144.GRCh37 package (https://www.rdocumentation.org/packages/BSgenome/versions/1.40.1/topics/SNPlocs-class); 
    
    i.	Transform GWAS results chromosome and base pair position into a GRanges object using the R Genomic Ranges package;
    
    ii.	Define the set of SNPs as the SNPlocs.Hsapiens.dbSNP144.GRCh37 dataset;
    
    iii.	Overlap the GRange chromosome and base pair position with the SNPlocs.Hsapiens.dbSNP144.GRCh37 dataset using the "snpsByOverlaps" function;
    iv.	Merge annotated data with results file.
    * See code: "r_annotation_SNP.r"
    
    **Note:** Not all SNPs have corresponding rsIDs.


    b.	The Minimac 3 HRC imputation information for each SNP (extracted from the filtered chr*.info.rsq0.5.gz), including whether SNP was genotyped or imputed (Genotyped), the estimated value of the squared correlation between imputed genotypes and true, unobserved genotypes (Rsq), the average probability of observing the most likely allele for each haplotype (AvgCall), minor allele frequency of the variant in the imputed data (MAF) (https://genome.sph.umich.edu/wiki/Minimac3_Info_File);
    
    i.	Map the Minimac 3 HRC imputation information to the GWAS summary stats using the variant identifier.
    
    * See code: "r_plotResults_GWAS.IBD.ALL_Immune.*.r"

    c.	The recalculated minor allele frequency, MAF for the GWAS study set, n=9,603 (--freq in Step 8). This is done as the MAF from Minimac 3 HRC imputation information is derived from the full TCGA dataset, whereas individuals used in this GWAS study was further filtered for non-hematologic cancers only and with closely related individuals excluded (by Identity-by-Descent (IBD) in Step 7);
        
    i.	Map the recalculated MAF to the GWAS summary stats using the variant identifier.
    
    ii.	Filter summary statistics to exclude SNPs with recalculated MAF < 0.005.
    
    * See code: "r_plotResults_GWAS.IBD.ALL_Immune.*.r"

    d.	The nearest genes to SNP of interest (e.g. +/-50KB, +/-500KB, +/- 1000KB) using R snplist package to map rsID to gene maps extracted via the R biomaRt package using host grch37.ensembl.org (https://uswest.ensembl.org/info/data/biomart/index.html);
        
    i.	Create SNP information table (“setSNPTable” function) using SNP rsID, chromosome and base pair position;
    
    ii.	Create a gene information table (“setGeneTable” function) using gene attributes (gene symbol, Ensembl ID, Entrez ID, chromosome, start ande end position, strand) extracted from R biomaRt package using host grch37.ensembl.org
    
    iii.	Find overlaps of the SNP and gene information tables, setting the margin (bp) to the desired distance from SNP of interest (“makeGeneSet” function).
    
    * See code:  "r_annotation_SNP.r"

    e.	VEP Impact and Symbol annotation from the downloaded VEP annotation file (See Download Datasets section).
    
    i.	Map the VEP annotation file (“VEP_MS_improved.csv” to the GWAS summary stats using chromosome and base pair position.

20.	Concatenate GWAS filtered (and annotated) summary stats across all immune traits tested.

    a.	Annotate each summary stat file with the corresponding immune trait, immune category and immune module (See Table S4, (Sayaman et al., 2021);
    
    b.	Append annotated summary stat files from each immune trait GWAS.

21.	Identify genome-wide significant loci as SNPs within 50KB region with at least one genome-wide significant SNP (p < 5x10-8). This excludes the HLA locus on chr 6 which spans ~3.5MB


## Expected Outcomes

The output from performing GWAS in PLINK consist of .assoc.linear (or .assoc.logistic) files with the following columns: chromosome code (CHR), variant identifier (SNP), base-pair coordinate (BP), allele 1 (A1), allele 2 (A2), test identifier (TEST) number of observations with nonmissing genotype, phenotype, and covariates (NMISS), regression coefficient (BETA for linear, or odds ratio OR for logistic), t-statistic (STAT) and asymptotic p-value for t-statistic (P). Note, running the PLINK command with parameter “--keep-allele-order” forces the original A1/A2 allele encoding and A1 should be the minor allele as originally encoded. PLINK output files are further described here: (https://www.cog-genomics.org/plink/1.9/formats#assoc_linear). After optional SNP annotation, addition columns include: the rsID and IUPAC nucleotide ambiguity codes from SNPlocs.Hsapiens.dbSNP144.GRCh37; the Genotyped, Rsq, AvgCall, MAF columns from Minimac 3 HRC imputation information file; the recalculated MAF for the GWAS samples (n=9,603); nearest genes to SNP of interest (witing +/-50KB, +/-500KB, +/- 1000KB); VEP annotation.

After combining the GWAS summary stats of SNPs with genome-wide or suggestive significance from each of the 33 heritable immune traits, and annotating genome-wide significant loci, we identified 598 genome-wide significant (p < 5x10-8) associations at 23 loci for 10 immune traits. We also identified an additional 1,196 suggestive (p < 1x10-6) associations for 33 traits  (See Table S4, (Sayaman et al., 2021)).


## Limitations

Linear regression assumes the residuals are normally distributed. Immune traits with skewed distributions were first log10 transformed, those assessed to have close to normal distribution were used as continuous variables. However, some immune traits remain with very skewed distributions due to a high fraction of 0 values, these traits were converted to binary 0 and 1 values based on the median value and logistic regression was performed instead.  See: (Sayaman et al., 2021) (Table S2).
GWAS was run pan-cancer on the non-hematologic cancers in TCGA which vary in cohort size from 36 (CHOL) to 999 (BRCA). Results may be representative of the most common cancers in TCGA. Post hoc analysis evaluation of associations per cancer (forest plots) can provide insight in the directionality of the betas per cancer and identify potential outliers.


## Troubleshooting

### Problem:

Cannot load software or run scripts on the high-performance compute server. Implementation of provided GitHub code produces error.

#### Potential solution: 

Consult your institution’s IT or compute cluster administrator for proper installation of necessary software including all need libraries based on the high-performance compute environment. Ensure that the proper software versions, including all libraries and dependencies, are installed. Software implementation may be version specific, the versions used in the protocol are provided to ensure reproducibility. 

Job submission scripts are dependent on the resource allocation management system. Provided code should be considered as a guide. Adjust parameters based on cluster capabilities and specifications. Job submission scripts are dependent on the resource allocation management system. E.g. the provided GitHub codes for heritability analysis and GWAS were optimized for the high-performance compute environment at University of California, San Francisco employing Portable Batch System (PBS) job scheduling; consult your system administrator to adapt the provided code to your system. 

For reference, GWAS in Sayaman et al., Immunity 2021 was run in the original UCSF high-performance compute environment TIPCC HPC cluster (now C4) which had 8 communal compute nodes and 1 dedicated node, each with 12 to 64 cores (Each node had from  64 to 512 GiB of RAM and at least 1.8 TiB of fast local disk space).

For troubleshooting of heritability analysis in GCTA GREML, see: https://cnsgenomics.com/software/gcta. For troubleshooting of GWAS in PLINK, see https://www.cog-genomics.org/plink/. For issues with installation of iAtlas , see troubleshooting guide on the software website https://github.com/CRI-iAtlas/iatlas-app.


