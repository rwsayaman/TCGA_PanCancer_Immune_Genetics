# TCGA_PanCancer_Immune_Genetics

Last updated: 03/07/2022

## Description
Germline genetic variants shape immune response and may explain some of the immunological heterogeneity observed across patients’ tumors. We present a workflow to assess the contribution of hosts’ genetic background to the immune landscape of solid tumors using harmonized data from more than 9000 patients enrolled in the TCGA. The protocol is developed around the structure of TCGA, but it can be adapted to explore other repositories, for instance in the context of cancer immunotherapy.

The code and data deposited here were used to generate the results and resource files for the Sayaman, Saad et al., 2021 paper.


## Citations
Please cite Sayaman, Saad et al., Immunity 2021 when using the data and code contained here in. 
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011


## Contents

[**Download Datasets**](https://github.com/rwsayaman/TCGA_PanCancer_Immune_Genetics/tree/main/Data) 
  * Table S1. Sample List (Sayaman et al., Immunity 2021, Supplemental Table 1.xlsx)
  * Table S2. Immune Traits (Sayaman et al., Immunity 2021, Supplemental Table 2.xlsx)
    
**Note:** All Sayaman et al., Immunity 2021, Supplemental Tables are made available in this repository
  
  * [TCGA QC and HRC Imputed Genotyping Data](https://github.com/rwsayaman/TCGA_PanCancer_Immune_Genetics/tree/main/Data/QC_HRC_Imputed_Genotyping_Data)
  * TCGA Whole Exome Sequencing Data
  * GTEx Data
  * [VEP Annotation](https://github.com/rwsayaman/TCGA_PanCancer_Immune_Genetics/tree/main/Data/VEP_Annotation)
  * Roadmap Epigenomics Project Epigenomic State Model

## Workflow
**Timing: 1-2 days**

**Note:** Protocol for generating the TCGA HRC Imputed Genotyping Data from raw TCGA birdseed Affymetrix SNP 6.0 array is discussed in [Chambwe, Sayaman et al., STAR Protocols, In Revision]. 

9.	Download Sample List 

    a.	Download Table S1. TCGA Sample List Used in the Analysis from (Sayaman et al., 2021);

    b.	Read the “Column Headers” sheet descriptor as a guide.

10.	Download Immune Traits 

    a.	Download Table S2. Annotations and Values of Immune Traits from (Sayaman et al., 2021);

    b.	Read the “Column Headers” sheet descriptor as a guide.

11.	Download TCGA QC and HRC Imputed Genotyping Data

    a. The TCGA QC and HRC imputed genotyping data generated in (Sayaman et al., 2021) were contributed towards ancestry analyses (Carrot-Zhang et al., 2020) and are accessible at the GDC publication page under Supplemental Data Files section (https://gdc.cancer.gov/about-data/publications/CCG-AIM-2020).

    b. Download the open-access files from the “TCGA QC HRC Imputed Genotyping Data used by the AIM AWG from (Sayaman et al., 2021) section of the “Supplemental Data Files”:

    i. Information on composition of genotyping files

    * READ_ME.txt

    ii. File mapping TCGA Patient ID to corresponding Birdseed genotyping files

    * Map_TCGAPatientID_BirdseedFileID.txt

    iii. QC Unimputed Genotyping Data

    * Read me for quality-controlled unimputed genotyping data - READ_ME_1.txt

    iv. HRC Imputed Genotyping Data

    * Read me for HRC imputed genotyping data - READ_ME_4.txt

    c. Download the controlled-access files from the “TCGA QC HRC Imputed Genotyping Data used by the AIM AWG (Sayaman et al., 2021) section of the “Supplemental Data Files”:

    i. To download the controlled access data, follow instructions under the “Instructions for Data Download” for “Controlled Access Data”.

    * The necessary manifest files are found under the “Data in the GDC” section for “Controlled Access Data”.

    ii. Download the following QC Unimputed Genotyping Data files:

    * Quality-controlled unimputed genotyping data plink files - QC_Unimputed_plink.zip

    iii. Download the following HRC Imputed Genotyping Data files:

    * HRC imputed genotyping data for chromosome 1 - chr_1.zip
    * HRC imputed genotyping data for chromosome 2 - chr_2.zip
    * HRC imputed genotyping data for chromosome 3 - chr_3.zip
    * HRC imputed genotyping data for chromosome 4 - chr_4.zip
    * HRC imputed genotyping data for chromosome 5 - chr_5.zip
    * HRC imputed genotyping data for chromosome 6 - chr_6.zip
    * HRC imputed genotyping data for chromosome 7 - chr_7.zip
    * HRC imputed genotyping data for chromosome 8 - chr_8.zip
    * HRC imputed genotyping data for chromosome 9 - chr_9.zip
    * HRC imputed genotyping data for chromosome 10 - chr_10.zip
    * HRC imputed genotyping data for chromosome 11 - chr_11.zip
    * HRC imputed genotyping data for chromosome 12 - chr_12.zip
    * HRC imputed genotyping data for chromosome 13 - chr_13.zip
    * HRC imputed genotyping data for chromosome 14 - chr_14.zip
    * HRC imputed genotyping data for chromosome 15 - chr_15.zip
    * HRC imputed genotyping data for chromosome 16 - chr_16.zip
    * HRC imputed genotyping data for chromosome 17 - chr_17.zip
    * HRC imputed genotyping data for chromosome 18 - chr_18.zip
    * HRC imputed genotyping data for chromosome 19 - chr_19.zip
    * HRC imputed genotyping data for chromosome 20 - chr_20.zip
    * HRC imputed genotyping data for chromosome 21 - chr_21.zip
    * HRC imputed genotyping data for chromosome 22 - chr_22.zip

**Critical:** Access to the TCGA quality controlled HRC imputed genotyping data generated requires dbGaP controlled access permission approval. See Before you begin: Apply for dbGaP Authorization. image

12.	Download TCGA Whole Exome Sequencing Data

    a.	Download WES data from https://gdc.cancer.gov/about-data/publications/PanCanAtlas-Germline-AWG. File name is PCA.r1.TCGAbarcode.merge.tnSwapCorrected.10389.vcf.gz. 

**Critical:** Access to the TCGA whole exome sequencing data requires dbGaP controlled access permission approval. Before you begin: Apply for dbGaP Authorization.


13.	Download GTEx Data

    **Note:** GTEx Release v8 was used in (Sayaman et al., 2021).

    a.	Information regarding GTEx data are available at the GTEx Portal: https://gtexportal.org/
    
    b. Under “Datasets” access the “Data Download” site to access QTL summary statistics. Check the current release version.

    i.	Under “Single-Tissue cis-QTL Data”, click on the link and follow instructions for downloading all SNP-gene associations from the GTEx Google Cloud bucket:
    
    * eQTL Tissue-Specific ALL SNP Gene Association
    
    * sQTL Tissue-Specific ALL SNP Gene Association

    ii.	From the “GTEx_Analysis_v8_QTLs” folder, download all files from the following folders:
    
    * GTEx_Analysis_v8_eQTL_all_associations
    
    * GTEx_Analysis_v8_sQTL_all_associations

    **Note:** Download from GTEx Google Cloud bucket is a requester paid download. Create a Google Cloud account with sufficient funds to download. Set-up the appropriate billing project.

    c.	Under “Datasets” access the  “Protected Data” site and follow instructions to gain access to GTEx v8 genotyping data hosted in the AnVIL repository.

    **Critical:** Access to the GTEx genotyping data requires dbGaP controlled access permission approval. See Before you begin: Apply for dbGaP Authorization.

14.	Download VEP annotation 

    a.	Input file, vep_input.txt, is a text file that contains eight columns, space or tab-delimited: Chromosome Position Uploaded_Variation ReferenceAllele AlternativeAllele dummy1 dummy2 dummy3. dummy columns are not needed and we filled them with ‘.’ 
    
    b.	Upload vep_input.txt to https://grch37.ensembl.org/Tools/VEP. Select list of annotations to extract and then run. When the job is done, download output text (.txt) format, which is more suitable for Excel. 
    
    c.	Combine annotations per SNP. VEP provides multiple annotations per SNP. SNPs might map to different genes and could have several biological impacts on nearby genes. Use R script “CombineVEPannotations.R” to combine annotations.
    
    d.	Example of combined annotations: “CXXC5:synonymous_variant:LOW|CXXC5:upstream_gene_variant:MODIFIER”

15.	Download Roadmap Epigenomics Project Epigenomic State Model

    a.	Access the Expanded 18-state model (6 marks, 98 epigenomes) for Build GRCh37/hg19: https://egg2.wustl.edu/roadmap/web_portal/chr_state_learning.html#exp_18state

    b.	Under “MNEMONICS BED FILES” section, download the archive of all mnemonics bed files.

  
