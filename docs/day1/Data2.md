## Learning outcomes

**After having completed this chapter you will be able to:**

- Load data into R
- Cleaning data if needed
- Get some background information on the data
- Explain the basic structure of the object and its problems
- Answer a biological question 
- Find the right statistical tool
- Interpret the results
- Report results

## Exercises

### Birth weight

#### Background

We would like you to load the data from the MASS package called birthwt. One can have a look at the help to understand the loaded object

The birthwt data frame has 189 rows and 10 columns. The data were collectedat Baystate Medical Center, Springfield, Mass during 1986.
This data frame contains the following columns:
- low: indicator of birth weight less than 2.5 kg
- age: mother's age in years- lwt: mother's weight in pounds at last menstrual period- race: mother's race (1 = white, 2 = black, 3 = other)- smoke: smoking status during pregnancy- ptl: number of previous premature labours- ht: history of hypertension- ui: presence of uterine irritability- ftv: number of physician visits during the first trimester- bwt: birth weight in grams

#### Questions

1. Inspect the dataset2. Does the mother's age allow us to predict the birth weight ?3. Check the assumptions of the model you used in 2.4. Can you better predict birth weight using other variables in the dataset, inaddition to mother?s age ?5. Which set of variables in the dataset predict best birth weight ?

In order to help you starting try to translate those question to a more statistical framework

??? Answer
	1. Inspect the dataset	2. Apply a simple linear regression model to predict birth weight in grams using mother?s age	3. Check the assumptions of the linear regression model	4. Apply a multiple linear regression model to predict birth weight in grams using multiple predictors	5. Perform model selection
	
If needed and you forgot about all these, here is a little quick refreshing of linear models

[:fontawesome-solid-file-pdf: Download the presentation](../assets/pdf/AS22_1.pdf){: .md-button }
