# Snowflake Architecture

![Alt text](https://github.com/vegetariancoder/wordsToSpeak/blob/main/images/snowflake_architecture.png?raw=true "Title")


#### Storage Layer
- The data is stored on cloud (either on AWS S3 bucket or Google cloud storage or Azure Blob Storage).

- The data in snowflake is stored in Hybrid Columnar Storage (means the data is first compressed and saved in blobs).


#### Query Processing Layer (Muscle of the System)

- This layer consist of virtual warehouse (virtual compute resource) which are different from traditional warehouses (it does not store any data) but only performs the processing.
- This layer performs **Massive Parallel Processing (MPP)**, that is why is it known as **Muscle of the system**.
- The queries can computed parallely by these virtual compute resources.

#### Cloud Services (Brain of the system)
- This layer is responsible for
  - Managing Infrastructure.
  - Access Control.
  - Security.
  - Metadata
  - To name a few....
