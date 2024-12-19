-- 1 CREATE DATABASE
CREATE DATABASE Mysql611;

-- 2 CREATE TABLE
CREATE TABLE address(
    id int() PRIMARY KEY AUTO_INCREMENT,
    LOCATION varchar(255), NOT NULL;
);

-- 3 CREATE TABLE2
CREATE TABLE students(
    id int() PRIMARY KEY AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    age int() NOT NULL,
    email varchar(255) NOT NULL,
    a_id int() NOT NULL;
        FOREIGN KEY(a_id) REFERENCES address(id)
);

-- 4 MySQL INSERT INTO Statement address
INSERT INTO address(LOCATION) 
VALUES ('Gulshan1'),('Gulshan2'),('Mugda'),('Banani'),('Mirpur'),('Tejgaon');

-- 5 MySQL INSERT INTO Statement Students
INSERT INTO students(name,age,email,a_id)VALUES
('Montasir',10,'rahul@gmail.com',1),
('rafi',20,'rahul@gmail.com',2),
('Rahul',20,'rahul@gmail.com',3),
('Rodoshi',20,'rahul@gmail.com',6),
('ruble',20,'ruble@gmail.com',5),
('Labaṇya',20,'rahul@gmail.com',4);

-- 6 SELECT TO read all data
SELECT* 
FROM students;

--7 SELECT TO SPECIFIC data
SELECT* 
FROM students
WHERE age = 20;

--8 SELECT TO SPECIFIC Colum
SELECT name, age, id
FROM students;

-- 9 MySQL UPDATE Statement
UPDATE students 
SET 
name = 'Rahul', email="rahul@gmail.com" 
WHERE id = 3;

-- 10 MySQL DELETE Statement
DELETE FROM students 
WHERE id = 3;

-- 11 JOIN TABLE SHOW DATA
SELECT * 
FROM students,address  
WHERE address.id=students.a_id;

-- 12 JOIN Specific Condition with TABLE SHOW DATA
SELECT students.name, students.age, address.location, students.email
FROM students,address  
WHERE address.id=students.a_id;

--13 MySQL AND
SELECT * 
FROM `students` 
WHERE name="Montasir" and age="10";

--14 MySQL OR
SELECT * 
FROM `students` 
WHERE name="Montasir" OR age="10";

--15 MySQL NOT
SELECT * 
FROM students
WHERE NOT name = 'Montasir Alam';

-- 16 The IS NOT NULL Operator
SELECT name, email
FROM students
WHERE email IS NOT NULL;

-- 17 The IS NULL Operator
SELECT name, email
FROM students
WHERE email IS NULL;

-- 18 MySQL ORDER BY ASC
SELECT * FROM students
ORDER BY id ;

-- 19 MySQL ORDER BY DESC
SELECT * FROM students
ORDER BY id DESC;

-- 20 ORDER BY Several Columns 
SELECT * FROM students
ORDER BY id ASC , age DESC;

-- 21 MySQL LIMIT Clause
SELECT *
FROM students
LIMIT 3 OFFSET 3;

-- 22 ADD a WHERE CLAUSE
SELECT * FROM students
WHERE a_id='4'
LIMIT 3;

-- 23 MySQL MIN() Functions
SELECT MIN(id) AS Smallestid
FROM students;

-- 24 MySQL MAX() Functions
SELECT MAX(id) AS Largestid
FROM students;

-- 25 MySQL COUNT() Functions
SELECT COUNT(id)
FROM address;

-- 26 MySQL AVG() Functions
SELECT AVG(id)
FROM students;

-- 27 MySQL SUM() Functions
SELECT SUM(id)
FROM students;

-- 28 MySQL like Wildcards Operator
        -- a% = START
        -- %a% = In between
        -- %a = END
SELECT * 
FROM `students` 
WHERE `name`LIKE"%a";

SELECT * 
FROM `students` 
WHERE `name`LIKE"%a%";

SELECT * 
FROM `students` 
WHERE `name`LIKE"a%";

-- 29 Using the _ Wildcard
SELECT * 
FROM `students` 
WHERE `name`LIKE"%_a";

-- 30 MySQL IN Operator
SELECT * 
FROM students
WHERE id IN (5,4,2);

-- 31 MySQL NOT IN Operator
SELECT * 
FROM students
WHERE id NOT IN (5,4,2);

--32 MySQL BETWEEN Operator
SELECT * 
FROM students
WHERE age BETWEEN 8 AND 15;

--33 MySQL NOT BETWEEN Operator
SELECT * 
FROM students
WHERE age NOT BETWEEN 8 AND 15;

-- 34 MySQL Aliases 
SELECT name AS "Student Name", email AS "Student G-mail"
FROM students;

-- 35 MySQL Joins
SELECT students.name, students.age, address.location, students.email
FROM address  
INNER JOIN students
ON students.id=address.id;

-- 36 MySQL LEFT JOIN
SELECT students.name, students.email,address.location
FROM students
LEFT JOIN address ON students.id= address.id
ORDER BY students.name;

-- 37 MySQL RIGHT JOIN
SELECT students.name, students.email,address.location
FROM students
RIGHT JOIN address ON students.id= address.id
ORDER BY students.name;

-- 38 MySQL CROSS JOIN Keyword
SELECT students.name, students.age,address.location
FROM address
CROSS JOIN students;

-- 39 MySQL UNION Operator
SELECT id FROM students
UNION
SELECT id FROM students
ORDER BY id;

-- 40 MySQL UNION ALL Operator
SELECT name FROM students
UNION ALL
SELECT name FROM students
ORDER BY name;

-- 41 MySQL GROUP BY Statement
SELECT COUNT(age), a_id
FROM students
GROUP BY a_id;

-- 42 MySQL GROUP BY Statement high to low
SELECT COUNT(id), a_id
FROM students
GROUP BY a_id
ORDER BY COUNT(id) DESC;

-- 43 MySQL HAVING Clause
SELECT COUNT(id), a_id
FROM students
GROUP BY a_id
HAVING COUNT(id) < 5
ORDER BY COUNT(id) DESC;

-- 44 MySQL EXISTS Operator
SELECT *
FROM students
WHERE EXISTS
(SELECT name FROM students WHERE a_id);

-- 45 MySQL HAVING Clause
SELECT id, a_id
FROM students 
WHERE students.id=students.a_id
GROUP BY id
HAVING students.id=students.a_id
ORDER BY a_id;

-- 46 Selecting from a View
SELECT * FROM students;

-- 47 Rename Table
SELECT * FROM `studentsinfo`

-- 48 Rename Column
ALTER TABLE users  CHANGE COLUMN username user_name VARCHAR(50);{ALTER TABLE studentsinfo CHANGE COLUMN name studentName varchar(255);}

-- 49 Modify Column
ALTER TABLE studentsinfo MODIFY COLUMN email  VARCHAR(255);

-- 50 Add Column
ALTER TABLE studentsinfo ADD COLUMN UnikeCode INT;