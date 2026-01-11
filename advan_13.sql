-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

SELECT name , category , revenue  FROM
(SELECT category,name,revenue, RANK() OVER(PARTITION BY category ORDER BY revenue DESC) AS rankk FROM
(SELECT pizza_types.category , pizza_types.name , SUM(pizzas.price*orders_details.quantity) AS revenue
FROM pizza_types JOIN pizzas
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN orders_details
ON orders_details.pizza_id = pizzas.pizza_id
GROUP BY category,name) AS a) AS b
WHERE rankk <=3 ;