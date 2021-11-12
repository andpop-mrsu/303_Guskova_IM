insert into users(name, surname, email, register_date, gender, occupation_id)
values("Irina", "Guskova", "iguskova@gmail.com", date("now"), "female", (select id from occupations as o where o.title = "student"));

insert into users(name, lastname, email, register_date, gender, occupation_id)
values("Daria", "Gladysheva", "dgladysheva@gmail.com", date("now"), "female", (select id from occupations as o where o.title = "student"));

insert into users(name, lastname, email, register_date, gender, occupation_id)
values("Danil", "Dudorov", "ddudorov@gmail.com", date("now"), "male", (select id from occupations as o where o.title = "student"));

insert into users(name, lastname, email, register_date, gender, occupation_id)
values("Ilya", "Vidyaykin", "ividyaykin@gmail.com", date("now"), "male", (select id from occupations as o where o.title = "student"));

insert into users(name, lastname, email, register_date, gender, occupation_id)
values("Yulia", "Zavaryukhina", "yzavaryukhina@gmail.com", date("now"), "female", (select id from occupations as o where o.title = "student"));

insert into movies(title, year) 
values("Сruella", 2021);

insert into genres_of_movies(movie_id, genre_id) 
values(
(select id from movies where movies.title = "Сruella" and movies.year = 2021),
(select id from genres where and genres.genre = "Comedy"), 
); 

insert into ratings(user_id, movie_id, rating, 'timestamp')
values(
(select id from users where users.email = "iguskova@gmail.com"), 
(select id from movies where movies.title = "Сruella" and movies.year = 2021),
3.7,
strftime('%s','now')); 

insert into tags(user_id, movie_id, tag, timestamp)
values(
(select id from users where users.email = "iguskova@gmail.com"), 
(select id from movies where movies.title = "Сruella" and movies.year = 2021),
"family",
strftime('%s','now'));

insert into movies(title, year) 
values("The Suicide Squad", 2021);

insert into genres_of_movies(movie_id, genre_id) 
values(
(select id from movies where movies.title = "The Suicide Squad" and movies.year = 2021),
(select id from genres where and genres.genre = "Thriller"), 
);

insert into ratings(user_id, movie_id, rating, 'timestamp')
values(
(select id from users where users.email = "iguskova@gmail.com"), 
(select id from movies where movies.title = "The Suicide Squad" and movies.year = 2021),
3.4,
strftime('%s','now')); 

insert into tags(user_id, movie_id, tag, timestamp)
values(
(select id from users where users.email = "iguskova@gmail.com"), 
(select id from movies where movies.title = "The Suicide Squad" and movies.year = 2021),
"cool",
strftime('%s','now'));

insert into movies(title, year) 
values("F9", 2021);

insert into genres_of_movies(movie_id, genre_id) 
values(
(select id from movies where movies.title = "F9" and movies.year = 2021),
(select id from genres where and genres.genre = "Thriller"), 
);

insert into ratings(user_id, movie_id, rating, 'timestamp')
values(
(select id from users where users.email = "iguskova@gmail.com"), 
(select id from movies where movies.title = "F9" and movies.year = 2021),
4.8,
strftime('%s','now')); 

insert into tags(user_id, movie_id, tag, timestamp)
values(
(select id from users where users.email = "iguskova@gmail.com"), 
(select id from movies where movies.title = "F9" and movies.year = 2021),
"cool",
strftime('%s','now'));