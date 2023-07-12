# DBMS QUERIES

## 1) Create Database "Bank" and display the list of database
```sql
create database bank;
show databases;
```
![Alt text](images/image-2.png)
## 2) Drop database "Bank"
```sql
drop database bank;
```
![Alt text](images/image-3.png)
## 3) Create tables of given schema
## - branch(branch_number, branch_name, branch_city, assets)
## - customer(customer_number,customer_name, customer_street, customer_city)
## - loan(loan_number,branch_number,amount)
## - borrower(customer_number,loan_number)
## - account(account_number,branch_number,balance)
## - depositor(customer_number,account_number)
```sql
-- Branch 
create table branch(
branch_number int unique,
branch_name varchar(20),
branch_city varchar(20),
assets varchar(10),
primary key(branch_number,branch_name));

-- Customer
create table customer(
customer_number int unique,
customer_name varchar(25),
customer_street varchar(20),
customer_city varchar(15),
primary key(customer_name, customer_number));

-- Loan
CREATE TABLE loan (
loan_number bigint unique,
branch_number int,
amount int,
PRIMARY KEY (loan_number),
constraint fk_const foreign key(branch_number)references branch(branch_number) on delete cascade on update cascade);

-- Borrower
create table borrower(
customer_number int,
loan_number bigint,
constraint fk_const5 foreign key(customer_number) references customer(customer_number) on delete cascade on update cascade,
constraint fk_loan4 foreign key(loan_number) references loan(loan_number)
on delete cascade on update cascade);

-- Account
create table account(
account_number int unique,
branch_number int,
balance decimal(10,2),
primary key(account_number),
constraint fk_cons foreign key(branch_number)references branch(branch_number) on delete cascade on update cascade);

-- Depositor
create table depositor(
customer_number int not null, 
account_number int not null,
constraint fk_customer foreign key(customer_number)references customer(customer_number) on delete cascade on update cascade,
constraint fk_acc foreign key(account_number) references account(account_number)on delete cascade on update cascade);
```
![terminal file](images/image.png)
![Alt text](images/image-1.png)
## 4) List all the tables
```sql
show tables;
```
![Alt text](images/image-4.png)
## 5) List all the columns of “branch” and “customer” tables
```sql
show columns from branch;
describe customer;
```

## 6) Add column “Branch_manger” in branch table and list all the columns of branch table
```sql
alter table branch add branch_manager varchar(20);
show columns from branch;
```
![Alt text](images/image-7.png)
## 7) Drop column “Branch_manger” from branch table and list all the columns of branch table
```sql
alter table branch drop branch_manager;
describe branch;
```
![Alt text](images/image-8.png)

## 8) Change the data type of a column “balance” from decimal (12,2) to int in account table.
```sql
alter table account modify column balance int;
describe account;
```
![Alt text](images/image-9.png)

## 9) Modify the length of data type “customer_name” from varchar (30) to varchar (50) in a customer table.
```sql
alter table customer modify column customer_name varchar(50);
```
![Alt text](images/image-10.png)
## 10) Add a NOT NULL constraint in the column “branch_city” of the branch table.
```sql
alter table branch modify column branch_city varchar(20) not null;
```
![Alt text](images/image-11.png)

## 11) Add default constraint in “account” table and set default balance is 1000. And list the columns of account table.
```sql
alter table account alter balance set default 1000;
```
![Alt text](images/image-12.png)

## 12) Drop the default constraint of balance from the account table and list the columns of account table.
```sql
alter table account alter balance drop default;
```
![Alt text](images/image-13.png)


## 13) Add Check constraint in “branch” Table assets must be greater than 100,00,000 and department city must be either KTM or PKR or BRT.
```sql
alter table branch add constraint check_asset_city check (assets>10000000 and branch_city in ('KTM','PKR', 'BRT'));
```
![Alt text](images/image-14.png)

## 14) Drop the check constraints from the branch table.
```sql
alter table branch drop constraint check_asset_city;
```
![Alt text](images/image-15.png)

