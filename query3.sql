SET search_path TO chua, public;

-- List netid's and grades for all students in section with id 1 (id, not section number)
SELECT s.netid, g.grade 
FROM chua.student s, chua.grades g
WHERE section_id = 1;

-- List netid's and first and last name of students taking any section during term 9 of 2020
SELECT s.netid s.fname, s.lname 
FROM chua.student s, chua.section x
WHERE term = 9 AND yr = 2020;

-- Which courses (name + grade)  has student mp4444 taken?
SELECT c.name, s.fname, s.lname, g.grade
FROM chua.course c, chua.student s, chua.grade g
WHERE s.netid = 'mp4444';

-- Who (first name and last name) took College Writing Lab in term 5 of 2021?
SELECT s.fname, s.lname
FROM chua.course c, chua.student s
WHERE c.name = 'College Writing Lab' AND term = 5 AND yr = 2021;

-- Which student (first and last name), course name and section number (not id), term and year still have a null grade in a course?
SELECT s.fname, s.lname, c.name, x.secNum, x.term, x.yr
FROM chua.course c, chua.student s, chua.section x, chua.grade.g
WHERE g.grade is null;

-- Which course name, section number (not id), term and year do not have any students?
SELECT c.name, x.secNum, x.term, x.yr
FROM chua.course c, chua.section x
WHERE EXISTS
(SELECT COUNT(s.netid)
FROM chua.student s
WHERE COUNT(s.netid) = 0);

-- Which sections (course name, section number, term and year) had at least 2 students?
SELECT c.name, x.secNum, x.term, x.yr
FROM chua.course c, chua.section x, chua.grade.g
WHERE EXISTS
(SELECT COUNT(s.netid)
FROM chua.student s
WHERE COUNT(s.netid) >= 2;

-- Which students (netid, first and last name) have either not taken College Writing Lab or got a D or F?
SELECT s.netid, s.fname, s.lname
FROM chua.student s
WHERE NOT EXISTS
(SELECT * 
 FROM chua.course c, chua.grade g
 WHERE c.name = 'College Writing Lab' OR g.grade = 'D' OR g.grade = 'F');

-- List all students (netid, first and last name) and their GPA's. To make the next query easier, create a view out of this query
CREATE VIEW gpa_view AS
SELECT s.netid, s.fname, s.lname, AVG(g.grade)
FROM chua.student s, chua.grade g
 
-- This query is to display the results of the view
SELECT * FROM gpa_view;

-- List the netid, first and last name and gpa of the top 3 students
SELECT s.netid, s.fname, s.lname, AVG(g.grade)
FROM chua.student s, chua.grade g
ORDER BY AVG(g.grade)
LIMIT 3;