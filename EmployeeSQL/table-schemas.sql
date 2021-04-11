CREATE TABLE  Departments  (
     dept_no  INT   NOT NULL,
     dept_name  VARCHAR   NOT NULL,
    CONSTRAINT  pk_Departments  PRIMARY KEY (
         dept_no 
     )
);

CREATE TABLE  Department_Employees  (
    emp_no  INT   NOT NULL, 
	dept_no  INT   NOT NULL     
);

CREATE TABLE  Employees  (
     emp_no  INT   NOT NULL,
     emp_title_id  INT   NOT NULL,
     birth_date  VARCHAR   NOT NULL,
     first_name  VARCHAR   NOT NULL,
     last_name  VARCHAR   NOT NULL,
     sex  VARCHAR   NOT NULL,
     hire_date  VARCHAR   NOT NULL,
    CONSTRAINT  pk_Employees  PRIMARY KEY (
         emp_no 
     )
);

CREATE TABLE  Salaries  (
     emp_no  INT   NOT NULL,
     salary  INT   NOT NULL
);

CREATE TABLE  Dept_Manager  (
     dept_no  INT   NOT NULL,
     emp_no  INT   NOT NULL
);

CREATE TABLE  Titles  (
     emp_no  INT   NOT NULL,
     title_id  INT   NOT NULL,
     title  VARCHAR   NOT NULL
);

ALTER TABLE  Department_Employees  ADD CONSTRAINT  fk_Department_Employees_dept_no  FOREIGN KEY( dept_no )
REFERENCES  Departments  ( dept_no );

ALTER TABLE  Department_Employees  ADD CONSTRAINT  fk_Department_Employees_emp_no  FOREIGN KEY( emp_no )
REFERENCES  Employees  ( emp_no );

ALTER TABLE  Salaries  ADD CONSTRAINT  fk_Salaries_emp_no  FOREIGN KEY( emp_no )
REFERENCES  Employees  ( emp_no );

ALTER TABLE  Dept_Manager  ADD CONSTRAINT  fk_Dept_Manager_dept_no  FOREIGN KEY( dept_no )
REFERENCES  Departments  ( dept_no );

ALTER TABLE  Titles  ADD CONSTRAINT  fk_Titles_emp_no  FOREIGN KEY( emp_no )
REFERENCES  Employees  ( emp_no );
