---------------------------------------------Creating table sales and inserting values----------------------------------------------
CREATE TABLE sales (
  transaction_id INTEGER,
  transaction_date DATE,
  customer_id INTEGER,
  customer_name VARCHAR(50),
  customer_gender VARCHAR(10),
  customer_age INTEGER,
  customer_segment VARCHAR(20),
  product_id INTEGER,
  product_name VARCHAR(50),
  product_category VARCHAR(20),
  region VARCHAR(20),
  revenue DECIMAL(10,2),
  cost DECIMAL(10,2),
  profit DECIMAL(10,2)
);


INSERT INTO sales (transaction_id, transaction_date, customer_id, customer_name, customer_gender, customer_age, customer_segment, product_id, product_name, product_category, region, revenue, cost, profit)
VALUES 
  (1, '2022-01-01', 1001, 'John Smith', 'Male', 28, 'Business', 1, 'Product A', 'Category A', 'East', 100, 50, 50),
  (2, '2022-01-01', 1002, 'Jane Doe', 'Female', 45, 'Individual', 2, 'Product B', 'Category A', 'West', 150, 100, 50),
  (3, '2022-01-02', 1003, 'Bob Johnson', 'Male', 33, 'Business', 1, 'Product A', 'Category A', 'South', 200, 100, 100),
  (4, '2022-01-02', 1004, 'Sarah Lee', 'Female', 52, 'Individual', 3, 'Product C', 'Category B', 'East', 75, 40, 35),
  (5, '2022-01-03', 1005, 'Tom Jackson', 'Male', 20, 'Business', 2, 'Product B', 'Category A', 'West', 125, 80, 45);

  INSERT INTO sales (transaction_id, transaction_date, customer_id, customer_name, customer_gender, customer_age, customer_segment, product_id, product_name, product_category, region, revenue, cost, profit)
VALUES 
  (6, '2022-01-04', 1006, 'Emily Wilson', 'Female', 39, 'Individual', 4, 'Product D', 'Category B', 'North', 100, 70, 30),
  (7, '2022-01-04', 1007, 'David Kim', 'Male', 29, 'Business', 1, 'Product A', 'Category A', 'South', 150, 75, 75),
  (8, '2022-01-05', 1008, 'Lisa Chen', 'Female', 47, 'Individual', 2, 'Product B', 'Category A', 'East', 200, 150, 50),
  (9, '2022-01-05', 1009, 'Mike Brown', 'Male', 24, 'Business', 3, 'Product C', 'Category B', 'West', 75, 50, 25),
  (10, '2022-01-06', 1010, 'Karen Patel', 'Female', 41, 'Business', 4, 'Product D', 'Category B', 'North', 125, 80, 45);