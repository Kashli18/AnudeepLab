mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| db1                     |
| ecommerces              |
| information_schema      |
| joins                   |
| mysql                   |
| performance_schema      |
| studentinfo             |
| studentmanagementsystem |
| sys                     |
+-------------------------+
9 rows in set (0.01 sec)

mysql> use ecommerces;
Database changed
mysql> CREATE TABLE employees (employeeID INT PRIMARY KEY,name VARCHAR(50),department VARCHAR(20),salary INT);
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO employees VALUES(101, 'Alice Johnson', 'HR', 65000),(102, 'Bob Smith', 'IT', 85000),(103, 'Charlie Brown', 'IT', 92000),(104, 'Diana Prince', 'Marketing', 71000),(105, 'Evan Wright', 'Finance', 78000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM employees;
+------------+---------------+------------+--------+
| employeeID | name          | department | salary |
+------------+---------------+------------+--------+
|        101 | Alice Johnson | HR         |  65000 |
|        102 | Bob Smith     | IT         |  85000 |
|        103 | Charlie Brown | IT         |  92000 |
|        104 | Diana Prince  | Marketing  |  71000 |
|        105 | Evan Wright   | Finance    |  78000 |
+------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE getEmployeesDetails()
    -> BEGIN
    ->     SELECT * FROM employees;
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> DELIMITER ;
mysql> CALL getEmployeesDetails();
+------------+---------------+------------+--------+
| employeeID | name          | department | salary |
+------------+---------------+------------+--------+
|        101 | Alice Johnson | HR         |  65000 |
|        102 | Bob Smith     | IT         |  85000 |
|        103 | Charlie Brown | IT         |  92000 |
|        104 | Diana Prince  | Marketing  |  71000 |
|        105 | Evan Wright   | Finance    |  78000 |
+------------+---------------+------------+--------+
5 rows in set (0.00 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE getEmployeeByDepartment(
    ->     IN dept VARCHAR(20)
    -> BEGIN
    ->     SELECT *
    ->     FROM employees
    ->     WHERE department = dept;
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER ;
mysql> CALL getEmployeeByDepartment('HR');
+------------+---------------+------------+--------+
| employeeID | name          | department | salary |
+------------+---------------+------------+--------+
|        101 | Alice Johnson | HR         |  65000 |
+------------+---------------+------------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> CALL getEmployeeByDepartment('IT');
+------------+---------------+------------+--------+
| employeeID | name          | department | salary |
+------------+---------------+------------+--------+
|        102 | Bob Smith     | IT         |  85000 |
|        103 | Charlie Brown | IT         |  92000 |
+------------+---------------+------------+--------+
2 rows in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> delimiter //
mysql> create procedure getEmployeeCount(out total int)
    -> begin
    -> select count(*) into total
    -> from employees;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call getEmployeeCount(@total) ;
Query OK, 1 row affected (0.01 sec)

mysql> select @total;
+--------+
| @total |
+--------+
|      5 |
+--------+
1 row in set (0.00 sec)