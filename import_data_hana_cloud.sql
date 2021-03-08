--  DEVUSER로 실행

-- Step 1
import from csv file
's3-us-east-2://AKIAIKRDGYHC2YTW64SA:M7MjJUTtOYA11PsSbEVWsBoHzGAWPLgPwTTEhJE2@hanacloud/customer.dat'
into CUSTOMER
with
field delimited by '|'
threads 4;

-- Step 2
select count(*) from CUSTOMER;

-- Step 3
import from csv file
's3-us-east-2://AKIAIKRDGYHC2YTW64SA:M7MjJUTtOYA11PsSbEVWsBoHzGAWPLgPwTTEhJE2@hanacloud/web_sales.dat'
into WEB_SALES
with
field delimited by '|'
threads 4;

-- Step 4
select count(*) from WEB_SALES;
