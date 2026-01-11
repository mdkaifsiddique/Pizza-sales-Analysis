-- Advance level
-- Calculate the percentage contribution of each pizza type to total revenue.


SELECT pizza_types.category , ROUND(SUM(pizzas.price*orders_details.quantity)
 / (SELECT SUM(orders_details.quantity*pizzas.price)
FROM orders_details JOIN pizzas 
ON orders_details.pizza_id = pizzas.pizza_id)*100 ,2) AS revenue
FROM pizzas JOIN orders_details
ON pizzas.pizza_id = orders_details.pizza_id
JOIN pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
GROUP BY category ORDER BY revenue DESC;
