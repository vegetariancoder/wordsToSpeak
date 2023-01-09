# Advanced Delta Lake Concept.


#### Time Travel

- Audit data changes : We can query older version of data. We can use the command.
    ```
  describe history <table name>
  ```
  - Using a timestamp
    ```
    select * from <table name> TIMESTAMP AS OF "2019-01-01"
    ```
  - Using a version number : Every operation on the table allocates a version number
    ``` 
    select * from <table name> VERSION AS OF 36
    ```
    ```
    select * from <table name>@v36
    ```
    
#### Roll Back Versions

- Restore Table Command
    ```
  RESTORE TABLE <table name> TO TIMESTAMP AS OF "2019-01-01"
  ```
  ```
  RESTORE TABLE <table name> TO VERSION AS OF 36
  ```
  
#### Indexing

- Colocate column information.
  - OPTIMIZE command
    ```
    OPTIMIZE <table name> ZORDER BY <column name>
    ```
    

#### Vacuum Delta Table

- Cleaning up unused table data files
  - unused uncommitted files.
  - files that are no longer used.
  ```
  VACUUM <table name> <retention period>
  default retention period is 7
  ```
  
Note : Enable vacuum will kill time travel feature.