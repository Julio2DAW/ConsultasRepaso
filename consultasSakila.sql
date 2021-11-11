--Julio Antonio Ramos Gago
--Base de Datos de Sakila en MySQL
--Consultas realizadas en el curso SQl desde Cero en Openebinars
--Link del curso: https://openwebinars.net/academia/portada/sql/

--Consultas con JOINS
--INNER JOIN
SELECT first_name, last_nmae, a.address
    FROM customer c
    INNER JOIN address a
        ON c.address_id = a.address_id
    WHERE active = 1
;

--LEFT JOIN
SELECT first_name, last_nmae, a.address
    FROM customer c
    LEFT JOIN address a
        ON c.address_id = a.address_id
;

--RIGHT JOIN
SELECT first_name, last_nmae, a.address
    FROM customer c
    RIGHT JOIN address a
        ON c.address_id = a.address_id
;

--Consultas con funciones de agregado
--COUNT
SELECT COUNT(*) AS 'Num Clientes'
    FROM customer
    WHERE active = 1
;

--COUNT + GROUP BY + ORDER BY
SELECT COUNT(film_id), rental_rate
    FROM film
    WHERE replacement_cost <= 20
    GROUP BY rental_rate
    HAVING COUNT(film_id) >= 165
    ORDER BY rental_rate DESC
;

--MAX | MIN
SELECT MAX(rental_rate) AS 'Precio máximo', MIN(rental_rate)
    FROM film
;


