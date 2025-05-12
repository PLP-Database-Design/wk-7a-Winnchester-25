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
  productName VARCHAR(100)
  
);

CREATE TABLE order_items (
 orderItemID INT AUTO_INCREMENT PRIMARY KEY,
 orderID INT,
 productID INT,
 FOREIGN KEY (orderID) REFERENCES orders(orderID),
 FOREIGN KEY (productID) REFERENCES products(productID)
); 

-- By creating individual tables, i ensure that each row has a single single product per hour

-- QUESTION 2


CREATE TABLE customers (
    customerID INT AUTO_INCREMENT PRIMARY KEY,
    customerName VARCHAR(100)
    
);

CREATE TABLE products (
    productID INT AUTO_INCREMENT PRIMARY KEY,
    productName VARCHAR(100)

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
    FOREIGN Key(orderID) REFERENCES orders(orderID),
    FOREIGN Key(productID) REFERENCES products(productID)
);

-- By creating individual tables for the customerName and orderID, i have ensured that the 1NF has been maintained and that both columns are not dependent on each other. This ensures that the quantity of producrs ordered will depend on the primary keys of the orderID and customerID