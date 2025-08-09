# 📊 Percentiles & Quartiles — A Beginner's Guide

## 🎯 Overview
This guide explains:
- What **percentiles** are
- How to calculate them
- The difference between **percentages** and **percentiles**
- What **quartiles** are and how they relate to percentiles

---

## 1️⃣ Understanding Percentage
Before diving into percentiles, let's recall **percentage**:

**Example:**
Numbers: `1, 2, 3, 4, 5, 6`

- Odd numbers: `1, 3, 5` → **3 odd numbers**
- Percentage of odd numbers:
  \[
  \frac{\text{Number of odd numbers}}{\text{Total numbers}} \times 100
  \]
  \[
  \frac{3}{6} \times 100 = 50\%
  \]

---

## 2️⃣ What is a Percentile?
> **Definition:**  
> A percentile is a value below which a given percentage of observations in a dataset fall.

**Formula for Percentile of a Value \(x\):**
\[
\text{Percentile}(x) = \frac{\text{Number of values below } x}{n} \times 100
\]
Where:
- \(n\) = total number of observations

**Example:**
Dataset:  
`2, 2, 3, 4, 5, 5, 6, 7, 8, 8, 8, 9, 9, 10`  
Find the percentile of `x = 9`:
- Values below 9: **11**
- Total values: **14**
\[
\frac{11}{14} \times 100 = 78.57\%
\]
**Interpretation:** 78.57% of the data is less than 9.

---

## 3️⃣ Finding the Value for a Given Percentile
**Formula:**
\[
\text{Position} = \frac{\text{Percentile}}{100} \times (n + 1)
\]

**Example:**
Find the **25th percentile** of the dataset above:
- \(n = 14\)
\[
\frac{25}{100} \times (14 + 1) = 3.75
\]
- Position 3.75 means average of 3rd and 4th values:
  - 3rd value = 3  
  - 4th value = 4  
\[
\frac{3 + 4}{2} = 3.5
\]
**25th percentile = 3.5**

---

## 4️⃣ Quartiles
- **Quartiles** divide data into **four equal parts**.
- Relationship with percentiles:
  - **Q1 (First Quartile)** = 25th percentile
  - **Q2 (Second Quartile / Median)** = 50th percentile
  - **Q3 (Third Quartile)** = 75th percentile

---

## 📝 Summary Table

| Concept        | Formula | Example |
|----------------|---------|---------|
| **Percentage** | \(\frac{\text{count of subset}}{\text{total}} \times 100\) | Odd numbers in `1-6` = \( \frac{3}{6} \times 100 = 50\%\) |
| **Percentile of value \(x\)** | \(\frac{\text{count below } x}{n} \times 100\) | 9 in dataset = 78.57% |
| **Value for given percentile** | \(\frac{p}{100} \times (n+1)\) | 25th percentile = 3.5 |
| **Quartiles** | Based on 25%, 50%, 75% | Q1 = P25, Q2 = P50, Q3 = P75 |

---

## 📌 Key Takeaways
- **Percentages** measure proportions.
- **Percentiles** measure ranking within a dataset.
- **Quartiles** are special percentiles: P25, P50, P75.
- Always sort data before calculating percentiles.
