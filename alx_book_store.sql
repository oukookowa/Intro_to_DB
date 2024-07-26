-- # Create database if it does not exist
CREATE DATABASE IF NOT EXISTS alx_book_store

--@block
-- # Create Books Table
CREATE TABLE Books(
    book_id INT AUTO_INCREMENT,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    PRIMARY KEY (book_id),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

--@block
-- # Create Authors Table
CREATE TABLE Authors(
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(215)
);

--@block
-- # Create Customers Table
CREATE TABLE Customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215),
    email VARCHAR(215) UNIQUE,
    address TEXT
);

--@block
-- # Create Orders Table
CREATE TABLE Orders(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

--@block
-- # Create Order_Details Table
CREATE TABLE Order_Details(
    order_details_id INT AUTO_INCREMENT,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    PRIMARY KEY (order_details_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

--@block
ALTER TABLE Orders
DROP COLUMN customer_id;

--@block
ALTER TABLE Orders
ADD customer_id INT;

--@block
ALTER TABLE Orders ADD CONSTRAINT customer_id FOREIGN KEY (customer_id) REFERENCES Customers (customer_id);