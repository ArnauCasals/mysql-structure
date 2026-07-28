CREATE DATABASE IF NOT EXISTS optics;

USE optics;

CREATE TABLE Supplier (
    id_supplier INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    street VARCHAR(100),
    number VARCHAR(10),
    floor VARCHAR(10),
    door VARCHAR(10),
    city VARCHAR(100),
    postal_code VARCHAR(10),
    country VARCHAR(50),
    phone VARCHAR(20),
    fax VARCHAR(20),
    nif VARCHAR(20)
);


CREATE TABLE Glasses (
    id_glasses INT AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(100),
    left_graduation DECIMAL(4,2),
    right_graduation DECIMAL(4,2),
    frame_type VARCHAR(50),
    frame_color VARCHAR(50),
    left_lens_color VARCHAR(50),
    right_lens_color VARCHAR(50),
    price DECIMAL(10,2),
    id_supplier INT,

    FOREIGN KEY (id_supplier) REFERENCES Supplier(id_supplier)
);


CREATE TABLE Customer (
    id_customer INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    surname VARCHAR(100),
    address VARCHAR(200),
    postal_code VARCHAR(10),
    city VARCHAR(100),
    province VARCHAR(100),
    phone VARCHAR(20),
    email VARCHAR(100),
    registration_date DATE,
    recommended_by INT,

    FOREIGN KEY (recommended_by) REFERENCES Customer(id_customer)
);


CREATE TABLE Employee (
    id_employee INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    surname VARCHAR(100),
    position VARCHAR(50)
);


CREATE TABLE Sale (
    id_sale INT AUTO_INCREMENT PRIMARY KEY,
    sale_date DATE,
    id_customer INT,
    id_employee INT,
    id_glasses INT,

    FOREIGN KEY (id_customer) REFERENCES Customer(id_customer),
    FOREIGN KEY (id_employee) REFERENCES Employee(id_employee),
    FOREIGN KEY (id_glasses) REFERENCES Glasses(id_glasses)
);