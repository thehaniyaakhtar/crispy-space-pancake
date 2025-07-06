/*users who logged in after 2024-01-01 using the last_login_date*/
SELECT username
FROM users
WHERE last_login_date >= '2024-01-01'
;
