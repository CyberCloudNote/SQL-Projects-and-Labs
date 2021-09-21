--query to show names of all course in the “English” department
select course.dept, department.name, department.id_dep from chua.course
left join chua.department on chua.course.dept = chua.department.id_dep
where (course.dept = department.id_dep) and (department.name = 'English');

--query to show all sections of “Database Architecture” for term 5 (Spring) of 2021
select section.id_sec, section.secNum, section.course_sec, section.yr, section.term, course.id_cou, course.name 
from chua.section left join chua.course on chua.section.id_sec = chua.course.id_cou
where (section.id_sec = course.id_cou) and (course.name = 'Database Architecture') 
and (section.course_sec = 1) and (section.yr = 2021) and (section.term = 5);

--query to show names of departments that are not offering any sections in term 5 of 2021
select department.name, department.id_dep, section.yr, section.term, section,id_sec from chua.section 
full join chua.department on chua.section.id_sec = chua.department.id_dep
where (section.yr != 2021) and (section.term != 5);