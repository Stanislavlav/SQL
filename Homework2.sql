CREATE TABLE public.students (
	id serial4 NOT NULL,
	"name" varchar(50) NOT NULL,
	email varchar(50) NOT NULL,
	"password" varchar(50) NOT NULL,
	created_on timestamp NOT NULL,
	CONSTRAINT students_email_key UNIQUE (email),
	CONSTRAINT students_pkey PRIMARY KEY (id)
);


SELECT * FROM students;

SELECT name FROM students;

SELECT id FROM students;

SELECT email FROM students;

SELECT name, email FROM students;

SELECT id, name, email, created_on FROM students;

SELECT * FROM students
WHERE PASSWORD = '12333';

SELECT * FROM students
WHERE created_on = '2021-03-26 00:00:00';

SELECT * FROM students
WHERE name = 'Анна';

SELECT * FROM students
WHERE created_on = '2021-07-12 00:00:00';

SELECT * FROM students
WHERE id = '110';

SELECT * FROM students
WHERE id = '153';

SELECT * FROM students
WHERE id > '140';

SELECT * FROM students
WHERE id < '130';

SELECT * FROM students
WHERE id < '127' OR id > '180';

SELECT * FROM students
WHERE id <= '137';

SELECT * FROM students
WHERE id >= '137';

SELECT * FROM students
WHERE id > '180' AND  id < '190';

SELECT * FROM students
WHERE id BETWEEN '180' AND '190';

SELECT * FROM students
WHERE PASSWORD IN ('12333' , '1m313' , '123313');
	 
SELECT * FROM students
WHERE created_on IN ('2020-10-03 00:00:00' , '2021-05-19 00:00:00' , '2021-03-26 00:00:00');
	 
SELECT min(id)
FROM students;

SELECT max(id)
FROM students;

SELECT * FROM students
WHERE created_on = '2021-07-12 00:00:00' AND PASSWORD = '1m313';

SELECT count(id)
FROM students;

SELECT * FROM students
WHERE created_on = '2021-07-12 00:00:00' AND name LIKE '%Andrey%';

SELECT * FROM students
WHERE created_on = '2021-07-12 00:00:00' AND name LIKE '%8%';

SELECT id, name, created_on FROM students
ORDER BY created_on;

SELECT id, name, created_on FROM students
ORDER BY created_on DESC;

SELECT * FROM students
WHERE name LIKE '%8';

SELECT * FROM students
WHERE name LIKE '%a%';