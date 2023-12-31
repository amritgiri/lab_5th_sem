# LAB 1 AND 2
---
## Q. Create database bank and show databases
```mysql
    create database bank;
	show databases;
```
----------
------------

## Q. Drop database bank and show databases
```mysql
	drop database bank;
	show databases;
```
--------
-------------

## Q. Create tables of given schema
### - branch (branch_number, branch_city, assets)
### - customer (customer_name, customer_street, customer_city)
### - loan (lonn_numbebr, branch_name, amount)
### - borrower (customer_name, loan_number)
### - account (account_number, branch_name, balance)
### - depositor (customer_name, account_number)

## BRANCH
```mysql
	create table branch(
	branch_number int unique,
	branch_name varchar(20),
	branch_city varchar(20),
	assets varchar(10),
	primary key(branch_number,branch_name));
```
---
##	CUSTOMER
```mysql
	create table customer(
	customer_number int unique,
	customer_name varchar(25),
	customer_street varchar(20),
	customer_city varchar(15),
	primary key(customer_name, customer_number));
```
---
##	LOAN
```mysql
	CREATE TABLE loan (
	loan_number bigint unique,
	branch_number int,
	amount int,
	PRIMARY KEY (loan_number),
	constraint fk_const foreign key(branch_number)references branch(branch_number) on delete cascade on update cascade);
```
---
##	BORROWER
```mysql
	create table borrower(
	customer_number int,
	loan_number bigint,
	constraint fk_const5 foreign key(customer_number) references customer(customer_number) on delete cascade on update cascade,
	constraint fk_loan4 foreign key(loan_number) references loan(loan_number)
	on delete cascade on update cascade);
```
---
##	ACCOUNT
```mysql
  	create table account( 
	account_number int unique,
	branch_number int,
	balance decimal(10,2),
	primary key(account_number),
	constraint fk_cons foreign key(branch_number)references branch(branch_number) on delete cascade on update cascade);
```
---
##	DEPOSITOR
```mysql
	create table depositor( 
	customer_number int not null, 
	account_number int not null,
	constraint fk_customer foreign key(customer_number)references customer(customer_number) on delete cascade on update cascade,
	constraint fk_acc foreign key(account_number) references account(account_number)on delete cascade on update cascade);
```
-----
--------
## Q. list all the tables
```mysql
	show tables;
```
----
----
## Q. List all the columns of “branch” and “customer” tables
```mysql
    show columns from branch;
	describe customer;
```
---
----
## Q. Add column “Branch_manger” in branch table and list all the columns of branch table
```mysql
	alter table branch add branch_manager varchar(20);
	show columns from branch;
```

---
----

## Q. Drop column “Branch_manger” from branch table and list all the columns of branch table
```mysql
	alter table branch drop branch_manager;
	show columns from branch;
```
---
-----

## Q. Change the data type of a column “balance” from decimal (12,2) to int in account table.
```mysql
	alter table account modify column balance int;
	describe account;
```
---
--------

## Q. Modify the length of data type “customer_name” from varchar (30) to varchar (50) in a customer table.
```mysql
    alter table customer modify column customer_name varchar(50);
```
-----------
---
## Q. Add a NOT NULL constraint in the column “branch_city” of the branch table.
```mysql
	alter table branch modify column branch_city varchar(20) not null;
```
---
-------
## Q. Add default constraint in “account” table and set default balance is 1000. And list the columns of account table.
```mysql
	alter table account alter balance set default 1000;
```
-----------
---
## Q. Drop the default constraint of balance from the account table and list the columns of account table.
```mysql
	alter table account alter balance drop default;
```
-------
---
## Q. Add Check constraint in “branch” Table assets must be greater than 100,00,000 and department city must be either KTM or PKR or BRT.
```mysql
	alter table branch add constraint check_asset_city check (assets>10000000 and branch_city in ('KTM','PKR', 'BRT'));
```
-------
---
## Q. Drop the check constraints from the branch table.
```mysql
	alter table branch drop constraint check_asset_city;
```
---
----------
## Q. Add Primary Key constraint in table branch, customer, loan and account based on relational schema. List the columns of all tables.
```mysql
	alter table branch add primary key(branch_number);
	alter table customer add primary key(customer_name);
	alter table loan add primary key(loan_number);
	alter table borrower add primary key(customer_name, loan_number);
	alter table account add primary key(account_number);
	alter table depositor add primary key(customer_name, account_number);
```
-----------
---
## Q. Drop the primary key from the account table. List the columns of account table.
```mysql
	alter table account drop primary key;
```
-----------
---
## Q. Add the foreign key constraints on the borrower and depositor table.
```mysql
	alter table borrower add constraint fk_const foreign key(customer_name) references customer(customer_name);
	alter table borrower add constraint fk_const1 foreign key(loan_number) references loan(loan_number);
	alter table depositor add constraint fk_acc_const foreign key(account_number) references account(account_number);
	alter table depositor add constraint cons foreign key(customer_name) references customer(customer_name); 
```
------
---
## Q. Drop the foreign key constraints form depositor table.
```mysql
	alter table depositor drop constraint fk_acc;
	alter table depositor drop constraint fk_acc_const;
	alter table depositor drop constraint fk_cus1;
```
----------
---
## Q. Add unique constraints on “customer_name” column in the customer table.
```mysql
	alter table customer add constraint const2 unique(customer_name);
```
------
---
## Q. Drop the unique constraints from the customer table.
```mysql
	alter table customer drop index const2;
```
--------
---
## Q. Add primary key constraint in the account table. And also add the foreign key constraints on the depositor table
```mysql
	alter table depositor add constraint fkey_cons1 foreign key(customer_name) references customer(customer_name);
	alter table depositor add constraint fkey_cons2 foreign key(account_number) references account(account_number);
```