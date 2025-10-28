CREATE DATABASE online_sales;
USE online_sales;
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  order_date DATE,
  amount DECIMAL(10,2),
  product_id INT
);
INSERT INTO orders (order_date, amount, product_id) VALUES
('2024-01-15', 100.00, 1),
('2024-01-20', 150.00, 2),
('2024-02-10', 200.00, 1),
('2024-02-11', 50.00, 3),
('2024-03-05', 75.00, 2),
('2024-03-15', 120.00, 1),
('2024-04-01', 90.00, 2),
('2024-04-10', 110.00, 3);

SELECT 
  EXTRACT(YEAR FROM order_date) AS order_year,
  EXTRACT(MONTH FROM order_date) AS order_month,
  SUM(amount) AS monthly_revenue,
  COUNT(DISTINCT order_id) AS order_volume
FROM 
  orders
GROUP BY 
  order_year, order_month
ORDER BY 
  order_year, order_month;

