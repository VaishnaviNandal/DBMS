Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 29
Server version: 8.0.41 MySQL Community Server - GPL

Copyright (c) 2000, 2025, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database anudipd0453;
Query OK, 1 row affected (0.02 sec)

mysql> use anudipd0453;
Database changed
mysql> create table emp(emp_id varchar(10) not null primary key,emp_name varchar(50) not null,mobileno varchar(50) not null,address varchar(50) not null,Salary varchar(50) not null);
Query OK, 0 rows affected (0.08 sec)

mysql> insert into emp values('1','William Henry',8765768787,'Pune',60000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into emp values('2','Elon Musk',7652068787,'Mumbai',65000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into emp values('3','Jeff Preston',0989975667,'Bangalore',50000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into emp values('4','Anna Grace',9876987632,'Hyderabad',45000);
Query OK, 1 row affected (0.02 sec)

mysql> insert into emp values('5','Kelli Earl',9254376543,'Karnatak',40000);
Query OK, 1 row affected (0.02 sec)

mysql> select * from emp;
+--------+---------------+------------+-----------+--------+
| emp_id | emp_name      | mobileno   | address   | Salary |
+--------+---------------+------------+-----------+--------+
| 1      | William Henry | 8765768787 | Pune      | 60000  |
| 2      | Elon Musk     | 7652068787 | Mumbai    | 65000  |
| 3      | Jeff Preston  | 989975667  | Bangalore | 50000  |
| 4      | Anna Grace    | 9876987632 | Hyderabad | 45000  |
| 5      | Kelli Earl    | 9254376543 | Karnatak  | 40000  |
+--------+---------------+------------+-----------+--------+
5 rows in set (0.00 sec)

mysql> delete from emp where emp_id='5';
Query OK, 1 row affected (0.01 sec)

mysql> select * from emp;
+--------+---------------+------------+-----------+--------+
| emp_id | emp_name      | mobileno   | address   | Salary |
+--------+---------------+------------+-----------+--------+
| 1      | William Henry | 8765768787 | Pune      | 60000  |
| 2      | Elon Musk     | 7652068787 | Mumbai    | 65000  |
| 3      | Jeff Preston  | 989975667  | Bangalore | 50000  |
| 4      | Anna Grace    | 9876987632 | Hyderabad | 45000  |
+--------+---------------+------------+-----------+--------+
4 rows in set (0.00 sec)

mysql> update emp set Salary=70000 where emp_id='4';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from emp;
+--------+---------------+------------+-----------+--------+
| emp_id | emp_name      | mobileno   | address   | Salary |
+--------+---------------+------------+-----------+--------+
| 1      | William Henry | 8765768787 | Pune      | 60000  |
| 2      | Elon Musk     | 7652068787 | Mumbai    | 65000  |
| 3      | Jeff Preston  | 989975667  | Bangalore | 50000  |
| 4      | Anna Grace    | 9876987632 | Hyderabad | 70000  |
+--------+---------------+------------+-----------+--------+
4 rows in set (0.00 sec)

mysql> select * from emp where emp_name LIKE '%y';
+--------+---------------+------------+---------+--------+
| emp_id | emp_name      | mobileno   | address | Salary |
+--------+---------------+------------+---------+--------+
| 1      | William Henry | 8765768787 | Pune    | 60000  |
+--------+---------------+------------+---------+--------+
1 row in set (0.00 sec)

mysql> select * from emp where emp_name LIKE '_n%';
+--------+------------+------------+-----------+--------+
| emp_id | emp_name   | mobileno   | address   | Salary |
+--------+------------+------------+-----------+--------+
| 4      | Anna Grace | 9876987632 | Hyderabad | 70000  |
+--------+------------+------------+-----------+--------+
1 row in set (0.00 sec)