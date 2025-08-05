# 📚 Population vs Sample – Mean, Variance, and Standard Deviation

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/Statistics/img/standard-deviation.png?raw=true "superkey")

This document summarizes key statistical concepts covered in the lecture, focusing on **population** and **sample**-based calculations for **mean**, **variance**, and **standard deviation**.

---

## 🔹 Population Terminology

| Term                    | Symbol         | Formula                                                                 |
|-------------------------|----------------|-------------------------------------------------------------------------|
| Population Size         | `N`            | Total number of data points in population                              |
| Population Mean         | `μ`            | \( \mu = \frac{1}{N} \sum_{i=1}^{N} x_i \)                              |
| Population Variance     | `σ²`           | \( \sigma^2 = \frac{1}{N} \sum_{i=1}^{N} (x_i - \mu)^2 \)               |
| Population Std. Dev.    | `σ`            | \( \sigma = \sqrt{\sigma^2} \)                                          |

### 📌 Meaning:
- **Mean (`μ`)**: The average of all values in the population.
- **Variance (`σ²`)**: Measures the spread of data.
- **Standard Deviation (`σ`)**: Measures how far a data point is from the population mean.

---

## 🔹 Sample Terminology

| Term                    | Symbol         | Formula                                                                 |
|-------------------------|----------------|-------------------------------------------------------------------------|
| Sample Size             | `n`            | Total number of data points in sample                                  |
| Sample Mean             | `x̄`           | \( \bar{x} = \frac{1}{n} \sum_{i=1}^{n} x_i \)                          |
| Sample Variance         | `s²`           | \( s^2 = \frac{1}{n-1} \sum_{i=1}^{n} (x_i - \bar{x})^2 \)              |
| Sample Std. Dev.        | `s`            | \( s = \sqrt{s^2} \)                                                    |

> ⚠️ **Note:** We use `n - 1` instead of `n` due to **Bessel’s Correction**, which corrects the bias in sample variance estimation.

---

## 🔍 Key Concepts

### 🧮 Bessel's Correction:
Used in sample variance to avoid underestimating the population variance. Instead of dividing by `n`, we divide by `n - 1`.

### 📈 Dispersion vs Deviation:
- **Variance**: Measures spread or dispersion of the dataset.
- **Standard Deviation**: Measures how far a data point is from the mean (in standard deviation units).

---

## 🔸 Example Use Case: Understanding Std. Deviation

Assume a dataset:  

[2, 3, 4, 5, 6, 10]
Mean = 3
Std. Dev. = 1


| Data Point | Std. Dev. Away from Mean | Interpretation                      |
|------------|---------------------------|-------------------------------------|
| 4          | `+1`                      | 1 std. dev. right of the mean       |
| 2          | `-1`                      | 1 std. dev. left of the mean        |
| 4.5        | `+1.5`                    | 1.5 std. dev. right of the mean     |

---

## 📌 Summary

| Metric                     | Population                 | Sample                          |
|----------------------------|----------------------------|----------------------------------|
| Size                      | `N`                        | `n`                              |
| Mean                      | `μ`                        | `x̄`                              |
| Variance                  | `σ² = Σ(x - μ)² / N`       | `s² = Σ(x - x̄)² / (n - 1)`       |
| Std. Deviation            | `σ = √σ²`                  | `s = √s²`                         |

---

## 🧠 Quick Revision Checklist

✅ Mean  
✅ Median  
✅ Mode  
✅ Variance  
✅ Standard Deviation  
✅ Sample vs Population formulas  
✅ Bessel’s Correction  
✅ Interpretation of deviation from mean  

---

> 💡 Tip: Always distinguish between **population** and **sample** contexts in interviews or real-world data work.


