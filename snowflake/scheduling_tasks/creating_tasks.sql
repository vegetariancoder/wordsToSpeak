use learning;
use schema external_stages;

-- first we will create a table on which this task will run

CREATE OR REPLACE TABLE LEARNING.PUBLIC.customers_task (
    CUSTOMER_ID INT AUTOINCREMENT START = 1 INCREMENT = 1,
    FIRST_NAME VARCHAR(40) DEFAULT 'JENNIFER' ,
    CREATE_DATE DATE);


show warehouses ;
-- create task

create or replace task customer_insert
warehouse = COMPUTE_WH
schedule = '1 minute'
as
insert into customers_task(CREATE_DATE) values (current_timestamp);

select * from customers_task;

-- show tasks
show tasks ;

-- all the newly created tasks are always SUSPENDED - to run them
alter task customer_insert resume;
alter task customer_insert suspend ;