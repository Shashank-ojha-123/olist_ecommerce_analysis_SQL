select 
TO_CHAR(o.order_purchase_timestamp,'YYYY-MM') AS order_month,
count(distinct o.order_id) as total_orders,
 round(sum(oi.price)::numeric,2)as monthly_revenue
from olist_orders o
join  olist_order_items oi
on o.order_id = oi.order_id
where o.order_status ='delivered'
group by order_month
order by order_month;