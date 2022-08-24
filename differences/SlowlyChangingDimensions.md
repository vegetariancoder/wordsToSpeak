- ## ☁️ Slowly Changing Dimensions ☁️

- Slowly changing dimension is defined as the **dimensions that changes slowly over the time rather than changing on regular basis**.

#### What are SCD Types:

1. Type - 0 : This is a fixed dimension
2. Type - 1 : This maintains only current state.
3. Type - 2 : History is stored.
4. Type - 3 : Current and previous states are stored.
5. Type - 4 : Combination of type-1 and type-2
6. Type - 6 : Hybrid Type.


    Note: In the real world only Type-1,2 and 3 are used

#### 📚 Slowly Changing Dimension Type-0 📚


- The type-0 is a **fixed dimension**.
- The **data in the type-0 never changes**.
- The data get loaded in the **beginning of the project, and it never changes**.

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/SCD-0.png?raw=true "Title")

#### 📚 Slowly Changing Dimension Type-1 📚

- In SCD Type-1, we **simply overwrite the historical data with the new data**.
- In SCD Type-1, we **do not store any historical information** (which means the historical data is simply overwritten by new data.)

    
    Advantage : It is easy to maintain and takes less space.

    Disadvantage : Historical data is removed.


![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/SCD-1_1.png?raw=true "Title")

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/SCD-1_2.png?raw=true "Title")

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/SCD-1_3.png?raw=true "Title")


#### 📚 Slowly Changing Dimension Type-2 📚

- In SCD Type-2 , we simply **store the historical data as well as the new data**.
- In SCD Type-2 , we store **unlimited history of data**.
- The new data is stored in several ways which are as follows:

  1. **Versioning** : In SCD-Type 2 Versioning, the latest data is stored is allotted with a latest sequence number. The latest data is allotted with new number. The latest number represents the current row and the oldest sequence number represents the previous row. (Here we simply add a new column named version and assign a latest value to it)

  2. **Flagging** : In SCD-Type 2 Flagging, the latest data is flagged with a True boolean value which is '1'. The old data is represented by '0'. (Here we simply add a new column named flag and assign a value to it)

  3. **Effective Date** : In SCD-Type 2 Effective date, we simply add two new columns start date and end date, where start date represents the effectiveness of value and end date reprsents the end of effectiveness of that value.


