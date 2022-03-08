# TCGA_PanCancer_Immune_Genetics

Last updated: 03/07/2022

## Description
Germline genetic variants shape immune response and may explain some of the immunological heterogeneity observed across patients’ tumors. We present a workflow to assess the contribution of hosts’ genetic background to the immune landscape of solid tumors using harmonized data from more than 9000 patients enrolled in the TCGA. The protocol is developed around the structure of TCGA, but it can be adapted to explore other repositories, for instance in the context of cancer immunotherapy.

The code and data deposited here were used to generate the results and resource files for the Sayaman, Saad et al., 2021 paper.


## Citations
Please cite Sayaman, Saad et al., Immunity 2021 when using the data and code contained here in. 
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011


## Contents

* Data Download 
  * Supplementary Tables (Sayaman et al., Immunity 2021)
    * Table S1
    * Table S2
    * Table S3
    * Table S4
    * Table S5
    * Table S6
  * [TCGA QC and HRC Imputed Genotyping Data](https://github.com/rwsayaman/TCGA_PanCancer_Immune_Genetics/tree/main/Data/QC_HRC_Imputed_Genotyping_Data)
  * [VEP Annotation](https://github.com/rwsayaman/TCGA_PanCancer_Immune_Genetics/tree/main/Data/VEP_Annotation)

  
## Resources
TCGA QC and HRC Imputed Genotyping Data  
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
  


