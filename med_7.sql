-- Determine the distribution of orders by hour of the day.

SELECT hour(order_time) AS hour, count(order_id) AS distribution
FROM orders
GROUP BY hour;