## Mohamad Saad
## Qatar Computing Research Institute


#  Read the phenotype file. It contains all traits and covariates (PC1-PC7, Age, Gender, Cancer Type, etc.).
Pheno = read.csv("PhenoFile.csv",h=TRUE)

# Transform the mantis score into a binary variable. Cutoff is 0.4. 
Pheno[Pheno[,"MANTIS_score"]<=0.4 & !is.na(Pheno[,"MANTIS_score"]),"MANTIS_score"]= 0
Pheno[Pheno[,"MANTIS_score"]>0.4 & !is.na(Pheno[,"MANTIS_score"]),"MANTIS_score"]= 1

# Read the genotype file. This is a table with burden of rare variants per column and samples per row. Header contains gene names (e.g., BRCA1, BRCA2, etc.). First 2 columns are the samples IDs and remaining columns are the gennes' burden of rare variants. 
GENO = read.table("BurdenRareVariants.txt",h=TRUE)
Ngene = ncol(GENO) - 2
GENES = colnames(GENO)[-c(1:2)]


# Read list of phenotypes to be tested. This is a one column file. Phenotype names are in the header of the phenotype file read above.
LIST_PHENO = read.table("ListPheno.txt")
Npheno = nrow(LIST_PHENO)

# Read the list of phenotypes to be transformed as log10 (Phenotype +1)
TO_LOG = read.table("ToLog.txt")
for (i in 1:nrow(TO_LOG))
  {
  Pheno[!is.na(Pheno[,as.character(TO_LOG[i,1])]), as.character(TO_LOG[i,1])] = log10(Pheno[!is.na(Pheno[,as.character(TO_LOG[i,1])]), as.character(TO_LOG[i,1])] +1 )
  }


# List of phenotypes if one needs to omit cancer types from the list of covariates. 
ToOmitCancerType = read.table("ToOmitCancerType.txt")

# List of phenotypes that are binary and thereofre logistic regression will be performed.
Binary = read.table("BinaryPheno.txt")

############################################## Pathway Analysis

#Read list of pathways with corresponding genes. This file does not contain a header. A row has the following format: PathwayName PathwayType Gene1,Gene2,etc.; eg., Cell_cycle D RB1,CDKN1B,CDKN2A,BUB1B,DOCK8
LIST_PATH = read.table("ListPathway.txt")
Npath= nrow(LIST_PATH)
LIST = strsplit(as.character(LIST_PATH[,3]),",")  # Extract gene names
LIST_PATH[,"NGenes"] = 0
LIST_PATH[,"NMut"] = 0
GENO_PATH = GENO[,c(1,2,3:(Npath+2))]

colnames(GENO_PATH)[3:(Npath+2)] = as.character(LIST_PATH[,1])
PATH = as.character(LIST_PATH[,1]) 


#### Collapse gene burdens into pathways. Pathway level will be the sum of its genes' burdens. 
for (i in 1:Npath)
{
  H = which(GENES %in% LIST[[i]] ==TRUE)
  LIST_PATH[i,"NGenes"] = length(H)
  print(length(H))
  if(length(H)>1)
  {
  GENO_PATH[,i+2] = apply(GENO[,H+2] , 1, sum)
  } else {
  	if(length(H)==1)
  	 {
	  GENO_PATH[,i+2] = GENO[,H+2] 
 	 } else {GENO_PATH[,i+2] = 0}
         }
}
GENO_PATH = GENO_PATH[,-c(1:2)]
GENO_PATH[GENO_PATH>0 & !is.na(GENO_PATH)]  = 1
###############################



#### Thia is to determine the number of genes per pathway and the number of total mutations across all samples
MAF = vector("numeric")
CT = vector("numeric")

for (i in 1:Npath)
  {
  MAF = c(MAF , nrow(GENO_PATH[GENO_PATH[,PATH[i]]>0 & !is.na(GENO_PATH[,PATH[i]])  & !is.na(Pheno[,"Cancer.Type"]), ])/nrow(GENO_PATH[GENO_PATH[,PATH[i]]>=0 & !is.na(GENO_PATH[,PATH[i]]), ]) & !is.na(Pheno[,"Cancer.Type"]))  
  CT = c(CT , nrow(GENO_PATH[GENO_PATH[,PATH[i]]>0 & !is.na(GENO_PATH[,PATH[i]]) & !is.na(Pheno[,"Cancer.Type"]), ]))
  LIST_PATH[i,"NMut"] = CT[i]
  }
write.table(LIST_PATH , "SummaryPathway.txt",quote=F,row.names=F,col.names=TRUE)
############################

