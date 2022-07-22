---escreva uma consulta SQL para determinar a avaliação média de todos os filmes lançados em 2012.
 SELECT AVG(rating) FROM ratings JOIN movies on ratings.movie_id = movies.id WHERE year = 2012;