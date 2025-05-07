--find the names and cities of all public schools in Massachusetts.
SELECT name,
       city
FROM schools
WHERE type LIKE "%Public%" 
;
