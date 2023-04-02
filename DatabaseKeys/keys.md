# DBMS Keys: Candidate, Super, Primary, Foreign Key Types with Example


### What are Keys

- Keys help us to identify rows in a table.
- It also allows to establish a relationship between tables and helps to identify the relation between them.

### Types of Keys

#### Super Key
- A Super Key is a **group of multiple keys** which identify a rows in a table. A super key may have additional attributes that are not needed for unique identification.

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/superkey.png?raw=true "superkey")


In the above-given example, <code>EmpSSN</code> and <code>EmpNum</code> name are superkeys.

#### Primary Key
- A primary key is a column or a group of columns that uniquely identify a row.
- A primary key can't be duplicate which means it can't appear more than once.

Rules of Primary Key
- A table can not have more than 1 primary key.
- A primary key column can not be null.
- The value of primary won't be change if any foreign key is referring to it.

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/primarykey.png?raw=true "primarykey")

In the following example, <code>StudID</code> is a Primary Key.

#### Alternate Key
- Alternate key is a column or group of column that uniquely identify a row.
- A table can have multiple choice of primary key, but it can only have one primary key so the other uniquely identify keys are Alternate Keys.


In this table, <code>StudID</code>, <code>Roll No</code>, <code>Email</code> are qualified to become a primary key. But since StudID is the primary key, Roll No, Email becomes the alternative key.

