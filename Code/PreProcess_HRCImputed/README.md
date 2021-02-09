## TCGA_PanCancer_Immune_Genetics

## Pre-Process HRC Imputed Genotyping Data

Please cite Sayaman, Saad et al., Immunity 2021 when using the data and code contained here in.

## Citations
Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011


## Contributors
* Rosalyn W. Sayaman, Ph.D., University of California, San Francisco: rwsayaman@gmail.com
* Donglei Hu, Ph.D., University of California, San Francisco
* Scott Huntsman, University of California, San Francisco


## Description
Code contained herein are meant as a guide and should be modified and adapted to match your server specifications and directories.

Authors will not be available to assist with troubleshooting. Please familiarize yourself with the associated scripting languages, and contact your server admin for instructions on the proper format for submitting jobs to your compute cluster and to ensure all necessary programs are installed.


## Required Inputs
* TCGA HRC Imputed Genotyping Data
   * Access to the pre-processed quality controlled (QC), stranded and imputed genotyping data ("Sayaman et al TCGA QC HRC Imputed Genotyping Data") requires GDC controlled access permission approval.
   * The quality controlled and HRC imputed genotyping data were contributed towards ancestry analyses in Carrot-Zhang et al., Cancer Cell 2020, and are accessible at the GDC publication page: https://gdc.cancer.gov/about-data/publications/CCG-AIM-2020
      * Folder: "TCGA QC HRC Imputed Genotyping Data used by the AIM AWG (from Sayaman et al)"
        * Subfolder: "HRC Imputed Genotyping Data"
  * Download and read the READ_ME_4.txt file.
  * Dowload contents of the folder -- e.g., chr*.zip files, into the github folder: ./GitHub/TCGA_PanCancer_Immune_Genetics/Data/HRC_Imputed_Genotyping_Data
* Mapping of Birdseed file IDs and TCGA patient IDs: tcga_imputed_hrc1.1.updateid.TCGAID.txt


## Required Software
* bcftools
* tabix
* plink (PLINK v1.90b5): https://www.cog-genomics.org/plink/


## Contents
1. Unzip HRC Imputed Genotyping Data. Data is password protected (see READ_ME_4.txt).
    * qsub_unzip_HRC_chr.txt

2. Filter chr*.dose.vcf.gz files for R2 ≥ 0.5 and index. Generates chr*.rsq0.5.dose.vcf.gz and chr*.rsq0.5.dose.vcf.gz.tbi files.
    * qsub_filter_vcf_R2.txt

3. Filter chr*.info.gz files for R2 ≥ 0.5. Generates chr*.info.rsq0.5.gz files. Requires the Format_Impute_HRC_Info_chr1.py file.
    * qsub_make_py_format_info.txt - Generates a Format_Impute_HRC_Info_chr*.py file per chr from Format_Impute_HRC_Info_chr1.py template
    * qsub_py_format_info.txt - Runs Format_Impute_HRC_Info_chr*.py files

4. Convert vcf chr*.rsq0.5.dose.vcf.gz files to plink tcga_imputed_hrc1.1_rsq0.5_chr*.bed files
    * qsub_convert_vcf_plink.txt - Generates tcga_imputed_hrc1.1_rsq0.5_chr*.bed, .bim, .fam plink files

5. Make new SNP id for the plink bim file. Requires the Format_Create_NewMarkerID_for_Bim_chr1.py file.
    * qsub_make_py_format_snpid.txt - Generates a Format_Create_NewMarkerID_for_Bim_chr*.py per chr from Format_Create_NewMarkerID_for_Bim_chr1.py template
    * qsub_py_format_snpid.txt - Runs Format_Create_NewMarkerID_for_Bim_chr*.py files

6. Update PLINK IIDs and FIDs from Birdseed file IDs to TCGA patient IDs. Requires the tcga_imputed_hrc1.1.updateid.TCGAID.txt file.
    * qsub_plink_update_ids.txt - Generates plink files with an updated tcga_imputed_hrc1.1_rsq0.5_TCGAID_chr*.fam file
