CREATE DATABASE  STUDENT_TABLE_PRACTICE;
USE STUDENT_TABLE_PRACTICE;

CREATE TABLE STUDENT (
    STUDENT_ID     VARCHAR(10) PRIMARY KEY,
    STUDENT_NAME   VARCHAR(50),
    GENDER         VARCHAR(10),
    DEPARTMENT     VARCHAR(30),
    YEAR_OF_STUDY  VARCHAR(20),
    MARKS          VARCHAR(20),
    CITY           VARCHAR(30),
    ADMISSION_DATE DATE
);

SELECT * FROM STUDENT;

INSERT INTO STUDENT VALUES (101, 'AMIT',   'MALE',   'COMPUTER',    1, 78, 'DELHI',      '2023-07-01');
INSERT INTO STUDENT VALUES (102, 'RIYA',   'FEMALE', 'COMPUTER',    2, 85, 'MUMBAI',     '2022-06-15');
INSERT INTO STUDENT VALUES (103, 'KARAN',  'MALE',   'MECHANICAL',  3, 65, 'PUNE',       '2021-08-20');
INSERT INTO STUDENT VALUES (104, 'NEHA',   'FEMALE', 'ELECTRICAL',  4, 90, 'DELHI',      '2020-07-10');
INSERT INTO STUDENT VALUES (105, 'RAHUL',  'MALE',   'COMPUTER',    2, 55, 'CHENNAI',    '2022-06-18');
INSERT INTO STUDENT VALUES (106, 'SNEHA',  'FEMALE', 'MECHANICAL',  1, 88, 'BANGALORE',  '2023-07-05');
INSERT INTO STUDENT VALUES (107, 'ARJUN',  'MALE',   'ELECTRICAL',  3, 72, 'HYDERABAD',  '2021-08-25');
INSERT INTO STUDENT VALUES (108, 'POOJA',  'FEMALE', 'COMPUTER',    4, 95, 'MUMBAI',     '2020-07-12');
INSERT INTO STUDENT VALUES (109, 'VIKAS',  'MALE',   'CIVIL',       2, 60, 'JAIPUR',     '2022-06-22');
INSERT INTO STUDENT VALUES (110, 'ANJALI', 'FEMALE', 'CIVIL',       1, 82, 'DELHI',      '2023-07-08');
INSERT INTO STUDENT VALUES (111, 'ROHIT',  'MALE',   'COMPUTER',    3, 68, 'NOIDA',      '2021-08-18');
INSERT INTO STUDENT VALUES (112, 'KAVYA',  'FEMALE', 'ELECTRICAL',  2, 91, 'CHENNAI',    '2022-06-10');
INSERT INTO STUDENT VALUES (113, 'MOHIT',  'MALE',   'MECHANICAL',  4, 74, 'PUNE',       '2020-07-20');
INSERT INTO STUDENT VALUES (114, 'NIDHI',  'FEMALE', 'COMPUTER',    1, 89, 'GURGAON',    '2023-07-02');
INSERT INTO STUDENT VALUES (115, 'SANJAY', 'MALE',   'CIVIL',       3, 58, 'BHOPAL',     '2021-08-30');
INSERT INTO STUDENT VALUES (116, 'PRIYA',  'FEMALE', 'MECHANICAL',  2, 76, 'INDORE',     '2022-06-25');

SELECT * FROM STUDENT;

--USING *

--1.Write a query to display all columns from the STUDENT table using *.
SELECT * 
FROM STUDENT;

--2.Write a query to display complete student details.
SELECT * 
FROM STUDENT;

--3.Write a query to display every record and column from STUDENT.
SELECT *
FROM STUDENT;

--4.Write a query to display full data of the STUDENT table.
SELECT *
FROM STUDENT;

--5.Write a query to display student information exactly as stored.
SELECT *
FROM STUDENT;



-- USING * WITH EXTRA EXPRESSIONS

--6.Write a query to display all columns and MARKS + 5 as BONUS_MARKS.
SELECT STUDENT.*, MARKS+5 "BONOUS MARKS"
FROM STUDENT;

--7.Write a query to display all student details and MARKS * 2 as DOUBLE_MARKS.
SELECT STUDENT.*, MARKS * 2 AS DOUBLE_MARKS
FROM STUDENT;

--8.Write a query to display all columns along with YEAR_OF_STUDY + 1 as NEXT_YEAR.
SELECT STUDENT.* , YEAR_OF_STUDY +1 AS NEXT_YEAR
FROM STUDENT;

--9.Write a query to display all student data and MARKS / 10 as MARKS_RATIO.
SELECT STUDENT.* , MARKS/10 AS MARKS_RATIO
FROM STUDENT;

--10.Write a query to display complete STUDENT table and MARKS + 10 as UPDATED_MARKS.
SELECT STUDENT.*, MARKS+10 AS UPDATED_MARKS
FROM STUDENT;

