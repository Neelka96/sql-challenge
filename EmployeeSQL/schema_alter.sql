ALTER TABLE departments
ADD CONSTRAINT PK_departments PRIMARY KEY (dept_no);

ALTER TABLE titles
ADD CONSTRAINT PK_titles PRIMARY KEY (title_id);

ALTER TABLE employees
ADD CONSTRAINT PK_employees PRIMARY KEY (emp_no);

ALTER TABLE dept_emp
ADD CONSTRAINT FK_dept_emp_emp_no FOREIGN KEY (emp_no)
ADD CONSTRAINT FK_dept_emp_dept_no FOREIGN KEY (dept_no);

ALTER TABLE dept_manager
ADD CONSTRAINT FK_dept_manager_dept_no FOREIGN KEY (dept_no)
ADD CONSTRAINT FK_dept_manager_emp_no FOREIGN KEY (emp_no);

ALTER TABLE salaries
ADD CONSTRAINT FK_salaries_emp_no FOREIGN KEY (emp_no);