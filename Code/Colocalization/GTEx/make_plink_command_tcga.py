import linecache

inNamePlink='tcga_imputed_hrc1.1_noMissnp_b38_chr'
inNameSNP='list_snps_tcga.txt'
inNameSNPAlt='list_snps_alt_tcga.txt'
outName='run_plink_tcga.sh'

inDataSNP=open(inNameSNP,'r')
inDataSNPAlt=open(inNameSNPAlt,'r')
outData=open(outName,'w')

n_line=0
for line in inDataSNP:
	n_line=n_line+1
	templist=line.strip().split()
	tempsnp=templist[0]
	tempsnp_1st=linecache.getline(tempsnp,1)
        tempchr=tempsnp_1st.split(':')[0]
	tempsuffix=tempsnp.replace('snps_tcga_','')
	tempsnp_alt='snps_alt_tcga_'+tempsuffix
	outNameGeno='Geno_tcga_'+tempsuffix.replace('.txt','')
	tempout1='plink --bfile '+inNamePlink+tempchr+' --extract '+tempsnp+' --make-bed --out temp_tcga'+'\n'
	outData.write(tempout1)
	tempout2='plink --bfile temp_tcga --a1-allele '+tempsnp_alt+' 2 1 --recode A --out '+outNameGeno+'\n'
	outData.write(tempout2)

inDataSNP.close()
inDataSNPAlt.close()
outData.close()

