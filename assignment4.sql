mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| student_info            |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
9 rows in set (0.01 sec)

mysql> create database joins;
Query OK, 1 row affected (0.01 sec)

mysql> use joins;
Database changed
mysql> create table department(department_id int primary key not null,department_name varchar(30) not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc department;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(30) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insert into department values(1,'Hr'),(2,'IT'),(3,'Finance'),(4,'Marketing');
Query OK, 4 rows affected (0.02 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | Hr              |
|             2 | IT              |
|             3 | Finance         |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> create table employee(employee_id int primary key not null,employee_name varchar(50) not null, department_id int, foreign key(department_id) references department(department_id));
Query OK, 0 rows affected (0.04 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(50) | NO   |     | NULL    |       |
| department_id | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into employee values(1,'Aarav Sharma',1),(2,'Arohi Roy',2),(3,'Aditya Yadav',1),(4,'Saksham Chavan',null),(5,'Dhawal Desai',4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+-------------+----------------+---------------+
| employee_id | employee_name  | department_id |
+-------------+----------------+---------------+
|           1 | Aarav Sharma   |             1 |
|           2 | Arohi Roy      |             2 |
|           3 | Aditya Yadav   |             1 |
|           4 | Saksham Chavan |          NULL |
|           5 | Dhawal Desai   |             4 |
+-------------+----------------+---------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee inner join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Aarav Sharma  | Hr              |
| Aditya Yadav  | Hr              |
| Arohi Roy     | IT              |
| Dhawal Desai  | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee left join department on employee.department_id=department.department_id;
+----------------+-----------------+
| employee_name  | department_name |
+----------------+-----------------+
| Aarav Sharma   | Hr              |
| Arohi Roy      | IT              |
| Aditya Yadav   | Hr              |
| Saksham Chavan | NULL            |
| Dhawal Desai   | Marketing       |
+----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee right join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Aarav Sharma  | Hr              |
| Aditya Yadav  | Hr              |
| Arohi Roy     | IT              |
| NULL          | Finance         |
| Dhawal Desai  | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee cross join department;
+----------------+-----------------+
| employee_name  | department_name |
+----------------+-----------------+
| Aarav Sharma   | Marketing       |
| Aarav Sharma   | Finance         |
| Aarav Sharma   | IT              |
| Aarav Sharma   | Hr              |
| Arohi Roy      | Marketing       |
| Arohi Roy      | Finance         |
| Arohi Roy      | IT              |
| Arohi Roy      | Hr              |
| Aditya Yadav   | Marketing       |
| Aditya Yadav   | Finance         |
| Aditya Yadav   | IT              |
| Aditya Yadav   | Hr              |
| Saksham Chavan | Marketing       |
| Saksham Chavan | Finance         |
| Saksham Chavan | IT              |
| Saksham Chavan | Hr              |
| Dhawal Desai   | Marketing       |
| Dhawal Desai   | Finance         |
| Dhawal Desai   | IT              |
| Dhawal Desai   | Hr              |
+----------------+-----------------+
20 rows in set (0.00 sec)