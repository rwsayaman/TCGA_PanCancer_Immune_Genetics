# TCGA_PanCancer_Immune_Genetics

Last updated: 03/07/2022

## Description
Germline genetic variants shape immune response and may explain some of the immunological heterogeneity observed across patients’ tumors. We present a workflow to assess the contribution of hosts’ genetic background to the immune landscape of solid tumors using harmonized data from more than 9000 patients enrolled in the TCGA. The protocol is developed around the structure of TCGA, but it can be adapted to explore other repositories, for instance in the context of cancer immunotherapy.

The code and data deposited here were used to generate the results and resource files for the Sayaman, Saad et al., 2021 paper.


## Citations
Please cite the following when using the data and code contained here in: 
* Sayaman, Saad, Heimann, et al., STAR Protocols (2022). Analytic pipelines to assess the relationship between immune response and germline genetics in human tumors. https://doi.org/10.1016/j.xpro.2022.101809
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011


## Contents
**Software Installation**
  * PLINK
  * GCTA GREML
  * R/Bioconductor
  * LocusZoom
  * eCAVIAR
 
 
## Workflow
**Timing: 1 day**

4. PLINK Installation

    a.	Install PLINK (1.9 or current version) (Chang et al., 2015) 
    b.	Download and software documentation is available at: https://www.cog-genomics.org/plink2

5.	GCTA GREML Installation

    a.	Install GCTA (1.91.2beta or current version) (Yang et al., 2011)
    b.	Download and software documentation is available at: https://cnsgenomics.com/software/gcta

6.	R/Bioconductor and related packages Installation

    a.	Install R (3.5.0 or current version). Download and software documentation is available at: https://www.r-project.org/
    
    b.	Install Bioconductor (3.7 or current version). Installation instructions and documentation is available at: https://www.bioconductor.org/
    
    c.	Install the R package: snplist (0.18.1 or current version) (Yi et al., 2017).  Installation instructions and documentation is available at: https://cran.r-project.org/web/packages/snplist/index.html
    
    d.	Install the Bioconductor package: SNPlocs.Hsapiens.dbSNP144.GRCh37 (0.99.20 or current version) (Pagès, 2017). Installation instructions and documentation is available at: (Durinck et al., 2005, 2009)
    
    e.	Install the Bioconductor package: biomaRt (2.36.1 or current version) (Durinck et al., 2005, 2009). Use host: grch37.ensembl.org. Installation instructions and documentation is available at: https://bioconductor.org/packages/release/bioc/html/biomaRt.html
    
    f.	Install the Bioconductor package: GenomicRanges (1.32.6 or current version) (Lawrence et al., 2013). Installation instructions and documentation is available at: https://bioconductor.org/packages/release/bioc/html/GenomicRanges.html

7.	LocusZoom Installation

    a.	Install LocusZoom (Genome Build/LD Population: hg19/100 Genomes Nov 2014 EUR) (Pruim et al., 2010) from http://locuszoom.org/

8.	eCAVIAR Installation
    
    a.	eCAVIAR (Hormozdiari et al., 2016) from http://zarlab.cs.ucla.edu/tag/ecaviar/

**Note:** Indicated software and package versions were the ones used in (Sayaman et al., 2021). If using other or future versions of the software and packages, please check for compatibility and version-specific default parameters.


