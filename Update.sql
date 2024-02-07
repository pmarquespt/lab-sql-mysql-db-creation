SET SQL_SAFE_UPDATES = 0;


# use lab_mysql
Use lab_mysql;




# Update emails 

UPDATE customers
SET email = "ppicasso@gmail.com"
WHERE name = "Pablo Picasso";

UPDATE customers
SET email = "lincoln@us.gov"
WHERE name = "Abraham Lincoln";

UPDATE customers
SET email = "hello@napoleon.me"
WHERE name = "Napoléon Bonaparte";