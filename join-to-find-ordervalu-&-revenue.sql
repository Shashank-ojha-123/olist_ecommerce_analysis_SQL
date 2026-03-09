select 
count(Distinct o.order_id) , 
count(distinct o.customer_id),
ROUND(sum(oi.price)::numeric, 2)  as Total_Revenue,
ROUND(AVG(oi.PRICE)::NUMERIC, 2)  as Avg_order_value
FROM olist_orders o
join olist_order_items oi
on o.order_id=oi.order_id
where order_status ='delivered'                 