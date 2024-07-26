--@block
USE alx_book_store;


--@block
CREATE TABLE IF NOT EXISTS customer(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215),
    email VARCHAR(215) UNIQUE,
    address TEXT
);

--@block
INSERT INTO customer
VALUES (1, 'Cole Baidoo', 'cbaidoo@sandtech.com', '123 Happiness Ave.');

--@block
SELECT * FROM customer;

--@block
DELETE FROM customer WHERE customer_id = 2;