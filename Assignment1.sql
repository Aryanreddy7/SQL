CREATE DATABASE CompanyDB;
USE CompanyDB;

CREATE TABLE Employees (emp_id INT, first_name VARCHAR(50), last_name VARCHAR(50), email VARCHAR(100), phone_number VARCHAR(15), hire_date DATE, job_id VARCHAR(10), salary DECIMAL(10, 2), commission_pct DECIMAL(5, 2), department_id INT);
CREATE TABLE Departments (dept_id INT, dept_name VARCHAR(100), manager_id INT, location_id INT, established_year INT, budget DECIMAL(15, 2), contact_email VARCHAR(100), phone VARCHAR(15), floor_number INT, building_name VARCHAR(100));
 CREATE TABLE Projects (proj_id INT, proj_name VARCHAR(100), start_date DATE, end_date DATE, budget DECIMAL(15, 2), client_name VARCHAR(100), status VARCHAR(50), lead_id INT, team_size INT, description TEXT); 
CREATE TABLE Clients (client_id INT, client_name VARCHAR(100), contact_person VARCHAR(100), email VARCHAR(100), phone VARCHAR(15), address TEXT, city VARCHAR(50), state VARCHAR(50), country VARCHAR(50), zip_code VARCHAR(10));
 CREATE TABLE Tasks (task_id INT, task_name VARCHAR(100), assigned_to INT, due_date DATE, status VARCHAR(50), priority VARCHAR(20), created_date DATE, updated_date DATE, project_id INT, description TEXT);

ALTER TABLE Employees ADD gender VARCHAR(10), ADD dob DATE, ADD nationality VARCHAR(50), ADD marital_status VARCHAR(20);
 ALTER TABLE Departments ADD region VARCHAR(50), ADD head_office VARCHAR(100), ADD founded_by VARCHAR(100), ADD remarks TEXT;
 ALTER TABLE Projects ADD is_active BOOLEAN, ADD tech_stack VARCHAR(255), ADD revenue DECIMAL(15,2), ADD risk_level VARCHAR(50);
 ALTER TABLE Clients ADD industry VARCHAR(100), ADD website VARCHAR(100), ADD registration_date DATE, ADD notes TEXT; 
 ALTER TABLE Tasks ADD is_completed BOOLEAN, ADD estimated_hours INT, ADD actual_hours INT, ADD reviewer_id INT;

ALTER TABLE Employees DROP COLUMN commission_pct;
ALTER TABLE Departments DROP COLUMN contact_email;
ALTER TABLE Projects DROP COLUMN status;
ALTER TABLE Clients DROP COLUMN address;
ALTER TABLE Tasks DROP COLUMN updated_date;

ALTER TABLE Employees RENAME COLUMN first_name TO fname;
ALTER TABLE Employees RENAME COLUMN last_name TO lname;
ALTER TABLE Employees RENAME COLUMN phone_number TO phone;
ALTER TABLE Employees RENAME COLUMN hire_date TO joining_date;

ALTER TABLE Departments RENAME COLUMN dept_name TO name;
ALTER TABLE Departments RENAME COLUMN budget TO annual_budget;
ALTER TABLE Departments RENAME COLUMN location_id TO loc_id;
ALTER TABLE Departments RENAME COLUMN phone TO contact_no;

ALTER TABLE Projects RENAME COLUMN proj_name TO name;
ALTER TABLE Projects RENAME COLUMN start_date TO begin_date;
ALTER TABLE Projects RENAME COLUMN end_date TO finish_date;
ALTER TABLE Projects RENAME COLUMN description TO details;

ALTER TABLE Clients RENAME COLUMN client_name TO name;
ALTER TABLE Clients RENAME COLUMN contact_person TO contact_name;
ALTER TABLE Clients RENAME COLUMN email TO contact_email;
ALTER TABLE Clients RENAME COLUMN zip_code TO postal_code;

ALTER TABLE Tasks RENAME COLUMN task_name TO name;
ALTER TABLE Tasks RENAME COLUMN due_date TO deadline;
ALTER TABLE Tasks RENAME COLUMN priority TO importance;
ALTER TABLE Tasks RENAME COLUMN description TO details;

ALTER TABLE Employees MODIFY fname VARCHAR(100);
ALTER TABLE Employees MODIFY lname VARCHAR(100);
ALTER TABLE Employees MODIFY email VARCHAR(150);
ALTER TABLE Employees MODIFY salary DECIMAL(12, 2);

ALTER TABLE Departments MODIFY name VARCHAR(150);
ALTER TABLE Departments MODIFY manager_id BIGINT;
ALTER TABLE Departments MODIFY building_name VARCHAR(150);
ALTER TABLE Departments MODIFY remarks VARCHAR(500);

ALTER TABLE Projects MODIFY name VARCHAR(150);
ALTER TABLE Projects MODIFY client_name VARCHAR(150);
ALTER TABLE Projects MODIFY risk_level VARCHAR(100);
ALTER TABLE Projects MODIFY details VARCHAR(1000);

ALTER TABLE Clients MODIFY name VARCHAR(150);
ALTER TABLE Clients MODIFY contact_email VARCHAR(150);
ALTER TABLE Clients MODIFY website VARCHAR(150);
ALTER TABLE Clients MODIFY notes VARCHAR(500);

ALTER TABLE Tasks MODIFY name VARCHAR(150);
ALTER TABLE Tasks MODIFY status VARCHAR(100);
ALTER TABLE Tasks MODIFY importance VARCHAR(50);
ALTER TABLE Tasks MODIFY details VARCHAR(1000);
