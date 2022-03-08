rm FULL_RESULTS_C*
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
cp Plot.R eQTL.R COLOC_$mypath 


echo "
awk '{print \$1\":\"\$2,\$5}' OUTPUT_eQTL.tsv |grep -v CHR > eQTL.z
awk '{print \$1\":\"\$2,\$6}' OUTPUT_eQTL.tsv |grep -v CHR > eQTL.p
#awk '{print \$1\":\"\$2,\$5}' OUTPUT_GWAS.tsv |grep -v CHR > GWAS.z
#awk '{print \$1\":\"\$2,\$6}' OUTPUT_GWAS.tsv |grep -v CHR > GWAS.p
eCAVIAR -o coloc_c1.out -l EXTRACTED.ld -l EXTRACTED.ld -z GWAS.z -z eQTL.z -f 1 -c 1 
eCAVIAR -o coloc_c2.out -l EXTRACTED.ld -l EXTRACTED.ld -z GWAS.z -z eQTL.z -f 1 -c 2
R CMD BATCH \"--args 51 1  \" Plot.R  LOG 
R CMD BATCH \"--args 51 2  \" Plot.R  LOG 
" > COLOC_$mypath/Run1.sh

cd COLOC_$mypath
sh Run1.sh &
cd ../
if [ `expr $i % 30` -eq 0 ]
then
sleep 4s
fi

done








