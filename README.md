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
