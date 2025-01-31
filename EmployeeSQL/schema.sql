-- SCHEMA SETUP:
	-- Link to QuickDBD https://app.quickdatabasediagrams.com/#/d/kPTMJY

DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS titles CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;

CREATE TABLE departments (
   dept_no       CHAR(4)       NOT NULL
   ,dept_name    VARCHAR(19)   NOT NULL
   ,CONSTRAINT pk_departments PRIMARY KEY (dept_no)
);

CREATE TABLE titles (
   title_id      CHAR(5)       NOT NULL
   ,title        VARCHAR(20)   NOT NULL
   ,CONSTRAINT pk_titles PRIMARY KEY (title_id)
);

CREATE TABLE employees (
   emp_no        INT     	    NOT NULL
   ,emp_title_id CHAR(5)       NOT NULL
   ,birth_date   DATE  			 NOT NULL
   ,first_name   VARCHAR(15)   NOT NULL
   ,last_name    VARCHAR(17)   NOT NULL
   ,sex          CHAR(1)       NOT NULL
   ,hire_date    DATE		    NOT NULL
   ,CONSTRAINT pk_employees PRIMARY KEY (emp_no)
   ,CONSTRAINT fk_employees_emp_title_id FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_emp (
   emp_no       INT     	    NOT NULL
   ,dept_no     CHAR(4)        NOT NULL
   ,CONSTRAINT pk_dept_emp PRIMARY KEY (emp_no, dept_no)
   ,CONSTRAINT fk_junct_emp_no FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
   ,CONSTRAINT fk_junct_dept_no FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
   dept_no      CHAR(4)        NOT NULL
   ,emp_no      INT			    NOT NULL
   ,CONSTRAINT pk_dept_manager PRIMARY KEY (dept_no, emp_no)
   ,CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
   ,CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries (
   emp_no       INT     	    NOT NULL
   ,salary      INT     	    NOT NULL
   ,CONSTRAINT pk_salaries PRIMARY KEY (emp_no)
   ,CONSTRAINT fk_salaries_emp_no FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);