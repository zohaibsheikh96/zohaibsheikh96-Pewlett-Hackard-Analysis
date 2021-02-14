SELECT employees.emp_no,employees.first_name,employees.last_name,
titles.title,titles.from_date,titles.to_date
INTO Retirement_titles_table
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE employees.birth_date BETWEEN '1952-01-01' AND '1955-12-31'

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM Retirement_titles_table
ORDER BY emp_no, to_date DESC;
-- retirent_titles
SELECT COUNT(title), title 
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

-- Mentorship QUEERY

SELECT DISTINCT ON(employees.emp_no) employees.emp_no,employees.first_name,employees.last_name,employees.birth_date,
dept_emp.from_date,dept_emp.to_date,
titles.title
INTO mentorship_eligibilty
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE (dept_emp.to_date = ('9999-01-01'))
AND (employees.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;