## 15) Add Primary Key constraint in table branch, customer, loan and account based on relational schema. List the columns of all tables.
```sql
alter table branch add primary key(branch_number);
alter table customer add primary key(customer_name);
alter table loan add primary key(loan_number);
alter table account add primary key(account_number);
```
![Alt text](images/image-16.png)
![Alt text](images/image-17.png)
![Alt text](images/image-18.png)
![Alt text](images/image-19.png)
![Alt text](images/image-20.png)
![Alt text](images/image-21.png)
![Alt text](images/image-22.png)
![Alt text](images/image-23.png)

## 16) Drop the primary key from the account table. List the columns of account table.
```sql
alter table account drop primary key;
```
![Alt text](images/image-24.png)

## 17) Add the foreign key constraints on the borrower and depositor table.
```sql
alter table borrower add constraint fk_const foreign key(customer_name) references customer(customer_name);
alter table borrower add constraint fk_const1 foreign key(loan_number) references loan(loan_number);
alter table depositor add constraint fk_acc_const foreign key(account_number) references account(account_number);
alter table depositor add constraint cons foreign key(customer_name) references customer(customer_name); 
```
![Alt text](images/image-25.png)
![Alt text](images/image-26.png)
![Alt text](images/image-27.png)

## 18) Drop the foreign key constraints form depositor table.
```sql
alter table depositor drop constraint fk_acc;
alter table depositor drop constraint fk_acc_const;
alter table depositor drop constraint fk_cus1;
```
![Alt text](images/image-28.png)

## 19) Add unique constraints on “customer_name” column in the customer table.
```sql
alter table customer add constraint const2 unique(customer_name);
```
![Alt text](images/image-29.png)

## 20)Drop the unique constraints from the customer table.
```sql
alter table customer drop index const2;
```
![Alt text](images/image-30.png)

## 21) Add primary key constraint in the account table. And also add the foreign key constraints on the depositor table
```sql
alter table depositor add constraint fkey_cons1 foreign key(customer_name) references customer(customer_name);
alter table depositor add constraint fkey_cons2 foreign key(account_number) references account(account_number);
```
![Alt text](images/image-31.png)
![Alt text](images/image-32.png)

