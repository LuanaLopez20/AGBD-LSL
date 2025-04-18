/*EJERCICIO 1*/

SELECT f.title, a.address, c.city, cy.country
FROM film f

INNER JOIN inventory i on  i.film_id = f.film_id
INNER JOIN store s on i.store_id = s.store_id
INNER JOIN address a on s.address_id = a.address_id
INNER JOIN city c on a.city_id = c.city_id
INNER JOIN country cy on c.country_id = cy.country_id

WHERE title = "AFRICAN EGG"

/*EJERCICIO 2*/

SELECT f.rating, ca.name, l.name, f.title
FROM film f
INNER JOIN inventory i on  i.film_id = f.film_id
INNER JOIN language l  on  f.language_id = l.language_id
INNER JOIN film_category fc on f.film_id = fc.film_id
INNER JOIN category ca on  fc.category_id = ca.category_id

WHERE f.length BETWEEN 60 and 120

/*EJERCICIO 3*/

SELECT st.first_name, st.last_name, a.address, c.city, cy.country
FROM staff st

INNER JOIN store s on s.store_id = st.store_id
INNER JOIN address a on s.address_id = a.address_id
INNER JOIN city c on a.city_id = c.city_id
INNER JOIN country cy on c.country_id = cy.country_id

/*EJERCICIO 4*/

SELECT f.title, max(return_date), min(return_date)
FROM film f

INNER JOIN inventory i on  i.film_id = f.film_id
INNER JOIN rental r on i.inventory_id = r.inventory_id

/*EJERCICIO N5 HECHO CON KAREN*/

SELECT * FROM category ca
INNER JOIN film_category fc on ca.category_id = fc.category_id
INNER JOIN film f ON f.film_id = fc.film_id
INNER JOIN language l on f.language_id = l.language_id
INNER JOIN film_actor fa on  fa.film_id = fa.film_id
INNER JOIN actor a on  fa.actor_id = a.actor_id
INNER JOIN inventory i on f.film_id = i.film_id
INNER JOIN film_text ft on i.film_id = ft.film_id
INNER JOIN rental r on i.inventory_id = r.inventory_id
INNER JOIN payment p on r.rental_id = p.rental_id
INNER JOIN staff s on p.staff_id = s.staff_id
INNER JOIN store st on s.store_id = st.store_id
INNER JOIN customer cu on st.customer_id = cu.customer_id
INNER JOIN address a on s.address_id = a.address_id
INNER JOIN city c on a.city_id = c.city_id
INNER JOIN country cy on c.country_id = cy.country_id

/*EJERCICIO 6*/

SELECT COUNT(*) rating FROM film
GROUP BY rating

/*EJERCICIO 7*/

SELECT COUNT(*) as cant_pelis,ca.name FROM film f
INNER JOIN film_category fc on f.film_id = fc.film_id 
INNER JOIN category ca on ca.category_id = fc.category_id
GROUP BY ca.category_id

/*EJERCICIO 8*/

SELECT COUNT(*) AS cant_actores, a.first_name, a.last_name FROM film f
INNER JOIN film_actor fa on f.film_id = fa.film_id 
INNER JOIN actor a on a.actor_id = fa.actor_id 
GROUP BY a.actor_id
ORDER BY cant_actores DESC LIMIT 10;


/*EJERCICIO 9*/

SELECT COUNT(i.inventory_id) AS total_inventory,  a.address, c.city, co.country
FROM store s
INNER JOIN address a ON s.address_id = a.address_id
INNER JOIN city c ON a.city_id = c.city_id
INNER JOIN country co ON c.country_id = co.country_id
INNER JOIN inventory i ON s.store_id = i.store_id
GROUP BY s.store_id;

/*EJERCICIO 10*/

SELECT COUNT(*) AS total_inventory,  a.address, c.city, co.country
FROM film f

