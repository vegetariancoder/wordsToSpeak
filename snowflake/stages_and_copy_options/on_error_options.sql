use database LEARNING;
use schema EXTERNAL_STAGES;

-- first create a stage of error files

create or replace stage LEARNING.EXTERNAL_STAGES.aws_stage_error_example
url = 's3://bucketsnowflakes4';

-- list the files in stage
list @aws_stage_error_example;

-- create table

create OR replace table LEARNING.PUBLIC.orders_error (
    ORDER_ID VARCHAR(30),
    AMOUNT INT,
    PROFIT INT,
    QUANTITY INT,
    CATEGORY VARCHAR(30),
    SUBCATEGORY VARCHAR(30));

-- Normal Use Case

COPY INTO LEARNING.PUBLIC.orders_error
    FROM @LEARNING.EXTERNAL_STAGES.aws_stage_error_example
     file_format= FF_CSV
     files = ('OrderDetails_error.csv');

 -- Validating table is empty
SELECT count(*) FROM LEARNING.PUBLIC.orders_error ;

-- Error Handling Using the CONTINUE keyword using ON_ERROR

COPY INTO LEARNING.PUBLIC.orders_error
    FROM @LEARNING.EXTERNAL_STAGES.aws_stage_error_example
    file_format= FF_CSV
    files = ('OrderDetails_error.csv')
    ON_ERROR = 'CONTINUE';

-- truncating the table
TRUNCATE TABLE LEARNING.PUBLIC.orders_error;

-- Error handling using the ON_ERROR option = ABORT_STATEMENT (default)
COPY INTO LEARNING.PUBLIC.orders_error
    FROM @LEARNING.EXTERNAL_STAGES.aws_stage_error_example
    file_format= FF_CSV
    files = ('OrderDetails_error.csv','OrderDetails_error2.csv')
    ON_ERROR = 'ABORT_STATEMENT';

-- Error handling using the ON_ERROR option = SKIP_FILE
COPY INTO LEARNING.PUBLIC.orders_error
    FROM @LEARNING.EXTERNAL_STAGES.aws_stage_error_example
    file_format= FF_CSV
    files = ('OrderDetails_error.csv','OrderDetails_error2.csv')
    ON_ERROR = 'SKIP_FILE';

-- Error handling using the ON_ERROR option = SKIP_FILE_<number>
COPY INTO LEARNING.PUBLIC.orders_error
    FROM @LEARNING.EXTERNAL_STAGES.aws_stage_error_example
    file_format= FF_CSV
    files = ('OrderDetails_error.csv','OrderDetails_error2.csv')
    ON_ERROR = 'SKIP_FILE_3';