## 22) Insert at least 10 records in branch,customer, account, loan, borrower and depositor relations.
```sql
-- Branch
insert into branch values(6345,'Shivam Tol','Kathmandu',5000000);
insert into branch values(6344,'Bagmara Marg','Kathmandu',4500000);
insert into branch values(6325,'Baneshwor','Kathmandu',500000);
insert into branch values(8345,'Bagar','Pokhara', 5000000);
insert into branch values(8245,'Sabhagriha Chowk','Pokhara', 4000000);
insert into branch values(8145,'Tinkune','Pokhara', 5340000);
insert into branch values(8344,'Lakeside','Pokhara', 2000000);
insert into branch values(5345,'Ichchhakamana','Narayanghat', 990000);
insert into branch values(5340,'Sahid Chowk','Narayanghat', 1000000);
insert into branch values(0345,'Maharshi Chowk','Dhamauli', 2000000);
insert into branch values(4537,'Shukra Path','Biratnagar', 500000);
insert into branch values(2537,'Bhrikuti Marg','Dharan',1200000);
insert into branch values(4345,'Sangam Chowk','Hetauda',1000000);
insert into branch values(2345,'Saptagandaki Chowk','Bharatpur',750000);
insert into branch values(3425,'Ram Chowk','Janakput',400000);
insert into branch values(2435,'Kupandol','Lalitpur',2500000);
insert into branch values(2430,'Nakidot','Lalitpur',2509000);
insert into branch values(4325,'Birendra Path','Hetauda',3000000);
insert into branch values(4320,'School Road','Hetauda',1010000);
insert into branch values(4324,'Sital Mall','Hetauda',1010000);
insert into branch values(2325,'Amarsingh Chowk','Pokhara',1200000);
insert into branch values(4343,'Hospital Chowk','Pokhara',1209900);

-- Customer
insert into customer values(1,'Shyam Sharma','Shivam Tol','Kathmandu');
insert into customer values(2,'Hari Parsad Baral','Bagmara Marg','Kathmandu');
insert into customer values(3,'Jhon Cordoba','Baneshwor','Kathmandu');
insert into customer values(4,'Wyane Rooney','Kupandol','Lalitpur');
insert into customer values(5,'Ross Smith','Nakidot','Lalitpur');
insert into customer values(6,'Ted Wilson','Bagar','Pokhara');
insert into customer values(7,'Prajwol Khan','Sabhagriha Chowk','Pokhara');
insert into customer values(8,'Aagman Poudel','Tinkune','Pokhara');
insert into customer values(9,'Sanskriti Giri','Lakeside','Pokhara');
insert into customer values(10,'Roxane Chalise','Ichchhakamana','Narayanghat');
insert into customer values(11,'Riva Chalise','Sahid Chowk','Narayanghat');
insert into customer values(12,'Bhawana Baral','Maharshi Chowk','Dhamauli');
insert into customer values(13,'Rena Baral','Shukra Path','Biratnagar');
insert into customer values(14,'Robin Jhonson','Bhrikuti Marg','Dharan');
insert into customer values(15,'Barney Campbell','Sangam Chowk','Hetauda');
insert into customer values(16,'Charles Robinson','Saptagandaki Chowk','Bharatpur');
insert into customer values(17,'Thomas Cooper','Ram Chowk','Janakpur');
insert into customer values(18,'David Lae','Birendra Path','Hetauda');
insert into customer values(19,'James Lewis','Sital Mall','Hetauda');
insert into customer values(20,'Robert Allen','School Road','Hetauda');
insert into customer values(21,'Rishab Khan','Hospital Chowk','Pokhara');
insert into customer values(22,'Joey Miller','Amarsingh Chowk','Pokhara');
insert into customer values(23,'Joy Miller','main road','Pokhara');
insert into customer values(24,'Burno Cordoba','New road','Pokhara');

-- Account
insert into account values(01012305478,6345,20000);
insert into account values(01212305468,6344,25000);
insert into account values(01012404586,6325,50000);
insert into account values(01012104586,2435,65000);
insert into account values(01112404586,2430,70000);
insert into account values(01012305481,8345,45000);
insert into account values(01612103586,8245,50000);
insert into account values(00112404863,8145,15000);
insert into account values(01012404562,8344,150000);
insert into account values(01012404526,5345,160000);
insert into account values(01212104580,5340,100000);
insert into account values(01012504576,0345,250000);
insert into account values(01112403497,4537,150000);
insert into account values(0112504526,2345,250000);
insert into account values(01012104526,0345,350000);
insert into account values(00112604080,2537,450000);
insert into account values(01012504550,8145,99000);
insert into account values(01012404500,4345,550000);
insert into account values(00112404050,4324,650000);
insert into account values(01012403521,8145,350000);
insert into account values(01012404001,4343,55000);
insert into account values(02015404080,4320,105000);
insert into account values(00112404007,2430,140000);
insert into account values(00112404017,4325,145000);
insert into account values(00112404117,2325,345000);
insert into account values(00112404217,3425,345000);
insert into account values(00112404317,2435,345000);

-- Loan
insert into loan values(05674321567,4345,100000);
insert into loan values(76528612384,4345,20000);
insert into loan values(10192357333,2430,200000);
insert into loan values(12012404280,8145,500000);
insert into loan values(79263994636,4343,65000);
insert into loan values(23763499521,8145,70000);
insert into loan values(82539451438,4324,400000);
insert into loan values(92734755222,2537,230000);
insert into loan values(09862343172,8344,105000);
insert into loan values(02934699255,4320,1500000);
insert into loan values(62348762342,0345,1600000);
insert into loan values(32487691465,4537,1000000);
insert into loan values(76342625343,5345,1500000);
insert into loan values(76342625333,5340,1500000);
insert into loan values(92348769444,8245,3500000);
insert into loan values(67523849211,8345,4050000);
insert into loan values(12359612875,2435,5500000);
insert into loan values(23487652982,6345,3550000);
insert into loan values(23487699172,6344,555000);
insert into loan values(18273497653,8145,1005000);
insert into loan values(23475628222,6325,140000);
insert into loan values(53487618722,2345,870000);

-- Borrower
insert into borrower values(8, 18273497653);
insert into borrower values(15, 05674321567);
insert into borrower values(12, 62348762342);
insert into borrower values(16, 53487618722);
insert into borrower values(18, 76528612384);
insert into borrower values(2, 23487699172);
insert into borrower values(19, 82539451438);
insert into borrower values(3, 23475628222);
insert into borrower values(22, 09862343172);
insert into borrower values(7, 67523849211);
insert into borrower values(21, 32487691465);
insert into borrower values(11, 76342625333);
insert into borrower values(20, 02934699255);
insert into borrower values(14, 92734755222);
insert into borrower values(5, 10192357333);
insert into borrower values(10, 76342625343);
insert into borrower values(9, 79263994636);
insert into borrower values(1, 23487652982);
insert into borrower values(13, 92348769444);
insert into borrower values(6, 12012404280);
insert into borrower values(17, 23763499521);
insert into borrower values(4, 12359612875);

-- Depositor
insert into depositor values(8,112404863);
insert into depositor values(15,1012404500);
insert into depositor values(12,1012504576);
insert into depositor values(16,112504526);
insert into depositor values(18,112404017);
insert into depositor values(2,1212305468);
insert into depositor values(19,112404050);
insert into depositor values(3,1012404586 );
insert into depositor values(22,112404117);
insert into depositor values(7,1612103586);
insert into depositor values(13,1112403497);
insert into depositor values(21,1012404001);
insert into depositor values(11,1212104580);
insert into depositor values(20,2015404080);
insert into depositor values(14,112604080);
insert into depositor values(5,1112404586);
insert into depositor values(10,1012404526);
insert into depositor values(9,1012404562);
insert into depositor values(1,1012305478);
insert into depositor values(6,1012305481);
insert into depositor values(17,112404217);
insert into depositor values(4,1012104586);
```
![Branch](images/image-33.png)
![Customer](images/image-34.png)
![Loan](images/image-35.png)
![Borrower](images/image-36.png)
![Account](images/image-37.png)
![Depositor](images/image-38.png)

