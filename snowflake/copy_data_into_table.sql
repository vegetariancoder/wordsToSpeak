use learning;

-- create table
create table google_gmail_emails
(
    id        int  null,
    from_user text null,
    to_user   text null,
    day       int  null
);

-- show tables
show tables ;

-- select data
select * from CREDITCARD;
select * from google_gmail_emails;
select count(*) from CREDITCARD;
truncate table CREDITCARD;


-- copy data from stage
copy into CREDITCARD from @my_first_stage;

-- to copy a specific file from the stage
copy into CREDITCARD from @my_first_stage files = ('<filename>.csv');
copy into google_gmail_emails from @tsv_stage files = ('google_gmail_emails.csv.gz');

-- to copy a wildcard from the stage
copy into CREDITCARD from @my_first_stage pattern='.*csv.gz';

