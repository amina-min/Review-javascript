CREATE USER user_name
IDENTIFIED BY password;

alter user user_name quota 50m on system;

GRANT create session,create table,create sequence,create view TO user_name;



create TABLE category 
(
id number (5),
name varchar2(15)
);

INSERT INTO category (id,name) values (001,'Foods');
INSERT INTO category (id,name) values (002,'Bevarage');
INSERT INTO category (id,name) values (003,'Cosmetics');
INSERT INTO category (id,name) values (004,'Home Care');




CREATE TABLE product
(
   product_id number (5),
   product_name VARCHAR(50),
   quantity number (10),
   price number(30)
);

INSERT INTO product (product_id,product_name,quantity,price) values(101,'Dove Soap',50,150);
INSERT INTO product (product_id,product_name,quantity,price) values(102,'Sunsilk Shampoo',200,60);
INSERT INTO product (product_id,product_name,quantity,price) values(103,'ClinicPLus Shampoo',300,145);
INSERT INTO product (product_id,product_name,quantity,price) values(104,'CloseUp Toothpaste',210,80);
INSERT INTO product (product_id,product_name,quantity,price) values(105,'Ponds',230,60);
INSERT INTO product (product_id,product_name,quantity,price) values(106,'Vasline',150,74);
INSERT INTO product (product_id,product_name,quantity,price) values(107,'LifeBuoy',20,30);
INSERT INTO product (product_id,product_name,quantity,price) values(108,'Rin',178,30);
INSERT INTO product (product_id,product_name,quantity,price) values(109,'Surf excel',10,70);
INSERT INTO product (product_id,product_name,quantity,price) values(110,'Lux Soap',78,30);
INSERT INTO product (product_id,product_name,quantity,price) values(111,'Vim',50,30);
INSERT INTO product (product_id,product_name,quantity,price) values(112,'Active Wheel detergent',74,20);
INSERT INTO product (product_id,product_name,quantity,price) values(113,'Cif Cream Cleaner',15,30);
INSERT INTO product (product_id,product_name,quantity,price) values(114,'Bru coffee',75,45);
INSERT INTO product (product_id,product_name,quantity,price) values(115,'Fair & Lovely',150,30);
INSERT INTO product (product_id,product_name,quantity,price) values(116,'Annapurna salt',200,45);
INSERT INTO product (product_id,product_name,quantity,price) values(117,'Knorr',45,52);
INSERT INTO product (product_id,product_name,quantity,price) values(118,'Rexona',78,20);
INSERT INTO product (product_id,product_name,quantity,price) values(109,'Lipton',10,87);
INSERT INTO product (product_id,product_name,quantity,price) values(110,'Bru',78,36);
INSERT INTO product (product_id,product_name,quantity,price) values(111,'Horlicks ',15,20);
INSERT INTO product (product_id,product_name,quantity,price) values(112,'Tazo',78,60);

CREATE TABLE invoice (
    invoice_no number (5),
    customer_name varchar2(20),
    customer_address varchar2(20),
    Phone number(11),
    order_date varchar2(10),
    total_price  number(10)
 );

 INSERT INTO invoice(invoice_no,customer_name,customer_address,Phone,order_date,total_price) values(01,'Mehedi Hasan','Kolabagan',0170000001,'02/05/21',1500);






create table product(
   product_id number (10),
   product_name varchar2 (30),
   qty number (10),
   price varchar2(5)
);



INSERT INTO product values(101,'Shampoo',20,'60');
INSERT INTO product values(102,'Biscuit',20,'40');
INSERT INTO product values(103,'Soap',20,'30');
INSERT INTO product values(104,'Horlicks',20,'120');

update product 
SET qty = (select qty-&qty FROM product WHERE product_id = 101) 
where product_id =  101;


-- Update
UPDATE product 
SET product_name = 'CONDITIONAR'
where product_id = 101;


update product 
set product_name = 'toothpaste',
 price = '90'
where product_id = 103;





-- ADD column 
Alter table product ADD Address varchar2 (30);
 
--DELETE column  
Alter table product drop column address;

-- DELETE row
DELETE FROM product
WHERE product_name = 'Horlicks';

--Delete all row 
DELETE product;

-- Update
UPDATE product 
SET product_name = 'CONDITIONAR'
where product_id = 101;

--updating two coloumn by subqueries 

UPDATE product 
SET product_name = (select product_name
FROM product WHERE product_id = 104),
 price = (select price
FROM product WHERE product_id = 102)
WHERE product_id = 103;

**** -- copy table from another user's table
insert into demo select from  
DELETE from employees

where department_id = 105

(SELECT department_id from departments Where department_name Like '%Public%');

--Truncate 
Truncate table table_name;


--show all table name
select table_name
    from user_tables
    order by table_name;







   



--insert 

-- delete

--sub queries 


--join 