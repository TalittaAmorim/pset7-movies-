---Em 12.sql, escreva uma consulta SQL para listar os títulos de todos os filmes em que Johnny Depp e Helena Bonham Carter estrelaram juntos.
select title from movies
join stars on stars.movie_id=movies.id
join people on stars.person_id=people.id
where people.name="Johnny Depp"
and title in (
select title from movies
join stars on stars.movie_id=movies.id
join people on stars.person_id=people.id
where people.name="Helena Bonham Carter");