## 23) Display all the records

```sql
select * from branch;

select * from customer;

select * from loan;

select * from borrower;

select * from account;

select * from depositor;
```
## 24) Display top 5 records of depositor relation
```sql
select * from depositor limit 5;
```
![Alt text](images/image-39.png)

## 25) Find the names of all branches in the loan relation (with or without duplicates).
```sql
select branch_number,branch_name from loan;
select distinct branch_number,branch_name from loan;
```
![Alt text](images/image-40.png)
![Alt text](images/image-41.png)

## 26) Find all loan numbers for loans made at the Tinkune branch with loan amounts greater than 200000.
```sql
select loan_number, l.branch_number, b.branch_name from loan as l,branch as b where l.branch_number=b.branch_number and b.branch_name='Tinkune' and amount>200000;
```
![Alt text](images/image-42.png)

## 27) Find the loan number of those loans with loan amounts between 9,00,000 and 10,00,000.
```sql
select loan_number,amount from loan where amount between 900000 and 1000000;
```
![Alt text](images/image-43.png)

## 28) For all customers who have a loan from the bank, find their names, loan numbers, and loan amount.
```sql
select c.customer_name, l.loan_number, l.amount from loan as l, customer as c , borrower as b where b.loan_number=l.loan_number and c.customer_number=b.customer_number;
```
![Alt text](images/image-44.png)

