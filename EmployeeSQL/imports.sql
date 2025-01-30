-- CSV IMPORTS:

SET datestyle = 'MDY';

COPY 
   departments 
FROM 
   '/Users/neelagarwal/Projects/DataClassRepos/sql-challenge/EmployeeSQL/data/departments.csv' 
DELIMITER ',' CSV HEADER;

COPY 
   titles 
FROM 
   '/Users/neelagarwal/Projects/DataClassRepos/sql-challenge/EmployeeSQL/data/titles.csv' 
DELIMITER ',' CSV HEADER;

COPY 
   employees 
FROM 
   '/Users/neelagarwal/Projects/DataClassRepos/sql-challenge/EmployeeSQL/data/employees.csv' 
DELIMITER ',' CSV HEADER;

COPY 
   dept_emp 
FROM 
   '/Users/neelagarwal/Projects/DataClassRepos/sql-challenge/EmployeeSQL/data/dept_emp.csv' 
DELIMITER ',' CSV HEADER;

COPY 
   dept_manager 
FROM 
   '/Users/neelagarwal/Projects/DataClassRepos/sql-challenge/EmployeeSQL/data/dept_manager.csv' 
DELIMITER ',' CSV HEADER;

COPY 
   salaries 
FROM 
   '/Users/neelagarwal/Projects/DataClassRepos/sql-challenge/EmployeeSQL/data/salaries.csv' 
DELIMITER ',' CSV HEADER;