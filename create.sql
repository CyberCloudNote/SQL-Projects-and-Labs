--create schema last name followed by first initial
create schema chua
--create table defined by schema and table name
create table chua.assignment(
--input collum data followed by data type with acceptance to null
	id integer null,
	course varchar(30) null,
	name varchar(30) null,
	duedate date null,
	maxgrade integer null
);