# Lab 3, 4 And 5

---

## Q 1. Insert at least 10 records in branch,customer, account, loan, borrower and depositor relations.

---

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

---

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
insert into customer values(23,'Joy Miller','main road','Pokhara');
insert into customer values(24,'Burno Cordoba','New road','Pokhara');

```

---

## ACCOUNT

```mysql
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

```

---

## LOAN

```mysql
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
```

---

## BORROWER

```mysql
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

## Q 2,3,4,5,6. Display all the records

```mysql
select * from branch;
```

---

```mysql
select * from customer;
```

---

```mysql
select * from loan;
```

---

```mysql
select * from borrower;
```

---

```mysql
select * from account;
```

---

```mysql
select * from depositor;
```

---

---
## Q 7.Display top 5 records of depositor relation
```mysql
	select * from depositor limit 5;
```
---
---
## Q 8. Find the names of all branches in the loan relation (with or without duplicates).
```mysql
    select branch_number,branch_name from loan;
	select distinct branch_number,branch_name from loan;
```
---
---
## Q 9. Find all loan numbers for loans made at the Tinkune branch with loan amounts greater than 200000.
```mysql
	select loan_number, l.branch_number, b.branch_name from loan as l,branch as b where l.branch_number=b.branch_number and b.branch_name='Tinkune' and amount>200000;
```
---
---
## Q 10. Find the loan number of those loans with loan amounts between 9,00,000 and 10,00,000.
```mysql
	select loan_number,amount from loan where amount between 900000 and 1000000;
```
---
---
## Q 11. For all customers who have a loan from the bank, find their names, loan numbers, and loan amount.
```mysql
	select c.customer_name, l.loan_number, l.amount from loan as l, customer as c , borrower as b where b.loan_number=l.loan_number and c.customer_number=b.customer_number;

```
---
---
## Q 12. Find the customer names, loan numbers, and loan amounts for all loans at the Tinkune branch.
```mysql

	select c.customer_name,l.loan_number,l.amount 
	from loan as l,customer as c, borrower as b, branch as bh
	where l.loan_number=b.loan_number and c.customer_number=b.customer_number and l.branch_number=bh.branch_number and bh.branch_name='Tinkune';
	
```
---
---
## Q 13. Find the names of all branches that have assets greater than at least one branch located in Baneshwor.
```mysql
    select branch_name,assets from branch where assets > some (select assets from branch where branch_name='Baneshwor');
```
---
---
## Q 14. Find the names of all customers whose street address includes the substring 'main'.
```mysql
    select customer_name from customer where customer_street like '%main%';
```
---
---
## Q 15. Find the names of all customers whose name contains at least four characters.
```mysql
	select customer_name from customer where customer_name like '____%';
```
---
---
## Q 16. Find the names of all customers whose name start with ‘b’ and end with ‘a’.
```mysql
    select customer_name from customer where customer_name like 'b%a';
```
---
---
## Q 17. List all the customer’s name in alphabetic order who have a loan at the Tinkune branch.
```mysql
	select c.customer_name, b.branch_name from customer as c, branch as b, loan as l, borrower as br where c.customer_number=br.customer_number and br.loan_number=l.loan_number and l.branch_number=b.branch_number and b.branch_name='Tinkune' order by c.customer_name;
```
---
---
## Q 18. List the entire loan relation in descending order of amount. If several loans have the same amount, then order them in ascending order by loan number.
```mysql
	select * from loan order by amount desc, loan_number asc;
```
---
---
## Q 19. Find all the bank customers having a loan, an account, or both at the bank (with or without duplicates).
###	without dup
```mysql
    (select c.customer_name from customer as c, loan as l ,borrower as b where c.customer_number=b.customer_number and b.loan_number=l.loan_number)union(select c.customer_name from customer as c, account as a, depositor as d where c.customer_number=d.customer_number and d.account_number=a.account_number)
```
---
---
### with dup
```mysql
    (select c.customer_name from customer as c, loan as l ,borrower as b where c.customer_number=b.customer_number and b.loan_number=l.loan_number)union all(select c.customer_name from customer as c, account as a, depositor as d where c.customer_number=d.customer_number and d.account_number=a.account_number)
```
---
---
## Q 20. Find all customers who have both a loan and an account at the bank (with or without duplicates).
### without dup
```mysql
	(select c.customer_name from customer as c, loan as l ,borrower as b where c.customer_number=b.customer_number and b.loan_number=l.loan_number) intersect (select c.customer_name from customer as c, account as a, depositor as d where c.customer_number=d.customer_number and d.account_number=a.account_number);
```
### with dup
```mysql
	(select c.customer_name from customer as c, loan as l ,borrower as b where c.customer_number=b.customer_number and b.loan_number=l.loan_number) intersect all(select c.customer_name from customer as c, account as a, depositor as d where c.customer_number=d.customer_number and d.account_number=a.account_number);
```
---
---
## Q 21. Find all customers who have an account but no loan at the bank (with or without duplicates).
### without dup
```mysql
	(select c.customer_name from customer as c, depositor as d, account as a where c.customer_number=d.customer_number and d.account_number=a.account_number) except(select cu.customer_name from customer as cu, loan as l, borrower as br where cu.customer_number=br.customer_number and br.loan_number=l.loan_number);
```
###	with dup
```mysql
	(select c.customer_name from customer as c, depositor as d, account as a where c.customer_number=d.customer_number and d.account_number=a.account_number) except all(select cu.customer_name from customer as cu, loan as l, borrower as br where cu.customer_number=br.customer_number and br.loan_number=l.loan_number);
```
---
---
## Q 22. Find the largest account balance in the bank [with or without aggregate function].
```mysql
	select balance from account order by desc limit 1;
	select max(balance) from account;
```
---
---
## Q 23. Find the names of all customers who have an account in Tinkune branch or Baneshwor branch, or both.
```mysql
	(select c.customer_name from customer as c,branch as b,borrower as br,loan as l where c.customer_number=br.customer_number and br.loan_number = l.loan_number and l.branch_number=b.branch_number and b.branch_name='Tinkune') union (select c.customer_name from customer as c,branch as b,borrower as br,loan as l where c.customer_number=br.customer_number and br.loan_number = l.loan_number and l.branch_number=b.branch_number and b.branch_name='Baneshwor');
```
---
---
## Q 24. Find the average account balance at the Tinkune branch.
```mysql
	select a.account_number, a.balance,b.branch_name from account as a, branch as b where a.branch_number=b.branch_number and b.branch_name='Tinkune';
```
---
---
## Q 25. Find the number of tuples in the customer relation.
```mysql
	select count(*) from customer;
```
---
---
## Q 26. Find the average account balance at each branch.
```mysql
	select avg(a.balance),b.branch_name from account as a, branch as b where a.branch_number = b.branch_number group by b.branch_name;
```
---
---
## Q 27. Find the number of depositors for each branch.
```mysql
	select count(customer_number),b.branch_name,b.branch_number from depositor as d, branch as b, account as a where a.account_number=d.account_number and a.branch_number = b.branch_number group by branch_name;
```
---
---
## Q 28. Find the name of branches where the average account balance is more than 12,00,000.
```mysql
	select avg(balance), b.branch_name from account as a, branch as b where b.branch_number=a.branch_number and a.balance>1200000;
```
---
---
## Q 29. Find the average balance for all account.
```mysql
	select avg(balance) from account group by account_number;
```
---
---
## Q 30. Find the average balance for each customer who lives in Pokhara and has at least three accounts.
```mysql
	select avg(a.balance), b.branch_city from account as a, branch as b, customer as c, depositor as d where a.branch_number=b.branch_number and a.account_number=d.account_number and d.customer_number = c.customer_number and c.customer_city = 'Pokhara';
```
---
---
## Q 31. Find all customers who have both an account and a loan at the Tinkune branch. [ use set membership]
```mysql
	select distinct c.customer_name from customer as c, branch as b where c.customer_name in(select customer_name from customer as c, branch as b, loan as l, account as a, borrower as br , depositor as d where b.branch_name = 'Tinkune' and a.branch_number=b.branch_number and a.account_number=d.account_number and d.customer_number=c.customer_number and br.loan_number=l.loan_number and br.customer_number = c.customer_number);
```
---
---
## Q 32. Find all customers who do have a loan at the bank, but do not have an account at the bank. [ use set membership]
```mysql
	select distinct c.customer_name from customer as c, branch as b where c.customer_name in(select customer_name from customer as c, loan as l, account as a, borrower as br, depositor as d where ); 
```
---
---
## Q 33. Find out the total balance of the bank.
```mysql
	select balance, b.branch_name  from account as a, branch as b where a.branch_number=b.branch_number;
```
---
---
## Q 34. Find the number of branches appearing in the account relation.
```mysql
	select count(distinct branch_number) as count from account;
```
---
---
## Q 35. Find the total balance of each branch of the bank.
```mysql
	select balance, b.branch_name  from account as a, branch as b where a.branch_number=b.branch_number group by b.branch_name;
```
---
---
## Q 36. Find the maximum balance at each branch and sum of the balance of each branch. Rename your output attributes.
```mysql
	select max(a.balance) as max_balance, sum(a.balance),a.branch_number as sum_balance from account as a group by a.branch_number;
```
---
---
## Q 37. List the names of customers who have a loan at the bank, and whose names are neither Shyam nor Hari.
```mysql
	select c.customer_name,l.loan_number from customer as c, loan as l, borrower as b where c.customer_number=b.customer_number and b.loan_number=l.loan_number and c.customer_name not in('Aagman Poudel','Ross Smith');

```
---
---
## Q 38. Find the name of all branches that have assets greater than those of at least one branch located in Baneshwor. [with or without using Set Comparison]
```mysql
	select branch_name,assets from branch where assets >some (select assets from branch where branch_name = 'Baneshwor');

```
---
---
## Q 39. Find the names of all branches that have an asset value greater than that of each branch in Baneshwor.
```mysql
	select branch_name,assets from branch where assets >all (select assets from branch where branch_name = 'Baneshwor');

```
---
---
## Q 40. Delete all account tuples in the Tinkune branch.
```mysql
	delete from account where branch_number in(select branch_number from branch where branch_name='Tinkune');
```
---
---
## Q 41. Delete all loans with loan amounts between 13000 and 150000.
```mysql
	delete from loan where amount between 13000 and 150000;

```
---
---
## Q 42. Delete all account tuples at every branch located in Baneshwor.
```mysql
	delete from account where branch_number in(select branch_number from branch where branch_name = 'Baneshwor');

```
---
---
## Q 43. Delete the records of all accounts with balances below the average at the bank.
```mysql
	delete from account where balance < (select avg(balance) from account);

```
---
---
## Q 44. Increase all balance by 5 percent.
```mysql
	update account set balance = balance * 1.05;

```
---
---
## Q 45. Increase balance only to accounts with a balance of 10000 or more by 5 percent.
```mysql
	update account set balance = balance*1.05 where balance>=300000;

```
---
---
## Q 46. Pay 5 percent interest on accounts whose balance is greater than average.
```mysql
	update account set balance = balance*1.05 where balance > (select avg(balance) from account);

```
---
---
## Q 47. Update all accounts with balances over 10,00,000 receive 6 percent interest, whereas all others receive 5 percent.
```mysql
	update account set balance=case when balance>650000 then balance*1.06 else balance*1.05 end;

```
---
---
## Q 48. Create a view called all_customer consisting of branches and their customer’s name.
```mysql
	create view all_customer as select c.customer_number,c.customer_name,b.branch_name from customer as c, branch as b, account as a, depositor as d where c.customer_number=d.customer_number and d.account_number=a.account_number and a.branch_number=b.branch_number;
```
---
---
## Q 49. List the records of view all_customer.
```mysql
	select * from all_customer;
```
---
---
## Q 50. Drop all_customer view.
```mysql
	drop view all_customer;
```
---
---
## Q 51. Perform the Join operation (Natural join, Left join, Right join, and Full join) in the tables account and customer tables.
---
## Natural Join
```mysql
	select * from account natural join depositor natural join customer;
```
---
## Left Join
```mysql
	select * from account left join depositor on account.account_number=depositor.account_number left join customer on depositor.customer_number=customer.customer_number;
```
---
## Right Join
```mysql
	select * from account right join depositor on account.account_number=depositor.account_number right join customer on depositor.customer_number=customer.customer_number;
```
---
## Full Join
```mysql
	select * from account full join depositor on account.account_number=depositor.account_number full join customer on depositor.customer_number=customer.customer_number;
```
OR
```mysql
	(select * from account left join depositor on account.account_number=depositor.account_number left join customer on depositor.customer_number=customer.customer_number) union (select * from account right join depositor on account.account_number=depositor.account_number right join customer on depositor.customer_number=customer.customer_number);
```
----
---