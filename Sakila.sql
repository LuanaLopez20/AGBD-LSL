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