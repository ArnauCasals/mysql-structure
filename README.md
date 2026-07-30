# MySQL Structure

**Description**:  
Database design exercises created using Entity-Relationship models and SQL scripts.

## 📌 Exercise Statement

### Exercise 1 - Optics

Design and create a database structure for an optical store called "Cul d'Ampolla".

The database must manage:

- Suppliers
- Brands
- Glasses
- Store inventory
- Stores
- Customers
- Customer addresses
- Employees
- Sales
- Sale details
- Customer recommendations


## ✨ Features

- Entity-Relationship database model.
- SQL script for database creation.
- Normalized relational database structure.
- Management of suppliers, brands and glasses.
- Store inventory management.
- Customer and employee management.
- Sales and sale details management.
- Primary keys and foreign keys implementation.

## 🛠 Technologies

- MySQL
- SQL
- dbdiagram.io
- DBeaver
- GitHub

## 🚀 Installation and Execution

1. Clone the repository:

```bash
git clone https://github.com/ArnauCasals/mysql-structure.git
```
2. Open the SQL script:

```text
level1/exercise1/optics.sql
```
3. Execute the script using DBeaver, MySQL Workbench or any MySQL client.
4. The database, tables and relationships will be created automatically. 
5. Insert test data:
```text
   level1/exercise1/optics_data.sql 
   ```
6. Execute validation queries:
```text   
level1/exercise1/optics_queries.sql
```
## 📸 Diagram

Database relational model:

```text
level1/
│
└── exercise1/
    ├── optics.sql
    ├── optics_data.sql
    ├── optics_queries.sql
    └── optics.png
```

## 🧩 Database Model and Technical Decisions

The database was designed following a relational model.


### Main decisions:

- Addresses are stored in a separate table and reused by customers, suppliers and stores.
- Suppliers provide brands.
- Each brand can have multiple glasses models.
- Store inventory manages the quantity of glasses available in each store.
- Customers can recommend other customers.
- Sales connect customers and employees.
- Sale details allow a sale to contain multiple glasses.
- Primary keys uniquely identify each record.
- Foreign keys maintain relationships between tables.


## Exercise 2 - Pizzeria

### Exercise Statement

Database design for an online food delivery system for a pizzeria.

The database manages:

- Customers
- Provinces and locations
- Orders
- Products
- Pizzas, burgers and drinks
- Pizza categories
- Stores
- Employees
- Home deliveries

### Features

- Entity-Relationship database model.
- SQL script for database creation.
- Management of customer orders.
- Product categorization.
- Store and employee management.
- Delivery tracking.
- Test data insertion for database validation.
- SQL queries to verify database relationships.

### Files

```text
level1/
│
└── exercise2/
    ├── pizzeria.sql
    ├── pizzeria_data.sql
    ├── pizzeria_queries.sql
    └── pizzeria.png
```

## 🧩 Database Model and Technical Decisions

The database was designed following a relational model.


### Main decisions:

- Provinces and locations are stored in separate tables.
- A province can contain multiple locations.
- A customer belongs to one location.
- An order belongs to one customer and one store.
- Products are managed using a general Product table.
- Pizzas, burgers and drinks are specialized product types.
- A pizza belongs to one category, while a category can contain many pizzas.
- Orders and products have a many-to-many relationship managed through an intermediate table.
- Employees work in one store and can have different roles such as cook or delivery person.
- Delivery information stores the responsible employee and delivery date/time.
- Test data was created to verify database operations.
- SQL queries were created to validate relationships between tables.


## 🚀 Installation and Execution

1. Open MySQL Workbench or any MySQL client.

2. Open the SQL script:

```text
level1/exercise2/pizzeria.sql
```
3. Execute the script.
4. Insert test data:
```text
level1/exercise2/pizzeria_data.sql
```
5. Execute validation queries:
```text
level1/exercise2/pizzeria_queries.sql
```
6. The database, tables, primary keys, foreign keys and relationships will be created and verified.

## 📸 Diagram

Database relational model:

```text
level1/
│
└── exercise2/
    ├── pizzeria.sql
    ├── pizzeria_data.sql
    ├── pizzeria_queries.sql
    └── pizzeria.png
```


# Level 2

## Exercise 1 - YouTube

### Exercise Statement

Database design for a simplified version of YouTube.

The database manages:

- Users
- Videos
- Channels
- Subscriptions
- Tags
- Playlists
- Comments
- Likes and dislikes

### Features

- Entity-Relationship database model.
- SQL script for database creation.
- Management of users and published videos.
- Video status management (public, hidden and private).
- Video tags and playlists.
- User subscriptions to channels.
- Likes and dislikes tracking.
- Comments and comment reactions.
- Primary keys and foreign keys implementation.
- Test data insertion for database validation.
- SQL queries to verify database relationships.

### Files

```text
level2/
│
└── exercise1/
    ├── youtube.sql
    ├── youtube_data.sql
    ├── youtube_queries.sql
    └── youtube.png
```


## 🧩 Database Model and Technical Decisions

The database was designed following a relational model.

### Main decisions:

- Each user can publish multiple videos.
- Each video belongs to one user.
- Videos can have multiple tags using an intermediate table.
- Users can create channels.
- Users can subscribe to other users' channels.
- Video reactions are stored separately to manage likes and dislikes.
- Users can create playlists containing multiple videos.
- Comments are linked to users and videos.
- Comment reactions store user interactions with comments.
- Test data was created to verify database operations.
- SQL queries were created to validate relationships between tables.
- Primary keys uniquely identify each record.
- Foreign keys maintain relationships between tables.


## 🚀 Installation and Execution

1. Open DBeaver, MySQL Workbench or any MySQL client.

2. Open the SQL script:

```text
level2/exercise1/youtube.sql
```

3. Execute the script.

4. Insert test data:
```text
level2/exercise1/youtube_data.sql
```
5. Execute validation queries:
```text
level2/exercise1/youtube_queries.sql
```
6. The database, tables, primary keys, foreign keys and relationships will be created and verified.


## 📸 Diagram

Database relational model:

```text
level2/
│
└── exercise1/
    ├── youtube.sql
    ├── youtube_data.sql
    ├── youtube_queries.sql
    └── youtube.png
```