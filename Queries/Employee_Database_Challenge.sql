
-- Deliverable 1(a)
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	title.title,
	title.from_date,
    title.to_date	
INTO retirement_titles
FROM employees as e
	INNER JOIN titles as title
		ON (e.emp_no = title.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by e.emp_no;
select * from retirement_update;



select emp_no, first_name, last_name, title
from retirement_titles;

-- Deliverable 1(b)
-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) 
emp_no,
first_name,
last_name,
title
--INTO unique_titles
FROM retirement_titles
ORDER BY emp_no asc, to_date desc;



SELECT DISTINCT ON (emp_no) 
emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no asc, to_date desc;


-- Deliverable 1(c)
select count(ut.emp_no),ut.title
into retiring_titles
from unique_titles as ut
group by title
order by  count(title) desc;


-- Deliverable 2: The Employees Eligible for the Mentorship Program
select distinct on (e.emp_no)e.emp_no,
       e.first_name,
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
	   title.title
INTO mentorship_eligibility
From employees as e
INNER JOIN titles as title
		ON (e.emp_no = title.emp_no)
inner join dept_emp as de
        ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
order by e.emp_no;



--Extra query
select count(me.emp_no)
from mentorship_eligibility as me;

--extra query
--Segregate female employee data
select e.emp_no,
       e.birth_date,
       e.first_name,
	   e.last_name,
	   e.gender   
--into female_employees
from employees as e 
where (e.gender = 'F')
group by e.emp_no
order by e.emp_no desc;

select count(fe.emp_no)
from female_employees as fe;