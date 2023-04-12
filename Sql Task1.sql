--1) Department database-i yaradırsız.
CREATE DATABASE Department

--2) Employee table-ı yaradırsız 
CREATE TABLE Employee(
	Id INT PRIMARY KEY IDENTITY,
	Fullname NVARCHAR(255) NOT NULL,
	Age INT CHECK(Age > 0) NOT NULL,
	Email NVARCHAR(100) NOT NULL UNIQUE,
	Salary DECIMAL(6,2) CHECK(Salary BETWEEN 300 AND 2000)
)

--3) Employee table-na datalar əlavə edirsiz.
INSERT INTO Employee
VALUES ('Ayxan Mustafayev', 21, 'ayxan@gmail.com', 1500),
		('Murad Aliyev', 19, 'murad@gmail.com', 800),
		('Nicat Hesenov', 23, 'nicat@gmail.com', 1800),
		('Fikret Huseynov', 16, 'fikret@gmail.com', 1400),
		('Nuray Nebizade', 25, 'nuray@gmail.com', 900),
		('Nezrin Elekberov', 29, 'nezrin@gmail.com', 1700)

--4) Employee-lərin bütün məlumatlarını göstərirsiz
SELECT * FROM Employee

--5) Id-i 1 olan employee-nin salary dəyərini update edirsiz
UPDATE Employee
SET Salary = 1800
WHERE Id = 1 

--6) Salary dəyəri 500 ilə 1500 arasında olan bütün dataları göstərirsiz
SELECT * FROM Employee
WHERE Salary BETWEEN 500 AND 1500

--7) Bütün employee-ləri salary dəyərinə görə azalan sıralayıb sadəcə fullname, email, salary datalarını göstərin
SELECT Fullname, Email, Salary FROM Employee
ORDER BY Salary DESC