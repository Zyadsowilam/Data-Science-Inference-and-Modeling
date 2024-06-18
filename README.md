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

