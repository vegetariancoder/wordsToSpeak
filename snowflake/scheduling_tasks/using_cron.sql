use learning;
use schema external_stages;


CREATE OR REPLACE TASK CUSTOMER_INSERT
    WAREHOUSE = COMPUTE_WH
    SCHEDULE = 'USING CRON 27 15 * * * UTC'
    AS
    INSERT INTO CUSTOMERS_TASK(CREATE_DATE) VALUES(CURRENT_TIMESTAMP);


-- show tasks
show tasks ;

alter task CUSTOMER_INSERT suspend ;


select * from CUSTOMERS_TASK;


-- select status of tasks
select * from table ( information_schema.task_history() );

# __________ minute (0-59)
# | ________ hour (0-23)
# | | ______ day of month (1-31, or L)
# | | | ____ month (1-12, JAN-DEC)
# | | | | __ day of week (0-6, SUN-SAT, or L)
# | | | | |
# | | | | |
# * * * * *