USE optics;

-- 1. Total invoices of a customer in a specific period
SELECT COUNT(*) AS total_invoices
FROM Sale
WHERE id_customer = 1
  AND sale_date BETWEEN '2026-01-01' AND '2026-12-31';


-- 2. Different glasses models sold by an employee during a year
SELECT DISTINCT g.brand AS glasses_model
FROM Glasses g
         JOIN Sale s
              ON g.id_glasses = s.id_glasses
WHERE s.id_employee = 1
          AND YEAR(s.sale_date) = 2026;


-- 3. Suppliers that have provided glasses successfully sold by the optical store
SELECT DISTINCT sp.name AS supplier
FROM Supplier sp
         JOIN Glasses g
              ON sp.id_supplier = g.id_supplier
         JOIN Sale s
              ON g.id_glasses = s.id_glasses;