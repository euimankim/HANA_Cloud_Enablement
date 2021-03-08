select c_customer_id, c_first_name || ' ' || c_last_name, sum(ws_net_profit)
from customer, web_sales
where c_customer_sk = ws_bill_customer_sk
group by c_customer_id, c_first_name || ' ' || c_last_name;

select c_customer_id, c_first_name || ' ' || c_last_name, sum(ss_net_profit)
from customer, dl_store_sales
where c_customer_sk = ss_customer_sk
group by c_customer_id, c_first_name || ' ' || c_last_name
;