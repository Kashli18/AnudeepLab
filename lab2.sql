/*

Lab 1: Database Schema: Consider a simple database with one tables: BankAccount 
 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

*/

mysql> create table BankAccount(account_id varchar(20) not null primary key,account_holder_name varchar(50) not null,account_balance double not null);
Query OK, 0 rows affected (0.03 sec)

/*

Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

*/
mysql> insert into BankAccount values('101','Devang Mohite',10000),('102','Yash Sonawane',35000),('103','Aarav Sharma',100000),('104','Ananya Desai',50000),('105','Ritika Malhotra',27000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

/*

Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table.

*/
mysql> select account_holder_name,account_balance from BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Devang Mohite       |           10000 |
| Yash Sonawane       |           35000 |
| Aarav Sharma        |          100000 |
| Ananya Desai        |           50000 |
| Ritika Malhotra     |           27000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

/*

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

*/
mysql> select account_holder_name,account_balance from BankAccount where account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Yash Sonawane       |           35000 |
| Aarav Sharma        |          100000 |
| Ananya Desai        |           50000 |
+---------------------+-----------------+
3 rows in set (0.00 sec)

/*

Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.

*/
mysql> update BankAccount set account_balance=20000 where account_id='101';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Devang Mohite       |           20000 |
| 102        | Yash Sonawane       |           35000 |
| 103        | Aarav Sharma        |          100000 |
| 104        | Ananya Desai        |           50000 |
| 105        | Ritika Malhotra     |           27000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)