for tempname in $(cat list_sqtl_assoc.txt)
do
tempname1=${tempname%.*}
tempname2=${tempname1%.*}
zcat $tempname | split -l 80000000 -d - ${tempname2}_seg
done
