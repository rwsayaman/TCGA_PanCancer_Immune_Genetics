import linecache

inNamePlinkPrefix='GTEx_WGS_'
inNameSNP='list_snps_gtex.txt'
inNameSNPAlt='list_snps_alt_gtex.txt'
outName='run_plink_gtex.sh'

inDataSNP=open(inNameSNP,'r')
inDataSNPAlt=open(inNameSNPAlt,'r')
outData=open(outName,'w')

n_line=0
for line in inDataSNP:
	n_line=n_line+1
	templist=line.strip().split()
	tempsnp=templist[0]
	tempsnp_1st=linecache.getline(tempsnp,1)
	tempchr=tempsnp_1st.split('_')[0]
	tempsuffix=tempsnp.replace('snps_gtex_','')
	tempsnp_alt='snps_alt_gtex_'+tempsuffix
	outNameGeno='Geno_gtex_'+tempsuffix.replace('.txt','')
	tempout1='plink --bfile '+inNamePlinkPrefix+tempchr+' --extract '+tempsnp+' --make-bed --out temp_gtex'+'\n'
	#outData.write(tempout1)
	tempout2='plink --bfile temp_gtex --a1-allele '+tempsnp_alt+' 2 1 --recode A --out '+outNameGeno+'\n'
	#outData.write(tempout2)

inDataSNP.close()
inDataSNPAlt.close()
outData.close()

