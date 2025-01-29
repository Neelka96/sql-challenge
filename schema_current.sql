-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/kPTMJY
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


DROP TABLE IF EXISTS departments CASCADE;

CREATE TABLE departments (
   dept_no       CHAR(4)        PRIMARY KEY
   ,dept_name    VARCHAR(19)    NOT NULL
);

DROP TABLE IF EXISTS titles CASCADE;

CREATE TABLE titles (
   title_id      CHAR(5)       PRIMARY KEY
   ,title        VARCHAR(20)   NOT NULL
);

DROP TABLE IF EXISTS employees CASCADE;

CREATE TABLE employees (
   emp_no        INT     	    PRIMARY KEY
   ,emp_title_id CHAR(5)       NOT NULL
   ,birth_date   VARCHAR(10)   NOT NULL
   ,first_name   VARCHAR(15)   NOT NULL
   ,last_name    VARCHAR(17)   NOT NULL
   ,sex          CHAR(1)       NOT NULL
   ,hire_date    VARCHAR(10)   NOT NULL
   ,FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

DROP TABLE IF EXISTS dept_emp CASCADE;

CREATE TABLE dept_emp (
   emp_no       INT     	    NOT NULL
   ,dept_no     CHAR(4)        NOT NULL
   ,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
   ,FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

DROP TABLE IF EXISTS dept_manager CASCADE;

CREATE TABLE dept_manager (
   dept_no      CHAR(4)        NOT NULL
   ,emp_no      INT			    NOT NULL
   ,FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
   ,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

DROP TABLE IF EXISTS salaries CASCADE;

CREATE TABLE salaries (
   emp_no       INT     	   NOT NULL
   ,salary      INT     	   NOT NULL
   ,FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);