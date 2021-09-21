--Insert department with a null name
insert into chua.department(name_dep, email, building, room)
	values(null, 'Computer_Department@gmail.com', 'Science Building', 'SC 200');
insert into chua.department(name_dep, email, building, room)
	values('Math', 'Math_Department@gmail.com', 'Math Building', 'MA 300');
insert into chua.department(name_dep, email, building, room)
	values(null, 'English_Department@gmail.com', 'English Building', 'EN 400');
insert into chua.department(name_dep, email, building, room)
	values('Business', 'Business_Department@gmail.com', 'Business Building', 'BU 500');
	
-- insert a course with a dept field that does not exist in the department table
insert into course(name_cou, dept, units)
	values('CS 431', 124643, 3);
insert into course(name_cou, dept, units)
	values('MA 222', 1, 3);
insert into course(name_cou, dept, units)
	values('EN 103', 262464, 3);
insert into course(name_cou, dept, units)
	values('BU 456', 2, 3);
	
--should not insert section with duplicate value of id
insert into chua.section(course_sec, term, yr, secNum)
	values(1, 5, 2021,'01');
insert into chua.section(course_sec, term, yr, secNum)
	values(2, 5, 2021,'02');
insert into chua.section(course_sec, term, yr, secNum)
	values(3, 9, 2021,'01');
insert into chua.section(course_sec, term, yr, secNum)
	values(4, 5, 2021,'01');