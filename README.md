# MySQL Structure

**Description**:  
Database design exercises created using Entity-Relationship models and SQL scripts.

## 📌 Exercise Statement

### Exercise 1 - Optics

Design and create a database structure for an optical store called "Cul d'Ampolla".

The database must manage:

- Suppliers
- Glasses
- Customers
- Employees
- Sales
- Customer recommendations

## ✨ Features

- Entity-Relationship database model.
- SQL script for database creation.
- Definition of tables and relationships.
- Primary keys and foreign keys implementation.

## 🛠 Technologies

- MySQL
- SQL
- dbdiagram.io
- GitHub

## 🚀 Installation and Execution

1. Clone the repository:

```bash
git clone https://github.com/ArnauCasals/mysql-structure.git
```
2. Open the SQL script:

```text
exercise1-optical/optics.sql
```
3. Execute the script using MySQL Workbench or any MySQL client. 
4. The database, tables and relationships will be created automatically.

## 📸 Diagram

Database relational model:

```text
exercise1-optical/
│
├── optics.sql
└── optics.png
```

## 🧩 Database Model and Technical Decisions

The database was designed following a relational model.

### Main decisions:

- Each supplier can provide multiple glasses.
- Each pair of glasses belongs to only one supplier.
- Customers can recommend other customers.
- Sales connect customers, employees and glasses.
- Primary keys uniquely identify each record.
- Foreign keys maintain relationships between tables.