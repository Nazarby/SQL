--Таблица employees

--1. Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null

create table employees (
	id serial primary key,
	employee_name Varchar(50) unique not null
); 

--2. Наполнить таблицу employee 70 строками.

INSERT INTO employees (employee_name)
values ('Marcus'),
		('Quang'),
		('Archer'),
		('Connor'),
		('Roberto'),
		('Greyson'),
		('Leighton'),
		('Jake'),
		('Ulric'),
		('Darren'),
		('Finlee'),
		('Sebastian'),
		('Harlow'),
		('Christopher'),
		('Waylen'),
		('Kolton'),
		('Tanner'),
		('Quintyn'),
		('Neil'),
		('Wilmer'),
		('Otto'),
		('Branson'),
		('Dominick'),
		('Camden'),
		('Ben'),
		('Gibson'),
		('Titus'),
		('Orson'),
		('Solomon'),
		('Kieran'),
		('Pierce'),
		('Watson'),
		('Yehuda'),
		('Cannon'),
		('Antonio '),
		('Eve'),
		('Yaeko'),
		('Isabella'),
		('Yan'),
		('Tess'),
		('Quinci'),
		('Renata'),
		('Brenda'),
		('Nola'),
		('Violetta'),
		('Gia'),
		('Madeline'),
		('Anastasia'),
		('Giovanna'),
		('Paulina'),
		('Brooklynn'),
		('Sara'),
		('Francesca'),
		('Sienna'),
		('Yana'),
		('Anna'),
		('Ivanka'),
		('Ireland'),
		('Frida'),
		('Greta'),
		('Yuliana'),
		('Yajaira'),
		('Hattie'),
		('Fern'),
		('Kara'),
		('Wynter'),
		('Kimber'),
		('Unity'),
		('Paloma'),
		('Djonny');

select * from employees


--Таблица salary
--
--3. Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
);

--4. Наполнить таблицу salary 15 строками:

INSERT INTO salary(monthly_salary)
VALUES (1000),
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
	
select * from salary

--Таблица employee_salary
--
--5. Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	id_employee int unique not null,
	id_salary int not null
); 

--6. Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

INSERT INTO employee_salary(id_employee, id_salary)
VALUES (54, 4),
(62, 1),
(1, 2),
(72, 11),
(71, 6),
(39, 4),
(64, 12),
(12, 3),
(23, 1),
(29, 8),
(78, 9),
(9, 10),
(4, 15),
(79, 1),
(52, 5),
(82, 9),
(51, 6),
(44, 8),
(33, 5),
(69, 1),
(21, 3),
(38, 2),
(47, 11),
(56, 13),
(95, 14),
(7, 14),
(65, 5),
(15, 8),
(85, 7),
(73, 2),
(19, 1),
(28, 3),
(34, 1),
(57, 3),
(55, 4),
(75, 9),
(99, 10),
(32, 11),
(49, 4),
(67, 3);

select * from employee_salary

--Таблица roles
--
--7. Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int unique not null
);

--8.Поменять тип столба role_name с int на varchar(30)

ALTER table roles ALTER role_name type varchar(30);

--9. Наполнить таблицу roles 20 строками:

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

--Таблица roles_employee
--
--10. Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee (
	id serial primary key,
	id_employee int unique not null,
	id_role int not null,
	foreign key (id_employee) references employees(id),
	foreign key (id_role) references roles(id)
);

--11. Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (id_employee, id_role)
values (2, 5),
		(8, 1),
		(10, 20),
		(12, 15),
		(14, 3),
		(18, 2),
		(21, 4),
		(23, 5),
		(25, 6),
		(27, 7),
		(29, 8),
		(32, 9),
		(33, 11),
		(36, 12),
		(37, 15),
		(39, 17),
		(40, 18),
		(41, 10),
		(43, 11),
		(45, 5),
		(48, 4),
		(49, 3),
		(52, 2),
		(53, 1),
		(54, 8),
		(58, 18),
		(59, 19),
		(60, 20),
		(61, 17),
		(63, 16),
		(65, 15),
		(66, 13),
		(67, 11),
		(68, 10),
		(3, 9),
		(5, 7),
		(7, 6),
		(15, 2),
		(16, 1),
		(20, 1);

select * from roles_employee


