USE optics;

-- Supplier
INSERT INTO Supplier
(name, street, number, floor, door, city, postal_code, country, phone, fax, nif)
VALUES
    ('Luxottica', 'Gran Via', '100', '2', 'A', 'Barcelona', '08001', 'Spain', '933000001', '933000002', 'B12345678');


-- Customers
INSERT INTO Customer
(name, surname, address, postal_code, city, province, phone, email, registration_date)
VALUES
    ('Arnau', 'Test', 'Carrer Major 1', '08001', 'Barcelona', 'Barcelona', '600000001', 'arnau@test.com', '2026-01-10');


-- Employees
INSERT INTO Employee
(name, surname, position)
VALUES
    ('Carlos', 'Garcia', 'Optician'),
    ('Maria', 'Lopez', 'Manager');


-- Glasses
INSERT INTO Glasses
(brand, left_graduation, right_graduation, frame_type, frame_color, left_lens_color, right_lens_color, price, id_supplier)
VALUES
    ('Ray-Ban', 1.50, 1.25, 'Plastic', 'Black', 'Transparent', 'Transparent', 120.00, 1),
    ('Oakley', 2.00, 1.75, 'Metal', 'Silver', 'Blue', 'Blue', 180.00, 1),
    ('Gucci', 0.75, 1.00, 'Plastic', 'Brown', 'Green', 'Green', 250.00, 1);


-- Sales
INSERT INTO Sale
(sale_date, id_customer, id_employee, id_glasses)
VALUES
    ('2026-03-10', 1, 1, 1),
    ('2026-04-15', 1, 2, 2),
    ('2026-05-20', 1, 1, 3);