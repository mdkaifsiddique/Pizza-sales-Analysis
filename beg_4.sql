-- Identify the most common pizza size ordered.

SELECT 
    pizzas.size,
    COUNT(orders_details.order_details_id) AS most_order
FROM
    pizzas
        JOIN
    orders_details ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY pizzas.size ORDER BY most_order DESC LIMIT 1;
