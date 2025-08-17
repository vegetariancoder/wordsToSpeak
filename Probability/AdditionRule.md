# Probability Fundamentals for Machine Learning

This README provides an overview of the key concepts discussed in the lecture on probabilities, a fundamental topic in statistics with significant applications in machine learning. Below are the important points covered, including definitions, examples, and rules for probability calculations.

## Table of Contents
- [Introduction to Probability](#introduction-to-probability)
- [Mutually Exclusive Events](#mutually-exclusive-events)
  - [Additive Rule for Mutually Exclusive Events](#additive-rule-for-mutually-exclusive-events)
- [Non-Mutually Exclusive Events](#non-mutually-exclusive-events)
  - [Additive Rule for Non-Mutually Exclusive Events](#additive-rule-for-non-mutually-exclusive-events)
- [Key Takeaways](#key-takeaways)
- [Next Steps](#next-steps)

---

## Introduction to Probability
- **Definition**: Probability is the measure of the likelihood of an event or experiment occurring.
- **Examples**:
  - **Coin Toss**:  
    - Possible outcomes: Head or Tail.  
    - Probability of getting a head:  

      $$
      P(\text{Head}) = \frac{1}{2} = 50\%
      $$

    - Probability of getting a tail:  

      $$
      P(\text{Tail}) = \frac{1}{2} = 50\%
      $$

  - **Dice Roll**:  
    - Possible outcomes: 1, 2, 3, 4, 5, or 6.  
    - Probability of rolling a specific number (e.g., 1):  

      $$
      P(X=1) = \frac{1}{6} \approx 16.67\%
      $$

- **Application in Machine Learning**: Probabilities are crucial in classification algorithms, where outputs are based on probability scores and threshold values to determine class assignments.

---

## Mutually Exclusive Events
- **Definition**: Two events are mutually exclusive if they cannot occur at the same time.
- **Examples**:
  - **Coin Toss**: Getting a head and a tail in a single toss is impossible.
  - **Dice Roll**: Rolling a 1 and a 5 in a single roll is impossible.
- **Venn Diagram Representation**: No overlap between events (e.g., head and tail have distinct regions).

### Additive Rule for Mutually Exclusive Events
- **Formula**:  

  $$
  P(A \text{ or } B) = P(A) + P(B)
  $$

- **Examples**:
  - **Coin Toss**:  

    $$
    P(\text{Head or Tail}) = P(\text{Head}) + P(\text{Tail}) = \frac{1}{2} + \frac{1}{2} = 1
    $$

  - **Dice Roll**:  

    $$
    P(X=1 \text{ or } X=5) = P(X=1) + P(X=5) = \frac{1}{6} + \frac{1}{6} = \frac{2}{6} = \frac{1}{3}
    $$

---

## Non-Mutually Exclusive Events
- **Definition**: Two events are non-mutually exclusive if they can occur at the same time.
- **Example**:
  - **Drawing a Card from a Deck**: When drawing a card from a standard 52-card deck, the card can be both a King and a Heart (e.g., King of Hearts).
- **Venn Diagram Representation**: Overlap exists between events (e.g., King and Heart share the King of Hearts).

### Additive Rule for Non-Mutually Exclusive Events
- **Formula**:  

  $$
  P(A \text{ or } B) = P(A) + P(B) - P(A \text{ and } B)
  $$

- **Example**:
  - **Drawing a Card**:  

    - Total cards: 52  
    - Number of Kings: 4 → $P(\text{King}) = \tfrac{4}{52}$  
    - Number of Hearts: 13 → $P(\text{Heart}) = \tfrac{13}{52}$  
    - Number of King of Hearts: 1 → $P(\text{King and Heart}) = \tfrac{1}{52}$  

    Calculation:  

    $$
    P(\text{King or Heart}) = P(\text{King}) + P(\text{Heart}) - P(\text{King and Heart})
    $$

    $$
    = \frac{4}{52} + \frac{13}{52} - \frac{1}{52} = \frac{16}{52} = \frac{4}{13}
    $$

---

## Key Takeaways
- Probability quantifies the likelihood of events, essential for machine learning classification tasks.
- **Mutually Exclusive Events**: Cannot occur simultaneously; use  

  $$
  P(A \text{ or } B) = P(A) + P(B)
  $$

- **Non-Mutually Exclusive Events**: Can occur simultaneously; use  

  $$
  P(A \text{ or } B) = P(A) + P(B) - P(A \text{ and } B)
  $$

- Examples like coin tosses, dice rolls, and card draws illustrate these concepts clearly.

---

## Next Steps
- The next part of the discussion will cover the **multiplication rule** for independent and dependent events.
- Review the concepts of mutually exclusive and non-mutually exclusive events to ensure a strong foundation before proceeding.
