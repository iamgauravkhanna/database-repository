-- creating table
create table customer2 (
id int not null,
name varchar(45) not null,
age int,
address char(50),
salary decimal(18,2)
);

-- selecting from table
select * from customer2;

-- describing table
desc customer2;

-- droping table
drop table customer;

-- Inserting
insert into customer2 (id,name,age,address,salary) values (1,'Maven', 23, '124 Main Street', '29865.25');

-- Inserting
insert into customer2 values (2,'Apache', 24, '124 Main Street', '29865.25');

-- Inserting
insert into customer2 (id,name) values (3,'Jessi');

-- Inserting
insert into customer2 (id) values (3);

-- OR/AND
select * from customer2 where age = 23 or name = 'jessi';

--
select * from customer2 where name like '%ven';

--
select * from customer2 where name like 'Ma%en';

--
select * from customer2 where name like '_aven';

--
select * from customer2 where name like '_ave_';

--
select * from customer2 where ROWNUM <= 2 ;

--
CREATE TABLE CUSTOMERS(
       ID   INT              NOT NULL,
       NAME VARCHAR (20)     NOT NULL,
       AGE  INT              NOT NULL,
       ADDRESS  CHAR (25) ,
       SALARY   DECIMAL (18, 2),       
       PRIMARY KEY (ID)
);

CREATE TABLE ORDERS (
       ID INT NOT NULL,  
       CUSTOMER_ID INT references CUSTOMERS(ID),
       AMOUNT  int,
       PRIMARY KEY (ID)
);

--
insert into orders values (1,1,1245);

--
CREATE TABLE EMPLOYEE(
       ID   INT              NOT NULL,
       NAME VARCHAR (20)     NOT NULL,
       AGE  INT              NOT NULL CHECK (AGE >= 18)
       ) ;
	   
	   
--
insert into employee values (5,'Larry',10);
insert into employee values (5,'Larry',20);

--
CREATE INDEX idx_age
    ON CUSTOMERS ( AGE );
	
insert into  orders values(1,1,15000);
insert into orders values (2,2,25000);
insert into orders values (3,3,35000);
insert into orders values (4,4,45000);
insert into orders values (5,5,55000);
insert into orders values (6,6,65000);

commit;

SELECT *
        FROM CUSTOMERS, ORDERS
        WHERE  CUSTOMERS.ID = ORDERS.CUSTOMER_ID;
		
INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (1, 'Ramesh', 32, 'Ahmedabad', 2000.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (2, 'Khilan', 25, 'Delhi', 1500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (3, 'kaushik', 23, 'Kota', 2000.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (4, 'Chaitali', 25, 'Mumbai', 6500.00 );

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (5, 'Hardik', 27, 'Bhopal', 8500.00 );


INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (6, 'Komal', 22, 'MP', 4500.00 );	

INSERT INTO CUSTOMERS (ID,NAME,AGE,ADDRESS,SALARY)
VALUES (8, 'Maria', 22, 'MP', 8500.00 );	

create table grv as select * from plan;