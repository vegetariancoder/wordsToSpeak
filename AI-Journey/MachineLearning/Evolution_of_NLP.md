# Evolution of Language Modeling Techniques

## 1. From Early Models to Modern LLMs
- Language models evolved from:
  - Statistical techniques
  - Basic pattern matching
  - Neural networks
  - Large Language Models (LLMs)
- Each new technique addressed the **limitations of previous approaches**
- Goal: Better context understanding, scalability, and performance

---

## 2. N-Gram Models
- One of the earliest language modeling techniques
- Predicts a word based on the **previous (n − 1) words**

### Types of N-Grams
- **Unigram (n = 1)**
  - No context used
  - Prediction based on **overall word frequency**
  - Often predicts common words like *the* or *and*
- **Bigram (n = 2)**
  - Uses **one previous word**
  - Prediction depends on frequency of word pairs
- **Trigram (n = 3)**
  - Uses **two previous words**
  - Considers slightly more context

### Example
- Sentence: *"My favorite sport is ___"*
- Unigram → most frequent word overall
- Bigram → word most often following *is*
- Trigram → word most often following *sport is*

### Limitations
- Very limited context awareness
- Relies purely on frequency counts
- Misses subtle meaning and long-term dependencies
- Not suitable for complex language understanding

---

## 3. Recurrent Neural Networks (RNNs)
- First major leap beyond N-grams
- Designed specifically for **sequential data like text**

### Key Strengths
- Retains information from previous words
- Word order matters
- Context influences predictions

### Limitations
- Struggles with **long sequences**
- Earlier information fades as text grows
- Known as the **vanishing gradient problem**

---

## 4. Long Short-Term Memory (LSTM) Networks
- An improved version of RNNs
- Introduced a **gate-based architecture**

### How LSTMs Improve RNNs
- Decide what information to:
  - Keep
  - Forget
- Preserve important long-term dependencies
- Better performance on complex text tasks

### Drawbacks
- High computational cost
- Slow training on large datasets
- Poor scalability for massive data

---

## 5. Transformers & Attention Mechanism
- Introduced in 2017 by the paper *"Attention Is All You Need"*
- Marked a major breakthrough in language modeling

### Attention Mechanism
- Assigns an **attention score** to each word/token
- Determines which parts of the input matter most
- Focuses computation on important tokens

### Advantages
- Handles long-range dependencies effectively
- Reduces computational overhead
- Highly scalable
- Processes text by **selective focus**, not sequential dependency

---

## 6. Why Transformers Changed Everything
- Enable:
  - Parallel processing
  - Efficient handling of long texts
  - Better contextual understanding
- Form the foundation of modern LLMs
- Made models like **ChatGPT** possible

---

## 7. Key Takeaways
- **N-grams** → simple, frequency-based, poor context handling
- **RNNs** → sequence-aware, limited by vanishing gradients
- **LSTMs** → better memory, but slow and expensive
- **Transformers** → attention-driven, scalable, powerful

---