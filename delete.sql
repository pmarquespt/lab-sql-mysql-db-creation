
# use lab_mysql
USE lab_mysql;

DELETE from cars
WHERE vin = "lam41UDN3CHU2WVF6";  # this was the vin I changed to proceed in the previous exercise because as I have a primary key in VIN I couldn't have duplicate values

SELECT * FROM cars;