--write a SQL query to count how many prints by Hiroshige have English titles that refer to the “Eastern Capital”
SELECT COUNT(*) AS Count
FROM views
WHERE english_title LIKE "%Eastern Capital%" AND artist = "Hiroshige"
;
