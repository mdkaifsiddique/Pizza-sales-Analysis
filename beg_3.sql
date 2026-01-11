-- Identify the highest-priced pizza.
 
-- SELECT (price) FROM pizzas
-- ORDER BY price DESC LIMIT 1

SELECT pizzas.price , pizza_types.name , pizza_types.category
FROM pizzas JOIN pizza_types
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY price DESC LIMIT 1;

