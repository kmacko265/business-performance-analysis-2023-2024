-- Day 2: Product Value vs Volume
-- Goal: Identify volume-driven vs value-driven products
-- Metrics: units sold (COUNT(*)), revenue (SUM(sale_price))

SELECT
  p.name,
  COUNT(*) AS units_sold,
  ROUND(SUM(oi.sale_price),2) AS revenue
FROM `practice-yooo.portfolio_practice.order_items` AS oi
JOIN `practice-yooo.portfolio_practice.products` AS p
  ON oi.product_id = p.id
GROUP BY p.name
ORDER BY revenue DESC;