-- USING ALIAS

--11.Write a query to display STUDENT_NAME as NAME and MARKS as SCORE.
SELECT STUDENT_NAME AS NAME, MARKS AS SCORE
FROM STUDENT;

--12.Write a query to display DEPARTMENT as BRANCH and CITY as LOCATION.
SELECT DEPARTMENT AS BRANCH , CITY AS LOCATION
FROM STUDENT;

--13.Write a query to display STUDENT_ID as ID and ADMISSION_DATE as JOIN_DATE.
SELECT STUDENT_ID AS ID , ADMISSION_DATE AS JOIN_DATE
FROM STUDENT;

SELECT * FROM STUDENT;

--14.Write a query to display YEAR_OF_STUDY as YEAR and MARKS as TOTAL_MARKS.
SELECT YEAR_OF_STUDY AS YEAR , MARKS AS TOTAL_MARKS
FROM STUDENT;

--15.Write a query to display GENDER as CATEGORY and CITY as STUDENT_CITY.
SELECT GENDER AS CATEGORY , CITY AS STUDENT_CITY
FROM STUDENT;

-- USING EXPRESSIONS

--16.Write a query to display STUDENT_NAME and MARKS + 2.
SELECT STUDENT_NAME , MARKS+2
FROM STUDENT;

--17.Write a query to display STUDENT_ID and MARKS * 1.1.
SELECT STUDENT_ID , MARKS *1
FROM STUDENT;

--18.Write a query to display MARKS, MARKS + 10, and MARKS − 5.
SELECT MARKS , MARKS +10 , MARKS - 5
FROM STUDENT;

--19.Write a query to display STUDENT_NAME and YEAR_OF_STUDY * 12 as MONTHS_STUDIED.
SELECT STUDENT_NAME , YEAR_OF_STUDY*12 AS MONTHS_STUDIES
FROM STUDENT;

--20.Write a query to display STUDENT_ID and MARKS / 2.
SELECT STUDENT_ID ,  MARKS/2
FROM STUDENT;


--USING DISTINCT
--21.Write a query to display distinct DEPARTMENT values.
SELECT DISTINCT DEPARTMENT
FROM STUDENT;

--22.Write a query to display distinct CITY values.
SELECT DISTINCT CITY
FROM STUDENT;

--23.Write a query to display distinct GENDER values.
SELECT DISTINCT GENDER
FROM STUDENT;

--24.Write a query to display distinct YEAR_OF_STUDY values.
SELECT DISTINCT YEAR_OF_STUDY
FROM STUDENT;

--25.Write a query to display distinct combinations of DEPARTMENT and CITY.
SELECT DISTINCT DEPARTMENT, CITY
FROM STUDENT;

--DISTINCT WITH MULTIPLE COLUMNS

--26.Write a query to display distinct DEPARTMENT and CITY.
SELECT DISTINCT DEPARTMENT, CITY
FROM STUDENT;

--27.Write a query to display distinct CITY and GENDER.
SELECT DISTINCT CITY, GENDER
FROM STUDENT;

--28.Write a query to display distinct YEAR_OF_STUDY and DEPARTMENT.
SELECT DISTINCT YEAR_OF_STUDY, DEPARTMENT
FROM STUDENT;

--29.Write a query to display distinct GENDER and YEAR_OF_STUDY.
SELECT DISTINCT GENDER, YEAR_OF_STUDY
FROM STUDENT;

--30.Write a query to display distinct DEPARTMENT and YEAR_OF_STUDY.
SELECT DISTINCT DEPARTMENT, YEAR_OF_STUDY
FROM STUDENT;

 --DATE EXPRESSIONS
--31.Write a query to display STUDENT_NAME and ADMISSION_DATE.
SELECT STUDENT_NAME, ADMISSION_DATE
FROM STUDENT;

--32.Write a query to display ADMISSION_DATE and ADMISSION_DATE + 30 as REVIEW_DATE.
SELECT ADMISSION_DATE, ADMISSION_DATE + 30 AS REVIEW_DATE
FROM STUDENT;

--33.Write a query to display STUDENT_ID and ADMISSION_DATE + 365.
--DOUGHT
SELECT STUDENT_ID , ADMISSION_DATE + 365 AS NEXT_YEAR_DATE
FROM STUDENT;

--34.Write a query to display STUDENT_NAME and year from ADMISSION_DATE.


--35.Write a query to display STUDENT_ID and ADMISSION_DATE + 1 as NEXT_DAY.
SELECT STUDENT_ID , ADMISSION_DATE  + 1 AS NEXT_DAY
FROM STUDENT;


--WHERE CLAUSE 

--36. Display all students who belong to the COMPUTER department and are in year 1.
SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'COMPUTER' AND YEAR_OF_STUDY = 1;

