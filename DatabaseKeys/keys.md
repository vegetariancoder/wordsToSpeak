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

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/primarykey.png?raw=true "primarykey")


In this table, <code>StudID</code>, <code>Roll No</code>, <code>Email</code> are qualified to become a primary key. But since StudID is the primary key, Roll No, Email becomes the alternative key.


#### Candidate Key

- A Candidate Key is a set of attributes that uniquely identifies tuples in table.
- A Candidate Key is nothing but a group of super keys with no repeated attributes.
- Each table should have at least one Candidate key.
- The primary key is selected from Candidate key.
- A table can multiple candidate key but it should only have one primary key.


![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/primarykey.png?raw=true "primarykey")

In the given table <code>Stud ID</code>, <code>Roll No</code>, and <code>email</code> are candidate keys which help us to uniquely identify the student record in the table.

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/candidatekey.png?raw=true "candidatekey")


#### Foreign Key

- FOREIGN KEY is a column that creates a relationship between two tables.
- The purpose of Foreign keys is to maintain data integrity and allow navigation between two different instances of an entity.


#### Compound Key

- COMPOUND KEY has two or more attributes that allow you to uniquely recognize a specific record.
- It is possible that each column may not be unique by itself within the database. However, when combined with the other column or columns the combination of composite keys become unique. 

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/compoundkey.png?raw=true "compoundkey")

For example <code>OrderNo</code> it is not unique but when combined with <code>ProductId</code> then become useful.


