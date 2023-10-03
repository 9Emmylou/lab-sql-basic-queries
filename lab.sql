#Show all tables.
show tables;

#Retrieve all the data from the tables actor, film and customer.
select * from actor, film, customer;

#Retrieve the following columns from their respective tables:
#3.1 Titles of all films from the film table
select title from film;

#3.2. List of languages used in films, with the column aliased as language from the language table
select * from language;


#3.3 List of first names of all employees from the staff table
select * from staff_list;

#Retrieve unique release years.
select distinct release_year
from film;

#Counting records for database insights:
#5.1 Determine the number of stores that the company has.
select count(*) from store;
#5.2 Determine the number of employees that the company has.
select count(*) from staff;
#5.3 Determine how many films are available for rent and how many have been rented.
select count(*) from film;
#5.4 Determine the number of distinct last names of the actors in the database.
select distinct LAST_NAME 
from actor;

#Retrieve the 10 longest films.
select * 
from film
order by length desc
limit 10; 

#Use filtering techniques in order to:
#7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor
WHERE first_name = 'SCARLETT';


#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
SELECT *
FROM film
WHERE TITLE LIKE '%ARMAGEDDON%'
AND length > 100;

#Hint: use LIKE operator. More information here.
#7.3 Determine the number of films that include Behind the Scenes content
select count(*)
from film
where special_features like '%Behind the Scenes%';