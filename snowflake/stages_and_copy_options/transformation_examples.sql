use database LEARNING;
use schema EXTERNAL_STAGES;

show stages ;
show file formats ;

list @AWS_STAGE;

-- Example -1
-- In this case we are going to use '$' sign for selecting the column

create or replace table LEARNING.EXTERNAL_STAGES.orders_example_1 (
    order_id VARCHAR(30),
    amount INT
    );

--loading the data

copy into LEARNING.EXTERNAL_STAGES.ORDERS_EXAMPLE_1
from (select stage.$1,stage.$2 from @LEARNING.EXTERNAL_STAGES.AWS_STAGE as stage)
file_format  = FF_CSV
files = ('OrderDetails.csv');

select * from orders_example_1;


-- Example -2
-- In this case we are going to create run time flag for query and load it

create or replace table LEARNING.EXTERNAL_STAGES.orders_example_2 (
    order_id VARCHAR(30),
    amount INT,
    profit INT,
    profit_able_flag varchar(30)
    );


-- loading the data

copy into LEARNING.EXTERNAL_STAGES.orders_example_2
from (select
          stage.$1,
          stage.$2,
          stage.$3,
          IFF(cast(stage.$3 as int) > 0, 'profitable', 'non-profitable')
    from @LEARNING.EXTERNAL_STAGES.AWS_STAGE as stage)
file_format  = FF_CSV
files = ('OrderDetails.csv');

select * from orders_example_2;


-- Example -3
-- In this case we are going to use subset of columns instead of all columns to load into the table.


create or replace table LEARNING.EXTERNAL_STAGES.orders_example_3 (
    order_id VARCHAR(30),
    amount INT,
    profit INT,
    profit_able_flag varchar(30)
    );

-- loading the data

copy into LEARNING.EXTERNAL_STAGES.orders_example_3 (order_id, profit)
from (select
          stage.$1,
          stage.$3
    from @LEARNING.EXTERNAL_STAGES.AWS_STAGE as stage)
file_format  = FF_CSV
files = ('OrderDetails.csv');