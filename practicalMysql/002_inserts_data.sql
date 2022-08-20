USE mysql_practice_db;

#INSERT INTO JOBS TABLE
INSERT INTO jobs 
VALUES ('AD_PRES','CEO',9000,20000),
       ('AD_VP','VICE President',8000,18000),
       ('AD_ASST','Admin Assistant',5000,6000),
       ('FI_CLERK','Finance Clerk',3000,4000),
       ('FI_MGR','Finance Manager',4000,5000),
       ('SA_REP','Sales Representative',3000,4000),
       ('SA_MGR','Sales Manager',4000,5000),
       ('SH_CLERK','Shipping Clerk',2500,4000),
       ('SH_MGR','Shipping Manager',4000,5000),
       ('IT_PROG','Programmer',4000,5500),
       ('IT_MGR', 'IT Manager', 5000, 6000),
       ('MK_CLERK','Marketing Clerk',3000,4000),
       ('MK_MGR','Marketing Manager',4000,5000),
       ('HR_MGR','Human Resource Manager',4000,5000);

#INSERT INTO regions TABLE
INSERT INTO regions 
VALUES (1,'Europe'),
       (2,'Americas'),
       (3,'Asia'),
       (4,'Middle East and Africa');

#INSERT INTO countries TABLE
INSERT INTO country
VALUES ('AR','Argentina',2),
       ('AU','Australia',3),
       ('BE','Belgium',1),
       ('BR','Brazil',2),
       ('CA','Canada',2),
       ('CH','Switzerland',1),
       ('CN','China',3),
       ('DE','Germany',1),
       ('DK','Denmark',1),
       ('EG','Egypt',4),
       ('FR','France',1),
       ('IL','Israel',4),
       ('IN','India',3),
       ('IT','Italy',1),
       ('JP','Japan',3),
       ('KW','Kuwait',4),
       ('ML','Malaysia',3),
       ('MX','Mexico',2),
       ('NG','Nigeria',4),
       ('NL','Netherlands',1),
       ('SG','Singapore',3),
       ('UK','United Kingdom',1),
       ('US','United States of America',2),
       ('ZM','Zambia',4),
       ('ZW','Zimbabwe',4);

#INSERT INTO locations TABLE
INSERT INTO locations
VALUES (1300,'9450 Kamiya-cho','6823','Hiroshima','','JP'),
       (1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US'),
       (1500,'2011 Interiors Blvd','99236','South San Francisco','California','US'),
       (1600,'2007 Zagora St','50090','South Brunswick','New Jersey','US'),
       (1700,'2004 Charade Rd','98199','Seattle','Washington','US'),
       (1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA'),
       (1900,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA'),
       (2000,'40-5-12 Laogianggen','190518','Beijing','','CN'),
       (2200,'12-98 Victoria Street','2901','Sydney','New South Wales','AU'),
       (2400,'8204 Arthur St','','London','','UK'),
       (2500,'32 Peachtree Rd','30303','Atlanta','GA','US'),
       (2700,'560 Main St','37024','Nashville','TN','US');

#INSERT DATA INTO departments TABLE
INSERT INTO departments 
VALUES (10,'Administration',200,1700),
       (20,'Marketing',201,1800),
       (30,'Purchasing',114,1700),
       (40,'Human Resources',203,2400),
       (50,'Shipping',121,1500),
       (60,'IT',103,1400),
       (70,'Public Relations',204,2700),
       (80,'Sales',145,2500),
       (90,'Accounting',205,1700),
       (100,'Customer Service',203,2400);

TRUNCATE TABLE employees;

# TABLE 6 INSERT INTO employees TABLE
INSERT INTO employees
VALUES (100,'Douglas','Grant','DGRANT','650.507.9844','23-01-08','SH_CLERK',2600,114,50),
       (101,'Adam','Fripp','AFRIPP','650.123.2234','10-03-05','SH_MGR',8200,109,50),
       (102,'Jennifer','Whalen','JWHALEN','515.123.4444','17-09-03','AD_ASST',4400,108,10),
       (103,'Michael','Hartstein','MHARTSTE','515.123.5555','17-02-04','MK_MGR',13000,109,20),
       (104,'Pat','Fay','PFAY','603.123.6666','17-08-05','MK_REP',6000,103,20),
       (105,'Susan','Mavris','SMAVRIS','515.123.7777','07-06-02','HR_MGR',6500,109,40),
       (106,'Shelley','Higgins','SHIGGINS','515.123.8080','07-06-02','SA_MGR',12008,109,80),
       (107,'William','Gietz','WGIETZ','515.123.8181','07-06-02','SA_REP',8300,106,80),
       (108,'Steven','King','SKING','515.123.4567','17-06-03','AD_PRES',24000, null ,10),
       (109,'Lex','De Haan','LDEHAAN','515.123.4569','13-02-01','AD_VP',17000,108,10),
       (110,'Bruce','Ernst','BERNST','590.423.4568','21-05-07','IT_MGR',6000,109,60),
       (111,'Diana','Lorentz','DLORENTZ','590.423.5567','07-02-07','IT_PROG',4200,110,60),
       (112,'Nancy','Greenberg','NGREENBE','515.124.4569','17-08-02','FI_MGR',12008,109,90),
       (113,'Daniel','Faviet','DFAVIET','515.124.4169','16-08-02','FI_CLERK',3000,112,90);