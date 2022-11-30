-- MICRO DESAFIO - PASO 1:

SELECT series.title, genres.name FROM series INNER JOIN genres ON genre_id = genres.id;

SELECT title, first_name, last_name FROM episodes INNER JOIN actor_episode ON episode_id = episodes.id INNER JOIN actors ON actor_id = actors.id;

-- MICRO DESAFIO - PASO 2:

SELECT DISTINCT first_name, last_name FROM actors INNER JOIN actor_movie ON actor_id = actors.id INNER JOIN movies ON movie_id = movies.id WHERE movies.title LIKE "%La Guerra de las galaxias%";

-- MICRO DESAFIO - PASO 3:

SELECT movies.title, COALESCE(genres.name, "No tiene género") AS genres FROM movies LEFT JOIN genres ON genre_id = genres.id;

-- MICRO DESAFIO - PASO 4:

SELECT title, DATEDIFF(end_date, release_date) AS Duración FROM series;

-- MICRO DESAFIO - PASO 5:

SELECT first_name FROM actors WHERE LENGTH(first_name) > 6 ORDER BY first_name ASC;

SELECT COUNT(*) AS "Total" FROM episodes;

SELECT series.title, COUNT(seasons.id) AS seasons FROM series INNER JOIN seasons ON serie_id = series.id GROUP BY series.title;

SELECT genres.name, COUNT(movies.id) AS movies FROM genres INNER JOIN movies ON genre_id = genres.id GROUP BY genres.name HAVING COUNT(movies.id) >= 3;