##### This is to run the association analysis between traits and the pathway level of rare variants.
K=1
RES = matrix(-9, nc=8, nr=Npath*Npheno)
for (i in 1:Npath)
{
  for (j in 1:Npheno)
  {
   if (as.character(LIST_PHENO[j,1]) %in% as.character(Binary[,1]) == FALSE)   ### Perform Linear. Otherwise Logistic
   {
      if(  as.character(LIST_PHENO[j,1]) %in% as.character(ToOmitCancerType[,1]) == FALSE)   ### Omit Cancer type from covariates 
      {
        T1 = tryCatch( {mod = lm(Pheno[,as.character(LIST_PHENO[j,1])]    ~   GENO_PATH[,PATH[i]] +  Pheno[,"Age.Diagnosis"] + Pheno[,"Cancer.Type"] + Pheno[,"Curated.Imputed.Gender"] + Pheno[,"PC.1"] +  Pheno[,"PC.2"] +  Pheno[,"PC.3"] +  Pheno[,"PC.4"]+  Pheno[,"PC.5"] + Pheno[,"PC.6"] +  Pheno[,"PC.7"]) }, warning = function(w) {return("WARNING")})
      } else {
              T1 = tryCatch( {mod = lm(Pheno[,as.character(LIST_PHENO[j,1])]    ~   GENO_PATH[,PATH[i]] + Pheno[,"Age.Diagnosis"]  + Pheno[,"Curated.Imputed.Gender"] + Pheno[,"PC.1"] +  Pheno[,"PC.2"] +  Pheno[,"PC.3"] +  Pheno[,"PC.4"]+  Pheno[,"PC.5"] + Pheno[,"PC.6"] +  Pheno[,"PC.7"]) }, warning = function(w) {return("WARNING")})
             }
    } else {
            if(  as.character(LIST_PHENO[j,1]) %in% as.character(ToOmitCancerType[,1]) == FALSE)   ### Omit Cancer type from covariates 
             {
              T1 = tryCatch( {mod = glm(Pheno[,as.character(LIST_PHENO[j,1])]    ~   GENO_PATH[,PATH[i]] + Pheno[,"Age.Diagnosis"] + Pheno[,"Cancer.Type"] + Pheno[,"Curated.Imputed.Gender"] + Pheno[,"PC.1"] +  Pheno[,"PC.2"] +  Pheno[,"PC.3"] +  Pheno[,"PC.4"]+  Pheno[,"PC.5"] + Pheno[,"PC.6"] +  Pheno[,"PC.7"],family="binomial") }, warning = function(w) {return("WARNING")})
             } else {
                     T1 = tryCatch( {mod = glm(Pheno[,as.character(LIST_PHENO[j,1])]    ~   GENO_PATH[,PATH[i]] + Pheno[,"Age.Diagnosis"]  + Pheno[,"Curated.Imputed.Gender"] + Pheno[,"PC.1"] +  Pheno[,"PC.2"] +  Pheno[,"PC.3"] +  Pheno[,"PC.4"]+  Pheno[,"PC.5"] + Pheno[,"PC.6"] +  Pheno[,"PC.7"],family="binomial") }, warning = function(w) {return("WARNING")})
                    }
           }
   TEMP = cbind(Pheno[,as.character(LIST_PHENO[j,1])]    ,  GENO_PATH[,PATH[i]]) ; TEMP = TEMP[!is.na(TEMP[,1]) & !is.na(TEMP[,2]) ,] ; CT[i] = length(TEMP[TEMP[,2]>0,2])
   S = summary(mod)
   N = length(Pheno[,as.character(LIST_PHENO[j,1])]) - length(S$na.action)
   RES[K, c(1,2,3)] = c( PATH[i]  , as.character(LIST_PATH[i,2]) ,as.character(LIST_PHENO[j,1])  )
   RES[K, c(4:6)] = c(CT[i],MAF[i],N)
   if ( CT[i] == 0 | length(T1)==1 ) 
    {
     RES[K, c(7:8)] = c("NA","NA")
    } else {
            RES[K, c(7:8)] = S$coefficients[2,c(1,4)]
            }
   write.table(t(RES[K,-c(5)]), "PathwayResults.txt",quote=F,row.names=F,col.names=F,append=TRUE)   ### Result of each pathway will be appended to the output. Result header is as follows: PathwayName Type PhenotypeName NumberOfMutations SampleSize Beta Pvalue
    K= K+1
    print(K)
    }
}
#### 

