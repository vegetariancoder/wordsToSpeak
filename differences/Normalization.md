## <u>What is Normalization</u>

♦ Normalization is a **database design technique** that helps to **reduce down the redundancy (repetitiveness)** from the data.

♦ Normalization helps to **minimize the data update, delete and modify related anomalies**.

♦ Normalization basically **divides the larger table into smaller tables** and **linked them using a relationship**.

Here is the list of Normal Forms :

1. **1 NF (First Normal Form)**
2. **2 NF (Second Normal Form)**
3. **3 NF (Third Normal Form)**
4. **BCNF (Boyce-Codd Normal Form)**
5. **4 NF (Fourth Normal Form)**
6. **5 NF (Fifth Normal Form)**

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/hierarchy.png?raw=true "Title")


**☀️ Rules for 1 NF**

- Each table cells should contain only single value.
- Each record needs to be unique.

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/1NF.png?raw=true "Title")


**☀️ Rules for 2 NF**

- Table must be in 1 NF
- All non-key attributes are fully functional on the primary key.

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/1NF.png?raw=true "Title")

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/2NF.png?raw=true "Title")

### ☀️What are transitive functional dependencies?

Transitive functional dependency occurs **when changing a non-key column is affecting the other non-key column**

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/TFDPNDCY.png?raw=true "Title")

**☀️ Rules for 3 NF**

- Table must be in 2 NF
- There must be no transitive functional dependency.

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/3NF.png?raw=true "Title")