/* 1)	Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null */

create table employees(
id serial primary key,
employee_name varchar(50) not null
)

/*2)	Наполнить таблицу employee 70 строками. */

insert into employees (employee_name)
values ('Anna'),
       ('Alla'),
       ('Alina'),
       ('Anton'),
       ('Mihail'),
       ('Maria'),  
       ('Oleg'),
       ('Olga'),
       ('Polina'),
       ('Marina'),
       ('Alena'),
       ('Amelia'),
       ('Antonina'),
       ('Alexandr'),
       ('Dima'),
       ('Vera'),
       ('Anna_2'),
       ('Alla_2'),
       ('Alexandr_2'),
       ('Dima_2'),  
       ('Alina_2'),
       ('Anton_2'),
       ('Mihail_2'),
       ('Maria_2'),
       ('Oleg_2'),
       ('Olga_2'),
       ('Polina_2'),
       ('Marina_2'),
       ('Alena_2'),
       ('Amelia_2'),
       ('Antonina_2'),
       ('Mihail_3'),
       ('Maria_3'),  
       ('Oleg_3'),
       ('Olga_3'),
       ('Polina_3'),
       ('Marina_3'),
       ('Alena_3'),
       ('Amelia_3'),
       ('Antonina_3'),
       ('Eva'),
       ('Victoria'),
       ('Natalia'),
       ('Alisa'),
       ('Oksana'),
       ('Katerina'),
       ('Tatiana'),
       ('Ivan'),
       ('Artur'),
       ('Vadim'),
       ('Irina'),
       ('Daria'),
       ('Mia'),
       ('Sofia'),
       ('Sara'),
       ('Sandra'),
       ('Varvara'),
       ('Kirill'),
       ('Monika'),
       ('Kesha'),
       ('Max'),
       ('Alex'),
       ('Eva_2'),
       ('Victoria_2'),
       ('Natalia_2'),
       ('Alisa_2'),
       ('Oksana_2'),
       ('Katerina_2'),
       ('Tatiana_2'),
       ('Ivan_2'),
       
      
/*3)	Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
 */      

create table salary (
     id serial primary key,
     montly_salary int not null
     )


/* 4)	Наполнить таблицу salary 15 строками*/       

insert into salary(montly_salary)
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
       (2400);
       
     /* 5)	Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
*/
    create table employee_salary (
    id serial primary key,
    employee_id int not null unique,
    salary_id int not null
  )
   

    /* 6)	Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id
*/

insert into employee_salary (employee_id, salary_id)
values (1,8),
       (2,4),
       (3,9),
       (4,4),
       (5,10),
       (6,7),
       (7,2),
       (8,2),
       (9,3),
       (10,11),
       (11,12),
       (12,13),
       (13,13),
       (14,15),
       (15,12),
       (16,14),
       (17,9),
       (18,4),
       (19,9),
       (20,4),
       (21,6),
       (22,7),
       (23,5),
       (24,2),
       (25,4),
       (26,11),
       (27,14),
       (28,9),
       (29,8),
       (30,10),
       (71,10),
       (72,7),
       (73,5),
       (74,12),
       (75,14),
       (76,1),
       (77,14),
       (78,1),
       (79,14),
       (90,10);       
              
      /*7)	Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
 */

      create table roles (
      id serial primary key,
      role_name int not null unique
      )

/*8)	Поменять тип столба role_name с int на varchar(30) */
    
alter table roles 
alter column role_name type varchar(30);    

/*9)	Наполнить таблицу roles 20 строками */

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
       
/* 10)	Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
*/

create table roles_employee (
    id serial primary key,
    employee_id int not null unique,
    role_id int not null,
    foreign key(employee_id)
    references employees(id),
    foreign key(role_id)
    references roles(id)) 
    
   /* 11)	Наполнить таблицу roles_employee 40 строками*/

insert into roles_employee (employee_id, role_id)
values (1,2),
       (2,4),
       (3,6),
       (4,13),
       (5,8),
       (6,4),
       (7,15),
       (8,13),
       (9,20),
       (10,1),
       (11,12),
       (12,3),
       (13,13),
       (14,15),
       (15,5),
       (16,7),
       (17,17),
       (18,4),
       (19,19),
       (20,4),
       (21,20),
       (22,17),
       (23,15),
       (24,12),
       (25,14),
       (26,11),
       (27,14),
       (28,19),
       (29,14),
       (30,20),
       (31,6),
       (32,12),
       (33,10),
       (34,16),
       (35,18),
       (36,3),
       (37,13),
       (38,8),
       (39,7),
       (40,2);
