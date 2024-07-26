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
    customer_id VARCHAR(215),
    order_date DATE
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