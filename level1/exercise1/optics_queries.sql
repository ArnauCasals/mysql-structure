USE optics;


-- 1. Show all customers with their addresses

SELECT
    Customer.name,
    Customer.surname,
    Address.street,
    Address.city
FROM Customer
         JOIN Address
              ON Customer.id_address = Address.id_address;



-- 2. Show suppliers and their brands

SELECT
    Supplier.name AS supplier,
    Brand.name AS brand
FROM Supplier
         JOIN Brand
              ON Supplier.id_supplier = Brand.id_supplier;



-- 3. Show all glasses with their brands

SELECT
    Glasses.id_glasses,
    Brand.name AS brand,
    Glasses.frame_type,
    Glasses.frame_color,
    Glasses.price
FROM Glasses
         JOIN Brand
              ON Glasses.id_brand = Brand.id_brand;



-- 4. Show stock available in each store

SELECT
    Store.name AS store,
    Glasses.id_glasses,
    Brand.name AS brand,
    Store_Inventory.quantity
FROM Store
         JOIN Store_Inventory
              ON Store.id_store = Store_Inventory.id_store
         JOIN Glasses
              ON Store_Inventory.id_glasses = Glasses.id_glasses
         JOIN Brand
              ON Glasses.id_brand = Brand.id_brand;



-- 5. Show sales with customer and employee information

SELECT
    Sale.id_sale,
    Sale.sale_date,
    Customer.name AS customer,
    Employee.name AS employee
FROM Sale
         JOIN Customer
              ON Sale.id_customer = Customer.id_customer
         JOIN Employee
              ON Sale.id_employee = Employee.id_employee;



-- 6. Show products sold in each sale

SELECT
    Sale.id_sale,
    Brand.name AS brand,
    Sale_Detail.quantity,
    Sale_Detail.unit_price
FROM Sale
         JOIN Sale_Detail
              ON Sale.id_sale = Sale_Detail.id_sale
         JOIN Glasses
              ON Sale_Detail.id_glasses = Glasses.id_glasses
         JOIN Brand
              ON Glasses.id_brand = Brand.id_brand;



-- 7. Show customers recommended by other customers

SELECT
    Customer.name AS customer,
    Recommended.name AS recommended_by
FROM Customer
         JOIN Customer AS Recommended
              ON Customer.recommended_by = Recommended.id_customer;