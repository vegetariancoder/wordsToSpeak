# Delta Table Cloning and Views

There are two ways to clone a delta table:
1. Deep Cloning.
2. Shallow cloning

#### Deep Cloning
- It fully copies data + metadata from a source table to target table.
  ```
  create table table_clone
  deep clone source_table
  ```
  
- It can sync the changes from source table to target table.
- It takes some time for large dataset.


#### Shallow Cloning
- It quickly creates a copy of a table (just copy the transactional logs)
  ```
  create table table_clone
  shallow clone source_table
  ```
  
## Views in Delta Lake

1. Stored View : They are **persisted in the database and is not temporary**. They are created under default database.
2. Temporary View : They are **temporary and session scoped** and is created under default database.
3. Global Temporary View : They are **temporary and session scoped** and is created under **global temp** database.