use database LEARNING;
create database EXERCISE_DB;

-- check for current account
select current_account();


-- check for current region
select current_region();

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

