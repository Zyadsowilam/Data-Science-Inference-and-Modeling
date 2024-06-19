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


## Data-driven models

The model treats the data as if it were drawn from an urn containing continuous values between -1 and 1. This differs from a traditional urn model with binary outcomes (0s and 1s). Here, the expected value of interest, denoted as ( d ), relates to the spread of the poll results.

## Parameters of Interest

In this urn model, two key parameters are of interest:

- **Expected Value (d)**: Represents the actual spread, defined as ( d = 2p - 1 ).
- **Standard Deviation $` ((\sigma))`$**: Reflects the variability across different pollsters and sampling variability from polling.

## Statistical Estimation

### Estimating ( d )

Given a sample $`( X_1, X_2, \ldots, X_N ) `$ drawn from the urn:
- The Central Limit Theorem (CLT) suggests that for a sufficiently large sample size ( N ), the sample average $` \bar{X}`$ approximates a normal distribution with expected value \( \mu \) and standard error \( \sigma / \sqrt{N} \).
- This allows construction of confidence intervals for ( d ).

### Estimating \( \sigma \)

- The standard deviation \( \sigma \) is unknown but can be estimated using the sample standard deviation ( s ).
- $`( s = \sqrt{\sum_{i=1}^{N} (X_i - \bar{X})^2 / (N-1)} ) `$ provides an estimate of$` ( \sigma ) `$ .
- Unlike the population standard deviation formula, we divide by ( N-1 ) to correct bias and obtain a better estimate ( s ) of $` ( \sigma )`$ .


