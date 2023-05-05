CREATE DATABASE Library
USE Library



CREATE TABLE Books (
Id INT PRIMARY KEY IDENTITY,
AuthorId INT  FOREIGN KEY REFERENCES  Authors(Id),
Name VARCHAR(100) NOT NULL,
PageCount INT NOT NULL CHECK (PageCount >= 10)
)
Drop table Books


INSERT INTO Books (AuthorId,Name, PageCount) VALUES
(1,'Evakuasiya', 311),
(3,'Dusuncenin Gucu', 417),
(2,'Cehennem', 223),
(4,'Pride and Prejudice', 279),
(1,'Harry Potter', 251)





CREATE TABLE Authors (
Id INT PRIMARY KEY IDENTITY,
Name VARCHAR(50) NOT NULL,
Surname VARCHAR(50) NOT NULL
)

INSERT INTO Authors (Name, Surname) 
VALUES 
('Elxan', 'Zeynalli'),
('James', 'Allen'),
('Elxan', 'Elatli'),
('Jane', 'Austen')


CREATE VIEW BooksAuthorFullName 
AS
SELECT
b.Id,
b.Name 'booksName',
b.PageCount,
Authors.Name , 
Authors.Id 'AuthorName',
Authors.Surname 

FROM Books b
JOIN Authors 
ON b.AuthorId = Authors.Id;
SELECT * FROM BooksAuthorFullName


DROP VIEW BooksAuthorFullName



CREATE FUNCTION MinPageCount(@pageCount INT)

RETURNS INT
AS
BEGIN
DECLARE @bookCount INT
SELECT @bookCount = COUNT(*) FROM Books WHERE PageCount >= @pageCount
RETURN @bookCount
END

SELECT dbo.MinPageCount(2000)

CREATE TABLE DeletedBooks (
Id INT PRIMARY KEY,
AuthorId INT FOREIGN KEY REFERENCES Authors(Id),
Name VARCHAR(100) ,
PageCount INT  
)


Select * From DeletedBooks


DELETE FROM Books WHERE id=1



CREATE TRIGGER SELECTDELETEBOOK
ON DeletedBooks
AFTER DELETE,UPDATE
AS
BEGIN
SELECT * FROM Books
END


DROP TRIGGER SELECTDELETEBOOK