## Learning outcomes

**After having completed this chapter you will be able to:**

- Load data into R
- Cleaning data
- Get some background information on qPCR
- Explain the basic structure of the object and its problems
- Answer a biological question 
- Find the right statistical tool
- Interpret the results
- In a second step you will learn how to generate a reproducible report

## Material

[Download the exercise](../../assets/exercises/qPCR.xslx){: .md-button }
[:fontawesome-solid-file-pdf: Download the background help](../../assets/pdf/qPCR_dataset.pdf){: .md-button }

## Exercises

### qPCR

A scientist comes in with measure of gene expression in mice

You understood that there are two variables of interest:
* Genotype: WT/KO mice for the MAF1 gene
* Treatment: either normal food (control) or fasting (treated)

The scientist is interested in the expression of AKT1 and has gathered 
- 3 biological replicates for each group
- 3 technical replicates for each biological replicate
 
What we would like to know is

* In MAF1 WT mice, is there a difference in AKT
expression depending on the treatment ?

* Does the effect of the treatment (control/treated)
depend on the MAF genotype (WT/KO) ?

If you perform the two analysis, you may get
results that look contradictory. Can you explain why ?


??? done ideas on how to start
	- Start by opening a new script in R 
	- Write down the problem
	- Open the file (it is EXCEL, how can you open it in R?)
	- Check the columns and see if cleaning is needed, i.e. if there are any problems
	- There is information in the file that can be used for normalizing the data, using the expression of GAPDH ("housekeeping gene"). You do not have to perform this step (you can do it as a second, optional, step if you want)
	- Write down biological hypothesis 
	- Write down statistical hypothesis 
	- Write down (or search for) assumptions of the statistical test
	
About the file 

* sample.ID: a unique ID that identifies each biological
replicate
* group: the experimental group (WT/KO and C/T)
* gene: the gene measured
* ct: the measured value (number of cycles)
Additional calculations are included in the file (but should not
be loaded into R):
* dct: the difference between the gene of interest and the
housekeeping gene
* average dct: the average dct over the technical replicates
for a given biological replicate
* There is also a calculation of ddct and the log fold change
( 2^(-ddct) )

 