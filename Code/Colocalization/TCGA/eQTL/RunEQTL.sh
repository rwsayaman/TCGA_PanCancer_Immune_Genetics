rm FULL_RESULTS
rm LS_DIR
wc -l  top_regions |awk '{print $1}' > WC
awk '{print $1}' top_regions > CHR
awk '{print $2}' top_regions > BP
awk '{print $3}' top_regions > GENE
awk '{print $4}' top_regions > PHENO
awk '{print $5}' top_regions > SIG

j=1; while read aLine ; do myarray1[$j]=$aLine; j=$(($j+1)) ; done < WC
j=1; while read aLine ; do myarray2[$j]=$aLine; j=$(($j+1)) ; done < CHR
j=1; while read aLine ; do myarray3[$j]=$aLine; j=$(($j+1)) ; done < BP
j=1; while read aLine ; do myarray4[$j]=$aLine; j=$(($j+1)) ; done < GENE
j=1; while read aLine ; do myarray5[$j]=$aLine; j=$(($j+1)) ; done < PHENO
j=1; while read aLine ; do myarray6[$j]=$aLine; j=$(($j+1)) ; done < SIG

for i in `seq 1 ${myarray1[1]} `
do
mypath=${myarray6[i]}_${myarray4[i]}_${myarray2[i]}_${myarray3[i]}_${myarray5[i]}
rm -r COLOC_$mypath
mkdir COLOC_$mypath
cp Plot.R eQTL.R COLOC_$mypath 
echo "${myarray2[i]} ${myarray3[i]}  ${myarray4[i]} ${myarray5[i]} ${myarray6[i]}" > COLOC_$mypath/REGIONS
grep -w -B 100 -A 100 ${myarray2[i]}:${myarray3[i]}  /export/cse02/msaad/TCGA/SUMMARY_STAT/GWAS.IBD.ALL_R2.0.5_maf.0.005_${myarray5[i]}.txt |awk '{print $1":"$3,$15,$16}' > ./COLOC_"$mypath"/GWAS

#awk '{print $1}' ./COLOC_"$mypath"/GWAS  > ./COLOC_"$mypath"/GWAS.s
#awk '{print $1,$2}' ./COLOC_"$mypath"/GWAS > ./COLOC_"$mypath"/GWAS.z
#awk '{print $1,$3}' ./COLOC_"$mypath"/GWAS > ./COLOC_"$mypath"/GWAS.p

echo "
plink1 --bfile /export/cse02/msaad/TCGA/HRC_IMPUTATION/TCGA-HRC_imputed/tcga_imputed_hrc1.1_chr${myarray2[i]}  --extract GWAS.s --make-bed --out EXTRACTED
plink1 --bfile EXTRACTED --recode A --out EXTRACTED
plink1 --bfile EXTRACTED --r square --out EXTRACTED
head -101 EXTRACTED.ld |tail -1 > LD
" > COLOC_$mypath/Run.sh

echo "COLOC_$mypath" >> LS_DIR
cd COLOC_$mypath
sh Run.sh &
cd ../
echo $i
done
R CMD BATCH eQTL.R 


