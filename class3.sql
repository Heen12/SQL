
CREATE DATABASE Library;


USE Library;


CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    BirthYear INT
);
insert into Authors values(001,'Jane','John',1954);
insert into Authors values(002,'Joy','rob',1964), (003,'abram','link',1897);
insert into Authors values(04,'robert','blue',1990),(040,'samual','sam',1990),(005,'ankith','chanchal',2010);
select * from Authors 


UPDATE Authors
SET AuthorID = 006
WHERE FirstName = 'samual';




CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(255),
    Genre VARCHAR(100),
    PublishedYear INT,
    AuthorID INT  
);

INSERT INTO Books (Title, Genre, PublishedYear, AuthorID) VALUES
('Moby Dick', 'Adventure', 1851, 6),
('The Odyssey', 'Epic', -800, 7),
('Brave New World', 'Science Fiction', 1932, 8),
('Jane Eyre', 'Gothic', 1847, 9),
('The Hobbit', 'Fantasy', 1937, 10);


select * from Books


CREATE TABLE Members (
    MemberID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    JoinDate DATE
);
INSERT INTO Members (FirstName, LastName, JoinDate) VALUES
('Olivia', 'Garcia', '2023-02-12'),
('Liam', 'Martinez', '2021-07-18'),
('Sophia', 'Lee', '2022-08-25'),
('James', 'Harris', '2020-10-14'),
('Isabella', 'Clark', '2023-05-30');

select * from Members


CREATE TABLE BorrowedBooks (
    BorrowID INT PRIMARY KEY AUTO_INCREMENT,
    BookID INT,  
    MemberID INT,  
    BorrowDate DATE,
    ReturnDate DATE
);
INSERT INTO BorrowedBooks (BookID, MemberID, BorrowDate, ReturnDate) VALUES
(1, 1, '2023-09-01', '2023-09-15'),
(2, 2, '2023-09-05', '2023-09-19'),
(3, 3, '2023-09-07', '2023-09-21'),
(4, 4, '2023-09-10', '2023-09-24'),
(5, 5, '2023-09-12', '2023-09-26');
select * from BorrowedBooks