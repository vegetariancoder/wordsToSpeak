use learning;
use schema external_stages;

-- create stage

create or replace stage  LEARNING.external_stages.aws_json_stage url='s3://bucketsnowflake-jsondemo';

list @LEARNING.external_stages.aws_json_stage;

-- create file format

create or replace file format FF_JSON type = 'JSON';

-- create table

create or replace  table LEARNING.PUBLIC.json_raw (
    raw_file variant);

-- load data into table

copy into LEARNING.PUBLIC.json_raw
from @LEARNING.external_stages.aws_json_stage
file_format = FF_JSON
files = ('HR_data.json');

select * from LEARNING.PUBLIC.JSON_RAW;

-- sample one record

-- {
--   "city": "Bakersfield",
--   "first_name": "Portia",
--   "gender": "Male",
--   "id": 1,
--   "job": {
--     "salary": 32000,
--     "title": "Financial Analyst"
--   },
--   "last_name": "Gioani",
--   "prev_company": [],
--   "spoken_languages": [
--     {
--       "language": "Kazakh",
--       "level": "Advanced"
--     },
--     {
--       "language": "Lao",
--       "level": "Basic"
--     }
--   ]
-- }

-- parse and analyse the data
select
    RAW_FILE:city,
    RAW_FILE:first_name as fname,
    $1:gender // make sure to use $1 only
from
    LEARNING.PUBLIC.JSON_RAW;

-- clean the data (which including quotes) and iterate over nested data

select
    RAW_FILE:job.salary :: int as salary
from LEARNING.PUBLIC.JSON_RAW;

-- deal with hierarchical data (using flatten function)
select
    RAW_FILE:first_name :: string as fname,
    RAW_FILE:spoken_languages[0].language :: string as language,
    RAW_FILE:spoken_languages[0].level :: string as level
from LEARNING.PUBLIC.JSON_RAW;


--right approach

select
    RAW_FILE:first_name :: string as fname,
    f.VALUE:language :: string as language,
    f.VALUE:level :: string as level
from LEARNING.PUBLIC.JSON_RAW, table ( flatten(RAW_FILE:spoken_languages)) as f;