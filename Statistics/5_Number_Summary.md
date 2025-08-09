# 📊 Five Number Summary & Outlier Detection

## 📌 Introduction
In this session, we will discuss the **Five Number Summary** — a statistical concept often used in:
- **Feature selection**
- **Outlier removal**
- **Machine learning preprocessing**

---

## 📋 Five Main Components
The **Five Number Summary** includes:
1. **Minimum Value**  
2. **First Quartile (Q1)** — 25th percentile  
3. **Median (Q2)**  
4. **Third Quartile (Q3)** — 75th percentile  
5. **Maximum Value**

---

## 🔢 Example Dataset

[1, 2, 2, 2, 3, 3, 4, 5, 5, 5, 6, 6, 6, 6, 7, 8, 8, 9, 27]


Here, **27** is much larger than the rest — we can suspect it is an **outlier**.

---

## 🛠 Identifying Outliers

### Step 1 — Define the Lower & Upper Fence

- **Lower Fence Formula:**
\[
\text{Lower Fence} = Q_1 - 1.5 \times IQR
\]

- **Upper Fence Formula:**
\[
\text{Upper Fence} = Q_3 + 1.5 \times IQR
\]

Where:
\[
IQR = Q_3 - Q_1
\]

---

### Step 2 — Compute Q1 and Q3

Formula for percentile position:
\[
\text{Position} = \frac{\text{Percentile}}{100} \times (n + 1)
\]

Here, \( n = 19 \) (sample size)

#### **Q1 (25th percentile)**
\[
\text{Position} = \frac{25}{100} \times 20 = 5
\]  
5th position value = **3**

#### **Q3 (75th percentile)**
\[
\text{Position} = \frac{75}{100} \times 20 = 15
\]  
15th position value = **7**

---

### Step 3 — Compute IQR
\[
IQR = Q_3 - Q_1 = 7 - 3 = 4
\]

---

### Step 4 — Calculate Fences

#### Lower Fence:
\[
\text{Lower Fence} = 3 - 1.5 \times 4 = 3 - 6 = -3
\]

#### Upper Fence:
\[
\text{Upper Fence} = 7 + 1.5 \times 4 = 7 + 6 = 13
\]

---

### Step 5 — Detect Outliers
- Values **> 13** → Outlier  
- Values **< -3** → Outlier

✅ Outlier here: **27**

---

## 📉 Removing Outlier
After removing **27**:

[1, 2, 2, 2, 3, 3, 4, 5, 5, 5, 6, 6, 6, 6, 7, 8, 8, 9]



---

## 📑 Final Five Number Summary
| Statistic      | Value |
|----------------|-------|
| Minimum        | 1     |
| Q1 (25%)       | 3     |
| Median (Q2)    | 5     |
| Q3 (75%)       | 7     |
| Maximum        | 9     |

---

## 📦 Visualization: Box Plot
A **Box Plot** can be used to visualize:
- Minimum
- Q1
- Median
- Q3
- Maximum
- Outliers

Other visualization: **Whisker Plot**

---

## 🧠 Key Takeaways
- **Five Number Summary** is a quick way to describe a dataset.
- **IQR method** helps detect outliers effectively.
- **Box Plots** are powerful for visualizing outliers.
