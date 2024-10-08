-- Creating and using the database
CREATE DATABASE IF NOT EXISTS fog;

USE fog;

-- Creating the tables for the database
CREATE TABLE IF NOT EXISTS customers (
    customerID INT PRIMARY KEY AUTO_INCREMENT,
    customerName VARCHAR(30),
    customerLocation VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS products (
    productID INT PRIMARY KEY AUTO_INCREMENT,
    productName VARCHAR(30),
    productPrice DECIMAL(10, 2)
);

CREATE TABLE IF NOT EXISTS collections (
    collectionID INT PRIMARY KEY AUTO_INCREMENT,
    collectionName VARCHAR(30),
    collectionPrice DECIMAL(10, 2) 
);

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

-- Inserting the data into the tables
-- (1) Customer Data
INSERT INTO customers (customerName, customerLocation) VALUES
("Ntando Mom", "Soweto"),
("Luyanda Bani", "Soweto"),
("Bafo", "Soweto"),
("Ntokozo Fortune", "Soweto"),
("Mosotho", "Soweto"),
("Oratile Mphambane", "Soweto"),
("Nosipho (Pretty Face)", "Soweto"),
("Khanyisile (Momo)", "Soweto"),
("Marubini", "Soweto"),
("Pretty (Smiles)", "Soweto"),
("Mzwabantu Teka", "Soweto"),
("Ofentse (Swazi)", "Soweto"),
("Ofentse (Pancake)", "Soweto"),
("Nkululeko", "Soweto"),
("Lesego BTS", "Soweto"),
("Section (Sesh) Sister", "Soweto"),
("Junior Jay", "Soweto"),
("Thembekile Nyembezi", "Soweto"),
("Lind'ikhaya Xola", "Soweto"),
("General", "Soweto"),
("Mo", "Soweto"),
("Gugu MC", "Soweto"),
("Sisonke", "Soweto"),
("Ntonto", "Soweto"),
("Kamogelo (Forbes)", "Soweto"),
("Keabetswe (Sundown)", "Soweto"),
("Blacknificent", "Soweto"),
("Paballo (Simnandi)", "Soweto"),
("Sthembiso", "Soweto"),
("Angela (BTS Student)", "Soweto"),
("Ntokozo Mbatha", "Soweto"),
("Khensani", "Soweto"),
("Mpumi (PGS)", "Soweto"),
("Nhlanhla Makombe", "Soweto"),
("Refilwe (Inkonjane)", "Soweto"),
("Tshiamo (Pimville)", "Soweto"),
("Khensani Makoma (Pimville)", "Soweto"),
("Boitumelo (Slenda)", "Soweto"),
("Kabelo GKS Musiq", "Soweto"),
("Pride GKS Musiq", "Soweto"),
("Keletso Shawty", "Soweto"),
("Mbanjwa Siaybonga", "Soweto"),
("Kera", "Soweto"),
("Lulunya RSA", "Soweto"),
("Chipi", "Soweto"),
("Kim K", "Soweto"),
("Siaybonga (Dzana)", "Soweto"),
("Sne (PGS)", "Soweto"),
("Mr Mothlaloga", "Soweto");

SELECT * FROM customers;

-- (2) Product Data
INSERT INTO products (productName, productPrice) VALUES
("Trucker Cap", 179.99),
("Hoodie", 349.99),
("Panel Cap", 179.99),
("FOG x IMMORTAL Collab", 249.99),
("Ice Cream Date", 249.99),
("Matrix Tee", 289.99),
("Matrix 2.0", 289.99),
("Hustlepreneur", 249.99),
("Beanie", 99.99),
("Two Piece", 650.00),
("Essential Hoodie", 420.00),
("Sweater", 279.99),
("Pant", 279.99),
("FOG T-Shirt", 179.99),
("Kulture", 299.99);

SELECT * FROM products;

-- (3) Collections Data
INSERT INTO collections (collectionName, collectionPrice) VALUES
("Collection 1.0", 249.99),
("Collection 2.0", 300.00);

SELECT * FROM collections;

-- (4) Fog Sales Data
INSERT INTO sales (custID, prodID, collID, saleAddress, purchaseTotal) VALUES
(1, 2, NULL, "Dobsonville", 349.99),
(2, 2, NULL, "Dobsonville", 349.99),
(3, 2, NULL, "Dobsonville", 349.99),
(4, 2, NULL, "Dobsonville", 349.99),
(4, 9, NULL, "Dobsonville", 99.99),
(4, 12, NULL, "Dobsonville", 279.99),
(4, 13, NULL, "Dobsonville", 279.99),
(5, 12, NULL, "Dobsonville", 279.99),
(6, 2, NULL, "Dobsonville", 349.99),
(7, 14, NULL, "Dobsonville", 179.99),
(8, 15, NULL, "Meadowlands", NULL),
(9, 14, NULL, "Meadowlands", 179.99),
(10, 14, NULL, "Dobsonville", 179.99),
(11, 14, NULL, "Dobsonville", 179.99),
(12, 2, NULL, "Dobsonville", 349.99),
(12, 6, NULL, "Dobsonville", 289.99),
(13, 12, NULL, "Dobsonville", 279.99),
(14, 14, NULL, "Dobsonville", 179.99),
(15, 14, NULL, "Meadowlands", 179.99),
(16, 1, NULL, "Dobsonville", 179.99),
(16, 12, NULL, "Dobsonville", 279.99),
(17, 14, NULL, "Dobsonville Block 7", 179.99),
(18, 2, NULL, "Dobsonville", 349.99),
(19, 2, NULL, "Johannesburg", 349.99),
(20, 2, NULL, "Meadowlands", 349.99),
(21, 14, NULL, "Meadowlands", 179.99),
(22, 2, NULL, NULL, 349.99),
(23, 2, NULL, "Dobsonville", 349.99),
(24, 2, NULL, "Dobsonville", 349.99),
(25, 2, NULL, "Dobsonville", 349.99),
(26, 2, NULL, "Dobsonville", 349.99),
(27, 2, NULL, "Meadowlands", 349.99),
(28, 6, NULL, NULL, 289.99),
(29, 1, NULL, "Pimville", 179.99),
(30, 6, NULL, "Dobsonville", 289.99),
(31, 9, NULL, "Pimville", 99.99),
(32, 9, NULL, "Pimville", 99.99),
(33, 9, NULL, "Meadowlands", 99.99),
(34, 9, NULL, "Pimville", 99.99),
(35, 9, NULL, "Pimville", 99.99),
(36, 6, NULL, NULL, 289.99),
(37, 6, NULL, NULL, 289.99),
(38, 9, NULL, "Meadowlands", 99.99),
(39, 9, NULL, "Pimville", 99.99),
(40, 9, NULL, "Pimville", 99.99),
(41, 9, NULL, "Pimville", 99.99),
(42, 6, NULL, NULL, 289.99),
(43, 6, NULL, NULL, 289.99),
(44, 6, NULL, NULL, 289.99),
(45, 6, NULL, NULL, 289.99),
(46, 9, NULL, "Meadowlands", 99.99),
(47, 9, NULL, "Pimville", 99.99),
(48, 9, NULL, "Pimville", 99.99),
(49, 1, NULL, "Pimville", 179.99);

-- Selecting all sales to confirm the insertion
SELECT * FROM sales;
