
CREATE DATABASE IF NOT EXISTS lab_mysql;
	
	USE lab_mysql;


DROP TABLE IF EXISTS lab_mysql.cars;
CREATE TABLE lab_mysql.cars (Id_cu INT AUTO_INCREMENT PRIMARY KEY,
							vin VARCHAR(50),
							manufacturer VARCHAR(50),
							model VARCHAR(50),
							year YEAR,
							color VARCHAR(50));


DROP TABLE IF EXISTS lab_mysql.customers;
CREATE TABLE lab_mysql.customers (Ind_cu INT AUTO_INCREMENT PRIMARY KEY,
								name VARCHAR(50),
								phone_number CHAR (50),
								email VARCHAR(50),
								address VARCHAR(50),
								city VARCHAR(50),
								state_or_province CHAR (50),
								country VARCHAR(50),
								zip_or_postal CHAR (5));



                                    
                                    
DROP TABLE IF EXISTS lab_mysql.Salespersons;
CREATE TABLE lab_mysql.Salespersons (staff_ID INT AUTO_INCREMENT PRIMARY KEY,
									name VARCHAR(50),
									store VARCHAR(50));


DROP TABLE IF EXISTS lab_mysql.Invoices;
CREATE TABLE lab_mysql.Invoices (invoice_number INT AUTO_INCREMENT PRIMARY KEY,
								date DATETIME,
								car VARCHAR(50),
								customer VARCHAR(50),
								salesperson_sele_car VARCHAR(50));






