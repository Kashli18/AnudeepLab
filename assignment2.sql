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
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee_details     |
| order_details        |
| product              |
+----------------------+
4 rows in set (0.02 sec)

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
5 rows in set (0.02 sec)

mysql> select * from employee_details limit 3;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Ankit Kanu     |          50000 |
|          2 | Ishan Gupta    |          60000 |
|          3 | Shreya Chingam |         100000 |
+------------+----------------+----------------+
3 rows in set (0.00 sec)

mysql> select * from employee_details limit 2;
+------------+--------------+----------------+
| employeeID | employeeName | employeeSalary |
+------------+--------------+----------------+
|          1 | Ankit Kanu   |          50000 |
|          2 | Ishan Gupta  |          60000 |
+------------+--------------+----------------+
2 rows in set (0.00 sec)

mysql> select * from employee_details order by employeeSalary ;
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

mysql> select * from employee_details order by employeeName ;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          1 | Ankit Kanu     |          50000 |
|          4 | Ganesh Yadav   |          40000 |
|          2 | Ishan Gupta    |          60000 |
|          3 | Shreya Chingam |         100000 |
|          5 | Shweta Pal     |          70000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employeeName desc;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          5 | Shweta Pal     |          70000 |
|          3 | Shreya Chingam |         100000 |
|          2 | Ishan Gupta    |          60000 |
|          4 | Ganesh Yadav   |          40000 |
|          1 | Ankit Kanu     |          50000 |
+------------+----------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employeeSalary desc;
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

mysql> select * from employee_details order by employeeSalary desc limit 2;
+------------+----------------+----------------+
| employeeID | employeeName   | employeeSalary |
+------------+----------------+----------------+
|          3 | Shreya Chingam |         100000 |
|          5 | Shweta Pal     |          70000 |
+------------+----------------+----------------+
2 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+----------+------------------------+------------+-----------------+----------+
| customer_id | name   | city     | email                  | phone_no   | address         | pin_code |
+-------------+--------+----------+------------------------+------------+-----------------+----------+
| C101        | Rohan  | Thane    | rohan123@gmail.com     | 4578215965 | thane address   |   400600 |
| C102        | Aryan  | Bandra   | aryan77@gmail.com      | 8569472315 | Bandra address  |   400020 |
| C103        | Shahid | Vikhroli | shahidbhai@gmail.com   | 9845625482 | kannawar nagar  |   400300 |
| C104        | Sameer | Vikhroli | sameershaikh@gmail.com | 8097747075 | lodha           |   400302 |
| C105        | Manish | Mulund   | manishyadav@gmail.com  | 8567954253 | Vaishnavi Nagar |   400509 |
+-------------+--------+----------+------------------------+------------+-----------------+----------+
5 rows in set (0.03 sec)

mysql> select distinct city from customer;
+----------+
| city     |
+----------+
| Thane    |
| Bandra   |
| Vikhroli |
| Mulund   |
+----------+
4 rows in set (0.00 sec)

mysql> select not distinct city from customer;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'distinct city from customer' at line 1
mysql> select city from customer;
+----------+
| city     |
+----------+
| Thane    |
| Bandra   |
| Vikhroli |
| Vikhroli |
| Mulund   |
+----------+
5 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+----------+------------------------+------------+-----------------+----------+
| customer_id | name   | city     | email                  | phone_no   | address         | pin_code |
+-------------+--------+----------+------------------------+------------+-----------------+----------+
| C101        | Rohan  | Thane    | rohan123@gmail.com     | 4578215965 | thane address   |   400600 |
| C102        | Aryan  | Bandra   | aryan77@gmail.com      | 8569472315 | Bandra address  |   400020 |
| C103        | Shahid | Vikhroli | shahidbhai@gmail.com   | 9845625482 | kannawar nagar  |   400300 |
| C104        | Sameer | Vikhroli | sameershaikh@gmail.com | 8097747075 | lodha           |   400302 |
| C105        | Manish | Mulund   | manishyadav@gmail.com  | 8567954253 | Vaishnavi Nagar |   400509 |
+-------------+--------+----------+------------------------+------------+-----------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id between
    -> ^C
mysql> select * from customer where customer_id between 'C101' and 'C104';
+-------------+--------+----------+------------------------+------------+----------------+----------+
| customer_id | name   | city     | email                  | phone_no   | address        | pin_code |
+-------------+--------+----------+------------------------+------------+----------------+----------+
| C101        | Rohan  | Thane    | rohan123@gmail.com     | 4578215965 | thane address  |   400600 |
| C102        | Aryan  | Bandra   | aryan77@gmail.com      | 8569472315 | Bandra address |   400020 |
| C103        | Shahid | Vikhroli | shahidbhai@gmail.com   | 9845625482 | kannawar nagar |   400300 |
| C104        | Sameer | Vikhroli | sameershaikh@gmail.com | 8097747075 | lodha          |   400302 |
+-------------+--------+----------+------------------------+------------+----------------+----------+
4 rows in set (0.00 sec)

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

