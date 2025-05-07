SELECT schools.name AS school_name,
       schools.city,
       expenditures.per_pupil_expenditure,
       graduation_rates.graduated
FROM schools
JOIN expenditures
  ON schools.district_id = expenditures.district_id
JOIN graduation_rates
  ON schools.id = graduation_rates.school_id
WHERE expenditures.per_pupil_expenditure > 20000
  AND graduation_rates.graduated > 95
ORDER BY expenditures.per_pupil_expenditure DESC;
