# SQL Database for a Clothing Brand

<p align="center">
<img src="fogtee.jpg">
</p>

## Background and Overview:

FOG Clothing Brand, a local fashion label, had been tracking its sales data manually, without recording vital details like dates. The data, stored in a text file, lacked structure, making it difficult to analyse trends or draw insights. To support the brand’s growth, I volunteered to design and implement a relational database to better manage their sales data and improve decision-making.

This project involves the creation of a comprehensive SQL database for FOG Clothing Brand (View the SQL script [here](https://github.com/Xola-lab/SQL-Database-Project/blob/main/fog%20db.sql)). The database includes key entities such as customers, products, collections, and sales. By organising this data into structured tables, the project enables efficient storage, retrieval, and management of sales information. The database also supports future analytical capabilities, such as sales trend visualisation and customer behaviour analysis.

## Data Structure:

- **Customers**: Stores customer details like names and locations.

- **Products**: Contains product information including name and price.

- **Collections**: Includes different clothing collections offered by FOG.

- **Sales**: Records sales transactions, linking customers, products, and collections.


This database lays the foundation for enhanced business intelligence, empowering the brand to track performance and make data-driven decisions.

## Executive Summary:

This project focuses on creating a structured and scalable database for FOG Clothing, a growing fashion brand, by organising previously unstructured sales data. The objective was to design a robust SQL database that could store customer, product, collection, and sales information in a way that enables efficient querying and data analysis.

By normalising the data and establishing relationships between the tables, the database provides FOG Clothing with a solid foundation for tracking sales trends, managing inventory, and optimising business decisions. The project not only resolves inconsistencies in the raw data but also opens opportunities for future integration with analytical tools, empowering the brand to leverage its data for strategic growth.


<p align="center">
<img src="Sales ERD.png">
</p>

### Skills Employed:

- **SQL Database Design**: Created normalised tables with foreign key relationships to maintain data integrity and optimise database performance.

- **Data Modeling**: Developed a schema to capture essential business elements—customers, products, collections, and sales—enabling meaningful data connections.

- **Data Insertion & Manipulation**: Efficiently inserted sales data, ensuring proper handling of foreign key relationships and cascading updates/deletions.

- **Problem Solving**: Resolved data inconsistencies and handled missing data (e.g., sales with incomplete addresses).

### Impact:

- **Data Organisation**: Transformed fragmented, unstructured sales data into an organised, queryable database, allowing easy access and analysis.

- **Business Efficiency**: By centralising sales and product data, the database supports FOG Clothing’s ability to track sales trends, manage inventory, and make informed decisions.

- **Foundation for Growth**: The database establishes a solid foundation for future data analysis, reporting, and integration with business intelligence tools, positioning the brand for future scalability and improved decision-making.

## The Database: Creating the Tables

The database for FOG Clothing Brand consists of four main tables: Customers, Products, Collections, and Sales. Each table is structured to store relevant information and maintain relationships between data entities. Below is the SQL code used to create these tables.

### 1. **Customers** Table

This table stores the details of each customer, including their unique ID, name, and location.

```sql
CREATE TABLE IF NOT EXISTS customers (
    customerID INT PRIMARY KEY AUTO_INCREMENT,
    customerName VARCHAR(30),
    customerLocation VARCHAR(20)
);
```

### 2. **Products** Table

This table stores the product information, including each product’s unique ID, name, and price.

```sql
CREATE TABLE IF NOT EXISTS products (
    productID INT PRIMARY KEY AUTO_INCREMENT,
    productName VARCHAR(30),
    productPrice DECIMAL(10, 2)
);
```

### 3. **Collections** Table

This table stores the details of product collections, which includes a unique ID, collection name, and price.

```sql
CREATE TABLE IF NOT EXISTS collections (
    collectionID INT PRIMARY KEY AUTO_INCREMENT,
    collectionName VARCHAR(30),
    collectionPrice DECIMAL(10, 2)
);
```
### 4. **Sales** Table

The sales table records each transaction, linking customers, products, and collections, and storing the purchase details.

```sql
CREATE TABLE IF NOT EXISTS sales (
    saleID INT PRIMARY KEY AUTO_INCREMENT,
    custID INT,
    prodID INT,
    collID INT,
    saleAddress VARCHAR(100),
    purchaseTotal DECIMAL(10, 2),
    FOREIGN KEY (custID) REFERENCES customers(customerID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (prodID) REFERENCES products(productID) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (collID) REFERENCES collections(collectionID) ON DELETE CASCADE ON UPDATE CASCADE
);
```
**Conclusion**: These tables form the backbone of the FOG Clothing Brand database, enabling data organisation and retrieval for various business operations.

## The Database: Data Insertion

Having created the necessary tables, I then inserted the data to populate the tables. Below is an example of how data was inserted into these tables using SQL **INSERT INTO** statements.

### Example: Inserting Data into the **customers** Table

The following SQL query demonstrates how a customer's information was inserted into the customers table.

```sql
INSERT INTO customers (customerName, customerLocation)
VALUES ('Thembekile Nyembezi', 'Soweto');
```
This method was repeated for all records, populating the database with customer information, product listings, collections, and sales transactions.

## Conclusion

In conclusion, the FOG Clothing sales database project has successfully established a structured and efficient system for managing sales data. By creating a relational database, we have streamlined the process of tracking customer purchases, product information, and sales records.

The project has not only enhanced data accessibility but also provided valuable insights into customer behaviour and product performance. This database will serve as a vital tool for decision-making and strategic planning for FOG Clothing. 

Moving forward, further analyses and visualisations can be implemented to extract deeper insights, enabling the brand to optimise its operations and enhance customer satisfaction.
