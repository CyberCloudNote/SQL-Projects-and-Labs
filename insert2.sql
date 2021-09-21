--insert statement for table department
insert into chua.department(name_dep, email, building, room)
	values('Computer Science', 'Computer_Department@gmail.com', 'Science Building', 'SC 200');
insert into chua.department(name_dep, email, building, room)
	values('Math', 'Math_Department@gmail.com', 'Math Building', 'MA 300');
insert into chua.department(name_dep, email, building, room)
	values('English', 'English_Department@gmail.com', 'English Building', 'EN 400');
insert into chua.department(name_dep, email, building, room)
	values('Business', 'Business_Department@gmail.com', 'Business Building', 'BU 500');
	
--insert statement for table course
insert into chua.course(name_cou, dept, units)
	values('Database Architecture', 1, 3);
insert into chua.course(name_cou, dept, units)
	values('Calculus', 2, 3);
insert into chua.course(name_cou, dept, units)
	values('English 2', 3, 3);
insert into chua.course(name_cou, dept, units)
	values('Financial Accounting', 4, 3);
	
--insert statement for table section
insert into chua.section(course_sec, term, yr, secNum)
	values(1, 5, 2021,'01');
insert into chua.section(course_sec, term, yr, secNum)
	values(2, 5, 2021,'02');
insert into chua.section(course_sec, term, yr, secNum)
	values(3, 9, 2021,'01');
insert into chua.section(course_sec, term, yr, secNum)
	values(4, 5, 2021,'01');