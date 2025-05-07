--query to find the players among the 10 least expensive players per hit and among the 10 least expensive players per RBI in 2001.
--Your query should return a table with two columns, one for the players’ first names and one of their last names.
--You can calculate a player’s salary per RBI by dividing their 2001 salary by their number of RBIs in 2001.
--You may assume, for simplicity, that a player will only have one salary and one performance in 2001.
--Order your results by player ID, least to greatest (or alphabetically by last name, as both are the same in this case!).
--Order your results by player ID, least to greatest (or alphabetically by last name, as both are the same in this case!).
WITH per_hit AS (SELECT players.id
                FROM players
                JOIN salaries ON players.id = salaries.player_id
                JOIN performances ON players.id = performances.player_id
                                AND salaries.year = performances.year
                WHERE salaries.year = 2001
                    AND performances.year = 2001
                    AND performances.H > 0
                ORDER BY salaries.salary/performances.H ASC
                LIMIT 10

),
per_RBI AS (SELECT players.id
            FROM players
            JOIN salaries ON players.id = salaries.player_id
            JOIN performances ON players.id = performances.player_id
                            AND salaries.year = performances.year
            WHERE salaries.year = 2001
                AND performances.year = 2001
                AND performances. RBI > 0
            ORDER BY salaries.salary/performances.RBI ASC
            LIMIT 10

)

SELECT players.first_name,
       players.last_name
FROM players
WHERE players.id IN ( SELECT id
                      FROM per_hit)
      AND players.id IN (SELECT id
                         FROM per_RBI)
ORDER BY players.id
;
