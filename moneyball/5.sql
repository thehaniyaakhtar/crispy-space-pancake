--find all teams that Satchel Paige played for.
--Your query should return a table with a single column, one for the name of the teams.
-- all the names of teams played by Satchel
SELECT DISTINCT(teams.name)
FROM teams
JOIN performances ON teams.id = performances.team_id
JOIN players ON performances.player_id = players.id
WHERE players.first_name = 'Satchel' AND players.last_name = 'Paige'
;
