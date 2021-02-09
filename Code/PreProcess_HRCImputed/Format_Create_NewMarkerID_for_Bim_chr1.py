# This script makes a new SNP id for a plink bim file.
# The new SNP id is chr:bp:a1:a2 where a1 and a2 are in alphabetical order.

inName='tcga_imputed_hrc1.1_rsq0.5_chr1.bim'
outName='tcga_imputed_hrc1.1_rsq0.5_snpid_updated_chr1.bim'
inData=open(inName,'r')
outData=open(outName,'w')

pos_chr=1
pos_bp=4
pos_a1=5
pos_a2=6
pos_oldid=2
for line in inData:
    templist=line.strip().split()
    oldid=templist[pos_oldid-1]
    a1a2=templist[(pos_a1-1):pos_a2]
    a1a2_sort=sorted(a1a2)
    newid=templist[pos_chr-1]+':'+templist[pos_bp-1]+':'+a1a2_sort[0]+':'+a1a2_sort[1]
    templine_out=templist[0]+'\t'+newid+'\t'+templist[2]+'\t'+templist[3]+'\t'+templist[4]+'\t'+templist[5]+'\t'+'\n'
    outData.write(templine_out)

inData.close()
outData.close()

