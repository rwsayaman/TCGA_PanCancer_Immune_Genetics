inNameListCorGtex='list_cor_gtex.txt'
outName='run_eCAVIAR.sh'

inDataListCorGtex=open(inNameListCorGtex,'r')
outData=open(outName,'w')

for line in inDataListCorGtex:
	templist=line.strip().split()
	tempcor_gtex=templist[0]
	tempcor_tcga=tempcor_gtex.replace('_gtex_','_tcga_')
	tempz_gtex=tempcor_gtex.replace('Cor_','Result_')
	tempz_tcga=tempcor_tcga.replace('Cor_','Result_')
	tempname_result_c1=tempcor_gtex.replace('/wynton/home/burchard/dhu/gtex_tcga/eQTL_Sugg/match_and_plink/Cor_gtex','Result_eCAVIAR_c1')
	tempname_result_c2=tempcor_gtex.replace('/wynton/home/burchard/dhu/gtex_tcga/eQTL_Sugg/match_and_plink/Cor_gtex','Result_eCAVIAR_c2')
	tempout1='eCAVIAR -l '+tempcor_tcga+' -l '+tempcor_gtex+' -z '+tempz_tcga+' -z '+tempz_gtex+' -c 1 -f 1 -o '+tempname_result_c1+'\n'
	outData.write(tempout1)
	tempout2='eCAVIAR -l '+tempcor_tcga+' -l '+tempcor_gtex+' -z '+tempz_tcga+' -z '+tempz_gtex+' -c 2 -f 1 -o '+tempname_result_c2+'\n'
	outData.write(tempout2)

inDataListCorGtex.close()
outData.close()
