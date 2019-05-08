-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 08, 2019 at 07:21 AM
-- Server version: 10.2.23-MariaDB-log-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demosite99_news`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mobile', '2019-05-01 00:50:49', '2019-05-01 00:50:49'),
(2, 'Gadgets', '2019-05-01 00:51:05', '2019-05-01 00:51:05'),
(3, 'Business', '2019-05-01 00:51:10', '2019-05-01 00:51:10'),
(4, 'Apps', '2019-05-01 00:51:15', '2019-05-01 00:51:15'),
(5, 'Smart Life', '2019-05-01 00:51:29', '2019-05-01 00:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `categories_news__news_categories`
--

CREATE TABLE `categories_news__news_categories` (
  `id` int(11) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories_news__news_categories`
--

INSERT INTO `categories_news__news_categories` (`id`, `news_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `core_store`
--

CREATE TABLE `core_store` (
  `id` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'db_model_users-permissions_permission', '{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}}', 'object', NULL, NULL),
(2, 'db_model_users-permissions_role', '{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true}}', 'object', NULL, NULL),
(3, 'db_model_core_store', '{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}', 'object', NULL, NULL),
(4, 'db_model_upload_file', '{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"sha256\":{\"type\":\"string\",\"configurable\":false},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"public_id\":{\"type\":\"string\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(5, 'db_model_users-permissions_user', '{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false}}', 'object', NULL, NULL),
(6, 'db_model_upload_file_morph', '{\"upload_file_id\":{\"type\":\"integer\"},\"related_id\":{\"type\":\"integer\"},\"related_type\":{\"type\":\"text\"},\"field\":{\"type\":\"text\"}}', 'object', NULL, NULL),
(7, 'plugin_content-manager_schema', '{\"generalSettings\":{\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10},\"models\":{\"plugins\":{\"upload\":{\"file\":{\"label\":\"File\",\"labelPlural\":\"Files\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"timestamps\":[\"created_at\",\"updated_at\"]},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"hash\":{\"label\":\"Hash\",\"type\":\"string\",\"description\":\"\",\"name\":\"hash\",\"editable\":true,\"placeholder\":\"\"},\"sha256\":{\"label\":\"Sha256\",\"type\":\"string\",\"description\":\"\",\"name\":\"sha256\",\"editable\":true,\"placeholder\":\"\"},\"ext\":{\"label\":\"Ext\",\"type\":\"string\",\"description\":\"\",\"name\":\"ext\",\"editable\":true,\"placeholder\":\"\"},\"mime\":{\"label\":\"Mime\",\"type\":\"string\",\"description\":\"\",\"name\":\"mime\",\"editable\":true,\"placeholder\":\"\"},\"size\":{\"label\":\"Size\",\"type\":\"string\",\"description\":\"\",\"name\":\"size\",\"editable\":true,\"placeholder\":\"\"},\"url\":{\"label\":\"Url\",\"type\":\"string\",\"description\":\"\",\"name\":\"url\",\"editable\":true,\"placeholder\":\"\"},\"provider\":{\"label\":\"Provider\",\"type\":\"string\",\"description\":\"\",\"name\":\"provider\",\"editable\":true,\"placeholder\":\"\"},\"public_id\":{\"label\":\"Public_id\",\"type\":\"string\",\"description\":\"\",\"name\":\"public_id\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"hash\",\"sha256\",\"ext\",\"mime\",\"size\",\"url\",\"provider\",\"public_id\"],\"relations\":[]},\"info\":{\"name\":\"file\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"upload_file\",\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"sha256\":{\"type\":\"string\",\"configurable\":false},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"public_id\":{\"type\":\"string\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false}},\"globalId\":\"UploadFile\",\"globalName\":\"UploadFile\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"related\",\"type\":\"collection\",\"related\":[\"News\"],\"nature\":\"manyMorphToOne\",\"autoPopulate\":true,\"filter\":\"field\"}],\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"hash\":{\"label\":\"Hash\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"hash\",\"sortable\":true,\"searchable\":true},\"sha256\":{\"label\":\"Sha256\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"sha256\",\"sortable\":true,\"searchable\":true},\"ext\":{\"label\":\"Ext\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"ext\",\"sortable\":true,\"searchable\":true},\"mime\":{\"label\":\"Mime\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"mime\",\"sortable\":true,\"searchable\":true},\"size\":{\"label\":\"Size\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"size\",\"sortable\":true,\"searchable\":true},\"url\":{\"label\":\"Url\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"url\",\"sortable\":true,\"searchable\":true},\"provider\":{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},\"public_id\":{\"label\":\"Public_id\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"public_id\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Hash\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"hash\",\"sortable\":true,\"searchable\":true},{\"label\":\"Sha256\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"sha256\",\"sortable\":true,\"searchable\":true},{\"label\":\"Ext\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"ext\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"related\":{\"alias\":\"related\",\"type\":\"collection\",\"related\":[\"News\"],\"nature\":\"manyMorphToOne\",\"autoPopulate\":true,\"filter\":\"field\",\"description\":\"\",\"label\":\"Related\",\"displayedAttribute\":\"id\"}}}},\"users-permissions\":{\"permission\":{\"label\":\"Permission\",\"labelPlural\":\"Permissions\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"editDisplay\":{\"availableFields\":{\"type\":{\"label\":\"Type\",\"type\":\"string\",\"description\":\"\",\"name\":\"type\",\"editable\":true,\"placeholder\":\"\"},\"controller\":{\"label\":\"Controller\",\"type\":\"string\",\"description\":\"\",\"name\":\"controller\",\"editable\":true,\"placeholder\":\"\"},\"action\":{\"label\":\"Action\",\"type\":\"string\",\"description\":\"\",\"name\":\"action\",\"editable\":true,\"placeholder\":\"\"},\"enabled\":{\"label\":\"Enabled\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"enabled\",\"editable\":true,\"placeholder\":\"\"},\"policy\":{\"label\":\"Policy\",\"type\":\"string\",\"description\":\"\",\"name\":\"policy\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"type\",\"controller\",\"action\",\"enabled\",\"policy\"],\"relations\":[\"role\"]},\"info\":{\"name\":\"permission\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"users-permissions_permission\",\"attributes\":{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}},\"globalId\":\"UsersPermissionsPermission\",\"globalName\":\"UsersPermissionsPermission\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"permissions\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"fields\":{\"type\":{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true},\"controller\":{\"label\":\"Controller\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"controller\",\"sortable\":true,\"searchable\":true},\"action\":{\"label\":\"Action\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"action\",\"sortable\":true,\"searchable\":true},\"enabled\":{\"label\":\"Enabled\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"enabled\",\"sortable\":true,\"searchable\":true},\"policy\":{\"label\":\"Policy\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"policy\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true},{\"label\":\"Controller\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"controller\",\"sortable\":true,\"searchable\":true},{\"label\":\"Action\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"action\",\"sortable\":true,\"searchable\":true},{\"label\":\"Enabled\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"enabled\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"role\":{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"permissions\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Role\",\"displayedAttribute\":\"name\"}}},\"role\":{\"label\":\"Role\",\"labelPlural\":\"Roles\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"},\"description\":{\"label\":\"Description\",\"type\":\"string\",\"description\":\"\",\"name\":\"description\",\"editable\":true,\"placeholder\":\"\"},\"type\":{\"label\":\"Type\",\"type\":\"string\",\"description\":\"\",\"name\":\"type\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\",\"description\",\"type\"],\"relations\":[\"permissions\",\"users\"]},\"info\":{\"name\":\"role\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"users-permissions_role\",\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true}},\"globalId\":\"UsersPermissionsRole\",\"globalName\":\"UsersPermissionsRole\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"permissions\",\"type\":\"collection\",\"collection\":\"permission\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"},{\"alias\":\"users\",\"type\":\"collection\",\"collection\":\"user\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},\"description\":{\"label\":\"Description\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},\"type\":{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true},{\"label\":\"Description\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true},{\"label\":\"Type\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"type\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"permissions\":{\"alias\":\"permissions\",\"type\":\"collection\",\"collection\":\"permission\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Permissions\",\"displayedAttribute\":\"type\"},\"users\":{\"alias\":\"users\",\"type\":\"collection\",\"collection\":\"user\",\"via\":\"role\",\"nature\":\"oneToMany\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Users\",\"displayedAttribute\":\"username\"}}},\"user\":{\"label\":\"User\",\"labelPlural\":\"Users\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"timestamps\":false},\"editDisplay\":{\"availableFields\":{\"username\":{\"label\":\"Username\",\"type\":\"string\",\"description\":\"\",\"name\":\"username\",\"editable\":true,\"placeholder\":\"\"},\"email\":{\"label\":\"Email\",\"type\":\"email\",\"description\":\"\",\"name\":\"email\",\"editable\":true,\"placeholder\":\"\"},\"provider\":{\"label\":\"Provider\",\"type\":\"string\",\"description\":\"\",\"name\":\"provider\",\"editable\":true,\"placeholder\":\"\"},\"password\":{\"label\":\"Password\",\"type\":\"password\",\"description\":\"\",\"name\":\"password\",\"editable\":true,\"placeholder\":\"\"},\"confirmed\":{\"label\":\"Confirmed\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"confirmed\",\"editable\":true,\"placeholder\":\"\"},\"blocked\":{\"label\":\"Blocked\",\"type\":\"boolean\",\"description\":\"\",\"name\":\"blocked\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"confirmed\",\"blocked\"],\"relations\":[\"role\"]},\"info\":{\"name\":\"user\",\"description\":\"\"},\"connection\":\"default\",\"collectionName\":\"users-permissions_user\",\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false}},\"globalId\":\"UsersPermissionsUser\",\"globalName\":\"UsersPermissionsUser\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"users\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\"}],\"fields\":{\"username\":{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},\"email\":{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},\"provider\":{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},\"password\":{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true},\"confirmed\":{\"label\":\"Confirmed\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"confirmed\",\"sortable\":true,\"searchable\":true},\"blocked\":{\"label\":\"Blocked\",\"description\":\"\",\"type\":\"boolean\",\"disabled\":false,\"name\":\"blocked\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Username\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"username\",\"sortable\":true,\"searchable\":true},{\"label\":\"Email\",\"description\":\"\",\"type\":\"email\",\"disabled\":false,\"name\":\"email\",\"sortable\":true,\"searchable\":true},{\"label\":\"Provider\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"provider\",\"sortable\":true,\"searchable\":true},{\"label\":\"Password\",\"description\":\"\",\"type\":\"password\",\"disabled\":false,\"name\":\"password\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"role\":{\"alias\":\"role\",\"type\":\"model\",\"model\":\"role\",\"via\":\"users\",\"nature\":\"manyToOne\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"users-permissions\",\"description\":\"\",\"label\":\"Role\",\"displayedAttribute\":\"name\"}}}}},\"news\":{\"label\":\"News\",\"labelPlural\":\"News\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"editDisplay\":{\"availableFields\":{\"newstitle\":{\"label\":\"Newstitle\",\"type\":\"string\",\"description\":\"\",\"name\":\"newstitle\",\"editable\":true,\"placeholder\":\"\"},\"featured_img\":{\"description\":\"\",\"editable\":true,\"label\":\"Featured_img\",\"multiple\":false,\"name\":\"featured_img\",\"placeholder\":\"\",\"type\":\"file\",\"disabled\":false},\"description\":{\"label\":\"Description\",\"type\":\"text\",\"description\":\"\",\"name\":\"description\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"newstitle\",\"featured_img\",\"description\"],\"relations\":[\"categories\"]},\"info\":{\"name\":\"news\",\"description\":\"Tech News\"},\"connection\":\"default\",\"collectionName\":\"news\",\"attributes\":{\"newstitle\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"description\":{\"type\":\"text\"},\"categories\":{\"collection\":\"category\",\"via\":\"news\",\"attribute\":\"category\",\"column\":\"id\",\"isVirtual\":true},\"featured_img\":{\"model\":\"file\",\"via\":\"related\",\"plugin\":\"upload\",\"required\":true}},\"globalId\":\"News\",\"globalName\":\"News\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"categories\",\"type\":\"collection\",\"collection\":\"category\",\"via\":\"news\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":false,\"tableCollectionName\":\"categories_news__news_categories\"},{\"alias\":\"featured_img\",\"type\":\"model\",\"model\":\"file\",\"via\":\"related\",\"nature\":\"oneToManyMorph\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"upload\",\"filter\":\"field\"}],\"fields\":{\"newstitle\":{\"label\":\"Newstitle\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"newstitle\",\"sortable\":true,\"searchable\":true},\"description\":{\"label\":\"Description\",\"description\":\"\",\"type\":\"text\",\"disabled\":false,\"name\":\"description\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Newstitle\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"newstitle\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"categories\":{\"alias\":\"categories\",\"type\":\"collection\",\"collection\":\"category\",\"via\":\"news\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":false,\"tableCollectionName\":\"categories_news__news_categories\",\"description\":\"\",\"label\":\"Categories\",\"displayedAttribute\":\"name\"},\"featured_img\":{\"alias\":\"featured_img\",\"type\":\"model\",\"model\":\"file\",\"via\":\"related\",\"nature\":\"oneToManyMorph\",\"autoPopulate\":true,\"dominant\":true,\"plugin\":\"upload\",\"filter\":\"field\",\"description\":\"\",\"label\":\"Featured_img\",\"displayedAttribute\":\"name\"}}},\"category\":{\"label\":\"Category\",\"labelPlural\":\"Categories\",\"orm\":\"bookshelf\",\"search\":true,\"filters\":true,\"bulkActions\":true,\"pageEntries\":10,\"defaultSort\":\"id\",\"sort\":\"ASC\",\"options\":{\"increments\":true,\"timestamps\":[\"created_at\",\"updated_at\"],\"comment\":\"\"},\"editDisplay\":{\"availableFields\":{\"name\":{\"label\":\"Name\",\"type\":\"string\",\"description\":\"\",\"name\":\"name\",\"editable\":true,\"placeholder\":\"\"}},\"displayedField\":\"id\",\"fields\":[\"name\"],\"relations\":[\"news\"]},\"info\":{\"name\":\"category\",\"description\":\"News Category\"},\"connection\":\"default\",\"collectionName\":\"categories\",\"attributes\":{\"name\":{\"unique\":true,\"required\":true,\"type\":\"string\"},\"news\":{\"collection\":\"news\",\"dominant\":true,\"via\":\"categories\",\"attribute\":\"news\",\"column\":\"id\",\"isVirtual\":true}},\"globalId\":\"Category\",\"globalName\":\"Category\",\"primaryKey\":\"id\",\"associations\":[{\"alias\":\"news\",\"type\":\"collection\",\"collection\":\"news\",\"via\":\"categories\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":true,\"tableCollectionName\":\"categories_news__news_categories\"}],\"fields\":{\"name\":{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true}},\"listDisplay\":[{\"name\":\"id\",\"label\":\"Id\",\"type\":\"string\",\"sortable\":true,\"searchable\":true},{\"label\":\"Name\",\"description\":\"\",\"type\":\"string\",\"disabled\":false,\"name\":\"name\",\"sortable\":true,\"searchable\":true}],\"relations\":{\"news\":{\"alias\":\"news\",\"type\":\"collection\",\"collection\":\"news\",\"via\":\"categories\",\"nature\":\"manyToMany\",\"autoPopulate\":true,\"dominant\":true,\"tableCollectionName\":\"categories_news__news_categories\",\"description\":\"\",\"label\":\"News\",\"displayedAttribute\":\"newstitle\"}}}},\"layout\":{\"user\":{\"actions\":{\"create\":\"User.create\",\"update\":\"User.update\",\"destroy\":\"User.destroy\",\"deleteall\":\"User.destroyAll\"},\"attributes\":{\"username\":{\"className\":\"col-md-6\"},\"email\":{\"className\":\"col-md-6\"},\"resetPasswordToken\":{\"className\":\"d-none\"},\"role\":{\"className\":\"d-none\"}}},\"news\":{\"attributes\":{\"description\":{\"appearance\":\"WYSIWYG\"},\"description_details\":{\"appearance\":\"WYSIWYG\"}}},\"category\":{\"attributes\":{}}}}', 'object', '', ''),
(8, 'core_application', '{\"name\":\"Default Application\",\"description\":\"This API is going to be awesome!\"}', 'object', '', ''),
(9, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"comments\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-official\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"redirect_uri\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"}}', 'object', '', ''),
(10, 'plugin_email_provider', '{\"provider\":\"sendmail\",\"name\":\"Sendmail\",\"auth\":{\"sendmail_default_from\":{\"label\":\"Sendmail Default From\",\"type\":\"text\"},\"sendmail_default_replyto\":{\"label\":\"Sendmail Default Reply-To\",\"type\":\"text\"}}}', 'object', 'development', ''),
(11, 'plugin_upload_provider', '{\"provider\":\"local\",\"name\":\"Local server\",\"enabled\":true,\"sizeLimit\":1000000}', 'object', 'development', ''),
(12, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"refresh\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"­Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square-o\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(13, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_confirmation_redirection\":\"http://localhost:1337/admin\",\"default_role\":\"authenticated\"}', 'object', '', ''),
(14, 'db_model_news', '{\"newstitle\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"description\":{\"type\":\"text\"},\"categories\":{\"collection\":\"category\",\"via\":\"news\",\"attribute\":\"category\",\"column\":\"id\",\"isVirtual\":true},\"featured_img\":{\"model\":\"file\",\"via\":\"related\",\"plugin\":\"upload\",\"required\":true},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(15, 'db_model_categories', '{\"name\":{\"unique\":true,\"required\":true,\"type\":\"string\"},\"news\":{\"collection\":\"news\",\"dominant\":true,\"via\":\"categories\",\"attribute\":\"news\",\"column\":\"id\",\"isVirtual\":true},\"created_at\":{\"type\":\"timestamp\"},\"updated_at\":{\"type\":\"timestampUpdate\"}}', 'object', NULL, NULL),
(16, 'db_model_categories_news__news_categories', '{\"news_id\":{\"type\":\"integer\"},\"category_id\":{\"type\":\"integer\"}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `newstitle` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `newstitle`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Is Google teasing new Pixel phones for May 7?', 'The teaser section is accompanied by a video for a commercial of Avengers: Endgame, wherein the Google Assistant and Pixel 3\'s various camera features such as ', '2019-05-01 00:55:56', '2019-05-02 04:42:06'),
(2, 'Thieves reportedly used car-sharing app to steal 100 cars in Chicago', 'The car-sharing company Car2Go has temporarily suspended operations in Chicago following the reported theft of 100 cars off its platform. While the exact details are hazy, it appears that as-of-yet undetermined individuals fraudulently used the company\'s app to gain access to Car2Go vehicles and then make their dastardly escape. ', '2019-05-01 06:32:30', '2019-05-01 06:54:30');

-- --------------------------------------------------------

--
-- Table structure for table `upload_file`
--

CREATE TABLE `upload_file` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `sha256` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `provider` varchar(255) NOT NULL,
  `public_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_file`
--

INSERT INTO `upload_file` (`id`, `name`, `hash`, `sha256`, `ext`, `mime`, `size`, `url`, `provider`, `public_id`, `created_at`, `updated_at`) VALUES
(1, 'google.jpg', '82aecc4704c045f986bd83ecb1edd144', 'mGMjCD7G1TrRB9M1Oj4iqVgbl-mHblXdCQ1q36VwCuE', '.jpg', 'image/jpeg', '77.20', '/uploads/82aecc4704c045f986bd83ecb1edd144.jpg', 'local', NULL, '2019-05-01 00:55:57', '2019-05-01 00:55:57'),
(2, 'car.png', '0543140d587f48799617af5fd393f97e', '31TAnysotWG4HRWWa1tGoKAKXL2wte9sHF7voHHEhAw', '.png', 'image/png', '1057.49', '/uploads/0543140d587f48799617af5fd393f97e.png', 'local', NULL, '2019-05-01 06:32:31', '2019-05-01 06:32:32');

-- --------------------------------------------------------

--
-- Table structure for table `upload_file_morph`
--

CREATE TABLE `upload_file_morph` (
  `id` int(11) NOT NULL,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext DEFAULT NULL,
  `field` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload_file_morph`
--

INSERT INTO `upload_file_morph` (`id`, `upload_file_id`, `related_id`, `related_type`, `field`) VALUES
(1, 1, 1, 'news', 'featured_img'),
(2, 2, 2, 'news', 'featured_img');

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_permission`
--

CREATE TABLE `users-permissions_permission` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`) VALUES
(1, 'content-manager', 'contentmanager', 'models', 1, '', 1),
(2, 'content-manager', 'contentmanager', 'find', 1, '', 1),
(3, 'content-manager', 'contentmanager', 'count', 1, '', 1),
(4, 'content-manager', 'contentmanager', 'findone', 1, '', 1),
(5, 'content-manager', 'contentmanager', 'create', 1, '', 1),
(6, 'content-manager', 'contentmanager', 'update', 1, '', 1),
(7, 'content-manager', 'contentmanager', 'updatesettings', 1, '', 1),
(8, 'content-manager', 'contentmanager', 'delete', 1, '', 1),
(9, 'content-manager', 'contentmanager', 'deleteall', 1, '', 1),
(10, 'content-type-builder', 'contenttypebuilder', 'getmodels', 1, '', 1),
(11, 'content-type-builder', 'contenttypebuilder', 'getmodel', 1, '', 1),
(12, 'content-type-builder', 'contenttypebuilder', 'getconnections', 1, '', 1),
(13, 'content-type-builder', 'contenttypebuilder', 'createmodel', 1, '', 1),
(14, 'content-type-builder', 'contenttypebuilder', 'updatemodel', 1, '', 1),
(15, 'content-type-builder', 'contenttypebuilder', 'deletemodel', 1, '', 1),
(16, 'content-type-builder', 'contenttypebuilder', 'autoreload', 1, '', 1),
(17, 'content-type-builder', 'contenttypebuilder', 'checktableexists', 1, '', 1),
(18, 'email', 'email', 'send', 1, '', 1),
(19, 'email', 'email', 'getenvironments', 1, '', 1),
(20, 'email', 'email', 'getsettings', 1, '', 1),
(21, 'email', 'email', 'updatesettings', 1, '', 1),
(22, 'settings-manager', 'settingsmanager', 'menu', 1, '', 1),
(23, 'settings-manager', 'settingsmanager', 'environments', 1, '', 1),
(24, 'settings-manager', 'settingsmanager', 'languages', 1, '', 1),
(25, 'settings-manager', 'settingsmanager', 'databases', 1, '', 1),
(26, 'settings-manager', 'settingsmanager', 'database', 1, '', 1),
(27, 'settings-manager', 'settingsmanager', 'databasemodel', 1, '', 1),
(28, 'settings-manager', 'settingsmanager', 'get', 1, '', 1),
(29, 'settings-manager', 'settingsmanager', 'update', 1, '', 1),
(30, 'settings-manager', 'settingsmanager', 'createlanguage', 1, '', 1),
(31, 'settings-manager', 'settingsmanager', 'deletelanguage', 1, '', 1),
(32, 'settings-manager', 'settingsmanager', 'createdatabase', 1, '', 1),
(33, 'settings-manager', 'settingsmanager', 'updatedatabase', 1, '', 1),
(34, 'settings-manager', 'settingsmanager', 'deletedatabase', 1, '', 1),
(35, 'settings-manager', 'settingsmanager', 'autoreload', 1, '', 1),
(36, 'upload', 'upload', 'upload', 1, '', 1),
(37, 'upload', 'upload', 'getenvironments', 1, '', 1),
(38, 'upload', 'upload', 'getsettings', 1, '', 1),
(39, 'upload', 'upload', 'updatesettings', 1, '', 1),
(40, 'upload', 'upload', 'find', 1, '', 1),
(41, 'upload', 'upload', 'findone', 1, '', 1),
(42, 'upload', 'upload', 'count', 1, '', 1),
(43, 'upload', 'upload', 'destroy', 1, '', 1),
(44, 'upload', 'upload', 'search', 1, '', 1),
(45, 'users-permissions', 'auth', 'callback', 1, '', 1),
(46, 'users-permissions', 'auth', 'changepassword', 1, '', 1),
(47, 'users-permissions', 'auth', 'connect', 1, '', 1),
(48, 'users-permissions', 'auth', 'forgotpassword', 1, '', 1),
(49, 'users-permissions', 'auth', 'register', 1, '', 1),
(50, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 1),
(51, 'users-permissions', 'user', 'find', 1, '', 1),
(52, 'users-permissions', 'user', 'me', 1, '', 1),
(53, 'users-permissions', 'user', 'findone', 1, '', 1),
(54, 'users-permissions', 'user', 'create', 1, '', 1),
(55, 'users-permissions', 'user', 'update', 1, '', 1),
(56, 'users-permissions', 'user', 'destroy', 1, '', 1),
(57, 'users-permissions', 'user', 'destroyall', 1, '', 1),
(58, 'users-permissions', 'userspermissions', 'createrole', 1, '', 1),
(59, 'users-permissions', 'userspermissions', 'deleteprovider', 1, '', 1),
(60, 'users-permissions', 'userspermissions', 'deleterole', 1, '', 1),
(61, 'users-permissions', 'userspermissions', 'getpermissions', 1, '', 1),
(62, 'users-permissions', 'userspermissions', 'getpolicies', 1, '', 1),
(63, 'users-permissions', 'userspermissions', 'getrole', 1, '', 1),
(64, 'users-permissions', 'userspermissions', 'getroles', 1, '', 1),
(65, 'users-permissions', 'userspermissions', 'getroutes', 1, '', 1),
(66, 'users-permissions', 'userspermissions', 'index', 1, '', 1),
(67, 'users-permissions', 'userspermissions', 'init', 1, '', 1),
(68, 'users-permissions', 'userspermissions', 'searchusers', 1, '', 1),
(69, 'users-permissions', 'userspermissions', 'updaterole', 1, '', 1),
(70, 'users-permissions', 'userspermissions', 'getemailtemplate', 1, '', 1),
(71, 'users-permissions', 'userspermissions', 'updateemailtemplate', 1, '', 1),
(72, 'users-permissions', 'userspermissions', 'getadvancedsettings', 1, '', 1),
(73, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 1, '', 1),
(74, 'users-permissions', 'userspermissions', 'getproviders', 1, '', 1),
(75, 'users-permissions', 'userspermissions', 'updateproviders', 1, '', 1),
(76, 'content-manager', 'contentmanager', 'models', 0, '', 2),
(77, 'content-manager', 'contentmanager', 'find', 0, '', 2),
(78, 'content-manager', 'contentmanager', 'count', 0, '', 2),
(79, 'content-manager', 'contentmanager', 'findone', 0, '', 2),
(80, 'content-manager', 'contentmanager', 'create', 0, '', 2),
(81, 'content-manager', 'contentmanager', 'update', 0, '', 2),
(82, 'content-manager', 'contentmanager', 'updatesettings', 0, '', 2),
(83, 'content-manager', 'contentmanager', 'delete', 0, '', 2),
(84, 'content-manager', 'contentmanager', 'deleteall', 0, '', 2),
(85, 'content-type-builder', 'contenttypebuilder', 'getmodels', 0, '', 2),
(86, 'content-type-builder', 'contenttypebuilder', 'getmodel', 0, '', 2),
(87, 'content-type-builder', 'contenttypebuilder', 'getconnections', 0, '', 2),
(88, 'content-type-builder', 'contenttypebuilder', 'createmodel', 0, '', 2),
(89, 'content-type-builder', 'contenttypebuilder', 'updatemodel', 0, '', 2),
(90, 'content-type-builder', 'contenttypebuilder', 'deletemodel', 0, '', 2),
(91, 'content-type-builder', 'contenttypebuilder', 'autoreload', 1, '', 2),
(92, 'content-type-builder', 'contenttypebuilder', 'checktableexists', 0, '', 2),
(93, 'email', 'email', 'send', 0, '', 2),
(94, 'email', 'email', 'getenvironments', 0, '', 2),
(95, 'email', 'email', 'getsettings', 0, '', 2),
(96, 'email', 'email', 'updatesettings', 0, '', 2),
(97, 'settings-manager', 'settingsmanager', 'menu', 0, '', 2),
(98, 'settings-manager', 'settingsmanager', 'environments', 0, '', 2),
(99, 'settings-manager', 'settingsmanager', 'languages', 0, '', 2),
(100, 'settings-manager', 'settingsmanager', 'databases', 0, '', 2),
(101, 'settings-manager', 'settingsmanager', 'database', 0, '', 2),
(102, 'settings-manager', 'settingsmanager', 'databasemodel', 0, '', 2),
(103, 'settings-manager', 'settingsmanager', 'get', 0, '', 2),
(104, 'settings-manager', 'settingsmanager', 'update', 0, '', 2),
(105, 'settings-manager', 'settingsmanager', 'createlanguage', 0, '', 2),
(106, 'settings-manager', 'settingsmanager', 'deletelanguage', 0, '', 2),
(107, 'settings-manager', 'settingsmanager', 'createdatabase', 0, '', 2),
(108, 'settings-manager', 'settingsmanager', 'updatedatabase', 0, '', 2),
(109, 'settings-manager', 'settingsmanager', 'deletedatabase', 0, '', 2),
(110, 'settings-manager', 'settingsmanager', 'autoreload', 1, '', 2),
(111, 'upload', 'upload', 'upload', 0, '', 2),
(112, 'upload', 'upload', 'getenvironments', 0, '', 2),
(113, 'upload', 'upload', 'getsettings', 0, '', 2),
(114, 'upload', 'upload', 'updatesettings', 0, '', 2),
(115, 'upload', 'upload', 'find', 0, '', 2),
(116, 'upload', 'upload', 'findone', 0, '', 2),
(117, 'upload', 'upload', 'count', 0, '', 2),
(118, 'upload', 'upload', 'destroy', 0, '', 2),
(119, 'upload', 'upload', 'search', 0, '', 2),
(120, 'users-permissions', 'auth', 'callback', 0, '', 2),
(121, 'users-permissions', 'auth', 'changepassword', 0, '', 2),
(122, 'users-permissions', 'auth', 'connect', 1, '', 2),
(123, 'users-permissions', 'auth', 'forgotpassword', 0, '', 2),
(124, 'users-permissions', 'auth', 'register', 0, '', 2),
(125, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 2),
(126, 'users-permissions', 'user', 'find', 0, '', 2),
(127, 'users-permissions', 'user', 'me', 1, '', 2),
(128, 'users-permissions', 'user', 'findone', 0, '', 2),
(129, 'users-permissions', 'user', 'create', 0, '', 2),
(130, 'users-permissions', 'user', 'update', 0, '', 2),
(131, 'users-permissions', 'user', 'destroy', 0, '', 2),
(132, 'users-permissions', 'user', 'destroyall', 0, '', 2),
(133, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2),
(134, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 2),
(135, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2),
(136, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2),
(137, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2),
(138, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2),
(139, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2),
(140, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2),
(141, 'users-permissions', 'userspermissions', 'index', 0, '', 2),
(142, 'users-permissions', 'userspermissions', 'init', 1, '', 2),
(143, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2),
(144, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2),
(145, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2),
(146, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2),
(147, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2),
(148, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2),
(149, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2),
(150, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2),
(151, 'content-manager', 'contentmanager', 'models', 0, '', 3),
(152, 'content-manager', 'contentmanager', 'find', 0, '', 3),
(153, 'content-manager', 'contentmanager', 'count', 0, '', 3),
(154, 'content-manager', 'contentmanager', 'findone', 0, '', 3),
(155, 'content-manager', 'contentmanager', 'create', 0, '', 3),
(156, 'content-manager', 'contentmanager', 'update', 0, '', 3),
(157, 'content-manager', 'contentmanager', 'updatesettings', 0, '', 3),
(158, 'content-manager', 'contentmanager', 'delete', 0, '', 3),
(159, 'content-manager', 'contentmanager', 'deleteall', 0, '', 3),
(160, 'content-type-builder', 'contenttypebuilder', 'getmodels', 0, '', 3),
(161, 'content-type-builder', 'contenttypebuilder', 'getmodel', 0, '', 3),
(162, 'content-type-builder', 'contenttypebuilder', 'getconnections', 0, '', 3),
(163, 'content-type-builder', 'contenttypebuilder', 'createmodel', 0, '', 3),
(164, 'content-type-builder', 'contenttypebuilder', 'updatemodel', 0, '', 3),
(165, 'content-type-builder', 'contenttypebuilder', 'deletemodel', 0, '', 3),
(166, 'content-type-builder', 'contenttypebuilder', 'autoreload', 1, '', 3),
(167, 'content-type-builder', 'contenttypebuilder', 'checktableexists', 0, '', 3),
(168, 'email', 'email', 'send', 0, '', 3),
(169, 'email', 'email', 'getenvironments', 0, '', 3),
(170, 'email', 'email', 'getsettings', 0, '', 3),
(171, 'email', 'email', 'updatesettings', 0, '', 3),
(172, 'settings-manager', 'settingsmanager', 'menu', 0, '', 3),
(173, 'settings-manager', 'settingsmanager', 'environments', 0, '', 3),
(174, 'settings-manager', 'settingsmanager', 'languages', 0, '', 3),
(175, 'settings-manager', 'settingsmanager', 'databases', 0, '', 3),
(176, 'settings-manager', 'settingsmanager', 'database', 0, '', 3),
(177, 'settings-manager', 'settingsmanager', 'databasemodel', 0, '', 3),
(178, 'settings-manager', 'settingsmanager', 'get', 0, '', 3),
(179, 'settings-manager', 'settingsmanager', 'update', 0, '', 3),
(180, 'settings-manager', 'settingsmanager', 'createlanguage', 0, '', 3),
(181, 'settings-manager', 'settingsmanager', 'deletelanguage', 0, '', 3),
(182, 'settings-manager', 'settingsmanager', 'createdatabase', 0, '', 3),
(183, 'settings-manager', 'settingsmanager', 'updatedatabase', 0, '', 3),
(184, 'settings-manager', 'settingsmanager', 'deletedatabase', 0, '', 3),
(185, 'settings-manager', 'settingsmanager', 'autoreload', 1, '', 3),
(186, 'upload', 'upload', 'upload', 0, '', 3),
(187, 'upload', 'upload', 'getenvironments', 0, '', 3),
(188, 'upload', 'upload', 'getsettings', 0, '', 3),
(189, 'upload', 'upload', 'updatesettings', 0, '', 3),
(190, 'upload', 'upload', 'find', 0, '', 3),
(191, 'upload', 'upload', 'findone', 0, '', 3),
(192, 'upload', 'upload', 'count', 0, '', 3),
(193, 'upload', 'upload', 'destroy', 0, '', 3),
(194, 'upload', 'upload', 'search', 0, '', 3),
(195, 'users-permissions', 'auth', 'callback', 1, '', 3),
(196, 'users-permissions', 'auth', 'changepassword', 1, '', 3),
(197, 'users-permissions', 'auth', 'connect', 1, '', 3),
(198, 'users-permissions', 'auth', 'forgotpassword', 1, '', 3),
(199, 'users-permissions', 'auth', 'register', 1, '', 3),
(200, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 3),
(201, 'users-permissions', 'user', 'find', 0, '', 3),
(202, 'users-permissions', 'user', 'me', 1, '', 3),
(203, 'users-permissions', 'user', 'findone', 0, '', 3),
(204, 'users-permissions', 'user', 'create', 0, '', 3),
(205, 'users-permissions', 'user', 'update', 0, '', 3),
(206, 'users-permissions', 'user', 'destroy', 0, '', 3),
(207, 'users-permissions', 'user', 'destroyall', 0, '', 3),
(208, 'users-permissions', 'userspermissions', 'createrole', 0, '', 3),
(209, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 3),
(210, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 3),
(211, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 3),
(212, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 3),
(213, 'users-permissions', 'userspermissions', 'getrole', 0, '', 3),
(214, 'users-permissions', 'userspermissions', 'getroles', 0, '', 3),
(215, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 3),
(216, 'users-permissions', 'userspermissions', 'index', 0, '', 3),
(217, 'users-permissions', 'userspermissions', 'init', 1, '', 3),
(218, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 3),
(219, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 3),
(220, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 3),
(221, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 3),
(222, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 3),
(223, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 3),
(224, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 3),
(225, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 3),
(226, 'application', 'news', 'find', 1, '', 1),
(227, 'application', 'news', 'findone', 1, '', 1),
(228, 'application', 'news', 'count', 1, '', 1),
(229, 'application', 'news', 'create', 1, '', 1),
(230, 'application', 'news', 'update', 1, '', 1),
(231, 'application', 'news', 'destroy', 1, '', 1),
(232, 'application', 'news', 'find', 0, '', 2),
(233, 'application', 'news', 'findone', 0, '', 2),
(234, 'application', 'news', 'count', 0, '', 2),
(235, 'application', 'news', 'create', 0, '', 2),
(236, 'application', 'news', 'update', 0, '', 2),
(237, 'application', 'news', 'destroy', 0, '', 2),
(238, 'application', 'news', 'find', 0, '', 3),
(239, 'application', 'news', 'findone', 0, '', 3),
(240, 'application', 'news', 'count', 0, '', 3),
(241, 'application', 'news', 'create', 0, '', 3),
(242, 'application', 'news', 'update', 0, '', 3),
(243, 'application', 'news', 'destroy', 0, '', 3),
(244, 'application', 'category', 'find', 1, '', 1),
(245, 'application', 'category', 'findone', 1, '', 1),
(246, 'application', 'category', 'count', 1, '', 1),
(247, 'application', 'category', 'create', 1, '', 1),
(248, 'application', 'category', 'update', 1, '', 1),
(249, 'application', 'category', 'destroy', 1, '', 1),
(250, 'application', 'category', 'find', 0, '', 2),
(251, 'application', 'category', 'findone', 0, '', 2),
(252, 'application', 'category', 'count', 0, '', 2),
(253, 'application', 'category', 'create', 0, '', 2),
(254, 'application', 'category', 'update', 0, '', 2),
(255, 'application', 'category', 'destroy', 0, '', 2),
(256, 'application', 'category', 'find', 0, '', 3),
(257, 'application', 'category', 'findone', 0, '', 3),
(258, 'application', 'category', 'count', 0, '', 3),
(259, 'application', 'category', 'create', 0, '', 3),
(260, 'application', 'category', 'update', 0, '', 3),
(261, 'application', 'category', 'destroy', 0, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_role`
--

CREATE TABLE `users-permissions_role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`) VALUES
(1, 'Administrator', 'These users have all access in the project.', 'root'),
(2, 'Authenticated', 'Default role given to authenticated user.', 'authenticated'),
(3, 'Public', 'Default role given to unauthenticated user.', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_user`
--

CREATE TABLE `users-permissions_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users-permissions_user`
--

INSERT INTO `users-permissions_user` (`id`, `username`, `email`, `provider`, `password`, `resetPasswordToken`, `confirmed`, `blocked`, `role`) VALUES
(1, 'zahid', 'zahid.cse02@gmail.com', 'local', '$2a$10$jdSt25igVvwTK741V0fe6Osw9Bh1B9du2A.nS192XIiVPOtK4EfOq', NULL, 1, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `categories` ADD FULLTEXT KEY `SEARCH_CATEGORIES` (`name`);

--
-- Indexes for table `categories_news__news_categories`
--
ALTER TABLE `categories_news__news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `core_store` ADD FULLTEXT KEY `SEARCH_CORE_STORE` (`key`,`value`,`type`,`environment`,`tag`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `news` ADD FULLTEXT KEY `SEARCH_NEWS` (`newstitle`,`description`);

--
-- Indexes for table `upload_file`
--
ALTER TABLE `upload_file`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `upload_file` ADD FULLTEXT KEY `SEARCH_UPLOAD_FILE` (`name`,`hash`,`sha256`,`ext`,`mime`,`size`,`url`,`provider`,`public_id`);

--
-- Indexes for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `upload_file_morph` ADD FULLTEXT KEY `SEARCH_UPLOAD_FILE_MORPH` (`related_type`,`field`);

--
-- Indexes for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users-permissions_permission` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_PERMISSION` (`type`,`controller`,`action`,`policy`);

--
-- Indexes for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users-permissions_role` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_ROLE` (`name`,`description`,`type`);

--
-- Indexes for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `users-permissions_user` ADD FULLTEXT KEY `SEARCH_USERS_PERMISSIONS_USER` (`username`,`provider`,`resetPasswordToken`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories_news__news_categories`
--
ALTER TABLE `categories_news__news_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upload_file`
--
ALTER TABLE `upload_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
