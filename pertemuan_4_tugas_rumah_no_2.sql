//JOIN

SELECT customer.`customer_id`, customer_name, customer_address,
order_id, order_date, qty, amount 
FROM customer
INNER JOIN orders
ON customer.`customer_id` = orders.`customer_id`

SELECT customer.`customer_id`, customer_name, customer_address,
order_id, order_date, qty, amount 
FROM customer
LEFT OUTER JOIN orders
ON customer.`customer_id` = orders.`customer_id`

//UNION

SELECT customer.`customer_id`, customer_name, customer_address,
order_id, order_date, qty, amount 
FROM customer
INNER JOIN orders
ON customer.`customer_id` = orders.`customer_id`
UNION ALL
SELECT customer.`customer_id`, customer_name, customer_address,
order_id, order_date, qty, amount 
FROM customer
LEFT OUTER JOIN orders
ON customer.`customer_id` = orders.`customer_id`
