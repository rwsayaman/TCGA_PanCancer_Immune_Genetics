READ ME
Sayaman et al TCGA QC HRC Imputed Genotyping Data
v20210209


DATA AVAILABILITY
Access to the pre-processed quality controlled (QC), stranded and imputed genotyping data ("Sayaman et al TCGA QC HRC Imputed Genotyping Data") requires GDC controlled access permission approval. 

The quality controlled and HRC imputed genotyping data were contributed towards ancestry analyses in Carrot-Zhang et al., Cancer Cell 2020, and are accessible at the GDC publication page (https://gdc.cancer.gov/about-data/publications/CCG-AIM-2020). 


Please cite Sayaman, Saad et al., Immunity 2021 when using the quality controlled, stranded and HRC imputed genotyping data. 

FULL CITATION
Sayaman, Saad, et al., Germline genetic contribution to the immune landscape of cancer, Immunity (2021), https://doi.org/10.1016/j.immuni.2021.01.011



LEAD CONTACT 
Rosalyn W. Sayaman, rwsayaman@gmail.com

CORRESPONDING AUTHORS
Rosalyn W. Sayaman, rwsayaman@gmail.com
Elad Ziv, elad.ziv@ucsf.edu
Davide Bedognetti, dbedognetti@sidra.org



DESCRIPTION

Controlled-access germline genotype data for common variants were obtained from Affymetrix Genome Wide SNP 6.0 arrays (TCGA legacy archive https://portal.gdc.cancer.gov/legacy-archive). Birdseed genotyping files representing 905,600 variants for 11,521 samples were downloaded.  

Stringent quality control measures conducted in PLINK 1.9 (Chang et al., Gigascience 2015) were applied to the SNP genotyping data as described in Sayaman, Saad et al., Immunity 2021. Briefly, SNPs and individuals with greater than 5% missingness were excluded. Initial PCA ancestry analysis was performed to facilitate heterozygosity filtering. Heterozygosity was calculated within each initial PCA-based ancestry cluster and samples with heterozygosity >3*SD above the ancestry mean were removed. Selection of a representative sample for each individual was then conducted. For individuals represented by more than one sample, blood-derived normal samples were preferentially selected; for those with more than one blood-derived sample, samples with higher call rates were retained. Final filtering steps for SNPs were conducted across the 10,128 unique individuals and restricted to autosomal chromosomes. Hardy-Weinberg Equilibrium (HWE) was calculated across individuals within the European ancestry cluster. SNPs that deviated from the expectation under HWE (p < 1x10-6) within the European ancestry cluster were excluded with the exception of SNPs previously associated with any cancer as reported in the GWAS catalog (p < 5x10-8) (Rashkin et al., BioRxiv 2019). Minor allele frequency (MAF) was calculated and variants with MAF < 0.005 were excluded. Finally, duplicate SNPs with identical genomic first position were removed. 
 
A total of 838,948 autosomal chr variants for 10,128 unique individuals passed after the aforementioned QC steps.

Please see: Sayaman, Saad et al., Immunity 2021 for full details.

