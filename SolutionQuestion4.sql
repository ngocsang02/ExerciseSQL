SELECT name, COUNT(*) FROM film_category fc
INNER JOIN category c
ON fc.category_id = c.category_id
INNER JOIN film f
ON fc.film_id = f.film_id
GROUP BY name
ORDER BY 2 DESC
LIMIT 1