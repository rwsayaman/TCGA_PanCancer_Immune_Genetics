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



PASSWORD
The HRC Imputed genotyping data zip files are password protected. Use the password:  55PlfZ=rENaogE  to unzip.


DESCRIPTION

The quality-controlled genotyping file was stranded and imputed against the Haplotype Reference Consortium (HRC) (McCarthy et al., Nat. Genet. 2016). Prior to HRC stranding, all palindromic SNPs (A/T or G/C) were removed. Stranding was then performed using the McCarthy Group tools (HRC-1000G-check-bim-NoReadKey.pl)(https://www.well.ox.ac.uk/~wrayner/tools/), which compares our data genotyping alleles to the corresponding SNP alleles from HRC (v1.1 HRC.r1-1.GRCh37.wgs.mac5.sites.tab), leaving 680,389 correctly matched variants for imputation.

Phasing and imputation were performed using a standard pipeline on the Michigan Imputation Server (MIS). Phasing was performed using Eagle version v2.3 (Loh et al., Nat. Genet. 2016a, Loh et al., Nat. Genet. 2016b) on the variant call file (VCF). To reduce the run time, the VCF file was divided into 22 files corresponding to individual autosomal chrs. By default, Eagle restricts analysis to bi-allelic variants that exist in both the target and reference data. Minimac3 was used to run the imputation. For each of the 22 VCF files, the MIS breaks the dataset into non-overlapping chunks prior to imputation. For HRC imputation, the HRC r1.1.2016 reference panel was selected using mixed population for QC, with a total of 39,127,678 SNPs for 10,128 unique individuals returned after imputation.

Each chr unzipped folder contains 3 files: (1) .dose.vcf.gz - imputed genotypes with dosage information; (2) .dose.vcf.gz.tbi - index file of the .vcf.gz file; (3) .info.gz file - information for each variant including quality and frequency.

Please see: Sayaman, Saad et al., Immunity 2021 for full details.
