-- Customer Growth & Quality

-- Customer Growth: first-time buyers over time

SELECT
  DATE(MIN(created_at)) AS first_order_date,
  COUNT(*) AS new_customers
FROM `practice-yooo.portfolio_practice.orders`
WHERE user_id IS NOT NULL
GROUP BY user_id
ORDER BY first_order_date;

-- Customer Quality: repeat customer rate

SELECT
  COUNT(*) AS total_customers,
  SUM(CASE WHEN orders_cnt >= 2 THEN 1 ELSE 0 END) AS repeat_customers,
  ROUND(SUM(CASE WHEN orders_cnt >= 2 THEN 1 ELSE 0 END) / COUNT(*), 2) AS repeat_rate
FROM (
  SELECT
    user_id,
    COUNT(*) AS orders_cnt
  FROM `practice-yooo.portfolio_practice.orders`
  WHERE user_id IS NOT NULL
  GROUP BY user_id);
