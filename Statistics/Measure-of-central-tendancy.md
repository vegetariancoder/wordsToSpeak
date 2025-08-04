# 📊 Statistics - Measures of Central Tendency

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/Statistics/img/measure-of-central-tendency.png?raw=true "superkey")

In this session, we are going to continue our discussion on statistics, specifically focusing on **Measures of Central Tendency**.

## 🎯 Objectives

We will cover three main concepts:

- Mean
- Median
- Mode

---

## 🧠 Recap: Population vs Sample

In the previous topic, we discussed **Population (N)** and **Sample (n)**.

- Population size → `N`
- Sample size → `n`

The formula for **mean (average)** slightly varies depending on whether you're working with a population or sample.

---

## 🧮 Mean (Average)

- **Population Mean (μ):**

\[
\mu = \frac{\sum_{i=1}^{N} X_i}{N}
\]

- **Sample Mean (x̄):**

\[
\bar{x} = \frac{\sum_{i=1}^{n} X_i}{n}
\]

Where:
- \(X_i\) = data point
- \(N\) = number of population data points
- \(n\) = number of sample data points

---

### 📌 Example:

Let’s take a variable `age` with values: `1, 3, 4, 5`.

\[
\mu = \frac{1 + 3 + 4 + 5}{4} = \frac{13}{4} = 3.25
\]

This is the **mean** of the data.

🟢 Why it's called *central tendency*: because it shows the **center** or **average** of the distribution.

---

## ✂️ Outliers and the Effect on Mean

Let’s add an **outlier**: `100`.

New data: `1, 3, 4, 5, 100`

\[
\mu = \frac{1 + 3 + 4 + 5 + 100}{5} = \frac{113}{5} = 22.6
\]

🔴 Clearly, the **mean is heavily affected** by this outlier. That’s why we need other metrics like **Median** and **Mode**.

---

## 📍 Median

### 🔢 Step-by-step:

1. **Sort the data**  
   Original: `4, 3, 1, 5, 100`  
   Sorted: `1, 3, 4, 5, 100`

2. If **odd number** of elements → pick the middle element  
   \[
   \text{Median} = 4
   \]

3. If **even number** of elements → take average of the two middle elements  
   Example: `1, 3, 4, 5, 100, 200`  
   Median = \(\frac{4 + 5}{2} = 4.5\)

✅ Median is **robust to outliers**, and gives a better representation of central tendency in skewed distributions.

---

## 🔁 Mode

- **Definition**: The value that appears most frequently in a dataset.

Example:

```text
Values = [4, 3, 2, 1, 1, 4, 4, 5, 2, 100]
