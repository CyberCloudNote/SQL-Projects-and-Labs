--create schema last name followed by first initial
create schema IF NOT EXISTS chua

--create table defined by schema and table name
create table chua.movie(
	title varchar(30) null,
	yr integer null
);