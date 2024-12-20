# TCGA_PanCancer_Immune_Genetics

Last updated: 03/07/2022

## Description
Germline genetic variants shape immune response and may explain some of the immunological heterogeneity observed across patients’ tumors. We present a workflow to assess the contribution of hosts’ genetic background to the immune landscape of solid tumors using harmonized data from more than 9000 patients enrolled in the TCGA. The protocol is developed around the structure of TCGA, but it can be adapted to explore other repositories, for instance in the context of cancer immunotherapy.

The code and data deposited here were used to generate the results and resource files for the Sayaman, Saad et al., 2021 paper.

Code contained herein are meant as a guide and should be modified and adapted to match your server specifications and directories.


## Citations
Please cite the following when using the data and code contained here in: 
* Sayaman, Saad, Heimann, et al., STAR Protocols (2022). Analytic pipelines to assess the relationship between immune response and germline genetics in human tumors. https://doi.org/10.1016/j.xpro.2022.101809
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011

Please cite the following when downloading the TCGA QC and HRC imputed genotyping data:
* Chambwe, Sayaman, et al., STAR Protocols (2022). Analysis of germline-driven ancestry-associated gene expression in cancers. https://doi.org/10.1016/j.xpro.2022.101586
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011
* Carrot-Zhang et al., Cancer Cell (2020). Comprehensive Analysis of Genetic Ancestry and Its Molecular Correlates in Cancer. https://doi.org/10.1016/j.ccell.2020.04.012
  
Please cite the following when referencing ancestry assignments:
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011
* Carrot-Zhang et al., Cancer Cell (2020). Comprehensive Analysis of Genetic Ancestry and Its Molecular Correlates in Cancer. https://doi.org/10.1016/j.ccell.2020.04.012

Please additionally cite the following when referencing the immune traits:
* Thorsson et al., Immunity (2018). The Immune Landscape of Cancer. https://doi.org/10.1016/j.immuni.2018.03.023
  

## Code Contributors
* Rosalyn W. Sayaman, Ph.D., University of California, San Francisco: rwsayaman@gmail.com
* Mohamad Saad, Ph.D., Qatar Computing Research Institute: msaad@hbku.edu.qa
* Donglei Hu, Ph.D., University of California, San Francisco
* Scott Huntsman, M.S., University of California, San Francisco
* Denise M. Wolf, Ph.D., University of California, San Francisco

## Acknowledgment
* David L. Gibbs, Ph.D., Institute for Systems Biology
* Michele Ceccarelli, Ph.D., University of Naples "Federico II", Istituto di Ricerche Genetiche "G. Salvatore"

## Senior Authors
* Davide Bedognetti, Ph.D., Sidra Medicine
* Elad Ziv, Ph.D., University of California, San Francisco


## Contents
**Code**
  * [Pre-processing of Imputed Data](https://github.com/rwsayaman/TCGA_PanCancer_Immune_Genetics/tree/main/Code/PreProcess_HRCImputed)
  * [Immune Traits](https://github.com/rwsayaman/TCGA_PanCancer_Immune_Genetics/tree/main/Code/Immune_Traits)
  * [Heritability Analysis](https://github.com/rwsayaman/TCGA_PanCancer_Immune_Genetics/tree/main/Code/Heritability_Analysis)
  * [Genome-Wide Association Study (GWAS)](https://github.com/rwsayaman/TCGA_PanCancer_Immune_Genetics/tree/main/Code/GWAS)
  * [Epigenomic Analysis](https://github.com/rwsayaman/TCGA_PanCancer_Immune_Genetics/tree/main/Code/Epigenomic_Analysis)
  * [Expression and splicing quantitative trait locus analysis (eQTLs and sQTL)](https://github.com/rwsayaman/TCGA_PanCancer_Immune_Genetics/tree/main/Code/eQTLs_sQTLs)
  * [Colocalization with eCaviar and manual curation of the expanded region](https://github.com/rwsayaman/TCGA_PanCancer_Immune_Genetics/tree/main/Code/Colocalization)
  * [Rare Variant Analysis](https://github.com/rwsayaman/TCGA_PanCancer_Immune_Genetics/tree/main/Code/Rare_Variant_Analysis)
