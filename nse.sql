-- DEVUSER로 실행

-- 1 단계 SQL
select table_name, load_unit from tables where table_name = 'CATALOG_SALES';

-- 2 단계 SQL
alter table CATALOG_SALES page loadable;

-- 3 단계 SQL
select table_name, load_unit from tables where table_name = 'CATALOG_SALES';

-- 4 단계 SQL
import from csv file
's3-us-east-2://AKIAIKRDGYHC2YTW64SA:M7MjJUTtOYA11PsSbEVWsBoHzGAWPLgPwTTEhJE2@hanacloud/catalog_sales.dat'
into CATALOG_SALES
with
field delimited by '|'
threads 4;

merge delta of CATALOG_SALES;

unload CATALOG_SALES;

-- 5 단계 SQL
select count(*), sum(cs_list_price) from CATALOG_SALES
group by cs_item_sk;

-- DBADMIN으로 실행

-- 6 단계 SQL
select port, max_size, allocated_size, used_size from M_BUFFER_CACHE_STATISTICS;
