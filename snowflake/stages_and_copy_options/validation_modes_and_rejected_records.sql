use database LEARNING;
use schema EXTERNAL_STAGES;

show stages ;

show file formats;


-- create table


create OR replace table LEARNING.PUBLIC.orders_validation (
    ORDER_ID VARCHAR(30),
    AMOUNT INT,
    PROFIT INT,
    QUANTITY INT,
    CATEGORY VARCHAR(30),
    SUBCATEGORY VARCHAR(30));

-- create validation stage for good records

create or replace stage LEARNING.external_stages.aws_stage_validation_ok_example
url = 's3://snowflakebucket-copyoption/size/';

-- list the files
list @LEARNING.external_stages.AWS_STAGE_VALIDATION_ERROR_EXAMPLE;

-- check if any error

COPY INTO LEARNING.PUBLIC.orders_validation
    FROM @LEARNING.external_stages.aws_stage_validation_ok_example
    file_format= FF_CSV
    pattern='.*Order.*'
    VALIDATION_MODE = RETURN_ERRORS;

-- check first 10 records

COPY INTO LEARNING.PUBLIC.orders_validation
    FROM @LEARNING.external_stages.aws_stage_validation_ok_example
    file_format= FF_CSV
    pattern='.*Order.*'
    VALIDATION_MODE = RETURN_10_ROWS ;

-- create validation stage for bad record

create or replace stage LEARNING.external_stages.aws_stage_validation_error_example
    url ='s3://snowflakebucket-copyoption/returnfailed/';

-- show all errors --
copy into LEARNING.PUBLIC.orders_validation
    from @LEARNING.external_stages.aws_stage_validation_error_example
    file_format = FF_CSV
    pattern='.*Order.*'
    validation_mode=return_errors;


-- show all errors --
copy into LEARNING.PUBLIC.orders_validation
    from @LEARNING.external_stages.aws_stage_validation_error_example
    file_format = FF_CSV
    pattern='.*error.*'
    validation_mode=return_1_rows;

------------Save Rejected Records in Table-----------

--Storing rejected /failed results in a table
CREATE OR REPLACE TABLE rejected AS
select rejected_record from table(result_scan(last_query_id()));

select * from rejected;

-- Adding more additional records --
INSERT INTO rejected
select rejected_record from table(result_scan(last_query_id()));

---- Saving rejected files without VALIDATION_MODE ----

COPY INTO COPY_DB.PUBLIC.ORDERS
    FROM @aws_stage_copy
    file_format= (type = csv field_delimiter=',' skip_header=1)
    pattern='.*Order.*'
    ON_ERROR=CONTINUE;


select * from table(validate(orders, job_id => '_last'));

---- Working with rejected records ----

SELECT REJECTED_RECORD FROM rejected;

CREATE OR REPLACE TABLE rejected_values as
SELECT
SPLIT_PART(rejected_record,',',1) as ORDER_ID,
SPLIT_PART(rejected_record,',',2) as AMOUNT,
SPLIT_PART(rejected_record,',',3) as PROFIT,
SPLIT_PART(rejected_record,',',4) as QUATNTITY,
SPLIT_PART(rejected_record,',',5) as CATEGORY,
SPLIT_PART(rejected_record,',',6) as SUBCATEGORY
FROM rejected;

select * from LEARNING.INFORMATION_SCHEMA.LOAD_HISTORY;

select * from SNOWFLAKE.Account_usage.LOAD_HISTORY;