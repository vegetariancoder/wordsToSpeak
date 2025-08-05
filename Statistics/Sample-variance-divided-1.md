# 📊 Sample Variance and Bessel's Correction – Lecture Notes



## 🎯 Objective

Understand the concept of **sample variance**, the difference between **sample variance** and **population variance**, and the reason for dividing by `n - 1` instead of `n` when calculating sample variance.

---

## 🧮 Formula Recap

### Sample Variance (denoted as `s²`):
\[
s^2 = \frac{1}{n - 1} \sum_{i=1}^{n} (x_i - \bar{x})^2
\]
- \( \bar{x} \): Sample mean
- \( n \): Number of observations in the sample

### Population Variance (denoted as `σ²`):
\[
\sigma^2 = \frac{1}{N} \sum_{i=1}^{N} (x_i - \mu)^2
\]
- \( \mu \): Population mean
- \( N \): Number of observations in the population

---

## ❓ Why Use `n - 1` in Sample Variance?

Using `n - 1` instead of `n` in the sample variance formula is known as **Bessel’s Correction**.

### 🔍 Key Insights:
- When calculating **sample variance**, we often use it to estimate the **population variance**.
- If we divide by `n`, the result **underestimates** the true population variance.
- Dividing by `n - 1` **corrects this bias**, providing an **unbiased estimator** of population variance.

---

## 📊 Visualization Example

### Scenario 1: Ideal Sample
- Randomly selected sample from the population.
- Sample mean (`x̄`) ≈ Population mean (`μ`)
- Sample variance (`s²`) ≈ Population variance (`σ²`)

### Scenario 2: Biased Sample
- Sample points clustered on one side of the distribution.
- Sample mean far from population mean.
- Sample variance **underestimates** the population variance if divided by `n`.

✅ Hence, using `n - 1` compensates for this underestimation.

---

## 🧠 Important Terms

### 🎓 Bessel's Correction
- Technique used to correct bias in estimating population variance from a sample.
- Changes denominator from `n` to `n - 1`.

### 🧮 Degree of Freedom (DOF)
- Represented as:  
  \[
  \text{DOF} = n - 1
  \]
- Refers to the number of independent values in a dataset after computing the sample mean.

---

## 📌 Interview Tip

> **Why do we divide by `n - 1` instead of `n` in sample variance?**  
→ To avoid **underestimating** the population variance, we apply **Bessel’s Correction**, dividing by `n - 1` instead of `n`, which provides an **unbiased** estimate.

---

## 📚 Summary

| Term               | Meaning                                        |
|--------------------|------------------------------------------------|
| Sample Mean (`x̄`) | Average of the sample                          |
| Population Mean (`μ`) | Average of the entire population             |
| Sample Variance (`s²`) | Variance computed from sample data          |
| Population Variance (`σ²`) | Variance of the whole population         |
| Bessel’s Correction | Adjustment to reduce bias in sample variance  |
| Degree of Freedom (`n - 1`) | Number of values free to vary after computing the mean |

---

## ▶️ Next Steps

- Learn how degrees of freedom impact other statistical estimates.
- Explore how Bessel’s correction applies in other statistical formulas like standard deviation.

