Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.


//Using The Database:

mysql> use anp_d0453; 
Database changed

// Create table BankAccount:

mysql> create table BankAccount;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> create table BankAccount(account_id varchar(10) not null primary key, account_holder_name varchar(50) not null, account_balance varchar(50) not null);
Query OK, 0 rows affected (0.54 sec)

//Insert the Data into the BankAccount Table:

mysql> insert into BankAccount values('101','William Henry',90000);
Query OK, 1 row affected (0.13 sec)

mysql> insert into BankAccount values('102','Elon Musk',80000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into BankAccount values('103','Jeff Preston',85000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into BankAccount values('104','Anna Grace',75000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into BankAccount values('105','kelli Earl',70000);
Query OK, 1 row affected (0.03 sec)

// Displaying The Table:

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | William Henry       | 90000           |
| 102        | Elon Musk           | 80000           |
| 103        | Jeff Preston        | 85000           |
| 104        | Anna Grace          | 75000           |
| 105        | kelli Earl          | 70000           |
+------------+---------------------+-----------------+
5 rows in set (0.02 sec)

//Retriving The Data account_holder_name and account_balance of all Account holders from the BankAccount:

mysql> select account_holder_name, account_balance from BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| William Henry       | 90000           |
| Elon Musk           | 80000           |
| Jeff Preston        | 85000           |
| Anna Grace          | 75000           |
| kelli Earl          | 70000           |
+---------------------+-----------------+
5 rows in set (0.02 sec)

//Filtering the data to retrive the account_holder_name and account_balance where the account_balance is more then the 30000:

mysql> select account_holder_name, account_balance from BankAccount where account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| William Henry       | 90000           |
| Elon Musk           | 80000           |
| Jeff Preston        | 85000           |
| Anna Grace          | 75000           |
| kelli Earl          | 70000           |
+---------------------+-----------------+
5 rows in set (0.00 sec)

//Updating the data to change the account_balance of the account holder whose Id is 101:

mysql> update BankAccount set account_balance=100000 where account_id=101;
Query OK, 1 row affected (0.13 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | William Henry       | 100000          |
| 102        | Elon Musk           | 80000           |
| 103        | Jeff Preston        | 85000           |
| 104        | Anna Grace          | 75000           |
| 105        | kelli Earl          | 70000           |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)