--37. Display students whose gender is MALE and city is MUMBAI.
SELECT *
FROM STUDENT
WHERE GENDER = 'MALE' AND CITY = 'MUMBAI' ;

--38. Display students who are in year 3 and department is IT.
SELECT *
FROM STUDENT
WHERE YEAR_OF_STUDY = 3 AND DEPARTMENT = 'IT';

--39. Display students who scored more than 70 and are from CHENNAI.
SELECT *
FROM STUDENT
WHERE MARKS > 70 AND CITY = 'CHENNAI';

--40. Display students whose department is COMPUTER and gender is FEMALE.
SELECT *
FROM STUDENT
WHERE DEPARTMENT ='COMPUTER' AND GENDER = 'FEMALE';

--41. Display students who are in year 2 and city is DELHI.
SELECT *
FROM STUDENT
WHERE YEAR_OF_STUDY = 2 AND CITY = 'DELHI';
                                   
--42. Display students who scored less than 40 and are in year 1.
SELECT *
FROM STUDENT
WHERE MARKS < 40 AND YEAR_OF_STUDY = 1;

--43. Display students whose gender is FEMALE and department is ECE.
SELECT *
FROM STUDENT
WHERE GENDER = 'FEMALE' AND DEPARTMENT = 'ECE' ;

--44. Display students who are from HYDERABAD and scored more than 60.
SELECT *
FROM  STUDENT
WHERE CITY = 'HYDERABAD' AND MARKS > 60;

--45. Display students who are in year 4 and department is MECH.
SELECT *
FROM STUDENT
WHERE YEAR_OF_STUDY = 4 AND DEPARTMENT = 'MECHANICAL' ;

--46. Display students who belong to IT or COMPUTER department.
SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'IT' OR DEPARTMENT = 'COMPUTER';

--47. Display students who are from DELHI or MUMBAI.
SELECT *
FROM STUDENT
WHERE CITY = 'DELHI' OR CITY = 'MUMBAI';

--48. Display students who are in year 1 or year 2.
SELECT *
FROM STUDENT 
WHERE YEAR_OF_STUDY = 1 OR YEAR_OF_STUDY =2 ;

--49. Display students whose gender is MALE or department is CIVIL.
SELECT *
FROM STUDENT
WHERE GENDER = 'MALE' OR DEPARTMENT = 'CIVIL';

--50. Display students who scored more than 80 or are in year 4.
SELECT * 
FROM STUDENT 
WHERE MARKS > 80 OR YEAR_OF_STUDY = 4;

--51. Display students who are from PUNE or scored less than 35.
SELECT *
FROM STUDENT
WHERE CITY = 'PUNE' OR MARKS < 35 ;

--52. Display students who belong to ECE or are in year 3.
SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'ECE' OR YEAR_OF_STUDY = 3;

--53. Display students whose gender is FEMALE or city is CHENNAI.
SELECT *
FROM STUDENT
WHERE GENDER = 'FEMALE' OR CITY = 'CHENNAI' ; 

--54. Display students who scored exactly 50 or are in year 2.
SELECT *
FROM STUDENT
WHERE MARKS = 50 OR YEAR_OF_STUDY = 2 ;

--55. Display students who belong to MECH or city is BANGALORE.
SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'MECHANICAL' OR CITY = ' BANGLORE ';


--56. Display students who are not from DELHI.
SELECT *
FROM STUDENT
WHERE CITY <> 'DELHI';

SELECT *
FROM STUDENT
WHERE CITY != 'DELHI';

SELECT *
FROM STUDENT
WHERE NOT CITY = 'DELHI';


--57. Display students who are not in year 1.
SELECT *
FROM STUDENT
WHERE YEAR_OF_STUDY <> 1;

SELECT *
FROM STUDENT
WHERE YEAR_OF_STUDY != 1;

SELECT *
FROM STUDENT
WHERE NOT YEAR_OF_STUDY = 1;

--58. Display students who are not in COMPUTER department.
SELECT *
FROM STUDENT
WHERE DEPARTMENT <> 'COMPUTER';

SELECT *
FROM STUDENT
WHERE DEPARTMENT != 'COMPUTER';

SELECT *
FROM STUDENT
WHERE NOT DEPARTMENT = ' COMPUTER';


--59. Display students who are not FEMALE.
SELECT *
FROM STUDENT
WHERE GENDER <> 'FEMALE';

SELECT *
FROM STUDENT
WHERE GENDER != 'FEMALE';

SELECT *
FROM STUDENT
WHERE NOT GENDER = 'FEMALE';

--60. Display students who did not score more than 60.
SELECT *
FROM STUDENT
WHERE NOT MARKS > 60;

--61. Display students who are in IT and not in year 4.
SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'IT' AND NOT YEAR_OF_STUDY = 4;

