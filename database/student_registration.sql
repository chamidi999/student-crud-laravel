-- Student Registration System Database
-- Created: October 2024
-- Database: student_registration

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE DATABASE IF NOT EXISTS `student_registration` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `student_registration`;


DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` text NOT NULL,
  `course` varchar(100) NOT NULL,
  `enrollment_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `students_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO `students` (`id`, `first_name`, `last_name`, `email`, `phone`, `date_of_birth`, `address`, `course`, `enrollment_date`, `created_at`, `updated_at`) VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '+94771234567', '2000-05-15', '123 Main Street, Colombo 03, Sri Lanka', 'Computer Science', '2024-01-15', '2024-10-18 10:30:00', '2024-10-18 10:30:00'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '+94772345678', '1999-08-22', '456 Galle Road, Kalutara, Sri Lanka', 'Information Technology', '2024-01-20', '2024-10-18 10:35:00', '2024-10-18 10:35:00'),
(3, 'Michael', 'Johnson', 'michael.j@email.com', '+94773456789', '2001-03-10', '789 Kandy Road, Kandy, Sri Lanka', 'Software Engineering', '2024-02-01', '2024-10-18 10:40:00', '2024-10-18 10:40:00'),
(4, 'Sarah', 'Williams', 'sarah.w@email.com', '+94774567890', '2000-11-28', '321 Marine Drive, Negombo, Sri Lanka', 'Business Administration', '2024-02-15', '2024-10-18 10:45:00', '2024-10-18 10:45:00'),
(5, 'David', 'Brown', 'david.brown@email.com', '+94775678901', '1998-07-05', '654 Peradeniya Road, Peradeniya, Sri Lanka', 'Electrical Engineering', '2024-03-01', '2024-10-18 10:50:00', '2024-10-18 10:50:00');


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2024_10_18_000001_create_students_table', 1);


ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

COMMIT;