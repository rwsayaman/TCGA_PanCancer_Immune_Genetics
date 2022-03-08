## TCGA_PanCancer_Immune_Genetics

Last updated: 03/07/2022

## VEP annotation 

1.	Download VEP annotation 

    a.	Input file, vep_input.txt, is a text file that contains eight columns, space or tab-delimited: Chromosome Position Uploaded_Variation ReferenceAllele AlternativeAllele dummy1 dummy2 dummy3. dummy columns are not needed and we filled them with ‘.’ 
    
    b.	Upload vep_input.txt to https://grch37.ensembl.org/Tools/VEP. Select list of annotations to extract and then run. When the job is done, download output text (.txt) format, which is more suitable for Excel. 
    
    c.	Combine annotations per SNP. VEP provides multiple annotations per SNP. SNPs might map to different genes and could have several biological impacts on nearby genes. Use R script “CombineVEPannotations.R” to combine annotations.
    
    d.	Example of combined annotations: “CXXC5:synonymous_variant:LOW|CXXC5:upstream_gene_variant:MODIFIER”


## Citations
* Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011


## Contributors
* Mohamad Saad, Ph.D., Qatar Computing Research Institute: msaad@hbku.edu.qa


## Senior Authors
* Davide Bedognetti, Ph.D., Sidra Medicine
* Elad Ziv, Ph.D., University of California, San Francisco
