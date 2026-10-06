SELECT * FROM suya_orders LIMIT 10;
SELECT branch,item,total_ngn FROM suya_orders;  
SELECT * FROM suya_orders WHERE branch = 'Kaduna Central';
SELECT * FROM suya_orders ORDER BY total_ngn DESC LIMIT 5;
SELECT branch, COUNT(*) AS order_count FROM suya_orders GROUP BY branch ORDER BY order_count DESC;
SELECT  branch, SUM (total_ngn) AS total FROM suya_orders group by branch ORDER BY total_ngn DESC;
SELECT item, AVG(rating) AS average_rating FROM suya_orders GROUP by item ORDER by rating DESC;
SELECT o.*, b.zone FROM suya_orders o JOIN branches b ON o.branch = b.branch;
SELECT b.zone, SUM(o.total_ngn) AS total_sales FROM suya_orders o JOIN branches b ON o.branch = b.branch GROUP BY b.zone ORDER BY total_sales DESC;
SELECT * 
FROM suya_orders 
WHERE total_ngn > (SELECT AVG(total_ngn) FROM suya_orders);
SELECT *,
       CASE 
           WHEN total_ngn >= 8000 THEN 'Big'
           ELSE 'Normal'
       END AS order_size
FROM suya_orders;
