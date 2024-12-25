use learning;
use schema external_stages;

-- create file format

CREATE OR REPLACE FILE FORMAT FF_PARQUET
TYPE = 'parquet';

-- create stage

CREATE OR REPLACE STAGE LEARNING.external_stages.aws_parquet_stage
url = 's3://snowflakeparquetdemo'
FILE_FORMAT = FF_PARQUET;


LIST  @LEARNING.external_stages.aws_parquet_stage;

// Syntax for Querying unstructured data

SELECT
$1:__index_level_0__,
$1:cat_id,
$1:date,
$1:"__index_level_0__",
$1:"cat_id",
$1:"d",
$1:"date",
$1:"dept_id",
$1:"id",
$1:"item_id",
$1:"state_id",
$1:"store_id",
$1:"value"
FROM @LEARNING.external_stages.aws_parquet_stage;


// Querying with conversions and aliases

SELECT
$1:__index_level_0__::int as index_level,
$1:cat_id::VARCHAR(50) as category,
DATE($1:date::int ) as Date,
$1:"dept_id"::VARCHAR(50) as Dept_ID,
$1:"id"::VARCHAR(50) as ID,
$1:"item_id"::VARCHAR(50) as Item_ID,
$1:"state_id"::VARCHAR(50) as State_ID,
$1:"store_id"::VARCHAR(50) as Store_ID,
$1:"value"::int as value
FROM @LEARNING.external_stages.aws_parquet_stage;