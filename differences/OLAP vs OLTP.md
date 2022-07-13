## <u>OLTP vs OLAP</u>

**OLAP** : OLAP stands for **Online Analytical Processing**, it is a category of software tool which is majorily used for ️**analysis of data for business purpose**️.

♦️ OLAP allows us to ️**analyze data from multiple databases**️.

♦️ This is primarily used for ️**data analysis instead of data processing**️

**OLTP** : OLTP stands for **Online Transaction Processing**. This allows us to **process the data for day to day transaction.**

| **Basis of Comparison** | **OLTP**                                                             | **OLAP**                                                  |
|-------------------------|----------------------------------------------------------------------|-----------------------------------------------------------|
| ♦ Basic                 | It is online transactional system and manage database modification.  | It is for online data analysis and data retrieving system |
| ♦ Focus                 | Mainly for CRUD Operations (Create, Replace, Update, Delete).        | Extract data mainly for anaylisis purpose.                |
| ♦ Data                  | OLTP and its transactions (on databases) are original source of data | Multiple OLTP databases are the main source of data.      |
| ♦ Transactions          | OLTP has short transactions (Short Query Execution)                  | OLAP has long transactions (Long Query Execution)         |
| ♦ Normalization         | Tables are in 3NF Form                                               | Tables are not normalized                                 |