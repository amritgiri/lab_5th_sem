# Lab 3, 4 And 5
---
## Q. Insert at least 10 records in branch,customer, account, loan, borrower and depositor relations.
----
## BRANCH
```mysql
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
```
----

## CUSTOMER
```mysql
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

```
---
## ACCOUNT
```mysql
insert into account values(01012305478,6345,'Shivam Tol',20000);
insert into account values(01212305468,6344,'Bagmara marg',25000);
insert into account values(01012404586,6325,'Baneshwor',50000);
insert into account values(01012104586,2435,'Kupandol',65000);
insert into account values(01112404586,2430,'Nakidot',70000);
insert into account values(01012305481,8345,'Bagar',45000);
insert into account values(01612103586,8245,'Sabhagriha Chowk',50000);
insert into account values(00112404863,8145,'Tinkune',15000);
insert into account values(01012404562,8344,'Lakeside',150000);
insert into account values(01012404526,5345,'Ichchhakamana',160000);
insert into account values(01212104580,5340,'Sahid Chowk',100000);
insert into account values(01012504576,0345,'Maharshi Chowk',250000);
insert into account values(01112403497,4537,'Shukra Path',150000);
insert into account values(0112504526,2345,'Saptagandaki Chowk',250000);
insert into account values(01012104526,0345,'Maharshi Chowk',350000);
insert into account values(00112604080,2537,'Bhrikuti Marg',450000);
insert into account values(01012504550,8145,'Tinkune',99000);
insert into account values(01012404500,4345,'Sangam Chowk',550000);
insert into account values(00112404050,4324,'Sital Mall',650000);
insert into account values(01012403521,8145,'Tinkune',350000);
insert into account values(01012404001,4343,'Hospital Chowk',55000);
insert into account values(02015404080,4320,'School Road',105000);
insert into account values(00112404007,2430,'Nakidot',140000);
insert into account values(00112404017,4325,'Birendra Path',145000);
insert into account values(00112404117,2325,'Amarsingh Chowk',345000);
insert into account values(00112404217,3425,'Ram Chowk',345000);
insert into account values(00112404317,2435,'Kupandol',345000);

```
---
## LOAN
```mysql
insert into loan values(05674321567,4345,'Sangam Chowk',100000);
insert into loan values(76528612384,4345,'Sangam Chowk',20000);
insert into loan values(10192357333,2430,'Nakidot',200000);
insert into loan values(12012404280,8145,'Tinkune',500000);
insert into loan values(79263994636,4343,'Hospital Chowk',65000);
insert into loan values(23763499521,'8145,Tinkune',70000);
insert into loan values(82539451438,4324,'Sital Mall',400000);
insert into loan values(92734755222,2537,'Bhrikuti Marg',230000);
insert into loan values(09862343172,8344,'Lakeside',105000);
insert into loan values(02934699255,4320,'School Road',1500000);
insert into loan values(62348762342,0345,'Maharshi Chowk',1600000);
insert into loan values(32487691465,4537,'Shukra Path',1000000);
insert into loan values(76342625343,5345,'Ichchhakamana',1500000);
insert into loan values(76342625333,5340,'Sahid Chowk',1500000);
insert into loan values(92348769444,8245,'Sabhagriha Chowk',3500000);
insert into loan values(67523849211,8345,'Bagar',4050000);
insert into loan values(12359612875,2435,'Kupandol',5500000);
insert into loan values(23487652982,6345,'Shivam Tol',3550000);
insert into loan values(23487699172,6344,'Bagmara Marg',555000);
insert into loan values(18273497653,8145,'Tinkune',1005000);
insert into loan values(23475628222,6325,'Baneshwor',140000);
insert into loan values(53487618722,2345,'Saptagandaki Chowk',870000);
```
---
## BORROWER
```mysql
insert into borrower values('Aagman Poudel',8, 18273497653);
insert into borrower values('Barney Campbell',15, 05674321567);
insert into borrower values('Bhawana Baral',12, 62348762342);
insert into borrower values('Charles Robinson',16, 53487618722);
insert into borrower values('David Lae',18, 76528612384);
insert into borrower values('Hari Parsad Baral',2, 23487699172);
insert into borrower values('James Lewis',19, 82539451438);
insert into borrower values('Jhon Cordoba',3, 23475628222);
insert into borrower values('Joey Miller',22, 09862343172);
insert into borrower values('Prajwol Khan',7, 67523849211);
insert into borrower values('Rishab Khan',21, 32487691465);
insert into borrower values('Riva Chalise',11, 76342625333);
insert into borrower values('Robert Allen',20, 02934699255);
insert into borrower values('Robin Jhonson',14, 92734755222);
insert into borrower values('Ross Smith',5, 10192357333);
insert into borrower values('Roxane Chalise',10, 76342625343);
insert into borrower values('Sanskriti Giri',9, 79263994636);
insert into borrower values('Shyam Sharma',1, 23487652982);
insert into borrower values('Rena Baral',13, 92348769444);
insert into borrower values('Ted Wilson',6, 12012404280);
insert into borrower values('Thomas Cooper',17, 23763499521);
insert into borrower values('Wyane Rooney',4, 12359612875);
```
---
## DEPOSITOR
```mysql
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
---
---