## <u>STAR SCHEMA vs SNOWFLAKE SCHEMA</u>

*Question* : *What is Multidimensional schema?*

*Answer* : Multidimensional schema is a paradigm to model data warehouse systems


<u>**Type of Multi Dimensional Schema**</u>
1. Star Schema.
2. Snowflake Schema.
3. Galaxy Schema.

### ☀️ Star Schema ###

♦ In star schema, the **centre of the star is fact table** and the fact table is **connected/surrounded by multiple dimensional tables**. 

♦ In star schema, there is **only one fact table** and there are **multiple dimensional table**.

♦ The star schema is **good for querying large datasets**.

### ☀️ Characterstics of Star Schema ###

♦ Every dimension in star schema is represented only by one dimension table.

♦ The dimension table should **contain set of attributes**.

♦ The **fact table and dimension table are connected** using a **foreign key**.

♦ The star schema provides **optimized disk space**.

♦ The star schema is usually **used** by **Business Insights (BI) Tools**

![Alt text](/Users/sahilnagpal/Desktop/wordsToSpeak/images/starSchema.png?raw=true "Title")



### ☀️ Snowflake Schema ###

♦ The snowflake schema is **logical representation of tables in multidimensional database**.

♦ In snowflake schema, there is **one fact table** and it is **surrounded/connected by several dimensional and sub-dimensional tables**.

♦ The snowflake schema is the **extended version of star schema** where there is the addition of sub-dimensional tables (more connected dimensional tables)


### ☀️ Characterstics of Snowflake Schema ###

♦ Due to **multiple tables** , the **query performance is reduced**.

♦ Easier to **add a dimension in a schema**.

![Alt text](/Users/sahilnagpal/Desktop/wordsToSpeak/images/snowflakeSchema.png?raw=true "Title")


| **Star Schema**                                                     | **Snowflake Schema**                                                       |
|---------------------------------------------------------------------|----------------------------------------------------------------------------|
| ♦ Contains a fact table surrounded by several dimensional table     | ♦ Contains only on fact table surrounded by several dimensional table      |
| ♦ Only single join is enough to connect with any dimensional table. | ♦ Need multiple joins to make relation with dimensional table.             |
| ♦ Simple DB design.                                                 | ♦ Complex DB design.                                                       |
| ♦ The data is not normalized                                        | ♦ The data is normalized and structured.                                   |
| ♦ Single dimension tables contain aggregated data.                  | ♦ The data is splitted in multiple dimensional and sub dimensional tables. |

