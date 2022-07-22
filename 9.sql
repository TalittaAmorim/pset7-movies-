---escreva uma consulta SQL para listar os nomes de todas as pessoas que estrelaram um filme lançado em 2004, ordenado por ano de nascimento.
SELECT DISTINCT name FROM people JOIN stars ON stars.person_id = people.id 
JOIN movies ON  stars.movie_id = movies.id  JOIN ratings ON ratings.movie_id = movies.id WHERE movies.year = 2004 ORDER BY birth;