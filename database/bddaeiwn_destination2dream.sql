-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 13, 2025 at 12:42 PM
-- Server version: 10.6.22-MariaDB-cll-lve-log
-- PHP Version: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bddaeiwn_destination2dream`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `extra_details` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `subtitle`, `description`, `image`, `extra_details`, `created_at`, `updated_at`) VALUES
(1, 'Destination 2 Dream', 'A consultation firm', 'Our expert will help you on university admission, scholarships & visa processing to achieve your goal.', '841d58c4-4000-4537-aefd-5bc67cb7af8fIJ07w.png', '<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"text-align: justify; font-family: inherit;\">Whether you are a student dreaming of studying abroad or a young professional exploring global opportunities, you have come to the right place.</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"text-align: justify; font-family: inherit;\">Our <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a tabindex=\"-1\" class=\"html-a xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"color: rgb(56, 88, 152); cursor: pointer; margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"></a></span>goal is to assist ambitious students and professionals like You through every step of your journey from choosing the perfect university or work opportunities to securing scholarships or navigating visa processes!</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"text-align: justify; font-family: inherit;\">Why staying connected with us?</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"text-align: justify; font-family: inherit;\">• Expert tips and guidance on studying abroad with/without scholarship.</div><div dir=\"auto\" style=\"text-align: justify; font-family: inherit;\">• Up-to-date information about admission, job opportunities and visa.</div><div dir=\"auto\" style=\"text-align: justify; font-family: inherit;\">• Consultation for motivation and choosing right path.</div><div dir=\"auto\" style=\"text-align: justify; font-family: inherit;\">• Further assistance and advice in your destination country. </div><div dir=\"auto\" style=\"text-align: justify; font-family: inherit;\">• Personalized support to make your journey smooth and comfortable.</div></div>', '2025-01-05 09:40:34', '2025-01-05 10:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `role` enum('superadmin','manager','employee') NOT NULL DEFAULT 'superadmin',
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `email`, `password`, `image`, `role`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin', 'admin@gmail.com', '$2y$12$5VtsEbFQowHMhGHQLMGg6u9gVsvBCud5oZxSIzeyLYNscetmcgzz2', NULL, 'superadmin', 'active', 1, '2025-01-05 09:40:34', '2025-01-05 09:40:34');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appointment_times`
--

CREATE TABLE `appointment_times` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `call_to_actions`
--

