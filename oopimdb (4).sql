-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 03:28 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oopimdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `academicyears`
--

CREATE TABLE `academicyears` (
  `AcademicYearID` int(11) NOT NULL,
  `Year` varchar(20) NOT NULL,
  `Semester` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `academicyears`
--

INSERT INTO `academicyears` (`AcademicYearID`, `Year`, `Semester`) VALUES
(1, '2023-2024', '1'),
(2, '2023-2024', '2'),
(3, '2024-2025', '1'),
(4, '2024-2025', '2'),
(5, '2025-2026', '1'),
(6, '2025-2026', '2'),
(7, '2026-2027', '1'),
(8, '2026-2027', '2');

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `AssignmentID` int(11) NOT NULL,
  `ClassID` int(11) DEFAULT NULL,
  `FacultyID` varchar(20) DEFAULT NULL,
  `CourseID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`AssignmentID`, `ClassID`, `FacultyID`, `CourseID`) VALUES
(1, 1, '12342', 1),
(2, 2, '12342', 1),
(3, 3, '12342', 1),
(4, 1, '12345', 2),
(5, 2, '12345', 2),
(6, 3, '12345', 2);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `ClassID` int(11) NOT NULL,
  `Year` int(2) NOT NULL,
  `Section` varchar(20) NOT NULL,
  `Program` enum('BSIT','BSCS','BSN') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`ClassID`, `Year`, `Section`, `Program`) VALUES
(1, 1, 'A', 'BSIT'),
(2, 1, 'B', 'BSIT'),
(3, 1, 'C', 'BSIT'),
(4, 1, 'A', 'BSCS'),
(5, 1, 'B', 'BSCS'),
(6, 1, 'C', 'BSCS'),
(7, 1, 'A', 'BSN'),
(8, 1, 'B', 'BSN'),
(9, 1, 'C', 'BSN'),
(10, 2, 'A', 'BSIT'),
(11, 2, 'B', 'BSIT'),
(12, 2, 'C', 'BSIT'),
(13, 2, 'A', 'BSCS'),
(14, 2, 'B', 'BSCS'),
(15, 2, 'C', 'BSCS'),
(16, 2, 'A', 'BSN'),
(17, 2, 'B', 'BSN'),
(18, 2, 'C', 'BSN'),
(19, 3, 'A', 'BSIT'),
(20, 3, 'B', 'BSIT'),
(21, 3, 'A', 'BSCS'),
(22, 3, 'B', 'BSCS'),
(23, 3, 'A', 'BSN'),
(24, 3, 'B', 'BSN'),
(25, 4, 'A', 'BSIT'),
(26, 4, 'B', 'BSIT'),
(27, 4, 'A', 'BSCS'),
(28, 4, 'B', 'BSCS'),
(29, 4, 'A', 'BSN'),
(30, 4, 'B', 'BSN');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `CourseID` int(11) NOT NULL,
  `CourseCode` varchar(50) NOT NULL,
  `CourseTitle` varchar(255) NOT NULL,
  `CurriculumYear` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`CourseID`, `CourseCode`, `CourseTitle`, `CurriculumYear`) VALUES
(1, 'COMP101', 'Introduction to Computing', '1'),
(2, 'COMP102', 'Fundamentals of Programming', '1'),
(3, 'GE003', 'The Contemporary World with Peace Education', '1'),
(4, 'GE004', 'Mathematics in the Modern World', '1'),
(5, 'GE006', 'Art Appreciation', '1'),
(6, 'NSTP101-C', 'National Service Training0 Program (Civic Welfare Training Service)', '1'),
(7, 'PE101', 'Physical Activities Toward Health and Fitness 1 (Pathfit 1)', '1'),
(8, 'Comp 103', 'Intermediate Programming (JAVA)', '1'),
(9, 'GE001', 'Understanding the Self', '1'),
(10, 'GE005', 'Purposive Communication', '1'),
(11, 'GE007', 'Science, Technology and Society', '1'),
(12, 'GEE001', 'GE Elective 1: Environmental Science', '1'),
(13, 'IT101', 'Discrete Mathematics', '1'),
(14, 'NSTP102-C', 'National Service Training0 Program (Civic Welfare Training Service)', '1'),
(15, 'PE102', 'Physical Activities Toward Health and Fitness 2 (PATHfit 2)', '1'),
(16, 'COMP104', 'Data Structures and Algorithm', '2'),
(17, 'COMP105', 'Information Management', '2'),
(18, 'GE008', 'Ethics', '2'),
(19, 'GEE002', 'GE Elective 2: Living in the IT Era', '2'),
(20, 'IT102', 'Quantitative Methods', '2'),
(21, 'IT201', 'IT Elective: Platform Technologies', '2'),
(22, 'IT202', 'IT Elective: Object-Oriented Programming (VB.net)', '2'),
(23, 'PE103', 'Physical Activities Toward Health and Fitness 3 (PATHfit 3)', '2');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DepartmentID` int(11) NOT NULL,
  `DepartmentName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DepartmentID`, `DepartmentName`) VALUES
