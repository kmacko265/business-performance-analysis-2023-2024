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
