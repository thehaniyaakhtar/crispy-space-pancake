/*username of the most popular user, defined as the user who has had the most messages sent to them.*/
SELECT u.username
FROM messages m
JOIN users u ON m.to_user_id = u.id
GROUP BY u.id
ORDER BY COUNT(m.id) DESC
LIMIT 1
;
