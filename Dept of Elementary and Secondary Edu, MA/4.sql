--find the 10 cities with the most public schools.
--Your query should return the names of the cities and the number of public schools within them,
--ordered from greatest number of public schools to least. If two cities have the same number of public schools,
--order them alphabetically.
SELECT city,
       COUNT(*) AS Number
FROM schools
WHERE type LIKE "%Public School%"
GROUP BY city
ORDER BY Number DESC, city ASC
LIMIT 10
;
