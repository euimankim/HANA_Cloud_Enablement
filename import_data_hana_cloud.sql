--  DEVUSER로 실행

-- 1 단계 SQL
import from csv file
's3-us-east-2://AKIAIKRDGYHC2YTW64SA:M7MjJUTtOYA11PsSbEVWsBoHzGAWPLgPwTTEhJE2@hanacloud/customer.dat'
into CUSTOMER
with
field delimited by '|'
threads 4;

-- 2 단계 SQL
select count(*) from CUSTOMER;

-- 3 단계 SQL
import from csv file
's3-us-east-2://AKIAIKRDGYHC2YTW64SA:M7MjJUTtOYA11PsSbEVWsBoHzGAWPLgPwTTEhJE2@hanacloud/web_sales.dat'
into WEB_SALES
with
field delimited by '|'
threads 4;

-- 4 단계 SQL
select count(*) from WEB_SALES;
