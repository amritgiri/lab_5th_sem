-- CREATING DATABASE
    CREATE DATABASE bank;
    SHOW databases;

-- CREATING TABLE
    create table branch(
    -> branch_number int not null,
    -> branch_name varchar(20),
    -> assets varchar(10),
    -> primary key(branch_number, branch_name));

-- CUSTOMER
    -> create table customer(
    -> customer_name varchar(25) not null,
    -> customer_street varchar(20),
    -> customer_city varchar(15),
    -> primary key(customer_name));

-- LOAN
    -> CREATE TABLE loan (
	-> loan_number INT NOT NULL,
	-> branch_number INT NOT NULL,
	-> branch_name VARCHAR(20),
	-> amount INT,
	-> PRIMARY KEY (loan_number),
	-> CONSTRAINT fk_branch FOREIGN KEY (branch_number, branch_name) REFERENCES branch(branch_number, branch_name));

-- BORROWER
    -> create table borrower(
    -> customer_name varchar(25),
    -> loan_number int,
    -> primary key(customer_name, loan_number),
    ->constraint fk_cus foreign key(customer_name) references customer(customer_name),
    ->constraint fk_loan foreign key(loan_number) references loan(loan_number));

-- ACCOUNT
    -> create table account( 
	-> account_number int not null,
	-> branch_number int not null,
	-> branch_name varchar(20) not null,
	-> balance int,
	-> primary key(account_number), 
	-> constraint fk_branch2 foreign key(branch_number,branch_name) references branch(branch_number,branch_name));

-- DEPOSITOR
    -> create table depositor( 
	-> customer_name varchar(25), 
	-> account_number int, 
	-> primary key(customer_name, account_number),
	-> constraint fk_cus1 foreign key(customer_name) references customer(customer_name),
	-> constraint fk_acc foreign key(account_number) references account(account_number));

-- LISITING TABLES
    show tables;
    show columns from branch;
	describe customer;

-- ALTER SECTION

-- ADD
    alter table branch add branch_manager varchar(20);
	show columns from branch;

-- DROP 
    alter table branch drop branch_manager;
	show columns from branch;

-- CHANGE DATA TYPE
    alter table account modify column balance int;
	describe account;
    alter table customer modify column customer_name varchar(50);

-- MAKING NOT NULL COLUMN
    alter table branch modify column branch_name varchar(20) not null;

-- SETTING DEFAULT VALUE
    alter table account alter balance set default 1000;

-- DROP DEFAULT VALUE
    alter table account alter balance drop default;

-- CHECK BEFORE INSERT
    alter table branch add constraint check_asset_city check (assets>10000000 and branch_city in ('KTM','PKR', 'BRT'));

-- DROP CHECK
    alter table branch drop constraint check_asset_city;

-- ADD PRIMARY KEY
    alter table branch add primary key(branch_number);
	alter table customer add primary key(customer_name);
	alter table loan add primary key(loan_number);
	alter table borrower add primary key(customer_name, loan_number);
	alter table account add primary key(account_number);
	alter table depositor add primary key(customer_name, account_number);

-- DROP PRIMARY KEY
    alter table account drop primary key;

-- ADD FOREIGN KEY
    alter table borrower add constraint fk_const foreign key(customer_name) references customer(customer_name);
	alter table borrower add constraint fk_const1 foreign key(loan_number) references loan(loan_number);
	alter table depositor add constraint fk_acc_const foreign key(account_number) references account(account_number);
	alter table depositor add constraint cons foreign key(customer_name) references customer(customer_name);

-- DROP FOREIGN KEY
    alter table depositor drop constraint fk_acc;
	alter table depositor drop constraint fk_acc_const;
	alter table depositor drop constraint fk_cus1;

-- ADD UNIQUE
    alter table customer add constraint const2 unique(customer_name);

-- DROP UNIQUE
	alter table customer drop index const2;

-- ADD FOREIGN KEY
	alter table depositor add constraint fkey_cons1 foreign key(customer_name) references customer(customer_name);
	alter table depositor add constraint fkey_cons2 foreign key(account_number) references account(account_number);


-- INSERTING VALUES

-- branch section
    INSERT INTO branch VALUES(6345,'Tinkune',1000000);
    INSERT INTO branch VALUES(7345,'Baneshwor', 1500000);
    INSERT INTO branch VALUES(8345,'Pokhara', 5000000);
    INSERT INTO branch VALUES(5345,'Narayanghat', 990000);
    INSERT INTO branch VALUES(0345,'Dhamauli', 2000000);
    INSERT INTO branch VALUES(4537,'Biratnagar', 500000);
    INSERT INTO branch VALUES(2537,'Dharan',1200000);
    INSERT INTO branch VALUES(4345,'Hetauda',1000000);
    INSERT INTO branch VALUES(2345,'Bharatpur',750000);
    INSERT INTO branch VALUES(3425,'Janakput',400000);

-- Customer section
    INSERT INTO customer VALUES('Shyam Sharma','Shivam Tol','Kathmandu');
    INSERT INTO customer VALUES('Hari Parsad Baral','Bagmara Marg','Kathmandu');
    INSERT INTO customer VALUES('Jhon Cordoba','Baneshwor','Kathmandu');
    INSERT INTO customer VALUES('Wyane Rooney','Kupandol','Lalitpur');
    INSERT INTO customer VALUES('Ross Smith','Nakidot','Lalitpur');
    INSERT INTO customer VALUES('Ted Wilson','Bagar','Pokhara');
    INSERT INTO customer VALUES('Prajwol Khan','Sabhagriha Chowk','Pokhara');
    INSERT INTO customer VALUES('Aagman Poudel','Tinkune','Pokhara');
    INSERT INTO customer VALUES('Sanskriti Giri','Lakeside','Pokhara');
    INSERT INTO customer VALUES('Roxane Chalise','Ichchhakamana','Narayanghat');
    INSERT INTO customer VALUES('Riva Chalise','Sahid Chowk','Narayanghat');
    INSERT INTO customer VALUES('Bhawana Baral','Maharshi Chowk','Dhamauli');
    INSERT INTO customer VALUES('Rishab Khan','Shukra Path','Biratnagar');
    INSERT INTO customer VALUES('Robin Jhonson','Bhrikuti Marg','Dharan');
    INSERT INTO customer VALUES('Barney Campbell','Sangam Chowk','Hetauda');
    INSERT INTO customer VALUES('Charles Robinson','saptagandaki Chowk','Bharatpur');
    INSERT INTO customer VALUES('Thomas Cooper','Ram Chowk','Janakpur');
    INSERT INTO customer VALUES('David Lae','Birendra Path','Hetauda');
    INSERT INTO customer VALUES('James Lewis','Sital Mall','Hetauda');
    INSERT INTO customer VALUES('Robert Allen','School Road','Hetauda');
    INSERT INTO customer VALUES('Shyrena Baral','Hospital Chowk','Pokhara');
    INSERT INTO customer VALUES('Joey Miller','Amarsingh Chowk','Pokhara');

-- ACCOUNT
