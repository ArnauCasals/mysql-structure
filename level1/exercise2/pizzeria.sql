CREATE DATABASE pizzeria;

USE pizzeria;


CREATE TABLE Province (
                          id_province INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(100)
);


CREATE TABLE Location (
                          id_location INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(100),
                          id_province INT,

                          FOREIGN KEY (id_province) REFERENCES Province(id_province)
);


CREATE TABLE Customer (
                          id_customer INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(100),
                          surname VARCHAR(100),
                          address VARCHAR(200),
                          postal_code VARCHAR(10),
                          phone VARCHAR(20),
                          id_location INT,

                          FOREIGN KEY (id_location) REFERENCES Location(id_location)
);


CREATE TABLE Store (
                       id_store INT AUTO_INCREMENT PRIMARY KEY,
                       address VARCHAR(200),
                       postal_code VARCHAR(10),
                       id_location INT,

                       FOREIGN KEY (id_location) REFERENCES Location(id_location)
);


CREATE TABLE Employee (
                          id_employee INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(100),
                          surname VARCHAR(100),
                          nif VARCHAR(20),
                          phone VARCHAR(20),
                          role VARCHAR(50),
                          id_store INT,

                          FOREIGN KEY (id_store) REFERENCES Store(id_store)
);


CREATE TABLE Category (
                          id_category INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(100)
);


CREATE TABLE Product (
                         id_product INT AUTO_INCREMENT PRIMARY KEY,
                         name VARCHAR(100),
                         description TEXT,
                         image VARCHAR(255),
                         price DECIMAL(6,2)
);


CREATE TABLE Pizza (
                       id_product INT PRIMARY KEY,
                       id_category INT,

                       FOREIGN KEY (id_product) REFERENCES Product(id_product),
                       FOREIGN KEY (id_category) REFERENCES Category(id_category)
);


CREATE TABLE Burger (
                        id_product INT PRIMARY KEY,

                        FOREIGN KEY (id_product) REFERENCES Product(id_product)
);


CREATE TABLE Drink (
                       id_product INT PRIMARY KEY,

                       FOREIGN KEY (id_product) REFERENCES Product(id_product)
);


CREATE TABLE Orders (
                        id_order INT AUTO_INCREMENT PRIMARY KEY,
                        order_date DATETIME,
                        delivery_type VARCHAR(50),
                        total_price DECIMAL(6,2),
                        id_customer INT,
                        id_store INT,
                        id_delivery_employee INT,
                        delivery_date_time DATETIME,

                        FOREIGN KEY (id_customer) REFERENCES Customer(id_customer),
                        FOREIGN KEY (id_store) REFERENCES Store(id_store),
                        FOREIGN KEY (id_delivery_employee) REFERENCES Employee(id_employee)
);


CREATE TABLE Order_Product (
                               id_order INT,
                               id_product INT,
                               quantity INT,

                               PRIMARY KEY (id_order, id_product),

                               FOREIGN KEY (id_order) REFERENCES Orders(id_order),
                               FOREIGN KEY (id_product) REFERENCES Product(id_product)
);