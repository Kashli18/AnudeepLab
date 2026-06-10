mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
8 rows in set (0.02 sec)

mysql> use e_commerce;
Database changed

mysql> create table employee(employeeID int(10) not null primary key, employeeName varchar(50) not null, salary double not null);
Query OK, 0 rows affected, 1 warning (0.02 sec)

mysql> insert into employee values(01,'Ankit Kanu',50000),(02,'Ishan Gupta',60000),(03,'Shreya Chingam',100000),(04,'Ganesh Yadav',40000),(05,'Shweta Pal',70000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Ankit Kanu     |  50000 |
|          2 | Ishan Gupta    |  60000 |
|          3 | Shreya Chingam | 100000 |
|          4 | Ganesh Yadav   |  40000 |
|          5 | Shweta Pal     |  70000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set salary=80000 where employeeID=5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Ankit Kanu     |  50000 |
|          2 | Ishan Gupta    |  60000 |
|          3 | Shreya Chingam | 100000 |
|          4 | Ganesh Yadav   |  40000 |
|          5 | Shweta Pal     |  80000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set employeeName='Anup Pal' where employeeID=2;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Ankit Kanu     |  50000 |
|          2 | Anup Pal       |  60000 |
|          3 | Shreya Chingam | 100000 |
|          4 | Ganesh Yadav   |  40000 |
|          5 | Shweta Pal     |  80000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> delete from employee where employeeId=5;
Query OK, 1 row affected (0.01 sec)

mysql> select * from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Ankit Kanu     |  50000 |
|          2 | Anup Pal       |  60000 |
|          3 | Shreya Chingam | 100000 |
|          4 | Ganesh Yadav   |  40000 |
+------------+----------------+--------+
4 rows in set (0.00 sec)

mysql> delete from employee;
Query OK, 4 rows affected (0.01 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employeeID   | int         | NO   | PRI | NULL    |       |
| employeeName | varchar(50) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into employee values(01,'Ankit Kanu',50000),(02,'Ishan Gupta',60000),(03,'Shreya Chingam',100000),(04,'Ganesh Yadav',40000),(05,'Shweta Pal',70000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Ankit Kanu     |  50000 |
|          2 | Ishan Gupta    |  60000 |
|          3 | Shreya Chingam | 100000 |
|          4 | Ganesh Yadav   |  40000 |
|          5 | Shweta Pal     |  70000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> truncate table employee;
Query OK, 0 rows affected (0.02 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| employeeID   | int         | NO   | PRI | NULL    |       |
| employeeName | varchar(50) | NO   |     | NULL    |       |
| salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> drop table employee;
Query OK, 0 rows affected (0.02 sec)

mysql> desc employee;
ERROR 1146 (42S02): Table 'e_commerce.employee' doesn't exist
mysql> create table employee(employeeID int(10) not null primary key, employeeName varchar(50) not null, salary double not null);
Query OK, 0 rows affected, 1 warning (0.02 sec)

mysql> insert into employee values(01,'Ankit Kanu',50000),(02,'Ishan Gupta',60000),(03,'Shreya Chingam',100000),(04,'Ganesh Yadav',40000),(05,'Shweta Pal',70000);
Query OK, 5 rows affected (0.00 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+----------------+--------+
| employeeID | employeeName   | salary |
+------------+----------------+--------+
|          1 | Ankit Kanu     |  50000 |
|          2 | Ishan Gupta    |  60000 |
|          3 | Shreya Chingam | 100000 |
|          4 | Ganesh Yadav   |  40000 |
|          5 | Shweta Pal     |  70000 |
+------------+----------------+--------+
5 rows in set (0.00 sec)

mysql> alter table employee add email varchar(100) not null;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(50)  | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| email        | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee modify employeeName varchar(100) not null;
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
| email        | varchar(100) | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table employee drop column email;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| employeeID   | int          | NO   | PRI | NULL    |       |
| employeeName | varchar(100) | NO   |     | NULL    |       |
| salary       | double       | NO   |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename column salary to employeeSalary;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee rename to employee_details;
Query OK, 0 rows affected (0.01 sec)

mysql> desc employee;
ERROR 1146 (42S02): Table 'e_commerce.employee' doesn't exist
mysql> desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee_details drop primary key ;
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   |     | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee_details add constraint primary key(employeeID);
Query OK, 0 rows affected (0.12 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee_details;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| employeeID     | int          | NO   | PRI | NULL    |       |
| employeeName   | varchar(100) | NO   |     | NULL    |       |
| employeeSalary | double       | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> desc e_commerce;
ERROR 1146 (42S02): Table 'e_commerce.e_commerce' doesn't exist
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee_details     |
| order_details        |
| product              |
+----------------------+
4 rows in set (0.01 sec)