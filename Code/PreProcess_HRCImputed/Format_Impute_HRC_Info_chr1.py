# This script makes new HRC imputation info file
# The SNP id is chr:bp:a1:a2 where a1 and a2 are in alphabetic order
# It also filters out Rsq<0.5
# The only input file is an HRC imputation info file

import gzip

inName='chr1.info.gz'
outName='chr1.info.rsq0.5.gz'

inData=gzip.open(inName,'rb')
outData=gzip.open(outName,'wb')

pos_snp=1
pos_a1=2
pos_a2=3
pos_rsq=7
rsq_cutoff=0.5

nJunk=1

i=0
for line in inData:
	i+=1
	if i==nJunk:
		templine_out='SNP_new'+'\t'+line
		outData.write(templine_out)
	else:
		templist=line.strip().split()
		a1a2=templist[(pos_a1-1):pos_a2]
		a1a2_sort=sorted(a1a2)
		new_id=templist[pos_snp-1]+':'+a1a2_sort[0]+':'+a1a2_sort[1]
		templine_out=new_id+'\t'+line
		temp_rsq=templist[pos_rsq-1]
		if temp_rsq=='-':
			outData.write(templine_out)
		elif float(temp_rsq) >= rsq_cutoff:
			outData.write(templine_out)

inData.close()
outData.close()
