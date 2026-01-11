-- ====================================================
-- Student Management Database
-- SQL Data Analysis Internship Task
-- ====================================================

-- -----------------------------
-- Database Creation
-- -----------------------------
CREATE DATABASE StudentManagement;
USE StudentManagement;

-- -----------------------------
-- Table Creation
-- -----------------------------
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Grade VARCHAR(5),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

-- -----------------------------
-- Insert Sample Data
-- -----------------------------
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore)
VALUES
('Aarav', 'Male', 16, 'A', 85, 88, 90),
('Diya', 'Female', 15, 'A', 92, 91, 89),
('Rohan', 'Male', 17, 'B', 78, 75, 80),
('Ananya', 'Female', 16, 'A', 88, 90, 92),
('Kunal', 'Male', 15, 'C', 65, 60, 70),
('Pooja', 'Female', 17, 'B', 72, 78, 75),
('Vikram', 'Male', 16, 'B', 80, 82, 79),
('Neha', 'Female', 15, 'A', 90, 89, 94),
('Arjun', 'Male', 17, 'C', 68, 70, 65),
('Sneha', 'Female', 16, 'B', 76, 74, 78);

-- -----------------------------
-- Query 1: Show all students
-- -----------------------------
SELECT * FROM Students;

-- -----------------------------
-- Query 2: Average score per subject
-- -----------------------------
SELECT
    AVG(MathScore) AS Avg_Math,
    AVG(ScienceScore) AS Avg_Science,
    AVG(EnglishScore) AS Avg_English
FROM Students;

-- -----------------------------
-- Query 3: Top performer
-- -----------------------------
SELECT Name,
       (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

-- -----------------------------
-- Query 4: Count students per grade
-- -----------------------------
SELECT Grade, COUNT(*) AS StudentCount
FROM Students
GROUP BY Grade;

-- -----------------------------
-- Query 5: Average score by gender
-- -----------------------------
SELECT Gender,
       AVG(MathScore) AS Avg_Math,
       AVG(ScienceScore) AS Avg_Science,
       AVG(EnglishScore) AS Avg_English
FROM Students
GROUP BY Gender;

-- -----------------------------
-- Query 6: Students with Math score > 80
-- -----------------------------
SELECT Name, MathScore
FROM Students
WHERE MathScore > 80;

-- -----------------------------
-- Query 7: Update student grade
-- -----------------------------
UPDATE Students
SET Grade = 'A'
WHERE Name = 'Rohan';
