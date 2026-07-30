CREATE DATABASE IF NOT EXISTS optics;

USE optics;

CREATE TABLE Address (
                         id_address INT AUTO_INCREMENT PRIMARY KEY,
                         street VARCHAR(100),
                         number VARCHAR(10),
                         floor VARCHAR(10),
                         door VARCHAR(10),
                         city VARCHAR(100),
                         province VARCHAR(100),
                         postal_code VARCHAR(10),
                         country VARCHAR(50)
);

CREATE TABLE Supplier (
                          id_supplier INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(100),
                          phone VARCHAR(20),
                          fax VARCHAR(20),
                          nif VARCHAR(20),
                          id_address INT,

                          FOREIGN KEY (id_address) REFERENCES Address(id_address)
);

CREATE TABLE Brand (
                       id_brand INT AUTO_INCREMENT PRIMARY KEY,
                       name VARCHAR(100),
                       id_supplier INT,

                       FOREIGN KEY (id_supplier) REFERENCES Supplier(id_supplier)
);

CREATE TABLE Store (
                       id_store INT AUTO_INCREMENT PRIMARY KEY,
                       name VARCHAR(100),
                       phone VARCHAR(20),
                       id_address INT,

                       FOREIGN KEY (id_address) REFERENCES Address(id_address)
);

CREATE TABLE Customer (
                          id_customer INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(100),
                          surname VARCHAR(100),
                          phone VARCHAR(20),
                          email VARCHAR(100),
                          registration_date DATE,
                          recommended_by INT,
                          id_address INT,

                          FOREIGN KEY (recommended_by) REFERENCES Customer(id_customer),
                          FOREIGN KEY (id_address) REFERENCES Address(id_address)
);

CREATE TABLE Employee (
                          id_employee INT AUTO_INCREMENT PRIMARY KEY,
                          name VARCHAR(100),
                          surname VARCHAR(100),
                          position VARCHAR(50),
                          id_store INT,

                          FOREIGN KEY (id_store) REFERENCES Store(id_store)
);

CREATE TABLE Glasses (
                         id_glasses INT AUTO_INCREMENT PRIMARY KEY,
                         id_brand INT,
                         left_graduation DECIMAL(4,2),
                         right_graduation DECIMAL(4,2),
                         frame_type VARCHAR(50),
                         frame_color VARCHAR(50),
                         left_lens_color VARCHAR(50),
                         right_lens_color VARCHAR(50),
                         price DECIMAL(10,2),

                         FOREIGN KEY (id_brand) REFERENCES Brand(id_brand)
);

CREATE TABLE Sale (
                      id_sale INT AUTO_INCREMENT PRIMARY KEY,
                      sale_date DATE,
                      id_customer INT,
                      id_employee INT,

                      FOREIGN KEY (id_customer) REFERENCES Customer(id_customer),
                      FOREIGN KEY (id_employee) REFERENCES Employee(id_employee)
);

CREATE TABLE Sale_Detail (
                             id_sale INT,
                             id_glasses INT,
                             quantity INT DEFAULT 1,
                             unit_price DECIMAL(10,2),

                             PRIMARY KEY (id_sale, id_glasses),

                             FOREIGN KEY (id_sale) REFERENCES Sale(id_sale),
                             FOREIGN KEY (id_glasses) REFERENCES Glasses(id_glasses)
);
CREATE TABLE Store_Inventory (
                                 id_store INT,
                                 id_glasses INT,
                                 quantity INT,

                                 PRIMARY KEY (id_store, id_glasses),

                                 FOREIGN KEY (id_store) REFERENCES Store(id_store),
                                 FOREIGN KEY (id_glasses) REFERENCES Glasses(id_glasses)
);