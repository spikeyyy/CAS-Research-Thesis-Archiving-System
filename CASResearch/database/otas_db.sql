-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 27, 2023 at 05:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `otas_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive_list`
--

CREATE TABLE `archive_list` (
  `id` int(30) NOT NULL,
  `archive_code` varchar(100) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `year` year(4) NOT NULL,
  `title` text NOT NULL,
  `abstract` text NOT NULL,
  `members` text NOT NULL,
  `banner_path` text NOT NULL,
  `document_path` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `student_id` int(30) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `archive_list`
--

INSERT INTO `archive_list` (`id`, `archive_code`, `curriculum_id`, `year`, `title`, `abstract`, `members`, `banner_path`, `document_path`, `status`, `student_id`, `date_created`, `date_updated`) VALUES
(1, '2021120001', 1, '2021', 'A Hybrid Model To Deteck Fake News', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &quot; open=&quot;&quot; sans&quot;,=&quot;&quot; arial,=&quot;&quot; sans-serif;=&quot;&quot; font-size:=&quot;&quot; 14px;=&quot;&quot; text-align:=&quot;&quot; justify;&quot;=&quot;&quot;&gt;egegee&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '&lt;p&gt;&lt;b&gt;Project Manager&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;-John D Smith&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;Members:&nbsp;&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;-James Miller&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;-Mike Williams&lt;/b&gt;&lt;/p&gt;&lt;p&gt;&lt;b&gt;-George Wilson&lt;/b&gt;&lt;/p&gt;', 'uploads/banners/archive-1.png?v=1685156919', 'uploads/pdf/archive-1.pdf?v=1685156642', 1, 1, '2021-12-11 14:57:22', '2023-05-27 11:08:39'),
(2, '2021120002', 1, '2022', 'Deep Learning of Microstructures', '&lt;div class=&quot;page&quot; title=&quot;Page 6&quot;&gt;\r\n			&lt;div class=&quot;layoutArea&quot;&gt;\r\n				&lt;div class=&quot;column&quot;&gt;\r\n					&lt;p&gt;&lt;span style=&quot;font-size: 12.000000pt; font-family: &#039;TimesNewRomanPSMT&#039;&quot;&gt;The internal structure of materials also called the microstructure plays a critical\r\nrole in the properties and performance of materials. The chemical element composition is\r\none of the most critical factors in changing the structure of materials. However, the\r\nchemical composition alone is not the determining factor, and a change in the production\r\nprocess can also significantly alter the materials&#039; structure. Therefore, many efforts have\r\nbeen made to discover and improve production methods to optimize the functional\r\nproperties of materials. The most critical challenge in finding materials with enhanced\r\nproperties is to understand and define the salient features of the structure of materials that\r\nhave the most significant impact on the desired property. In other words, by process,\r\nstructure, and property (PSP) linkages, the effect of changing process variables on\r\nmaterial structure and, consequently, the property can be examined and used as a\r\npowerful tool in material design with desirable characteristics. In particular, forward PSP\r\nlinkages construction has received considerable attention thanks to the sophisticated\r\nphysics-based models. Recently, machine learning (ML), and data science have also been\r\nused as powerful tools to find PSP linkages in materials science. One key advantage of\r\nthe ML-based models is their ability to construct both forward and inverse PSP linkages.\r\nEarly ML models in materials science were primarily focused on process-property\r\nlinkages construction. Recently, more microstructures are included in the materials\r\ndesign ML models. However, the inverse design of microstructures, i.e., the prediction of&nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: TimesNewRomanPSMT; font-size: 12pt;&quot;&gt;process and chemistry from a microstructure morphology image have received limited\r\nattention. This is a critical knowledge gap to address specifically for the problems that the\r\nideal microstructure or morphology with the specific chemistry associated with the\r\nmorphological domains are known, but the chemistry and processing which would lead to\r\nthat ideal morphology are unknown.&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;page&quot; title=&quot;Page 7&quot;&gt;&lt;div class=&quot;layoutArea&quot;&gt;&lt;div class=&quot;column&quot;&gt;\r\n					&lt;p&gt;&lt;span style=&quot;font-size: 12.000000pt; font-family: &#039;TimesNewRomanPSMT&#039;&quot;&gt;In this study, first, we propose a framework based on a deep learning approach\r\nthat enables us to predict the chemistry and processing history just by reading the\r\nmorphological distribution of one element. As a case study, we used a dataset from\r\nspinodal decomposition simulation of Fe-Cr-Co alloy created by the phase-field method.\r\nThe mixed dataset, which includes both images, i.e., the morphology of Fe distribution,\r\nand continuous data, i.e., the Fe minimum and maximum concentration in the\r\nmicrostructures, are used as input data, and the spinodal temperature and initial chemical\r\ncomposition are utilized as the output data to train the proposed deep neural network. The\r\nproposed convolutional layers were compared with pretrained EfficientNet convolutional\r\nlayers as transfer learning in microstructure feature extraction. The results show that the\r\ntrained shallow network is effective for chemistry prediction. However, accurate\r\nprediction of processing temperature requires more complex feature extraction from the\r\nmorphology of the microstructure. We benchmarked the model predictive accuracy for\r\nreal alloy systems with a Fe-Cr-Co transmission electron microscopy micrograph. The\r\npredicted chemistry and heat treatment temperature were in good agreement with the\r\nground truth. The treatment time was considered to be constant in the first study.\r\n&lt;/span&gt;&lt;/p&gt;\r\n					&lt;p&gt;&lt;span style=&quot;font-size: 12.000000pt; font-family: &#039;TimesNewRomanPSMT&#039;&quot;&gt;In the second work, we propose a fused-data deep learning framework that can\r\npredict the heat treatment time as well as temperature and initial chemical compositions&nbsp;&lt;/span&gt;&lt;span style=&quot;font-family: TimesNewRomanPSMT; font-size: 12pt;&quot;&gt;by reading the morphology of Fe distribution and its concentration. The results show that\r\nthe trained deep neural network has the highest accuracy for chemistry and then time and\r\ntemperature. We identified two scenarios for inaccurate predictions; 1) There are several\r\npaths for an identical microstructure, and&nbsp; Microstructures reach steady-state\r\nmorphologies after a long time of aging. The error analysis shows that most of the wrong\r\npredictions are not wrong, but the other right answers. We validated the model\r\nsuccessfully with an experimental Fe-Cr-Co transmission electron microscopy\r\nmicrograph.&lt;/span&gt;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;page&quot; title=&quot;Page 8&quot;&gt;&lt;div class=&quot;layoutArea&quot;&gt;&lt;div class=&quot;column&quot;&gt;\r\n					&lt;p&gt;&lt;span style=&quot;font-size: 12.000000pt; font-family: &#039;TimesNewRomanPSMT&#039;&quot;&gt;Finally, since the data generation by simulation is computationally expensive, we\r\npropose a quick and accurate Predictive Recurrent Neural Network (PredRNN) model for\r\nthe microstructure evolution prediction. Essentially, microstructure evolution prediction\r\nis a spatiotemporal sequence prediction problem, where the prediction of material\r\nmicrostructure is difficult due to different process histories and chemistry. As a case\r\nstudy, we used a dataset from spinodal decomposition simulation of Fe-Cr-Co alloy\r\ncreated by the phase-field method for training and predicting future microstructures by\r\nprevious observations. The results show that the trained network is capable of efficient\r\nprediction of microstructure evolution.&nbsp;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;', '&lt;ul&gt;&lt;li&gt;Sample 101&lt;/li&gt;&lt;li&gt;Sample 102&lt;/li&gt;&lt;li&gt;Sample 103&lt;/li&gt;&lt;li&gt;Sample 104&lt;br&gt;&lt;/li&gt;&lt;/ul&gt;', 'uploads/banners/archive-2.png?v=1685157320', 'uploads/pdf/archive-3.pdf?v=1685156992', 1, 1, '2021-12-11 16:53:48', '2023-05-27 11:23:18'),
(3, '2021120003', 1, '2018', 'Leveraging Tiled Display for Big Data Visualization Using D3.JS', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;\r\n		\r\n	\r\n	\r\n		&lt;/p&gt;&lt;div class=&quot;page&quot; title=&quot;Page 6&quot;&gt;\r\n			&lt;div class=&quot;layoutArea&quot;&gt;\r\n				&lt;div class=&quot;column&quot;&gt;\r\n					&lt;p&gt;&lt;span style=&quot;font-size: 12.000000pt; font-family: &#039;TimesNewRomanPSMT&#039;&quot;&gt;Data visualization has proven effective at detecting patterns and drawing inferences\r\n&lt;/span&gt;&lt;/p&gt;\r\n					&lt;p&gt;&lt;span style=&quot;font-size: 12.000000pt; font-family: &#039;TimesNewRomanPSMT&#039;&quot;&gt;from raw data by transforming it into visual representations. As data grows large,\r\nvisualizing it faces two major challenges: 1) limited resolution i.e. a screen is limited to a\r\nfew million pixels but the data can have a billion data points, and 2) computational load\r\ni.e. processing of this data becomes computationally challenging for a single node system.\r\nThis work addresses both of these issues for efficient big data visualization. In the\r\ndeveloped system, a High Pixel Density and Large Format display was used enabling the\r\ndisplay of fine details on the screen when visualizing data. Apache Spark and Hadoop used\r\nin the system allow the computation to be done on a cluster.\r\n&lt;/span&gt;&lt;/p&gt;\r\n					&lt;p&gt;&lt;span style=&quot;font-size: 12.000000pt; font-family: &#039;TimesNewRomanPSMT&#039;&quot;&gt;The system is demonstrated using a global wind flow simulation. The Global\r\nSurface Summary of the Day dataset is processed and visualized using web browsers with\r\nData-Driven Documents (D3).js code. We conducted both a performance evaluation and a\r\nuser study to measure the performance and effectiveness of the system. It was seen that the\r\nsystem was most efficient when visualizing data using streamed bitmap images rather than\r\nstreamed raw data. The system only rendered images at 6-10 Frames Per Second (FPS) and\r\ndid not meet our target of rendering images at 30 FPS. The results of the user study\r\nconcluded that the system is effective and easy to use for data visualization. The outcome\r\nof our experiment suggests that the current state of Google Chrome may not be as powerful\r\nas required to perform heavy 2D data visualization on the web and still needs more\r\ndevelopment for visualizing data of large magnitude.&nbsp;&lt;/span&gt;&lt;/p&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/div&gt;', '&lt;p&gt;&lt;b&gt;Project Manager&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Jacob Flores&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;QA&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;John Christopher Santos&lt;/li&gt;&lt;li&gt;Khen Chee Calimlim&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Programmers&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Cedrick Valenteros&lt;/li&gt;&lt;/ul&gt;&lt;p&gt;&lt;b&gt;Researchers&lt;/b&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Brian Jhon Penicilla&lt;/li&gt;&lt;/ul&gt;', 'uploads/banners/archive-3.png?v=1685158877', 'uploads/pdf/archive-2.pdf?v=1639377036', 1, 3, '2021-12-13 14:30:35', '2023-05-27 11:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_list`
--

CREATE TABLE `curriculum_list` (
  `id` int(30) NOT NULL,
  `department_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `curriculum_list`
--

INSERT INTO `curriculum_list` (`id`, `department_id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(1, 5, 'BSIS', 'Bachelor of Science in Information Systems', 1, '2021-12-07 10:10:20', '2021-12-07 10:12:20'),
(2, 5, 'BSIT', 'Bachelor of Science in Information Technology', 1, '2021-12-07 10:10:56', NULL),
(3, 2, 'BEEd', 'Bachelor of Elementary Education', 1, '2021-12-07 10:12:50', NULL),
(4, 2, 'BSEd', 'Bachelor of Secondary Education', 1, '2021-12-07 10:13:10', NULL),
(5, 2, 'BSNEd', 'Bachelor in Special Needs Education', 1, '2021-12-07 10:14:05', NULL),
(6, 6, 'BSCE', 'Bachelor of Science in Civil Engineering', 1, '2021-12-07 10:14:26', NULL),
(7, 6, 'BS Computer Engineering', 'Bachelor of Science in Computer Engineering', 1, '2021-12-07 10:15:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `department_list`
--

CREATE TABLE `department_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department_list`
--

INSERT INTO `department_list` (`id`, `name`, `description`, `status`, `date_created`, `date_updated`) VALUES
(1, 'College of Industrial Technology', 'Develop world-class industrial workers and middle-level managers equipped with scientific knowledge, technological skills, and ethical work values to achieve a desirable quality of life.', 1, '2021-12-07 09:28:16', '2021-12-07 09:36:07'),
(2, 'College of Education', 'Implement Teacher Education Programs for the elementary and secondary levels and endeavor to achieve quality and excellence, relevance and responsiveness, equity and access, and efficiency and effectiveness in instruction, research, extension, and production.', 1, '2021-12-07 09:28:33', '2021-12-07 09:46:57'),
(3, 'College of Arts and Sciences', 'Develop and implement programs in Liberal Arts and Sciences to achieve academic excellence and competencies geared towards the total development of the learners in their specialized fields.', 1, '2021-12-07 09:34:11', NULL),
(4, 'College of Business Management and Accountancy', 'College of Business Management and Accountancy', 1, '2021-12-07 09:34:55', NULL),
(5, 'College of Computer Studies', 'Develop creative innovators with the confidence and courage to seize and transform opportunities for the benefit of the society.', 1, '2021-12-07 09:35:19', '2021-12-07 09:36:35'),
(6, 'College of Engineering', 'To develop scientific and technical knowledge anchored on sustainable fisheries productivity and promote linkages and networking in the implementation of fisheries programs and projects.', 1, '2021-12-07 09:37:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_list`
--

CREATE TABLE `student_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `lastname` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `curriculum_id` int(30) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_list`
--

INSERT INTO `student_list` (`id`, `firstname`, `middlename`, `lastname`, `department_id`, `curriculum_id`, `email`, `password`, `gender`, `status`, `avatar`, `date_created`, `date_updated`) VALUES
(1, 'John', 'D', 'Smith', 5, 1, 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 'Male', 1, 'uploads/student-1.png?v=1685155760', '2021-12-11 12:50:03', '2023-05-27 10:49:20'),
(3, 'Claire', 'C', 'Blake', 5, 1, 'cblake@sample.com', '4744ddea876b11dcb1d169fadf494418', 'Female', 1, 'uploads/student-3.png?v=1639377518', '2021-12-13 10:42:51', '2021-12-13 14:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'CAS Research'),
(6, 'short_name', 'CAS Research'),
(11, 'logo', 'uploads/cas.png'),
(13, 'user_avatar', ''),
(14, 'cover', 'uploads/cas_cover.png'),
(15, 'content', 'Array'),
(16, 'email', 'earistcasstudentgovernment@gmail.com'),
(17, 'contact', '09634733559'),
(18, 'from_time', '8:00am'),
(19, 'to_time', '5:30pm'),
(20, 'address', 'Nagtahan St, Sampaloc, Manila, 1008 Metro Manila');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0=not verified, 1 = verified',
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `status`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', NULL, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/student-1.png?v=1639202560', NULL, 1, 1, '2021-01-20 14:02:37', '2021-12-11 14:02:40'),
(2, 'Claire', NULL, 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', 'uploads/avatar-2.png?v=1639377482', NULL, 2, 1, '2021-12-13 14:38:02', '2021-12-13 14:38:02'),
(3, 'Brian ', NULL, 'Penicilla', 'brianjhon', 'cbd44f8b5b48a51f7dab98abcdf45d4e', 'uploads/avatar-3.png?v=1685153158', NULL, 2, 1, '2023-05-27 10:05:58', '2023-05-27 10:05:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curriculum_id` (`curriculum_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `department_list`
--
ALTER TABLE `department_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_list`
--
ALTER TABLE `student_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH,
  ADD KEY `department_id` (`department_id`),
  ADD KEY `curriculum_id` (`curriculum_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archive_list`
--
ALTER TABLE `archive_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `department_list`
--
ALTER TABLE `department_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_list`
--
ALTER TABLE `student_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `archive_list`
--
ALTER TABLE `archive_list`
  ADD CONSTRAINT `archive_list_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `curriculum_list`
--
ALTER TABLE `curriculum_list`
  ADD CONSTRAINT `curriculum_list_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_list`
--
ALTER TABLE `student_list`
  ADD CONSTRAINT `student_list_ibfk_1` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_list_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
