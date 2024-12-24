create database LEARNING;
use database LEARNING;
create schema external_stages;
create database EXERCISE_DB;

-- check for current account
select current_account();


-- check for current region
select current_region();


-- create public stage using S3
create or replace stage LEARNING.external_stages.aws_stage url = 's3://bucketsnowflakes3';

-- see files in external stages
LIST @aws_stage;

-- describe a stage
desc stage aws_stage;

-- create table orders
create OR replace table LEARNING.PUBLIC.orders (
    ORDER_ID VARCHAR(30),
    AMOUNT INT,
    PROFIT INT,
    QUANTITY INT,
    CATEGORY VARCHAR(30),
    SUBCATEGORY VARCHAR(30));

-- drop table
drop table LEARNING.PUBLIC.orders;



select * from ORDERS;
select count(*) from orders;

-- insert data into orders table using copy table command

copy into orders
from @aws_stage
file_format = (type = csv field_delimiter=',' skip_header=1)
pattern='.*Order.*';

-- create file format
create or replace file format ff_csv type = 'CSV' field_delimiter = ',' skip_header = 1 field_optionally_enclosed_by ='"';

show file formats ;

-- copy into data using file format
copy into orders
from @aws_stage
file_format = ff_csv
pattern='.*Order.*';



-- create file format
create file format csv_credit_card_format type = 'CSV' FIELD_DELIMITER = ',' SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY='"';
create file format tsv_google_gmail type = 'CSV' FIELD_DELIMITER = '\t' SKIP_HEADER = 1;

-- show file formats
show file formats;

-- create stage command
create stage my_first_stage file_format = (type = 'CSV' FIELD_DELIMITER = ',' SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY='"');
create stage tsv_stage file_format = tsv_google_gmail;
create stage s3_stage file_format = (type = 'CSV' FIELD_DELIMITER = ';' SKIP_HEADER = 1);
create stage s3_stage_public file_format = (type = 'CSV' FIELD_DELIMITER = ';' SKIP_HEADER = 1) url = 's3://snowflake-assignments-mc/loadingdata/';

-- alter stage
alter stage my_first_stage set file_format = csv_credit_card_format;
alter stage s3_stage set url = 's3://snowflake-assignments-mc/loadingdata/';

-- show stages
show stages ;

-- describe a stage
desc stage my_first_stage;
desc stage s3_stage;

-- list all of the files in the stage
LIST @my_first_stage;
LIST @tsv_stage;
LIST @s3_stage_public;

-- put data into the stage
PUT file:///Users/sahilnagpal/Downloads/Creditcardtransactions.csv @my_first_stage;
PUT file:///Users/sahilnagpal/Desktop/finding-sql/stratascratch/data/google_gmail_emails.csv @tsv_stage;


create table customers(
    ID INT,
    first_name varchar,
    last_name varchar,
    email varchar,
    age int,
    city varchar
);

copy into customers from @s3_stage_public;

select count(*) from customers;

