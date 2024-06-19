# Data-Science-Inference-and-Modeling
Data Science: Inference and Modeling Harvard Course


# Statistical Properties of Sample Proportion


### Expected Value

Using the properties of expected value, the expected value of the sum $`(N\bar{X})`$ is (N) times the average of the urn, (p). Dividing by the non-random constant (N) gives us the expected value of the average $`(\bar{X})`$:

$`[ E(\bar{X}) = p ]`$

### Standard Error

We can also determine the standard error. The standard error of the sum is $`(\sqrt{N} \times)`$ the standard deviation of the urn. The formula for the standard deviation of the urn is:
$`[ \sqrt{p(1 - p)}]`$


Since we are dividing the sum by (N), the standard error of the average $`(\bar{X})`$ is:
$`[ SE(\bar{X}) = \frac{\sqrt{p(1 - p)}}{\sqrt{N}} ]`$

One problem is that we do not know  p, so we can’t compute the standard error. However, for illustrative purposes, let’s assume that  p=0.51and make a plot of the standard error versus the sample size  N:
![image](https://github.com/Zyadsowilam/Data-Science-Inference-and-Modeling/assets/96208685/48357231-5116-4899-a0d3-763fc57ed674)



## Central Limit Theorem (CLT)

The Central Limit Theorem tells us that the distribution function for a sum of independent draws is approximately normal. Since \(\bar{X}\) is the average of independent draws, it also follows an approximately normal distribution.

## Distribution of  $`(\bar{X})`$

In summary,  $`(\bar{X})`$ has an approximately normal distribution with:
- Expected value: ( p )
- Standard error:  $`( \sqrt{\frac{p(1 - p)}{N}} )`$

## Probability Calculation

Suppose we want to find the probability that $`(\bar{X})`$ is within 1% of \( p \). Mathematically, we are interested in:

$`[ \Pr\left( | \bar{X} - p | \leq 0.01 \right) ] `$

This can be rewritten as:

 $`[ \Pr\left( \bar{X} \leq p + 0.01 \right) - \Pr\left( \bar{X} \leq p - 0.01 \right) ]`$

To answer this question, we can use the standard normal distribution. Define ( Z ) as:

 $`[ Z = \frac{\bar{X} - p}{\sqrt{\frac{p(1 - p)}{N}}} ]`$

Then, the probability can be calculated as:

 $`[ \Pr\left( Z \leq 0.01 \cdot \sqrt{\frac{N}{\bar{X}(1 - \bar{X})}} \right) - \Pr\left( Z \leq -0.01 \cdot \sqrt{\frac{N}{\bar{X}(1 - \bar{X})}} \right) ]`$

### Estimation of Standard Error

Since ( p ) is unknown, we estimate the standard error using  $`(\bar{X})`$ itself:

 $`[ \hat{SE}(\bar{X}) = \sqrt{\frac{\bar{X}(1 - \bar{X})}{N}} ]`$



### Monte Carlo Simulation using Mathematical Equations

Monte Carlo simulations are computational techniques that use random sampling to estimate complex mathematical models or systems. Here, we'll describe a Monte Carlo simulation to estimate the probability that a random variable \( X \) falls within a specified range ([a, b]).

#### Mathematical Model

Consider ( X ) as a random variable following a normal distribution $` ( X \sim \mathcal{N}(\mu, \sigma^2) )  `$, where:
-   $`( \mu )`$is the mean of the distribution,
-   $`( \sigma ) `$is the standard deviation of the distribution.

We aim to estimate   $`( \Pr(a \leq X \leq b) )`$, the probability that ( X ) lies within the interval ([a, b]).

#### Monte Carlo Simulation Steps

1. **Generate Random Samples**: Generate ( N ) independent random samples $`( X_i \sim \mathcal{N}(\mu, \sigma^2) )`$.

2. **Evaluate Condition**: For each sample  $`( X_i ) `$, check if $`( a \leq X_i \leq b )`$.

3. **Calculate Probability**: Estimate the probability by averaging the indicator function over ( N ) samples:
    $` [
   \hat{P}(a \leq X \leq b) = \frac{1}{N} \sum_{i=1}^{N} I(a \leq X_i \leq b)
   ]`$
   where   $`( I(\cdot) ) `$ is the indicator function that returns ( 1 ) if the condition is true and ( 0 ) otherwise.

A histogram and qq-plot confirm that the normal approximation is accurate as well:

![image](https://github.com/Zyadsowilam/Data-Science-Inference-and-Modeling/assets/96208685/fdb1499e-373c-4fa1-b769-ad6ac66854fd)

![image](https://github.com/Zyadsowilam/Data-Science-Inference-and-Modeling/assets/96208685/d8efbd60-6f67-43af-aafb-d2739836151c)

### Spread
The spread between two outcomes with probabilities  p and 1-p is 2p-1.
For our 25 item sample above, our estimate  p is .48 with margin of error .20 and our estimate of the spread is 0.04 with margin of error .40
### Bias: Why Not Run a Very Large Poll?
For realistic values of  p, say from 0.35 to 0.65, if we run a very large poll with 100,000 people, theory tells us that we would predict the election perfectly since the largest possible margin of error is around 0.3%
![image](https://github.com/Zyadsowilam/Data-Science-Inference-and-Modeling/assets/96208685/3c8714e6-e7b1-4cd2-98d5-65b2b711fa21)
One reason is that running such a poll is very expensive. Another possibly more important reason is that theory has its limitations. Polling is much more complicated than picking beads from an urn.
#  Confidence intervals
![image](https://github.com/Zyadsowilam/Data-Science-Inference-and-Modeling/assets/96208685/75a84864-a2d3-4924-9ab5-d9bfcb31c21b)


1. **Creating Confidence Intervals**:
    - When we repeatedly sample and create intervals, we observe random variation.
    - To determine the probability that the interval includes ( p ), we need to compute:
$`[
      \text{Pr}\left( \bar{X} - 1.96 \cdot \widehat{\text{SE}}(\bar{X}) \leq p \leq \bar{X} + 1.96 \cdot \widehat{\text{SE}}(\bar{X}) \right)
      ] `$ 
      

2. **Simplifying the Probability Expression**:
    - By subtracting  $`( \bar{X} ) `$ and dividing by $`\widehat{\text{SE}}(\bar{X}) ) `$ in all parts of the equation, we simplify it to:
$` [
      \text{Pr}\left( -1.96 \leq \frac{\bar{X} - p}{\widehat{\text{SE}}(\bar{X})} \leq 1.96 \right)
      ] `$
      

3. **Standard Normal Distribution**:
    - The term in the middle,$`( \frac{\bar{X} - p}{\widehat{\text{SE}}(\bar{X})} ) `$ , is approximately a normal random variable with expected value 0 and standard error 1. We denote this as  Z .
    - Therefore, we have:
    - $` [
      \text{Pr}\left( -1.96 \leq Z \leq 1.96 \right)
      ] `$
     
    - This shows that there is a 95% probability the interval includes ( p ).

4. **Extending to Other Probabilities**:
    - For a larger probability, say 99%, we need to determine ( z ) such that:
$` [
      \text{Pr}\left( -z \leq Z \leq z \right) = 0.99
      ] `$
     
    - By definition, $`( \text{pnorm}(\text{qnorm}(0.995)) ) `$  is 0.995 and by symmetry, $`( \text{pnorm}(1 - \text{qnorm}(0.995)) )  `$ is 1 - 0.995.
    - Thus,$` ( \text{Pr}\left( -\text{qnorm}(0.995) \leq Z \leq \text{qnorm}(0.995) \right) = 0.99 ) `$.

5. **Generalizing for Any Probability**:
    - This approach works for any probability, not just 0.95 and 0.99.
    - In statistics, this is often written as $` \ 1 - \alpha ) `$.
    - We can obtain ( z ) for the equation above using$`( z = \text{qnorm}(1 - \alpha / 2) ) `$  because:
$` [
      1 - \alpha / 2 - \alpha / 2 = 1 - \alpha
      ] `$
     
    - For example, for $`( \alpha = 0.05 ) `$ , $`( 1 - \alpha / 2 = 0.975 )  `$ and we get the 1.96 value used earlier.
#  p-Values
The p-value is the probability of observing a value as extreme or more extreme than the result given that the null hypothesis is true.

In the context of the normal distribution, this refers to the probability of observing a Z-score whose absolute value is as high or higher than the Z-score of interest.
Suppose we want to find the p-value of an observation 2 standard deviations larger than the mean.raphically, the p-value gives the probability of an observation that's at least as far away from the mean or further.
This plot shows a standard normal distribution (centered at Z=0  with a standard deviation of 1). The shaded tails are the region of the graph that are 2 standard deviations or more away from the mean.
![image](https://github.com/Zyadsowilam/Data-Science-Inference-and-Modeling/assets/96208685/d859eb70-c743-48ab-a013-f2d51318e276)
The right tail can be found with 1-pnorm(2). We want to have both tails, though, because we want to find the probability of any observation as far away from the mean or farther, in either direction. (This is what's meant by a two-tailed p-value.) Because the distribution is symmetrical, the right and left tails are the same size and we know that our desired value is just 2*(1-pnorm(2)).o find p-values for a given z-score z in a normal distribution with mean mu and standard deviation sigma, use 2*(1-pnorm(z, mu, sigma)) instead.

# Tasks
### Task 1
Write a line of code that calculates the standard error se of a sample average when you poll 25 people in the population. Generate a sequence of 100 proportions of Democrats p that vary from 0 (no Democrats) to 1 (all Democrats).

Plot se versus p for the 100 different proportions.
### Task 2
Using the same code as in the previous exercise, create a for-loop that generates three plots of p versus se when the sample sizes equal 
N=25, N=100, and N=1000
### task 3
Say actual proportion of Democratic voters is p=0.45 in this case the republican party is winning by a relatively large margin of d=-0.1 or a 10% margin of victory what is standard error of the spread 2 *mean -1
In this case
Use the sqrt func to calculate the standard error of spread 2 *mean -1
### task 4
write a func called take_sample that takes the proportion of Democrats p and the sample size of N as arguments and return the sample average democrats (1) and Republicans (0). calculate the average if the proportion of Democrats equals 0.45 and sample size is 100. Define a func called take_sample that take sp and N as arguments use the sample func as the first statement in your function to sample N elements from a vector of options where democrats are assigned the value 1 and regulations are assigned the value 0 in that order
Use the mean function as the second statement in your function to find the average value of the random sample
### task 5
Assume proportion of Democrats in the population p equals 0.45 and that your sample size N is 100 polled voters. THE taje_sample function you defined previously generate our estimate mean bar x. Replicate the random sampling 10000 time and calculate p- bar x(mean) for each random sample save these differences as a vector called errors find average errors and plot a histogram of the distribution.the function take_sample that.you defined in previous exercise has been already run for you. Use the replicate function to replicate subtracting the result of take_sample from value of p 10000 times use the mean func to calculate the average differences between the sample average and actual value of p
### task 6
The error p- bar x (mean) is a random variable. In practice, the error is not observed because we don not know the actual proportion of Democratic voters,p however we can describe the size of the error by constructing a simulation. What is the average size of the error if we define the size by taking the absolute value of| p- bar x|? Use the sample code to generate errors a vector of | p- bar x| calculate the absolute value of errors using abs func calculate the average of these values using the mean function
### task 7
The standard error is related to the typical size of the error we make when predicting. We say size because as we just saw the errors are centured around 0 in that sense the typical error is 0 for mathematical reason related to centeral limit theorem we actually use the standard deviation of errors rather than the average of the absolute values.as we have discussed the standard error is square root of the average distance ( bar x -p)^2 the standard deviation is defined as the square root of the distance squared calculate the standard deviation of spread. Use the sample code to generate errors a vector of |p- bar x| use ^2 to square distance. Calculate the average squared distance using mean func. Calculate the square root of these values using sqrt function
### task 8
The theory we just learned tells us what this standard deviation is going to be is the standard error of bar x . Estimate the standard error given an expected value .45 and a sample size of 100. Calculate the standard error using sqrt func
### task 9
In practice we don't know p so we construct an estimate of the theoretical prediction based by plugging in bar x for p calculate the standard error of the estimate SE hat( bar x). Simple poll x using sample func . When using the sample func create a vector using c() that contains all possible polling options where 1 indicate a democratic voter and 0 indicate republican voter. When using the sample func use replace= TRUE within the sample func to indicate that sampling from vector should occur with replacement. When using sample func use prob= within the sample func to indicate the probabilities of selecting either element 0 or 1 within vector possiblities use the mean func to calculate the average of the stimulated poll x_bar. Calculate the standard error of x_bar using sqrt function and print results
### task 10
Make a qq-plot of the errors you generated previously to see if the follow a normal distribution. Run The supplied code use the qqnorm func to produce qq-plot of errors and use the qqline func to plot a line showing a normal distribution
### task 11
If p=0.5 and N=100 use the central limit theorem to estimate the prop that x_hat > 0.5 use pnorm to define the prob that a value will be greater than 0.5
### task 12
Assume you are in a practical situation and you don't know p take a sample size of N = 100 and obtain a sample average of bar x =0.51 what is the CT approximation for the probability that your error size is equal or larger than 0.01 calculate the standard error of the sample average using the sqrt func and use pnorm twice to define the probabilities that a value will be less than -0.01 and greater than 0.01 and combine these results to calculate the probability that the error size will be 0.01 or larger
###task 13
for the following exercise we will use actual poll data from 2016 election.The exercise will contain pre-loaded data from the dslabs package.libirary(dslabs) data("polls_us_election_2016")
We will use all the national polls that ended within a few weeks before the election. Assume there are only two candidates and construct 95% confidence interval for the election night proportion p. Use filter to subtract the data set for the poll data you want..include polls that ended on or after 31,2016 enddadte only include polls that took place in the united states. Call this filtered object detector polls.use nrow to make sure you created a filtered object polls that contains the correct number of rows. Extract the sample size N from the first poll in your sunset object polls. Convert percentage of Clinton voters (rawpoll_clinton) from the first poll in polls to a proportion, x_hat print this value to the console m find the standard error of x_hat given N. Print this result.calculate the 95% confidence interval of this estimate using qmorm function. Save lower and upper confidence intervals as an object called ci. Save lower confidence interval first
### task 14
Create a new object called pollster_results that contains the pollster's name the end date of the poll the proportion of voters who declared vote for Clinton the standard error of this estimate and the lower and upper bounds of the confidence intervals for the estimate.use the mutate func to define four new col X_hat se_hat lower upper. temporarily add these to the polls object that has already been loaded for you.
in the X_hat column convert the raw poll results for Clinton to a proportion. In the se_hat column calculate the standard error of X_hatbfor each poll using sqrt func. In the lower column calculate the lower bond of the 95% confidence using qnorm and in the upper column calculate the upper bond 95% confidence interval using qnorm . Use select func to select the column polls to save to the new object pollster_results
### task 15
The finally tally for the popular vote was Clinton 48.2% and Trump 46.1% add a column called hit to pollster_results that states if the confidence interval include the true proportion p= 0.428 or not. What proportion of confidence intervals included p?
### task 16
A much smaller proportion of the polls than expected produce confidence intervals containing p. Notice that most polls that fail to include p are underestimating. The rationale for this main candidates on election day. In this case it's more information to estimate the spread or the difference between the proportion of two candidates d or 0.482-0.461=0.021 for this election. Assume that there are only two parties and thar d =2p-1 construct a 95% confidence interval for difference in proportions on election night.
### task 17
Create a new object called pollster_results that contains the pollster's name, the end date of the poll, the difference in the proportion of voters who declared a vote either, and the lower and upper bounds of the confidence interval for the estimate.
### task 18
What proportion of confidence intervals for the difference between the proportion of voters included
, the actual difference in election day?

Use the mutate function to define a new variable within pollster_results called hit.
Use logical expressions to determine if each values in lower and upper span the actual difference in proportions of voters.
Use the mean function to determine the average value in hit and summarize the results using summarize.
Save the result of your entire line of code as an object called avg_hit
### task 19
Comparing to actual results by pollster
Although the proportion of confidence intervals that include the actual difference between the proportion of voters increases substantially, it is still lower that 0.95. In the next chapter, we learn the reason for this.

To motivate our next exercises, calculate the difference between each poll's estimate
and the actual
. Stratify this difference, or error, by pollster in a plot.
### task 20
pollster - multiple polls
Remake the plot you made for the previous exercise, but only for pollsters that took five or more polls.

You can use dplyr tools group_by and n to group data by a variable of interest and then count the number of observations in the groups. The function filter filters data piped into it by your specified condition.

For example:

data %>% group_by(variable_for_grouping)
%>% filter(n() >= 5)
