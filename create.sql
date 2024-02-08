
CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;



DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    Id_cu INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(50) UNIQUE,
    manufacturer VARCHAR(50),
    model VARCHAR(50),
    year YEAR,
    color VARCHAR(50));





DROP TABLE IF EXISTS customers;
CREATE TABLE customers (
    Ind_cu INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    phone_number CHAR(50),
    email VARCHAR(50),
    address VARCHAR(50),
    city VARCHAR(50),
    state_or_province VARCHAR(50),
    country VARCHAR(50),
    zip_or_postal CHAR(5));





DROP TABLE IF EXISTS Salespersons;
CREATE TABLE Salespersons (
    staff_ID INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    store VARCHAR(50));





DROP TABLE IF EXISTS Invoices;
CREATE TABLE Invoices (
    invoice_number INT AUTO_INCREMENT PRIMARY KEY,
    date DATETIME,
    car_vin VARCHAR(50),
    customer_id INT,
    salesperson_id INT,
    FOREIGN KEY (car_vin) REFERENCES cars (vin),
    FOREIGN KEY (customer_id) REFERENCES customers (Ind_cu),
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons (staff_ID));





DROP TABLE IF EXISTS Salespersons_cars;
CREATE TABLE Salespersons_cars (
    sale_staff_ID INT AUTO_INCREMENT PRIMARY KEY,
    staff_ID INT,
    VIN VARCHAR(50),
    FOREIGN KEY (staff_ID) REFERENCES Salespersons (staff_ID),
    FOREIGN KEY (VIN) REFERENCES cars (vin));


