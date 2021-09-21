--insert statement into table "chua.assignment"
insert into chua.assignment(
	id, course, name, duedate, maxgrade)
	--the bad data is the same id and the second insert
	values (1, 'CS431', null, 'January 29,2021', 20);
	
--insert statement into table "chua.assignment"
insert into chua.assignment(
	id, course, name, duedate, maxgrade)
	--the bad data is the same id as the first insert
	values (1, 'CS431', 'Bod', 'January 30,2021', 30);
	
--insert statement into table "chua.assignment"
insert into chua.assignment(
	id, course, name, duedate, maxgrade)
	--the bad data inserted is negative in maxgrade
	values (3, 'CS431', 'Matt', 'January 31,2021', -40);
	
--insert statement into table "chua.assignment"
insert into chua.assignment(
	id, course, name, duedate, maxgrade)
	--the bad data inserted is null in course
	values (4, null, 'Jon', 'February 1,2021', 50);