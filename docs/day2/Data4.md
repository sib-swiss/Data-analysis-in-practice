## Learning outcomes

**After having completed this chapter you will be able to:**

- Simulate data
- Understand what increases the number of significant genes
- Identify and understand different types of probability distributions (normal, uniform, etc).
- Find the right statistical tool
- Interpret the results
- Report results

## Exercises

### Microarray simulation

This will be your (maybe!) first steps into simulating data. Suppose you want to learn how to test differences between WT and KO mice using microarray data, and you need to simulate data that ressembles. You are going to generate, in a simple way, simulated microarray data for WT and KO mice.

What we know about this type of data : 

- Microarray data are supposedly normally distributed.
- Microarray data roughly measure around 10'000 genes
- We assume that, among all these genes, 100 are taken with a difference of one in mean between WT and KO mice.
- In our experiment we will have 10 WT mice and 10 KO mice

Now, we ask to fill the following tasks :

- Simulate a dataset with the above characteristics
- Explore and describe the dataset you generated 
- Plot it!
- Check if the simulated data is normally distributed, as expected
- Find out how many significantly differentially expressed genes there are, and compare them to the
100 true significant genes.
- Change the number of mice to 10 WT and 20 KO and repeat the
exercise 
- Change the difference in means between the 100 true significant genes, and redo the exercise. How
were the results affected ?

Bonus: Create a plot for your data in which you show the variance on the _x_ axis and on the _y_ axis the percentage of true positives found (significant genes that are true significant) and the percentage of true negatives
(non significant genes that are true non significant). This will enable you to understand how variance affects the true positives and the true negatives.

