# Tables in Databricks

#### Managed Tables

- Managed tables are also known as **Internal tables**.
- Managed tables are owned by hive/databricks and also owned the table structure and data.

#### External Tables

- External tables are also known as **UnManaged tables**.
- External tables are not owned by hive/databricks and also the data is stored at some different **external location**.


#### Difference Between Managed Table and External Table 
| Managed Table                                                  | External Table                                                             |
|----------------------------------------------------------------|----------------------------------------------------------------------------|
| Managed table are created under the database directory         | External tables are created under external storage (not database location) |
| The data files and table structure is owned by hive/databricks | The data files and table structure is not owned by hive/databricks                    |


**Note**: Deleting/Dropping the managed table will delete the underlying data file because managed tables are created under the same database directory and owned by hive/databricks. Whereas Deleting/Dropping the external table will not delete the underlying data file because the files are stored at an external location (it only drops the table but not the data because hive/databricks has no control over the data.).