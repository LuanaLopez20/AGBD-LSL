/*EJERCICIO 1*/

SELECT * FROM film f

INNER JOIN inventory i on  i.film_id = f.film_id
INNER JOIN store s on i.store_id = s.store_id
INNER JOIN address a on s.address_id = a.address_id
INNER JOIN city c on a.city_id = c.city_id
INNER JOIN country cy on c.country_id = cy.country_id

WHERE title = "AFRICAN EGG"