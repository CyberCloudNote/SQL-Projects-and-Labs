--create schema movies;
-- set search_path to movies;
-- A database of movie information

-- Creating the schema script

-- for movies
create table movie(
	mov_id serial,
	title varchar(30),
	yr int,	-- the year it was released
	primary key(mov_id)
);

-- for anyone connected to the movies: actors, directors, animators, cinematographers, screenwriters, and so on
create table person(
	person_id serial,
	lname varchar(20),
	fname varchar(20),
	gender char,
	primary key(person_id)
);

-- represents that people act in movies
create table acts_in(
	actor_id int,
	movie_id int,
	role varchar(30),
-- to cover all possible cases, we might have to consider the possibility of someone acting in multiple roles in a movie
-- for now, we'll ignore that possibility
	primary key(actor_id, movie_id),
	foreign key (actor_id) references person,
	foreign key (movie_id) references movie
);

-- represents that people direct movies
create table directs(
	director_id int,
	movie_id int,
	primary key(director_id, movie_id),
	foreign key (director_id) references person,
	foreign key (movie_id) references movie
);