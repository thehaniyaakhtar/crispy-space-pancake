--which schools achieved a 100% graduation rate.
SELECT name
FROM schools
WHERE id IN (SELECT school_id
       FROM graduation_rates
       WHERE graduated = '100'
       )
;
