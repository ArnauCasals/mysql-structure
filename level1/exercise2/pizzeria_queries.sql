USE pizzeria;


-- 1. Number of drinks sold in a specific location
SELECT COUNT(*) AS drinks_sold
FROM Order_Product
         JOIN Product
              ON Order_Product.id_product = Product.id_product
         JOIN Drink
              ON Product.id_product = Drink.id_product
         JOIN Orders
              ON Order_Product.id_order = Orders.id_order
         JOIN Store
              ON Orders.id_store = Store.id_store
         JOIN Location
              ON Store.id_location = Location.id_location
WHERE Location.name = 'Barcelona City';


-- 2. Number of orders made by an employee
SELECT COUNT(*) AS total_orders
FROM Orders
WHERE id_delivery_employee = 2;