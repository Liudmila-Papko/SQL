
create table employees(
id serial primary key,
employee_name varchar(50) not null
);

INSERT INTO employees (employee_name)
VALUES
    ('Alice'), ('Bob'), ('Charlie'), ('Diana'), ('Edward'),
    ('Fiona'), ('George'), ('Hannah'), ('Ivy'), ('Jack'),
    ('Karen'), ('Liam'), ('Mona'), ('Nathan'), ('Olivia'),
    ('Paul'), ('Quinn'), ('Rachel'), ('Steve'), ('Tina'),
    ('Ursula'), ('Victor'), ('Wendy'), ('Xander'), ('Yara'),
    ('Zane'), ('Amy'), ('Ben'), ('Chris'), ('David'),
    ('Eve'), ('Frank'), ('Gina'), ('Hugo'), ('Isla'),
    ('Jake'), ('Kate'), ('Leo'), ('Maya'), ('Nina'),
    ('Oscar'), ('Peter'), ('Quincy'), ('Rita'), ('Sam'),
    ('Terry'), ('Uma'), ('Vera'), ('Will'), ('Xena'),
    ('Yves'), ('Zoe'), ('Annie'), ('Bryce'), ('Cleo'),
    ('Doug'), ('Ella'), ('Finn'), ('Grace'), ('Holly'),
    ('Ian'), ('Jackie'), ('Kara'), ('Lilly'), ('Maggie'),
    ('Noah'), ('Olga'), ('Paulina'), ('Quinn'), ('Rob');

create table salary(
id serial primary key,
monthly_salary int not null
);

select * from salary;

insert into salary (monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);

create table employees_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

select * from employees_salary 

insert into employees_salary (employee_id, salary_id)
values  (3, 7),
		(1, 4),
		(5, 9),
		(40, 13),
		(23, 4),
		(11, 2),
		(52, 10),
		(15, 13),
		(26, 4),
		(16, 1),
		(33, 7),
		(330, 3),
		(100, 4),
		(234, 5),
		(80, 6),
		(99, 7),
		(98, 8),
		(83, 9),
		(1000, 10),
		(500, 11),
		(244, 12),
		(124, 13),
		(2, 14),
		(4, 15),
		(6, 16),
		(7, 1),
		(10, 2),
		(12, 3),
		(19, 4),
		(27, 16),
		(38, 15),
		(34, 14),
		(18, 13),
		(25, 12),
		(31, 11),
		(20, 10),
		(9, 9),
		(39, 8),
		(50, 7),
		(70, 6);

create table roles(
id serial primary key,
role_title varchar(50) unique not null
);
select * from roles;
ALTER table roles
RENAME COLUMN role_title TO role_name;

insert into roles (role_name)
values ('Junior Python developer'),
    ('Middle Python developer'),
    ('Senior Python developer'),
    ('Junior Java developer'),
    ('Middle Java developer'),
    ('Senior Java developer'),
    ('Junior JavaScript developer'),
    ('Middle JavaScript developer'),
    ('Senior JavaScript developer'),
    ('Junior Manual QA engineer'),
    ('Middle Manual QA engineer'),
    ('Senior Manual QA engineer'),
    ('Project Manager'),
    ('Designer'),
    ('HR'),
    ('CEO'),
    ('Sales manager'),
    ('Junior Automation QA engineer'),
    ('Middle Automation QA engineer'),
    ('Senior Automation QA engineer');

create table roles_employee(
	id serial primary key,
	employee_id int unique not null,
	role_id int not null,
foreign key (employee_id)
		references employees(id),
foreign key (role_id)
		references roles(id)
);

insert into roles_employee(employee_id, role_id)
values (7, 2),
    (20, 4),
    (3, 9),
    (5, 13),
    (23, 4),
    (11, 2),
    (10, 9),
    (22, 13),
    (21, 3),
    (34, 4),
    (6, 7),
    (8, 2),
    (15, 5),
    (17, 9),
    (9, 8),
    (12, 3),
    (25, 13),
    (33, 7),
    (31, 6),
    (14, 10),
    (18, 3),
    (19, 12),
    (26, 8),
    (29, 5),
    (30, 4),
    (28, 2),
    (32, 11),
    (16, 7),
    (13, 3),
    (24, 9),
    (27, 6),
    (35, 10),
    (36, 12),
    (37, 5),
    (38, 4),
    (39, 9),
    (40, 13),
    (41, 3),
    (42, 7);
insert into roles_employee(employee_id, role_id)
values (1, 2);
select * from roles_employee;

select * from employees;
select * from salary;
select * from employees_salary;


select e.employee_name, s.monthly_salary 
from employees_salary as es
join employees as e on e.id = es.employee_id
join salary as s on s.id = es.salary_id

select e.employee_name, s.monthly_salary 
from employees_salary as es
join employees as e on e.id = es.employee_id
join salary as s on s.id = es.salary_id
where s.monthly_salary < 2000;

insert into salary(monthly_salary)
values (3000),
	   (3500);
d
select s.monthly_salary
from employees_salary as es
right join salary as s on s.id = es.salary_id
where es.salary_id is null;



