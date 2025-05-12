--  QUESTION 1
CREATE TABLE customers (
    customerID INT AUTO_INCREMENT PRIMARY KEY,
    customerName VARCHAR(100)
   
);

CREATE TABLE orders (
    orderID INT AUTO_INCREMENT PRIMARY KEY,
    customerID INT,
    Foreign Key (customerID) REFERENCES customer(customerID)
    );

CREATE TABLE products (
  productID INT AUTO_INCREMENT PRIMARY KEY,
  productName VARCHAR(100),
  
);

CREATE TABLE order_items (
 orderItemID INT AUTO_INCREMENT PRIMARY KEY,
 orderID INT,
 productID INT,
 FOREIGN KEY (orderID) REFERENCES orders(orderID),
 FOREIGN KEY (productID) REFERENCES products(productID)
);

-- QUESTION 2

CREATE TABLE customers (
    customerID INT AUTO_INCREMENT PRIMARY KEY,
    customerName VARCHAR(100),
    
);

CREATE TABLE products (
    productID INT AUTO_INCREMENT PRIMARY KEY,
    productName VARCHAR(100),

);

CREATE TABLE orders (
    orderID INT AUTO_INCREMENT PRIMARY KEY,
    customerID INT,
    FOREIGN KEY (customerID) REFERENCES customers(customerID)
    
);


CREATE TABLE order_details (
    orderDestailsID INT AUTO_INCREMENT PRIMARY KEY,
    orderID INT,
    productID INT,
    quantity INT,
    FOREIGN Key(orderID) REFERENCES orders (orderID),
    FOREIGN Key(productID) REFERENCES products (productID)
)