(1, 'College of Nursing'),
(2, 'College of Computer Studies');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FacultyID` varchar(20) NOT NULL,
  `prof_FName` varchar(50) NOT NULL,
  `prof_MName` varchar(50) NOT NULL,
  `prof_LName` varchar(50) NOT NULL,
  `DepartmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FacultyID`, `prof_FName`, `prof_MName`, `prof_LName`, `DepartmentID`) VALUES
('12342', 'Ed', 'Del Rosario', 'Lumabas', 2),
('12345', 'Ed', 'Del Rosario', 'Lumabas', 2),
('12351', 'Guro', 'Del Rosario', 'Lumabas', 2),
('12353', 'Guro ', 'Del Rosario', 'Lumabas', 2),
('13152', 'Jonas', 'Thomas', 'Cruz', 1),
('21323', 'Justine', 'Thomas', 'Cruz', 1),
('23423', 'Dhone', 'Del Rosario', 'Lumabas', 2),
('24332', 'Dhone Bert', 'Tindero', 'Napay', 2),
('32412', 'Michael', 'Toledo', 'Flores', 1);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `GradeID` int(11) NOT NULL,
  `StudentID` varchar(20) DEFAULT NULL,
  `CourseID` int(11) DEFAULT NULL,
  `MAttendance` int(3) NOT NULL,
  `MQuiz` int(3) NOT NULL,
  `MExercises` int(3) NOT NULL,
  `MExam` int(3) NOT NULL,
  `MCStudy` int(3) NOT NULL,
  `MRecitation` int(3) NOT NULL,
  `MidtermGrade` decimal(5,2) NOT NULL,
  `FAttendace` int(3) NOT NULL,
  `FQuiz` int(3) NOT NULL,
  `FExercises` int(3) NOT NULL,
  `FExam` int(3) NOT NULL,
  `FProject` int(3) NOT NULL,
  `FinalGrade` decimal(5,2) NOT NULL,
  `SemestralGrade` decimal(5,2) DEFAULT NULL,
  `GradeEquivalent` varchar(5) DEFAULT NULL,
  `Remarks` varchar(50) DEFAULT NULL,
  `AcademicYearID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`GradeID`, `StudentID`, `CourseID`, `MAttendance`, `MQuiz`, `MExercises`, `MExam`, `MCStudy`, `MRecitation`, `MidtermGrade`, `FAttendace`, `FQuiz`, `FExercises`, `FExam`, `FProject`, `FinalGrade`, `SemestralGrade`, `GradeEquivalent`, `Remarks`, `AcademicYearID`) VALUES
