--find Cal Ripken Jr.’s salary history.
--Sort by year in descending order.
--Your query should return a table with two columns, one for year and one for salary.
SELECT year,
       salary
FROM salaries
WHERE player_id IN (SELECT id
             FROM players
             WHERE first_name LIKE "%Cal%" AND last_name LIKE "%Ripken%")
ORDER BY year DESC
;
