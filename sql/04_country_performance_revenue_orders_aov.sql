-- Business question:
-- Which countries generate the highest revenue, and how do the number of orders and average order value (AOV) compare across countries?

-- Description:
-- This query aggregates e-commerce data at the country level to calculate total revenue,distinct order count, and average order value (AOV).
-- Results are sorted by revenue to identify the most valuable markets.


SELECT
  u.country,
  ROUND(SUM(oi.sale_price),2) AS revenue,
  COUNT(DISTINCT o.order_id) AS orders,
  ROUND(SAFE_DIVIDE(SUM(oi.sale_price),COUNT(DISTINCT o.order_id)),2) AS AOV
FROM `practice-yooo.portfolio_practice.orders` o
JOIN `practice-yooo.portfolio_practice.order_items` oi
  ON o.order_id = oi.order_id
JOIN `practice-yooo.portfolio_practice.users` u
  ON o.user_id = u.id
GROUP BY u.country
ORDER BY revenue DESC;
