# Pre-Process HRC Imputed Genotyping Data

Please cite Sayaman, Saad et al., Immunity 2021 when using the data and code contained here in. Please additionally cite Thorsson et al., Immunity 2018 when using the immune traits.


## Citations
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011
* Thorsson et al., Immunity (2018). The Immune Landscape of Cancer. https://doi.org/10.1016/j.immuni.2018.03.023


## Contributors
* Rosalyn W. Sayaman, Ph.D., University of California, San Francisco: rwsayaman@gmail.com
* Mohamad Saad, Ph.D., Qatar Computing Research Institute: msaad@hbku.edu.qa
* Donglei Hu, Ph.D., University of California, San Francisco
* Scott Huntsman, University of California, San Francisco


## Description

Code contained herein are meant as a guide and should be modified and adapted to match your server specifications and directories. 

Authors will not be available to troubleshoot. Please familiarize yourself with the associated scripting languages, and please contact your server admin for instructions on the proper format for submitting jobs to your compute cluster.

## Required Inputs
1. TCGA HRC Imputed Genotyping Data
  1. Access to the pre-processed quality controlled (QC), stranded and imputed genotyping data ("Sayaman et al TCGA QC HRC Imputed Genotyping Data") requires GDC controlled access permission approval.
  2. The quality controlled and HRC imputed genotyping data were contributed towards ancestry analyses in Carrot-Zhang et al., Cancer Cell 2020, and are accessible at the GDC publication page (https://gdc.cancer.gov/about-data/publications/CCG-AIM-2020)
      * Folder: "TCGA QC HRC Imputed Genotyping Data used by the AIM AWG (from Sayaman et al)"
        * Subfolder: "HRC  Imputed Genotyping Data"
  3. Download and read the READ_ME_4.txt file.
  4. Dowload contents of the folder, e.g. chr*.zip files into 

## Contents
1. qsub_unzip_HRC_chr.txt
