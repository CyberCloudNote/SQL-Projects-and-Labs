--query to show all data in the table
select * from chua.assignment;

--query to show name, date, and course in the table
select name, duedate, course from chua.assignment
--a statement that only allows data sets with CS431 in course to be shown
where course = 'CS431';

--query to show id and duedate in the table
select id, duedate from chua.assignment
-- a statement that only allows dates below February 1, 2021
where duedate < 'February 1, 2021';