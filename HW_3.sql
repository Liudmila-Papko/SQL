select * from employees;
select * from salary;
select * from employees_salary;
select * from roles_employee;

select e.employee_name, s.monthly_salary 
from employees_salary as es
join employees as e on e.id = es.employee_id
join salary as s on s.id = es.salary_id

select e.employee_name, s.monthly_salary 
from employees_salary as es
join employees as e on e.id = es.employee_id
join salary as s on s.id = es.salary_id
where s.monthly_salary < 2000;

select s.monthly_salary, es.employee_id 
from employees_salary as es
join salary as s on s.id = es.salary_id
left join employees as e on e.id = es.employee_id
where e.id is null;

select s.monthly_salary, es.employee_id 
from employees_salary as es
join salary as s on s.id = es.salary_id
left join employees as e on e.id = es.employee_id
where e.id is null and s.monthly_salary < 2000;

select e.employee_name, es.employee_id, e.id 
from employees_salary as es
right join employees as e on e.id = es.employee_id
where es.employee_id is null;

select e.employee_name, r.role_name 
from roles_employee as re
join employees as e on e.id = re.employee_id
join roles as r on r.id = re.role_id;

select e.employee_name, r.role_name 
from roles_employee as re
join employees as e on e.id = re.employee_id
join roles as r on r.id = re.role_id
where r.role_name like '%Java developer'

select e.employee_name, r.role_name 
from roles_employee as re
join employees as e on e.id = re.employee_id
join roles as r on r.id = re.role_id
where r.role_name like '%Python developer'

select e.employee_name, r.role_name 
from roles_employee as re
join employees as e on e.id = re.employee_id
join roles as r on r.id = re.role_id
where r.role_name like '%QA%'

insert into roles_employee(employee_id, role_id)
values (69, 18),
	   (59,19);

select e.employee_name, r.role_name 
from roles_employee as re
join employees as e on e.id = re.employee_id
join roles as r on r.id = re.role_id
where r.role_name like '%Manual%'

select e.employee_name, r.role_name 
from roles_employee as re
join employees as e on e.id = re.employee_id
join roles as r on r.id = re.role_id
where r.role_name like '%Automation%'

select e.employee_name, s.monthly_salary 
from employees_salary as es
join employees as e on e.id = es.employee_id
join salary as s on s.id = es.salary_id
join roles_employee as re on e.id = re.role_id
where re.role_id in (select r.id from roles as r where r.role_name like 
'%Junior%');

select e.employee_name, s.monthly_salary, r.role_name
from employees_salary as es
join employees as e on e.id = es.employee_id
join salary as s on s.id = es.salary_id
join roles_employee as re on e.id = re.employee_id 
join roles as r on r.id = re.role_id 
where r.role_name like '%Junior%';

select e.employee_name, s.monthly_salary, r.role_name
from employees_salary as es
join employees as e on e.id = es.employee_id
join salary as s on s.id = es.salary_id
join roles_employee as re on e.id = re.employee_id 
join roles as r on r.id = re.role_id 
where r.role_name like '%Middle%';

select e.employee_name, s.monthly_salary, r.role_name
from employees_salary as es
join employees as e on e.id = es.employee_id
join salary as s on s.id = es.salary_id
join roles_employee as re on e.id = re.employee_id 
join roles as r on r.id = re.role_id 
where r.role_name like '%Senior%';

select s.monthly_salary, r.role_name
from employees_salary as es
join salary as s on s.id = es.salary_id
join roles_employee as re on es.employee_id = re.employee_id 
join roles as r on r.id = re.role_id 
where r.role_name like '%Java %';

select s.monthly_salary, r.role_name
from employees_salary as es
join salary as s on s.id = es.salary_id
join roles_employee as re on es.employee_id = re.employee_id 
join roles as r on r.id = re.role_id 
where r.role_name like '%Python %';

select e.employee_name, s.monthly_salary, r.role_name
from employees_salary as es
join salary as s on s.id = es.salary_id
join employees as e on e.id = es.employee_id
join roles_employee as re on e.id = re.employee_id 
join roles as r on r.id = re.role_id 
where r.role_name like '%Junior Python %';

