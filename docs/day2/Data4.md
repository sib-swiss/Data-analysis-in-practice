## Learning outcomes

**After having completed this chapter you will be able to:**

- First steps into simulations of data
- Understand what increases the number of significant genes
- Understand well normal distribution, uniform distribution etc.
- Find the right statistical tool
- Interpret the results
- Report results

## Exercises

### Microarray simulation

This will be your (maybe!) first steps into simulating data. Let us assume you want to well understand the differences between WT and KO mice in measures of microarray data so you wish to simulate data that ressembles this data. You are going to generate in a simple way of simulated microarray data for WT and KO mice.

What we know about this type of data : 
- Microarray data are supposedly normally distributed.- Microarray data roughly measure around 10'000 genes
- For the simulation we will assume that among those 100 are taken with a difference of one in mean between WT and KO mice.- In our experiment we will have 10 WT mice and 10 KO mice, so this is what we wish to simulate.

Now, we ask to fill the following tasks :

- Generate a dataset modeling that problem.- Explore and describe the dataset. 
- Plot it!- Check if the data is normally distributed as expected.- Find out how many significant genes there are, compare them to the100 true significant genes.- Change the number of mice to 10 WT and 20 KO and repeat theexercise. 
- Change the difference in means and redo the exercise. Howwere the results affected ?

Bonus: Simulate data such that on the x axis you plot the variance andthe y axis the percentage of true positives found (significant genesthat are true significant genes) and the percentage of true negatives(non significant genes that are non significant). This will enable you to understand how variance affects the true positives and the true negatives

