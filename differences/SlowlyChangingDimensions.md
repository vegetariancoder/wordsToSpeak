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


- The type-0 is a fixed dimension.
- The data in the type-0 never changes.
- The data get loaded in the beginning of the project, and it never changes.


#### 📚 Slowly Changing Dimension Type-1 📚

- In SCD Type-1, we simply overwrite the historical data with the new data.
- In SCD Type-1, we do not store any historical information (which means the historical data is simply overwritten by new data.)

    
    Advantage : It is easy to maintain and takes less space.
    Disadvantage : Historical data is removed.


