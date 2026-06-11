/*
Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order
*/

mysql> create database student_info;
Query OK, 1 row affected (0.01 sec)

mysql> use student_info;
Database changed

mysql> create table student(stud_id int(10) not null primary key,FirstName varchar(50) not null,LastName varchar(50) not null,Age int(10) not null,Phoneno double not null,Address varchar(70) not null);
Query OK, 0 rows affected, 2 warnings (0.02 sec)

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| stud_id   | int         | NO   | PRI | NULL    |       |
| FirstName | varchar(50) | NO   |     | NULL    |       |
| LastName  | varchar(50) | NO   |     | NULL    |       |
| Age       | int         | NO   |     | NULL    |       |
| Phoneno   | double      | NO   |     | NULL    |       |
| Address   | varchar(70) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> insert into student values(1,'Aarav','Sharma',22,1234567890,'Bandra West'),(2,'Karan Mumbai','Singh',22,2345678901,'Uttar Pradesh'),(3,'Vikram','Joshi',23,3456789012,'Nashik Maharashtra'),(4,'Meera','Menon',25,4567891230,'Nagpur Maharashtra'),(5,'Ishita','Kapoor',24,8974561305,'Surat Gujarat');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+---------+--------------+----------+-----+------------+--------------------+
| stud_id | FirstName    | LastName | Age | Phoneno    | Address            |
+---------+--------------+----------+-----+------------+--------------------+
|       1 | Aarav        | Sharma   |  22 | 1234567890 | Bandra West        |
|       2 | Karan Mumbai | Singh    |  22 | 2345678901 | Uttar Pradesh      |
|       3 | Vikram       | Joshi    |  23 | 3456789012 | Nashik Maharashtra |
|       4 | Meera        | Menon    |  25 | 4567891230 | Nagpur Maharashtra |
|       5 | Ishita       | Kapoor   |  24 | 8974561305 | Surat Gujarat      |
+---------+--------------+----------+-----+------------+--------------------+
5 rows in set (0.00 sec)

mysql> select * from student order by LastName;
+---------+--------------+----------+-----+------------+--------------------+
| stud_id | FirstName    | LastName | Age | Phoneno    | Address            |
+---------+--------------+----------+-----+------------+--------------------+
|       3 | Vikram       | Joshi    |  23 | 3456789012 | Nashik Maharashtra |
|       5 | Ishita       | Kapoor   |  24 | 8974561305 | Surat Gujarat      |
|       4 | Meera        | Menon    |  25 | 4567891230 | Nagpur Maharashtra |
|       1 | Aarav        | Sharma   |  22 | 1234567890 | Bandra West        |
|       2 | Karan Mumbai | Singh    |  22 | 2345678901 | Uttar Pradesh      |
+---------+--------------+----------+-----+------------+--------------------+
5 rows in set (0.00 sec)