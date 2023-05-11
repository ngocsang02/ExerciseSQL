SELECT count
FROM ( SELECT
COUNT ( * ),
CASE
	WHEN replacement_cost >=9.99 AND replacement_cost <=19.99 THEN 'low'
	WHEN replacement_cost <=24.99 THEN 'medium'
	WHEN replacement_cost <=29.99 THEN 'high'
	ELSE 'Fall'
END AS Level
FROM film
GROUP BY level) as new_table
WHERE level = 'low'