-- How many lifetime hits does Barry Bonds have?

-- Expected result:
-- 2935

SELECT players.first_name, players.last_name, SUM(stats.hits)
FROM players
INNER JOIN stats ON players.id = stats.player_id
WHERE players.first_name = "Barry" AND players.last_name = "Bonds"
GROUP BY players.first_name
;


--CREATE TEMPORARY TABLE names_and_stats AS
--SELECT *
--FROM stats
--LEFT JOIN players
--ON stats.player_id = players.id
--;

--SELECT first_name, last_name, SUM(hits)
--FROM names_and_stats
--WHERE first_name = "Barry" AND last_name = "Bonds"
--GROUP BY last_name
;


