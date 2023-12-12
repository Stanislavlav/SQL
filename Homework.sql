CREATE TABLE salary(
id serial PRIMARY KEY,
monthly_salary int NOT NULL
);

CREATE TABLE roles(
id serial PRIMARY KEY,
role_title varchar(50) UNIQUE NOT NULL
);

SELECT * FROM salary;
SELECT * FROM  roles;

INSERT INTO roles(role_title)
VALUES ('Junior_QA'),
	   ('Middle_QA'),
	   ('Senior_QA'),
	   ('Junior_JS_developer'),
	   ('Middle_JS_developer'),
	   ('Senior_JS_developer');
	   
INSERT INTO salary(monthly_salary)
VALUES(300),
	  (500),
	  (700),
	  (1000);
	  
CREATE TABLE roles_salary(
	id serial PRIMARY KEY,
	id_role int NOT NULL,
	id_salary int NOT NULL,
	FOREIGN KEY(id_role)
		REFERENCES roles(id),
	FOREIGN KEY(id_salary)
		REFERENCES salary(id)
);
	 
INSERT INTO roles_salary(id_role, id_salary)
VALUES(1, 1),
	  (4, 1);
	 
	 
SELECT * FROM salary
ORDER BY id;
SELECT * FROM  roles;
SELECT * FROM roles_salary;
	 
UPDATE roles_salary
SET id_salary = 2
WHERE id = 2;
	 
UPDATE salary
SET monthly_salary = 400
WHERE id = 1;

DELETE FROM salary
WHERE id =4;

ALTER TABLE roles 
ADD COLUMN parking int; 

ALTER TABLE roles 
RENAME COLUMN parking TO taxi;

ALTER TABLE roles 
DROP COLUMN taxi;