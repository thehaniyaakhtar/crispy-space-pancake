--find the name (or names) of the school district(s) with the single least number of pupils. Report only the name(s).
SELECT name
FROM districts
WHERE id IN (SELECT district_id
             FROM expenditures
             WHERE pupils = (
                SELECT MIN(pupils)
                FROM expenditures
             ))
;
