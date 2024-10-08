CREATE DATABASE XworkzDB;

USE XworkzDB;

CREATE TABLE Students (
    ID INT PRIMARY KEY,         
    Name VARCHAR(50),           
    Age INT,                   
    Batch INT(5)            
);
insert into Students(ID, Name, Age, Batch) values (1, 'joe', 23, 2024); 
select * from Students;