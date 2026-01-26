-- Business question:
-- How did the performance of key markets (China, United States, Brasil, and South Korea) evolve in 2023–2024 in terms of revenue, number of orders, and average order value (AOV)?

-- Description:
-- This query aggregates data to calculate revenue, order count,and average order value by specific country and year.



SELECT users.country,
  COUNT(DISTINCT orders.order_id) AS orders,
  ROUND(SUM(items.sale_price),2) AS revenue,
  EXTRACT(YEAR FROM orders.created_at) AS year,
  ROUND(SAFE_DIVIDE(SUM(items.sale_price),COUNT(DISTINCT orders.order_id)),2) AS aov
FROM `practice-yooo.portfolio_practice.orders` AS orders
JOIN `practice-yooo.portfolio_practice.order_items` AS items
  ON orders.order_id = items.order_id
JOIN `practice-yooo.portfolio_practice.users` AS users
  ON users.id = orders.user_id
WHERE users.country IN ('China', 'South Korea' ,'United States', 'Brasil')
  AND EXTRACT(YEAR FROM orders.created_at) IN (2023,2024)
GROUP BY users.country,year
ORDER BY users.country,year;