## 29) Find the customer names, loan numbers, and loan amounts for all loans at the Tinkune branch.
```sql
select c.customer_name,l.loan_number,l.amount 
from loan as l,customer as c, borrower as b, branch as bh
where l.loan_number=b.loan_number and c.customer_number=b.customer_number and l.branch_number=bh.branch_number and bh.branch_name='Tinkune';
```
![Alt text](images/image-45.png)

## 30) Find the names of all branches that have assets greater than at least one branch located in Baneshwor.
```sql
select branch_name,assets from branch where assets > some (select assets from branch where branch_name='Baneshwor');
```
![Alt text](images/image-46.png)

## 31) Find the names of all customers whose street address includes the substring 'main'.
```sql
select customer_name from customer where customer_street like '%main%';
```
![Alt text](images/image-47.png)

## 32) Find the names of all customers whose name contains at least four characters.
```sql
select customer_name from customer where customer_name like '____%';
```
![Alt text](images/image-48.png)

## 33) Find the names of all customers whose name start with ‘b’ and end with ‘a’.
```sql
select customer_name from customer where customer_name like 'b%a';
```
![Alt text](images/image-49.png)

## 34) List all the customer’s name in alphabetic order who have a loan at the Tinkune branch.
```sql
select c.customer_name, b.branch_name from customer as c, branch as b, loan as l, borrower as br where c.customer_number=br.customer_number and br.loan_number=l.loan_number and l.branch_number=b.branch_number and b.branch_name='Tinkune' order by c.customer_name;
```
![Alt text](images/image-50.png)

## 35) List the entire loan relation in descending order of amount. If several loans have the same amount, then order them in ascending order by loan number.
```sql
select * from loan order by amount desc, loan_number asc;
```
![Alt text](images/image-51.png)
## 36) Find all the bank customers having a loan, an account, or both at the bank (with or without duplicates).
```sql
-- without duplicate
(select c.customer_name from customer as c, loan as l ,borrower as b where c.customer_number=b.customer_number and b.loan_number=l.loan_number)union(select c.customer_name from customer as c, account as a, depositor as d where c.customer_number=d.customer_number and d.account_number=a.account_number)

-- with duplicate
(select c.customer_name from customer as c, loan as l ,borrower as b where c.customer_number=b.customer_number and b.loan_number=l.loan_number)union all(select c.customer_name from customer as c, account as a, depositor as d where c.customer_number=d.customer_number and d.account_number=a.account_number)
```
![Alt text](images/image-52.png)
![Alt text](images/image-53.png)
## 37) Find all customers who have both a loan and an account at the bank (with or without duplicates).
```sql
-- wihtout duplicate
(select c.customer_name from customer as c, loan as l ,borrower as b where c.customer_number=b.customer_number and b.loan_number=l.loan_number) intersect (select c.customer_name from customer as c, account as a, depositor as d where c.customer_number=d.customer_number and d.account_number=a.account_number);

-- with duplicate
(select c.customer_name from customer as c, loan as l ,borrower as b where c.customer_number=b.customer_number and b.loan_number=l.loan_number) intersect all(select c.customer_name from customer as c, account as a, depositor as d where c.customer_number=d.customer_number and d.account_number=a.account_number);
```
![Alt text](images/image-54.png)

## 38) Find all customers who have an account but no loan at the bank (with or without duplicates).
```sql
-- Without duplicate
(select c.customer_name from customer as c, depositor as d, account as a where c.customer_number=d.customer_number and d.account_number=a.account_number) except(select cu.customer_name from customer as cu, loan as l, borrower as br where cu.customer_number=br.customer_number and br.loan_number=l.loan_number);

-- with duplicate
(select c.customer_name from customer as c, depositor as d, account as a where c.customer_number=d.customer_number and d.account_number=a.account_number) except all(select cu.customer_name from customer as cu, loan as l, borrower as br where cu.customer_number=br.customer_number and br.loan_number=l.loan_number);
```
![Alt text](images/image-55.png)

