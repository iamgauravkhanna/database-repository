-- Create TABLE
CREATE TABLE GK_TABLE6
  (
    ID      INT,
    PHONE   NUMBER(10),
    NAME    VARCHAR(20),
    ADDRESS CHAR(20),
    SALARY  DECIMAL(20,2),
    AGE     NUMBER(20),
    DOH     TIMESTAMP
  );

-- Rename TABLE
ALTER TABLE GK_TABLE6 RENAME TO GK_CUSTOMERS;  

-- Drop TABLE
DROP TABLE GK_CUSTOMERS;  
  
-- Add new COLUMN
ALTER TABLE GK_TABLE6 ADD ( CITY CHAR(27), ZIP NUMBER(5) ) ;

-- Change COLUMN data type
ALTER TABLE GK_TABLE6 MODIFY ( CITY VARCHAR2(20)) ;

-- Drop COLUMN
ALTER TABLE GK_TABLE6
DROP COLUMN AGE ;

-- Rename COLOUMN
ALTER TABLE GK_TABLE6 RENAME COLUMN DOH TO Date_Of_Hire ;

-- Describe the List of column definition
DESC GK_CUSTOMERS;

-- Insert new row in Table - Query 1
INSERT INTO GK_TABLE6
  (ID,PHONE,NAME
  ) VALUES
  (3,3435454,'GAURAV KHANNA'
  ) ;

-- Insert new row in Table - Query 2
INSERT
INTO GK_TABLE6
  (
    ID,
    PHONE,
    NAME,
    ADDRESS,
    SALARY,
    AGE,
    DOH,
    CITY,
    ZIP
  )
  VALUES
  (
    '9',
    '23489324',
    'Jony',
    '9th Street',
    '89333',
    '32',
    TO_TIMESTAMP('2017-08-16 13:46:50.583000000', 'YYYY-MM-DD HH24:MI:SS.FF'),
    'Delhi',
    '3243'
  ) ;
  
-- Insert new row in Table - Query 3  
 INSERT
INTO GK_TABLE6
  VALUES
  (
    '67',
    '23489324',
    'Jony',
    '9th Street',
    '89333',
    '32',
    TO_TIMESTAMP('2017-08-16 13:46:50.583000000', 'YYYY-MM-DD HH24:MI:SS.FF'),
    'Delhi',
    '3243'
  ) ;

-- Insert Queries
insert into GK_TABLE6 (ID, NAME, CITY) values (1, 'Eba', 'Dengyue');
insert into GK_TABLE6 (ID, NAME, CITY) values (2, 'Berny', 'Chicago');
insert into GK_TABLE6 (ID, NAME, CITY) values (3, 'Madel', 'Karnice');
insert into GK_TABLE6 (ID, NAME, CITY) values (4, 'Everett', 'Xiaotang');
insert into GK_TABLE6 (ID, NAME, CITY) values (5, 'Cazzie', 'Larreynaga');
insert into GK_TABLE6 (ID, NAME, CITY) values (6, 'Mariel', 'Muang Sing');
insert into GK_TABLE6 (ID, NAME, CITY) values (7, 'Tiffani', 'Shinao');
insert into GK_TABLE6 (ID, NAME, CITY) values (8, 'Marin', 'Ambam');
insert into GK_TABLE6 (ID, NAME, CITY) values (9, 'Pierette', 'Wololele A');
insert into GK_TABLE6 (ID, NAME, CITY) values (10, 'Starlin', 'Morteros');

  
-- Fetch data from database - Query 1
SELECT * FROM GK_TABLE6 ;

-- Fetch data from database - Query 2
SELECT ID,NAME FROM GK_TABLE6 ;  

-- Using Where clause
SELECT * FROM GK_TABLE6 WHERE NAME = 'GAURAV KHANNA';

-- Using OR clause
SELECT * FROM GK_TABLE6 WHERE NAME = 'GAURAV KHANNA' OR ID = 3;

-- Using AND clause
SELECT * FROM GK_TABLE6 WHERE NAME = 'GAURAV KHANNA' AND ID = 3;

-- Updating value of column
UPDATE GK_TABLE6 SET CITY = 'DELHI' WHERE name = 'Dorita' ;

-- Delete row from tables
DELETE FROM GK_TABLE6 WHERE CITY = 'DELHI' ;

-- Using like clause  - Query 1
SELECT * FROM GK_TABLE6 WHERE name like '%A%' ;

-- Using like clause  - Query 2
SELECT * FROM GK_TABLE6 WHERE name like 'A%' ;

-- Using like clause  - Query 3
SELECT * FROM GK_TABLE6 WHERE name like '%A' ;

-- Using like clause  - Query 4
SELECT * FROM GK_TABLE6 WHERE name like '_A%' ;

-- Using like clause  - Query 5
SELECT * FROM GK_TABLE6 WHERE name like 'J_n_s' ;

-- Using Top Command to fetch filtered results
SELECT * FROM GK_TABLE6 WHERE ROWNUM <= 2 

-- Sorting result sets using ORDER BY - Query 1
SELECT * FROM GK_TABLE6 ORDER BY ID ASC ;

-- Sorting result sets using ORDER BY - Query 2
SELECT * FROM GK_TABLE6 ORDER BY ID DESC ;

-- Grouping result sets using GROUP BY
SELECT ID,SUM(SALARY) FROM GK_TABLE6 GROUP BY ID ;

-- Fetch DISTINCT results
SELECT DISTINCT(DOH) FROM GK_TABLE6 ;

-- Clear all records from tables
TRUNCATE TABLE GK_TABLE6;

-- To use multiple value for particular row during search
SELECT * FROM GK_TABLE6 WHERE ID IN (1,3,6);

-- Fetching rows which contains NULL value for particular column
SELECT * FROM GK_TABLE6 WHERE ADDRESS IS NULL ;

-- Fetching rows which don't contains NULL value for particular column
SELECT * FROM GK_TABLE6 WHERE ADDRESS IS NOT NULL ;

-- NOT NULL CONSTRAINT - Query 1
ALTER TABLE GK_TABLE6 MODIFY (ID INT NOT NULL);

-- NOT NULL CONSTRAINT - Query 1
ALTER TABLE GK_TABLE6 MODIFY (ID INT NULL);

-- Providing default value to server
ALTER TABLE GK_TABLE6 MODIFY (Address DEFAULT 'Address Not Defined');

-- Add new coloumn with UNIQUE constraint
ALTER TABLE GK_TABLE6 ADD (EMPLOYEEID INT UNIQUE );

-- Inner Join
SELECT *
FROM EMPLOYEE_SAMPLES
JOIN EMPLOYER_SAMPLES
ON EMPLOYEE_SAMPLES.ID = EMPLOYER_SAMPLES.ID ;

-- Inner Join
SELECT *
FROM EMPLOYEE_SAMPLES
INNER JOIN EMPLOYER_SAMPLES
ON EMPLOYEE_SAMPLES.ID = EMPLOYER_SAMPLES.ID ;

-- HAVING
SELECT id,
  COUNT(*)
FROM EMPLOYEE_SAMPLES
GROUP BY id
HAVING COUNT(id) > 0
ORDER BY ID ;