INNER JOIN inventory i ON f.film_id = i.film_id
INNER JOIN store s on s.store_id = i.store_id
INNER JOIN address a ON s.address_id = a.address_id
INNER JOIN city c ON a.city_id = c.city_id
INNER JOIN country co ON c.country_id = co.country_id

GROUP BY s.store_id;

/*EJERCICIO 11*/

SELECT c.name AS categoria, AVG(f.rental_rate * f.rental_duration)
FROM category c
INNER JOIN film_category fc ON c.category_id = fc.category_id
INNER JOIN film f ON fc.film_id = f.film_id
GROUP BY  c.name
ORDER BY f.rental_rate DESC;

/*EJERCICIO 12*/

SELECT (f.rental_duration * f.rental_rate), f.rental_rate, r.return_date
FROM film f
INNER JOIN inventory i on f.film_id = i.film_id
INNER JOIN rental r on i.inventory_id = r.inventory_id
WHERE f.title = "ALABAMA DEVIL"

/*EJERCICIO 13*/

SELECT f.title, f.rental_duration, ca.name
FROM category ca
INNER JOIN film_category fc on ca.category_id = fc.category_id
INNER JOIN film f ON f.film_id = fc.film_id
ORDER BY rental_duration DESC;

/*EJERCICIO 14*/

SELECT f.title,COUNT(a.actor_id) AS actores FROM film f
INNER JOIN film_actor fa ON f.film_id = fa.film_id
INNER JOIN actor a ON fa.actor_id = a.actor_id
WHERE title like "w%"
GROUP BY f.film_id
HAVING actores > 5

/*EJERCICIO 15*/

SELECT SUM(p.amount), c.first_name
FROM customer c
INNER JOIN payment p on c.customer_id = p.customer_id
group by p.customer_id

/*EJERCICIO 16*/

SELECT f.title, f.rental_duration, a.first_name, ca.name
FROM category ca
INNER JOIN film_category fc on ca.category_id = fc.category_id
INNER JOIN film f ON f.film_id = fc.film_id
INNER JOIN film_actor fa ON f.film_id = fa.film_id
inner join actor a on a.actor_id = fa.actor_id
ORDER BY rental_duration ASC;

/*EJERCICIO 17*/

SELECT SUM(p.amount) AS total, c.last_name, a.address_id, ci.city_id, co.country_id, r.rental_id, c.customer_id
FROM customer c
INNER JOIN address a ON c.address_id = a.address_id
INNER JOIN city ci ON a.city_id = ci.city_id
INNER JOIN country co ON ci.country_id = co.country_id
INNER JOIN rental r ON c.customer_id = r.customer_id
INNER JOIN payment p on r.rental_id = p.rental_id
GROUP BY p.customer_id
ORDER BY total ASC;

/*EJERCICIO 18*/

INSERT INTO actor (actor_id, first_name, last_name, last_update)
VALUES ("201", "Luana", "Lopez","2020-02-20 08:08:11")

/*EJERCICIO 19*/

INSERT INTO actor (actor_id, first_name, last_name, last_update)
VALUES ("202", "Sebastian", "Troche", "2020-02-20 08:08:12")

INSERT INTO actor (actor_id, first_name, last_name, last_update)
VALUES ("203", "Adriana", "Mollano", "2020-02-20 08:08:13")

/*EJERCICIO 20*/

UPDATE actor 
SET first_name = "Maria", last_name = "Becerra"
WHERE last_name = "Lopez" AND first_name = "Luana"

UPDATE actor 
SET first_name = "Ester", last_name = "Exposito"
WHERE last_name = "Troche" AND first_name = "Sebastian"

UPDATE actor 
SET first_name = "Mariana", last_name = "Esposito"
WHERE last_name = "Mollano" AND first_name = "Adriana"

/*EJERCICIO 21*/

DELETE FROM actor
WHERE actor_id = 201

DELETE FROM actor
WHERE actor_id = 202

DELETE FROM actor
WHERE actor_id = 203

