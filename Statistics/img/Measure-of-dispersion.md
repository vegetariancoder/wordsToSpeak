# Statistics: Measures of Dispersion

This video explains the concept of measures of dispersion in statistics, focusing on variance and standard deviation.

## Main Points

* **What is Dispersion?**
    * Dispersion measures how spread out the data points are from the mean (average).
    * Two different datasets can have the same mean but different levels of dispersion.
    * **Example:**
        * Dataset 1: `{2, 2, 4, 4}` -> Mean = 3. Data points are close to the mean.
        * Dataset 2: `{1, 1, 5, 5}` -> Mean = 3. Data points are farther away from the mean.
    * This "spread" or "dispersion" is a key characteristic for differentiating datasets.

* **Variance**
    * Variance is a specific measure used to quantify dispersion.
    * It is calculated by finding the average of the squared differences from the mean.
    * Variance is denoted by $\sigma^2$ for population data and $S^2$ for sample data.

### Variance Formula for Population Data

The formula for population variance ($\sigma^2$) is:

$$ \sigma^2 = \frac{\sum_{i=1}^{N} (x_i - \mu)^2}{N} $$

* $x_i$: Each individual data point
* $\mu$: The population mean
* $N$: The total number of data points in the population

**Example Calculation (Dataset 1: `{2, 2, 4, 4}`):**

1.  **Calculate the Mean ($\mu$):** $(2+2+4+4) / 4 = 3$
2.  **Calculate Squared Differences:**
    * $(2 - 3)^2 = (-1)^2 = 1$
    * $(2 - 3)^2 = (-1)^2 = 1$
    * $(4 - 3)^2 = (1)^2 = 1$
    * $(4 - 3)^2 = (1)^2 = 1$
3.  **Sum of Squared Differences:** $1 + 1 + 1 + 1 = 4$
4.  **Divide by Population Size (N):** $4 / 4 = 1$
    * **Result:** Variance ($\sigma^2$) = 1

**Example Calculation (Dataset 2: `{1, 1, 5, 5}`):**

1.  **Calculate the Mean ($\mu$):** $(1+1+5+5) / 4 = 3$
2.  **Calculate Squared Differences:**
    * $(1 - 3)^2 = (-2)^2 = 4$
    * $(1 - 3)^2 = (-2)^2 = 4$
    * $(5 - 3)^2 = (2)^2 = 4$
    * $(5 - 3)^2 = (2)^2 = 4$
3.  **Sum of Squared Differences:** $4 + 4 + 4 + 4 = 16$
4.  **Divide by Population Size (N):** $16 / 4 = 4$
    * **Result:** Variance ($\sigma^2$) = 4

**Conclusion:** The variance of 4 for the second dataset indicates a higher level of dispersion (the data is more spread out) compared to the variance of 1 for the first dataset.

### Variance Formula for Sample Data

The formula for sample variance ($S^2$) is slightly different:

$$ S^2 = \frac{\sum_{i=1}^{n} (x_i - \bar{x})^2}{n-1} $$

* $x_i$: Each individual data point in the sample
* $\bar{x}$: The sample mean
* $n$: The number of data points in the sample

**Note:** The key difference is dividing by $n-1$ instead of $n$. The reason for this change is a crucial topic that will be discussed in the next video.