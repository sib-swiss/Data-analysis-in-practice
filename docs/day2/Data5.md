## Learning outcomes

**After having completed this chapter you will be able to:**

- Analyse real world data
- Obtain biological insights into hormone action
- Answer a biological question
- Analyse (simple) NGS data
- Find the right statistical tools to use
- Interpret the results
- Report results

## Exercises

### Hormone action

We will work with the dataset from this link [Next-generation transcriptome sequencing of the premenopausal breast epithelium using specimens from a normal human breast tissue bank](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4053088/) a paper published in 2014 from Ivanesa Pardo _et_ _al_. published in Breast Cancer Research. 

The normal human breast is under the influence of many endogenous (from the body) hormones as well as exogenous hormones (for instance from contraception). The authors wanted to study the changes in the messanger RNA of the normal breast epithelium induced by hormones, by comparing normal (healthy) breast tissue from 20 premenopausal donors.

20 biopsies from pre-menopausal women were taken, and Next-generation whole transcriptome sequencing (RNA-Seq) was performed to measure mRNA expression in those biopsies.  At the day of the biopsy, women were asked to fill a questionnaire about their menstrual cycle (day, phase) and type of contraception.




To do :

- Download the data from the website (or load the files from the course page) (EXCEL sheet with tabs corresponding to meta-data and tabs corresponding to raw expression)

[Download exercises](../../assets/exercises/Data5.zip){: .md-button }

- Observe the data, is it numeric ?
- Prepare the table, remove genes with sum of the row less or equal to 20
- Select only patients that are not taking contraceptives (L=Luteal and
F=Follicular, not HC=Hormone Contraceptives)
- Perform a dimension reduction using principal component analysis
- What do you observe ?
- Sequencing depth might be different from sample to sample. Convert the data to log counts per million (this is recommended for sequencing data)
- Do a loop of t.test to find which genes are significantly differentially expressed between Luteal
and Follicular phase
- How many significant genes do you find ? Did you adjust for multiple testing ?
- Again perform a dimension reduction using principal component
analysis. What do you observe now ? Are there any clear groups ?
- Check in the paper (in the analysis of the sequencing): were there any batches ?
- Include batches into a linear model to infer differential expression between menstrual phase groups (L=Luteal, F= Follicular)
- What do you observe ?


Bonus: Find out which genes are correlated with Estradiol concentration in blood.