![image](https://github.com/Zyadsowilam/Data-Science-Inference-and-Modeling/assets/96208685/f1b17fa1-32d5-4cf6-bc99-616b5d4b55ae)



## Bayes' Theorem Application

Bayes' theorem states:

 $`[ \text{Pr}(A \mid B) = \frac{\text{Pr}(B \mid A) \cdot \text{Pr}(A)}{\text{Pr}(B)} ]`$
In our case:

 $`[ \text{Pr}(D = 1 \mid +) = \frac{\text{Pr}(+ \mid D = 1) \cdot \text{Pr}(D = 1)}{\text{Pr}(+)} ] `$
Where:
-  $`( \text{Pr}(+ \mid D = 1) = 0.99 ) `$ (Probability of testing positive given the person has the disease).
-  $`( \text{Pr}(D = 1) = 0.00025 )`$ (Probability of having the disease).
-  $`( \text{Pr}(+) ) `$needs to be calculated using the law of total probability:
   $`[ \text{Pr}(+) = \text{Pr}(+ \mid D = 1) \cdot \text{Pr}(D = 1) + \text{Pr}(+ \mid D = 0) \cdot \text{Pr}(D = 0) ] `$
 $`  ( \text{Pr}(+ \mid D = 0) \) is 1% (0.01), and \( \text{Pr}(D = 0) = 1 - \text{Pr}(D = 1) = 0.99975 ) `$.

## Calculation

Plugging in the values:
 $`[ \text{Pr}(D = 1 \mid +) = \frac{0.99 \cdot 0.00025}{0.99 \cdot 0.00025 + 0.01 \cdot 0.99975} \approx 0.02 ]`$

## Interpretation

Despite the test's high accuracy of 99%, the probability of actually having the disease given a positive test result is only around 0.02. This discrepancy arises because the disease is very rare in the population, so even with a highly accurate test, the prior probability of having the disease is low.


## Bayesian Formulation

### Prior Distribution
 $`[ p \sim N(0.275, 0.027^2) ]`$

### Sampling Distribution
 $`[ Y \mid p \sim N(p, \sigma^2) ]`$

### Posterior Distribution

Using Bayes' theorem, the posterior distribution of \( p \) given the observed data ( Y = y ) is:

 $`[ p \mid Y = y \sim N\left( B\mu + (1-B)y, \sqrt{\frac{\sigma^2 \tau^2}{\sigma^2 + \tau^2}} \right) ]`$
Where:
-  $`( B = \frac{\sigma^2}{\sigma^2 + \tau^2} ) `$ is a weighting factor.
-  $`( \mu = 0.275 )`$ is the population average.
-  $`( \sigma^2 = \frac{p(1-p)}{N} ) `$is the variance due to batting luck.
-  $`( \tau = 0.027 )`$ is the standard deviation capturing variation in players' abilities.

### Interpretation

From the computed posterior distribution:
- The expected value $` ( E(p \mid Y = 0.450) ) `$suggests the player's true ability given the observed average.
- The standard error  $`( SE(p \mid y) ) `$provides a measure of uncertainty around this estimate.
- The 95% credible interval gives a range within which the true batting average is likely to fall, considering both prior knowledge and observed data.



### Bayesian Hierarchical Model

### Prior Distribution
We assume a hierarchical model similar to those used in other Bayesian applications:
$` [ d \sim N(\mu, \tau^2) ] `$

-  $` ( \mu ) `$ represents our best guess about ( d ) before any poll data is available.
- For simplicity, $` ( \mu = 0 ) `$, indicating a neutral stance without additional information favoring any candidate.
-  $` ( \tau = 0.035  ) `$is the standard deviation based on historical data, reflecting the typical spread in the popular vote results.

### Likelihood

$` [ \bar{X} \mid d \sim N(d, \sigma^2) ] `$
- $` ( \bar{X} )  `$represents the observed poll results, which are normally distributed around ( d ).
-  $` ( \sigma^2 ) `$captures variability due to sampling and pollster effects.

### Posterior Distribution

Using Bayes' theorem, the posterior distribution for ( d ) given the observed poll data $`( \bar{X} ) `$ can be computed. This posterior distribution informs us about the probability of ( d ) being greater than 0, indicating the likelihood of a candidate winning.

## Practical Application

Bayesian methods allow pollsters to update their forecasts as new polling data becomes available, combining prior beliefs (such as economic fundamentals) with observed data (poll results) to provide more nuanced and probabilistic election predictions.



## Single Pollster Model

### Observed Data Model

Suppose we collect data from a single pollster with a sample size N, observing several measurements of the spread  $` (X_1, \ldots, X_J)`$. The theory suggests these random variables have:

- **Expected value (d)**
- **Standard error**$` ( \sigma = 2\sqrt{p(1 - p) / N} )`$

We model the observed variability as:
$` [ X_j = d + \epsilon_j ] `$
where $` ( \epsilon_j ) `$ is a random variable representing poll-to-poll variability due to sampling error. It is assumed to have:
- Mean = 0
- Standard deviation = $` ( 2\sqrt{p(1 - p) / N} )`$

For example, if ( d = 0.021 ) and the sample size ( N = 2000 ), we simulate ( J = 6 ) data points.

## Multi-Pollster Model

When we have ( J = 6 ) data points from ( I = 5 ) different pollsters, we introduce two indices: one for the pollster ((i)) and one for the polls ((j)). The model becomes:
$`[ X_{i,j} = d + \epsilon_{i,j} ] `$

### Adding Pollster Effect

To account for pollster-to-pollster variability, we introduce a house effect ( h_i ) for the (i)-th pollster. The updated model is:
$` [ X_{i,j} = d + h_i + \epsilon_{i,j} ]`$
where $`( \epsilon_{i,j} ) `$ still has a mean of 0 and a standard deviation of $` ( 2\sqrt{p(1 - p) / N} ) `$. We assume ( h_i) has a standard deviation $` ( \sigma_h = 0.025 ) `$, with ( h_i ) common to all observations from the same pollster.

### Modeling Election Bias

Historically, each election has a general bias affecting all polls. This bias, ( b ), represents the difference between the average of all polls and the actual election result. We include this bias in our model as follows:
$` [ X_{i,j} = d + b + h_i + \epsilon_{i,j} ]`$
where ( b ) is a random variable with:
- Expected value = 0
- Standard deviation $` ( \sigma_b = 0.025 )`$

This bias ( b ) is the same for all polls within a specific election year, making the $`  (X_{i,j} ) `$ measurements correlated.

### Variance Considerations

The standard deviation of ( X_{i,j} ) is now higher due to the additional variability from ( b ). The previous estimate did not account for ( b ):
- The standard deviation of  $` ( \bar{X} )`$is given by:
  $`[ \sqrt{\sigma^2 / N + \sigma_b^2} ]`$
  
Since ( b ) is common to all measurements, averaging does not reduce the variability introduced by ( b ). This is crucial: no matter how many polls you take, this bias does not get reduced.

## Bayesian Calculation with Bias

Incorporating the variability of ( b ) into the Bayesian calculation yields results much closer to those of FiveThirtyEight. The model adjustments account for both pollster effects and election-specific biases, providing a more accurate and robust prediction.
###Forecasting
Forecasters like to make predictions well before the election. The predictions are adapted as new polls come out. However, an important question forecasters must ask is: how informative are polls taken several weeks before the election about the actual election? Here we study the variability of poll results across time.


## Model with Time-Varying Bias

We enhance the previous polling model to include a bias term ( b_t ) that varies with time ( t ):

 $`[ Y_{i,j,t} = d + b + h_j + b_t + \epsilon_{i,j,t} ]`$
- ( Y_{i,j,t} ): Observed polling result from pollster ( i ), poll ( j ) at time ( t ).
- ( d ): Parameter representing the election outcome.
- ( b ): Bias common across all pollsters and polls.
- ( h_j ): Pollster-specific bias.
- ( b_t ): Time-varying bias, which changes with \( t \).
- $`( \epsilon_{i,j,t} )`$: Error term capturing variability.

The standard deviation of ( b_t ) is expected to decrease as ( t ) approaches election day, reflecting reduced uncertainty as polling nears the actual election result.

## Incorporating Time Trends

Pollsters often incorporate time trends ( f(t) ) into their models to capture evolving public sentiment:

$`[ Y_{i,j,t} = d + b + h_j + b_t + f(t) + \epsilon_{i,j,t} ]`$
- $`( f(t) )`$: Function representing the time trend in polling data, such as changes in candidate support percentages over time.

These time trends are crucial for understanding shifts in voter preferences and adjusting forecasts accordingly as elections approach.

![image](https://github.com/Zyadsowilam/Data-Science-Inference-and-Modeling/assets/96208685/f83140e7-8463-42b6-afd0-445bea104d27)

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
### task 21
Exercise 1 - Heights Revisited
We have been using urn models to motivate the use of probability models. However, most data science applications are not related to data obtained from urns. More common are data that come from individuals. Probability plays a role because the data come from a random sample. The random sample is taken from a population and the urn serves as an analogy for the population.

Let's revisit the heights dataset. For now, consider x to be the heights of all males in the data set. Mathematically speaking, x is our population. Using the urn analogy, we have an urn with the values of x in it.

What are the population average and standard deviation of our population?

Execute the lines of code that create a vector x that contains heights for all males in the population.
Calculate the average of x.
Calculate the standard deviation of x.
### task 22

Exercise 2 - Sample the population of heights
Call the population average computed above mu
 and the standard deviation sigma
. Now take a sample of size 50, with replacement, and construct an estimate for 
  mu and sigma
### task 23
Exercise 4 - Confidence Interval Calculation
We will use bar X as our estimate of the heights in the population from our sample size N . We know from previous exercises that the standard estimate of our error  bar x - meu is sigma/sqrt(N).Construct a 95% confidence interval for meu
###task 25
Exercise 5 - Monte Carlo Simulation for Heights
Now run a Monte Carlo simulation in which you compute 10,000 confidence intervals as you have just done. What proportion of these intervals include meu
### task 26
Exercise 6 - Visualizing Polling Bias
In this section, we used visualization to motivate the presence of pollster bias in election polls. Here we will examine that bias more rigorously. Lets consider two pollsters that conducted daily polls and look at national polls for the month before the election.

Is there a poll bias? Make a plot of the spreads for each poll.

### task 26
 Compute the Estimates
The answer to the previous question depends on sigma 1 and sigma 2 , which we don't know. We learned that we can estimate these values using the sample standard deviation.Compute the estimates of sigma 1 and sigma 2 .
### task 27
Exercise 15 - Calculate the 95% Confidence Interval of the Spreads
We have constructed a random variable that has expected value b2-b1, the pollster bias difference. If our model holds, then this random variable has an approximately normal distribution. The standard error of this random variable depends on sima1 and sigma2, but we can use the sample standard deviations we computed earlier. We have everything we need to answer our initial question: is b2-b1 different from 0?
Construct a 95% confidence interval for the difference b2 and b1 . Does this interval contain zero?

### task 28 
Exercise 16 - Calculate the P-value
The confidence interval tells us there is relatively strong pollster effect resulting in a difference of about 5%. Random variability does not seem to explain it.

Compute a p-value to relay the fact that chance does not explain the observed pollster effect.
### task 29

Exercise 17 - Comparing Within-Poll and Between-Poll Variability
We compute statistic called the t-statistic by dividing our estimate of  b2-b1
 by its estimated standard error:
(Y2 hat - Y1 hat)/(sqrt((s2^2/N2)+(s1^2/N1)))
 
Later we learn will learn of another approximation for the distribution of this statistic for values of N2 and N1that aren't large enough for the CLT.

Note that our data has more than two pollsters. We can also test for pollster effect using all pollsters, not just two. The idea is to compare the variability across polls to variability within polls. We can construct statistics to test for effects and approximate their distribution. The area of statistics that does this is called Analysis of Variance or ANOVA. We do not cover it here, but ANOVA provides a very useful set of tools to answer questions such as: is there a pollster effect?

Compute the average and standard deviation for each pollster and examine the variability across the averages and how it compares to the variability within the pollsters, summarized by the standard deviation.
### task 30
Exercise 2 - Recalculating the SIDS Statistics
Let's assume that there is in fact a genetic component to SIDS and the the probability of Pr(second case of SIDS | first case of SIDS)=1/100, is much higher than 1 in 8,500.

What is the probability of both of Sally Clark's sons dying of SIDS?
### task 31
Assume that the probability of a murderer finding a way to kill her two children without leaving evidence of physical harm is:
Pr(two children found dead with no evidencee of harm |mother is murder)=0.50

Assume that the murder rate among mothers is 1 in 1,000,000.

Pr(mother is murder)=1/1000000
According to Bayes' rule, what is the probability of:
Pr(two children found dead with no evidencee of harm |mother is murder)
### task 32
Florida is one of the most closely watched states in the U.S. election because it has many electoral votes and the election is generally close. Create a table with the poll spread results from Florida taken during the last days before the election using the sample code.

The CLT tells us that the average of these spreads is approximately normal. Calculate a spread average and provide an estimate of the standard error.

### task 32
Estimate the Posterior Distribution
The CLT tells us that our estimate of the spread 
 has a normal distribution with expected value 
 and standard deviation 
, which we calculated in a previous exercise.

Use the formulas for the posterior distribution to calculate the expected value of the posterior distribution if we set meu and tao

### task 33
Exercise 1 - Confidence Intervals of Polling Data
For each poll in the polling data set, use the CLT to create a 95% confidence interval for the spread. Create a new table called cis that contains columns for the lower and upper limits of the confidence intervals.

### task 33
standard Error of the Posterior Distribution
Compute the standard error of the posterior distribution.

### task 34
Constructing a Credible Interval
Using the fact that the posterior distribution is normal, create an interval that has a 95% of occurring centered at the posterior expected value. Note that we call these credible intervals.


### task 35
Odds of Winning Florida
According to this analysis, what was the probability that Trump wins Florida?
### task 36
Change the Priors
We had set the prior variance tao to 0.01, reflecting that these races are often close.
Change the prior variance to include values ranging from 0.005 to 0.05 and observe how the probability of Trump winning Florida changes by making a plot.
### task 37
Confidence Intervals of Polling Data
For each poll in the polling data set, use the CLT to create a 95% confidence interval for the spread. Create a new table called cis that contains columns for the lower and upper limits of the confidence intervals.
### task 38
Compare to Actual Results
You can add the final result to the cis table you just created using the left_join function as shown in the sample code.

Now determine how often the 95% confidence interval includes the actual result.
###task 39
Stratify by Pollster and Grade
Now find the proportion of hits for each pollster. Show only pollsters with at least 5 polls and order them from best to worst. Show the number of polls conducted by each pollster and the FiveThirtyEight grade of each pollster.
### task 40
tratify by State
Repeat the previous exercise, but instead of pollster, stratify by state. Here we can't show grades.
### task 41
lotting Prediction Results
Make a barplot based on the result from the previous exercise.
### task 42
Predicting the Winner
Even if a forecaster's confidence interval is incorrect, the overall predictions will do better if they correctly called the right winner.

Add two columns to the cis table by computing, for each poll, the difference between the predicted spread and the actual spread, and define a column hit that is true if the signs are the same.
### task 43
Plotting Prediction Results
Create an object called p_hits that contains the proportion of instances when the sign of the actual spread matches the predicted spread for states with 5 or more polls.

Make a barplot based on the result from the previous exercise that shows the proportion of times the sign of the spread matched the actual result for the data in p_hits.

###task 44
Plotting the Errors
In the previous graph, we see that most states' polls predicted the correct winner 100% of the time. Only a few states polls' were incorrect more than 25% of the time. Wisconsin got every single poll wrong. In Pennsylvania and Michigan, more than 90% of the polls had the signs wrong.

Make a histogram of the errors. What is the median of these errors?
### task 45
Plot Bias by State
We see that, at the state level, the median error was slightly in favor of Clinton. The distribution is not centered at 0, but at 0.037. This value represents the general bias we described in an earlier section.

Create a boxplot to examine if the bias was general to all states or if it affected some states differently. Filter the data to include only pollsters with grades B+ or higher.
### task 46
Filter Error Plot
Some of these states only have a few polls. Repeat the previous exercise to plot the errors for each state, but only include states with five good polls or more
### task 47
sing the t-Distribution
We know that, with a normal distribution, only 5% of values are more than 2 standard deviations away from the mean.

Calculate the probability of seeing t-distributed random variables being more than 2 in absolute value when the degrees of freedom are 3.
### task 48
Exercise 2 - Plotting the t-distribution
Now use sapply to compute the same probability for degrees of freedom from 3 to 50.

Make a plot and notice when this probability converges to the normal distribution's 5%.

### task 49
ampling From the Normal Distribution
In a previous section, we repeatedly took random samples of 50 heights from a distribution of heights. We noticed that about 95% of the samples had confidence intervals spanning the true population mean.
Re-do this Monte Carlo simulation, but now instead of N=50,N=15 use . Notice what happens to the proportion of hits.
### task 50
 Sampling from the t-Distribution
 N=15 is not that big. We know that heights are normally distributed, so the t-distribution should apply. Repeat the previous Monte Carlo simulation using the t-distribution instead of using the normal distribution to construct the confidence intervals.

What are the proportion of 95% confidence intervals that span the actual mean height now?
### task 51
Comparing Proportions of Hits
In a previous exercise, we determined whether or not each poll predicted the correct winner for their state in the 2016 U.S. presidential election. Each poll was also assigned a grade by the poll aggregator. Now we're going to determine if polls rated A- made better predictions than polls rated C-.

In this exercise, filter the errors data for just polls with grades A- and C-. Calculate the proportion of times each grade of poll predicted the correct winner.
### task 52
Chi-squared Test
We found that the A- polls predicted the correct winner about 80% of the time in their states and C- polls predicted the correct winner about 86% of the time.

Use a chi-squared test to determine if these proportions are different.
### task 53
Odds Ratio Calculation
It doesn't look like the grade A- polls performed significantly differently than the grade C- polls in their states.

Calculate the odds ratio to determine the magnitude of the difference in performance between these two grades of polls.
### task 54
