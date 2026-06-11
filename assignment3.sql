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
8 rows in set (0.01 sec)

mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| bankaccount          |
| customer             |
| employee_details     |
| order_details        |
| product              |
+----------------------+
5 rows in set (0.01 sec)

mysql> select * from employee_details;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Ankit Kanu     |          50000 |
|          2 | Ishan Gupta    |          60000 |
|          3 | Shreya Chingam |         100000 |
|          4 | Ganesh Yadav   |          40000 |
|          5 | Shweta Pal     |          70000 |
+------------+----------------+----------------+
5 rows in set (0.03 sec)

mysql> alter table employee_details rename employee;
Query OK, 0 rows affected (0.02 sec)

mysql> select * from employee;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Ankit Kanu     |          50000 |
|          2 | Ishan Gupta    |          60000 |
|          3 | Shreya Chingam |         100000 |
|          4 | Ganesh Yadav   |          40000 |
|          5 | Shweta Pal     |          70000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee where employeeSalary >50000;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          2 | Ishan Gupta    |          60000 |
|          3 | Shreya Chingam |         100000 |
|          5 | Shweta Pal     |          70000 |
+------------+----------------+----------------+
3 rows in set (0.00 sec)

mysql> select * from employee order by employeeSalary desc;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          3 | Shreya Chingam |         100000 |
|          5 | Shweta Pal     |          70000 |
|          2 | Ishan Gupta    |          60000 |
|          1 | Ankit Kanu     |          50000 |
|          4 | Ganesh Yadav   |          40000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee order by employeeSalary ;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          4 | Ganesh Yadav   |          40000 |
|          1 | Ankit Kanu     |          50000 |
|          2 | Ishan Gupta    |          60000 |
|          5 | Shweta Pal     |          70000 |
|          3 | Shreya Chingam |         100000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from order_details;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p105       |       20 |       20000 | cash         | 2026-06-08 00:00:00 | shipping     |
|      103 | c105        | p103       |       60 |      100000 | cash         | 2026-02-08 00:00:00 | delivered    |
|      104 | c104        | p104       |       10 |     2000000 | phonepay     | 2026-01-10 00:00:00 | shipping     |
|      105 | c103        | p104       |       20 |       50000 | cash         | 2026-06-06 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
5 rows in set (0.02 sec)

mysql> create table orders(order_id int primary key, department varchar(50) not null, amount double not null);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into orders values(1,'sales',1000),(2,'sales',1500),(3,'HR',800);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from orders;
+----------+------------+--------+
| order_id | department | amount |
+----------+------------+--------+
|        1 | sales      |   1000 |
|        2 | sales      |   1500 |
|        3 | HR         |    800 |
+----------+------------+--------+
3 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount from orders group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
| HR         |          800 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> select department, average(amount) as total_avg from orders group by department;
ERROR 1305 (42000): FUNCTION e_commerce.average does not exist
mysql> select department, avg(amount) as total_avg from orders group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| sales      |      1250 |
| HR         |       800 |
+------------+-----------+
2 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount from orders group by department having sum(amount) > 1000;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| sales      |         2500 |
+------------+--------------+
1 row in set (0.00 sec)

mysql> select * from employee;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Ankit Kanu     |          50000 |
|          2 | Ishan Gupta    |          60000 |
|          3 | Shreya Chingam |         100000 |
|          4 | Ganesh Yadav   |          40000 |
|          5 | Shweta Pal     |          70000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> create table employee_details(employeeID int not null,name varchar(50) not null,department varchar(60) not nul,salary double not null);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'nul,salary double not null)' at line 1
mysql> create table employee_details(employeeID int not null,name varchar(50) not null,department varchar(60) not null,salary double not null);
Query OK, 0 rows affected (0.03 sec)

mysql> insert into employee_details(01,'devayani ghorpade','HR',5000),(02,'Sakshi Thavre','IT',7000),(03,'Bharti Thande','IT',6000),(04,'neha Chikori','HR',5000),(05,'Pillu Yadav','Finance',4500);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '01,'devayani ghorpade','HR',5000),(02,'Sakshi Thavre','IT',7000),(03,'Bharti Tha' at line 1
mysql> insert into employee_details values(01,'devayani ghorpade','HR',5000),(02,'Sakshi Thavre','IT',7000),(03,'Bharti Thande','IT',6000),(04,'neha Chikori','HR',5000),(05,'Pillu Yadav','Finance',4500);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee_details;
+------------+-------------------+------------+--------+
| employeeID | name              | department | salary |
+------------+-------------------+------------+--------+
|          1 | devayani ghorpade | HR         |   5000 |
|          2 | Sakshi Thavre     | IT         |   7000 |
|          3 | Bharti Thande     | IT         |   6000 |
|          4 | neha Chikori      | HR         |   5000 |
|          5 | Pillu Yadav       | Finance    |   4500 |
+------------+-------------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department, count(*) as total_employee from employee_details group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
| Finance    |              1 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> select department, sum(salary) as total_salary from employee_details group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        10000 |
| IT         |        13000 |
| Finance    |         4500 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department, avg(salary) as total_avg from employee_details group by department;
+------------+-----------+
| department | total_avg |
+------------+-----------+
| HR         |      5000 |
| IT         |      6500 |
| Finance    |      4500 |
+------------+-----------+
3 rows in set (0.00 sec)

mysql> select department, salary, count(*) from employee_details group by department,salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| HR         |   5000 |        2 |
| IT         |   7000 |        1 |
| IT         |   6000 |        1 |
| Finance    |   4500 |        1 |
+------------+--------+----------+
4 rows in set (0.00 sec)

mysql> select * from employee_details;
+------------+-------------------+------------+--------+
| employeeID | name              | department | salary |
+------------+-------------------+------------+--------+
|          1 | devayani ghorpade | HR         |   5000 |
|          2 | Sakshi Thavre     | IT         |   7000 |
|          3 | Bharti Thande     | IT         |   6000 |
|          4 | neha Chikori      | HR         |   5000 |
|          5 | Pillu Yadav       | Finance    |   4500 |
+------------+-------------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department,count(*) as total from employee_details group by department having count(*) > 1;
+------------+-------+
| department | total |
+------------+-------+
| HR         |     2 |
| IT         |     2 |
+------------+-------+
2 rows in set (0.00 sec)

mysql> select department,count(*) as total from employee_details group by department having count(*) <= 1;
+------------+-------+
| department | total |
+------------+-------+
| Finance    |     1 |
+------------+-------+
1 row in set (0.00 sec)

mysql> select department,count(*) from employee_details where count(*) > 1 group by department;
ERROR 1111 (HY000): Invalid use of group function
mysql> select department,count(*) from employee_details group by department having count(*) > 1 ;
+------------+----------+
| department | count(*) |
+------------+----------+
| HR         |        2 |
| IT         |        2 |
+------------+----------+
2 rows in set (0.00 sec)