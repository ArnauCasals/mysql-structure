USE pizzeria;

-- Provinces
INSERT INTO Province
(name)
VALUES
    ('Barcelona');


-- Locations
INSERT INTO Location
(name, id_province)
VALUES
    ('Barcelona City', 1);


-- Customers
INSERT INTO Customer
(name, surname, address, postal_code, phone, id_location)
VALUES
    ('Arnau', 'Test', 'Carrer Major 1', '08001', '600000001', 1);


-- Stores
INSERT INTO Store
(address, postal_code, id_location)
VALUES
    ('Carrer Marina 50', '08002', 1);


-- Employees
INSERT INTO Employee
(name, surname, nif, phone, role, id_store)
VALUES
    ('Carlos', 'Garcia', '12345678A', '600000002', 'Cook', 1),
    ('Maria', 'Lopez', '87654321B', '600000003', 'Delivery', 1);


-- Categories
INSERT INTO Category
(name)
VALUES
    ('Pizzas'),
    ('Bebidas');


-- Products
INSERT INTO Product
(name, description, image, price)
VALUES
    ('Margarita', 'Tomato, cheese and basil pizza', 'margarita.png', 10.00),
    ('Pepperoni', 'Pepperoni pizza', 'pepperoni.png', 12.00),
    ('Coca Cola', 'Soft drink', 'coca-cola.png', 2.50);


-- Pizza products
INSERT INTO Pizza
(id_product, id_category)
VALUES
    (1, 1),
    (2, 1);


-- Drink products
INSERT INTO Drink
(id_product)
VALUES
    (3);


-- Orders
INSERT INTO Orders
(order_date, delivery_type, total_price, id_customer, id_store, id_delivery_employee, delivery_date_time)
VALUES
    ('2026-07-01 13:00:00', 'Delivery', 12.50, 1, 1, 2, '2026-07-01 13:45:00'),
    ('2026-07-02 20:00:00', 'Pickup', 10.00, 1, 1, NULL, NULL);


-- Order products
INSERT INTO Order_Product
(id_order, id_product, quantity)
VALUES
    (1, 1, 1),
    (1, 3, 1),
    (2, 2, 1);