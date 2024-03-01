Use classicmodels;
-- 1. Write a query to (lastname, firstname, jobtitle) records from employees table.
Select lastname, firstname, jobtitle from employees;
-- 2. Write a query to all records from employees table.
Select * from employees;
-- 3. Write a query to (contactfirstname, contactlastname) records from customers table order by contactlastname ascending.
Select contactfirstname, contactlastname from customers order by contactlastname;
-- 4. Write a query to (contactfirstname, contactlastname) records from customers table order by contactlastname descending.
Select contactfirstname, contactlastname from customers order by contactlastname DESC;
-- 5. Write a query to (contactfirstname, contactlastname) records from customers table order by contactlastname descending and contactfirstname ascending.
Select contactfirstname, contactlastname from customers order by contactfirstname,contactlastname;
-- 6. Write a query to (ordernumber, orderlinenumber, quantityOrdered * priceEach) records from orderdetails order by ordernumber, orderlinenumber, quantityOrdered * priceEach.
Select ordernumber, orderlinenumber, quantityOrdered * priceEach from orderdetails order by ordernumber, orderlinenumber, quantityOrdered * priceEach;
-- 7. Write a query to (ordernumber, orderlinenumber, quantityOrdered * priceEach) name as subtotal records from orderdetails order by ordernumber, orderlinenumber, subtotal.
Select ordernumber, orderlinenumber, quantityOrdered * priceEach as subtotal from orderdetails order by ordernumber, orderlinenumber, subtotal;
-- 8.write query to (ordernumber, status) records from orders table order by FIELD status,'In Process','On Hold','Cancelled','Resolved','Disputed','Shipped'. 
Select ordernumber, status from orders order by  FIELD(status, 'In Process', 'On Hold', 'Cancelled', 'Resolved', 'Disputed', 'Shipped');
-- 9.write query to (lastname) records from employees table order by lastname.
Select lastname from employees order by lastname;
-- 10.write query to unique (lastname) records from employees table order by lastname.
Select distinct lastname from employees order by lastname;
-- 11.Write query to unique (state) records from customers table.
Select distinct state from customers;
-- 12.write query to unique (state,city) records from customers table  excluding NULL to state column order by state, city.
Select distinct state, city from customers where state is not null order by state, city;
-- 13.write query to (state) records from customers table group by state.
Select state from customers group by state;
-- 14.write query to unique (state) records from customers table.
Select distinct state from customers;
-- 15.write query to unique (state) records from customers table order by state.
Select distinct state from customers order by state;
-- 16.write a query from customers table make USA as a country by unique state from their count.
Select country, state from customers where country = 'USA' group by country, state having count(distinct state) = 1;
-- 17.write query to unique(state) 5 records from customers table excluding NULL to state column.
Select distinct state from customers where state is not null limit 5;
-- 18.write query to (lastname, firstname, jobtitle) records from employees table by jobitle=’sales rep’.
Select lastname, firstname, jobtitle from employees where jobtitle = "sales rep";
-- 19. write query to (lastname,firstname,jobtitle,officecode) records from employees table by jobtitle=’sales rep’ and officecode=1.
Select lastname, firstname, jobtitle, officecode from employees where jobtitle = "sales rep" and officecode=1;
-- 20.write query to (lastname,firstname,jobtitle) records from employees table by jobtitle is not sales rep.
Select lastname, firstname, jobtitle from employees where jobtitle <> "sales rep";
-- 21.write query to (lastname, firstname,officecode) records from employees table by officecode is greater than 5.
Select lastname, firstname, officecode from employees where officecode > 5;
-- 22.write query to (lastname,firstname,officecode) records from employees table by officecode is equal to and less than 4.
Select lastname, firstname, officecode from employees where officecode <= 4;
-- 23.write query to (customernumber, customername, creditlimit) 10 records from customers table.
Select customernumber, customername, creditlimit from customers limit 10;
-- 24.write query to (customernumber, customername, creditlimit) 5 records from customers table order by creditlimit descending.
Select customernumber, customername, creditlimit from customers order by creditlimit desc limit 5;
-- 25. write query to (customernumber, customername, creditlimit) 5 records from customers table order by creditlimit ascending.
Select customernumber, customername, creditlimit from customers order by creditlimit limit 5;
-- 26.write query to (country,officecode,city,phone) records from offices table by country is USA and FRANCE. Using In.
Select country, officecode, city, phone from offices where country in ('USA','France');
-- 27. write query to (country,officecode,city,phone) records from offices table by country is USA and FRANCE.
Select country, officecode, city, phone from offices where country= "USA" OR country = "france";
-- 28.write query to (country,officecode,city,phone) records from offices table by country is not USA and FRANCE.
Select country, officecode, city, phone from offices where country not in  ('USA','France');
-- 29.write query to (ordernumber) records from orderdetails tables by group by ordernumber sum of quantityOrdered * priceEach is greater than 60000.
Select ordernumber from orderdetails group by ordernumber having SUM(quantityOrdered * priceEach)>60000;
-- 30..write query to (orderNumber, customernumber, STATUS, shippedDate) records from orders table by ordernumber is 10165, 10287, 10310.
Select ordernumber, customernumber, STATUS, shippedDate from orders where ordernumber in (10165, 10287, 10310);
-- 31.write query to (productCode, productName, buyprice) records from products table by buyprice is range between 90 to 100.
Select productCode, productName, buyprice from products where buyprice between 90 and 100;
-- 32.write query to (productcode,productName,buyprice) records from products table by buyprice is less than or equal to 100 and greater than or equal to 90.
Select productCode, productName, buyprice from products where buyprice <=100 and buyprice >= 90;
-- 33.write query to (productcode,productname,buyprice) records from products table by buyprice is not between 20 to 100.
Select productCode, productname, buyprice from products where buyprice not between 20 and 100;
-- 34.write query to (productcode,productname,buyprice) records from products table by buyprice is lessthan 20 and greater than 100.
Select productcode, productname, buyprice from products  where buyprice < 100 and buyprice > 20; 
-- 35.write query to (orderNumber, requiredDate, status) records from orders table by requireddate is between 2003-01-01 and 2003-01-31.
Select orderNumber, requiredDate, status from orders where requireddate between '2003-01-01' and '2003-01-31';
-- 36.write query to (employeenumber,lastname,firstname) records from employees table by firstname is start with letter ‘a’.
Select employeenumber, lastname, firstname from employees where firstname like 'a%';
-- 37.write query to (employeenumber, lastname,firstname) records from employees table by lastname is ends with word ‘on’.
Select employeenumber, lastname, firstname from employees where lastname like '%on';
-- 38.write query to (employeenumber, lastname,firstname) records from employees table by lastname is must ‘on’.
Select employeenumber, lastname, firstname from employees where lastname like '%on%';
-- 39.write query to (employeenumber, lastname,firstname) records from employees table by firstname is start with letter ‘T’ and ends with letter ‘m’.
Select employeenumber, lastname, firstname from employees where firstname like 'T%m';
-- 40.write query to (employeenumber, lastname, firstname) records from employees table by lastname is not start with letter ‘B’.
Select employeenumber, lastname, firstname from employees where lastname not like 'B%';
-- 41.write query to (productcode,productname) records from products table by productcode is must ‘_20’.
Select productcode, productname from products where productcode like '%\_20%';
-- 42.write query to (customernumber,contactlastname) as a id and name records from customers table. And  to join with another table(employeenumber,firstname) as a id and name records from employees table.
Select c.customernumber as id, c.contactlastName as name FROM customers c LEFT JOIN employees e ON e.employeeNumber = c.customernumber;
-- 43.write query to (employeenumber,firstname) records from employees table and to join with another table with (customernumber,contactlastname) records from customers table to order by firstname.
Select e.employeenumber, e.firstname from employees e LEFT join customers c on c.customernumber = e.employeenumber order by e.firstname;
-- 44..write query to (lastname,firstname) records from employees table by concat with ‘,’.
Select concat_ws(',',lastname, firstname) from employees;
-- 45.write query to (lastname,firstname) records from employees table as a ‘Full name’ to concat with ‘,’.
Select concat_ws(',',lastname, firstname) as Fullname from employees;
-- 46.write query to (ordernumber) as a ‘Order no’ and sum of (priceEach * quantityOrdered) as a ‘Total’ records from orderdetails table to group by ‘order no.’ and Total is greater than 60000. 
Select ordernumber as Orderno,  sum(priceEach * quantityOrdered) as Total from orderdetails group by orderno having total>60000;
-- 47.wite query to (status) records from orders table group by status.
Select status from orders group by status;
-- 48.write query to unique (status) records from orders table.
Select Distinct status from orders;
-- 49.write query to (status,and count the status) as a ‘number’ records from orders table to group by status.
Select status,Count(status) as number from orders group by status; 
-- 50.write query to (productname) records from products table by given regular expression is productname start with A,B,C to order by productname.
Select productname from products where productname Like 'A%' or productname like 'B%' or productname like 'C%';
-- Alternative
Select productname from products where productname regexp '^[ABC]' order by productname;
-- 51.write a query to substring of word 'MYSQL SUBSTRING'  and given ans is ‘SUBSTRING'. 
Select substr('MYSQL SUBSTRING', 7);
-- 52.write query to minimum records of buyprice from products table.
Select min(buyprice) from products;
-- 53.write query to (productcode,productname,buyprice)  records from products table by buyprice is minimum.
Select productcode, productname, buyprice from products where (Select min(buyprice) from products) = buyprice;
-- 54.write query to average buyprice records as a ‘'Average Price' from products table.
Select avg(buyprice) from products;
-- 55.write query to substract of  count of buyprice and count of unique buyprice records from products table.
Select count(buyprice) as buyprice, count(distinct buyprice) as u_buyprice, count(buyprice)-count(distinct buyprice) as difference from products;
-- 56.write query to (productline,average buyprice as a 'Average Price') records from products table group by productline and also buyprice is greater than 50.
Select productline, avg(buyprice) as Average_Price from products group by productline having avg(buyprice) > 50 ;
-- 57.write query to all records from payments table by maximum amount of payments.
Select * from payments where (Select max(amount) from payments)= amount;