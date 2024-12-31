use learning;
use schema external_stages;


select * from CUSTOMER_INFO;


-- drop table for test

drop table LEARNING.PUBLIC.customer_info;

-- select the table

select * from LEARNING.PUBLIC.customer_info;

-- use the undrop command

undrop table LEARNING.PUBLIC.customer_info;
