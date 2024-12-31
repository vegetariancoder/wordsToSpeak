use learning;
use schema external_stages;

CREATE OR REPLACE TABLE LEARNING.PUBLIC.customer_info (
   id int,
   first_name string,
  last_name string,
  email string,
  gender string,
  Job string,
  Phone string);

-- create stage
CREATE OR REPLACE STAGE LEARNING.external_stages.time_travel_stage
    URL = 's3://data-snowflake-fundamentals/time-travel/'
    file_format = FF_CSV;

LIST @LEARNING.external_stages.time_travel_stage;

-- copy data into table

COPY INTO LEARNING.PUBLIC.customer_info
from @LEARNING.external_stages.time_travel_stage
files = ('customers.csv');


-- Use-case: Update data (by mistake)

UPDATE LEARNING.PUBLIC.customer_info
SET FIRST_NAME = 'Joyen' ;

select * from LEARNING.PUBLIC.customer_info;


-- Using time travel: Method 1 - 2 minutes back

select
    *
from
    LEARNING.PUBLIC.customer_info
at (OFFSET => -60 * 1.5); -- 1.5 here is minute


-- Using timestamp
ALTER SESSION SET TIMEZONE ='UTC';
SELECT DATEADD(DAY, 1, CURRENT_TIMESTAMP); -- 2024-12-30 23:42:20.295000000 +00:00


SELECT * FROM LEARNING.PUBLIC.customer_info before (timestamp => '2024-12-29 23:39:20.295'::timestamp);

show tables;
