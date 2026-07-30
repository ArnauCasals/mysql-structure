USE optics;


-- Addresses

INSERT INTO Address
(street, number, floor, door, city, province, postal_code, country)
VALUES
    ('Main Street', '10', '2', 'A', 'Barcelona', 'Barcelona', '08012', 'Spain'),
    ('Central Avenue', '25', '1', 'B', 'Girona', 'Girona', '17001', 'Spain'),
    ('Supplier Street', '50', '3', 'C', 'Madrid', 'Madrid', '28001', 'Spain');


-- Suppliers

INSERT INTO Supplier
(name, phone, fax, nif, id_address)
VALUES
    ('Vision Suppliers', '900111222', '900333444', 'B12345678', 3);


-- Brands

INSERT INTO Brand
(name, id_supplier)
VALUES
    ('Ray-Ban', 1),
    ('Oakley', 1),
    ('Gucci', 1);


-- Stores

INSERT INTO Store
(name, phone, id_address)
VALUES
    ('Cul d''Ampolla Barcelona', '933000111', 1);


-- Customers

INSERT INTO Customer
(name, surname, phone, email, registration_date, recommended_by, id_address)
VALUES
    ('Arnau', 'Casals', '600000001', 'arnau@gmail.com', '2026-07-30', NULL, 1),
    ('Maria', 'Garcia', '600000002', 'maria@gmail.com', '2026-07-30', 1, 2);


-- Employees

INSERT INTO Employee
(name, surname, position, id_store)
VALUES
    ('Carlos', 'Lopez', 'Optician', 1),
    ('Laura', 'Martinez', 'Sales Assistant', 1);


-- Glasses

INSERT INTO Glasses
(id_brand, left_graduation, right_graduation, frame_type, frame_color, left_lens_color, right_lens_color, price)
VALUES
    (1, 1.50, 1.25, 'Metal', 'Black', 'Transparent', 'Transparent', 150.00),
    (2, 0.00, 0.00, 'Plastic', 'Blue', 'Blue', 'Blue', 120.00),
    (3, 2.00, 2.00, 'Metal', 'Gold', 'Transparent', 'Transparent', 300.00);


-- Store Inventory

INSERT INTO Store_Inventory
(id_store, id_glasses, quantity)
VALUES
    (1, 1, 10),
    (1, 2, 5),
    (1, 3, 2);


-- Sales

INSERT INTO Sale
(sale_date, id_customer, id_employee)
VALUES
    ('2026-07-30', 1, 1),
    ('2026-07-30', 2, 2);


-- Sale Details

INSERT INTO Sale_Detail
(id_sale, id_glasses, quantity, unit_price)
VALUES
    (1, 1, 1, 150.00),
    (2, 3, 1, 300.00);