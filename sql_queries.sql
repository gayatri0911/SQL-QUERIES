create table customer(cust_id int primary key, cust_name text, city varchar(20), country varchar(25));

create table orders(order_id int primary key, order_date date, cust_id int references customer(cust_id) on delete cascade);


insert into customer values(101,'tiya','pune','India'),
(102,'ravi','Berlin','Germany'),
(103,'priya','pune','India'),
(104,'pooja','delhi','India'),
(105,'neha','banglore','India');
select * from customer; 

insert into orders values(10111,'9/11/2020',101),
(10112,'17/08/2020',102),
(10113,'9/1/2020',105),
(10114,'25/3/2020',104),
(10115,'19/12/2020',103)
;
select * from orders;

select cust_name, city from customer;

select * from customer where country='India';

select * from customer where country='India' and city='pune';

select * from customer where city='delhi' or city='banglore';

update customer set cust_name='divya' where cust_id=103;
select cust_name from customer where cust_id=103;

delete from customer where cust_name='divya';
select * from customer;

alter table customer add bill_amt int;

update customer set bill_amt=90000 where cust_id=101;
update customer set bill_amt=80000 where cust_id=102;
update customer set bill_amt=60000 where cust_id=104;
update customer set bill_amt=70000 where cust_id=105;

select avg(bill_amt) from customer;

select count(city) from customer where city='pune';

select * from customer;

select orders.order_id, customer.cust_name , orders.order_date from orders INNER JOIN customer on orders.cust_id = customer.cust_id 
GROUP BY (cust_name);