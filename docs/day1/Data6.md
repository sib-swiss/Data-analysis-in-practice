## Learning outcomes

**After having completed this chapter you will be able to:**

- Load data into R
- Explore some TCGA data to perform Kaplan-Meier curves
- Understand the statistical concepts of KM curves

## Exercises

### TCGA

#### Background

TCGA stands for the cancer genome atlas. Choose your favourite cancer and download some clinical information and some genetical information on those patients (you can try for instance Cervix cancer CESC). 

??? Hint
	Download and use the TCGAbiolinks package to be able to retrieve more easily data.
	 
```r
query <- GDCquery(project = "TCGA-CESC", 
                  data.category = "Gene expression",
                  data.type = "Gene expression quantification",
                  experimental.strategy = "RNA-Seq",
                  platform = "Illumina HiSeq",
                  file.type = "results", 
                  legacy = TRUE)

# Download a list of barcodes with platform IlluminaHiSeq_RNASeqV2
GDCdownload(query)

#prepare table
?GDCprepare

CESCrnaseqSE <- GDCprepare(query,save=TRUE,save.filename="object_tcga_cesc")
head(CESCrnaseqSE)

library(SummarizedExperiment)

CESCMatrix <- assay(CESCrnaseqSE,"raw_count")

## retrieve clinical data
clin.cesc <- GDCquery_clinic("TCGA-CESC", "clinical")
```	 
#### Questions

1. Inspect the dataset
2. Choose 2 columns of quantiative measures (or change a qualitatif measure into a quantitatif measure) and see if there is a significant association between those variables.
3. Formulate point 2 into a biological null hypothesis and then into a statistical one
4. Still using TCGAbiolinks package try to assess if the chosen meta data columns are associated with survival
5. TCGAbiolinks provides a framework to do the survival curves, what if you have not TCGA data, how would you have written it ?


??? done "Hint"
	Check the code of the function, do you know how ?
	Hint of the hint: write the function in R without the parenthesis.

6. Bonus : Generate a signature of 10 genes (can choose them randomly) and check if this signature is associated with outcome