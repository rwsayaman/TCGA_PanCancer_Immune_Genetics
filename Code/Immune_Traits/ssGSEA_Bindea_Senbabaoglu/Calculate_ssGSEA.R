## Contributors
# Rosalyn W. Sayaman, Ph.D., University of California, San Francisco: rwsayaman@gmail.com
# Acknowledgment: David L. Gibbs, Ph.D., Institute for Systems Biology

## Citations
# Sayaman, Saad et al., Immunity (2021). Germline genetic contribution to the immune landscape of cancer. https://doi.org/10.1016/j.immuni.2021.01.011
# Thorsson et al., Immunity (2018). The Immune Landscape of Cancer. https://doi.org/10.1016/j.immuni.2018.03.023


rm(list=ls())


########## Input Data
# Load input data ExprData.RData: a gene expression matrix with gene symbols as rows and sample ids as columns
load(file.path(getwd(), 'ExprData.RData'))


#####################################################################
########## LOAD LIBRARIES ##########
#####################################################################

# https://www.bioconductor.org/packages/release/bioc/vignettes/GSVA/inst/doc/GSVA.pdf
library(GSVA)


###############################################################################
########## Calculate ssGSEA ##########
###############################################################################

# Set parameters
gene_list = "Bindea_Senbabaoglu_list"
available_genes = rownames(ExprData)

Gene.list = get(gene_list)
unavailable_genes = unlist(Gene.list)[-which(unlist(Gene.list) %in% rownames(Gene.list))] #should be 0
unavailable_genes


## ssGSEA
Expression.data = as.matrix(ExprData)
Bindea_Senbabaoglu_ssgsea = gsva(Expression.data, Gene.list, method="ssgsea")

