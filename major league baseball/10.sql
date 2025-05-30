--In 10.sql, write SQL query to answer a question of your choice. This query should:
--Make use of AS to rename a column
--Involve at least condition, using WHERE
--Sort by at least one column using ORDER BY
SELECT first_name,
       last_name,
       height AS "Player Height"
FROM players
WHERE debut >= '2010-01-01'
ORDER BY height DESC
LIMIT 5;
