Create Database DB
Use DB

Create table Teacher(
 TeacherId INT Primary key,
 TeacherName VARCHAR(20),
 DeptNo INT,
 );
 
 Create table Departments(
  DeptNo INT Primary key ,
  DeptName VARCHAR(20) ,
  Loction VARCHAR(25) ,
  );

ALTER TABLE Teacher
ADD CONSTRAINT FK_Teacher_Departments
    FOREIGN KEY (DeptNo) REFERENCES Departments(DeptNo)
    ON DELETE CASCADE     
    ON UPDATE CASCADE;    


SELECT Teacher.TeacherName, Departments.DeptName
FROM Teacher
JOIN Departments 
    ON Teacher.DeptNo = Departments.DeptNo;

INSERT INTO Teacher (TeacherID, TeacherName, DeptNo)
VALUES (105, 'Ali Khan', 3);

UPDATE Teacher
SET DeptNo = 5
WHERE TeacherID = 101;

CREATE VIEW CS_Teachers AS
SELECT T.TeacherID, T.TeacherName, D.DeptName
FROM Teacher T
JOIN Departments D
    ON T.DeptNo = D.DeptNo
WHERE D.DeptName = 'Computer Science';