## 39) Find the largest account balance in the bank [with or without aggregate function].
```sql
-- without aggregate
select balance from account order by desc limit 1;
-- with aggregate
select max(balance) from account;
```
![Alt text](images/image-57.png)
![Alt text](images/image-56.png)
## 40) Find the names of all customers who have an account in Tinkune branch or Baneshwor branch, or both.
```sql
(select c.customer_name from customer as c,branch as b,borrower as br,loan as l where c.customer_number=br.customer_number and br.loan_number = l.loan_number and l.branch_number=b.branch_number and b.branch_name='Tinkune') union (select c.customer_name from customer as c,branch as b,borrower as br,loan as l where c.customer_number=br.customer_number and br.loan_number = l.loan_number and l.branch_number=b.branch_number and b.branch_name='Baneshwor');
```
![Alt text](images/image-58.png)

## 41) Find the average account balance at the Tinkune branch.
```sql
select a.account_number, a.balance,b.branch_name from account as a, branch as b where a.branch_number=b.branch_number and b.branch_name='Tinkune';
```
![Alt text](images/image-59.png)

## 42) Find the number of tuples in the customer relation.
```sql
select count(*) from customer;
```
![Alt text](images/image-60.png)

## 43) Find the average account balance at each branch.
```sql
select avg(a.balance),b.branch_name from account as a, branch as b where a.branch_number = b.branch_number group by b.branch_name;
```
![Alt text](images/image-61.png)

## 44) Find the number of depositors for each branch.
```sql
select count(customer_number),b.branch_name,b.branch_number from depositor as d, branch as b, account as a where a.account_number=d.account_number and a.branch_number = b.branch_number group by branch_name;
```
![Alt text](images/image-62.png)

## 45) Find the name of branches where the average account balance is more than 12,00,000.
```sql
select avg(balance), b.branch_name from account as a, branch as b where b.branch_number=a.branch_number and a.balance>1200000;
```
![Alt text](images/image-63.png)

## 46) Find the average balance for all account.
```sql
select avg(balance) from account group by account_number;
```
![Alt text](images/image-64.png)

## 47) Find the average balance for each customer who lives in Pokhara and has at least three accounts.
```sql
select avg(a.balance), b.branch_city from account as a, branch as b, customer as c, depositor as d where a.branch_number=b.branch_number and a.account_number=d.account_number and d.customer_number = c.customer_number and c.customer_city = 'Pokhara';
```
![Alt text](images/image-65.png)

## 48) Find all customers who have both an account and a loan at the Tinkune branch. [ use set membership]
```sql
select distinct c.customer_name from customer as c, branch as b where c.customer_name in(select customer_name from customer as c, branch as b, loan as l, account as a, borrower as br , depositor as d where b.branch_name = 'Tinkune' and a.branch_number=b.branch_number and a.account_number=d.account_number and d.customer_number=c.customer_number and br.loan_number=l.loan_number and br.customer_number = c.customer_number);
```
![Alt text](images/image-66.png)

## 49) Find all customers who do have a loan at the bank, but do not have an account at the bank. [ use set membership]
```sql
select distinct c.customer_name from customer as c, branch as b where c.customer_name in(select customer_name from customer as c, loan as l, account as a, borrower as br, depositor as d where ); 
```
![Alt text](images/image-67.png)

## 50) Find out the total balance of the bank.
```sql
select balance, b.branch_name  from account as a, branch as b where a.branch_number=b.branch_number;
```
![Alt text](images/image-68.png)

## 51) Find the number of branches appearing in the account relation.
```sql
select count(distinct branch_number) as count from account;
```
![Alt text](images/image-69.png)

## 52) Find the total balance of each branch of the bank.
```sql
select balance, b.branch_name  from account as a, branch as b where a.branch_number=b.branch_number group by b.branch_name;
```
![Alt text](images/image-70.png)

## 53) Find the maximum balance at each branch and sum of the balance of each branch. Rename your output attributes.
```sql
select max(a.balance) as max_balance, sum(a.balance),a.branch_number as sum_balance from account as a group by a.branch_number;
```
![Alt text](images/image-71.png)

