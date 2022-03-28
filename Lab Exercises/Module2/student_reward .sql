-- creating a database
CREATE DATABASE syst;
use syst;

-- creating table student
CREATE TABLE Student (
    Student_id int AUTO_INCREMENT PRIMARY KEY,
    First_name VARCHAR(50),
	Last_name VARCHAR(50),
	Fees int,
	Joining_date Date,
    Departement  VARCHAR(50) 
);

-- creating table reward and  referencing it with student 
CREATE TABLE reward (
    Student_ref_id int,
    date_reward Date,
	marks int,
    FOREIGN KEY (Student_ref_id) REFERENCES Student(Student_id)
);

-- inserting values in student table
INSERT INTO Student (Student_id, First_name, Last_name, Fees, Joining_date, Departement) VALUES (1, 'Bob', 'Biswas', 1000000, "2019-01-20", "Finance");
INSERT INTO Student (Student_id, First_name, Last_name, Fees, Joining_date, Departement) VALUES (2, 'Jerry', 'Lato', 6000000, "2019-01-15", "IT");
INSERT INTO Student (Student_id, First_name, Last_name, Fees, Joining_date, Departement) VALUES (3, 'Philip', 'Gore', 8900000, "2019-02-05", "IT");
INSERT INTO Student (Student_id, First_name, Last_name, Fees, Joining_date, Departement) VALUES (4, 'John', 'Abraham', 2000000, "2019-02-25", "Finance");
INSERT INTO Student (Student_id, First_name, Last_name, Fees, Joining_date, Departement) VALUES (5, 'Manasvi', 'Mathew', 2200000, "2019-02-28", "Finance");
INSERT INTO Student (Student_id, First_name, Last_name, Fees, Joining_date, Departement) VALUES (7, 'Yashvi', 'Singh', 1230000, "2019-06-20", "IT");

-- inserting values in reward table
INSERT INTO reward (Student_ref_id, date_reward, marks) VALUES (1, '2019-05-11', '1000');
INSERT INTO reward (Student_ref_id, date_reward, marks) VALUES (2, '2019-02-15', '5000');
INSERT INTO reward (Student_ref_id, date_reward, marks) VALUES (3, '2019-04-22', '2000');
INSERT INTO reward (Student_ref_id, date_reward, marks) VALUES (1, '2019-06-20', '8000');