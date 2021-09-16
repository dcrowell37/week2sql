
-- Question 1
select count(title) as "Number Of Employees", t.title, e.birth_date from titles t
inner join employees e on e.emp_no = t.emp_no
where e.birth_date > '1965-01-01'
group by t.title;

-- Question 2
select t.title, avg(s.salary) as "Average Salary" from titles t
inner join salaries s on s.emp_no = t.emp_no
group by t.title;

-- Question 3
select d.dept_name as "Department", sum(s.salary) as "Total spent on salary" from departments d
inner join dept_emp de on de.dept_no = d.dept_no
inner join salaries s on s.emp_no = de.emp_no
where s.from_date Between '1990-01-01' and '1993-01-01'
and s.to_date Between '1990-01-01' and '1993-01-01'
group by d.dept_name
having d.dept_name LIKE 'M%';
 