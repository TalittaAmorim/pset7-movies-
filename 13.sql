---Em 13.sql, escreva uma consulta SQL para listar os nomes de todas as pessoas que estrelaram um filme no qual Kevin Bacon também estrelou.select name from people
select name from people
join stars on stars.person_id=people.id
join movies on stars.movie_id=movies.id
where movies.id in
(select movies.id from movies
join people on stars.person_id=people.id
join stars on stars.movie_id=movies.id
where people.name="Kevin Bacon"
and people.birth=1958)
and people.name != "Kevin Bacon";
