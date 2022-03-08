# TCGA_PanCancer_Immune_Genetics

Last updated: 03/07/2022

## Description
Germline genetic variants shape immune response and may explain some of the immunological heterogeneity observed across patients’ tumors. We present a workflow to assess the contribution of hosts’ genetic background to the immune landscape of solid tumors using harmonized data from more than 9000 patients enrolled in the TCGA. The protocol is developed around the structure of TCGA, but it can be adapted to explore other repositories, for instance in the context of cancer immunotherapy.

The code and data deposited here were used to generate the results and resource files for the Sayaman, Saad et al., 2021 paper.

Code contained herein are meant as a guide and should be modified and adapted to match your server specifications and directories.


## Citations
Please cite Sayaman, Saad et al., Immunity 2021 when using the data and code contained here in, and downloading the TCGA QC and HRC imputed genotyping data. 
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011

Please additionally cite: Thorsson et al., Immunity 2018 when referencing the immune traits.
* Thorsson et al., Immunity (2018). The Immune Landscape of Cancer. https://doi.org/10.1016/j.immuni.2018.03.023

Please additionally cite: Carrot-Zhang et al., Cancer Cell 2020 when referencing ancestry assignments and downloading the TCGA QC and HRC imputed genotyping data.
* Carrot-Zhang et al., Cancer Cell (2020). Comprehensive Analysis of Genetic Ancestry and Its Molecular Correlates in Cancer. https://doi.org/10.1016/j.ccell.2020.04.012


## Code Contributors
* Rosalyn W. Sayaman, Ph.D., University of California, San Francisco: rwsayaman@gmail.com
* Mohamad Saad, Ph.D., Qatar Computing Research Institute: msaad@hbku.edu.qa
* Donglei Hu, Ph.D., University of California, San Francisco
* Scott Huntsman, M.S., University of California, San Francisco
* Denise M. Wolf, Ph.D., University of California, San Francisco

## Senior Authors
* Davide Bedognetti, Ph.D., Sidra Medicine
* Elad Ziv, Ph.D., University of California, San Francisco


## Contents
* Code
  * Pre-processing of Imputed Data
  * Immune Traits
  * Heritability Analysis
  * Genome-Wide Association Study (GWAS)
  * Epigenomic Analysis
  * Expression and splicing quantitative trait locus analysis (eQTLs and sQTL)
  * Colocalization with E-Caviar colocalization and manual curation of the expanded region
  * Rare Variant Analysis
* Data (Sayaman et al., Immunity 2021)
  * Table S1
  * Table S2
  * Table S3
  * Table S4
  * Table S5
  * Table S6
  
  
## Resources
1. TCGA QC and HRC Imputed Genotyping Data  
   * Access to the TCGA original birdseed (GDC Data Portal: https://portal.gdc.cancer.gov/) and pre-processed quality controlled genotyping data imputed to HRC generated in Sayaman et al., Immunity 2021 requires GDC controlled access permission approval.
   * The quality controlled and HRC imputed genotyping data and the UCSF ancestry assignments were contributed towards ancestry analyses (Carrot-Zhang et al., 2020) and are accessible at the GDC publication page (https://gdc.cancer.gov/about-data/publications/CCG-AIM-2020).
   
   * See folder: "TCGA QC HRC Imputed Genotyping Data used by the AIM AWG (from Sayaman et al)"
     * Controlled Access data include:
       * QC Unimputed Genotyping Data
       * HRC Stranded Unimputed Genotyping Data
       * 1000 Genomes Stranded Unimputed Genotyping Data
       * HRC Imputed Genotyping Data
   * Download:
     *  Subfolder: "QC Unimputed Genotyping Data", and read the READ_ME_1.txt file.
     *  Subfolder: "HRC Imputed Genotyping Data", and read the READ_ME_4.txt file.
   
2. TCGA Germline Immune Response GWAS Summary Statistics
   * Figshare: https://figshare.com/articles/dataset/Sayaman_et_al_TCGA_Germline-Immune_GWAS_Summary_Statistics/13077920/1
   
3. Interactive visualization of results 
   * CRI iAtlas (https://www.cri-iatlas.org/)
   * PheWeb tool
  
  

