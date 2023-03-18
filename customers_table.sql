 --------------------------------------------Creating tables customers and inserting values----------------------------------------------

  CREATE TABLE customers (
  customer_id INTEGER PRIMARY KEY,
  customer_name VARCHAR(50),
  customer_gender VARCHAR(10),
  customer_age INTEGER,
  customer_segment VARCHAR(20)
);

INSERT INTO customers (customer_id, customer_name, customer_gender, customer_age, customer_segment) 
VALUES 
(1, 'John Doe', 'Male', 35, 'Premium'),
(2, 'Jane Smith', 'Female', 27, 'Standard'),
(3, 'Bob Johnson', 'Male', 42, 'Premium'),
(4, 'Mary Brown', 'Female', 19, 'Basic'),
(5, 'David Lee', 'Male', 55, 'Premium'),
(6, 'Lisa Chen', 'Female', 32, 'Standard'),
(7, 'Mike Wilson', 'Male', 47, 'Premium'),
(8, 'Emily Davis', 'Female', 23, 'Basic'),
(9, 'Tom Kim', 'Male', 39, 'Standard'),
(10, 'Sarah Park', 'Female', 29, 'Premium');