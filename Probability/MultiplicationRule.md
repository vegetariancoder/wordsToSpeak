# Probability – Multiplication Rule (Independent vs Dependent Events)

## 1. Independent Events
- Two events are **independent** if they do not affect one another.  
- Example: **Tossing a coin**
  - Probability of Head (H) = 1/2  
  - Probability of Tail (T) = 1/2  
  - Probability of getting H and then T = **(1/2) × (1/2) = 1/4**  

- Example: **Rolling a dice**
  - Probability of getting 1 = 1/6  
  - Probability of getting 2 = 1/6  
  - Probability of getting 1 and then 2 = **(1/6) × (1/6) = 1/36**  

👉 In independent events, the outcome of one event **does not impact** the probability of the other.  

---

## 2. Dependent Events
- Two events are **dependent** if they affect each other.  
- Example: **Drawing cards from a deck without replacement**
  - Total cards = 52  
  - Number of Kings = 4  
  - Number of Queens = 4  

### Step 1: Probability of drawing a King  
\[
P(K) = \frac{4}{52}
\]

### Step 2: Probability of drawing a Queen after a King is removed  
\[
P(Q|K) = \frac{4}{51}
\]

### Final Probability (Multiplication Rule for Dependent Events)  
\[
P(K \;and\; Q) = P(K) \times P(Q|K) = \frac{4}{52} \times \frac{4}{51}
\]

👉 Here, the first event (drawing a King) **changes** the probability of the second event (drawing a Queen).  

---

## 3. Multiplication Rule Summary
- **Independent Events**:  
\[
P(A \;and\; B) = P(A) \times P(B)
\]

- **Dependent Events**:  
\[
P(A \;and\; B) = P(A) \times P(B|A)
\]

---

## 4. Connection to Conditional Probability
- The formula for dependent events is also called **Conditional Probability**.  
- Conditional probability forms the basis of **Bayes’ Theorem**.  
- This concept is heavily used in **Naive Bayes Machine Learning Algorithm**.  

---

## 5. Key Takeaways
- Independent events: Outcomes do not affect each other.  
- Dependent events: First event affects the probability of the next.  
- Multiplication Rule is used with **AND** conditions.  
- Conditional probability is a crucial topic, often asked in interviews.  