insert into roles_employee(employee_id, role_id)
values (49, 1);

insert into employees_salary (employee_id, salary_id)
values (49, 1);

select e.employee_name, s.monthly_salary
from employees_salary as es
join salary as s on s.id = es.salary_id
join employees as e on e.id = es.employee_id
join roles_employee as re on e.id = re.employee_id 
join roles as r on r.id = re.role_id 
where r.role_name like '%Middle JavaScript %';

select e.employee_name, s.monthly_salary
from employees_salary as es
join salary as s on s.id = es.salary_id
join employees as e on e.id = es.employee_id
join roles_employee as re on e.id = re.employee_id 
join roles as r on r.id = re.role_id 
where r.role_name like '%Senior Java %';

insert into roles_employee(employee_id, role_id)
values (66, 10);
insert into employees_salary (employee_id, salary_id)
values (66, 1);

select s.monthly_salary, r.role_name
from employees_salary as es
join salary as s on s.id = es.salary_id
join roles_employee as re on es.employee_id = re.employee_id 
join roles as r on r.id = re.role_id 
where r.role_name like '%Junior%QA %';

select round(AVG(s.monthly_salary), 2)
from employees_salary as es
join salary as s on s.id = es.salary_id
join roles_employee as re on es.employee_id = re.employee_id 
join roles as r on r.id = re.role_id 
where r.role_name like '%Junior%';

select sum(s.monthly_salary)
from employees_salary as es
join salary as s on s.id = es.salary_id
join roles_employee as re on es.employee_id = re.employee_id 
join roles as r on r.id = re.role_id 
where r.role_name like '%JavaScript%';

select min(s.monthly_salary)
from employees_salary as es
join salary as s on s.id = es.salary_id
join roles_employee as re on es.employee_id = re.employee_id 
join roles as r on r.id = re.role_id 
where r.role_name like '%QA%';

select max(s.monthly_salary)
from employees_salary as es
join salary as s on s.id = es.salary_id
join roles_employee as re on es.employee_id = re.employee_id 
join roles as r on r.id = re.role_id 
where r.role_name like '%JavaScript%';

select count(re.role_id)
from roles_employee as re
join roles as r on r.id = re.role_id 
where r.role_name like '%QA%';

select count(re.role_id)
from roles_employee as re
join roles as r on r.id = re.role_id 
where r.role_name like '%Middle%';

select count(re.role_id)
from roles_employee as re
join roles as r on r.id = re.role_id 
where r.role_name like '%developer%';

select sum(s.monthly_salary)
from employees_salary as es
join salary as s on s.id = es.salary_id
join roles_employee as re on es.employee_id = re.employee_id 
join roles as r on r.id = re.role_id 
where r.role_name like '%developer%';

select e.employee_name, r.role_name, s.monthly_salary
from employees_salary as es
join salary as s on s.id = es.salary_id
join employees as e on e.id = es.employee_id
join roles_employee as re on e.id = re.employee_id 
join roles as r on r.id = re.role_id 
order by s.monthly_salary;

select e.employee_name, r.role_name, s.monthly_salary
from employees_salary as es
join salary as s on s.id = es.salary_id
join employees as e on e.id = es.employee_id
join roles_employee as re on e.id = re.employee_id 
join roles as r on r.id = re.role_id 
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary;

select e.employee_name, r.role_name, s.monthly_salary
from employees_salary as es
join salary as s on s.id = es.salary_id
join employees as e on e.id = es.employee_id
join roles_employee as re on e.id = re.employee_id 
join roles as r on r.id = re.role_id 
where s.monthly_salary < 2300
order by s.monthly_salary;

select e.employee_name, r.role_name, s.monthly_salary
from employees_salary as es
join salary as s on s.id = es.salary_id
join employees as e on e.id = es.employee_id
join roles_employee as re on e.id = re.employee_id 
join roles as r on r.id = re.role_id 
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary;