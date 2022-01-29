CREATE DATABASE IF NOT EXISTS exampleDB1;
USE exampleDB1;

CREATE TABLE IF NOT EXISTS customers(
  customer_id int NOT NULL AUTO_INCREMENT,
  FirstName varchar(40) NOT NULL,
  LastName varchar(40) NOT NULL,
  Email varchar(60) UNIQUE,
  Phone_Number varchar(15) NOT NULL,
  House_Number int NOT NULL,
  Postcode varchar(8) NOT NULL,
  PRIMARY KEY (customer_id)
);

create table IF NOT EXISTS products (
product_id int AUTO_INCREMENT, 
Title varchar(50) UNIQUE NOT NULL, 
Price decimal(5,2) NOT NULL,
Stock int NOT NULL,
PRIMARY KEY (product_id)
);


CREATE TABLE IF NOT EXISTS orders(
  order_id int NOT NULL AUTO_INCREMENT,
  fk_customer_id int NOT NULL,
  fk_product_id int NOT NULL,
  Date_Ordered datetime DEFAULT current_timestamp(),
  Order_Status varchar(20),
  PRIMARY KEY (order_id),
  FOREIGN KEY (fk_customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE,
  FOREIGN KEY (fk_product_id) REFERENCES products(product_id) ON DELETE CASCADE
);

INSERT INTO customers (FirstName, LastName, Email, Phone_Number,  House_Number, Postcode)
VALUES
("Bola", "Dele", "bolade@gmail.com", "098765433876", 25, "DE4 6RT");


SELECT * FROM customers