CREATE TABLE `call_to_actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `call_to_actions`
--

INSERT INTO `call_to_actions` (`id`, `headline`, `button_text`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Book your appointment', 'Book here', 'https://destination2dream.com/appointment', '2025-01-05 09:40:34', '2025-01-05 18:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `support_email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `support_phone` varchar(255) DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `address`, `email`, `support_email`, `phone`, `support_phone`, `details`, `created_at`, `updated_at`) VALUES
(1, '<p>Head Office: #20, Road 11, Kollanpur, Dhaka, Bangladesh</p><p>Brach Office: Sylhet&nbsp;</p>', 'contact@destination2dream.com', 'info@destination2dream.com', 'Head Office: +8809639159354', 'Sylhet Office: +8801818393995', '<h2 align=\"center\" class=\"\">You can contact us by using the form below:</h2>', '2025-01-05 09:40:34', '2025-01-25 19:28:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 'James P.', 'pat@aneesho.com', '3128780396', 'Do you need help with graphic design - brochures, banners, flyers, advertisements, social media posts, logos etc? \r\n\r\nWe charge a low fixed monthly fee. Let me know if you\'re interested and would like to see our portfolio.', '2025-01-18 13:46:21', '2025-01-18 13:46:21'),
(2, 'Search Engine Index', 'jeter.eugene@yahoo.com', '7907746004', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '2025-02-04 22:42:10', '2025-02-04 22:42:10'),
(3, 'Tedrah', 'moqagides18@gmail.com', '83817582886', 'Hai, saya ingin tahu harga Anda.', '2025-02-05 19:40:45', '2025-02-05 19:40:45'),
(4, 'Tedrah', 'moqagides18@gmail.com', '87855473281', 'Aloha, makemake wau eʻike i kāu kumukūʻai.', '2025-02-08 01:37:26', '2025-02-08 01:37:26'),
(5, 'Robertrah', 'ixutikob077@gmail.com', '85768852217', 'Salam, qiymətinizi bilmək istədim.', '2025-02-10 20:50:50', '2025-02-10 20:50:50'),
(6, 'Georgerah', 'ibucezevuda439@gmail.com', '89283583814', 'Hi, roeddwn i eisiau gwybod eich pris.', '2025-02-11 18:20:58', '2025-02-11 18:20:58'),
(7, 'Georgerah', 'ibucezevuda439@gmail.com', '84677629161', 'Kaixo, zure prezioa jakin nahi nuen.', '2025-02-11 19:13:19', '2025-02-11 19:13:19'),
(8, 'MyName', 'glpsouck@do-not-respond.me', '226', 'XLa cyunBXOJ hLiYGClK diwILEeq ikGqw', '2025-02-12 22:02:21', '2025-02-12 22:02:21'),
(9, 'Alice', 'mjjpyvxx@do-not-respond.me', '755', 'FyYH XxgyQqOr tzISsdUQ', '2025-02-12 22:02:21', '2025-02-12 22:02:21'),
(10, 'Search Engine Index', 'henn.barney92@hotmail.com', '103981109', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '2025-02-15 00:50:21', '2025-02-15 00:50:21'),
(11, 'Johnrah', 'yawiviseya67@gmail.com', '88187235298', 'Dia duit, theastaigh uaim do phraghas a fháil.', '2025-02-16 12:38:20', '2025-02-16 12:38:20'),
(12, 'Tedrah', 'ocopesuq299@gmail.com', '86891123159', 'Zdravo, htio sam znati vašu cijenu.', '2025-02-21 10:59:52', '2025-02-21 10:59:52'),
(13, 'Robertrah', 'aferinohis056@gmail.com', '81791623599', 'Ciao, volevo sapere il tuo prezzo.', '2025-02-22 12:36:26', '2025-02-22 12:36:26'),
(14, 'Tedrah', 'ocopesuq299@gmail.com', '87584443459', 'Ողջույն, ես ուզում էի իմանալ ձեր գինը.', '2025-02-24 10:05:11', '2025-02-24 10:05:11'),
(15, 'Search Engine Index', 'submissions@searchindex.site', '1586040517', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.info/', '2025-02-25 04:43:41', '2025-02-25 04:43:41'),
(16, 'Georgerah', 'ocopesuq299@gmail.com', '88955943592', 'Salut, ech wollt Äre Präis wëssen.', '2025-02-25 13:09:59', '2025-02-25 13:09:59'),
(17, 'Georgerah', 'ocopesuq299@gmail.com', '86661344995', 'Ndewo, achọrọ m ịmara ọnụahịa gị.', '2025-02-26 01:32:49', '2025-02-26 01:32:49'),
(18, 'MichaelSem', 'nomin.momin+102d1@mail.ru', '85449687125', 'Nfwhdkjdwj rdqskwjfej wkdwodkwkifjejr okeowjrfiejfiej rowjedowkrfiejfi jrowkorwkjrfejfi jorkdworefoijfeijfowek okdwofjiejgierjfoe destination2dream.com', '2025-03-05 21:25:10', '2025-03-05 21:25:10'),
(19, 'Search Engine Index', 'submissions@searchindex.site', '425540768', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.info/', '2025-03-07 04:48:06', '2025-03-07 04:48:06'),
(20, 'Masonrah', 'duqotayowud23@gmail.com', '85116154218', 'Ciao, volevo sapere il tuo prezzo.', '2025-03-10 11:37:41', '2025-03-10 11:37:41'),
(21, 'Tedrah', 'ocopesuq299@gmail.com', '88789456494', 'Kaixo, zure prezioa jakin nahi nuen.', '2025-03-10 17:17:28', '2025-03-10 17:17:28'),
(22, 'Tedrah', 'ocopesuq299@gmail.com', '89768151762', 'Γεια σου, ήθελα να μάθω την τιμή σας.', '2025-03-10 18:50:39', '2025-03-10 18:50:39'),
(23, 'Robertrah', 'aferinohis056@gmail.com', '83515361586', 'Salam, qiymətinizi bilmək istədim.', '2025-03-12 11:12:14', '2025-03-12 11:12:14'),
(24, 'Georgerah', 'ocopesuq299@gmail.com', '83174323425', 'Hi, kam dashur të di çmimin tuaj', '2025-03-12 15:25:30', '2025-03-12 15:25:30'),
(25, 'Georgerah', 'ocopesuq299@gmail.com', '85178313664', 'Ողջույն, ես ուզում էի իմանալ ձեր գինը.', '2025-03-14 07:45:37', '2025-03-14 07:45:37'),
(26, 'Johnrah', 'duqotayowud23@gmail.com', '88345437222', 'Hallo, ek wou jou prys ken.', '2025-03-16 01:49:15', '2025-03-16 01:49:15'),
(27, 'Search Engine Index', 'urner.jeremy@googlemail.com', '529439594', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '2025-03-17 04:19:29', '2025-03-17 04:19:29'),
(28, 'Ameliarah', 'zekisuquc419@gmail.com', '82217758422', 'Sveiki, aš norėjau sužinoti jūsų kainą.', '2025-03-19 15:38:28', '2025-03-19 15:38:28'),
(29, 'Tedrah', 'aferinohis056@gmail.com', '89744818363', 'Xin chào, tôi muốn biết giá của bạn.', '2025-03-25 07:29:55', '2025-03-25 07:29:55'),
(30, 'Robertrah', 'aferinohis056@gmail.com', '86742516732', 'Hæ, ég vildi vita verð þitt.', '2025-03-26 16:53:00', '2025-03-26 16:53:00'),
(31, 'Tedrah', 'aferinohis056@gmail.com', '85917319968', 'Sveiki, es gribēju zināt savu cenu.', '2025-03-26 18:58:22', '2025-03-26 18:58:22'),
(32, 'Search Engine Index', 'samantha.fong@googlemail.com', '7983710843', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '2025-03-26 23:08:32', '2025-03-26 23:08:32'),
(33, 'Georgerah', 'xiceruxuk02@gmail.com', '82976451849', 'হাই, আমি আপনার মূল্য জানতে চেয়েছিলাম.', '2025-03-27 08:21:43', '2025-03-27 08:21:43'),
(34, 'Georgerah', 'xiceruxuk02@gmail.com', '84454832761', 'Hola, volia saber el seu preu.', '2025-03-27 17:52:32', '2025-03-27 17:52:32'),
(35, 'Robertrah', 'aferinohis056@gmail.com', '89992514358', 'Salut, ech wollt Äre Präis wëssen.', '2025-04-03 08:06:42', '2025-04-03 08:06:42'),
(36, 'Search Engine Index', 'stefanie.litchfield@msn.com', '6472077293', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '2025-04-06 05:18:04', '2025-04-06 05:18:04'),
(37, 'Search Engine Index', 'submissions@searchindex.site', '3377960548', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.info/', '2025-04-06 12:34:43', '2025-04-06 12:34:43'),
(38, 'Johnrah', 'zekisuquc419@gmail.com', '88441372419', 'Sawubona, bengifuna ukwazi intengo yakho.', '2025-04-08 09:14:08', '2025-04-08 09:14:08'),
(39, 'Tedrah', 'aferinohis056@gmail.com', '81148775711', 'Hæ, ég vildi vita verð þitt.', '2025-04-09 02:29:04', '2025-04-09 02:29:04'),
(40, 'Tedrah', 'aferinohis056@gmail.com', '84648938736', 'Ողջույն, ես ուզում էի իմանալ ձեր գինը.', '2025-04-14 01:32:37', '2025-04-14 01:32:37'),
(41, 'Georgerah', 'xiceruxuk02@gmail.com', '88812744529', 'Sveiki, es gribēju zināt savu cenu.', '2025-04-15 17:06:43', '2025-04-15 17:06:43'),
(42, 'Search Engine Index', 'register@escmb.com', '2176478447', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '2025-04-16 01:56:51', '2025-04-16 01:56:51'),
(43, 'Ameliarah', 'zekisuquc419@gmail.com', '82366458254', 'Ola, quería saber o seu prezo.', '2025-04-17 00:39:44', '2025-04-17 00:39:44'),
(44, 'John', 'byccrowl@dont-reply.me', '774', 'rAjRRJR AccZidwI vlKkMdA oLJ gJKWaU RKelTcq', '2025-04-20 12:21:56', '2025-04-20 12:21:56'),
(45, 'Alice', 'enyyiuhh@dont-reply.me', '391', 'AYfiHRx ZeHcYPu meeSPexd', '2025-04-20 12:21:56', '2025-04-20 12:21:56'),
(46, 'NATREGTEGH583241NEWETREWT', 'rhiqlcvs@aurevoirmail.com', '83518236815', 'MEYJYTJY583241MAERWETT', '2025-04-22 00:26:47', '2025-04-22 00:26:47'),
(47, 'Georgerah', 'xiceruxuk02@gmail.com', '89995947778', 'Salam, qiymətinizi bilmək istədim.', '2025-04-23 15:58:33', '2025-04-23 15:58:33'),
(48, 'Djohnrah', 'aferinohis056@gmail.com', '85769691535', 'Zdravo, htio sam znati vašu cijenu.', '2025-04-24 03:19:53', '2025-04-24 03:19:53'),
(49, 'Search Engine Index', 'register@escmb.com', '3032547377', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '2025-04-25 20:05:35', '2025-04-25 20:05:35'),
(50, 'TommyTic', 'xrumer23bon@gmail.com', '87341324659', 'hi', '2025-04-26 01:20:32', '2025-04-26 01:20:32'),
(51, 'Tedrah', 'aferinohis056@gmail.com', '83674841837', 'হাই, আমি আপনার মূল্য জানতে চেয়েছিলাম.', '2025-04-26 04:25:33', '2025-04-26 04:25:33'),
(52, 'Masonrah', 'zekisuquc419@gmail.com', '89663681212', 'Γεια σου, ήθελα να μάθω την τιμή σας.', '2025-04-26 12:30:31', '2025-04-26 12:30:31'),
(53, 'MyName', 'baodqhxu@formtest.guru', '318', 'FuS EJEmJmHh xfvth SjhWcjbW zouuG', '2025-04-27 20:22:10', '2025-04-27 20:22:10'),
(54, 'Alice', 'apmoqspy@formtest.guru', '684', 'tnJWSyqf MQqITchF xpdRUBA vVXfk', '2025-04-27 20:22:10', '2025-04-27 20:22:10'),
(55, 'Tedrah', 'aferinohis056@gmail.com', '89227845177', 'Dia duit, theastaigh uaim do phraghas a fháil.', '2025-05-03 20:40:33', '2025-05-03 20:40:33'),
(56, 'Tedrah', 'aferinohis056@gmail.com', '81644987515', 'Hola, quería saber tu precio..', '2025-05-04 00:59:57', '2025-05-04 00:59:57'),
(57, 'Johnrah', 'zekisuquc419@gmail.com', '82143453616', 'Szia, meg akartam tudni az árát.', '2025-05-04 21:46:28', '2025-05-04 21:46:28'),
(58, 'Georgerah', 'xiceruxuk02@gmail.com', '89271841556', 'Ndewo, achọrọ m ịmara ọnụahịa gị.', '2025-05-05 00:31:28', '2025-05-05 00:31:28'),
(59, 'Search Engine Index', 'register@escmb.com', '219755350', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '2025-05-05 22:44:50', '2025-05-05 22:44:50'),
(60, 'Alice', 'tsyseaqj@formtest.guru', '17', 'fZGCIR VfaWG mdn LWv bkiFCTK', '2025-05-06 20:24:53', '2025-05-06 20:24:53'),
(61, 'MyName', 'xzlihdlt@formtest.guru', '589', 'LGjgWcOF Uxa lNR Blrlu', '2025-05-06 20:24:53', '2025-05-06 20:24:53'),
(62, 'Son Sand 30EURo live https://sexdolls.com', 's0910367764@gmail.com', '86225589992', 'Son Sand 30EURo live https://sexdolls.com', '2025-05-08 06:24:02', '2025-05-08 06:24:02'),
(63, 'Hello', 'nvayzxom@dont-reply.me', '217', 'ALHdI bsBFCGZ gmarYe fmj jBSS', '2025-05-11 09:48:02', '2025-05-11 09:48:02'),
(64, 'Hello', 'dvxqpuot@dont-reply.me', '233', 'vkrrYxka QujPTw NHpGMxi bKgdvNLE pzkcm VUbC udg', '2025-05-11 09:48:02', '2025-05-11 09:48:02'),
(65, 'Search Engine Index', 'register@escmb.com', '611336721', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '2025-05-15 21:03:10', '2025-05-15 21:03:10'),
(66, 'Simonrah', 'aferinohis056@gmail.com', '89315526397', 'হাই, আমি আপনার মূল্য জানতে চেয়েছিলাম.', '2025-05-17 14:00:59', '2025-05-17 14:00:59'),
(67, 'Search Engine Index', 'register@escmb.com', '684170384', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '2025-05-25 21:48:36', '2025-05-25 21:48:36'),
(68, 'klpigpsoiy', 'htttitme@testform.xyz', '1435', 'qwlydwhgxhulxjerwrijspejftgtmn', '2025-05-28 06:54:52', '2025-05-28 06:54:52'),
(69, 'Charlierah', 'yawiviseya67@gmail.com', '81858984188', 'Прывітанне, я хацеў даведацца Ваш прайс.', '2025-05-29 13:07:59', '2025-05-29 13:07:59'),
(70, 'Leerah', 'yawiviseya67@gmail.com', '85372241348', 'Aloha, makemake wau eʻike i kāu kumukūʻai.', '2025-05-29 16:44:48', '2025-05-29 16:44:48'),
(71, 'RobertLat', 'nomin.momin+492u0@mail.ru', '86925154257', 'Gwhduwdjiwhduwh uhiwdjiwjdeufhu jikodwfiewfiwjdjw jidwjosqdijwifi jiwdowidqoiowufeugewi uiwjdiwurfuwyruewiai fwhuwhwhfuwhduwijdw destination2dream.com', '2025-05-30 10:24:10', '2025-05-30 10:24:10'),
(72, 'Search Engine Index', 'register@escmb.com', '31797761', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '2025-06-01 23:25:09', '2025-06-01 23:25:09'),
(73, 'John', 'iqecwrbe@dont-reply.me', '834', 'kLEPtVl NSeroc DYmgg NOcWyK zmcfu EIQNmPi mivtcnYp', '2025-06-02 14:17:44', '2025-06-02 14:17:44'),
(74, 'Leerah', 'yawiviseya67@gmail.com', '85389617486', 'Hai, saya ingin tahu harga Anda.', '2025-06-03 16:11:36', '2025-06-03 16:11:36'),
(75, 'Charlierah', 'yawiviseya67@gmail.com', '81961135371', 'Hej, jeg ønskede at kende din pris.', '2025-06-04 21:05:08', '2025-06-04 21:05:08'),
(76, 'Leerah', 'zekisuquc419@gmail.com', '83523874125', 'Здравейте, исках да знам цената ви.', '2025-06-05 12:53:59', '2025-06-05 12:53:59'),
(77, 'Leerah', 'zekisuquc419@gmail.com', '84851843713', 'Hi, I wanted to know your price.', '2025-06-10 14:06:42', '2025-06-10 14:06:42'),
(78, 'Search Engine Index', 'register@escmb.com', '3493571022', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '2025-06-11 22:00:53', '2025-06-11 22:00:53'),
(79, 'Doctorrrrr', 'rmcusack@nbnet.nb.ca', '89472119417', 'Need more clients for your business? Order targeted contact data from local establishments and watch your outreach soar. https://telegra.ph/Personalized-Contact-Data-Extraction-from-Google-Maps-10-03 (or telegram: @chamerion)', '2025-06-13 18:21:20', '2025-06-13 18:21:20'),
(80, 'Simonrah', 'yawiviseya67@gmail.com', '87839876118', 'Hæ, ég vildi vita verð þitt.', '2025-06-15 02:25:37', '2025-06-15 02:25:37'),
(81, 'Charlierah', 'yawiviseya67@gmail.com', '89373472473', 'Ndewo, achọrọ m ịmara ọnụahịa gị.', '2025-06-15 08:24:59', '2025-06-15 08:24:59'),
(82, 'Leerah', 'yawiviseya67@gmail.com', '83494845971', 'Здравейте, исках да знам цената ви.', '2025-06-18 17:23:30', '2025-06-18 17:23:30'),
(83, 'Simonrah', 'yawiviseya67@gmail.com', '86217894616', 'Xin chào, tôi muốn biết giá của bạn.', '2025-06-21 16:48:26', '2025-06-21 16:48:26'),
(84, 'Search Engine Index', 'register@escmb.com', '9819554484', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '2025-06-22 01:50:25', '2025-06-22 01:50:25'),
(85, 'Gift for registration>>> https://krakenpartners.net/ru/track/1174', 'raya.gritsenko.91@mail.ru', '84277347374', 'Join today and receive an amazing bonus! It’s easy to start winning with us!  - https://krakenpartners.net/ru/track/1174', '2025-06-23 10:07:30', '2025-06-23 10:07:30'),
(86, 'Leerah', 'dinanikolskaya99@gmail.com', '88627172137', 'Sveiki, aš norėjau sužinoti jūsų kainą.', '2025-06-24 06:58:06', '2025-06-24 06:58:06'),
(87, 'Georgerah', 'yawiviseya67@gmail.com', '86775632861', 'Hi, roeddwn i eisiau gwybod eich pris.', '2025-06-25 22:37:55', '2025-06-25 22:37:55'),
(88, 'Edmundo Shapcott', 'edmundo.shapcott@hotmail.com', '668618889', '30-Second Trick Turns My Phone Into a $500/Day Cash Machine”\r\nJust Tap The \"Secret Button\" To Cash In From This $385 Billion WiFi Profit Loophole!\r\n\r\nAnd much more ... http://www.novaai.expert/PassiveIncome', '2025-06-26 19:58:03', '2025-06-26 19:58:03'),
(89, 'Charlierah', 'yawiviseya67@gmail.com', '82943546547', 'Szia, meg akartam tudni az árát.', '2025-06-26 22:44:57', '2025-06-26 22:44:57'),
(90, 'Georgerah', 'yawiviseya67@gmail.com', '89886194619', 'হাই, আমি আপনার মূল্য জানতে চেয়েছিলাম.', '2025-06-27 14:41:53', '2025-06-27 14:41:53'),
(91, 'WilliamPaism', 'fernt71@hotmail.com', '86884538585', 'IMPORTANT MESSAGE! LAST CHANCE: SECURE YOUR $199,155.12 IN WINNINGS https://script.google.com/macros/s/AKfycbwu14dUMFk2RX0JLolAG-L4pl_OYkisK0HNZuu6BBo9irjJjAIB3f-dJyP6SfglqeNv/exec/8z7k0s2e/7y5t/k/c0/0e2j7j5u/6r5d/h/26/6w8i9l2w/4n8y/r/j9', '2025-06-27 21:55:28', '2025-06-27 21:55:28'),
(92, 'WilliamPaism', 'fernt71@hotmail.com', '81394137318', 'IMPORTANT MESSAGE! LAST CHANCE: SECURE YOUR $199,155.12 IN WINNINGS https://script.google.com/macros/s/AKfycbwu14dUMFk2RX0JLolAG-L4pl_OYkisK0HNZuu6BBo9irjJjAIB3f-dJyP6SfglqeNv/exec/8z7k0s2e/7y5t/k/c0/0e2j7j5u/6r5d/h/26/6w8i9l2w/4n8y/r/j9', '2025-06-27 21:55:30', '2025-06-27 21:55:30'),
(93, 'WilliamPaism', 'fernt71@hotmail.com', '82849383234', 'IMPORTANT MESSAGE! LAST CHANCE: SECURE YOUR $199,155.12 IN WINNINGS https://script.google.com/macros/s/AKfycbwu14dUMFk2RX0JLolAG-L4pl_OYkisK0HNZuu6BBo9irjJjAIB3f-dJyP6SfglqeNv/exec/8z7k0s2e/7y5t/k/c0/0e2j7j5u/6r5d/h/26/6w8i9l2w/4n8y/r/j9', '2025-06-27 21:55:32', '2025-06-27 21:55:32'),
(94, 'WilliamPaism', 'fernt71@hotmail.com', '85562732148', 'IMPORTANT MESSAGE! LAST CHANCE: SECURE YOUR $199,155.12 IN WINNINGS https://script.google.com/macros/s/AKfycbwu14dUMFk2RX0JLolAG-L4pl_OYkisK0HNZuu6BBo9irjJjAIB3f-dJyP6SfglqeNv/exec/8z7k0s2e/7y5t/k/c0/0e2j7j5u/6r5d/h/26/6w8i9l2w/4n8y/r/j9', '2025-06-27 21:55:33', '2025-06-27 21:55:33'),
(95, 'WilliamPaism', 'fernt71@hotmail.com', '89527619771', 'IMPORTANT MESSAGE! LAST CHANCE: SECURE YOUR $199,155.12 IN WINNINGS https://script.google.com/macros/s/AKfycbwu14dUMFk2RX0JLolAG-L4pl_OYkisK0HNZuu6BBo9irjJjAIB3f-dJyP6SfglqeNv/exec/8z7k0s2e/7y5t/k/c0/0e2j7j5u/6r5d/h/26/6w8i9l2w/4n8y/r/j9', '2025-06-27 21:55:36', '2025-06-27 21:55:36'),
(96, 'Leerah', 'dinanikolskaya99@gmail.com', '86616331845', 'Hi, kam dashur të di çmimin tuaj', '2025-06-27 22:02:07', '2025-06-27 22:02:07'),
(97, 'Leerah', 'yawiviseya67@gmail.com', '82536617425', 'Salut, ech wollt Äre Präis wëssen.', '2025-06-29 23:05:33', '2025-06-29 23:05:33'),
(98, 'WilliamPaism', 'ayerelinda1989@gmail.com', '88332664248', 'IMPORTANT MESSAGE! Don’t Lose $199,925.11 – Withdraw Immediately https://script.google.com/macros/s/AKfycbyeynD6XdEKc1UurAu44xf2MKX_N8VZx79LcE8P6z_VEZMHB9BZRveuv7u28_sE4UBt/exec/2v0i8g4e/4x9r/o/do/5s3p9s1i/5m6g/8/ap/0s3t8h4u/6v6r/x/3o', '2025-06-30 00:22:03', '2025-06-30 00:22:03'),
(99, 'WilliamPaism', 'ayerelinda1989@gmail.com', '81957944532', 'IMPORTANT MESSAGE! Don’t Lose $199,925.11 – Withdraw Immediately https://script.google.com/macros/s/AKfycbyeynD6XdEKc1UurAu44xf2MKX_N8VZx79LcE8P6z_VEZMHB9BZRveuv7u28_sE4UBt/exec/2v0i8g4e/4x9r/o/do/5s3p9s1i/5m6g/8/ap/0s3t8h4u/6v6r/x/3o', '2025-06-30 00:22:06', '2025-06-30 00:22:06'),
(100, 'WilliamPaism', 'ayerelinda1989@gmail.com', '83612674337', 'IMPORTANT MESSAGE! Don’t Lose $199,925.11 – Withdraw Immediately https://script.google.com/macros/s/AKfycbyeynD6XdEKc1UurAu44xf2MKX_N8VZx79LcE8P6z_VEZMHB9BZRveuv7u28_sE4UBt/exec/2v0i8g4e/4x9r/o/do/5s3p9s1i/5m6g/8/ap/0s3t8h4u/6v6r/x/3o', '2025-06-30 00:22:08', '2025-06-30 00:22:08'),
(101, 'WilliamPaism', 'ayerelinda1989@gmail.com', '85642187514', 'IMPORTANT MESSAGE! Don’t Lose $199,925.11 – Withdraw Immediately https://script.google.com/macros/s/AKfycbyeynD6XdEKc1UurAu44xf2MKX_N8VZx79LcE8P6z_VEZMHB9BZRveuv7u28_sE4UBt/exec/2v0i8g4e/4x9r/o/do/5s3p9s1i/5m6g/8/ap/0s3t8h4u/6v6r/x/3o', '2025-06-30 00:22:11', '2025-06-30 00:22:11'),
(102, 'WilliamPaism', 'ayerelinda1989@gmail.com', '86422925823', 'IMPORTANT MESSAGE! Don’t Lose $199,925.11 – Withdraw Immediately https://script.google.com/macros/s/AKfycbyeynD6XdEKc1UurAu44xf2MKX_N8VZx79LcE8P6z_VEZMHB9BZRveuv7u28_sE4UBt/exec/2v0i8g4e/4x9r/o/do/5s3p9s1i/5m6g/8/ap/0s3t8h4u/6v6r/x/3o', '2025-06-30 00:22:13', '2025-06-30 00:22:13'),
(103, 'Leerah', 'dinanikolskaya99@gmail.com', '89227287192', 'হাই, আমি আপনার মূল্য জানতে চেয়েছিলাম.', '2025-07-01 14:33:13', '2025-07-01 14:33:13'),
(104, 'Search Engine Index', 'register@escmb.com', '43', 'Hello,\r\n\r\nfor your website do be displayed in searches your domain needs to be indexed in the Google Search Index.\r\n\r\nTo add your domain to Google Search Index now, please visit \r\n\r\nhttps://SearchRegister.net', '2025-07-01 23:43:40', '2025-07-01 23:43:40'),
(105, 'WilliamPaism', 'marshabellatrey@gmail.com', '83722995111', 'URGENT! Time is of the Essence: Collect Your $199,925.32 Now https://script.google.com/macros/s/AKfycbwKIUSw62Hw-c70mk2HuxkdOxrYrqX5-hZkq_qU0v2psUTj4WPho5zWBSoaOPrP2lTs/exec/3w1g6j3u/6m9z/v/y2/3c0y7l3i/5x0r/1/5w/0c5i8a1o/6q9t/n/y0', '2025-07-02 10:18:52', '2025-07-02 10:18:52'),
(106, 'WilliamPaism', 'marshabellatrey@gmail.com', '86115198352', 'URGENT! Time is of the Essence: Collect Your $199,925.32 Now https://script.google.com/macros/s/AKfycbwKIUSw62Hw-c70mk2HuxkdOxrYrqX5-hZkq_qU0v2psUTj4WPho5zWBSoaOPrP2lTs/exec/3w1g6j3u/6m9z/v/y2/3c0y7l3i/5x0r/1/5w/0c5i8a1o/6q9t/n/y0', '2025-07-02 10:18:54', '2025-07-02 10:18:54'),
(107, 'WilliamPaism', 'marshabellatrey@gmail.com', '88245968329', 'URGENT! Time is of the Essence: Collect Your $199,925.32 Now https://script.google.com/macros/s/AKfycbwKIUSw62Hw-c70mk2HuxkdOxrYrqX5-hZkq_qU0v2psUTj4WPho5zWBSoaOPrP2lTs/exec/3w1g6j3u/6m9z/v/y2/3c0y7l3i/5x0r/1/5w/0c5i8a1o/6q9t/n/y0', '2025-07-02 10:18:56', '2025-07-02 10:18:56'),
(108, 'WilliamPaism', 'marshabellatrey@gmail.com', '85332712416', 'URGENT! Time is of the Essence: Collect Your $199,925.32 Now https://script.google.com/macros/s/AKfycbwKIUSw62Hw-c70mk2HuxkdOxrYrqX5-hZkq_qU0v2psUTj4WPho5zWBSoaOPrP2lTs/exec/3w1g6j3u/6m9z/v/y2/3c0y7l3i/5x0r/1/5w/0c5i8a1o/6q9t/n/y0', '2025-07-02 10:18:58', '2025-07-02 10:18:58'),
(109, 'WilliamPaism', 'marshabellatrey@gmail.com', '83698925567', 'URGENT! Time is of the Essence: Collect Your $199,925.32 Now https://script.google.com/macros/s/AKfycbwKIUSw62Hw-c70mk2HuxkdOxrYrqX5-hZkq_qU0v2psUTj4WPho5zWBSoaOPrP2lTs/exec/3w1g6j3u/6m9z/v/y2/3c0y7l3i/5x0r/1/5w/0c5i8a1o/6q9t/n/y0', '2025-07-02 10:19:00', '2025-07-02 10:19:00'),
(110, 'Leerah', 'zekisuquc419@gmail.com', '84829545775', 'Прывітанне, я хацеў даведацца Ваш прайс.', '2025-07-03 14:01:15', '2025-07-03 14:01:15'),
(111, 'Leerah', 'zekisuquc419@gmail.com', '88752185384', 'Zdravo, htio sam znati vašu cijenu.', '2025-07-03 19:21:34', '2025-07-03 19:21:34'),
(112, 'Charlierah', 'irinademenkova86@gmail.com', '88279189598', 'Sveiki, es gribēju zināt savu cenu.', '2025-07-04 06:20:58', '2025-07-04 06:20:58'),
(113, 'EdwardOpila', 'hmuspbdh@rodriguez-boyer.net', '89838321145', 'Google Ads intends to pay you $144,000 for viewing ads on Google services - https://bananaguide.com/thru.php?mode=article&article_ID=96023&url=https%3A%2F%2Ftelegra.ph%2Fgmt-06-12%3F3788', '2025-07-05 00:08:29', '2025-07-05 00:08:29'),
(114, 'EdwardOpila', 'hmuspbdh@rodriguez-boyer.net', '82322576647', 'Google Ads intends to pay you $144,000 for viewing ads on Google services - https://bananaguide.com/thru.php?mode=article&article_ID=96023&url=https%3A%2F%2Ftelegra.ph%2Fgmt-06-12%3F3788', '2025-07-05 00:08:31', '2025-07-05 00:08:31'),
(115, 'EdwardOpila', 'hmuspbdh@rodriguez-boyer.net', '84929575612', 'Google Ads intends to pay you $144,000 for viewing ads on Google services - https://bananaguide.com/thru.php?mode=article&article_ID=96023&url=https%3A%2F%2Ftelegra.ph%2Fgmt-06-12%3F3788', '2025-07-05 00:08:34', '2025-07-05 00:08:34'),
(116, 'EdwardOpila', 'hmuspbdh@rodriguez-boyer.net', '81837661561', 'Google Ads intends to pay you $144,000 for viewing ads on Google services - https://bananaguide.com/thru.php?mode=article&article_ID=96023&url=https%3A%2F%2Ftelegra.ph%2Fgmt-06-12%3F3788', '2025-07-05 00:08:36', '2025-07-05 00:08:36'),
(117, 'EdwardOpila', 'hmuspbdh@rodriguez-boyer.net', '87964476836', 'Google Ads intends to pay you $144,000 for viewing ads on Google services - https://bananaguide.com/thru.php?mode=article&article_ID=96023&url=https%3A%2F%2Ftelegra.ph%2Fgmt-06-12%3F3788', '2025-07-05 00:08:38', '2025-07-05 00:08:38'),
(118, 'Leerah', 'dinanikolskaya99@gmail.com', '86262613943', 'Ndewo, achọrọ m ịmara ọnụahịa gị.', '2025-07-06 11:05:03', '2025-07-06 11:05:03'),
(119, 'Leerah', 'dinanikolskaya99@gmail.com', '86621356875', 'Aloha, makemake wau eʻike i kāu kumukūʻai.', '2025-07-06 13:39:53', '2025-07-06 13:39:53'),
(120, 'WilliamPaism', 'cccwlogr@kelley.com', '88783376722', 'IMPORTANT! IMMEDIATE RESPONSE NEEDED: CLAIM YOUR $199,765.14 https://script.google.com/macros/s/AKfycbwYcikykiwjimnP725lTE_6lD76gaSV88a6ZgRxoqDXs0upQfGXtZQ7fay168-rJKWd/exec/3v1o8d2t/7c9s/9/ct/2f1l7g3r/3e7g/w/y2/1v2i8s4r/5z6d/o/c8', '2025-07-06 16:29:20', '2025-07-06 16:29:20'),
(121, 'WilliamPaism', 'cccwlogr@kelley.com', '85853724759', 'IMPORTANT! IMMEDIATE RESPONSE NEEDED: CLAIM YOUR $199,765.14 https://script.google.com/macros/s/AKfycbwYcikykiwjimnP725lTE_6lD76gaSV88a6ZgRxoqDXs0upQfGXtZQ7fay168-rJKWd/exec/3v1o8d2t/7c9s/9/ct/2f1l7g3r/3e7g/w/y2/1v2i8s4r/5z6d/o/c8', '2025-07-06 16:29:22', '2025-07-06 16:29:22'),
(122, 'WilliamPaism', 'cccwlogr@kelley.com', '83162971428', 'IMPORTANT! IMMEDIATE RESPONSE NEEDED: CLAIM YOUR $199,765.14 https://script.google.com/macros/s/AKfycbwYcikykiwjimnP725lTE_6lD76gaSV88a6ZgRxoqDXs0upQfGXtZQ7fay168-rJKWd/exec/3v1o8d2t/7c9s/9/ct/2f1l7g3r/3e7g/w/y2/1v2i8s4r/5z6d/o/c8', '2025-07-06 16:29:24', '2025-07-06 16:29:24'),
(123, 'WilliamPaism', 'cccwlogr@kelley.com', '87261773913', 'IMPORTANT! IMMEDIATE RESPONSE NEEDED: CLAIM YOUR $199,765.14 https://script.google.com/macros/s/AKfycbwYcikykiwjimnP725lTE_6lD76gaSV88a6ZgRxoqDXs0upQfGXtZQ7fay168-rJKWd/exec/3v1o8d2t/7c9s/9/ct/2f1l7g3r/3e7g/w/y2/1v2i8s4r/5z6d/o/c8', '2025-07-06 16:29:26', '2025-07-06 16:29:26'),
(124, 'WilliamPaism', 'cccwlogr@kelley.com', '85813991135', 'IMPORTANT! IMMEDIATE RESPONSE NEEDED: CLAIM YOUR $199,765.14 https://script.google.com/macros/s/AKfycbwYcikykiwjimnP725lTE_6lD76gaSV88a6ZgRxoqDXs0upQfGXtZQ7fay168-rJKWd/exec/3v1o8d2t/7c9s/9/ct/2f1l7g3r/3e7g/w/y2/1v2i8s4r/5z6d/o/c8', '2025-07-06 16:29:28', '2025-07-06 16:29:28'),
(125, 'WilliamPaism', 'stevenhabel1650@yahoo.com', '82184642472', 'A Special $200,165.97 Just for You! http://inoon360.com/log/link.asp?tid=web_log&adid=57&url=https%3A%2F%2Ftelegra.ph%2Fnfs-06-11%3F3527', '2025-07-09 04:35:12', '2025-07-09 04:35:12'),
(126, 'WilliamPaism', 'stevenhabel1650@yahoo.com', '82563329421', 'A Special $200,165.97 Just for You! http://inoon360.com/log/link.asp?tid=web_log&adid=57&url=https%3A%2F%2Ftelegra.ph%2Fnfs-06-11%3F3527', '2025-07-09 04:35:14', '2025-07-09 04:35:14'),
(127, 'WilliamPaism', 'stevenhabel1650@yahoo.com', '89551165314', 'A Special $200,165.97 Just for You! http://inoon360.com/log/link.asp?tid=web_log&adid=57&url=https%3A%2F%2Ftelegra.ph%2Fnfs-06-11%3F3527', '2025-07-09 04:35:16', '2025-07-09 04:35:16'),
(128, 'WilliamPaism', 'stevenhabel1650@yahoo.com', '85317884368', 'A Special $200,165.97 Just for You! http://inoon360.com/log/link.asp?tid=web_log&adid=57&url=https%3A%2F%2Ftelegra.ph%2Fnfs-06-11%3F3527', '2025-07-09 04:35:18', '2025-07-09 04:35:18'),
(129, 'WilliamPaism', 'stevenhabel1650@yahoo.com', '89373283365', 'A Special $200,165.97 Just for You! http://inoon360.com/log/link.asp?tid=web_log&adid=57&url=https%3A%2F%2Ftelegra.ph%2Fnfs-06-11%3F3527', '2025-07-09 04:35:19', '2025-07-09 04:35:19'),
(130, 'maximbukanov', 'info@financequarter.com', '85861332128', 'Success starts with accurate information! Order data extraction and enhance your chances of growth. https://telegra.ph/Personalized-Contact-Data-Extraction-from-Google-Maps-10-03 (or telegram: @chamerion)', '2025-07-09 08:21:04', '2025-07-09 08:21:04'),
(131, 'Josefa Kiddle', 'kiddle.josefa@gmail.com', '21229495', 'Create High-Quality Ebooks up to 180 Pages in Minutes Without Writing a Single Word Yourself…\r\n\r\nThe Ebook Gold Rush Isn’t Over…\r\nIt’s Just Getting Smarter\r\n\r\nmore ... https://www.novaai.expert/eBookWriterAI', '2025-07-09 09:08:13', '2025-07-09 09:08:13'),
(132, 'WilliamPaism', 'michealpoole88@gmail.com', '89589656486', 'ACT FAST: COLLECT YOUR $200,515.27 TODAY https://script.google.com/macros/s/AKfycbw8T5nZjd1GBPxt1Vp4VPnP32Xpsp2H6cD7lVecYOcGKCbho_2etRW2m1tD1u8i5G6JxA/exec/4r2b6g5q/4t0q/g/g2/6a1u6s1p/7x9s/0/29/4w9l9a5i/3r7r/u/p4', '2025-07-10 21:14:39', '2025-07-10 21:14:39'),
(133, 'WilliamPaism', 'michealpoole88@gmail.com', '85769456163', 'ACT FAST: COLLECT YOUR $200,515.27 TODAY https://script.google.com/macros/s/AKfycbw8T5nZjd1GBPxt1Vp4VPnP32Xpsp2H6cD7lVecYOcGKCbho_2etRW2m1tD1u8i5G6JxA/exec/4r2b6g5q/4t0q/g/g2/6a1u6s1p/7x9s/0/29/4w9l9a5i/3r7r/u/p4', '2025-07-10 21:14:43', '2025-07-10 21:14:43'),
(134, 'WilliamPaism', 'michealpoole88@gmail.com', '88658736514', 'ACT FAST: COLLECT YOUR $200,515.27 TODAY https://script.google.com/macros/s/AKfycbw8T5nZjd1GBPxt1Vp4VPnP32Xpsp2H6cD7lVecYOcGKCbho_2etRW2m1tD1u8i5G6JxA/exec/4r2b6g5q/4t0q/g/g2/6a1u6s1p/7x9s/0/29/4w9l9a5i/3r7r/u/p4', '2025-07-10 21:14:46', '2025-07-10 21:14:46'),
(135, 'WilliamPaism', 'michealpoole88@gmail.com', '86525268174', 'ACT FAST: COLLECT YOUR $200,515.27 TODAY https://script.google.com/macros/s/AKfycbw8T5nZjd1GBPxt1Vp4VPnP32Xpsp2H6cD7lVecYOcGKCbho_2etRW2m1tD1u8i5G6JxA/exec/4r2b6g5q/4t0q/g/g2/6a1u6s1p/7x9s/0/29/4w9l9a5i/3r7r/u/p4', '2025-07-10 21:14:48', '2025-07-10 21:14:48'),
(136, 'WilliamPaism', 'michealpoole88@gmail.com', '88892533412', 'ACT FAST: COLLECT YOUR $200,515.27 TODAY https://script.google.com/macros/s/AKfycbw8T5nZjd1GBPxt1Vp4VPnP32Xpsp2H6cD7lVecYOcGKCbho_2etRW2m1tD1u8i5G6JxA/exec/4r2b6g5q/4t0q/g/g2/6a1u6s1p/7x9s/0/29/4w9l9a5i/3r7r/u/p4', '2025-07-10 21:14:51', '2025-07-10 21:14:51'),
(137, 'Simonrah', 'irinademenkova86@gmail.com', '89271792952', 'Ողջույն, ես ուզում էի իմանալ ձեր գինը.', '2025-07-12 11:17:14', '2025-07-12 11:17:14'),
(138, 'WilliamPaism', 'boroughs@btinternet.com', '89928872137', 'IMPORTANT! DON’T FORGET: YOUR $200,565.63 GIFT! http://mail2.mclink.it/SRedirect/telegra.ph%2Fnfs-06-11%3F2199', '2025-07-13 06:07:23', '2025-07-13 06:07:23'),
(139, 'WilliamPaism', 'boroughs@btinternet.com', '82291264457', 'IMPORTANT! DON’T FORGET: YOUR $200,565.63 GIFT! http://mail2.mclink.it/SRedirect/telegra.ph%2Fnfs-06-11%3F2199', '2025-07-13 06:07:25', '2025-07-13 06:07:25'),
(140, 'WilliamPaism', 'boroughs@btinternet.com', '89834262392', 'IMPORTANT! DON’T FORGET: YOUR $200,565.63 GIFT! http://mail2.mclink.it/SRedirect/telegra.ph%2Fnfs-06-11%3F2199', '2025-07-13 06:07:28', '2025-07-13 06:07:28'),
(141, 'WilliamPaism', 'boroughs@btinternet.com', '83989392352', 'IMPORTANT! DON’T FORGET: YOUR $200,565.63 GIFT! http://mail2.mclink.it/SRedirect/telegra.ph%2Fnfs-06-11%3F2199', '2025-07-13 06:07:30', '2025-07-13 06:07:30'),
(142, 'WilliamPaism', 'boroughs@btinternet.com', '87673428737', 'IMPORTANT! DON’T FORGET: YOUR $200,565.63 GIFT! http://mail2.mclink.it/SRedirect/telegra.ph%2Fnfs-06-11%3F2199', '2025-07-13 06:07:32', '2025-07-13 06:07:32'),
(143, 'Leerah', 'irinademenkova86@gmail.com', '88434746395', 'Aloha, makemake wau eʻike i kāu kumukūʻai.', '2025-07-13 13:46:01', '2025-07-13 13:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '0001_01_01_000003_create_admins_table', 1),
(5, '2024_12_19_071514_create_website_settings_table', 1),
(6, '2024_12_19_142741_create_sliders_table', 1),
(7, '2024_12_19_143223_create_payment_methods_table', 1),
(8, '2024_12_19_143329_create_services_table', 1),
(9, '2024_12_19_143422_create_call_to_actions_table', 1),
(10, '2024_12_19_143448_create_contacts_table', 1),
(11, '2024_12_19_143556_create_messages_table', 1),
(12, '2024_12_19_143809_create_why_choose_mes_table', 1),
(13, '2024_12_19_143852_create_abouts_table', 1),
(14, '2024_12_19_144335_create_appointments_table', 1),
(15, '2024_12_19_144350_create_appointment_times_table', 1),
(16, '2024_12_19_144901_create_payments_table', 1),
(17, '2024_12_19_144919_create_pages_table', 1),
(18, '2024_12_19_150735_create_faqs_table', 1),
(19, '2025_01_03_145106_create_our_teams_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `our_teams`
--

CREATE TABLE `our_teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_teams`
--

INSERT INTO `our_teams` (`id`, `name`, `image`, `designation`, `status`, `created_at`, `updated_at`) VALUES
(1, 'MD. Abdur Rahman', '7cc99961-b7c4-4de6-969f-9bf66d11819f3AdLs.png', 'Founding Member', 'active', '2025-01-05 09:55:58', '2025-01-05 11:50:59'),
(2, 'Shalah Ahammad Kanon', 'e6967a3a-f8d5-482e-a714-1b198f13ddffkmP0V.png', 'Founding Member', 'active', '2025-01-05 09:57:17', '2025-01-05 11:50:51'),
(3, 'Arthur Szczap', '81c06a34-5691-40d5-98d4-a374d4a1e25estf8Q.jpg', 'Head Advisor (Germany)', 'active', '2025-01-05 09:58:39', '2025-06-25 18:02:41'),
(4, 'Nazmul Hossain', '590f9de5-83bc-4af8-89c8-0f5d03178eb8X6U1L.jpg', 'Branch Manager (Head Office)', 'active', '2025-01-05 09:59:47', '2025-01-05 10:00:52'),
(5, 'Muhaiminul Islam (Emon Khan)', '9bf1b156-b7fd-4ff8-b569-e59fe512e1fe135mL.png', 'Branch Manager (Sylhet)', 'active', '2025-01-05 10:00:25', '2025-01-05 10:00:25'),
(6, 'Prottoy Ghosh', '65486380-23ab-495c-9a2e-5618b8b3eb34pHmaP.jpg', 'Branch Manager (Jessore)', 'active', '2025-06-25 18:06:49', '2025-06-25 18:06:49');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `content`, `location`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Germany', 'germany', 'Germany', 'menu', 'Germany', 'Germany', 'Germany', 'active', '2025-01-05 10:34:11', '2025-01-05 10:34:51'),
(2, 'Denmark', 'denmark', 'Denmark', 'menu', 'Denmark', 'Denmark', 'Denmark', 'active', '2025-01-05 10:35:52', '2025-01-05 10:35:52'),
(3, 'France', 'france', 'France&nbsp;', 'menu', 'France', 'France', 'France', 'active', '2025-01-05 10:36:38', '2025-01-05 10:36:38'),
(4, 'Italy', 'italy', 'Italy', 'menu', 'Italy', 'Italy', 'Italy', 'active', '2025-01-05 10:37:00', '2025-01-05 10:37:00'),
(5, 'Netherlands', 'netherlands', 'Netherlands&nbsp;', 'menu', 'Netherlands', 'Netherlands', 'Netherlands', 'active', '2025-01-05 10:37:45', '2025-01-05 10:37:45'),
(6, 'Spain', 'spain', 'Spain', 'menu', 'Spain', 'Spain', 'Spain', 'active', '2025-01-05 10:38:10', '2025-01-05 10:38:10'),
(7, 'Switzerland', 'switzerland', 'Switzerland&nbsp;', 'menu', 'Switzerland', 'Switzerland', 'Switzerland', 'active', '2025-01-05 10:38:30', '2025-01-05 10:38:30'),
(8, 'Sweden', 'sweden', 'Sweden', 'menu', 'Sweden', 'Sweden', 'Sweden', 'active', '2025-01-05 10:38:49', '2025-01-05 10:38:49'),
(9, 'Norway', 'norway', 'Norway&nbsp;', 'menu', 'Norway', 'Norway', 'Norway', 'active', '2025-01-05 10:39:12', '2025-01-05 10:39:12'),
(10, 'Hungary', 'hungary', 'Hungary&nbsp;', 'menu', 'Hungary', 'Hungary', 'Hungary', 'active', '2025-01-05 10:40:05', '2025-01-05 10:40:05'),
(11, 'Austria', 'austria', 'Austria', 'menu', 'Austria', 'Austria', 'Austria', 'active', '2025-01-05 10:40:37', '2025-01-05 10:40:37'),
(12, 'Croatia', 'croatia', 'Croatia', 'menu', 'Croatia', 'Croatia', 'Croatia', 'active', '2025-01-05 10:41:00', '2025-01-05 10:41:00'),
(13, 'Malta', 'malta', 'Malta', 'menu', 'Malta', 'Malta', 'Malta', 'active', '2025-01-05 10:41:20', '2025-01-05 10:41:20'),
(14, 'Privacy and Policy', 'privacy-and-policy', 'Privacy Policy for <b>Destination 2 Dream</b><br>Our Privacy Policy was last updated on: January 05, 2025<br><br><h3>Who we are</h3>Our website address is: <b>https://www.destination2dream.com</b><br><br>This Privacy Policy describes Our policies and procedures on the collection, use, and disclosure of your information when you use the service and tells you about your privacy rights and how the law protects You. We use your data to provide and improve the service. By using the service, you agree to the collection and use of information under this Privacy Policy.<br><br>If you visit our page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you clear your browser.<br><br><br><h3>Embedded content from other websites</h3>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.<br><br>Websites may collect data about you, use cookies, embed additional third-party tracking(google, yahoo, Bing), and monitor your interaction with the website.<br><br><h3>Who do we share your data with</h3>We do not share your data with any 3rd party website. We respect your privacy.<br><br>You can request to receive an exported file of the personal data we hold about you, including any data you have provided. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.<br><br>', 'footer1', 'Privacy and Policy', 'Privacy Policy for Destination 2 Dream. Our Privacy Policy was last updated on: January 05, 2025\r\nWho we are: Our website address is: https://www.destination2dream.com', 'Privacy and Policy,Privacy,Policy', 'active', '2025-01-05 11:31:32', '2025-01-05 12:07:09'),
(15, 'Terms and conditions', 'terms-and-conditions', 'We will update our terms and conditions soon', 'footer1', 'Terms and conditions', 'Terms and conditions', 'Terms and conditions', 'active', '2025-01-05 12:10:46', '2025-01-05 12:10:46'),
(17, 'File assessment', 'file-assessment', '<p style=\"color: rgb(77, 70, 67); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(247, 247, 247);\"><font color=\"#080809\" face=\"Placeholder Font, Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15px; white-space-collapse: preserve; font-family: Roboto;\">Don\'t miss your chance and get a free career assessment test by our experts!  Best wishes for you!  </span></font></p><p style=\"color: rgb(77, 70, 67); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(247, 247, 247);\"><font color=\"#080809\" face=\"Placeholder Font, Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15px; white-space-collapse: preserve; font-family: Roboto;\">One step forward towards your future ----&gt;</span></font></p><p style=\"\"><font face=\"Roboto\" style=\"\"><span style=\"font-size: 15px; white-space-collapse: preserve;\"><font color=\"#080809\" style=\"background-color: rgb(247, 247, 247);\">Please fill this form for your file assessment. </font><a href=\"https://forms.gle/dSUvdSBF3dLJfV4E9\" target=\"_blank\" style=\"\"><font style=\"background-color: rgb(57, 123, 33);\" color=\"#ffffff\">Click here</font></a></span></font></p>', 'middle_menu', 'File assessment', 'File assessment', 'File assessment', 'active', '2025-01-20 18:54:48', '2025-02-05 18:46:57'),
(18, 'File assessment', 'file-assessment', '<p style=\"color: rgb(77, 70, 67); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(247, 247, 247);\"><font color=\"#080809\" face=\"Placeholder Font, Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15px; white-space-collapse: preserve; font-family: Roboto;\">Don\'t miss your chance and get a free career assessment test by our experts!  Best wishes for you!  </span></font></p><p style=\"color: rgb(77, 70, 67); font-family: &quot;Open Sans&quot;, sans-serif; background-color: rgb(247, 247, 247);\"><font color=\"#080809\" face=\"Placeholder Font, Segoe UI Historic, Segoe UI, Helvetica, Arial, sans-serif\"><span style=\"font-size: 15px; white-space-collapse: preserve; font-family: Roboto;\">One step forward towards your future ----&gt;</span></font></p><p style=\"\"><font face=\"Roboto\" style=\"\"><span style=\"font-size: 15px; white-space-collapse: preserve;\"><font color=\"#080809\" style=\"background-color: rgb(247, 247, 247);\">Please fill this form for your file assessment. </font><a href=\"https://forms.gle/dSUvdSBF3dLJfV4E9\" target=\"_blank\" style=\"\"><font style=\"background-color: rgb(57, 123, 33);\" color=\"#ffffff\">Click here</font></a></span></font></p>', 'footer1', 'File assessment 2', 'File assessment 2', 'File assessment 2', 'active', '2025-02-05 18:48:02', '2025-02-05 18:49:07');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `amount_paid` decimal(8,2) DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT NULL,
  `payment_status` enum('success','failed','pending') NOT NULL DEFAULT 'success',
  `payment_method` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Visa', 'ef2fae10-f2bc-400a-9a17-eb81b3beb874pUzht.png', 'active', '2025-01-05 10:59:15', '2025-01-05 10:59:15'),
(2, 'Mastercard', '8b41961d-047c-4ffb-9c48-eb1e741c6c74JVMKq.png', 'active', '2025-01-05 10:59:34', '2025-01-05 10:59:34'),
(3, 'Paypal', '0bfb0bef-8600-498c-aa48-2eac9ee49a83d8rN4.png', 'active', '2025-01-05 10:59:48', '2025-01-05 10:59:48'),
(4, 'Bkash', '69e23dff-08ae-4665-ae6a-05e7296900e7JYgGM.png', 'active', '2025-01-05 10:59:54', '2025-01-05 10:59:54');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `name`, `slug`, `description`, `image`, `details`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Basic package', 'basic-package', 'Basic package for university admission and visa processing', 'c1c9aa40-063c-4230-a49c-b909b20d77c0hau7r.png', '<p class=\"MsoListParagraph\" style=\"margin: 0in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><font color=\"#000000\"><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\"><span style=\"font-family: &quot;Source Sans Pro&quot;;\">Before visa\r\napplication:</span><u1:p></u1:p></span><o:p></o:p></font></b></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 0in 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\"></span>Help to prepare a<b> Statement of\r\npurpose (SOP)/Motivation letter</b><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">.<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><a name=\"_Hlk191900894\"><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Providing\r\ntemplate for <b>letter of recommendation (LOR)</b></span></a><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">.<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Assistance with <b>CV/Resume</b>\r\npreparation</span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">.<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Proper guidance for <b>Certificate attestation</b>\r\nfrom different ministries</span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">.<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Guideline for <b>Certificate attestation</b>\r\nfrom the different embassies (if needed)</span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">.<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Assistance in <b>choosing/selecting Universities</b>\r\nbased on qualification</span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">.<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Proper step by step <b>guideline for the </b>admission\r\nprocess (extra online portal fee, if needed)</span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">.<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Guideline for properly documents <b>submission/sending</b>\r\nto the universities through post/online. (Extra payment for DHL/courier\r\nservices accordingly)</span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">.<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><u2:p></u2:p><u2:p></u2:p><u2:p></u2:p><u2:p></u2:p><u2:p></u2:p><u2:p></u2:p><u2:p></u2:p><u2:p></u2:p><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">The applicant needs to pay an extra\r\nadmission fee (if needed)</span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">.</span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\"></span>Applicants must pay the <b>registration/enrollment</b>\r\nfee for getting the offer letter from the university (if applicable)<span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">.<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 0in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\"><font color=\"#000000\">&nbsp;</font></span></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 0in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><b><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Visa processing<u2:p></u2:p></span>:</b><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\"><o:p></o:p></span></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 0in 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Assistance in preparing documents according to the embassy\r\nrequirement.<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Preparing proper&nbsp;<b>papers/deed</b>&nbsp;for\r\nthe&nbsp;<b>spouse/sponsorship</b>&nbsp;with\r\nlawyer (if necessary).<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Help with&nbsp;<b>notarization</b>&nbsp;of\r\nnecessary documents (if necessary).<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Providing proper guidance for opening&nbsp;<b>student\r\nfile/block account/bank</b>&nbsp;<b>statement</b>.<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Guideline for booking embassy appointment slots.<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Assistance for preparing travel &amp; health insurance (an extra\r\ncost according to the insurance company).<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Help with booking a travel ticket for the interview checklist.<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Help with&nbsp;<b>booking an\r\naccommodation</b>&nbsp;(hotel/hostel/apartment) with/without contract for visa.<u1:p></u1:p></span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><u2:p></u2:p><u2:p></u2:p><u2:p></u2:p><u2:p></u2:p><u2:p></u2:p><u2:p></u2:p><u2:p></u2:p><u2:p></u2:p><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Providing a basic&nbsp;<b>guideline\r\n(Q &amp; A)</b>&nbsp;for visa interview.</span><o:p></o:p></font></p>\r\n\r\n<p class=\"MsoNormal\"><o:p><font color=\"#000000\">&nbsp;</font></o:p></p>', 'Basic Package', 'Basic Package for University admission and visa processing', 'Basic Package,Destination 2 Dream,Destination2Dream', 'active', '2025-01-05 10:04:29', '2025-03-03 17:42:55'),
(2, 'Add-On Services', 'add-on-services', 'Additional services we offer for university admission and visa processing', '206924cc-9def-44ac-b16c-d85a9c25142atIGkp.png', '<p class=\"MsoListParagraph\" style=\"margin: 0in 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Purchasing an air ticket of any type includes\r\neconomy/business/first class based on your demand (charge will be applicable\r\nregarding flights).<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 0in 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Proper assistance with spouse’s visa processing.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 0in 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Help for finding an accommodation for living in destinated country.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 0in 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Additional assistance at the international airport Dhaka for\r\ndocumentation and baggage clearance before take-off.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 0in 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Help/guidance at German airport after immigration clearance.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 0in 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Assistance with transportation from airport to the residence:\r\nhostel/hotel/apartment (price will be decided on choice of transport\r\nbus/train/taxi).<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 0in 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Proper guidance for registering with the local offices (city\r\noffice/residence permit/health insurance card etc.).<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 0in 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Purchasing tickets for using regular public transport (price\r\nwill be decided accordingly).<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 0in 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Guideline for getting a mobile phone/laptop/sim card\r\nwith/without a contract.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 0in 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Assistance with staff related to university after coming abroad.<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoListParagraph\" style=\"margin: 0in 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Guideline for part-time job searching.<o:p></o:p></span></p>', 'Add-On Services', 'Additional services we offer for university admission and visa processing', 'Add-On Services,Destination 2 Dream,Destination2Dream', 'active', '2025-01-05 10:10:05', '2025-03-03 12:01:19'),
(3, 'Services that we offer in Germany', 'services-that-we-offer-in-germany', 'These services bound to Germany', '9a83d3b7-7726-460f-a9fa-a5904170d66bo0BQo.png', '<p class=\"MsoNormal\" style=\"margin-bottom: 0in; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\" face=\"Source Sans Pro, sans-serif\">Services list:</font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-align: justify; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Healthcare, both the public service provider as actually\r\nexplaining the system and finding a house doctor<o:p></o:p></span></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-align: justify; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Driving license if necessary<o:p></o:p></span></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-align: justify; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Bring Spouse from Bangladesh<o:p></o:p></span></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-align: justify; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Guidance on Extending Visas<o:p></o:p></span></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-align: justify; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Setting Up Mobile &amp; Internet Plans<o:p></o:p></span></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-align: justify; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Protection against scam letters<o:p></o:p></span></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-align: justify; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Help with trouble with\r\nauthorities, police, migration<o:p></o:p></span></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-align: justify; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">CV Polish and Interview Practice for job<o:p></o:p></span></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-align: justify; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">German Language Course Recommendations<o:p></o:p></span></font></p><p class=\"MsoNormal\" style=\"margin-bottom: 0in; text-align: justify; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-align: justify; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--></font><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\"><font color=\"#000000\">House assistant</font><o:p></o:p></span></p>', 'Services that we offer in Gremany', 'These services bound to Germany', 'These services bound to Germany,Destination 2 Dream,Destination2Dream', 'active', '2025-01-05 10:28:25', '2025-03-03 17:52:41');
INSERT INTO `services` (`id`, `name`, `slug`, `description`, `image`, `details`, `meta_title`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Opportunity card visa', 'opportunity-card-visa', 'its a job seeking visa', 'bbc565e7-a5d1-44f7-95a9-c8356da37e11p2dA7.png', '<p class=\"MsoListParagraph\" style=\"margin: 0in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><font color=\"#000000\"><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Before visa\r\napplication:<u1:p></u1:p></span><o:p></o:p></font></b></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\"></span>German languages learning guidance.<u1:p></u1:p><o:p></o:p></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal;\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Helping with block account.</span></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n\r\n<font color=\"#000000\"><span style=\"box-sizing: border-box\"></span></font></p><p class=\"MsoListParagraph\" style=\"margin-top:5.0pt;margin-right:0in;margin-bottom:\r\n0in;margin-left:.5in;text-indent:-.25in;background:white\"><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"box-sizing: border-box;\r\nfont-variant-numeric: normal;font-variant-east-asian: normal;font-variant-alternates: normal;\r\nfont-size-adjust: none;font-kerning: auto;font-optical-sizing: auto;font-feature-settings: normal;\r\nfont-variation-settings: normal;font-variant-position: normal;font-variant-emoji: normal;\r\nfont-stretch: normal\"></span><span style=\"font-size: 7pt;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><span style=\"box-sizing: border-box\"><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\"></span>Certificate assessment if needed.<u1:p style=\"box-sizing: border-box;\"></u1:p></span><o:p></o:p></font></p><p class=\"MsoListParagraph\" style=\"margin: 0in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b style=\"text-indent: -0.25in; font-size: 1rem;\"><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\"><font color=\"#000000\"><br></font></span></b></p><p class=\"MsoListParagraph\" style=\"margin: 0in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b style=\"text-indent: -0.25in; font-size: 1rem;\"><font color=\"#000000\"><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Visa processing<u1:p></u1:p></span>:</font></b></p><p class=\"MsoListParagraph\" style=\"margin: 0in 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Assistance in preparing documents according to the embassy\r\nrequirement.<o:p></o:p></span></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Preparing proper&nbsp;<b>papers/deed</b>&nbsp;for\r\nthe&nbsp;<b>spouse/sponsorship</b>&nbsp;with\r\nlawyer (if necessary).<o:p></o:p></span></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Help with&nbsp;<b>notarization</b>&nbsp;of\r\nnecessary documents (if necessary).<o:p></o:p></span></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Providing proper guidance for opening&nbsp;<b>block account</b>.<o:p></o:p></span></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Guideline for booking embassy appointment slots.<o:p></o:p></span></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Assistance for preparing travel &amp; health insurance (an extra\r\ncost according to the insurance company).<o:p></o:p></span></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Help with booking a travel ticket for the interview checklist.<o:p></o:p></span></font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Help with&nbsp;<b>booking an\r\naccommodation</b>&nbsp;(hotel/hostel/apartment) with/without contract for visa.<o:p></o:p></span></font></p><p class=\"MsoListParagraph\" style=\"margin: 0in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<font color=\"#000000\"><u1:p></u1:p>\r\n\r\n\r\n\r\n<u1:p></u1:p>\r\n\r\n\r\n\r\n<u1:p></u1:p>\r\n\r\n\r\n\r\n<u1:p></u1:p>\r\n\r\n\r\n\r\n<u1:p></u1:p>\r\n\r\n\r\n\r\n<u1:p></u1:p>\r\n\r\n\r\n\r\n<u1:p></u1:p>\r\n\r\n\r\n\r\n<u1:p></u1:p>\r\n\r\n</font></p><p class=\"MsoListParagraph\" style=\"margin: 5pt 0in 0in 0.5in; text-indent: -0.25in; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><!--[if !supportLists]--><font color=\"#000000\"><span style=\"font-family: Symbol;\">·<span style=\"font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-size-adjust: none; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-variant-position: normal; font-variant-emoji: normal; font-stretch: normal; font-size: 7pt; line-height: normal; font-family: &quot;Times New Roman&quot;;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span><!--[endif]--><span style=\"font-family: &quot;Source Sans Pro&quot;, sans-serif;\">Providing a basic&nbsp;<b>guideline\r\n(Q &amp; A)</b>&nbsp;for visa interview.</span></font><o:p></o:p></p>', 'Opportunity card visa', 'Opportunity card visa', 'Opportunity card visa', 'active', '2025-01-14 16:50:16', '2025-03-14 10:55:03');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `button_text` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `image`, `title`, `details`, `button_text`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, '977cf5fa-ec1c-4e3d-be64-453a91b3f9e1fgpxg.jpg', 'Destination 2 Dream', 'Where ambition cross boarders', 'Contact Us', 'https://www.destination2dream.com/contact', 'active', '2025-01-05 10:44:58', '2025-01-05 10:44:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_slogan` varchar(255) DEFAULT NULL,
  `company_description` text DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `support_phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `copyright_text` varchar(255) DEFAULT NULL,
  `facebook_url` varchar(255) DEFAULT NULL,
  `twitter_url` varchar(255) DEFAULT NULL,
  `youtube_url` varchar(255) DEFAULT NULL,
  `instagram_url` varchar(255) DEFAULT NULL,
  `android_app_url` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `company_logo`, `favicon`, `company_name`, `company_slogan`, `company_description`, `company_address`, `phone`, `support_phone`, `email`, `copyright_text`, `facebook_url`, `twitter_url`, `youtube_url`, `instagram_url`, `android_app_url`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'cc46b0ca-669d-4572-85fd-724d47ef3f87xm4B4.png', 'f81129ff-d05e-4987-8f85-532a486e79129BFOu.png', 'Destination 2 Dream', 'Where ambition cross boarders', 'Best Consulting agency', '307/1, Jhilpar (beside Jhilpar jame masjid), Mirpur, Dhaka, Bangladesh <br> Brach Office: Sylhet', '09639159354 (Dhaka)', '01818393995 (Sylhet)', 'contact@destination2dream.com', 'Copyright 2024, Destination2dream - All rights reserved', 'https://www.facebook.com/destination2dream', 'https://x.com/', 'https://www.youtube.com/@Destination2Dream', 'https://www.instagram.com/', 'https://play.google.com/store/apps', 'Destination 2 Dream', 'Destination 2 Dream', 'Destination 2 Dream,Destination2Dream', '2025-01-05 09:40:34', '2025-03-10 22:34:24');

-- --------------------------------------------------------

--
-- Table structure for table `why_choose_mes`
--

CREATE TABLE `why_choose_mes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `why_choose_mes`
--

INSERT INTO `why_choose_mes` (`id`, `title`, `short_description`, `details`, `created_at`, `updated_at`) VALUES
(1, 'Why Us ?', 'Our expert will help you on university admission, scholarships & visa processing to achieve your goal.', '<div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">Whether you are a student dreaming of studying abroad or a young professional exploring global opportunities, you have come to the right place.</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">Our <span class=\"html-span xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"><a tabindex=\"-1\" class=\"html-a xdj266r x11i5rnm xat24cr x1mh8g0r xexx8yu x4uap5 x18d9i69 xkhd6sd x1hl2dhg x16tdsg8 x1vvkbs\" style=\"color: rgb(56, 88, 152); cursor: pointer; margin: 0px; text-align: inherit; overflow-wrap: break-word; padding: 0px; font-family: inherit;\"></a></span>goal is to assist ambitious students and professionals like You through every step of your journey from choosing the perfect university or work opportunities to securing scholarships or navigating visa processes!</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">Why staying connected with us?</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">• Expert tips and guidance on studying abroad with/without scholarship.</div><div dir=\"auto\" style=\"font-family: inherit;\">• Up-to-date information about admission, job opportunities and visa.</div><div dir=\"auto\" style=\"font-family: inherit;\">• Consultation for motivation and choosing right path.</div><div dir=\"auto\" style=\"font-family: inherit;\">• Further assistance and advice in your destination country. </div><div dir=\"auto\" style=\"font-family: inherit;\">• Personalized support to make your journey smooth and comfortable.</div></div><div class=\"x11i5rnm xat24cr x1mh8g0r x1vvkbs xtlvy1s x126k92a\" style=\"margin: 0.5em 0px 0px; overflow-wrap: break-word; white-space-collapse: preserve; font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(8, 8, 9); font-size: 15px;\"><div dir=\"auto\" style=\"font-family: inherit;\">Follow us and stay tuned for exciting updates, valuable information, guidance and inspiration to achieve your dream. </div></div>', '2025-01-05 09:40:34', '2025-01-05 09:40:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment_times`
--
ALTER TABLE `appointment_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `call_to_actions`
--
ALTER TABLE `call_to_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_teams`
--
ALTER TABLE `our_teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `why_choose_mes`
--
ALTER TABLE `why_choose_mes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointment_times`
--
ALTER TABLE `appointment_times`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `call_to_actions`
--
ALTER TABLE `call_to_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `our_teams`
--
ALTER TABLE `our_teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `why_choose_mes`
--
ALTER TABLE `why_choose_mes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
