# Statistics: Covariance & Correlation

This document provides a summary of the concepts of **covariance** and **correlation**, two important statistical measures used to understand the relationship between two variables.

---

## What is the Relationship?

Both covariance and correlation are used to quantify the relationship between two **continuous variables**. They help us understand how a change in one variable is associated with a change in another.

* **Positive Relationship:** If one variable increases, the other also tends to increase.

* **Negative Relationship:** If one variable increases, the other tends to decrease.

---

## Covariance

Covariance measures how much two random variables change together.

### The Formula

For a sample size of `n`, the formula for covariance is:

$$Cov(X, Y) = \frac{\sum_{i=1}^{n} (x_i - \bar{x})(y_i - \bar{y})}{n-1}$$

Where:

* $x_i$ and $y_i$ are the individual data points.

* $\bar{x}$ and $\bar{y}$ are the sample means of X and Y.

* $n$ is the number of data points.

### Interpreting the Value

* A **positive covariance** suggests that as one variable increases, the other also increases.

* A **negative covariance** suggests that as one variable increases, the other decreases.

> **Fun Fact:** The covariance of a variable with itself, $Cov(X, X)$, is simply its **variance**!

### The Problem with Covariance

The biggest disadvantage of covariance is that it has no defined limit. Its value can range from negative infinity to positive infinity. This makes it difficult to compare the strength of relationships between different pairs of variables. For example, a covariance of +300 isn't necessarily stronger than a covariance of +20.

---

## Correlation

Correlation solves the problem of an unbounded range by normalizing the covariance value, giving us a standardized measure of the strength and direction of the relationship.

### Pearson Correlation Coefficient

This is the most common type of correlation for linear relationships. It limits the value of the relationship to a range between **-1 and +1**.

### The Formula

The Pearson correlation coefficient ($\rho$) is defined as:

$$\rho = \frac{Cov(X, Y)}{\sigma_x \sigma_y}$$

Where:

* $Cov(X, Y)$ is the covariance of X and Y.

* $\sigma_x$ and $\sigma_y$ are the standard deviations of X and Y.

### Interpreting the Value

* **+1:** A perfect positive linear relationship.

* **-1:** A perfect negative linear relationship.

* **0:** No linear relationship.

* **Values closer to +1 or -1** indicate a stronger linear relationship.

### Spearman Rank Correlation

While Pearson correlation is great for **linear relationships**, Spearman correlation is used for **non-linear relationships**. Instead of using the raw data values, it calculates the correlation based on the **ranks** of the data points. This allows it to accurately capture a monotonic relationship even if it isn't perfectly linear.

---

## Practical Application: Feature Selection

In data science, both covariance and correlation are crucial for **feature selection**. When building a predictive model, you can use these measures to:

1. Identify which features (like "size of house," "location") have a strong relationship with the target variable (like "price").

2. Understand if features are positively or negatively related (e.g., "house is haunted" might have a strong negative correlation with "price").

By identifying these relationships, a data scientist can choose the most relevant features to include in their model, which can improve its accuracy and performance.

---