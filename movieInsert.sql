-- Inserting Movies
-- to let the SERIAL field be automatically generated, just insert values for the other fields 
insert into movie(title, yr) values ('A Star is Born', 2018);
insert into movie(title, yr) values ('Captain Marvel', 2019);
insert into movie(title, yr) values ('Room', 2015);
insert into movie(title, yr) values ('Little Women', 2019);
insert into movie(title, yr) values ('The Devil Wears Prada', 2006);
insert into movie(title, yr) values('Barking Dogs Never Bite', 2000);
insert into movie(title, yr) values('Parasite', 2019);

-- Inserting People
insert into person(lname, fname, gender) values ('Cooper', 'Bradley', 'M');
insert into person(lname, fname, gender) values ('Gaga', 'Lady', 'F');
insert into person(lname, fname, gender) values ('Boden', 'Anna', 'F');
insert into person(lname, fname, gender) values ('Fleck', 'Ryan', 'M');
insert into person(lname, fname, gender) values ('Larson', 'Brie', 'F');
insert into person(lname, fname, gender) values ('Lynch', 'Lashana', 'F');
insert into person(lname, fname, gender) values ('Abrahamson', 'Lenny', 'M');
insert into person(lname, fname, gender) values ('Streep', 'Meryl', 'F');
insert into person(lname, fname, gender) values ('Gerwig', 'Greta', 'F');
insert into person(lname, fname, gender) values ('Frankel', 'David', 'M');
insert into person(lname, fname, gender) values ('Bong', 'Joon-ho', 'M');

-- Inserting acting relationships
-- SERIAL starts at 1 and then increments by 1 for each new record in the same table
insert into acts_in values(2, 1, 'Ally');
insert into acts_in values(1, 1, 'Jack');
insert into acts_in values(5, 2, 'Carol Danvers');
insert into acts_in values(6, 2, 'Maria Rambeau');
insert into acts_in values(5, 3, 'Ma');
insert into acts_in values(8, 4, 'Aunt March');
insert into acts_in values(8, 5, 'Miranda Priestly');

-- Inserting directing relationships
insert into directs values(1, 1);
insert into directs values(3, 2);
insert into directs values(4, 2);
insert into directs values(7, 3);
insert into directs values(9, 4);
insert into directs values(10, 5);
insert into directs values(10, 6);