--create department table
create table chua.department(
	id_dep serial not null,
	name_dep varchar(225) not null,
	email varchar(225) null,
	building varchar(225) not null,
	room varchar(225) not null,
	primary key(id_dep)
);
--create course table
create table chua.course(
	id_cou serial not null,
	name_cou varchar(225) not null,
	dept int not null,
	units integer not null,
	primary key(id_cou),
	foreign key(dept) references department(id_dep)
);
--create section table
create table chua.section(
	id_sec serial not null,
	course_sec int not null,
	term integer not null,
	yr integer not null,
	secNum varchar(225) default '01',
	primary key(id_sec),
	foreign key(course_sec) references course(id_cou)
);