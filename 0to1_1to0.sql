CREATE TABLE LEARNING1
  ( ID NUMERIC(5), NAME VARCHAR(30), STATUS CHAR(1)
  );
  
INSERT INTO LEARNING1 VALUES
  (1,'Jake','1'
  );

INSERT INTO LEARNING1 VALUES
  (2,'Joe','0'
  );

INSERT INTO LEARNING1 VALUES
  (3,'Tim','1'
  );

INSERT INTO LEARNING1 VALUES
  (4,'Jason','0'
  );

UPDATE LEARNING1
SET status =
  CASE status
    WHEN '1'
    THEN '0'
    WHEN '0'
    THEN '1'
  END ;
