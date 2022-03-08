for i in {1..22..1} X
do
bcftools view -r $i PCA.r1.TCGAbarcode.merge.tnSwapCorrected.10389.vcf.gz -O b -o   CHR"$i".bcf.gz  &
bcftools  norm -Ou -m -any CHR"$i".bcf.gz | bcftools norm -Ou -f $ref/human_g1k_v37.fasta | |bcftools --missing-to-ref | bcftools annotate -Ob -x ID -I +'%CHROM:%POS:-:%ALT' -O z -o CHR"$i"_norm.vcf.gz 
bcftools  +setGT CHR"$i"_norm.vcf.gz   -O z -o CHR"$i"_norm_nomissing.vcf.gz  -- -t . -n 0p
plink --vcf CHR"$i"_norm_nomissing.vcf.gz --keep-allele-order --vcf-idspace-to _ --const-fid --allow-extra-chr 0 --split-x  2699520 154931044 no-fail --make-bed --out CHR"$i"_norm_nomissing 
plink --bfile CHR"$i"_norm --extract range list_snps --recode A --out OUT$i  --allow-no-sex
done


