-- CSV LOCAL HARD-PATH IMPORTS:

-- (1)
COPY 
   departments 
FROM 
   '/Users/neelagarwal/Projects/DataClassRepos/sql-challenge/EmployeeSQL/data/departments.csv' 
DELIMITER ',' CSV HEADER;

-- (2)
COPY 
   titles 
FROM 
   '/Users/neelagarwal/Projects/DataClassRepos/sql-challenge/EmployeeSQL/data/titles.csv' 
DELIMITER ',' CSV HEADER;

-- (3)
COPY 
   employees
FROM 
   '/Users/neelagarwal/Projects/DataClassRepos/sql-challenge/EmployeeSQL/data/employees.csv' 
DELIMITER ',' CSV HEADER;

-- (4)
COPY 
   dept_emp 
FROM 
   '/Users/neelagarwal/Projects/DataClassRepos/sql-challenge/EmployeeSQL/data/dept_emp.csv' 
DELIMITER ',' CSV HEADER;

-- (5)
COPY 
   dept_manager 
FROM 
   '/Users/neelagarwal/Projects/DataClassRepos/sql-challenge/EmployeeSQL/data/dept_manager.csv' 
DELIMITER ',' CSV HEADER;

-- (6)
COPY 
   salaries 
FROM 
   '/Users/neelagarwal/Projects/DataClassRepos/sql-challenge/EmployeeSQL/data/salaries.csv' 
DELIMITER ',' CSV HEADER;