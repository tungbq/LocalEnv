-- Create a sample database
CREATE DATABASE SampleDB;
GO -- Use the sample database
  USE SampleDB;
GO -- Create a table
  CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50)
  );
GO -- Insert sample data into the table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department)
VALUES (1, 'John', 'Doe', 'IT'),
  (2, 'Jane', 'Smith', 'HR'),
  (3, 'Alice', 'Jones', 'Finance');
GO