## 54) List the names of customers who have a loan at the bank, and whose names are neither Shyam nor Hari.
```sql
select c.customer_name,l.loan_number from customer as c, loan as l, borrower as b where c.customer_number=b.customer_number and b.loan_number=l.loan_number and c.customer_name not in('Aagman Poudel','Ross Smith');
```
![Alt text](images/image-72.png)

## 55) Find the name of all branches that have assets greater than those of at least one branch located in Baneshwor. [with or without using Set Comparison]
```sql
select branch_name,assets from branch where assets >some (select assets from branch where branch_name = 'Baneshwor');
```
![Alt text](images/image-73.png)

## 56) Find the names of all branches that have an asset value greater than that of each branch in Baneshwor.
```sql
select branch_name,assets from branch where assets >all (select assets from branch where branch_name = 'Baneshwor');
```
![Alt text](images/image-74.png)
## 57) Delete all account tuples in the Tinkune branch.
```sql
delete from account where branch_number in(select branch_number from branch where branch_name='Tinkune');
```
![Alt text](images/image-75.png)
## 58) Delete all loans with loan amounts between 13000 and 150000.
```sql
delete from loan where amount between 13000 and 150000;
```
![Alt text](images/image-76.png)
## 59) Delete all account tuples at every branch located in Baneshwor.
```sql
delete from account where branch_number in(select branch_number from branch where branch_name = 'Baneshwor');
```
![Alt text](images/image-77.png)
## 60) Delete the records of all accounts with balances below the average at the bank.
```sql
delete from account where balance < (select avg(balance) from account);
```
![Alt text](images/image-78.png)
## 61) Increase all balance by 5 percent.
```sql
update account set balance = balance * 1.05;
```
![Alt text](images/image-79.png)
## 62) Increase balance only to accounts with a balance of 10000 or more by 5 percent.
```sql
update account set balance = balance*1.05 where balance>=300000;
```
![Alt text](images/image-80.png)

## 63) Pay 5 percent interest on accounts whose balance is greater than average.
```sql
update account set balance = balance*1.05 where balance > (select avg(balance) from account);
```
![Alt text](images/image-81.png)
## 64) Update all accounts with balances over 10,00,000 receive 6 percent interest, whereas all others receive 5 percent.
```sql
update account set balance=case when balance>650000 then balance*1.06 else balance*1.05 end;
```
![Alt text](images/image-82.png)
## 65) Create a view called all_customer consisting of branches and their customer’s name.
```sql
create view all_customer as select c.customer_number,c.customer_name,b.branch_name from customer as c, branch as b, account as a, depositor as d where c.customer_number=d.customer_number and d.account_number=a.account_number and a.branch_number=b.branch_number;
```
![Alt text](images/image-83.png)
## 66) List the records of view all_customer.
```sql
select * from all_customer;
```
![Alt text](images/image-84.png)
## 67) Drop all_customer view.
```sql
drop view all_customer;
```
![Alt text](images/image-85.png)

## 68) Perform the Join operation (Natural join, Left join, Right join, and Full join) in the tables account and customer tables.
---
## Natural Join
```sql
-- Natural Join
select * from account natural join depositor natural join customer;

-- left join
select * from account left join depositor on account.account_number=depositor.account_number left join customer on depositor.customer_number=customer.customer_number;

-- Right Join
select * from account right join depositor on account.account_number=depositor.account_number right join customer on depositor.customer_number=customer.customer_number;

-- Full Join
select * from account full join depositor on account.account_number=depositor.account_number full join customer on depositor.customer_number=customer.customer_number;

-- "One that doesnot support full join"
(select * from account left join depositor on account.account_number=depositor.account_number left join customer on depositor.customer_number=customer.customer_number) union (select * from account right join depositor on account.account_number=depositor.account_number right join customer on depositor.customer_number=customer.customer_number);
```
![Alt text](images/image-86.png)
![Alt text](images/image-87.png)
![Alt text](images/image-88.png)
![Alt text](images/image-89.png)