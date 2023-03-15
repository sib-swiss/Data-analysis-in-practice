## Learning outcomes

**After having completed this chapter you will be able to:**

- Understand real world data
- Obtain biological insights into hormone action
- Answer a biological question
- First steps into NGS data 
- Find the right statistical tools to use
- Interpret the results
- Report results

## Exercises

### Hormone action

We will work with the dataset from this link https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4053088/ a paper published in 2014 from Ivanesa Pardo et al. published in Breast Cancer Research. 

The normal human breast is under the influence of many endogenous (from the body) hormones as well as exogenous hormones (for instance from contraception)

Using normal (healthy) breast tissue from 20 premenopausal donors, the changes in the mRNA of the normal breast epithelium was studied.

Women answered a full questionary at the day of the biopsy, such as menstrual cycle day and hormonal contraception with information of the type of contraception.

Next-generation whole transcriptome sequencing (RNA-Seq) was used to study mRNA expression in those biopsies.

20 biopsies from pre-menopausal women with indication of phase of the menstrual cycle (follicular or luteal phase) or hormonal contraception (corresponding to 9, 5 and 6 samples respectively)

To do :

- Download the data from the website (or load the files from the course page) (EXCEL sheet with tabs corresponding to meta-data and tabs corresponding to raw expression)

[Download exercises](../../assets/pdf/Data5.zip){: .md-button }

- Observe the data, is it numeric ?
- Prepare the table, remove genes with sum of the row less or equal to 20.
- Select only patients that are not taking contraceptives (L=Luteal and
F=Follicular, not HC=Hormone Contraceptives)
- Perform a dimension reduction using principal component analysis.
- What do you observe?
- Sequencing depth might be different from sample to sample. Convert the data to log counts per million (this is recommended for sequencing data)
- Do a loop of t.test to find which genes are significant between Luteal
and Follicular phase.
- How many significant genes ? Did you adjust for multiple testing ?
Again perform a dimension reduction using principal component
analysis.
- What do you observe now ? Are there any clear groups?
- Check inside the paper, in the analysis of the sequencing. Were there any batches?
- Include batches into a linear model to infer differential expression between menstrual phase groups (L=Luteal, F= Follicular)
- What do you observe?


Bonus: Find out which genes are correlated with Estradiol
concentration in blood.