mysql> select * from order_details where order_date between '2026-01-01' and '2026-04-01';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      103 | c105        | p103       |       60 |      100000 | cash         | 2026-02-08 00:00:00 | delivered    |
|      104 | c104        | p104       |       10 |     2000000 | phonepay     | 2026-01-10 00:00:00 | shipping     |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
2 rows in set (0.00 sec)

mysql> select * from order_details where order_date not between '2026-01-01' and '2026-04-01';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      102 | c103        | p105       |       20 |       20000 | cash         | 2026-06-08 00:00:00 | shipping     |
|      105 | c103        | p104       |       20 |       50000 | cash         | 2026-06-06 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
3 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+--------+----------+------------------------+------------+-----------------+----------+
| customer_id | name   | city     | email                  | phone_no   | address         | pin_code |
+-------------+--------+----------+------------------------+------------+-----------------+----------+
| C101        | Rohan  | Thane    | rohan123@gmail.com     | 4578215965 | thane address   |   400600 |
| C102        | Aryan  | Bandra   | aryan77@gmail.com      | 8569472315 | Bandra address  |   400020 |
| C103        | Shahid | Vikhroli | shahidbhai@gmail.com   | 9845625482 | kannawar nagar  |   400300 |
| C104        | Sameer | Vikhroli | sameershaikh@gmail.com | 8097747075 | lodha           |   400302 |
| C105        | Manish | Mulund   | manishyadav@gmail.com  | 8567954253 | Vaishnavi Nagar |   400509 |
+-------------+--------+----------+------------------------+------------+-----------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where customer_id in('C101','C103','C105');
+-------------+--------+----------+-----------------------+------------+-----------------+----------+
| customer_id | name   | city     | email                 | phone_no   | address         | pin_code |
+-------------+--------+----------+-----------------------+------------+-----------------+----------+
| C101        | Rohan  | Thane    | rohan123@gmail.com    | 4578215965 | thane address   |   400600 |
| C103        | Shahid | Vikhroli | shahidbhai@gmail.com  | 9845625482 | kannawar nagar  |   400300 |
| C105        | Manish | Mulund   | manishyadav@gmail.com | 8567954253 | Vaishnavi Nagar |   400509 |
+-------------+--------+----------+-----------------------+------------+-----------------+----------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_id not in('C101','C103','C105');
+-------------+--------+----------+------------------------+------------+----------------+----------+
| customer_id | name   | city     | email                  | phone_no   | address        | pin_code |
+-------------+--------+----------+------------------------+------------+----------------+----------+
| C102        | Aryan  | Bandra   | aryan77@gmail.com      | 8569472315 | Bandra address |   400020 |
| C104        | Sameer | Vikhroli | sameershaikh@gmail.com | 8097747075 | lodha          |   400302 |
+-------------+--------+----------+------------------------+------------+----------------+----------+
2 rows in set (0.00 sec)

mysql> select * from customer where city is null;
Empty set (0.00 sec)

mysql> select * from customer where city is not null;
+-------------+--------+----------+------------------------+------------+-----------------+----------+
| customer_id | name   | city     | email                  | phone_no   | address         | pin_code |
+-------------+--------+----------+------------------------+------------+-----------------+----------+
| C101        | Rohan  | Thane    | rohan123@gmail.com     | 4578215965 | thane address   |   400600 |
| C102        | Aryan  | Bandra   | aryan77@gmail.com      | 8569472315 | Bandra address  |   400020 |
| C103        | Shahid | Vikhroli | shahidbhai@gmail.com   | 9845625482 | kannawar nagar  |   400300 |
| C104        | Sameer | Vikhroli | sameershaikh@gmail.com | 8097747075 | lodha           |   400302 |
| C105        | Manish | Mulund   | manishyadav@gmail.com  | 8567954253 | Vaishnavi Nagar |   400509 |
+-------------+--------+----------+------------------------+------------+-----------------+----------+
5 rows in set (0.00 sec)

mysql> select * from customer where city='Thane' and address='lodha';
Empty set (0.00 sec)

mysql> select * from customer where city='Thane' or address='lodha';
+-------------+--------+----------+------------------------+------------+---------------+----------+
| customer_id | name   | city     | email                  | phone_no   | address       | pin_code |
+-------------+--------+----------+------------------------+------------+---------------+----------+
| C101        | Rohan  | Thane    | rohan123@gmail.com     | 4578215965 | thane address |   400600 |
| C104        | Sameer | Vikhroli | sameershaikh@gmail.com | 8097747075 | lodha         |   400302 |
+-------------+--------+----------+------------------------+------------+---------------+----------+
2 rows in set (0.00 sec)

mysql> select * from order_details where total_price > 30000;
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      101 | c102        | p102       |       20 |      200000 | gpay         | 2026-06-06 00:00:00 | shipping     |
|      103 | c105        | p103       |       60 |      100000 | cash         | 2026-02-08 00:00:00 | delivered    |
|      104 | c104        | p104       |       10 |     2000000 | phonepay     | 2026-01-10 00:00:00 | shipping     |
|      105 | c103        | p104       |       20 |       50000 | cash         | 2026-06-06 00:00:00 | delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
4 rows in set (0.01 sec)
