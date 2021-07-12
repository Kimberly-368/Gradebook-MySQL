--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `courses_id` int NOT NULL AUTO_INCREMENT,
  `courses_name` varchar(100) DEFAULT NULL,
  `courses_description` varchar(150) DEFAULT NULL,
  `courses_students_one_id` int NOT NULL,
  `courses_students_two_id` int NOT NULL,
  PRIMARY KEY (`courses_id`),
  UNIQUE KEY `courses_id_UNIQUE` (`courses_id`),
  KEY `courses_students_id_idx` (`courses_students_one_id`),
  KEY `courses_students_two_id_idx` (`courses_students_two_id`),
  CONSTRAINT `courses_students_one_id` FOREIGN KEY (`courses_students_one_id`) REFERENCES `students` (`students_id`),
  CONSTRAINT `courses_students_two_id` FOREIGN KEY (`courses_students_two_id`) REFERENCES `students` (`students_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
-- INSERT INTO courses(courses_name, courses_description, courses_students_one_id, courses_students_two_id)
INSERT INTO `courses` VALUES 
(1,'US History','Average - surveying the major events and turning points of U.S. history ',4,8),
(2,'College Algebra I','Hard - designed to familiarize learners with fundamental mathematical concepts',3,6),
(3,'Speech Communication','Easy - students develop an understanding and appreciation of the dynamic nature of the communication process',1,5),
(4,'General Psychology','Easy - a survey of the major psychological topics, theories and approaches to the scientific study of behavior and mental processes',2,7),
(5,'TX History','Average - survey of the political, economic, social, cultural, and intellectual development of Texas from prehistoric time to the presen',9,13),
(6,'US Government','Average - designed to acquaint students with the origins, concepts, organizations, and policies of the United States government and political system',10,14),
(7,'TX Government','Average - the origin and development of the Texas constitution, structure and powers of state and local government, etc',11,15),
(8,'College Alegebra II','Hard - based on functions-linear, radical, quadratic, etc',12,16),
(9,'Statistics','Harder than Average - a branch of mathematics dealing with the collection, analysis, interpretation, and presentation of masses of numerical data',1,15),
(10,'Finite Math','Extremely Difficult - focused on the matrix algebra, linear programming, probability, counting methods, Markov chains, and game theory',2,10),
(11,'Philosophy','Average - based on the nature of truth and knowledge, mind and body, freedom and determinism, right and wrong, and the existence of God',3,12),
(12,'Literature','Hard - based on the study of written and sometimes spoken material',4,13),
(13,'Cultural Studies','Average - focused on how cultural processes and artifacts are produced, shaped, distributed, consumed and responded to in diverse ways',5,14),
(14,'Economics','Easy - studies the basics of economic principles and economic systems',7,16),
(15,'Political Science','Harder than Average - studies the American tradition of political thought, its formation, and the ways it is involved in major problems',6,15),
(16,'Sociology','Average - employs scientific methodology to study society',1,11);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `grades_id` int NOT NULL AUTO_INCREMENT,
  `grades_students_id` int NOT NULL,
  `grades_for_course` int DEFAULT NULL,
  `grades_course` varchar(80) DEFAULT NULL,
  `grades_professors_id` int NOT NULL,
  `grades_courses_id` int NOT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE KEY `grades_id_UNIQUE` (`grades_id`),
  KEY `grades_students_id_idx` (`grades_students_id`),
  KEY `grades_courses_id_idx` (`grades_courses_id`),
  CONSTRAINT `grades_courses_id` FOREIGN KEY (`grades_courses_id`) REFERENCES `courses` (`courses_id`),
  CONSTRAINT `grades_students_id` FOREIGN KEY (`grades_students_id`) REFERENCES `students` (`students_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
--INSERT INTO grades(grades_students_id, grades_for_course, grades_course, grades_professors_id, grades_courses_id)
INSERT INTO `grades` VALUES 
(1,4,99,'US History',1,1),
(2,8,100,'US History',1,1),
(3,9,98,'TX History',1,5),
(4,13,90,'TX History',1,5),
(5,10,90,'US Government',1,6),
(6,14,95,'US Government',1,6),
(7,11,87,'TX Government',1,7),
(8,15,81,'TX Government',1,7),
(9,3,81,'College Algebra I',2,2),
(10,6,79,'College Algebra I',2,2),
(11,12,80,'College Algebra II',2,8),
(12,16,82,'College Algebra II',2,8),
(13,1,77,'Statistics',2,9),
(14,15,79,'Statistics',2,9),
(15,2,85,'Finite Math',2,10),
(16,10,75,'Finite Math',2,10),
(17,1,100,'Speech Communication',3,3),
(18,5,99,'Speech Communication',3,3),
(19,3,85,'Philosophy',3,11),
(20,12,87,'Philosophy',3,11),
(21,4,76,'Literature',3,12),
(22,13,71,'Literature',3,12),
(23,5,90,'Cultural Studies',3,13),
(24,14,89,'Cultural Studies',3,13),
(25,2,98,'General Psychology',4,15),
(26,7,100,'General Psychology',4,15),
(27,6,75,'Political Science',4,14),
(28,15,79,'Political Science',4,14),
(29,1,84,'Sociology',4,16),
(30,11,87,'Sociology',4,16),
(31,7,100,'Economics',4,4),
(32,16,100,'Economics',4,4);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professors`
--

DROP TABLE IF EXISTS `professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professors` (
  `professors_id` int NOT NULL AUTO_INCREMENT,
  `professors_name` varchar(100) DEFAULT NULL,
  `professors_email` varchar(80) DEFAULT NULL,
  `professors_subject` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`professors_id`),
  UNIQUE KEY `professors_id_UNIQUE` (`professors_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professors`
--

LOCK TABLES `professors` WRITE;
/*!40000 ALTER TABLE `professors` DISABLE KEYS */;
INSERT INTO professors(professors_name, professors_email, professors_subject)
INSERT INTO `professors` VALUES 
(1,'Sonya Ben','profsonyab@gradebook.com','Social Sciences'),
(2,'Jackson Lee','profjacksonl@gradebook.com','College Math'),
(3,'Donna Sandals','profdonnas@gradebook.com','Humanities'),
(4,'Liam Jones','profliamj@gradebook.com','History and Government');
/*!40000 ALTER TABLE `professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `students_id` int NOT NULL AUTO_INCREMENT,
  `students_name` varchar(100) DEFAULT NULL,
  `students_email` varchar(80) NOT NULL,
  `students_professors_id` int NOT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE KEY `students_id_UNIQUE` (`students_id`),
  UNIQUE KEY `students_email_UNIQUE` (`students_email`),
  KEY `students_professors_id_idx` (`students_professors_id`),
  CONSTRAINT `students_professors_id` FOREIGN KEY (`students_professors_id`) REFERENCES `professors` (`professors_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
-- INSERT INTO students(students_name, students_email, students_professors_id)
INSERT INTO `students` VALUES 
(1,'Kimberly Valley','kimberlyv@gradesbook.com',3),
(2,'Tamela Mann','tamelam@gradesbook.com',4),
(3,'Sandra Bullock','sandrab@gradesbook.com',2),
(4,'Angela Ortiz','angelao@gradesbook.com',1),
(5,'Lucion Jackson','lucionj@gradesbook.com',3),
(6,'Marvin Sapp','marvins@gradesbook.com',2),
(7,'Kirk Franklin','kirkf@gradesbook.com',4),
(8,"Le\'Andria Johnson","le\'andriaj@gradesbook.com",1),
(9,'Cristian Huff','cristianh@gradebook.com',1),
(10,"Dawn’Cheré Wilkerson","dawn\'cheréw@gradebook.com",3),
(11,'Rich Wilkerson','richw@gradebook.com',2),
(12,'David Mannn','davidm@gradebook.com',4),
(13,'Steven Furtick','stevenf@gradebook.com',1),
(14,'Holly Furtick','hollyf@gradebook.com',3),
(15,'Elisabeth Elliot','elisabethe@gradebook.com',2),
(16,'Sadie Robertson Huff','sadierh@gradebook.com',4);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

-- Project Technical Requirements
-- The project needs to contain the following technical features:
--   Build a database with the following tables: Students, Courses, Professors, Grades
--   Foreign key relationships between the tables
--   Create a script that populates all of the database tables with sample data
--   SQL query scripts for:
--     The average grade that is given by each professor
        SELECT 
        p.professors_name,
        p.professors_subject,
        AVG(g.grades_for_course)
        FROM grades g
        JOIN professors p
        ON g.grades_professors_id = p.professors_id
        GROUP BY p.professors_id;

--     The top grades for each student
        SELECT 
        s.students_name,
        MAX(g.grades_for_course)
        FROM grades g
        JOIN students s
        ON g.grades_students_id = s.students_id
        GROUP BY s.students_id;

--     Group students by the courses that they are enrolled in
        SELECT 
        s.students_name,
        c.courses_name,
        c.courses_description
        FROM courses c
        JOIN students s
        ON c.courses_students_one_id AND c.courses_students_two_id = s.students_id
        GROUP BY c.courses_id;


--     Create a summary report of courses and their average grades, sorted by the most challenging course (course with the lowest average grade) to the easiest course
        SELECT 
        c.courses_name,
        c.courses_description,
        g.grades_for_course
        FROM grades g 
        JOIN courses c
        ON g.grades_courses_id = c.courses_id
        GROUP BY c.courses_id
        ORDER BY AVG(g.grades_for_course) ASC;

--     Finding which student and professor have the most courses in common
        SELECT
        g.grades_professors_id,
        p.professors_name,
        g.grades_course,
        g.grades_students_id,
        g.grades_for_course
        FROM grades g
        JOIN professors p
        ON g.grades_professors_id = p.professors_id;