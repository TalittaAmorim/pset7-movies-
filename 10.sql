---Em 10.sql, escreva uma consulta SQL para listar os nomes de todas as pessoas que dirigiram um filme que recebeu uma classificação de pelo menos 9,0.
SELECT name FROM people JOIN directors ON directors.person_id = people.id  JOIN movies ON directors.movie_id = movies.id JOIN ratings ON movies.id = ratings.movie_id WHERE rating >=9;

 