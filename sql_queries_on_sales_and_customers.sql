---------------------------------------------Operations on SALES table-----------------------------------------------------------------
--1. Calculate total revenue for each product category.
SELECT product_category, SUM(revenue) AS total_revenue
FROM sales
GROUP BY product_category;

--2. Calculate total profit for each product category.
SELECT product_category, SUM(profit) AS total_profit
FROM sales
GROUP BY product_category;

--3. Calculate average revenue and profit per sale.
SELECT AVG(revenue) AS average_revenue, AVG(profit) AS average_profit
FROM sales;

--4. Calculate total revenue and profit for each customer.
SELECT customer_id, SUM(revenue) AS total_revenue, SUM(profit) AS total_profit
FROM sales
GROUP BY customer_id;

--5. Calculate total revenue and profit for each region.
SELECT region, SUM(revenue) AS total_revenue, SUM(profit) AS total_profit
FROM sales
GROUP BY region;

--6. Calculate the top-selling products by revenue.
SELECT product_name, SUM(revenue) AS total_revenue
FROM sales
GROUP BY product_name
ORDER BY total_revenue DESC

--7. Calculate the top-selling products by quantity.
SELECT product_name, SUM(revenue) AS total_quantity
FROM sales
GROUP BY product_name
ORDER BY total_quantity DESC

--8. Calculate the revenue and profit margins for each product.
SELECT product_name, (SUM(revenue) / SUM(cost)) AS revenue_margin, (SUM(profit) / SUM(cost)) AS profit_margin
FROM sales
GROUP BY product_name;

--9. Find the number of transactions for each customer segment:
SELECT customer_segment, COUNT(DISTINCT transaction_id) AS num_transactions
FROM sales
GROUP BY customer_segment;

--10. Find the top 3 customers with the highest revenue in the East region:
SELECT customer_name, SUM(revenue) AS total_revenue
FROM sales
WHERE region = 'East'
GROUP BY customer_name
ORDER BY total_revenue DESC

select * from sales


---------------------------------------------Operations on Customer Table-------------------------------------------------------------
--1. Retrieve all customers:
SELECT * 
FROM customers;

--2. Retrieve customer by ID:
SELECT * 
FROM customers 
WHERE customer_id = 3;

--3. Retrieve customers by age range:
SELECT * 
FROM customers 
WHERE customer_age BETWEEN 18 AND 25;

--4. Retrieve customers by gender:
SELECT * 
FROM customers 
WHERE customer_gender = 'Female';

--5. Retrieve customers by segment:
SELECT * 
FROM customers 
WHERE customer_segment = 'Premium';

--6. Count the number of customers:
SELECT COUNT(*) 
FROM customers;

--7. Average age of customers:
SELECT AVG(customer_age) 
FROM customers;

--8. Order customers by age in ascending order:
SELECT * 
FROM customers 
ORDER BY customer_age ASC;

--9. Delete a customer by ID:
DELETE FROM customers 
WHERE customer_id = 1;

--10. Select the top 5 customer segments by total number of customers:
SELECT customer_segment, COUNT(*) AS num_customers
FROM customers
GROUP BY customer_segment
ORDER BY num_customers DESC

--11. Select the average age of customers by gender:
SELECT customer_gender, AVG(customer_age) AS avg_age
FROM customers
GROUP BY customer_gender;

--12. Select the customer segments with the highest and lowest average age:
SELECT customer_segment, AVG(customer_age) AS avg_age
FROM customers
GROUP BY customer_segment
ORDER BY avg_age DESC

SELECT customer_segment, AVG(customer_age) AS avg_age
FROM customers
GROUP BY customer_segment
ORDER BY avg_age ASC

--13. Select all customers who are older than the average age:
SELECT *
FROM customers
WHERE customer_age > (SELECT AVG(customer_age) FROM customers);

--14. Select the total number of male and female customers by age group:
SELECT customer_gender, 
       CASE
           WHEN customer_age BETWEEN 18 AND 25 THEN '18-25'
           WHEN customer_age BETWEEN 26 AND 35 THEN '26-35'
           WHEN customer_age BETWEEN 36 AND 45 THEN '36-45'
           ELSE '45+'
       END AS age_group,
       COUNT(*) AS num_customers
FROM customers
GROUP BY customer_gender, customer_age

--15. Select the customers who have not made any purchases:
SELECT *
FROM customers
WHERE customer_id NOT IN (SELECT customer_id FROM sales);

--16. Select the customers who have made purchases in a specific region and whose age is within a certain range:
SELECT *
FROM customers
WHERE customer_id IN (
    SELECT DISTINCT customer_id
    FROM sales
    WHERE region = 'West'
) AND customer_age BETWEEN 30 AND 40;


------------------
SELECT *
FROM sales
SELECT *
FROM customers