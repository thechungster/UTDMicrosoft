-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2014 at 12:55 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `microsoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `classestaken`
--

CREATE TABLE IF NOT EXISTS `classestaken` (
  `classtaken ID` int(10) NOT NULL,
  `user ID` int(10) NOT NULL,
  `classinfo ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `classinfo`
--

CREATE TABLE IF NOT EXISTS `classinfo` (
  `classinfo ID` int(10) NOT NULL,
  `Course Prefix` text NOT NULL,
  `Course ID` text NOT NULL,
  `Course Name` text NOT NULL,
  `Course Description` text NOT NULL,
  `Prerequisites` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classinfo`
--

INSERT INTO `classinfo` (`classinfo ID`, `Course Prefix`, `Course ID`, `Course Name`, `Course Description`, `Prerequisites`) VALUES
(1, 'CS', '1336', 'Programming Fundamentals', 'CS 1336 (COSC 1336) Programming Fundamentals (3 semester hours) Introduction to computers. Primitive data types, variable declarations, variable scope, and primitive operations. Control statements. Methods/functions. Arrays, and strings using primitive data arrays. Output formatting. Debugging techniques. Designed for students with no prior computer programming experience. This class cannot be used to fulfill degree requirements for majors in the School of Engineering and Computer Science. Corequisite: CS 1136. Note that a grade of C or better is required in order to register for CS 1335 or CE 1337 or CS 1337 or TE 1337. (3-0) S', ''),
(2, 'CS', '1337', 'Computer Science I', 'CS 1337 (COSC 1337) Computer Science I (3 semester hours) Introduction to object-oriented software analysis, design, and development. Classes and objects. Object composition and polymorphism. Sorting, searching, recursion. Strings using core classes. Inheritance and interfaces. Graphical User Interfaces. Includes a comprehensive programming project. Prerequisite: CS 1336 with a grade of C or better or equivalent. (Same as CE 1337 and TE 1337) (3-0) S', ''),
(3, 'CS', '2336', 'Computer Science II', 'CS 2336 (COSC 2336) Computer Science II (3 semester hours) Exceptions and number formatting. File input/output using Stream classes. Implementation of primitive data structures, including linked lists (all types), stacks, queues, and binary trees. Advanced data manipulation using core classes. Introduction to multi-threading, multimedia, and networking. Includes a comprehensive programming project. Prerequisite: CE 1337 or CS 1337 or TE 1337. Prerequisite or corequisite: CE 2305 or CS 2305 or TE 2305. (Same as CE 2336 and TE 2336) (3-0) S', ''),
(4, 'CS', '2305', 'Discrete Mathematics for Computing I', 'CS 2305 (MATH 2305) Discrete Mathematics for Computing I (3 semester hours) Principles of counting. Logic and proof methods, including induction. Basic recurrence relations. Basics of algorithm complexity. Sets, relations, functions. Elementary graph theory. Elementary number theory. Students cannot get credit for both CS 2305 and (CE 3307 or TE 3307). Prerequisite: MATH 1326 or MATH 2413 or MATH 2417. (Same as CE 2305 and TE 2305) (3-0) S', ''),
(5, 'CS', '3305', 'Discrete Mathematics for Computing II', 'CS 3305 Discrete Mathematics for Computing II (3 semester hours) Advanced counting methods; recurrence relations, divide and conquer algorithms, principle of inclusion and exclusion. Partial orders and lattices, Algorithmic complexity. Graph theory. Strings and languages. Number theory. Elements of modern algebra. Students cannot receive credit for both CS 3305 and CE 3307 or TE 3307. Prerequisite: (CE 2305 or CS 2305 or TE 2305), and (MATH 2414 or MATH 2419). (3-0) S', ''),
(6, 'CS', '3345', 'Data Structures and Algorithmic Analysis', 'CS 3345 Data Structures and Introduction to Algorithmic Analysis (3 semester hours) Analysis of algorithms including time complexity and Big-O notation. Analysis of stacks, queues, and trees, including B-trees. Heaps, hashing, and advanced sorting techniques. Disjoint sets and graphs. Course emphasizes design and implementation. Students that completed CE 3346 or TE 3346 cannot receive credit for this course. Prerequisites: (CE 2305 or CS 2305 or TE 2305) and (CE 2336 or CS 2336 or TE 2336). Prerequisite or corequisite: CS 3341 or SE 3341 or ENGR 3341. (Same as CE 3345 and SE 3345 and TE 3345) (3-0) S', ''),
(7, 'CS', '3340', 'Computer Architecture', 'CS 3340 Computer Architecture (3 semester hours) This course introduces the concepts of computer architecture by going through multiple levels of abstraction, and the numbering systems and their basic computations. It focuses on the instruction-set architecture of the MIPS machine, including MIPS assembly programming, translation between MIPS and C, and between MIPS and machine code. General topics include performance calculation, processor datapath, pipelining, and memory hierarchy. Students who have already completed CS 2310 or equivalent cannot receive credit for this course. Students cannot receive credit for both (CS 3340 or SE 3340 or TE 3340) and (CE 4304 or EE 4304). Prerequisites: (CE 1337 or CS 1337 or TE 1337 or equivalent) and (CE 2305 or CS 2305 or TE 2305). (Same as SE 3340 and TE 3340) (3-0) S', ''),
(8, 'MATH', '2417', 'Calculus I', 'CS 3340 Computer Architecture (3 semester hours) This course introduces the concepts of computer architecture by going through multiple levels of abstraction, and the numbering systems and their basic computations. It focuses on the instruction-set architecture of the MIPS machine, including MIPS assembly programming, translation between MIPS and C, and between MIPS and machine code. General topics include performance calculation, processor datapath, pipelining, and memory hierarchy. Students who have already completed CS 2310 or equivalent cannot receive credit for this course. Students cannot receive credit for both (CS 3340 or SE 3340 or TE 3340) and (CE 4304 or EE 4304). Prerequisites: (CE 1337 or CS 1337 or TE 1337 or equivalent) and (CE 2305 or CS 2305 or TE 2305). (Same as SE 3340 and TE 3340) (3-0) S', ''),
(9, 'MATH', '2419', 'Calculus II', 'CS 3340 Computer Architecture (3 semester hours) This course introduces the concepts of computer architecture by going through multiple levels of abstraction, and the numbering systems and their basic computations. It focuses on the instruction-set architecture of the MIPS machine, including MIPS assembly programming, translation between MIPS and C, and between MIPS and machine code. General topics include performance calculation, processor datapath, pipelining, and memory hierarchy. Students who have already completed CS 2310 or equivalent cannot receive credit for this course. Students cannot receive credit for both (CS 3340 or SE 3340 or TE 3340) and (CE 4304 or EE 4304). Prerequisites: (CE 1337 or CS 1337 or TE 1337 or equivalent) and (CE 2305 or CS 2305 or TE 2305). (Same as SE 3340 and TE 3340) (3-0) S', ''),
(10, 'CS', '3354', 'Software Engineering', 'CS 3340 Computer Architecture (3 semester hours) This course introduces the concepts of computer architecture by going through multiple levels of abstraction, and the numbering systems and their basic computations. It focuses on the instruction-set architecture of the MIPS machine, including MIPS assembly programming, translation between MIPS and C, and between MIPS and machine code. General topics include performance calculation, processor datapath, pipelining, and memory hierarchy. Students who have already completed CS 2310 or equivalent cannot receive credit for this course. Students cannot receive credit for both (CS 3340 or SE 3340 or TE 3340) and (CE 4304 or EE 4304). Prerequisites: (CE 1337 or CS 1337 or TE 1337 or equivalent) and (CE 2305 or CS 2305 or TE 2305). (Same as SE 3340 and TE 3340) (3-0) S', '');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
  `user ID` int(10) NOT NULL,
  `Username` text NOT NULL,
  `Password` text NOT NULL,
  `Email` text NOT NULL,
  `Major` text NOT NULL,
  `Entrance Year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
 ADD PRIMARY KEY (`user ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
