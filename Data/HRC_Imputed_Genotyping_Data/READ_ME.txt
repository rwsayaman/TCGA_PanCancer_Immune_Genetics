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

This folder contains TCGA genotyping data from 10,128 unique individuals:

(1) QC Unimputed Genotyping Data: Pre-processed TCGA Affymetrix Genome-Wide SNP 6.0 genotyping data after extensive quality control and assessment. Includes 838,948 variants from autosomal chromosomes 1-22. PLINK format.

(2) HRC Stranded Genotyping Data: QC'd genotyping data from (1) stranded against the Haplotype Reference Consortium (HRC). Palindromic SNPs removed prior to stranding, leaving 680,389 correctly matched variants from autosomal chromosomes 1-22 for imputation. VCF format.

(3) 1000G Stranded Genotyping Data: QC'd genotyping data from (1) stranded against the 1000 Genomes Project (1000G). Palindromic SNPs removed prior to stranding, leaving 678,304 correctly matched variants from autosomal chromosomes 1-22 for imputation. VCF format.

(4) HRC  Imputed Genotyping Data: QC'd and HRC stranded genotyping data from (2) imputed against the HRC reference panel. Includes 39,127,678 SNPs variants from autosomal chromosomes 1-22. VCF format.


HELPER FILE:
(5) Map_TCGAPatientID_BirdseedFileID.txt: Mapping of TCGA patient ID to Birdseed genotyping file ID


Please see: Sayaman, Saad et al., Immunity 2021 for full details.
