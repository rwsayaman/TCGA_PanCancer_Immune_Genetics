plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000005801_Nerve_Tibial_ZNF195_rs7951724.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000005801_Nerve_Tibial_ZNF195_rs7951724.txt 2 1 --recode A --out Geno_gtex_ENSG00000005801_Nerve_Tibial_ZNF195_rs7951724
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000015479_Ovary_MATR3_rs13166214.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000015479_Ovary_MATR3_rs13166214.txt 2 1 --recode A --out Geno_gtex_ENSG00000015479_Ovary_MATR3_rs13166214
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000016402_Skin_Sun_Exposed_Lower_leg_IL20RA_rs118116504.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000016402_Skin_Sun_Exposed_Lower_leg_IL20RA_rs118116504.txt 2 1 --recode A --out Geno_gtex_ENSG00000016402_Skin_Sun_Exposed_Lower_leg_IL20RA_rs118116504
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000040933_Brain_Hippocampus_INPP4A_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000040933_Brain_Hippocampus_INPP4A_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000040933_Brain_Hippocampus_INPP4A_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000053328_Esophagus_Mucosa_METTL24_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000053328_Esophagus_Mucosa_METTL24_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000053328_Esophagus_Mucosa_METTL24_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000070610_Colon_Transverse_GBA2_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000070610_Colon_Transverse_GBA2_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000070610_Colon_Transverse_GBA2_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000070610_Muscle_Skeletal_GBA2_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000070610_Muscle_Skeletal_GBA2_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000070610_Muscle_Skeletal_GBA2_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000070610_Whole_Blood_GBA2_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000070610_Whole_Blood_GBA2_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000070610_Whole_Blood_GBA2_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000071282_Ovary_LMCD1_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000071282_Ovary_LMCD1_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000071282_Ovary_LMCD1_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr18 --extract snps_gtex_ENSG00000074657_Brain_Cerebellum_ZNF532_rs114945575.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000074657_Brain_Cerebellum_ZNF532_rs114945575.txt 2 1 --recode A --out Geno_gtex_ENSG00000074657_Brain_Cerebellum_ZNF532_rs114945575
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000077522_Thyroid_ACTN2_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000077522_Thyroid_ACTN2_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000077522_Thyroid_ACTN2_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000090857_Brain_Hippocampus_PDPR_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000090857_Brain_Hippocampus_PDPR_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000090857_Brain_Hippocampus_PDPR_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000090857_Brain_Putamen_basal_ganglia_PDPR_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000090857_Brain_Putamen_basal_ganglia_PDPR_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000090857_Brain_Putamen_basal_ganglia_PDPR_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000090857_Brain_Substantia_nigra_PDPR_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000090857_Brain_Substantia_nigra_PDPR_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000090857_Brain_Substantia_nigra_PDPR_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000090861_Brain_Cortex_AARS_rs11866628.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000090861_Brain_Cortex_AARS_rs11866628.txt 2 1 --recode A --out Geno_gtex_ENSG00000090861_Brain_Cortex_AARS_rs11866628
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr22 --extract snps_gtex_ENSG00000100023_Adipose_Subcutaneous_PPIL2_rs16985160.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000100023_Adipose_Subcutaneous_PPIL2_rs16985160.txt 2 1 --recode A --out Geno_gtex_ENSG00000100023_Adipose_Subcutaneous_PPIL2_rs16985160
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr22 --extract snps_gtex_ENSG00000100150_Brain_Cerebellar_Hemisphere_DEPDC5_rs75040902.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000100150_Brain_Cerebellar_Hemisphere_DEPDC5_rs75040902.txt 2 1 --recode A --out Geno_gtex_ENSG00000100150_Brain_Cerebellar_Hemisphere_DEPDC5_rs75040902
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr22 --extract snps_gtex_ENSG00000100220_Adipose_Subcutaneous_RTCB_rs75040902.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000100220_Adipose_Subcutaneous_RTCB_rs75040902.txt 2 1 --recode A --out Geno_gtex_ENSG00000100220_Adipose_Subcutaneous_RTCB_rs75040902
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr22 --extract snps_gtex_ENSG00000100220_Artery_Aorta_RTCB_rs75040902.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000100220_Artery_Aorta_RTCB_rs75040902.txt 2 1 --recode A --out Geno_gtex_ENSG00000100220_Artery_Aorta_RTCB_rs75040902
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr22 --extract snps_gtex_ENSG00000100220_Artery_Tibial_RTCB_rs75040902.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000100220_Artery_Tibial_RTCB_rs75040902.txt 2 1 --recode A --out Geno_gtex_ENSG00000100220_Artery_Tibial_RTCB_rs75040902
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr22 --extract snps_gtex_ENSG00000100220_Cells_Cultured_fibroblasts_RTCB_rs75040902.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000100220_Cells_Cultured_fibroblasts_RTCB_rs75040902.txt 2 1 --recode A --out Geno_gtex_ENSG00000100220_Cells_Cultured_fibroblasts_RTCB_rs75040902
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr22 --extract snps_gtex_ENSG00000100220_Muscle_Skeletal_RTCB_rs75040902.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000100220_Muscle_Skeletal_RTCB_rs75040902.txt 2 1 --recode A --out Geno_gtex_ENSG00000100220_Muscle_Skeletal_RTCB_rs75040902
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr22 --extract snps_gtex_ENSG00000100220_Nerve_Tibial_RTCB_rs75040902.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000100220_Nerve_Tibial_RTCB_rs75040902.txt 2 1 --recode A --out Geno_gtex_ENSG00000100220_Nerve_Tibial_RTCB_rs75040902
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr22 --extract snps_gtex_ENSG00000100234_Adipose_Subcutaneous_TIMP3_rs75040902.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000100234_Adipose_Subcutaneous_TIMP3_rs75040902.txt 2 1 --recode A --out Geno_gtex_ENSG00000100234_Adipose_Subcutaneous_TIMP3_rs75040902
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr14 --extract snps_gtex_ENSG00000100865_Colon_Sigmoid_CINP_rs76059144.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000100865_Colon_Sigmoid_CINP_rs76059144.txt 2 1 --recode A --out Geno_gtex_ENSG00000100865_Colon_Sigmoid_CINP_rs76059144
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000103018_Pancreas_CYB5B_rs11866628.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000103018_Pancreas_CYB5B_rs11866628.txt 2 1 --recode A --out Geno_gtex_ENSG00000103018_Pancreas_CYB5B_rs11866628
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000103051_Adipose_Subcutaneous_COG4_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000103051_Adipose_Subcutaneous_COG4_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000103051_Adipose_Subcutaneous_COG4_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000103051_Brain_Caudate_basal_ganglia_COG4_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000103051_Brain_Caudate_basal_ganglia_COG4_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000103051_Brain_Caudate_basal_ganglia_COG4_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000103051_Brain_Cerebellar_Hemisphere_COG4_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000103051_Brain_Cerebellar_Hemisphere_COG4_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000103051_Brain_Cerebellar_Hemisphere_COG4_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000103051_Brain_Cerebellum_COG4_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000103051_Brain_Cerebellum_COG4_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000103051_Brain_Cerebellum_COG4_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000103051_Brain_Cortex_COG4_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000103051_Brain_Cortex_COG4_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000103051_Brain_Cortex_COG4_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000103051_Cells_Cultured_fibroblasts_COG4_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000103051_Cells_Cultured_fibroblasts_COG4_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000103051_Cells_Cultured_fibroblasts_COG4_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000103051_Esophagus_Mucosa_COG4_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000103051_Esophagus_Mucosa_COG4_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000103051_Esophagus_Mucosa_COG4_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000103051_Esophagus_Muscularis_COG4_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000103051_Esophagus_Muscularis_COG4_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000103051_Esophagus_Muscularis_COG4_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000103051_Heart_Left_Ventricle_COG4_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000103051_Heart_Left_Ventricle_COG4_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000103051_Heart_Left_Ventricle_COG4_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000103051_Lung_COG4_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000103051_Lung_COG4_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000103051_Lung_COG4_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000103051_Nerve_Tibial_COG4_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000103051_Nerve_Tibial_COG4_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000103051_Nerve_Tibial_COG4_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000103051_Pancreas_COG4_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000103051_Pancreas_COG4_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000103051_Pancreas_COG4_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000103051_Skin_Not_Sun_Exposed_Suprapubic_COG4_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000103051_Skin_Not_Sun_Exposed_Suprapubic_COG4_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000103051_Skin_Not_Sun_Exposed_Suprapubic_COG4_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000103051_Spleen_COG4_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000103051_Spleen_COG4_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000103051_Spleen_COG4_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000103051_Whole_Blood_COG4_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000103051_Whole_Blood_COG4_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000103051_Whole_Blood_COG4_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000104626_Brain_Caudate_basal_ganglia_ERI1_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000104626_Brain_Caudate_basal_ganglia_ERI1_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000104626_Brain_Caudate_basal_ganglia_ERI1_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000104626_Brain_Nucleus_accumbens_basal_ganglia_ERI1_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000104626_Brain_Nucleus_accumbens_basal_ganglia_ERI1_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000104626_Brain_Nucleus_accumbens_basal_ganglia_ERI1_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000104626_Brain_Putamen_basal_ganglia_ERI1_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000104626_Brain_Putamen_basal_ganglia_ERI1_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000104626_Brain_Putamen_basal_ganglia_ERI1_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000104626_Cells_Cultured_fibroblasts_ERI1_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000104626_Cells_Cultured_fibroblasts_ERI1_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000104626_Cells_Cultured_fibroblasts_ERI1_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000104626_Lung_ERI1_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000104626_Lung_ERI1_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000104626_Lung_ERI1_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000104626_Testis_ERI1_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000104626_Testis_ERI1_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000104626_Testis_ERI1_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr7 --extract snps_gtex_ENSG00000106105_Uterus_GARS_rs11983282.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000106105_Uterus_GARS_rs11983282.txt 2 1 --recode A --out Geno_gtex_ENSG00000106105_Uterus_GARS_rs11983282
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000107140_Adipose_Subcutaneous_TESK1_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000107140_Adipose_Subcutaneous_TESK1_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000107140_Adipose_Subcutaneous_TESK1_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000107140_Heart_Left_Ventricle_TESK1_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000107140_Heart_Left_Ventricle_TESK1_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000107140_Heart_Left_Ventricle_TESK1_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000107147_Muscle_Skeletal_KCNT1_rs112641186.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000107147_Muscle_Skeletal_KCNT1_rs112641186.txt 2 1 --recode A --out Geno_gtex_ENSG00000107147_Muscle_Skeletal_KCNT1_rs112641186
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000107159_Pancreas_CA9_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000107159_Pancreas_CA9_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000107159_Pancreas_CA9_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000107175_Esophagus_Mucosa_CREB3_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000107175_Esophagus_Mucosa_CREB3_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000107175_Esophagus_Mucosa_CREB3_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000107185_Artery_Aorta_RGP1_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000107185_Artery_Aorta_RGP1_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000107185_Artery_Aorta_RGP1_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000107185_Heart_Atrial_Appendage_RGP1_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000107185_Heart_Atrial_Appendage_RGP1_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000107185_Heart_Atrial_Appendage_RGP1_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000107185_Heart_Left_Ventricle_RGP1_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000107185_Heart_Left_Ventricle_RGP1_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000107185_Heart_Left_Ventricle_RGP1_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000107187_Skin_Not_Sun_Exposed_Suprapubic_LHX3_rs112641186.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000107187_Skin_Not_Sun_Exposed_Suprapubic_LHX3_rs112641186.txt 2 1 --recode A --out Geno_gtex_ENSG00000107187_Skin_Not_Sun_Exposed_Suprapubic_LHX3_rs112641186
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr17 --extract snps_gtex_ENSG00000108405_Artery_Tibial_P2RX1_rs112236917.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000108405_Artery_Tibial_P2RX1_rs112236917.txt 2 1 --recode A --out Geno_gtex_ENSG00000108405_Artery_Tibial_P2RX1_rs112236917
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr12 --extract snps_gtex_ENSG00000111713_Prostate_GYS2_rs4149000.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000111713_Prostate_GYS2_rs4149000.txt 2 1 --recode A --out Geno_gtex_ENSG00000111713_Prostate_GYS2_rs4149000
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Adipose_Subcutaneous_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Adipose_Subcutaneous_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Adipose_Subcutaneous_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Adipose_Visceral_Omentum_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Adipose_Visceral_Omentum_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Adipose_Visceral_Omentum_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Artery_Aorta_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Artery_Aorta_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Artery_Aorta_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Artery_Tibial_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Artery_Tibial_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Artery_Tibial_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Brain_Spinal_cord_cervical_c-1_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Brain_Spinal_cord_cervical_c-1_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Brain_Spinal_cord_cervical_c-1_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Breast_Mammary_Tissue_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Breast_Mammary_Tissue_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Breast_Mammary_Tissue_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Cells_Cultured_fibroblasts_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Cells_Cultured_fibroblasts_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Cells_Cultured_fibroblasts_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Colon_Sigmoid_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Colon_Sigmoid_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Colon_Sigmoid_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Colon_Transverse_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Colon_Transverse_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Colon_Transverse_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Esophagus_Gastroesophageal_Junction_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Esophagus_Gastroesophageal_Junction_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Esophagus_Gastroesophageal_Junction_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Esophagus_Mucosa_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Esophagus_Mucosa_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Esophagus_Mucosa_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Esophagus_Muscularis_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Esophagus_Muscularis_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Esophagus_Muscularis_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Lung_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Lung_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Lung_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Muscle_Skeletal_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Muscle_Skeletal_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Muscle_Skeletal_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Nerve_Tibial_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Nerve_Tibial_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Nerve_Tibial_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Skin_Not_Sun_Exposed_Suprapubic_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Skin_Not_Sun_Exposed_Suprapubic_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Skin_Not_Sun_Exposed_Suprapubic_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Skin_Sun_Exposed_Lower_leg_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Skin_Sun_Exposed_Lower_leg_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Skin_Sun_Exposed_Lower_leg_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Small_Intestine_Terminal_Ileum_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Small_Intestine_Terminal_Ileum_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Small_Intestine_Terminal_Ileum_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Spleen_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Spleen_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Spleen_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Thyroid_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Thyroid_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Thyroid_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112290_Whole_Blood_WASF1_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112290_Whole_Blood_WASF1_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000112290_Whole_Blood_WASF1_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000112773_Kidney_Cortex_FAM46A_rs72893422.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000112773_Kidney_Cortex_FAM46A_rs72893422.txt 2 1 --recode A --out Geno_gtex_ENSG00000112773_Kidney_Cortex_FAM46A_rs72893422
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000113070_Skin_Not_Sun_Exposed_Suprapubic_HBEGF_rs13166214.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000113070_Skin_Not_Sun_Exposed_Suprapubic_HBEGF_rs13166214.txt 2 1 --recode A --out Geno_gtex_ENSG00000113070_Skin_Not_Sun_Exposed_Suprapubic_HBEGF_rs13166214
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000113073_Pancreas_SLC4A9_rs13166214.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000113073_Pancreas_SLC4A9_rs13166214.txt 2 1 --recode A --out Geno_gtex_ENSG00000113073_Pancreas_SLC4A9_rs13166214
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000113163_Thyroid_COL4A3BP_rs670645.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000113163_Thyroid_COL4A3BP_rs670645.txt 2 1 --recode A --out Geno_gtex_ENSG00000113163_Thyroid_COL4A3BP_rs670645
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000114346_Brain_Spinal_cord_cervical_c-1_ECT2_rs13073381.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000114346_Brain_Spinal_cord_cervical_c-1_ECT2_rs13073381.txt 2 1 --recode A --out Geno_gtex_ENSG00000114346_Brain_Spinal_cord_cervical_c-1_ECT2_rs13073381
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000114933_Colon_Sigmoid_INO80D_rs138982901.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000114933_Colon_Sigmoid_INO80D_rs138982901.txt 2 1 --recode A --out Geno_gtex_ENSG00000114933_Colon_Sigmoid_INO80D_rs138982901
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000114948_Testis_ADAM23_rs138982901.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000114948_Testis_ADAM23_rs138982901.txt 2 1 --recode A --out Geno_gtex_ENSG00000114948_Testis_ADAM23_rs138982901
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000115073_Artery_Coronary_ACTR1B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000115073_Artery_Coronary_ACTR1B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000115073_Artery_Coronary_ACTR1B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000115073_Nerve_Tibial_ACTR1B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000115073_Nerve_Tibial_ACTR1B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000115073_Nerve_Tibial_ACTR1B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000115085_Whole_Blood_ZAP70_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000115085_Whole_Blood_ZAP70_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000115085_Whole_Blood_ZAP70_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Adipose_Subcutaneous_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Adipose_Subcutaneous_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Adipose_Subcutaneous_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Adipose_Visceral_Omentum_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Adipose_Visceral_Omentum_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Adipose_Visceral_Omentum_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Artery_Aorta_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Artery_Aorta_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Artery_Aorta_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Breast_Mammary_Tissue_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Breast_Mammary_Tissue_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Breast_Mammary_Tissue_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Colon_Sigmoid_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Colon_Sigmoid_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Colon_Sigmoid_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Colon_Transverse_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Colon_Transverse_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Colon_Transverse_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Esophagus_Gastroesophageal_Junction_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Esophagus_Gastroesophageal_Junction_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Esophagus_Gastroesophageal_Junction_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Esophagus_Mucosa_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Esophagus_Mucosa_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Esophagus_Mucosa_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Esophagus_Muscularis_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Esophagus_Muscularis_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Esophagus_Muscularis_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Heart_Atrial_Appendage_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Heart_Atrial_Appendage_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Heart_Atrial_Appendage_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Heart_Left_Ventricle_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Heart_Left_Ventricle_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Heart_Left_Ventricle_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Lung_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Lung_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Lung_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Minor_Salivary_Gland_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Minor_Salivary_Gland_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Minor_Salivary_Gland_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Muscle_Skeletal_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Muscle_Skeletal_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Muscle_Skeletal_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Nerve_Tibial_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Nerve_Tibial_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Nerve_Tibial_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Pancreas_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Pancreas_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Pancreas_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Prostate_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Prostate_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Prostate_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Skin_Not_Sun_Exposed_Suprapubic_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Skin_Not_Sun_Exposed_Suprapubic_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Skin_Not_Sun_Exposed_Suprapubic_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Skin_Sun_Exposed_Lower_leg_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Skin_Sun_Exposed_Lower_leg_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Skin_Sun_Exposed_Lower_leg_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Small_Intestine_Terminal_Ileum_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Small_Intestine_Terminal_Ileum_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Small_Intestine_Terminal_Ileum_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Spleen_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Spleen_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Spleen_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Stomach_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Stomach_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Stomach_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Thyroid_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Thyroid_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Thyroid_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000116977_Whole_Blood_LGALS8_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000116977_Whole_Blood_LGALS8_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000116977_Whole_Blood_LGALS8_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000118855_Cells_Cultured_fibroblasts_MFSD1_rs116489699.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000118855_Cells_Cultured_fibroblasts_MFSD1_rs116489699.txt 2 1 --recode A --out Geno_gtex_ENSG00000118855_Cells_Cultured_fibroblasts_MFSD1_rs116489699
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000119285_Colon_Transverse_HEATR1_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000119285_Colon_Transverse_HEATR1_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000119285_Colon_Transverse_HEATR1_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000119285_Testis_HEATR1_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000119285_Testis_HEATR1_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000119285_Testis_HEATR1_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000119787_Brain_Spinal_cord_cervical_c-1_ATL2_rs6761414.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000119787_Brain_Spinal_cord_cervical_c-1_ATL2_rs6761414.txt 2 1 --recode A --out Geno_gtex_ENSG00000119787_Brain_Spinal_cord_cervical_c-1_ATL2_rs6761414
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000119787_Whole_Blood_ATL2_rs6761414.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000119787_Whole_Blood_ATL2_rs6761414.txt 2 1 --recode A --out Geno_gtex_ENSG00000119787_Whole_Blood_ATL2_rs6761414
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000120306_Esophagus_Muscularis_CYSTM1_rs13166214.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000120306_Esophagus_Muscularis_CYSTM1_rs13166214.txt 2 1 --recode A --out Geno_gtex_ENSG00000120306_Esophagus_Muscularis_CYSTM1_rs13166214
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000120705_Brain_Amygdala_ETF1_rs13166214.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000120705_Brain_Amygdala_ETF1_rs13166214.txt 2 1 --recode A --out Geno_gtex_ENSG00000120705_Brain_Amygdala_ETF1_rs13166214
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000122733_Heart_Atrial_Appendage_PHF24_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000122733_Heart_Atrial_Appendage_PHF24_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000122733_Heart_Atrial_Appendage_PHF24_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr12 --extract snps_gtex_ENSG00000123096_Brain_Cerebellar_Hemisphere_SSPN_rs58292015.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000123096_Brain_Cerebellar_Hemisphere_SSPN_rs58292015.txt 2 1 --recode A --out Geno_gtex_ENSG00000123096_Brain_Cerebellar_Hemisphere_SSPN_rs58292015
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr12 --extract snps_gtex_ENSG00000123096_Brain_Cerebellum_SSPN_rs58292015.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000123096_Brain_Cerebellum_SSPN_rs58292015.txt 2 1 --recode A --out Geno_gtex_ENSG00000123096_Brain_Cerebellum_SSPN_rs58292015
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr12 --extract snps_gtex_ENSG00000123096_Cells_Cultured_fibroblasts_SSPN_rs58292015.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000123096_Cells_Cultured_fibroblasts_SSPN_rs58292015.txt 2 1 --recode A --out Geno_gtex_ENSG00000123096_Cells_Cultured_fibroblasts_SSPN_rs58292015
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000124172_Esophagus_Mucosa_ATP5E_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000124172_Esophagus_Mucosa_ATP5E_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000124172_Esophagus_Mucosa_ATP5E_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000124205_Small_Intestine_Terminal_Ileum_EDN3_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000124205_Small_Intestine_Terminal_Ileum_EDN3_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000124205_Small_Intestine_Terminal_Ileum_EDN3_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000124222_Skin_Sun_Exposed_Lower_leg_STX16_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000124222_Skin_Sun_Exposed_Lower_leg_STX16_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000124222_Skin_Sun_Exposed_Lower_leg_STX16_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr12 --extract snps_gtex_ENSG00000127314_Thyroid_RAP1B_rs74099611.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000127314_Thyroid_RAP1B_rs74099611.txt 2 1 --recode A --out Geno_gtex_ENSG00000127314_Thyroid_RAP1B_rs74099611
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000128655_Artery_Aorta_PDE11A_rs34507449.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000128655_Artery_Aorta_PDE11A_rs34507449.txt 2 1 --recode A --out Geno_gtex_ENSG00000128655_Artery_Aorta_PDE11A_rs34507449
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000128655_Heart_Left_Ventricle_PDE11A_rs34507449.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000128655_Heart_Left_Ventricle_PDE11A_rs34507449.txt 2 1 --recode A --out Geno_gtex_ENSG00000128655_Heart_Left_Ventricle_PDE11A_rs34507449
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000129048_Brain_Frontal_Cortex_BA9_ACKR4_rs17297332.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000129048_Brain_Frontal_Cortex_BA9_ACKR4_rs17297332.txt 2 1 --recode A --out Geno_gtex_ENSG00000129048_Brain_Frontal_Cortex_BA9_ACKR4_rs17297332
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000132604_Adipose_Subcutaneous_TERF2_rs11866628.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000132604_Adipose_Subcutaneous_TERF2_rs11866628.txt 2 1 --recode A --out Geno_gtex_ENSG00000132604_Adipose_Subcutaneous_TERF2_rs11866628
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000132604_Spleen_TERF2_rs11866628.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000132604_Spleen_TERF2_rs11866628.txt 2 1 --recode A --out Geno_gtex_ENSG00000132604_Spleen_TERF2_rs11866628
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000132612_Adipose_Visceral_Omentum_VPS4A_rs11866628.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000132612_Adipose_Visceral_Omentum_VPS4A_rs11866628.txt 2 1 --recode A --out Geno_gtex_ENSG00000132612_Adipose_Visceral_Omentum_VPS4A_rs11866628
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000132612_Colon_Sigmoid_VPS4A_rs11866628.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000132612_Colon_Sigmoid_VPS4A_rs11866628.txt 2 1 --recode A --out Geno_gtex_ENSG00000132612_Colon_Sigmoid_VPS4A_rs11866628
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr18 --extract snps_gtex_ENSG00000134440_Artery_Aorta_NARS_rs114945575.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000134440_Artery_Aorta_NARS_rs114945575.txt 2 1 --recode A --out Geno_gtex_ENSG00000134440_Artery_Aorta_NARS_rs114945575
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000135940_Whole_Blood_COX5B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000135940_Whole_Blood_COX5B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000135940_Whole_Blood_COX5B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000135976_Cells_Cultured_fibroblasts_ANKRD36_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000135976_Cells_Cultured_fibroblasts_ANKRD36_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000135976_Cells_Cultured_fibroblasts_ANKRD36_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000135976_Testis_ANKRD36_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000135976_Testis_ANKRD36_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000135976_Testis_ANKRD36_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137076_Liver_TLN1_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137076_Liver_TLN1_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000137076_Liver_TLN1_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137078_Skin_Not_Sun_Exposed_Suprapubic_SIT1_rs4878631.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137078_Skin_Not_Sun_Exposed_Suprapubic_SIT1_rs4878631.txt 2 1 --recode A --out Geno_gtex_ENSG00000137078_Skin_Not_Sun_Exposed_Suprapubic_SIT1_rs4878631
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137098_Adipose_Subcutaneous_SPAG8_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137098_Adipose_Subcutaneous_SPAG8_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137098_Adipose_Subcutaneous_SPAG8_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137098_Artery_Tibial_SPAG8_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137098_Artery_Tibial_SPAG8_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137098_Artery_Tibial_SPAG8_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137098_Brain_Cerebellum_SPAG8_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137098_Brain_Cerebellum_SPAG8_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137098_Brain_Cerebellum_SPAG8_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137098_Breast_Mammary_Tissue_SPAG8_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137098_Breast_Mammary_Tissue_SPAG8_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137098_Breast_Mammary_Tissue_SPAG8_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137098_Colon_Transverse_SPAG8_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137098_Colon_Transverse_SPAG8_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137098_Colon_Transverse_SPAG8_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137098_Minor_Salivary_Gland_SPAG8_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137098_Minor_Salivary_Gland_SPAG8_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137098_Minor_Salivary_Gland_SPAG8_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137098_Nerve_Tibial_SPAG8_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137098_Nerve_Tibial_SPAG8_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137098_Nerve_Tibial_SPAG8_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137098_Thyroid_SPAG8_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137098_Thyroid_SPAG8_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137098_Thyroid_SPAG8_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Adipose_Subcutaneous_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Adipose_Subcutaneous_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Adipose_Subcutaneous_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Adipose_Visceral_Omentum_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Adipose_Visceral_Omentum_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Adipose_Visceral_Omentum_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Adrenal_Gland_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Adrenal_Gland_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Adrenal_Gland_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Artery_Aorta_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Artery_Aorta_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Artery_Aorta_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Artery_Coronary_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Artery_Coronary_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Artery_Coronary_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Artery_Tibial_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Artery_Tibial_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Artery_Tibial_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Brain_Amygdala_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Brain_Amygdala_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Brain_Amygdala_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Brain_Anterior_cingulate_cortex_BA24_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Brain_Anterior_cingulate_cortex_BA24_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Brain_Anterior_cingulate_cortex_BA24_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Brain_Caudate_basal_ganglia_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Brain_Caudate_basal_ganglia_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Brain_Caudate_basal_ganglia_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Brain_Cerebellum_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Brain_Cerebellum_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Brain_Cerebellum_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Brain_Cortex_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Brain_Cortex_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Brain_Cortex_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Brain_Frontal_Cortex_BA9_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Brain_Frontal_Cortex_BA9_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Brain_Frontal_Cortex_BA9_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Brain_Hippocampus_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Brain_Hippocampus_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Brain_Hippocampus_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Brain_Hypothalamus_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Brain_Hypothalamus_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Brain_Hypothalamus_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Brain_Nucleus_accumbens_basal_ganglia_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Brain_Nucleus_accumbens_basal_ganglia_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Brain_Nucleus_accumbens_basal_ganglia_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Brain_Putamen_basal_ganglia_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Brain_Putamen_basal_ganglia_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Brain_Putamen_basal_ganglia_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Brain_Spinal_cord_cervical_c-1_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Brain_Spinal_cord_cervical_c-1_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Brain_Spinal_cord_cervical_c-1_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Brain_Substantia_nigra_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Brain_Substantia_nigra_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Brain_Substantia_nigra_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Breast_Mammary_Tissue_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Breast_Mammary_Tissue_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Breast_Mammary_Tissue_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Cells_Cultured_fibroblasts_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Cells_Cultured_fibroblasts_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Cells_Cultured_fibroblasts_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Colon_Sigmoid_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Colon_Sigmoid_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Colon_Sigmoid_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Colon_Transverse_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Colon_Transverse_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Colon_Transverse_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Esophagus_Gastroesophageal_Junction_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Esophagus_Gastroesophageal_Junction_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Esophagus_Gastroesophageal_Junction_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Esophagus_Muscularis_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Esophagus_Muscularis_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Esophagus_Muscularis_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Heart_Atrial_Appendage_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Heart_Atrial_Appendage_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Heart_Atrial_Appendage_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Heart_Left_Ventricle_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Heart_Left_Ventricle_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Heart_Left_Ventricle_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Lung_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Lung_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Lung_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Muscle_Skeletal_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Muscle_Skeletal_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Muscle_Skeletal_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Nerve_Tibial_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Nerve_Tibial_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Nerve_Tibial_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Ovary_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Ovary_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Ovary_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Pancreas_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Pancreas_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Pancreas_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Pituitary_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Pituitary_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Pituitary_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Skin_Not_Sun_Exposed_Suprapubic_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Skin_Not_Sun_Exposed_Suprapubic_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Skin_Not_Sun_Exposed_Suprapubic_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Skin_Sun_Exposed_Lower_leg_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Skin_Sun_Exposed_Lower_leg_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Skin_Sun_Exposed_Lower_leg_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Small_Intestine_Terminal_Ileum_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Small_Intestine_Terminal_Ileum_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Small_Intestine_Terminal_Ileum_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Stomach_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Stomach_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Stomach_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Testis_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Testis_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Testis_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Thyroid_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Thyroid_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Thyroid_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137103_Uterus_TMEM8B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137103_Uterus_TMEM8B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137103_Uterus_TMEM8B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137133_Skin_Not_Sun_Exposed_Suprapubic_HINT2_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137133_Skin_Not_Sun_Exposed_Suprapubic_HINT2_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137133_Skin_Not_Sun_Exposed_Suprapubic_HINT2_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137135_Adipose_Subcutaneous_ARHGEF39_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137135_Adipose_Subcutaneous_ARHGEF39_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137135_Adipose_Subcutaneous_ARHGEF39_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137135_Breast_Mammary_Tissue_ARHGEF39_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137135_Breast_Mammary_Tissue_ARHGEF39_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137135_Breast_Mammary_Tissue_ARHGEF39_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137135_Muscle_Skeletal_ARHGEF39_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137135_Muscle_Skeletal_ARHGEF39_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137135_Muscle_Skeletal_ARHGEF39_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137135_Nerve_Tibial_ARHGEF39_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137135_Nerve_Tibial_ARHGEF39_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137135_Nerve_Tibial_ARHGEF39_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137135_Skin_Sun_Exposed_Lower_leg_ARHGEF39_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137135_Skin_Sun_Exposed_Lower_leg_ARHGEF39_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137135_Skin_Sun_Exposed_Lower_leg_ARHGEF39_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000137135_Thyroid_ARHGEF39_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000137135_Thyroid_ARHGEF39_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000137135_Thyroid_ARHGEF39_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000138061_Nerve_Tibial_CYP1B1_rs6761414.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000138061_Nerve_Tibial_CYP1B1_rs6761414.txt 2 1 --recode A --out Geno_gtex_ENSG00000138061_Nerve_Tibial_CYP1B1_rs6761414
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000138061_Whole_Blood_CYP1B1_rs6761414.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000138061_Whole_Blood_CYP1B1_rs6761414.txt 2 1 --recode A --out Geno_gtex_ENSG00000138061_Whole_Blood_CYP1B1_rs6761414
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr12 --extract snps_gtex_ENSG00000139726_Cells_Cultured_fibroblasts_DENR_rs7296732.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000139726_Cells_Cultured_fibroblasts_DENR_rs7296732.txt 2 1 --recode A --out Geno_gtex_ENSG00000139726_Cells_Cultured_fibroblasts_DENR_rs7296732
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr12 --extract snps_gtex_ENSG00000139726_Esophagus_Mucosa_DENR_rs7296732.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000139726_Esophagus_Mucosa_DENR_rs7296732.txt 2 1 --recode A --out Geno_gtex_ENSG00000139726_Esophagus_Mucosa_DENR_rs7296732
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr17 --extract snps_gtex_ENSG00000141179_Nerve_Tibial_PCTP_rs2960077.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000141179_Nerve_Tibial_PCTP_rs2960077.txt 2 1 --recode A --out Geno_gtex_ENSG00000141179_Nerve_Tibial_PCTP_rs2960077
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr19 --extract snps_gtex_ENSG00000142544_Colon_Transverse_CTU1_rs58768535.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000142544_Colon_Transverse_CTU1_rs58768535.txt 2 1 --recode A --out Geno_gtex_ENSG00000142544_Colon_Transverse_CTU1_rs58768535
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr19 --extract snps_gtex_ENSG00000142544_Esophagus_Mucosa_CTU1_rs58768535.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000142544_Esophagus_Mucosa_CTU1_rs58768535.txt 2 1 --recode A --out Geno_gtex_ENSG00000142544_Esophagus_Mucosa_CTU1_rs58768535
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr19 --extract snps_gtex_ENSG00000142544_Thyroid_CTU1_rs58768535.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000142544_Thyroid_CTU1_rs58768535.txt 2 1 --recode A --out Geno_gtex_ENSG00000142544_Thyroid_CTU1_rs58768535
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr19 --extract snps_gtex_ENSG00000142544_Whole_Blood_CTU1_rs58768535.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000142544_Whole_Blood_CTU1_rs58768535.txt 2 1 --recode A --out Geno_gtex_ENSG00000142544_Whole_Blood_CTU1_rs58768535
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000143891_Skin_Not_Sun_Exposed_Suprapubic_GALM_rs6761414.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000143891_Skin_Not_Sun_Exposed_Suprapubic_GALM_rs6761414.txt 2 1 --recode A --out Geno_gtex_ENSG00000143891_Skin_Not_Sun_Exposed_Suprapubic_GALM_rs6761414
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Adipose_Subcutaneous_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Adipose_Subcutaneous_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Adipose_Subcutaneous_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Adipose_Visceral_Omentum_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Adipose_Visceral_Omentum_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Adipose_Visceral_Omentum_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Artery_Aorta_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Artery_Aorta_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Artery_Aorta_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Artery_Tibial_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Artery_Tibial_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Artery_Tibial_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Brain_Caudate_basal_ganglia_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Brain_Caudate_basal_ganglia_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Brain_Caudate_basal_ganglia_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Brain_Cortex_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Brain_Cortex_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Brain_Cortex_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Brain_Nucleus_accumbens_basal_ganglia_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Brain_Nucleus_accumbens_basal_ganglia_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Brain_Nucleus_accumbens_basal_ganglia_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Brain_Putamen_basal_ganglia_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Brain_Putamen_basal_ganglia_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Brain_Putamen_basal_ganglia_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Breast_Mammary_Tissue_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Breast_Mammary_Tissue_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Breast_Mammary_Tissue_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Cells_Cultured_fibroblasts_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Cells_Cultured_fibroblasts_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Cells_Cultured_fibroblasts_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Colon_Sigmoid_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Colon_Sigmoid_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Colon_Sigmoid_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Colon_Transverse_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Colon_Transverse_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Colon_Transverse_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Esophagus_Gastroesophageal_Junction_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Esophagus_Gastroesophageal_Junction_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Esophagus_Gastroesophageal_Junction_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Esophagus_Mucosa_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Esophagus_Mucosa_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Esophagus_Mucosa_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Esophagus_Muscularis_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Esophagus_Muscularis_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Esophagus_Muscularis_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Heart_Atrial_Appendage_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Heart_Atrial_Appendage_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Heart_Atrial_Appendage_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Heart_Left_Ventricle_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Heart_Left_Ventricle_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Heart_Left_Ventricle_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Kidney_Cortex_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Kidney_Cortex_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Kidney_Cortex_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Lung_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Lung_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Lung_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Muscle_Skeletal_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Muscle_Skeletal_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Muscle_Skeletal_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Nerve_Tibial_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Nerve_Tibial_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Nerve_Tibial_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Pituitary_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Pituitary_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Pituitary_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Skin_Sun_Exposed_Lower_leg_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Skin_Sun_Exposed_Lower_leg_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Skin_Sun_Exposed_Lower_leg_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Stomach_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Stomach_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Stomach_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Thyroid_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Thyroid_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Thyroid_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000144199_Whole_Blood_FAHD2B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144199_Whole_Blood_FAHD2B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000144199_Whole_Blood_FAHD2B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000144550_Heart_Atrial_Appendage_CPNE9_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144550_Heart_Atrial_Appendage_CPNE9_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000144550_Heart_Atrial_Appendage_CPNE9_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000144868_Esophagus_Muscularis_TMEM108_rs35356925.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144868_Esophagus_Muscularis_TMEM108_rs35356925.txt 2 1 --recode A --out Geno_gtex_ENSG00000144868_Esophagus_Muscularis_TMEM108_rs35356925
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000144868_Small_Intestine_Terminal_Ileum_TMEM108_rs35356925.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000144868_Small_Intestine_Terminal_Ileum_TMEM108_rs35356925.txt 2 1 --recode A --out Geno_gtex_ENSG00000144868_Small_Intestine_Terminal_Ileum_TMEM108_rs35356925
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000145283_Adipose_Subcutaneous_SLC10A6_rs183451494.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000145283_Adipose_Subcutaneous_SLC10A6_rs183451494.txt 2 1 --recode A --out Geno_gtex_ENSG00000145283_Adipose_Subcutaneous_SLC10A6_rs183451494
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000145283_Adipose_Visceral_Omentum_SLC10A6_rs183451494.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000145283_Adipose_Visceral_Omentum_SLC10A6_rs183451494.txt 2 1 --recode A --out Geno_gtex_ENSG00000145283_Adipose_Visceral_Omentum_SLC10A6_rs183451494
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000145283_Esophagus_Gastroesophageal_Junction_SLC10A6_rs183451494.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000145283_Esophagus_Gastroesophageal_Junction_SLC10A6_rs183451494.txt 2 1 --recode A --out Geno_gtex_ENSG00000145283_Esophagus_Gastroesophageal_Junction_SLC10A6_rs183451494
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000145283_Esophagus_Muscularis_SLC10A6_rs183451494.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000145283_Esophagus_Muscularis_SLC10A6_rs183451494.txt 2 1 --recode A --out Geno_gtex_ENSG00000145283_Esophagus_Muscularis_SLC10A6_rs183451494
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000145283_Kidney_Cortex_SLC10A6_rs183451494.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000145283_Kidney_Cortex_SLC10A6_rs183451494.txt 2 1 --recode A --out Geno_gtex_ENSG00000145283_Kidney_Cortex_SLC10A6_rs183451494
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000145283_Muscle_Skeletal_SLC10A6_rs183451494.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000145283_Muscle_Skeletal_SLC10A6_rs183451494.txt 2 1 --recode A --out Geno_gtex_ENSG00000145283_Muscle_Skeletal_SLC10A6_rs183451494
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000145283_Nerve_Tibial_SLC10A6_rs183451494.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000145283_Nerve_Tibial_SLC10A6_rs183451494.txt 2 1 --recode A --out Geno_gtex_ENSG00000145283_Nerve_Tibial_SLC10A6_rs183451494
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000145358_Brain_Amygdala_DDIT4L_rs72929351.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000145358_Brain_Amygdala_DDIT4L_rs72929351.txt 2 1 --recode A --out Geno_gtex_ENSG00000145358_Brain_Amygdala_DDIT4L_rs72929351
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000145358_Testis_DDIT4L_rs72929351.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000145358_Testis_DDIT4L_rs72929351.txt 2 1 --recode A --out Geno_gtex_ENSG00000145358_Testis_DDIT4L_rs72929351
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000146005_Artery_Tibial_PSD2_rs13166214.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000146005_Artery_Tibial_PSD2_rs13166214.txt 2 1 --recode A --out Geno_gtex_ENSG00000146005_Artery_Tibial_PSD2_rs13166214
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000147324_Heart_Atrial_Appendage_MFHAS1_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000147324_Heart_Atrial_Appendage_MFHAS1_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000147324_Heart_Atrial_Appendage_MFHAS1_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000147324_Heart_Left_Ventricle_MFHAS1_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000147324_Heart_Left_Ventricle_MFHAS1_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000147324_Heart_Left_Ventricle_MFHAS1_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000147324_Lung_MFHAS1_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000147324_Lung_MFHAS1_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000147324_Lung_MFHAS1_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000147324_Muscle_Skeletal_MFHAS1_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000147324_Muscle_Skeletal_MFHAS1_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000147324_Muscle_Skeletal_MFHAS1_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000147324_Thyroid_MFHAS1_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000147324_Thyroid_MFHAS1_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000147324_Thyroid_MFHAS1_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000147416_Esophagus_Muscularis_ATP6V1B2_rs75768779.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000147416_Esophagus_Muscularis_ATP6V1B2_rs75768779.txt 2 1 --recode A --out Geno_gtex_ENSG00000147416_Esophagus_Muscularis_ATP6V1B2_rs75768779
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000147416_Muscle_Skeletal_ATP6V1B2_rs75768779.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000147416_Muscle_Skeletal_ATP6V1B2_rs75768779.txt 2 1 --recode A --out Geno_gtex_ENSG00000147416_Muscle_Skeletal_ATP6V1B2_rs75768779
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000148057_Nerve_Tibial_IDNK_rs12350607.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000148057_Nerve_Tibial_IDNK_rs12350607.txt 2 1 --recode A --out Geno_gtex_ENSG00000148057_Nerve_Tibial_IDNK_rs12350607
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000148082_Cells_Cultured_fibroblasts_SHC3_rs9722568.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000148082_Cells_Cultured_fibroblasts_SHC3_rs9722568.txt 2 1 --recode A --out Geno_gtex_ENSG00000148082_Cells_Cultured_fibroblasts_SHC3_rs9722568
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000148985_Thyroid_PGAP2_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000148985_Thyroid_PGAP2_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000148985_Thyroid_PGAP2_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000149503_Adipose_Subcutaneous_INCENP_rs7112655.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000149503_Adipose_Subcutaneous_INCENP_rs7112655.txt 2 1 --recode A --out Geno_gtex_ENSG00000149503_Adipose_Subcutaneous_INCENP_rs7112655
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000149503_Artery_Tibial_INCENP_rs7112655.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000149503_Artery_Tibial_INCENP_rs7112655.txt 2 1 --recode A --out Geno_gtex_ENSG00000149503_Artery_Tibial_INCENP_rs7112655
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000149503_Breast_Mammary_Tissue_INCENP_rs7112655.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000149503_Breast_Mammary_Tissue_INCENP_rs7112655.txt 2 1 --recode A --out Geno_gtex_ENSG00000149503_Breast_Mammary_Tissue_INCENP_rs7112655
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000153064_Brain_Substantia_nigra_BANK1_rs72929351.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000153064_Brain_Substantia_nigra_BANK1_rs72929351.txt 2 1 --recode A --out Geno_gtex_ENSG00000153064_Brain_Substantia_nigra_BANK1_rs72929351
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000153064_Colon_Sigmoid_BANK1_rs72929351.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000153064_Colon_Sigmoid_BANK1_rs72929351.txt 2 1 --recode A --out Geno_gtex_ENSG00000153064_Colon_Sigmoid_BANK1_rs72929351
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr17 --extract snps_gtex_ENSG00000153930_Nerve_Tibial_ANKFN1_rs2960077.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000153930_Nerve_Tibial_ANKFN1_rs2960077.txt 2 1 --recode A --out Geno_gtex_ENSG00000153930_Nerve_Tibial_ANKFN1_rs2960077
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157322_Nerve_Tibial_CLEC18A_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157322_Nerve_Tibial_CLEC18A_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157322_Nerve_Tibial_CLEC18A_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157322_Testis_CLEC18A_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157322_Testis_CLEC18A_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157322_Testis_CLEC18A_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157349_Adrenal_Gland_DDX19B_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157349_Adrenal_Gland_DDX19B_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157349_Adrenal_Gland_DDX19B_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157349_Esophagus_Mucosa_DDX19B_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157349_Esophagus_Mucosa_DDX19B_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157349_Esophagus_Mucosa_DDX19B_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157350_Testis_ST3GAL2_rs11866628.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157350_Testis_ST3GAL2_rs11866628.txt 2 1 --recode A --out Geno_gtex_ENSG00000157350_Testis_ST3GAL2_rs11866628
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157353_Artery_Tibial_FUK_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157353_Artery_Tibial_FUK_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157353_Artery_Tibial_FUK_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157353_Brain_Cortex_FUK_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157353_Brain_Cortex_FUK_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157353_Brain_Cortex_FUK_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157353_Brain_Frontal_Cortex_BA9_FUK_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157353_Brain_Frontal_Cortex_BA9_FUK_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157353_Brain_Frontal_Cortex_BA9_FUK_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157353_Brain_Nucleus_accumbens_basal_ganglia_FUK_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157353_Brain_Nucleus_accumbens_basal_ganglia_FUK_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157353_Brain_Nucleus_accumbens_basal_ganglia_FUK_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157353_Cells_Cultured_fibroblasts_FUK_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157353_Cells_Cultured_fibroblasts_FUK_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157353_Cells_Cultured_fibroblasts_FUK_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157353_Esophagus_Mucosa_FUK_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157353_Esophagus_Mucosa_FUK_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157353_Esophagus_Mucosa_FUK_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157353_Heart_Atrial_Appendage_FUK_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157353_Heart_Atrial_Appendage_FUK_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157353_Heart_Atrial_Appendage_FUK_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157353_Liver_FUK_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157353_Liver_FUK_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157353_Liver_FUK_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157353_Minor_Salivary_Gland_FUK_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157353_Minor_Salivary_Gland_FUK_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157353_Minor_Salivary_Gland_FUK_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157353_Pancreas_FUK_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157353_Pancreas_FUK_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157353_Pancreas_FUK_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157353_Thyroid_FUK_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157353_Thyroid_FUK_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157353_Thyroid_FUK_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157368_Esophagus_Mucosa_IL34_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157368_Esophagus_Mucosa_IL34_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157368_Esophagus_Mucosa_IL34_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000157368_Nerve_Tibial_IL34_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157368_Nerve_Tibial_IL34_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000157368_Nerve_Tibial_IL34_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000157601_Adipose_Subcutaneous_MX1_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157601_Adipose_Subcutaneous_MX1_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000157601_Adipose_Subcutaneous_MX1_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000157601_Brain_Cerebellum_MX1_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157601_Brain_Cerebellum_MX1_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000157601_Brain_Cerebellum_MX1_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000157601_Kidney_Cortex_MX1_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000157601_Kidney_Cortex_MX1_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000157601_Kidney_Cortex_MX1_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000158458_Brain_Anterior_cingulate_cortex_BA24_NRG2_rs13166214.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000158458_Brain_Anterior_cingulate_cortex_BA24_NRG2_rs13166214.txt 2 1 --recode A --out Geno_gtex_ENSG00000158458_Brain_Anterior_cingulate_cortex_BA24_NRG2_rs13166214
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000159189_Muscle_Skeletal_C1QC_rs11805067.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000159189_Muscle_Skeletal_C1QC_rs11805067.txt 2 1 --recode A --out Geno_gtex_ENSG00000159189_Muscle_Skeletal_C1QC_rs11805067
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000159884_Adipose_Subcutaneous_CCDC107_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000159884_Adipose_Subcutaneous_CCDC107_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000159884_Adipose_Subcutaneous_CCDC107_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000159884_Esophagus_Muscularis_CCDC107_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000159884_Esophagus_Muscularis_CCDC107_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000159884_Esophagus_Muscularis_CCDC107_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000159884_Pancreas_CCDC107_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000159884_Pancreas_CCDC107_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000159884_Pancreas_CCDC107_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000159899_Brain_Hypothalamus_NPR2_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000159899_Brain_Hypothalamus_NPR2_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000159899_Brain_Hypothalamus_NPR2_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000159899_Muscle_Skeletal_NPR2_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000159899_Muscle_Skeletal_NPR2_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000159899_Muscle_Skeletal_NPR2_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000159921_Lung_GNE_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000159921_Lung_GNE_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000159921_Lung_GNE_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000160307_Brain_Cortex_S100B_rs76924721.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000160307_Brain_Cortex_S100B_rs76924721.txt 2 1 --recode A --out Geno_gtex_ENSG00000160307_Brain_Cortex_S100B_rs76924721
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000163633_Lung_C4orf36_rs183451494.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000163633_Lung_C4orf36_rs183451494.txt 2 1 --recode A --out Geno_gtex_ENSG00000163633_Lung_C4orf36_rs183451494
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000163719_Skin_Not_Sun_Exposed_Suprapubic_MTMR14_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000163719_Skin_Not_Sun_Exposed_Suprapubic_MTMR14_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000163719_Skin_Not_Sun_Exposed_Suprapubic_MTMR14_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000163947_Uterus_ARHGEF3_rs73091242.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000163947_Uterus_ARHGEF3_rs73091242.txt 2 1 --recode A --out Geno_gtex_ENSG00000163947_Uterus_ARHGEF3_rs73091242
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr7 --extract snps_gtex_ENSG00000164815_Thyroid_ORC5_rs7794488.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000164815_Thyroid_ORC5_rs7794488.txt 2 1 --recode A --out Geno_gtex_ENSG00000164815_Thyroid_ORC5_rs7794488
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000165280_Colon_Transverse_VCP_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000165280_Colon_Transverse_VCP_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000165280_Colon_Transverse_VCP_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr17 --extract snps_gtex_ENSG00000166292_Nerve_Tibial_TMEM100_rs2960077.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000166292_Nerve_Tibial_TMEM100_rs2960077.txt 2 1 --recode A --out Geno_gtex_ENSG00000166292_Nerve_Tibial_TMEM100_rs2960077
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000167311_Artery_Aorta_ART5_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000167311_Artery_Aorta_ART5_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000167311_Artery_Aorta_ART5_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000167311_Artery_Tibial_ART5_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000167311_Artery_Tibial_ART5_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000167311_Artery_Tibial_ART5_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000167311_Brain_Putamen_basal_ganglia_ART5_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000167311_Brain_Putamen_basal_ganglia_ART5_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000167311_Brain_Putamen_basal_ganglia_ART5_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000167311_Colon_Sigmoid_ART5_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000167311_Colon_Sigmoid_ART5_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000167311_Colon_Sigmoid_ART5_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000167311_Esophagus_Gastroesophageal_Junction_ART5_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000167311_Esophagus_Gastroesophageal_Junction_ART5_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000167311_Esophagus_Gastroesophageal_Junction_ART5_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000167311_Esophagus_Muscularis_ART5_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000167311_Esophagus_Muscularis_ART5_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000167311_Esophagus_Muscularis_ART5_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000167311_Pancreas_ART5_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000167311_Pancreas_ART5_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000167311_Pancreas_ART5_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000167311_Skin_Not_Sun_Exposed_Suprapubic_ART5_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000167311_Skin_Not_Sun_Exposed_Suprapubic_ART5_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000167311_Skin_Not_Sun_Exposed_Suprapubic_ART5_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000167311_Stomach_ART5_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000167311_Stomach_ART5_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000167311_Stomach_ART5_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000167311_Testis_ART5_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000167311_Testis_ART5_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000167311_Testis_ART5_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr17 --extract snps_gtex_ENSG00000167723_Pancreas_TRPV3_rs112236917.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000167723_Pancreas_TRPV3_rs112236917.txt 2 1 --recode A --out Geno_gtex_ENSG00000167723_Pancreas_TRPV3_rs112236917
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000168137_Uterus_SETD5_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000168137_Uterus_SETD5_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000168137_Uterus_SETD5_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000168658_Breast_Mammary_Tissue_VWA3B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000168658_Breast_Mammary_Tissue_VWA3B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000168658_Breast_Mammary_Tissue_VWA3B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000168754_Artery_Aorta_FAM178B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000168754_Artery_Aorta_FAM178B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000168754_Artery_Aorta_FAM178B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000168754_Artery_Tibial_FAM178B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000168754_Artery_Tibial_FAM178B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000168754_Artery_Tibial_FAM178B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000168754_Colon_Sigmoid_FAM178B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000168754_Colon_Sigmoid_FAM178B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000168754_Colon_Sigmoid_FAM178B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000168754_Esophagus_Gastroesophageal_Junction_FAM178B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000168754_Esophagus_Gastroesophageal_Junction_FAM178B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000168754_Esophagus_Gastroesophageal_Junction_FAM178B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000168754_Esophagus_Muscularis_FAM178B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000168754_Esophagus_Muscularis_FAM178B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000168754_Esophagus_Muscularis_FAM178B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000168754_Nerve_Tibial_FAM178B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000168754_Nerve_Tibial_FAM178B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000168754_Nerve_Tibial_FAM178B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000168758_Pancreas_SEMA4C_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000168758_Pancreas_SEMA4C_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000168758_Pancreas_SEMA4C_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000168758_Thyroid_SEMA4C_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000168758_Thyroid_SEMA4C_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000168758_Thyroid_SEMA4C_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000168763_Pancreas_CNNM3_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000168763_Pancreas_CNNM3_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000168763_Pancreas_CNNM3_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000168828_Heart_Left_Ventricle_OR13J1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000168828_Heart_Left_Ventricle_OR13J1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000168828_Heart_Left_Ventricle_OR13J1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000169760_Adipose_Visceral_Omentum_NLGN1_rs13073381.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000169760_Adipose_Visceral_Omentum_NLGN1_rs13073381.txt 2 1 --recode A --out Geno_gtex_ENSG00000169760_Adipose_Visceral_Omentum_NLGN1_rs13073381
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000169760_Esophagus_Gastroesophageal_Junction_NLGN1_rs13073381.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000169760_Esophagus_Gastroesophageal_Junction_NLGN1_rs13073381.txt 2 1 --recode A --out Geno_gtex_ENSG00000169760_Esophagus_Gastroesophageal_Junction_NLGN1_rs13073381
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000169760_Esophagus_Muscularis_NLGN1_rs13073381.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000169760_Esophagus_Muscularis_NLGN1_rs13073381.txt 2 1 --recode A --out Geno_gtex_ENSG00000169760_Esophagus_Muscularis_NLGN1_rs13073381
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000169760_Testis_NLGN1_rs13073381.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000169760_Testis_NLGN1_rs13073381.txt 2 1 --recode A --out Geno_gtex_ENSG00000169760_Testis_NLGN1_rs13073381
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000169760_Thyroid_NLGN1_rs13073381.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000169760_Thyroid_NLGN1_rs13073381.txt 2 1 --recode A --out Geno_gtex_ENSG00000169760_Thyroid_NLGN1_rs13073381
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000170464_Adrenal_Gland_DNAJC18_rs1131769.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000170464_Adrenal_Gland_DNAJC18_rs1131769.txt 2 1 --recode A --out Geno_gtex_ENSG00000170464_Adrenal_Gland_DNAJC18_rs1131769
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000170464_Stomach_DNAJC18_rs1131769.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000170464_Stomach_DNAJC18_rs1131769.txt 2 1 --recode A --out Geno_gtex_ENSG00000170464_Stomach_DNAJC18_rs1131769
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000170464_Thyroid_DNAJC18_rs1131769.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000170464_Thyroid_DNAJC18_rs1131769.txt 2 1 --recode A --out Geno_gtex_ENSG00000170464_Thyroid_DNAJC18_rs1131769
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000170469_Adipose_Visceral_Omentum_SPATA24_rs1131769.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000170469_Adipose_Visceral_Omentum_SPATA24_rs1131769.txt 2 1 --recode A --out Geno_gtex_ENSG00000170469_Adipose_Visceral_Omentum_SPATA24_rs1131769
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000170469_Heart_Left_Ventricle_SPATA24_rs1131769.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000170469_Heart_Left_Ventricle_SPATA24_rs1131769.txt 2 1 --recode A --out Geno_gtex_ENSG00000170469_Heart_Left_Ventricle_SPATA24_rs1131769
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000170482_Skin_Sun_Exposed_Lower_leg_SLC23A1_rs1131769.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000170482_Skin_Sun_Exposed_Lower_leg_SLC23A1_rs1131769.txt 2 1 --recode A --out Geno_gtex_ENSG00000170482_Skin_Sun_Exposed_Lower_leg_SLC23A1_rs1131769
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000170502_Brain_Cortex_NUDT9_rs183451494.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000170502_Brain_Cortex_NUDT9_rs183451494.txt 2 1 --recode A --out Geno_gtex_ENSG00000170502_Brain_Cortex_NUDT9_rs183451494
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000171604_Small_Intestine_Terminal_Ileum_CXXC5_rs13166214.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000171604_Small_Intestine_Terminal_Ileum_CXXC5_rs13166214.txt 2 1 --recode A --out Geno_gtex_ENSG00000171604_Small_Intestine_Terminal_Ileum_CXXC5_rs13166214
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000171617_Whole_Blood_ENC1_rs670645.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000171617_Whole_Blood_ENC1_rs670645.txt 2 1 --recode A --out Geno_gtex_ENSG00000171617_Whole_Blood_ENC1_rs670645
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000173281_Nerve_Tibial_PPP1R3B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000173281_Nerve_Tibial_PPP1R3B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000173281_Nerve_Tibial_PPP1R3B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000173281_Testis_PPP1R3B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000173281_Testis_PPP1R3B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000173281_Testis_PPP1R3B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000173295_Brain_Cerebellar_Hemisphere_FAM86B3P_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000173295_Brain_Cerebellar_Hemisphere_FAM86B3P_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000173295_Brain_Cerebellar_Hemisphere_FAM86B3P_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000173295_Brain_Cerebellum_FAM86B3P_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000173295_Brain_Cerebellum_FAM86B3P_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000173295_Brain_Cerebellum_FAM86B3P_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000173295_Brain_Cortex_FAM86B3P_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000173295_Brain_Cortex_FAM86B3P_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000173295_Brain_Cortex_FAM86B3P_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000173295_Brain_Frontal_Cortex_BA9_FAM86B3P_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000173295_Brain_Frontal_Cortex_BA9_FAM86B3P_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000173295_Brain_Frontal_Cortex_BA9_FAM86B3P_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000173295_Brain_Hippocampus_FAM86B3P_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000173295_Brain_Hippocampus_FAM86B3P_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000173295_Brain_Hippocampus_FAM86B3P_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000173295_Cells_Cultured_fibroblasts_FAM86B3P_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000173295_Cells_Cultured_fibroblasts_FAM86B3P_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000173295_Cells_Cultured_fibroblasts_FAM86B3P_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000173295_Colon_Transverse_FAM86B3P_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000173295_Colon_Transverse_FAM86B3P_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000173295_Colon_Transverse_FAM86B3P_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000173295_Esophagus_Mucosa_FAM86B3P_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000173295_Esophagus_Mucosa_FAM86B3P_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000173295_Esophagus_Mucosa_FAM86B3P_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000173295_Pituitary_FAM86B3P_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000173295_Pituitary_FAM86B3P_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000173295_Pituitary_FAM86B3P_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000173295_Skin_Not_Sun_Exposed_Suprapubic_FAM86B3P_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000173295_Skin_Not_Sun_Exposed_Suprapubic_FAM86B3P_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000173295_Skin_Not_Sun_Exposed_Suprapubic_FAM86B3P_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000175806_Adipose_Subcutaneous_MSRA_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000175806_Adipose_Subcutaneous_MSRA_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000175806_Adipose_Subcutaneous_MSRA_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000175806_Cells_EBV-transformed_lymphocytes_MSRA_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000175806_Cells_EBV-transformed_lymphocytes_MSRA_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000175806_Cells_EBV-transformed_lymphocytes_MSRA_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000175806_Esophagus_Muscularis_MSRA_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000175806_Esophagus_Muscularis_MSRA_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000175806_Esophagus_Muscularis_MSRA_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000175806_Skin_Sun_Exposed_Lower_leg_MSRA_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000175806_Skin_Sun_Exposed_Lower_leg_MSRA_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000175806_Skin_Sun_Exposed_Lower_leg_MSRA_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000178343_Brain_Putamen_basal_ganglia_SHISA3_rs73237906.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000178343_Brain_Putamen_basal_ganglia_SHISA3_rs73237906.txt 2 1 --recode A --out Geno_gtex_ENSG00000178343_Brain_Putamen_basal_ganglia_SHISA3_rs73237906
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000179915_Brain_Anterior_cingulate_cortex_BA24_NRXN1_rs13030808.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000179915_Brain_Anterior_cingulate_cortex_BA24_NRXN1_rs13030808.txt 2 1 --recode A --out Geno_gtex_ENSG00000179915_Brain_Anterior_cingulate_cortex_BA24_NRXN1_rs13030808
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000179915_Brain_Spinal_cord_cervical_c-1_NRXN1_rs13030808.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000179915_Brain_Spinal_cord_cervical_c-1_NRXN1_rs13030808.txt 2 1 --recode A --out Geno_gtex_ENSG00000179915_Brain_Spinal_cord_cervical_c-1_NRXN1_rs13030808
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000180245_Brain_Hippocampus_RRH_rs78177211.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000180245_Brain_Hippocampus_RRH_rs78177211.txt 2 1 --recode A --out Geno_gtex_ENSG00000180245_Brain_Hippocampus_RRH_rs78177211
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000180914_Brain_Amygdala_OXTR_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000180914_Brain_Amygdala_OXTR_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000180914_Brain_Amygdala_OXTR_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000180914_Brain_Anterior_cingulate_cortex_BA24_OXTR_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000180914_Brain_Anterior_cingulate_cortex_BA24_OXTR_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000180914_Brain_Anterior_cingulate_cortex_BA24_OXTR_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000180914_Brain_Caudate_basal_ganglia_OXTR_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000180914_Brain_Caudate_basal_ganglia_OXTR_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000180914_Brain_Caudate_basal_ganglia_OXTR_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000180914_Brain_Cortex_OXTR_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000180914_Brain_Cortex_OXTR_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000180914_Brain_Cortex_OXTR_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000180914_Brain_Frontal_Cortex_BA9_OXTR_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000180914_Brain_Frontal_Cortex_BA9_OXTR_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000180914_Brain_Frontal_Cortex_BA9_OXTR_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000180914_Brain_Hippocampus_OXTR_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000180914_Brain_Hippocampus_OXTR_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000180914_Brain_Hippocampus_OXTR_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000180914_Brain_Hypothalamus_OXTR_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000180914_Brain_Hypothalamus_OXTR_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000180914_Brain_Hypothalamus_OXTR_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000180914_Brain_Nucleus_accumbens_basal_ganglia_OXTR_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000180914_Brain_Nucleus_accumbens_basal_ganglia_OXTR_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000180914_Brain_Nucleus_accumbens_basal_ganglia_OXTR_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000180914_Brain_Putamen_basal_ganglia_OXTR_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000180914_Brain_Putamen_basal_ganglia_OXTR_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000180914_Brain_Putamen_basal_ganglia_OXTR_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000180914_Brain_Substantia_nigra_OXTR_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000180914_Brain_Substantia_nigra_OXTR_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000180914_Brain_Substantia_nigra_OXTR_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000180914_Cells_Cultured_fibroblasts_OXTR_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000180914_Cells_Cultured_fibroblasts_OXTR_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000180914_Cells_Cultured_fibroblasts_OXTR_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000180914_Cells_EBV-transformed_lymphocytes_OXTR_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000180914_Cells_EBV-transformed_lymphocytes_OXTR_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000180914_Cells_EBV-transformed_lymphocytes_OXTR_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000181019_Minor_Salivary_Gland_NQO1_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000181019_Minor_Salivary_Gland_NQO1_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000181019_Minor_Salivary_Gland_NQO1_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000181019_Thyroid_NQO1_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000181019_Thyroid_NQO1_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000181019_Thyroid_NQO1_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000181649_Muscle_Skeletal_PHLDA2_rs7951724.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000181649_Muscle_Skeletal_PHLDA2_rs7951724.txt 2 1 --recode A --out Geno_gtex_ENSG00000181649_Muscle_Skeletal_PHLDA2_rs7951724
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000182048_Adipose_Visceral_Omentum_TRPC2_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000182048_Adipose_Visceral_Omentum_TRPC2_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000182048_Adipose_Visceral_Omentum_TRPC2_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000182048_Skin_Not_Sun_Exposed_Suprapubic_TRPC2_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000182048_Skin_Not_Sun_Exposed_Suprapubic_TRPC2_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000182048_Skin_Not_Sun_Exposed_Suprapubic_TRPC2_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000182240_Adipose_Subcutaneous_BACE2_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000182240_Adipose_Subcutaneous_BACE2_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000182240_Adipose_Subcutaneous_BACE2_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000182240_Artery_Tibial_BACE2_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000182240_Artery_Tibial_BACE2_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000182240_Artery_Tibial_BACE2_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000182240_Breast_Mammary_Tissue_BACE2_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000182240_Breast_Mammary_Tissue_BACE2_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000182240_Breast_Mammary_Tissue_BACE2_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000182240_Heart_Atrial_Appendage_BACE2_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000182240_Heart_Atrial_Appendage_BACE2_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000182240_Heart_Atrial_Appendage_BACE2_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000182240_Lung_BACE2_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000182240_Lung_BACE2_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000182240_Lung_BACE2_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000182240_Nerve_Tibial_BACE2_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000182240_Nerve_Tibial_BACE2_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000182240_Nerve_Tibial_BACE2_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000182240_Pancreas_BACE2_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000182240_Pancreas_BACE2_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000182240_Pancreas_BACE2_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000182240_Small_Intestine_Terminal_Ileum_BACE2_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000182240_Small_Intestine_Terminal_Ileum_BACE2_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000182240_Small_Intestine_Terminal_Ileum_BACE2_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000182240_Thyroid_BACE2_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000182240_Thyroid_BACE2_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000182240_Thyroid_BACE2_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000182240_Vagina_BACE2_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000182240_Vagina_BACE2_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000182240_Vagina_BACE2_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000182533_Muscle_Skeletal_CAV3_rs237895.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000182533_Muscle_Skeletal_CAV3_rs237895.txt 2 1 --recode A --out Geno_gtex_ENSG00000182533_Muscle_Skeletal_CAV3_rs237895
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000182700_Brain_Hippocampus_IGIP_rs1131769.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000182700_Brain_Hippocampus_IGIP_rs1131769.txt 2 1 --recode A --out Geno_gtex_ENSG00000182700_Brain_Hippocampus_IGIP_rs1131769
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000183486_Heart_Atrial_Appendage_MX2_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000183486_Heart_Atrial_Appendage_MX2_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000183486_Heart_Atrial_Appendage_MX2_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000183486_Kidney_Cortex_MX2_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000183486_Kidney_Cortex_MX2_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000183486_Kidney_Cortex_MX2_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000183535_Uterus_COL18A1-AS1_rs76924721.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000183535_Uterus_COL18A1-AS1_rs76924721.txt 2 1 --recode A --out Geno_gtex_ENSG00000183535_Uterus_COL18A1-AS1_rs76924721
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000183570_Nerve_Tibial_PCBP3_rs76924721.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000183570_Nerve_Tibial_PCBP3_rs76924721.txt 2 1 --recode A --out Geno_gtex_ENSG00000183570_Nerve_Tibial_PCBP3_rs76924721
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000183844_Adipose_Visceral_Omentum_FAM3B_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000183844_Adipose_Visceral_Omentum_FAM3B_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000183844_Adipose_Visceral_Omentum_FAM3B_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000183844_Artery_Aorta_FAM3B_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000183844_Artery_Aorta_FAM3B_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000183844_Artery_Aorta_FAM3B_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000183844_Artery_Tibial_FAM3B_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000183844_Artery_Tibial_FAM3B_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000183844_Artery_Tibial_FAM3B_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000183844_Esophagus_Muscularis_FAM3B_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000183844_Esophagus_Muscularis_FAM3B_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000183844_Esophagus_Muscularis_FAM3B_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000183844_Heart_Atrial_Appendage_FAM3B_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000183844_Heart_Atrial_Appendage_FAM3B_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000183844_Heart_Atrial_Appendage_FAM3B_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000183844_Lung_FAM3B_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000183844_Lung_FAM3B_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000183844_Lung_FAM3B_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000183844_Nerve_Tibial_FAM3B_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000183844_Nerve_Tibial_FAM3B_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000183844_Nerve_Tibial_FAM3B_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000183844_Thyroid_FAM3B_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000183844_Thyroid_FAM3B_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000183844_Thyroid_FAM3B_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000183844_Whole_Blood_FAM3B_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000183844_Whole_Blood_FAM3B_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000183844_Whole_Blood_FAM3B_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000184584_Artery_Aorta_TMEM173_rs1131769.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000184584_Artery_Aorta_TMEM173_rs1131769.txt 2 1 --recode A --out Geno_gtex_ENSG00000184584_Artery_Aorta_TMEM173_rs1131769
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000184672_Heart_Left_Ventricle_RALYL_rs10087249.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000184672_Heart_Left_Ventricle_RALYL_rs10087249.txt 2 1 --recode A --out Geno_gtex_ENSG00000184672_Heart_Left_Ventricle_RALYL_rs10087249
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr22 --extract snps_gtex_ENSG00000185651_Skin_Sun_Exposed_Lower_leg_UBE2L3_rs16985160.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000185651_Skin_Sun_Exposed_Lower_leg_UBE2L3_rs16985160.txt 2 1 --recode A --out Geno_gtex_ENSG00000185651_Skin_Sun_Exposed_Lower_leg_UBE2L3_rs16985160
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000187672_Artery_Aorta_ERC2_rs73091242.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000187672_Artery_Aorta_ERC2_rs73091242.txt 2 1 --recode A --out Geno_gtex_ENSG00000187672_Artery_Aorta_ERC2_rs73091242
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000187672_Esophagus_Muscularis_ERC2_rs73091242.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000187672_Esophagus_Muscularis_ERC2_rs73091242.txt 2 1 --recode A --out Geno_gtex_ENSG00000187672_Esophagus_Muscularis_ERC2_rs73091242
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000188383_Esophagus_Gastroesophageal_Junction_GPAT2P2_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000188383_Esophagus_Gastroesophageal_Junction_GPAT2P2_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000188383_Esophagus_Gastroesophageal_Junction_GPAT2P2_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000189091_Esophagus_Mucosa_SF3B3_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000189091_Esophagus_Mucosa_SF3B3_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000189091_Esophagus_Mucosa_SF3B3_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Adipose_Subcutaneous_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Adipose_Subcutaneous_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Adipose_Subcutaneous_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Adipose_Visceral_Omentum_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Adipose_Visceral_Omentum_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Adipose_Visceral_Omentum_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Adrenal_Gland_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Adrenal_Gland_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Adrenal_Gland_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Artery_Coronary_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Artery_Coronary_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Artery_Coronary_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Breast_Mammary_Tissue_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Breast_Mammary_Tissue_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Breast_Mammary_Tissue_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Colon_Sigmoid_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Colon_Sigmoid_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Colon_Sigmoid_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Colon_Transverse_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Colon_Transverse_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Colon_Transverse_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Esophagus_Muscularis_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Esophagus_Muscularis_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Esophagus_Muscularis_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Heart_Left_Ventricle_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Heart_Left_Ventricle_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Heart_Left_Ventricle_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Muscle_Skeletal_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Muscle_Skeletal_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Muscle_Skeletal_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Nerve_Tibial_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Nerve_Tibial_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Nerve_Tibial_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Pancreas_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Pancreas_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Pancreas_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Skin_Not_Sun_Exposed_Suprapubic_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Skin_Not_Sun_Exposed_Suprapubic_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Skin_Not_Sun_Exposed_Suprapubic_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Skin_Sun_Exposed_Lower_leg_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Skin_Sun_Exposed_Lower_leg_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Skin_Sun_Exposed_Lower_leg_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Stomach_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Stomach_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Stomach_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Thyroid_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Thyroid_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Thyroid_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000196196_Vagina_HRCT1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196196_Vagina_HRCT1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000196196_Vagina_HRCT1_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000196912_Adipose_Subcutaneous_ANKRD36B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196912_Adipose_Subcutaneous_ANKRD36B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000196912_Adipose_Subcutaneous_ANKRD36B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000196912_Adipose_Visceral_Omentum_ANKRD36B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196912_Adipose_Visceral_Omentum_ANKRD36B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000196912_Adipose_Visceral_Omentum_ANKRD36B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000196912_Artery_Tibial_ANKRD36B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196912_Artery_Tibial_ANKRD36B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000196912_Artery_Tibial_ANKRD36B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000196912_Esophagus_Mucosa_ANKRD36B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196912_Esophagus_Mucosa_ANKRD36B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000196912_Esophagus_Mucosa_ANKRD36B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000196912_Nerve_Tibial_ANKRD36B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196912_Nerve_Tibial_ANKRD36B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000196912_Nerve_Tibial_ANKRD36B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000196912_Pancreas_ANKRD36B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196912_Pancreas_ANKRD36B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000196912_Pancreas_ANKRD36B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000196912_Pituitary_ANKRD36B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196912_Pituitary_ANKRD36B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000196912_Pituitary_ANKRD36B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000196912_Skin_Not_Sun_Exposed_Suprapubic_ANKRD36B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196912_Skin_Not_Sun_Exposed_Suprapubic_ANKRD36B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000196912_Skin_Not_Sun_Exposed_Suprapubic_ANKRD36B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000196912_Skin_Sun_Exposed_Lower_leg_ANKRD36B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196912_Skin_Sun_Exposed_Lower_leg_ANKRD36B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000196912_Skin_Sun_Exposed_Lower_leg_ANKRD36B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000196912_Thyroid_ANKRD36B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196912_Thyroid_ANKRD36B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000196912_Thyroid_ANKRD36B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000196912_Whole_Blood_ANKRD36B_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000196912_Whole_Blood_ANKRD36B_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000196912_Whole_Blood_ANKRD36B_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000197226_Brain_Hypothalamus_TBC1D9B_rs111243784.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000197226_Brain_Hypothalamus_TBC1D9B_rs111243784.txt 2 1 --recode A --out Geno_gtex_ENSG00000197226_Brain_Hypothalamus_TBC1D9B_rs111243784
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000198373_Thyroid_WWP2_rs11866628.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000198373_Thyroid_WWP2_rs11866628.txt 2 1 --recode A --out Geno_gtex_ENSG00000198373_Thyroid_WWP2_rs11866628
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000198467_Brain_Frontal_Cortex_BA9_TPM2_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000198467_Brain_Frontal_Cortex_BA9_TPM2_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000198467_Brain_Frontal_Cortex_BA9_TPM2_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000198467_Brain_Putamen_basal_ganglia_TPM2_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000198467_Brain_Putamen_basal_ganglia_TPM2_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000198467_Brain_Putamen_basal_ganglia_TPM2_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000198467_Pituitary_TPM2_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000198467_Pituitary_TPM2_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000198467_Pituitary_TPM2_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000198467_Thyroid_TPM2_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000198467_Thyroid_TPM2_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000198467_Thyroid_TPM2_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000198467_Whole_Blood_TPM2_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000198467_Whole_Blood_TPM2_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000198467_Whole_Blood_TPM2_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000198722_Liver_UNC13B_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000198722_Liver_UNC13B_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000198722_Liver_UNC13B_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000198853_Liver_RUSC2_rs4878631.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000198853_Liver_RUSC2_rs4878631.txt 2 1 --recode A --out Geno_gtex_ENSG00000198853_Liver_RUSC2_rs4878631
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000203797_Colon_Transverse_DDO_rs7770311.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000203797_Colon_Transverse_DDO_rs7770311.txt 2 1 --recode A --out Geno_gtex_ENSG00000203797_Colon_Transverse_DDO_rs7770311
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000204011_Esophagus_Muscularis_COL5A1-AS1_rs112641186.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000204011_Esophagus_Muscularis_COL5A1-AS1_rs112641186.txt 2 1 --recode A --out Geno_gtex_ENSG00000204011_Esophagus_Muscularis_COL5A1-AS1_rs112641186
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000204930_Skin_Sun_Exposed_Lower_leg_FAM221B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000204930_Skin_Sun_Exposed_Lower_leg_FAM221B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000204930_Skin_Sun_Exposed_Lower_leg_FAM221B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000204930_Testis_FAM221B_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000204930_Testis_FAM221B_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000204930_Testis_FAM221B_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr22 --extract snps_gtex_ENSG00000205853_Colon_Transverse_RFPL3S_rs75040902.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000205853_Colon_Transverse_RFPL3S_rs75040902.txt 2 1 --recode A --out Geno_gtex_ENSG00000205853_Colon_Transverse_RFPL3S_rs75040902
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr22 --extract snps_gtex_ENSG00000205853_Pituitary_RFPL3S_rs75040902.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000205853_Pituitary_RFPL3S_rs75040902.txt 2 1 --recode A --out Geno_gtex_ENSG00000205853_Pituitary_RFPL3S_rs75040902
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr22 --extract snps_gtex_ENSG00000205853_Thyroid_RFPL3S_rs75040902.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000205853_Thyroid_RFPL3S_rs75040902.txt 2 1 --recode A --out Geno_gtex_ENSG00000205853_Thyroid_RFPL3S_rs75040902
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000213866_Lung_YBX1P10_rs4878631.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000213866_Lung_YBX1P10_rs4878631.txt 2 1 --recode A --out Geno_gtex_ENSG00000213866_Lung_YBX1P10_rs4878631
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000214353_Brain_Nucleus_accumbens_basal_ganglia_VAC14-AS1_rs11866628.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000214353_Brain_Nucleus_accumbens_basal_ganglia_VAC14-AS1_rs11866628.txt 2 1 --recode A --out Geno_gtex_ENSG00000214353_Brain_Nucleus_accumbens_basal_ganglia_VAC14-AS1_rs11866628
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000215424_Esophagus_Gastroesophageal_Junction_MCM3AP-AS1_rs76924721.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000215424_Esophagus_Gastroesophageal_Junction_MCM3AP-AS1_rs76924721.txt 2 1 --recode A --out Geno_gtex_ENSG00000215424_Esophagus_Gastroesophageal_Junction_MCM3AP-AS1_rs76924721
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000215424_Heart_Atrial_Appendage_MCM3AP-AS1_rs76924721.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000215424_Heart_Atrial_Appendage_MCM3AP-AS1_rs76924721.txt 2 1 --recode A --out Geno_gtex_ENSG00000215424_Heart_Atrial_Appendage_MCM3AP-AS1_rs76924721
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000215447_Brain_Hypothalamus_BX322557.10_rs76924721.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000215447_Brain_Hypothalamus_BX322557.10_rs76924721.txt 2 1 --recode A --out Geno_gtex_ENSG00000215447_Brain_Hypothalamus_BX322557.10_rs76924721
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000215875_Skin_Not_Sun_Exposed_Suprapubic_ST13P20_rs139345991.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000215875_Skin_Not_Sun_Exposed_Suprapubic_ST13P20_rs139345991.txt 2 1 --recode A --out Geno_gtex_ENSG00000215875_Skin_Not_Sun_Exposed_Suprapubic_ST13P20_rs139345991
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000221829_Whole_Blood_FANCG_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000221829_Whole_Blood_FANCG_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000221829_Whole_Blood_FANCG_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr10 --extract snps_gtex_ENSG00000222371_Testis_RN7SKP202_rs10997948.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000222371_Testis_RN7SKP202_rs10997948.txt 2 1 --recode A --out Geno_gtex_ENSG00000222371_Testis_RN7SKP202_rs10997948
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000223496_Brain_Caudate_basal_ganglia_EXOSC6_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000223496_Brain_Caudate_basal_ganglia_EXOSC6_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000223496_Brain_Caudate_basal_ganglia_EXOSC6_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000223496_Brain_Frontal_Cortex_BA9_EXOSC6_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000223496_Brain_Frontal_Cortex_BA9_EXOSC6_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000223496_Brain_Frontal_Cortex_BA9_EXOSC6_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000223496_Cells_Cultured_fibroblasts_EXOSC6_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000223496_Cells_Cultured_fibroblasts_EXOSC6_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000223496_Cells_Cultured_fibroblasts_EXOSC6_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000223496_Spleen_EXOSC6_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000223496_Spleen_EXOSC6_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000223496_Spleen_EXOSC6_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000223688_Pituitary_RPS24P14_rs4910714.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000223688_Pituitary_RPS24P14_rs4910714.txt 2 1 --recode A --out Geno_gtex_ENSG00000223688_Pituitary_RPS24P14_rs4910714
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000223776_Esophagus_Mucosa_LGALS8-AS1_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000223776_Esophagus_Mucosa_LGALS8-AS1_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000223776_Esophagus_Mucosa_LGALS8-AS1_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000223776_Lung_LGALS8-AS1_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000223776_Lung_LGALS8-AS1_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000223776_Lung_LGALS8-AS1_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000223776_Pancreas_LGALS8-AS1_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000223776_Pancreas_LGALS8-AS1_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000223776_Pancreas_LGALS8-AS1_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000223776_Skin_Sun_Exposed_Lower_leg_LGALS8-AS1_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000223776_Skin_Sun_Exposed_Lower_leg_LGALS8-AS1_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000223776_Skin_Sun_Exposed_Lower_leg_LGALS8-AS1_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000224426_Kidney_Cortex_SLC31A1P1_rs62281600.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000224426_Kidney_Cortex_SLC31A1P1_rs62281600.txt 2 1 --recode A --out Geno_gtex_ENSG00000224426_Kidney_Cortex_SLC31A1P1_rs62281600
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr10 --extract snps_gtex_ENSG00000224714_Liver_RP11-179K3.2_rs12708315.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000224714_Liver_RP11-179K3.2_rs12708315.txt 2 1 --recode A --out Geno_gtex_ENSG00000224714_Liver_RP11-179K3.2_rs12708315
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr10 --extract snps_gtex_ENSG00000224714_Prostate_RP11-179K3.2_rs12708315.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000224714_Prostate_RP11-179K3.2_rs12708315.txt 2 1 --recode A --out Geno_gtex_ENSG00000224714_Prostate_RP11-179K3.2_rs12708315
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000224945_Cells_Cultured_fibroblasts_RP11-82L18.2_rs9722568.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000224945_Cells_Cultured_fibroblasts_RP11-82L18.2_rs9722568.txt 2 1 --recode A --out Geno_gtex_ENSG00000224945_Cells_Cultured_fibroblasts_RP11-82L18.2_rs9722568
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000225093_Whole_Blood_RPL3P7_rs6917915.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000225093_Whole_Blood_RPL3P7_rs6917915.txt 2 1 --recode A --out Geno_gtex_ENSG00000225093_Whole_Blood_RPL3P7_rs6917915
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000226232_Lung_RP11-419C5.2_rs11866628.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000226232_Lung_RP11-419C5.2_rs11866628.txt 2 1 --recode A --out Geno_gtex_ENSG00000226232_Lung_RP11-419C5.2_rs11866628
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000226496_Artery_Tibial_LINC00323_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000226496_Artery_Tibial_LINC00323_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000226496_Artery_Tibial_LINC00323_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000226496_Stomach_LINC00323_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000226496_Stomach_LINC00323_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000226496_Stomach_LINC00323_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000226496_Thyroid_LINC00323_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000226496_Thyroid_LINC00323_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000226496_Thyroid_LINC00323_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000227039_Heart_Atrial_Appendage_ITGB2-AS1_rs76924721.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000227039_Heart_Atrial_Appendage_ITGB2-AS1_rs76924721.txt 2 1 --recode A --out Geno_gtex_ENSG00000227039_Heart_Atrial_Appendage_ITGB2-AS1_rs76924721
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000227292_Nerve_Tibial_AC009229.5_rs6761414.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000227292_Nerve_Tibial_AC009229.5_rs6761414.txt 2 1 --recode A --out Geno_gtex_ENSG00000227292_Nerve_Tibial_AC009229.5_rs6761414
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000227388_Artery_Aorta_RP11-112J3.16_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000227388_Artery_Aorta_RP11-112J3.16_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000227388_Artery_Aorta_RP11-112J3.16_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000227388_Brain_Frontal_Cortex_BA9_RP11-112J3.16_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000227388_Brain_Frontal_Cortex_BA9_RP11-112J3.16_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000227388_Brain_Frontal_Cortex_BA9_RP11-112J3.16_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000227388_Colon_Sigmoid_RP11-112J3.16_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000227388_Colon_Sigmoid_RP11-112J3.16_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000227388_Colon_Sigmoid_RP11-112J3.16_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000227388_Esophagus_Gastroesophageal_Junction_RP11-112J3.16_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000227388_Esophagus_Gastroesophageal_Junction_RP11-112J3.16_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000227388_Esophagus_Gastroesophageal_Junction_RP11-112J3.16_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000227388_Esophagus_Muscularis_RP11-112J3.16_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000227388_Esophagus_Muscularis_RP11-112J3.16_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000227388_Esophagus_Muscularis_RP11-112J3.16_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000227388_Liver_RP11-112J3.16_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000227388_Liver_RP11-112J3.16_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000227388_Liver_RP11-112J3.16_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000227388_Pancreas_RP11-112J3.16_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000227388_Pancreas_RP11-112J3.16_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000227388_Pancreas_RP11-112J3.16_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000227388_Stomach_RP11-112J3.16_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000227388_Stomach_RP11-112J3.16_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000227388_Stomach_RP11-112J3.16_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000227388_Thyroid_RP11-112J3.16_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000227388_Thyroid_RP11-112J3.16_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000227388_Thyroid_RP11-112J3.16_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000227698_Brain_Cerebellum_AP001619.2_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000227698_Brain_Cerebellum_AP001619.2_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000227698_Brain_Cerebellum_AP001619.2_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000227933_Spleen_RP11-331F9.4_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000227933_Spleen_RP11-331F9.4_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000227933_Spleen_RP11-331F9.4_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr10 --extract snps_gtex_ENSG00000228065_Adipose_Visceral_Omentum_LINC01515_rs12775522.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000228065_Adipose_Visceral_Omentum_LINC01515_rs12775522.txt 2 1 --recode A --out Geno_gtex_ENSG00000228065_Adipose_Visceral_Omentum_LINC01515_rs12775522
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr10 --extract snps_gtex_ENSG00000228065_Artery_Aorta_LINC01515_rs12775522.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000228065_Artery_Aorta_LINC01515_rs12775522.txt 2 1 --recode A --out Geno_gtex_ENSG00000228065_Artery_Aorta_LINC01515_rs12775522
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr10 --extract snps_gtex_ENSG00000228065_Skin_Sun_Exposed_Lower_leg_LINC01515_rs12775522.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000228065_Skin_Sun_Exposed_Lower_leg_LINC01515_rs12775522.txt 2 1 --recode A --out Geno_gtex_ENSG00000228065_Skin_Sun_Exposed_Lower_leg_LINC01515_rs12775522
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000228307_Brain_Anterior_cingulate_cortex_BA24_OR2S1P_rs4878631.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000228307_Brain_Anterior_cingulate_cortex_BA24_OR2S1P_rs4878631.txt 2 1 --recode A --out Geno_gtex_ENSG00000228307_Brain_Anterior_cingulate_cortex_BA24_OR2S1P_rs4878631
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000228318_Kidney_Cortex_AP001610.5_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000228318_Kidney_Cortex_AP001610.5_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000228318_Kidney_Cortex_AP001610.5_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000228486_Brain_Hypothalamus_LINC01125_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000228486_Brain_Hypothalamus_LINC01125_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000228486_Brain_Hypothalamus_LINC01125_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000228486_Pancreas_LINC01125_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000228486_Pancreas_LINC01125_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000228486_Pancreas_LINC01125_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr7 --extract snps_gtex_ENSG00000228540_Skin_Sun_Exposed_Lower_leg_AC073326.3_rs74632020.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000228540_Skin_Sun_Exposed_Lower_leg_AC073326.3_rs74632020.txt 2 1 --recode A --out Geno_gtex_ENSG00000228540_Skin_Sun_Exposed_Lower_leg_AC073326.3_rs74632020
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000228672_Artery_Tibial_PROB1_rs1131769.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000228672_Artery_Tibial_PROB1_rs1131769.txt 2 1 --recode A --out Geno_gtex_ENSG00000228672_Artery_Tibial_PROB1_rs1131769
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000228672_Brain_Putamen_basal_ganglia_PROB1_rs1131769.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000228672_Brain_Putamen_basal_ganglia_PROB1_rs1131769.txt 2 1 --recode A --out Geno_gtex_ENSG00000228672_Brain_Putamen_basal_ganglia_PROB1_rs1131769
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000228672_Esophagus_Mucosa_PROB1_rs1131769.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000228672_Esophagus_Mucosa_PROB1_rs1131769.txt 2 1 --recode A --out Geno_gtex_ENSG00000228672_Esophagus_Mucosa_PROB1_rs1131769
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000228672_Lung_PROB1_rs1131769.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000228672_Lung_PROB1_rs1131769.txt 2 1 --recode A --out Geno_gtex_ENSG00000228672_Lung_PROB1_rs1131769
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000228672_Whole_Blood_PROB1_rs1131769.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000228672_Whole_Blood_PROB1_rs1131769.txt 2 1 --recode A --out Geno_gtex_ENSG00000228672_Whole_Blood_PROB1_rs1131769
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000229160_Nerve_Tibial_AC009229.6_rs6761414.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000229160_Nerve_Tibial_AC009229.6_rs6761414.txt 2 1 --recode A --out Geno_gtex_ENSG00000229160_Nerve_Tibial_AC009229.6_rs6761414
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000229291_Artery_Tibial_RP4-580N22.2_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000229291_Artery_Tibial_RP4-580N22.2_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000229291_Artery_Tibial_RP4-580N22.2_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Adipose_Subcutaneous_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Adipose_Subcutaneous_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Adipose_Subcutaneous_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Adipose_Visceral_Omentum_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Adipose_Visceral_Omentum_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Adipose_Visceral_Omentum_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Adrenal_Gland_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Adrenal_Gland_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Adrenal_Gland_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Artery_Aorta_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Artery_Aorta_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Artery_Aorta_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Artery_Tibial_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Artery_Tibial_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Artery_Tibial_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Brain_Cerebellum_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Brain_Cerebellum_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Brain_Cerebellum_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Breast_Mammary_Tissue_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Breast_Mammary_Tissue_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Breast_Mammary_Tissue_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Cells_Cultured_fibroblasts_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Cells_Cultured_fibroblasts_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Cells_Cultured_fibroblasts_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Colon_Sigmoid_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Colon_Sigmoid_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Colon_Sigmoid_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Colon_Transverse_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Colon_Transverse_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Colon_Transverse_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Esophagus_Gastroesophageal_Junction_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Esophagus_Gastroesophageal_Junction_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Esophagus_Gastroesophageal_Junction_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Esophagus_Mucosa_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Esophagus_Mucosa_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Esophagus_Mucosa_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Esophagus_Muscularis_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Esophagus_Muscularis_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Esophagus_Muscularis_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Heart_Atrial_Appendage_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Heart_Atrial_Appendage_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Heart_Atrial_Appendage_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Lung_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Lung_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Lung_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Nerve_Tibial_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Nerve_Tibial_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Nerve_Tibial_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Ovary_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Ovary_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Ovary_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Pancreas_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Pancreas_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Pancreas_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Pituitary_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Pituitary_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Pituitary_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Prostate_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Prostate_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Prostate_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Skin_Sun_Exposed_Lower_leg_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Skin_Sun_Exposed_Lower_leg_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Skin_Sun_Exposed_Lower_leg_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Testis_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Testis_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Testis_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000230606_Thyroid_AC159540.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230606_Thyroid_AC159540.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000230606_Thyroid_AC159540.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000230939_Artery_Tibial_RP11-314C16.1_rs62395461.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000230939_Artery_Tibial_RP11-314C16.1_rs62395461.txt 2 1 --recode A --out Geno_gtex_ENSG00000230939_Artery_Tibial_RP11-314C16.1_rs62395461
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000231393_Thyroid_RP11-331F9.3_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000231393_Thyroid_RP11-331F9.3_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000231393_Thyroid_RP11-331F9.3_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000231424_Skin_Not_Sun_Exposed_Suprapubic_RP1-45C12.1_rs75804706.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000231424_Skin_Not_Sun_Exposed_Suprapubic_RP1-45C12.1_rs75804706.txt 2 1 --recode A --out Geno_gtex_ENSG00000231424_Skin_Not_Sun_Exposed_Suprapubic_RP1-45C12.1_rs75804706
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000231918_Testis_AC007682.1_rs13030808.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000231918_Testis_AC007682.1_rs13030808.txt 2 1 --recode A --out Geno_gtex_ENSG00000231918_Testis_AC007682.1_rs13030808
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000232973_Whole_Blood_CYP1B1-AS1_rs6761414.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000232973_Whole_Blood_CYP1B1-AS1_rs6761414.txt 2 1 --recode A --out Geno_gtex_ENSG00000232973_Whole_Blood_CYP1B1-AS1_rs6761414
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000233609_Adipose_Subcutaneous_RP11-62H7.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000233609_Adipose_Subcutaneous_RP11-62H7.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000233609_Adipose_Subcutaneous_RP11-62H7.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000233609_Adipose_Visceral_Omentum_RP11-62H7.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000233609_Adipose_Visceral_Omentum_RP11-62H7.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000233609_Adipose_Visceral_Omentum_RP11-62H7.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000233609_Artery_Tibial_RP11-62H7.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000233609_Artery_Tibial_RP11-62H7.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000233609_Artery_Tibial_RP11-62H7.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000233609_Brain_Caudate_basal_ganglia_RP11-62H7.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000233609_Brain_Caudate_basal_ganglia_RP11-62H7.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000233609_Brain_Caudate_basal_ganglia_RP11-62H7.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000233609_Brain_Cortex_RP11-62H7.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000233609_Brain_Cortex_RP11-62H7.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000233609_Brain_Cortex_RP11-62H7.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000233609_Brain_Nucleus_accumbens_basal_ganglia_RP11-62H7.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000233609_Brain_Nucleus_accumbens_basal_ganglia_RP11-62H7.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000233609_Brain_Nucleus_accumbens_basal_ganglia_RP11-62H7.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000233609_Brain_Putamen_basal_ganglia_RP11-62H7.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000233609_Brain_Putamen_basal_ganglia_RP11-62H7.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000233609_Brain_Putamen_basal_ganglia_RP11-62H7.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000233609_Colon_Transverse_RP11-62H7.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000233609_Colon_Transverse_RP11-62H7.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000233609_Colon_Transverse_RP11-62H7.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000233609_Esophagus_Mucosa_RP11-62H7.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000233609_Esophagus_Mucosa_RP11-62H7.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000233609_Esophagus_Mucosa_RP11-62H7.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000233609_Lung_RP11-62H7.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000233609_Lung_RP11-62H7.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000233609_Lung_RP11-62H7.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000233609_Thyroid_RP11-62H7.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000233609_Thyroid_RP11-62H7.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000233609_Thyroid_RP11-62H7.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr10 --extract snps_gtex_ENSG00000233900_Brain_Cerebellum_RPL17P35_rs13376754.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000233900_Brain_Cerebellum_RPL17P35_rs13376754.txt 2 1 --recode A --out Geno_gtex_ENSG00000233900_Brain_Cerebellum_RPL17P35_rs13376754
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000235267_Skin_Not_Sun_Exposed_Suprapubic_AC074117.13_rs11679752.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000235267_Skin_Not_Sun_Exposed_Suprapubic_AC074117.13_rs11679752.txt 2 1 --recode A --out Geno_gtex_ENSG00000235267_Skin_Not_Sun_Exposed_Suprapubic_AC074117.13_rs11679752
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr13 --extract snps_gtex_ENSG00000235285_Artery_Tibial_SMIM2-IT1_rs7323280.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000235285_Artery_Tibial_SMIM2-IT1_rs7323280.txt 2 1 --recode A --out Geno_gtex_ENSG00000235285_Artery_Tibial_SMIM2-IT1_rs7323280
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000235298_Artery_Tibial_RP11-575L7.8_rs12350607.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000235298_Artery_Tibial_RP11-575L7.8_rs12350607.txt 2 1 --recode A --out Geno_gtex_ENSG00000235298_Artery_Tibial_RP11-575L7.8_rs12350607
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000235387_Artery_Aorta_LINC00961_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000235387_Artery_Aorta_LINC00961_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000235387_Artery_Aorta_LINC00961_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000235387_Breast_Mammary_Tissue_LINC00961_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000235387_Breast_Mammary_Tissue_LINC00961_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000235387_Breast_Mammary_Tissue_LINC00961_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000235833_Brain_Cerebellum_AC159540.14_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000235833_Brain_Cerebellum_AC159540.14_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000235833_Brain_Cerebellum_AC159540.14_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000235848_Esophagus_Muscularis_RMDN2-AS1_rs6761414.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000235848_Esophagus_Muscularis_RMDN2-AS1_rs6761414.txt 2 1 --recode A --out Geno_gtex_ENSG00000235848_Esophagus_Muscularis_RMDN2-AS1_rs6761414
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000239415_Liver_AP001469.9_rs76924721.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000239415_Liver_AP001469.9_rs76924721.txt 2 1 --recode A --out Geno_gtex_ENSG00000239415_Liver_AP001469.9_rs76924721
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr17 --extract snps_gtex_ENSG00000239884_Esophagus_Mucosa_RN7SL608P_rs112236917.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000239884_Esophagus_Mucosa_RN7SL608P_rs112236917.txt 2 1 --recode A --out Geno_gtex_ENSG00000239884_Esophagus_Mucosa_RN7SL608P_rs112236917
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr12 --extract snps_gtex_ENSG00000240370_Brain_Cerebellum_U47924.6_rs79474724.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000240370_Brain_Cerebellum_U47924.6_rs79474724.txt 2 1 --recode A --out Geno_gtex_ENSG00000240370_Brain_Cerebellum_U47924.6_rs79474724
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000240975_Testis_RP11-313M3.1_rs11035036.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000240975_Testis_RP11-313M3.1_rs11035036.txt 2 1 --recode A --out Geno_gtex_ENSG00000240975_Testis_RP11-313M3.1_rs11035036
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000240975_Thyroid_RP11-313M3.1_rs11035036.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000240975_Thyroid_RP11-313M3.1_rs11035036.txt 2 1 --recode A --out Geno_gtex_ENSG00000240975_Thyroid_RP11-313M3.1_rs11035036
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr22 --extract snps_gtex_ENSG00000241954_Brain_Hippocampus_RP1-149A16.17_rs75040902.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000241954_Brain_Hippocampus_RP1-149A16.17_rs75040902.txt 2 1 --recode A --out Geno_gtex_ENSG00000241954_Brain_Hippocampus_RP1-149A16.17_rs75040902
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr22 --extract snps_gtex_ENSG00000241954_Pituitary_RP1-149A16.17_rs75040902.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000241954_Pituitary_RP1-149A16.17_rs75040902.txt 2 1 --recode A --out Geno_gtex_ENSG00000241954_Pituitary_RP1-149A16.17_rs75040902
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr22 --extract snps_gtex_ENSG00000241954_Skin_Sun_Exposed_Lower_leg_RP1-149A16.17_rs75040902.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000241954_Skin_Sun_Exposed_Lower_leg_RP1-149A16.17_rs75040902.txt 2 1 --recode A --out Geno_gtex_ENSG00000241954_Skin_Sun_Exposed_Lower_leg_RP1-149A16.17_rs75040902
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000248538_Heart_Left_Ventricle_RP11-10A14.5_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000248538_Heart_Left_Ventricle_RP11-10A14.5_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000248538_Heart_Left_Ventricle_RP11-10A14.5_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000248538_Skin_Not_Sun_Exposed_Suprapubic_RP11-10A14.5_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000248538_Skin_Not_Sun_Exposed_Suprapubic_RP11-10A14.5_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000248538_Skin_Not_Sun_Exposed_Suprapubic_RP11-10A14.5_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000248538_Testis_RP11-10A14.5_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000248538_Testis_RP11-10A14.5_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000248538_Testis_RP11-10A14.5_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000248538_Whole_Blood_RP11-10A14.5_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000248538_Whole_Blood_RP11-10A14.5_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000248538_Whole_Blood_RP11-10A14.5_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000249212_Muscle_Skeletal_ATP1B1P1_rs73237906.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000249212_Muscle_Skeletal_ATP1B1P1_rs73237906.txt 2 1 --recode A --out Geno_gtex_ENSG00000249212_Muscle_Skeletal_ATP1B1P1_rs73237906
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000249751_Muscle_Skeletal_ECSCR_rs13166214.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000249751_Muscle_Skeletal_ECSCR_rs13166214.txt 2 1 --recode A --out Geno_gtex_ENSG00000249751_Muscle_Skeletal_ECSCR_rs13166214
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000249751_Nerve_Tibial_ECSCR_rs13166214.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000249751_Nerve_Tibial_ECSCR_rs13166214.txt 2 1 --recode A --out Geno_gtex_ENSG00000249751_Nerve_Tibial_ECSCR_rs13166214
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000249751_Skin_Sun_Exposed_Lower_leg_ECSCR_rs13166214.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000249751_Skin_Sun_Exposed_Lower_leg_ECSCR_rs13166214.txt 2 1 --recode A --out Geno_gtex_ENSG00000249751_Skin_Sun_Exposed_Lower_leg_ECSCR_rs13166214
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr5 --extract snps_gtex_ENSG00000250069_Kidney_Cortex_CTB-131B5.2_rs13166214.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000250069_Kidney_Cortex_CTB-131B5.2_rs13166214.txt 2 1 --recode A --out Geno_gtex_ENSG00000250069_Kidney_Cortex_CTB-131B5.2_rs13166214
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253199_Testis_RP11-421P23.1_rs75768779.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253199_Testis_RP11-421P23.1_rs75768779.txt 2 1 --recode A --out Geno_gtex_ENSG00000253199_Testis_RP11-421P23.1_rs75768779
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253641_Brain_Caudate_basal_ganglia_LINCR-0001_rs4383976.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253641_Brain_Caudate_basal_ganglia_LINCR-0001_rs4383976.txt 2 1 --recode A --out Geno_gtex_ENSG00000253641_Brain_Caudate_basal_ganglia_LINCR-0001_rs4383976
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253641_Brain_Substantia_nigra_LINCR-0001_rs4383976.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253641_Brain_Substantia_nigra_LINCR-0001_rs4383976.txt 2 1 --recode A --out Geno_gtex_ENSG00000253641_Brain_Substantia_nigra_LINCR-0001_rs4383976
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253641_Heart_Atrial_Appendage_LINCR-0001_rs4383976.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253641_Heart_Atrial_Appendage_LINCR-0001_rs4383976.txt 2 1 --recode A --out Geno_gtex_ENSG00000253641_Heart_Atrial_Appendage_LINCR-0001_rs4383976
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253649_Minor_Salivary_Gland_PRSS51_rs4383976.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253649_Minor_Salivary_Gland_PRSS51_rs4383976.txt 2 1 --recode A --out Geno_gtex_ENSG00000253649_Minor_Salivary_Gland_PRSS51_rs4383976
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253649_Pituitary_PRSS51_rs4383976.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253649_Pituitary_PRSS51_rs4383976.txt 2 1 --recode A --out Geno_gtex_ENSG00000253649_Pituitary_PRSS51_rs4383976
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253678_Colon_Sigmoid_RP11-981G7.3_rs4383976.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253678_Colon_Sigmoid_RP11-981G7.3_rs4383976.txt 2 1 --recode A --out Geno_gtex_ENSG00000253678_Colon_Sigmoid_RP11-981G7.3_rs4383976
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253678_Thyroid_RP11-981G7.3_rs4383976.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253678_Thyroid_RP11-981G7.3_rs4383976.txt 2 1 --recode A --out Geno_gtex_ENSG00000253678_Thyroid_RP11-981G7.3_rs4383976
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253735_Testis_RP11-115J16.3_rs4383976.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253735_Testis_RP11-115J16.3_rs4383976.txt 2 1 --recode A --out Geno_gtex_ENSG00000253735_Testis_RP11-115J16.3_rs4383976
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Adipose_Subcutaneous_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Adipose_Subcutaneous_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Adipose_Subcutaneous_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Artery_Aorta_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Artery_Aorta_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Artery_Aorta_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Artery_Coronary_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Artery_Coronary_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Artery_Coronary_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Artery_Tibial_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Artery_Tibial_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Artery_Tibial_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Brain_Cerebellar_Hemisphere_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Brain_Cerebellar_Hemisphere_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Brain_Cerebellar_Hemisphere_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Brain_Cerebellum_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Brain_Cerebellum_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Brain_Cerebellum_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Brain_Cortex_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Brain_Cortex_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Brain_Cortex_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Brain_Hippocampus_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Brain_Hippocampus_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Brain_Hippocampus_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Brain_Hypothalamus_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Brain_Hypothalamus_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Brain_Hypothalamus_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Brain_Nucleus_accumbens_basal_ganglia_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Brain_Nucleus_accumbens_basal_ganglia_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Brain_Nucleus_accumbens_basal_ganglia_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Brain_Putamen_basal_ganglia_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Brain_Putamen_basal_ganglia_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Brain_Putamen_basal_ganglia_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Colon_Sigmoid_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Colon_Sigmoid_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Colon_Sigmoid_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Esophagus_Gastroesophageal_Junction_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Esophagus_Gastroesophageal_Junction_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Esophagus_Gastroesophageal_Junction_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Esophagus_Muscularis_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Esophagus_Muscularis_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Esophagus_Muscularis_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Nerve_Tibial_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Nerve_Tibial_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Nerve_Tibial_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Pituitary_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Pituitary_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Pituitary_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Skin_Sun_Exposed_Lower_leg_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Skin_Sun_Exposed_Lower_leg_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Skin_Sun_Exposed_Lower_leg_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Testis_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Testis_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Testis_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Thyroid_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Thyroid_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Thyroid_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253893_Uterus_FAM85B_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253893_Uterus_FAM85B_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253893_Uterus_FAM85B_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253958_Heart_Left_Ventricle_CLDN23_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253958_Heart_Left_Ventricle_CLDN23_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253958_Heart_Left_Ventricle_CLDN23_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253958_Skin_Not_Sun_Exposed_Suprapubic_CLDN23_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253958_Skin_Not_Sun_Exposed_Suprapubic_CLDN23_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253958_Skin_Not_Sun_Exposed_Suprapubic_CLDN23_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253958_Skin_Sun_Exposed_Lower_leg_CLDN23_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253958_Skin_Sun_Exposed_Lower_leg_CLDN23_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253958_Skin_Sun_Exposed_Lower_leg_CLDN23_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253981_Adipose_Visceral_Omentum_ALG1L13P_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253981_Adipose_Visceral_Omentum_ALG1L13P_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253981_Adipose_Visceral_Omentum_ALG1L13P_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253981_Brain_Cortex_ALG1L13P_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253981_Brain_Cortex_ALG1L13P_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253981_Brain_Cortex_ALG1L13P_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253981_Cells_Cultured_fibroblasts_ALG1L13P_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253981_Cells_Cultured_fibroblasts_ALG1L13P_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253981_Cells_Cultured_fibroblasts_ALG1L13P_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253981_Esophagus_Mucosa_ALG1L13P_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253981_Esophagus_Mucosa_ALG1L13P_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253981_Esophagus_Mucosa_ALG1L13P_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000253981_Whole_Blood_ALG1L13P_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000253981_Whole_Blood_ALG1L13P_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000253981_Whole_Blood_ALG1L13P_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000254153_Esophagus_Mucosa_CTA-398F10.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254153_Esophagus_Mucosa_CTA-398F10.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000254153_Esophagus_Mucosa_CTA-398F10.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000254153_Minor_Salivary_Gland_CTA-398F10.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254153_Minor_Salivary_Gland_CTA-398F10.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000254153_Minor_Salivary_Gland_CTA-398F10.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000254153_Skin_Not_Sun_Exposed_Suprapubic_CTA-398F10.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254153_Skin_Not_Sun_Exposed_Suprapubic_CTA-398F10.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000254153_Skin_Not_Sun_Exposed_Suprapubic_CTA-398F10.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000254153_Skin_Sun_Exposed_Lower_leg_CTA-398F10.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254153_Skin_Sun_Exposed_Lower_leg_CTA-398F10.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000254153_Skin_Sun_Exposed_Lower_leg_CTA-398F10.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000254153_Thyroid_CTA-398F10.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254153_Thyroid_CTA-398F10.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000254153_Thyroid_CTA-398F10.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000254237_Testis_RP11-115J16.2_rs4383976.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254237_Testis_RP11-115J16.2_rs4383976.txt 2 1 --recode A --out Geno_gtex_ENSG00000254237_Testis_RP11-115J16.2_rs4383976
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Adipose_Subcutaneous_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Adipose_Subcutaneous_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Adipose_Subcutaneous_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Adipose_Visceral_Omentum_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Adipose_Visceral_Omentum_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Adipose_Visceral_Omentum_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Adrenal_Gland_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Adrenal_Gland_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Adrenal_Gland_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Artery_Tibial_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Artery_Tibial_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Artery_Tibial_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Breast_Mammary_Tissue_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Breast_Mammary_Tissue_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Breast_Mammary_Tissue_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Colon_Sigmoid_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Colon_Sigmoid_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Colon_Sigmoid_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Esophagus_Gastroesophageal_Junction_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Esophagus_Gastroesophageal_Junction_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Esophagus_Gastroesophageal_Junction_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Heart_Atrial_Appendage_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Heart_Atrial_Appendage_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Heart_Atrial_Appendage_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Lung_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Lung_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Lung_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Nerve_Tibial_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Nerve_Tibial_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Nerve_Tibial_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Skin_Not_Sun_Exposed_Suprapubic_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Skin_Not_Sun_Exposed_Suprapubic_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Skin_Not_Sun_Exposed_Suprapubic_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Skin_Sun_Exposed_Lower_leg_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Skin_Sun_Exposed_Lower_leg_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Skin_Sun_Exposed_Lower_leg_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Small_Intestine_Terminal_Ileum_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Small_Intestine_Terminal_Ileum_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Small_Intestine_Terminal_Ileum_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Spleen_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Spleen_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Spleen_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Stomach_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Stomach_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Stomach_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Testis_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Testis_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Testis_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Thyroid_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Thyroid_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Thyroid_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000254419_Whole_Blood_RP11-261P9.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254419_Whole_Blood_RP11-261P9.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000254419_Whole_Blood_RP11-261P9.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000254531_Adipose_Subcutaneous_FLJ20021_rs72929351.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254531_Adipose_Subcutaneous_FLJ20021_rs72929351.txt 2 1 --recode A --out Geno_gtex_ENSG00000254531_Adipose_Subcutaneous_FLJ20021_rs72929351
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000254531_Brain_Hypothalamus_FLJ20021_rs72929351.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254531_Brain_Hypothalamus_FLJ20021_rs72929351.txt 2 1 --recode A --out Geno_gtex_ENSG00000254531_Brain_Hypothalamus_FLJ20021_rs72929351
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000254531_Cells_Cultured_fibroblasts_FLJ20021_rs72929351.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254531_Cells_Cultured_fibroblasts_FLJ20021_rs72929351.txt 2 1 --recode A --out Geno_gtex_ENSG00000254531_Cells_Cultured_fibroblasts_FLJ20021_rs72929351
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000254531_Esophagus_Mucosa_FLJ20021_rs72929351.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254531_Esophagus_Mucosa_FLJ20021_rs72929351.txt 2 1 --recode A --out Geno_gtex_ENSG00000254531_Esophagus_Mucosa_FLJ20021_rs72929351
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000254531_Esophagus_Muscularis_FLJ20021_rs72929351.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254531_Esophagus_Muscularis_FLJ20021_rs72929351.txt 2 1 --recode A --out Geno_gtex_ENSG00000254531_Esophagus_Muscularis_FLJ20021_rs72929351
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000254531_Lung_FLJ20021_rs72929351.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254531_Lung_FLJ20021_rs72929351.txt 2 1 --recode A --out Geno_gtex_ENSG00000254531_Lung_FLJ20021_rs72929351
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000254531_Nerve_Tibial_FLJ20021_rs72929351.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254531_Nerve_Tibial_FLJ20021_rs72929351.txt 2 1 --recode A --out Geno_gtex_ENSG00000254531_Nerve_Tibial_FLJ20021_rs72929351
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000254531_Ovary_FLJ20021_rs72929351.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254531_Ovary_FLJ20021_rs72929351.txt 2 1 --recode A --out Geno_gtex_ENSG00000254531_Ovary_FLJ20021_rs72929351
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000254531_Pancreas_FLJ20021_rs72929351.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254531_Pancreas_FLJ20021_rs72929351.txt 2 1 --recode A --out Geno_gtex_ENSG00000254531_Pancreas_FLJ20021_rs72929351
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000254531_Skin_Not_Sun_Exposed_Suprapubic_FLJ20021_rs72929351.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254531_Skin_Not_Sun_Exposed_Suprapubic_FLJ20021_rs72929351.txt 2 1 --recode A --out Geno_gtex_ENSG00000254531_Skin_Not_Sun_Exposed_Suprapubic_FLJ20021_rs72929351
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000254531_Skin_Sun_Exposed_Lower_leg_FLJ20021_rs72929351.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254531_Skin_Sun_Exposed_Lower_leg_FLJ20021_rs72929351.txt 2 1 --recode A --out Geno_gtex_ENSG00000254531_Skin_Sun_Exposed_Lower_leg_FLJ20021_rs72929351
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr4 --extract snps_gtex_ENSG00000254531_Small_Intestine_Terminal_Ileum_FLJ20021_rs72929351.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254531_Small_Intestine_Terminal_Ileum_FLJ20021_rs72929351.txt 2 1 --recode A --out Geno_gtex_ENSG00000254531_Small_Intestine_Terminal_Ileum_FLJ20021_rs72929351
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000254562_Testis_LINC01493_rs11035036.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254562_Testis_LINC01493_rs11035036.txt 2 1 --recode A --out Geno_gtex_ENSG00000254562_Testis_LINC01493_rs11035036
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000254827_Cells_Cultured_fibroblasts_SLC22A18AS_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000254827_Cells_Cultured_fibroblasts_SLC22A18AS_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000254827_Cells_Cultured_fibroblasts_SLC22A18AS_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000255185_Breast_Mammary_Tissue_PDXDC2P_rs11866628.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000255185_Breast_Mammary_Tissue_PDXDC2P_rs11866628.txt 2 1 --recode A --out Geno_gtex_ENSG00000255185_Breast_Mammary_Tissue_PDXDC2P_rs11866628
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000255185_Lung_PDXDC2P_rs11866628.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000255185_Lung_PDXDC2P_rs11866628.txt 2 1 --recode A --out Geno_gtex_ENSG00000255185_Lung_PDXDC2P_rs11866628
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000255310_Prostate_AF131215.2_rs11995395.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000255310_Prostate_AF131215.2_rs11995395.txt 2 1 --recode A --out Geno_gtex_ENSG00000255310_Prostate_AF131215.2_rs11995395
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000255367_Skin_Not_Sun_Exposed_Suprapubic_RP13-726E6.2_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000255367_Skin_Not_Sun_Exposed_Suprapubic_RP13-726E6.2_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000255367_Skin_Not_Sun_Exposed_Suprapubic_RP13-726E6.2_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000255367_Skin_Sun_Exposed_Lower_leg_RP13-726E6.2_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000255367_Skin_Sun_Exposed_Lower_leg_RP13-726E6.2_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000255367_Skin_Sun_Exposed_Lower_leg_RP13-726E6.2_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000255367_Stomach_RP13-726E6.2_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000255367_Stomach_RP13-726E6.2_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000255367_Stomach_RP13-726E6.2_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000255367_Thyroid_RP13-726E6.2_rs11028412.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000255367_Thyroid_RP13-726E6.2_rs11028412.txt 2 1 --recode A --out Geno_gtex_ENSG00000255367_Thyroid_RP13-726E6.2_rs11028412
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr12 --extract snps_gtex_ENSG00000256625_Brain_Hippocampus_RP11-582E3.4_rs58292015.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000256625_Brain_Hippocampus_RP11-582E3.4_rs58292015.txt 2 1 --recode A --out Geno_gtex_ENSG00000256625_Brain_Hippocampus_RP11-582E3.4_rs58292015
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000258429_Adrenal_Gland_PDF_rs11866628.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000258429_Adrenal_Gland_PDF_rs11866628.txt 2 1 --recode A --out Geno_gtex_ENSG00000258429_Adrenal_Gland_PDF_rs11866628
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000258429_Brain_Hypothalamus_PDF_rs11866628.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000258429_Brain_Hypothalamus_PDF_rs11866628.txt 2 1 --recode A --out Geno_gtex_ENSG00000258429_Brain_Hypothalamus_PDF_rs11866628
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000260290_Colon_Sigmoid_CTD-2033A16.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000260290_Colon_Sigmoid_CTD-2033A16.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000260290_Colon_Sigmoid_CTD-2033A16.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Adipose_Subcutaneous_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Adipose_Subcutaneous_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Adipose_Subcutaneous_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Adipose_Visceral_Omentum_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Adipose_Visceral_Omentum_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Adipose_Visceral_Omentum_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Artery_Tibial_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Artery_Tibial_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Artery_Tibial_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Brain_Caudate_basal_ganglia_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Brain_Caudate_basal_ganglia_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Brain_Caudate_basal_ganglia_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Brain_Cerebellar_Hemisphere_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Brain_Cerebellar_Hemisphere_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Brain_Cerebellar_Hemisphere_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Brain_Cerebellum_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Brain_Cerebellum_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Brain_Cerebellum_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Brain_Cortex_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Brain_Cortex_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Brain_Cortex_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Brain_Hippocampus_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Brain_Hippocampus_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Brain_Hippocampus_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Brain_Spinal_cord_cervical_c-1_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Brain_Spinal_cord_cervical_c-1_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Brain_Spinal_cord_cervical_c-1_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Brain_Substantia_nigra_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Brain_Substantia_nigra_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Brain_Substantia_nigra_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Breast_Mammary_Tissue_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Breast_Mammary_Tissue_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Breast_Mammary_Tissue_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Cells_Cultured_fibroblasts_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Cells_Cultured_fibroblasts_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Cells_Cultured_fibroblasts_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Cells_EBV-transformed_lymphocytes_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Cells_EBV-transformed_lymphocytes_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Cells_EBV-transformed_lymphocytes_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Colon_Sigmoid_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Colon_Sigmoid_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Colon_Sigmoid_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Colon_Transverse_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Colon_Transverse_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Colon_Transverse_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Esophagus_Gastroesophageal_Junction_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Esophagus_Gastroesophageal_Junction_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Esophagus_Gastroesophageal_Junction_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Esophagus_Mucosa_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Esophagus_Mucosa_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Esophagus_Mucosa_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Esophagus_Muscularis_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Esophagus_Muscularis_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Esophagus_Muscularis_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Heart_Atrial_Appendage_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Heart_Atrial_Appendage_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Heart_Atrial_Appendage_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Heart_Left_Ventricle_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Heart_Left_Ventricle_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Heart_Left_Ventricle_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Liver_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Liver_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Liver_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Lung_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Lung_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Lung_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Muscle_Skeletal_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Muscle_Skeletal_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Muscle_Skeletal_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Nerve_Tibial_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Nerve_Tibial_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Nerve_Tibial_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Pituitary_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Pituitary_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Pituitary_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Skin_Not_Sun_Exposed_Suprapubic_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Skin_Not_Sun_Exposed_Suprapubic_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Skin_Not_Sun_Exposed_Suprapubic_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Skin_Sun_Exposed_Lower_leg_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Skin_Sun_Exposed_Lower_leg_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Skin_Sun_Exposed_Lower_leg_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Stomach_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Stomach_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Stomach_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000261777_Thyroid_RP11-529K1.2_rs149843185.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000261777_Thyroid_RP11-529K1.2_rs149843185.txt 2 1 --recode A --out Geno_gtex_ENSG00000261777_Thyroid_RP11-529K1.2_rs149843185
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr17 --extract snps_gtex_ENSG00000262133_Esophagus_Mucosa_RP11-676J12.6_rs12939291.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000262133_Esophagus_Mucosa_RP11-676J12.6_rs12939291.txt 2 1 --recode A --out Geno_gtex_ENSG00000262133_Esophagus_Mucosa_RP11-676J12.6_rs12939291
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr17 --extract snps_gtex_ENSG00000262133_Lung_RP11-676J12.6_rs12939291.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000262133_Lung_RP11-676J12.6_rs12939291.txt 2 1 --recode A --out Geno_gtex_ENSG00000262133_Lung_RP11-676J12.6_rs12939291
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr17 --extract snps_gtex_ENSG00000262133_Vagina_RP11-676J12.6_rs12939291.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000262133_Vagina_RP11-676J12.6_rs12939291.txt 2 1 --recode A --out Geno_gtex_ENSG00000262133_Vagina_RP11-676J12.6_rs12939291
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr17 --extract snps_gtex_ENSG00000262903_Cells_Cultured_fibroblasts_RP11-235E17.6_rs112236917.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000262903_Cells_Cultured_fibroblasts_RP11-235E17.6_rs112236917.txt 2 1 --recode A --out Geno_gtex_ENSG00000262903_Cells_Cultured_fibroblasts_RP11-235E17.6_rs112236917
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr18 --extract snps_gtex_ENSG00000266213_Brain_Hypothalamus_RP11-100K18.1_rs7233393.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000266213_Brain_Hypothalamus_RP11-100K18.1_rs7233393.txt 2 1 --recode A --out Geno_gtex_ENSG00000266213_Brain_Hypothalamus_RP11-100K18.1_rs7233393
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr18 --extract snps_gtex_ENSG00000266213_Brain_Spinal_cord_cervical_c-1_RP11-100K18.1_rs7233393.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000266213_Brain_Spinal_cord_cervical_c-1_RP11-100K18.1_rs7233393.txt 2 1 --recode A --out Geno_gtex_ENSG00000266213_Brain_Spinal_cord_cervical_c-1_RP11-100K18.1_rs7233393
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr18 --extract snps_gtex_ENSG00000266213_Brain_Substantia_nigra_RP11-100K18.1_rs7233393.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000266213_Brain_Substantia_nigra_RP11-100K18.1_rs7233393.txt 2 1 --recode A --out Geno_gtex_ENSG00000266213_Brain_Substantia_nigra_RP11-100K18.1_rs7233393
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr11 --extract snps_gtex_ENSG00000269821_Breast_Mammary_Tissue_KCNQ1OT1_rs4910714.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000269821_Breast_Mammary_Tissue_KCNQ1OT1_rs4910714.txt 2 1 --recode A --out Geno_gtex_ENSG00000269821_Breast_Mammary_Tissue_KCNQ1OT1_rs4910714
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000269918_Esophagus_Mucosa_AF131215.9_rs11995395.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000269918_Esophagus_Mucosa_AF131215.9_rs11995395.txt 2 1 --recode A --out Geno_gtex_ENSG00000269918_Esophagus_Mucosa_AF131215.9_rs11995395
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000269918_Thyroid_AF131215.9_rs11995395.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000269918_Thyroid_AF131215.9_rs11995395.txt 2 1 --recode A --out Geno_gtex_ENSG00000269918_Thyroid_AF131215.9_rs11995395
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr20 --extract snps_gtex_ENSG00000270951_Brain_Nucleus_accumbens_basal_ganglia_RP1-309F20.4_rs9680039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000270951_Brain_Nucleus_accumbens_basal_ganglia_RP1-309F20.4_rs9680039.txt 2 1 --recode A --out Geno_gtex_ENSG00000270951_Brain_Nucleus_accumbens_basal_ganglia_RP1-309F20.4_rs9680039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr14 --extract snps_gtex_ENSG00000271780_Artery_Coronary_RP11-1017G21.5_rs75500039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000271780_Artery_Coronary_RP11-1017G21.5_rs75500039.txt 2 1 --recode A --out Geno_gtex_ENSG00000271780_Artery_Coronary_RP11-1017G21.5_rs75500039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr14 --extract snps_gtex_ENSG00000271780_Artery_Coronary_RP11-1017G21.5_rs76059144.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000271780_Artery_Coronary_RP11-1017G21.5_rs76059144.txt 2 1 --recode A --out Geno_gtex_ENSG00000271780_Artery_Coronary_RP11-1017G21.5_rs76059144
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr14 --extract snps_gtex_ENSG00000271780_Artery_Coronary_RP11-1017G21.5_rs79674919.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000271780_Artery_Coronary_RP11-1017G21.5_rs79674919.txt 2 1 --recode A --out Geno_gtex_ENSG00000271780_Artery_Coronary_RP11-1017G21.5_rs79674919
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr14 --extract snps_gtex_ENSG00000271780_Brain_Caudate_basal_ganglia_RP11-1017G21.5_rs76059144.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000271780_Brain_Caudate_basal_ganglia_RP11-1017G21.5_rs76059144.txt 2 1 --recode A --out Geno_gtex_ENSG00000271780_Brain_Caudate_basal_ganglia_RP11-1017G21.5_rs76059144
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr14 --extract snps_gtex_ENSG00000271780_Brain_Cerebellum_RP11-1017G21.5_rs75500039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000271780_Brain_Cerebellum_RP11-1017G21.5_rs75500039.txt 2 1 --recode A --out Geno_gtex_ENSG00000271780_Brain_Cerebellum_RP11-1017G21.5_rs75500039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr14 --extract snps_gtex_ENSG00000271780_Brain_Cerebellum_RP11-1017G21.5_rs76059144.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000271780_Brain_Cerebellum_RP11-1017G21.5_rs76059144.txt 2 1 --recode A --out Geno_gtex_ENSG00000271780_Brain_Cerebellum_RP11-1017G21.5_rs76059144
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr14 --extract snps_gtex_ENSG00000271780_Brain_Cerebellum_RP11-1017G21.5_rs79674919.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000271780_Brain_Cerebellum_RP11-1017G21.5_rs79674919.txt 2 1 --recode A --out Geno_gtex_ENSG00000271780_Brain_Cerebellum_RP11-1017G21.5_rs79674919
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr14 --extract snps_gtex_ENSG00000271780_Brain_Spinal_cord_cervical_c-1_RP11-1017G21.5_rs75500039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000271780_Brain_Spinal_cord_cervical_c-1_RP11-1017G21.5_rs75500039.txt 2 1 --recode A --out Geno_gtex_ENSG00000271780_Brain_Spinal_cord_cervical_c-1_RP11-1017G21.5_rs75500039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr14 --extract snps_gtex_ENSG00000271780_Brain_Spinal_cord_cervical_c-1_RP11-1017G21.5_rs76059144.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000271780_Brain_Spinal_cord_cervical_c-1_RP11-1017G21.5_rs76059144.txt 2 1 --recode A --out Geno_gtex_ENSG00000271780_Brain_Spinal_cord_cervical_c-1_RP11-1017G21.5_rs76059144
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr14 --extract snps_gtex_ENSG00000271780_Brain_Spinal_cord_cervical_c-1_RP11-1017G21.5_rs79674919.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000271780_Brain_Spinal_cord_cervical_c-1_RP11-1017G21.5_rs79674919.txt 2 1 --recode A --out Geno_gtex_ENSG00000271780_Brain_Spinal_cord_cervical_c-1_RP11-1017G21.5_rs79674919
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr14 --extract snps_gtex_ENSG00000271780_Whole_Blood_RP11-1017G21.5_rs75500039.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000271780_Whole_Blood_RP11-1017G21.5_rs75500039.txt 2 1 --recode A --out Geno_gtex_ENSG00000271780_Whole_Blood_RP11-1017G21.5_rs75500039
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr14 --extract snps_gtex_ENSG00000271780_Whole_Blood_RP11-1017G21.5_rs76059144.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000271780_Whole_Blood_RP11-1017G21.5_rs76059144.txt 2 1 --recode A --out Geno_gtex_ENSG00000271780_Whole_Blood_RP11-1017G21.5_rs76059144
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr14 --extract snps_gtex_ENSG00000271780_Whole_Blood_RP11-1017G21.5_rs79674919.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000271780_Whole_Blood_RP11-1017G21.5_rs79674919.txt 2 1 --recode A --out Geno_gtex_ENSG00000271780_Whole_Blood_RP11-1017G21.5_rs79674919
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000271811_Cells_Cultured_fibroblasts_RP1-79C4.4_rs75804706.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000271811_Cells_Cultured_fibroblasts_RP1-79C4.4_rs75804706.txt 2 1 --recode A --out Geno_gtex_ENSG00000271811_Cells_Cultured_fibroblasts_RP1-79C4.4_rs75804706
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000272024_Testis_RP11-546K22.3_rs10086917.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000272024_Testis_RP11-546K22.3_rs10086917.txt 2 1 --recode A --out Geno_gtex_ENSG00000272024_Testis_RP11-546K22.3_rs10086917
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000272247_Heart_Left_Ventricle_RP11-379F4.9_rs116489699.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000272247_Heart_Left_Ventricle_RP11-379F4.9_rs116489699.txt 2 1 --recode A --out Geno_gtex_ENSG00000272247_Heart_Left_Ventricle_RP11-379F4.9_rs116489699
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000272267_Muscle_Skeletal_RP11-375N15.2_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000272267_Muscle_Skeletal_RP11-375N15.2_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000272267_Muscle_Skeletal_RP11-375N15.2_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr6 --extract snps_gtex_ENSG00000272398_Vagina_CD24_rs6917915.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000272398_Vagina_CD24_rs6917915.txt 2 1 --recode A --out Geno_gtex_ENSG00000272398_Vagina_CD24_rs6917915
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000272505_Skin_Sun_Exposed_Lower_leg_RP11-981G7.6_rs4383976.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000272505_Skin_Sun_Exposed_Lower_leg_RP11-981G7.6_rs4383976.txt 2 1 --recode A --out Geno_gtex_ENSG00000272505_Skin_Sun_Exposed_Lower_leg_RP11-981G7.6_rs4383976
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr3 --extract snps_gtex_ENSG00000272832_Brain_Nucleus_accumbens_basal_ganglia_RP11-91K8.5_rs35356925.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000272832_Brain_Nucleus_accumbens_basal_ganglia_RP11-91K8.5_rs35356925.txt 2 1 --recode A --out Geno_gtex_ENSG00000272832_Brain_Nucleus_accumbens_basal_ganglia_RP11-91K8.5_rs35356925
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000273006_Whole_Blood_RP11-314C9.2_rs6761414.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000273006_Whole_Blood_RP11-314C9.2_rs6761414.txt 2 1 --recode A --out Geno_gtex_ENSG00000273006_Whole_Blood_RP11-314C9.2_rs6761414
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000273027_Brain_Cortex_LL21NC02-1C16.1_rs76924721.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000273027_Brain_Cortex_LL21NC02-1C16.1_rs76924721.txt 2 1 --recode A --out Geno_gtex_ENSG00000273027_Brain_Cortex_LL21NC02-1C16.1_rs76924721
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000273058_Adipose_Subcutaneous_RP11-385F5.5_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000273058_Adipose_Subcutaneous_RP11-385F5.5_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000273058_Adipose_Subcutaneous_RP11-385F5.5_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000273058_Adipose_Visceral_Omentum_RP11-385F5.5_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000273058_Adipose_Visceral_Omentum_RP11-385F5.5_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000273058_Adipose_Visceral_Omentum_RP11-385F5.5_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000273058_Artery_Aorta_RP11-385F5.5_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000273058_Artery_Aorta_RP11-385F5.5_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000273058_Artery_Aorta_RP11-385F5.5_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000273058_Cells_Cultured_fibroblasts_RP11-385F5.5_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000273058_Cells_Cultured_fibroblasts_RP11-385F5.5_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000273058_Cells_Cultured_fibroblasts_RP11-385F5.5_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000273058_Colon_Transverse_RP11-385F5.5_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000273058_Colon_Transverse_RP11-385F5.5_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000273058_Colon_Transverse_RP11-385F5.5_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000273058_Esophagus_Mucosa_RP11-385F5.5_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000273058_Esophagus_Mucosa_RP11-385F5.5_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000273058_Esophagus_Mucosa_RP11-385F5.5_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000273058_Lung_RP11-385F5.5_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000273058_Lung_RP11-385F5.5_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000273058_Lung_RP11-385F5.5_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000273058_Skin_Sun_Exposed_Lower_leg_RP11-385F5.5_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000273058_Skin_Sun_Exposed_Lower_leg_RP11-385F5.5_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000273058_Skin_Sun_Exposed_Lower_leg_RP11-385F5.5_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000273058_Small_Intestine_Terminal_Ileum_RP11-385F5.5_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000273058_Small_Intestine_Terminal_Ileum_RP11-385F5.5_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000273058_Small_Intestine_Terminal_Ileum_RP11-385F5.5_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000273058_Testis_RP11-385F5.5_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000273058_Testis_RP11-385F5.5_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000273058_Testis_RP11-385F5.5_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr1 --extract snps_gtex_ENSG00000273058_Thyroid_RP11-385F5.5_rs113450127.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000273058_Thyroid_RP11-385F5.5_rs113450127.txt 2 1 --recode A --out Geno_gtex_ENSG00000273058_Thyroid_RP11-385F5.5_rs113450127
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000273265_Small_Intestine_Terminal_Ileum_RP11-353K11.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000273265_Small_Intestine_Terminal_Ileum_RP11-353K11.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000273265_Small_Intestine_Terminal_Ileum_RP11-353K11.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000273597_Brain_Frontal_Cortex_BA9_RP11-392A14.9_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000273597_Brain_Frontal_Cortex_BA9_RP11-392A14.9_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000273597_Brain_Frontal_Cortex_BA9_RP11-392A14.9_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000275342_Colon_Sigmoid_SGK223_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000275342_Colon_Sigmoid_SGK223_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000275342_Colon_Sigmoid_SGK223_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000275342_Esophagus_Gastroesophageal_Junction_SGK223_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000275342_Esophagus_Gastroesophageal_Junction_SGK223_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000275342_Esophagus_Gastroesophageal_Junction_SGK223_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr8 --extract snps_gtex_ENSG00000275342_Thyroid_SGK223_rs1530483.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000275342_Thyroid_SGK223_rs1530483.txt 2 1 --recode A --out Geno_gtex_ENSG00000275342_Thyroid_SGK223_rs1530483
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr12 --extract snps_gtex_ENSG00000278743_Adrenal_Gland_RP11-707G18.1_rs58292015.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000278743_Adrenal_Gland_RP11-707G18.1_rs58292015.txt 2 1 --recode A --out Geno_gtex_ENSG00000278743_Adrenal_Gland_RP11-707G18.1_rs58292015
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr16 --extract snps_gtex_ENSG00000279412_Brain_Cerebellar_Hemisphere_RP11-394B2.5_rs11866628.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000279412_Brain_Cerebellar_Hemisphere_RP11-394B2.5_rs11866628.txt 2 1 --recode A --out Geno_gtex_ENSG00000279412_Brain_Cerebellar_Hemisphere_RP11-394B2.5_rs11866628
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000279489_Skin_Not_Sun_Exposed_Suprapubic_RP11-392A14.8_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000279489_Skin_Not_Sun_Exposed_Suprapubic_RP11-392A14.8_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000279489_Skin_Not_Sun_Exposed_Suprapubic_RP11-392A14.8_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000279608_Thyroid_RP11-182N22.9_rs56317654.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000279608_Thyroid_RP11-182N22.9_rs56317654.txt 2 1 --recode A --out Geno_gtex_ENSG00000279608_Thyroid_RP11-182N22.9_rs56317654
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000279721_Thyroid_RP11-416H1.2_rs13022031.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000279721_Thyroid_RP11-416H1.2_rs13022031.txt 2 1 --recode A --out Geno_gtex_ENSG00000279721_Thyroid_RP11-416H1.2_rs13022031
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000279791_Brain_Caudate_basal_ganglia_RP11-499E14.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000279791_Brain_Caudate_basal_ganglia_RP11-499E14.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000279791_Brain_Caudate_basal_ganglia_RP11-499E14.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000279791_Nerve_Tibial_RP11-499E14.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000279791_Nerve_Tibial_RP11-499E14.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000279791_Nerve_Tibial_RP11-499E14.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000279791_Stomach_RP11-499E14.1_rs73963107.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000279791_Stomach_RP11-499E14.1_rs73963107.txt 2 1 --recode A --out Geno_gtex_ENSG00000279791_Stomach_RP11-499E14.1_rs73963107
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000280109_Lung_PLAC4_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000280109_Lung_PLAC4_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000280109_Lung_PLAC4_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr21 --extract snps_gtex_ENSG00000280109_Thyroid_PLAC4_rs62219580.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000280109_Thyroid_PLAC4_rs62219580.txt 2 1 --recode A --out Geno_gtex_ENSG00000280109_Thyroid_PLAC4_rs62219580
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000280276_Colon_Sigmoid_RP11-314C9.1_rs6761414.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000280276_Colon_Sigmoid_RP11-314C9.1_rs6761414.txt 2 1 --recode A --out Geno_gtex_ENSG00000280276_Colon_Sigmoid_RP11-314C9.1_rs6761414
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000280276_Nerve_Tibial_RP11-314C9.1_rs6761414.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000280276_Nerve_Tibial_RP11-314C9.1_rs6761414.txt 2 1 --recode A --out Geno_gtex_ENSG00000280276_Nerve_Tibial_RP11-314C9.1_rs6761414
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000280276_Skin_Not_Sun_Exposed_Suprapubic_RP11-314C9.1_rs6761414.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000280276_Skin_Not_Sun_Exposed_Suprapubic_RP11-314C9.1_rs6761414.txt 2 1 --recode A --out Geno_gtex_ENSG00000280276_Skin_Not_Sun_Exposed_Suprapubic_RP11-314C9.1_rs6761414
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000280276_Small_Intestine_Terminal_Ileum_RP11-314C9.1_rs6761414.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000280276_Small_Intestine_Terminal_Ileum_RP11-314C9.1_rs6761414.txt 2 1 --recode A --out Geno_gtex_ENSG00000280276_Small_Intestine_Terminal_Ileum_RP11-314C9.1_rs6761414
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000280276_Spleen_RP11-314C9.1_rs6761414.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000280276_Spleen_RP11-314C9.1_rs6761414.txt 2 1 --recode A --out Geno_gtex_ENSG00000280276_Spleen_RP11-314C9.1_rs6761414
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr2 --extract snps_gtex_ENSG00000280276_Whole_Blood_RP11-314C9.1_rs6761414.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000280276_Whole_Blood_RP11-314C9.1_rs6761414.txt 2 1 --recode A --out Geno_gtex_ENSG00000280276_Whole_Blood_RP11-314C9.1_rs6761414
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000281205_Brain_Caudate_basal_ganglia_LINC00950_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000281205_Brain_Caudate_basal_ganglia_LINC00950_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000281205_Brain_Caudate_basal_ganglia_LINC00950_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000281205_Brain_Cerebellar_Hemisphere_LINC00950_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000281205_Brain_Cerebellar_Hemisphere_LINC00950_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000281205_Brain_Cerebellar_Hemisphere_LINC00950_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000281205_Brain_Cortex_LINC00950_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000281205_Brain_Cortex_LINC00950_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000281205_Brain_Cortex_LINC00950_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000281205_Brain_Nucleus_accumbens_basal_ganglia_LINC00950_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000281205_Brain_Nucleus_accumbens_basal_ganglia_LINC00950_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000281205_Brain_Nucleus_accumbens_basal_ganglia_LINC00950_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000281205_Heart_Atrial_Appendage_LINC00950_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000281205_Heart_Atrial_Appendage_LINC00950_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000281205_Heart_Atrial_Appendage_LINC00950_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000281205_Heart_Left_Ventricle_LINC00950_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000281205_Heart_Left_Ventricle_LINC00950_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000281205_Heart_Left_Ventricle_LINC00950_rs72729406
plink --bfile /wynton/scratch/dhu/gtex_geno/GTEx_WGS_chr9 --extract snps_gtex_ENSG00000281491_Minor_Salivary_Gland_DNAJB5-AS1_rs72729406.txt --make-bed --out temp_gtex
plink --bfile temp_gtex --a1-allele snps_alt_gtex_ENSG00000281491_Minor_Salivary_Gland_DNAJB5-AS1_rs72729406.txt 2 1 --recode A --out Geno_gtex_ENSG00000281491_Minor_Salivary_Gland_DNAJB5-AS1_rs72729406
