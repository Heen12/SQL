-- Creating 5 databases with new names
CREATE DATABASE ShopDB;
CREATE DATABASE BusinessDB;
CREATE DATABASE AcademiaDB;
CREATE DATABASE BooksDB;
CREATE DATABASE CinemaDB;


USE ShopDB;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone_number VARCHAR(15)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT
);


USE BusinessDB;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(100),
    department_id INT
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(100),
    salary DECIMAL(10, 2)
);

CREATE TABLE employee_projects (
    employee_project_id INT PRIMARY KEY,
    employee_id INT,
    project_id INT
);


USE AcademiaDB;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    birthdate DATE,
    grade_level INT
);

CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);

CREATE TABLE enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE
);

CREATE TABLE instructors (
    instructor_id INT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100)
);



CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    published_year INT
);

CREATE TABLE members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100),
    membership_date DATE
);

CREATE TABLE borrowings (
    borrowing_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    borrow_date DATE,
    return_date DATE
);

CREATE TABLE librarians (
    librarian_id INT PRIMARY KEY,
    name VARCHAR(100),
    hire_date DATE
);

-- ------------------------------------------
-- Database 5: CinemaDB
-- ------------------------------------------
USE CinemaDB;

CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(100),
    release_year INT,
    genre VARCHAR(50)
);

CREATE TABLE directors (
    director_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE actors (
    actor_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE movie_casts (
    movie_cast_id INT PRIMARY KEY,
    movie_id INT,
    actor_id INT,
    role VARCHAR(100)
);
