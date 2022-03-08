mkdir PLOTS
rm OUT* *png
rm results.txt 
touch ALL_DATA

plink1 --bfile /export/cse02/msaad/TCGA/eQTL/SUGGESTIVE/selSugE6_tcga_imputed_hrc1.1_chrAll --freq --out FREQ
K=1
for i in /export/cse02/msaad/TCGA/sQTL/DATA/TCGA_SPLICING/3PRIME/splice3prime  /export/cse02/msaad/TCGA/sQTL/DATA/TCGA_SPLICING/5PRIME/splice5prime /export/cse02/msaad/TCGA/sQTL/DATA/TCGA_SPLICING/EXON_SKIPPING/spliceEXONskipping /export/cse02/msaad/TCGA/sQTL/DATA/TCGA_SPLICING/INTRON_RETENTION/spliceINTRONretention /export/cse02/msaad/TCGA/sQTL/DATA/TCGA_SPLICING/MUT_EXC_EXONS/spliceMUT_EXC_EXONS
do
grep -f ./UNIQUE_GENES/ListUniqueGenes_ENSG $i | awk '{print $0}' |grep -v TCGA > DATA$K &
grep -f ./UNIQUE_GENES/ListUniqueGenes_ENSG $i | awk '{print $1,$2,$3,$6}' | sed  's/\./ /g' > Metadata$K &
grep  TCGA $i | tr '\t' '\n' | sed  's/\./ /g' | awk '{print $1}' > HEADER$K &

R CMD BATCH "--args DATA$K Metadata$K HEADER$K OUT$K " Analyze.R  LOG$K 

paste -d " " ALL_DATA temp_data > temp
mv temp ALL_DATA
K=$((K+1))
done

paste -d " " ID_SPLICE ALL_DATA > temp
mv temp ALL_DATA
