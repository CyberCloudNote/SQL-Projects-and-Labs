-- the following line causes all types, tables to be created in the solution schema by default
-- you can edit it to put them in your schema by default
SET search_path TO chua, public;

CREATE TYPE schoolyear_t AS ENUM ('FR', 'SO', 'JR', 'SR', 'GR');

CREATE TABLE student (
	netid char(6) primary key,
	fname varchar not null,
	lname varchar not null,
	yrInSchool schoolyear_t not null
);

CREATE TABLE grades (
	student_id char(6) references student not null,
	section_id bigint references section not null,
	grade char(2),
	grade_pts numeric generated always as (
		CASE WHEN grade = 'A' THEN 4
     		 WHEN grade = 'B' THEN 3
			 WHEN grade = 'C' THEN 2
			 WHEN grade = 'D' THEN 1
			 WHEN grade = 'F' THEN 0
		END
	) stored, 
	primary key(student_id, section_id)
);