##### This is to run the association analysis between traits and the gene level of rare variants. Similar to the code of pathway-level association test, but considering gene-level instead.
MAF = vector("numeric")
CT = vector("numeric")

for (i in 1:Ngene)
 {
  MAF = c(MAF , nrow(GENO[GENO[,GENES[i]]>0 & !is.na(GENO[,GENES[i]]) & !is.na(Pheno[,"Cancer.Type"]), ])/nrow(GENO[GENO[,GENES[i]]>=0 & !is.na(GENO[,GENES[i]])& !is.na(Pheno[,"Cancer.Type"]), ]))
  CT = c(CT , nrow(GENO[GENO[,GENES[i]]>0 & !is.na(GENO[,GENES[i]]) & !is.na(Pheno[,"Cancer.Type"]), ]))
 }


RES = matrix(-9, nc=7, nr=Ngene*Npheno)
K=1
for (i in 1:Ngene)
{
for (j in 1:Npheno)
{
if (as.character(LIST_PHENO[j,1]) %in% as.character(Binary[,1]) == FALSE)   ### Perform Linear. Otherwise Logistic
{
  if(  as.character(LIST_PHENO[j,1]) %in% as.character(ToOmitCancerType[,1]) == FALSE)   ### Omit Cancer type from covariates 
  {
  T1 = tryCatch( {mod = lm(Pheno[,as.character(LIST_PHENO[j,1])]    ~   GENO[,GENES[i]] +  Pheno[,"Age.Diagnosis"] + Pheno[,"Cancer.Type"] + Pheno[,"Curated.Imputed.Gender"] + Pheno[,"PC.1"] +  Pheno[,"PC.2"] +  Pheno[,"PC.3"] +  Pheno[,"PC.4"]+  Pheno[,"PC.5"] + Pheno[,"PC.6"] +  Pheno[,"PC.7"]) }, warning = function(w) {return("WARNING")})
  } else {
  T1 = tryCatch( {mod = lm(Pheno[,as.character(LIST_PHENO[j,1])]    ~   GENO[,GENES[i]] + Pheno[,"Age.Diagnosis"]  + Pheno[,"Curated.Imputed.Gender"] + Pheno[,"PC.1"] +  Pheno[,"PC.2"] +  Pheno[,"PC.3"] +  Pheno[,"PC.4"]+  Pheno[,"PC.5"] + Pheno[,"PC.6"] +  Pheno[,"PC.7"]) }, warning = function(w) {return("WARNING")})
}} else {
if(  as.character(LIST_PHENO[j,1]) %in% as.character(ToOmitCancerType[,1]) == FALSE)   ### Omit Cancer type from covariates 
{
T1 = tryCatch( {mod = glm(Pheno[,as.character(LIST_PHENO[j,1])]    ~   GENO[,GENES[i]] + Pheno[,"Age.Diagnosis"] + Pheno[,"Cancer.Type"] + Pheno[,"Curated.Imputed.Gender"] + Pheno[,"PC.1"] +  Pheno[,"PC.2"] +  Pheno[,"PC.3"] +  Pheno[,"PC.4"]+  Pheno[,"PC.5"] + Pheno[,"PC.6"] +  Pheno[,"PC.7"],family="binomial") }, warning = function(w) {return("WARNING")})
} else {
T1 = tryCatch( {mod = glm(Pheno[,as.character(LIST_PHENO[j,1])]    ~   GENO[,GENES[i]] + Pheno[,"Age.Diagnosis"]  + Pheno[,"Curated.Imputed.Gender"] + Pheno[,"PC.1"] +  Pheno[,"PC.2"] +  Pheno[,"PC.3"] +  Pheno[,"PC.4"]+  Pheno[,"PC.5"] + Pheno[,"PC.6"] +  Pheno[,"PC.7"],family="binomial")  }, warning = function(w) {return("WARNING")})
}
}
S = summary(mod)
N = length(Pheno[,as.character(LIST_PHENO[j,1])]) - length(S$na.action)
RES[K, c(1,2)] = c( GENES[i]  , as.character(LIST_PHENO[j,1])  )
RES[K, c(3:5)] = c(CT[i],MAF[i],N)
if ( CT[i] == 0 | length(T1) == 1)
{
RES[K, c(6:7)] = c("NA","NA")
} else {
RES[K, c(6:7)] = S$coefficients[2,c(1,4)]
}
write.table(t(RES[K,-c(4)]), "GeneResults.txt",quote=F,row.names=F,col.names=F,append=TRUE)    ## Remove 4th col. 
K= K+1
print(K)
}
}