--62. Display students who are from MUMBAI and not MALE.
SELECT *
FROM STUDENT
WHERE CITY = 'MUMBAI' AND NOT GENDER ='MALE';

--63. Display students who scored more than 50 and not from CHENNAI.
SELECT *
FROM STUDENT
WHERE MARKS > 50 AND NOT CITY = 'CHENNAI';

--64. Display students who are in year 3 and not in MECH department.
SELECT *
FROM STUDENT
WHERE YEAR_OF_STUDY = 3 AND NOT DEPARTMENT = 'MECHANICAL';

--65. Display students who belong to ECE and not FEMALE.
SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'ELECTRICAL' AND NOT GENDER = 'FEMALE';

--66. Display students who are from DELHI or not in year 2.
SELECT *
FROM STUDENT
WHERE CITY = 'DELHI' AND NOT YEAR_OF_STUDY = 2;

--67. Display students who are MALE and not from HYDERABAD.
SELECT *
FROM STUDENT
WHERE GENDER = 'MALE' AND NOT CITY = 'HYDRABAD';

--68. Display students who are in year 1 or not in COMPUTER department.
SELECT *
FROM STUDENT
WHERE YEAR_OF_STUDY = 1 AND NOT DEPARTMENT = 'COMPUTER';

--69. Display students who scored less than 45 and not from PUNE.
SELECT *
FROM STUDENT
WHERE MARKS < 45 AND NOT CITY = 'PUNE';

--70. Display students who belong to CIVIL or not in year 4.
SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'CILIL' AND YEAR_OF_STUDY =4;

--71. Display students who are FEMALE and scored more than 65 and are from CHENNAI.
SELECT *
FROM STUDENT
WHERE GENDER = 'FEMALE' AND MARKS < 65 AND CITY = 'CHENNAI';

--72. Display students who are in IT and year 2 and city is DELHI.
SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'IT'AND YEAR_OF_STUDY = 2 AND CITY = 'DELHI';

--73. Display students who are MALE and scored more than 70 and not from MUMBAI.
SELECT *
FROM STUDENT 
WHERE GENDER = 'MALE' AND MARKS > 70 AND NOT CITY = 'MUMBAI';

--74. Display students who are in year 3 and department is COMPUTER and not FEMALE.
SELECT *
FROM STUDENT
WHERE YEAR_OF_STUDY = 3 AND DEPARTMENT = 'COMPUTER' AND NOT GENDER = 'FEMALE';

--75. Display students who are from PUNE and scored less than 40 and not in year 4.
SELECT *
FROM STUDENT
WHERE CITY = 'PUNE' AND MARKS < 40 AND NOT YEAR_OF_STUDY = 4;

--76. Display students who are in MECH or ECE and year 2.
SELECT *
FROM STUDENT
WHERE DEPARTMENT IN ( 'MECHANICAL' , 'ELECTRICAL' ) AND YEAR_OF_STUDY = 2;

--77. Display students who are from BANGALORE or scored more than 75 and not MALE.
SELECT *
FROM STUDENT
WHERE CITY = 'BANGLORE' OR MARKS > 75 AND NOT GENDER = 'MALE';

--78. Display students who are in year 1 and from DELHI or not in IT department.
SELECT *
FROM STUDENT
WHERE YEAR_OF_STUDY = 1 AND CITY = 'DELHI' AND NOT DEPARTMENT = 'IT';

--79. Display students who scored more than 55 and are FEMALE or not in year 3.
SELECT *
FROM STUDENT
WHERE MARKS > 55 AND GENDER = 'FEMALE' AND NOT YEAR_OF_STUDY = 3;

--80. Display students who belong to COMPUTER and are from CHENNAI or not in year 2.
SELECT *
FROM STUDENT
WHERE DEPARTMENT = 'COMPUTER' AND CITY = 'CHENNAI' AND NOT YEAR_OF_STUDY = 2;

--81. Display students who are not from MUMBAI and scored more than 60.
SELECT *
FROM STUDENT 
WHERE NOT CITY = 'MUMBAI' AND MARKS > 60;

--82. Display students who are not in IT department and in year 4.
SELECT *
FROM STUDENT
WHERE NOT DEPARTMENT = 'IT' AND YEAR_OF_STUDY =4;

--83. Display students who are not MALE and belong to ECE.
SELECT *
FROM STUDENT
WHERE NOT GENDER = 'MALE' AND DEPARTMENT = 'ELECTRICAL';

--84. Display students who are not in year 1 and scored less than 50.
SELECT *
FROM STUDENT
WHERE NOT YEAR_OF_STUDY = 1 AND MARKS < 50;

--85. Display students who are not from DELHI or scored more than 80.
SELECT *
FROM STUDENT
WHERE NOT CITY = 'DELHI' AND MARKS > 80;

