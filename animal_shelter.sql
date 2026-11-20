-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 24, 2025 at 03:43 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `animal_shelter`
--

-- --------------------------------------------------------

--
-- Table structure for table `Activity_Assignment`
--

CREATE TABLE `Activity_Assignment` (
  `assignment_id` int(11) NOT NULL,
  `volunteer_id` int(11) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `animal_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Activity_Assignment`
--

INSERT INTO `Activity_Assignment` (`assignment_id`, `volunteer_id`, `campaign_id`, `animal_id`, `start_date`, `end_date`) VALUES
(6, 1, 1, 2, '2024-02-01', '2024-02-15'),
(7, 2, 1, 1, '2024-02-10', '2024-03-01'),
(8, 3, 2, 3, '2024-03-05', '2024-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `Adoption`
--

CREATE TABLE `Adoption` (
  `application_id` int(11) NOT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `animal_id` int(11) DEFAULT NULL,
  `application_date` date DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `home_check_date` date DEFAULT NULL,
  `adoption_fee` decimal(10,2) DEFAULT NULL,
  `contract_signed` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Adoption`
--

INSERT INTO `Adoption` (`application_id`, `applicant_id`, `animal_id`, `application_date`, `status`, `home_check_date`, `adoption_fee`, `contract_signed`) VALUES
(1, 1, 3, '2024-03-30', 'Completed', '2024-04-02', 100.00, 'Yes'),
(2, 2, 1, '2024-04-10', 'Pending', NULL, 80.00, 'No');

-- --------------------------------------------------------

--
-- Table structure for table `Animal`
--

CREATE TABLE `Animal` (
  `animal_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `species` varchar(50) DEFAULT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `medical_history` text DEFAULT NULL,
  `date_rescued` date DEFAULT NULL,
  `current_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Animal`
--

INSERT INTO `Animal` (`animal_id`, `name`, `species`, `breed`, `dob`, `age`, `gender`, `medical_history`, `date_rescued`, `current_status`) VALUES
(1, 'Max', 'Dog', 'Labrador', '2020-06-15', 4, 'Male', 'Hip dysplasia treatment', '2024-01-10', 'Available'),
(2, 'Bella', 'Cat', 'Siamese', '2021-09-02', 3, 'Female', 'Minor respiratory infection', '2024-02-14', 'In Treatment'),
(3, 'Charlie', 'Dog', 'Beagle', '2019-11-21', 5, 'Male', 'Healthy', '2024-03-25', 'Adopted'),
(4, 'Luna', 'Rabbit', NULL, NULL, NULL, NULL, 'Healthy', NULL, 'In Care'),
(5, 'Charlie', 'Dog', NULL, NULL, NULL, NULL, 'Ear infection treated', NULL, 'In Care'),
(6, 'Nala', 'Cat', NULL, NULL, NULL, NULL, 'Vaccinated', NULL, 'Rehomed'),
(7, 'Oreo', 'Dog', NULL, NULL, NULL, NULL, 'Recovering from surgery', NULL, 'In Care'),
(8, 'Daisy', 'Cat', NULL, NULL, NULL, NULL, 'Healthy', NULL, 'In Care'),
(9, 'Max', 'Dog', NULL, NULL, NULL, NULL, 'Vaccinated', NULL, 'In Care'),
(10, 'Snowy', 'Rabbit', NULL, NULL, NULL, NULL, 'Dental check pending', NULL, 'In Care');

-- --------------------------------------------------------

--
-- Table structure for table `Animal_Surrender`
--

CREATE TABLE `Animal_Surrender` (
  `surrender_id` int(11) NOT NULL,
  `animal_id` int(11) DEFAULT NULL,
  `owner_first_name` varchar(100) DEFAULT NULL,
  `owner_last_name` varchar(100) DEFAULT NULL,
  `owner_phone` varchar(20) DEFAULT NULL,
  `owner_email` varchar(100) DEFAULT NULL,
  `owner_address` varchar(200) DEFAULT NULL,
  `animal_type` varchar(50) DEFAULT NULL,
  `breed` varchar(100) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `surrender_date` date DEFAULT NULL,
  `reason_for_surrender` varchar(255) DEFAULT NULL,
  `medical_note` text DEFAULT NULL,
  `vaccination_status` varchar(50) DEFAULT NULL,
  `surrender_form_signed` varchar(10) DEFAULT NULL,
  `surrender_fee` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Animal_Surrender`
--

INSERT INTO `Animal_Surrender` (`surrender_id`, `animal_id`, `owner_first_name`, `owner_last_name`, `owner_phone`, `owner_email`, `owner_address`, `animal_type`, `breed`, `sex`, `date_of_birth`, `surrender_date`, `reason_for_surrender`, `medical_note`, `vaccination_status`, `surrender_form_signed`, `surrender_fee`) VALUES
(1, 1, 'Laura', 'Green', '555-1122', 'laura.green@example.com', '12 River Street', 'Dog', 'Labrador', 'Male', '2020-06-15', '2024-02-10', 'Owner relocating overseas', 'Minor hip stiffness', 'Up to date', 'Yes', 25.00),
(2, 2, 'David', 'Cole', '555-2299', 'david.cole@example.com', '44 West Avenue', 'Cat', 'Siamese', 'Female', '2021-09-02', '2024-03-01', 'Family allergy', 'Mild respiratory infection', 'Up to date', 'Yes', 20.00),
(3, 3, 'Mia', 'Reed', '555-8833', 'mia.reed@example.com', '99 Oak Lane', 'Dog', 'Beagle', 'Male', '2019-11-21', '2024-03-20', 'Behavioural issues', 'Healthy', 'Partially vaccinated', 'No', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `Campaign`
--

CREATE TABLE `Campaign` (
  `campaign_id` int(11) NOT NULL,
  `campaign_name` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `goal_amount` decimal(10,2) DEFAULT NULL,
  `total_raised` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Campaign`
--

INSERT INTO `Campaign` (`campaign_id`, `campaign_name`, `start_date`, `end_date`, `goal_amount`, `total_raised`) VALUES
(1, 'Winter Shelter Drive', '2024-01-10', '2024-03-01', 5000.00, 0.00),
(2, 'Food & Medicine Support', '2024-02-01', '2024-06-30', 8000.00, 0.00),
(3, 'New Shelter Building Fund', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Donation`
--

CREATE TABLE `Donation` (
  `donation_id` int(11) NOT NULL,
  `donor_id` int(11) NOT NULL,
  `donation_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Donation`
--

INSERT INTO `Donation` (`donation_id`, `donor_id`, `donation_date`, `amount`, `payment_method`) VALUES
(1, 1, '2024-01-15', 100.00, 'Credit Card'),
(2, 2, '2024-02-10', 250.00, 'Bank Transfer'),
(3, 3, '2024-02-18', 75.00, 'Cash'),
(4, 4, '2024-03-01', 500.00, 'Credit Card'),
(5, 5, '2024-03-12', 60.00, 'Mobile Payment'),
(6, 6, '2024-03-15', 140.00, 'Credit Card'),
(7, 7, '2024-04-05', 300.00, 'Bank Transfer'),
(8, 8, '2024-04-10', 40.00, 'Cash'),
(9, 9, '2024-04-25', 120.00, 'Credit Card'),
(10, 10, '2024-05-01', 200.00, 'Mobile Payment');

-- --------------------------------------------------------

--
-- Table structure for table `Donor`
--

CREATE TABLE `Donor` (
  `donor_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone_number` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Donor`
--

INSERT INTO `Donor` (`donor_id`, `first_name`, `last_name`, `email`, `phone_number`, `address`) VALUES
(1, 'John', 'Williams', 'johnw@gmail.com', NULL, NULL),
(2, 'Sarah', 'Brown', 'sarahb@gmail.com', NULL, NULL),
(3, 'David', 'Clark', 'dclark@yahoo.com', NULL, NULL),
(4, 'Emma', 'Jones', 'emma.jones@gmail.com', NULL, NULL),
(5, 'Michael', 'Smith', 'msmith@gmail.com', NULL, NULL),
(6, 'Sophia', 'Lee', 'sophialee@hotmail.com', NULL, NULL),
(7, 'Daniel', 'Taylor', 'danielt@gmail.com', NULL, NULL),
(8, 'Grace', 'Hall', 'gracehall@yahoo.com', NULL, NULL),
(9, 'Oliver', 'Adams', 'oadams@gmail.com', NULL, NULL),
(10, 'Chloe', 'Turner', 'chloeturner@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Medical_Record`
--

CREATE TABLE `Medical_Record` (
  `record_id` int(11) NOT NULL,
  `animal_id` int(11) DEFAULT NULL,
  `vet_id` int(11) DEFAULT NULL,
  `visit_id` int(11) DEFAULT NULL,
  `visit_date` date DEFAULT NULL,
  `reason_for_visit` varchar(255) DEFAULT NULL,
  `diagnosis` varchar(255) DEFAULT NULL,
  `treatment` varchar(255) DEFAULT NULL,
  `medication` varchar(255) DEFAULT NULL,
  `procedure` varchar(255) DEFAULT NULL,
  `vaccination_date` date DEFAULT NULL,
  `follow_up_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Medical_Record`
--

INSERT INTO `Medical_Record` (`record_id`, `animal_id`, `vet_id`, `visit_id`, `visit_date`, `reason_for_visit`, `diagnosis`, `treatment`, `medication`, `procedure`, `vaccination_date`, `follow_up_date`) VALUES
(1, 1, 101, 5001, '2024-02-12', 'Limping', 'Hip dysplasia', 'Physiotherapy', 'Pain relief tablets', NULL, '2024-02-12', '2024-03-01'),
(2, 2, 106, 5002, '2024-03-05', 'Coughing', 'Respiratory infection', 'Antibiotics', 'Amoxicillin', NULL, NULL, '2024-03-20');

-- --------------------------------------------------------

--
-- Table structure for table `Volunteer`
--

CREATE TABLE `Volunteer` (
  `volunteer_id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `skills` varchar(200) DEFAULT NULL,
  `availability` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Volunteer`
--

INSERT INTO `Volunteer` (`volunteer_id`, `first_name`, `last_name`, `phone`, `email`, `address`, `skills`, `availability`) VALUES
(1, 'Sarah', 'Johnson', '555-1122', 'sarahj@example.com', '12 River Street', 'Grooming, feeding', 'Weekends'),
(2, 'David', 'Nguyen', '555-8844', 'dang@example.com', '44 West Avenue', 'Training, cleaning', 'Weekdays'),
(3, 'Mira', 'Singh', '555-6677', 'mira.s@example.com', '99 Oak Lane', 'Medical support', 'Flexible');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Activity_Assignment`
--
ALTER TABLE `Activity_Assignment`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `volunteer_id` (`volunteer_id`),
  ADD KEY `campaign_id` (`campaign_id`),
  ADD KEY `animal_id` (`animal_id`);

--
-- Indexes for table `Adoption`
--
ALTER TABLE `Adoption`
  ADD PRIMARY KEY (`application_id`),
  ADD KEY `animal_id` (`animal_id`);

--
-- Indexes for table `Animal`
--
ALTER TABLE `Animal`
  ADD PRIMARY KEY (`animal_id`);

--
-- Indexes for table `Animal_Surrender`
--
ALTER TABLE `Animal_Surrender`
  ADD PRIMARY KEY (`surrender_id`),
  ADD KEY `animal_id` (`animal_id`);

--
-- Indexes for table `Campaign`
--
ALTER TABLE `Campaign`
  ADD PRIMARY KEY (`campaign_id`);

--
-- Indexes for table `Donation`
--
ALTER TABLE `Donation`
  ADD PRIMARY KEY (`donation_id`),
  ADD KEY `fk_donation_donor` (`donor_id`);

--
-- Indexes for table `Donor`
--
ALTER TABLE `Donor`
  ADD PRIMARY KEY (`donor_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`);

--
-- Indexes for table `Medical_Record`
--
ALTER TABLE `Medical_Record`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `animal_id` (`animal_id`);

--
-- Indexes for table `Volunteer`
--
ALTER TABLE `Volunteer`
  ADD PRIMARY KEY (`volunteer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Activity_Assignment`
--
ALTER TABLE `Activity_Assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Adoption`
--
ALTER TABLE `Adoption`
  MODIFY `application_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Animal`
--
ALTER TABLE `Animal`
  MODIFY `animal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Animal_Surrender`
--
ALTER TABLE `Animal_Surrender`
  MODIFY `surrender_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Campaign`
--
ALTER TABLE `Campaign`
  MODIFY `campaign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Donation`
--
ALTER TABLE `Donation`
  MODIFY `donation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `Donor`
--
ALTER TABLE `Donor`
  MODIFY `donor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `Medical_Record`
--
ALTER TABLE `Medical_Record`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Volunteer`
--
ALTER TABLE `Volunteer`
  MODIFY `volunteer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Activity_Assignment`
--
ALTER TABLE `Activity_Assignment`
  ADD CONSTRAINT `activity_assignment_ibfk_1` FOREIGN KEY (`volunteer_id`) REFERENCES `Volunteer` (`volunteer_id`),
  ADD CONSTRAINT `activity_assignment_ibfk_2` FOREIGN KEY (`campaign_id`) REFERENCES `Campaign` (`campaign_id`),
  ADD CONSTRAINT `activity_assignment_ibfk_3` FOREIGN KEY (`animal_id`) REFERENCES `Animal` (`animal_id`);

--
-- Constraints for table `Adoption`
--
ALTER TABLE `Adoption`
  ADD CONSTRAINT `adoption_ibfk_1` FOREIGN KEY (`animal_id`) REFERENCES `Animal` (`animal_id`);

--
-- Constraints for table `Animal_Surrender`
--
ALTER TABLE `Animal_Surrender`
  ADD CONSTRAINT `animal_surrender_ibfk_1` FOREIGN KEY (`animal_id`) REFERENCES `Animal` (`animal_id`);

--
-- Constraints for table `Donation`
--
ALTER TABLE `Donation`
  ADD CONSTRAINT `fk_donation_donor` FOREIGN KEY (`donor_id`) REFERENCES `Donor` (`donor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Medical_Record`
--
ALTER TABLE `Medical_Record`
  ADD CONSTRAINT `medical_record_ibfk_1` FOREIGN KEY (`animal_id`) REFERENCES `Animal` (`animal_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