(1, '23-00211', 1, 20, 20, 20, 20, 20, 20, 98.93, 20, 20, 20, 20, 20, 95.78, 97.40, '1', 'Passed', 1),
(2, '23-00211', 2, 20, 20, 20, 20, 20, 20, 99.00, 20, 20, 20, 20, 20, 98.00, 98.50, '1', 'Passed', 2),
(3, '23-35123', 1, 20, 20, 20, 20, 20, 20, 99.00, 20, 20, 20, 20, 20, 98.00, 98.50, '1', 'Passed', 1),
(4, '23-35123', 2, 20, 20, 20, 20, 20, 20, 97.00, 20, 20, 20, 20, 20, 99.00, 98.00, '1', 'Passed', 2),
(5, '23-41212', 1, 20, 20, 20, 20, 20, 20, 95.00, 20, 20, 20, 20, 20, 100.00, 97.50, '1', 'Passed', 1),
(6, '23-41212', 2, 20, 20, 20, 20, 20, 20, 99.00, 20, 20, 20, 20, 20, 98.00, 98.50, '1', 'Passed', 2);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentID` varchar(20) NOT NULL,
  `FName` varchar(100) NOT NULL,
  `MName` varchar(50) NOT NULL,
  `LName` varchar(50) NOT NULL,
  `ClassID` int(11) DEFAULT NULL,
  `DepartmentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentID`, `FName`, `MName`, `LName`, `ClassID`, `DepartmentID`) VALUES
('23-00041', 'Chrisha', 'Balbacal', 'Faustino', 10, 2),
('23-00121', 'Kian', 'Andrei', 'Saludo', 7, 1),
('23-00151', 'Jan Alain', 'Masarap Kumain', 'Cainglet', 1, 2),
('23-00211', 'Justine Angelo', 'Pugi', 'Faustino', 12, 2),
('23-35123', 'Najil', 'Ong', 'Bumacod', 2, 2),
('23-41212', 'Dhone Bert', 'Tengteng', 'Napay', 9, 1),
('23-41232', 'Joshua Andrhei', 'Del Rosario', 'Cruz', 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `StudentID` varchar(20) DEFAULT NULL,
  `FacultyID` varchar(11) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `Role` varchar(50) NOT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `StudentID`, `FacultyID`, `Password`, `Role`, `Email`) VALUES
(1, NULL, '12342', 'lumabasEdr@12342', 'Professor', NULL),
(2, NULL, '12345', 'lumabasEdr@12345', 'Professor', NULL),
(3, NULL, '13152', 'cruzJt@13152', 'Professor', NULL),
(19, '23-00211', NULL, '23-00211@JApFaustino', 'Student', NULL),
(20, '23-41212', NULL, '23-41212@DBtNapay', 'Student', NULL),
(21, '23-35123', NULL, '23-35123@NoBumacod', 'Student', NULL),
(24, '23-00151', NULL, '23-00151@JAmkCainglet', 'Student', NULL),
(25, '23-00121', NULL, '23-00121@KaSaludo', 'Student', NULL),
(26, '23-41232', NULL, '23-41232@JAdrCruz', 'Student', NULL),
(28, NULL, '32412', 'floresMt@32412', 'Professor', NULL),
(29, '23-00041', NULL, '23-00041@CbFaustino', 'Student', NULL),
(30, NULL, '12353', 'lumabasMEdr@12353', 'Professor', NULL),
(31, NULL, '24332', 'napayDBt@24332', 'Professor', NULL),
(32, NULL, '12351', 'lumabasGdr@12351', 'Professor', NULL),
(33, NULL, '21323', 'cruzJt@21323', 'Professor', NULL),
(34, NULL, '23423', 'lumabasDdr@23423', 'Professor', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academicyears`
--
ALTER TABLE `academicyears`
  ADD PRIMARY KEY (`AcademicYearID`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`AssignmentID`),
  ADD KEY `FacultyID` (`FacultyID`),
  ADD KEY `CourseID` (`CourseID`),
  ADD KEY `ClassID` (`ClassID`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`ClassID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`CourseID`),
  ADD UNIQUE KEY `CourseCode` (`CourseCode`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DepartmentID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`FacultyID`),
  ADD KEY `DepartmentID` (`DepartmentID`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`GradeID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `CourseID` (`CourseID`),
  ADD KEY `AcademicYearID` (`AcademicYearID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentID`),
  ADD KEY `DepartmentID` (`DepartmentID`),
  ADD KEY `ClassID` (`ClassID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `FacultyID` (`FacultyID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academicyears`
--
ALTER TABLE `academicyears`
  MODIFY `AcademicYearID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `AssignmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `CourseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `DepartmentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `GradeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignments`
--
ALTER TABLE `assignments`
  ADD CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`),
  ADD CONSTRAINT `assignments_ibfk_3` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`),
  ADD CONSTRAINT `assignments_ibfk_5` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assignments_ibfk_6` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `assignments_ibfk_7` FOREIGN KEY (`ClassID`) REFERENCES `classes` (`ClassID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`),
  ADD CONSTRAINT `faculty_ibfk_2` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `faculty_ibfk_3` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`),
  ADD CONSTRAINT `grades_ibfk_2` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`),
  ADD CONSTRAINT `grades_ibfk_3` FOREIGN KEY (`AcademicYearID`) REFERENCES `academicyears` (`AcademicYearID`),
  ADD CONSTRAINT `grades_ibfk_4` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grades_ibfk_5` FOREIGN KEY (`CourseID`) REFERENCES `courses` (`CourseID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grades_ibfk_6` FOREIGN KEY (`AcademicYearID`) REFERENCES `academicyears` (`AcademicYearID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`),
  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`),
  ADD CONSTRAINT `students_ibfk_3` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `students_ibfk_4` FOREIGN KEY (`ClassID`) REFERENCES `classes` (`ClassID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `students` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`FacultyID`) REFERENCES `faculty` (`FacultyID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
