# Data-Science-Inference-and-Modeling
Data Science: Inference and Modeling Harvard Course


# Statistical Properties of Sample Proportion

This repository provides a detailed explanation of the statistical properties of the sample proportion \(bar{X}\). The sample proportion is the mean of independent draws from a random variable and follows the rules of probability.

## Overview

To understand how good our estimate is, we will describe the statistical properties of the sample proportion \(\bar{X}\). Remember that \(\bar{X}\) is the sum of independent draws, so the rules we covered in the probability chapter apply.

### Expected Value

Using the properties of expected value, the expected value of the sum \(N\bar{X}\) is \(N\) times the average of the urn, \(p\). Dividing by the non-random constant \(N\) gives us the expected value of the average \(\bar{X}\):

\[ E(\bar{X}) = p \]

### Standard Error

We can also determine the standard error. The standard error of the sum is \(\sqrt{N} \times\) the standard deviation of the urn. The formula for the standard deviation of the urn is:

\[ \sqrt{p(1 - p)} \]

Since we are dividing the sum by \(N\), the standard error of the average \(\bar{X}\) is:

\[ SE(\bar{X}) = \frac{\sqrt{p(1 - p)}}{\sqrt{N}} \]


