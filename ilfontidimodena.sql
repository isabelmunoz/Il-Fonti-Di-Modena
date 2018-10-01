-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-09-2018 a las 23:25:02
-- Versión del servidor: 5.6.34-log
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ilfontidimodena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_booking`
--

CREATE TABLE `dl_booking` (
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `trash` bigint(10) NOT NULL DEFAULT '0',
  `sync_gid` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `is_new` bigint(10) NOT NULL DEFAULT '1',
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `sort_date` datetime DEFAULT NULL,
  `modification_date` datetime DEFAULT NULL,
  `form` text COLLATE utf8mb4_unicode_520_ci,
  `booking_type` bigint(10) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_booking`
--

INSERT INTO `dl_booking` (`booking_id`, `trash`, `sync_gid`, `is_new`, `status`, `sort_date`, `modification_date`, `form`, `booking_type`) VALUES
(1, 0, '', 1, '', '2018-09-26 00:00:00', '2018-09-24 21:04:51', 'text^name1^Jony~text^secondname1^Smith~text^email1^example-free@wpbookingcalendar.com~text^phone1^458-77-77~textarea^details1^Reserve a room with sea view', 1),
(2, 0, '', 1, '', '2018-09-30 00:00:00', '2018-09-30 22:53:05', 'text^name1^isha~text^secondname1^muñoz~email^email1^ishamu023@gmail.com~text^phone1^99679042~textarea^details1^para 2 personas', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_bookingdates`
--

CREATE TABLE `dl_bookingdates` (
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `booking_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `approved` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_bookingdates`
--

INSERT INTO `dl_bookingdates` (`booking_id`, `booking_date`, `approved`) VALUES
(1, '2018-09-26 00:00:00', 0),
(1, '2018-09-27 00:00:00', 0),
(1, '2018-09-28 00:00:00', 0),
(2, '2018-09-30 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_commentmeta`
--

CREATE TABLE `dl_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_comments`
--

CREATE TABLE `dl_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_comments`
--

INSERT INTO `dl_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-23 14:40:38', '2018-09-23 14:40:38', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_links`
--

CREATE TABLE `dl_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_mprm_customer`
--

CREATE TABLE `dl_mprm_customer` (
  `id` bigint(11) NOT NULL,
  `user_id` bigint(11) NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `telephone` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `purchase_value` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `purchase_count` bigint(11) NOT NULL,
  `payment_ids` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `notes` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_options`
--

CREATE TABLE `dl_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_options`
--

INSERT INTO `dl_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8080', 'yes'),
(2, 'home', 'http://localhost:8080', 'yes'),
(3, 'blogname', 'Il Fonti Di Modena', 'yes'),
(4, 'blogdescription', 'Restaurant ', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ishamu023@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:111:{s:7:\"menu/?$\";s:24:\"index.php?post_type=menu\";s:37:\"menu/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=menu&feed=$matches[1]\";s:32:\"menu/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=menu&feed=$matches[1]\";s:24:\"menu/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=menu&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:32:\"menu/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"menu/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"menu/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"menu/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"menu/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"menu/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"menu/([^/]+)/embed/?$\";s:37:\"index.php?menu=$matches[1]&embed=true\";s:25:\"menu/([^/]+)/trackback/?$\";s:31:\"index.php?menu=$matches[1]&tb=1\";s:45:\"menu/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?menu=$matches[1]&feed=$matches[2]\";s:40:\"menu/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?menu=$matches[1]&feed=$matches[2]\";s:33:\"menu/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?menu=$matches[1]&paged=$matches[2]\";s:40:\"menu/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?menu=$matches[1]&cpage=$matches[2]\";s:29:\"menu/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?menu=$matches[1]&page=$matches[2]\";s:21:\"menu/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"menu/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"menu/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"menu/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"menu/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"menu/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=22&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:1;s:25:\"booking/wpdev-booking.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Il Fonti Di Modena', 'yes'),
(41, 'stylesheet', 'Il Fonti Di Modena', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:38:\"mp-restaurant-menu/restaurant-menu.php\";a:2:{i:0;s:31:\"MP_Restaurant_Menu_Setup_Plugin\";i:1;s:12:\"on_uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '22', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '8', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'dl_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:100:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:26:\"manage_restaurant_settings\";b:1;s:23:\"manage_restaurant_terms\";b:1;s:22:\"manage_restaurant_menu\";b:1;s:17:\"edit_mp_menu_item\";b:1;s:17:\"read_mp_menu_item\";b:1;s:19:\"delete_mp_menu_item\";b:1;s:18:\"edit_mp_menu_items\";b:1;s:25:\"edit_others_mp_menu_items\";b:1;s:21:\"publish_mp_menu_items\";b:1;s:26:\"read_private_mp_menu_items\";b:1;s:20:\"delete_mp_menu_items\";b:1;s:28:\"delete_private_mp_menu_items\";b:1;s:30:\"delete_published_mp_menu_items\";b:1;s:27:\"delete_others_mp_menu_items\";b:1;s:26:\"edit_private_mp_menu_items\";b:1;s:28:\"edit_published_mp_menu_items\";b:1;s:25:\"manage_mp_menu_item_terms\";b:1;s:23:\"edit_mp_menu_item_terms\";b:1;s:25:\"delete_mp_menu_item_terms\";b:1;s:25:\"assign_mp_menu_item_terms\";b:1;s:23:\"view_mp_menu_item_stats\";b:1;s:15:\"edit_mprm_order\";b:1;s:15:\"read_mprm_order\";b:1;s:17:\"delete_mprm_order\";b:1;s:16:\"edit_mprm_orders\";b:1;s:23:\"edit_others_mprm_orders\";b:1;s:19:\"publish_mprm_orders\";b:1;s:24:\"read_private_mprm_orders\";b:1;s:18:\"delete_mprm_orders\";b:1;s:26:\"delete_private_mprm_orders\";b:1;s:28:\"delete_published_mprm_orders\";b:1;s:25:\"delete_others_mprm_orders\";b:1;s:24:\"edit_private_mprm_orders\";b:1;s:26:\"edit_published_mprm_orders\";b:1;s:23:\"manage_mprm_order_terms\";b:1;s:21:\"edit_mprm_order_terms\";b:1;s:23:\"delete_mprm_order_terms\";b:1;s:23:\"assign_mprm_order_terms\";b:1;s:21:\"view_mprm_order_stats\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:12:\"mprm_manager\";a:2:{s:4:\"name\";s:18:\"Restaurant Manager\";s:12:\"capabilities\";a:68:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:1;s:15:\"unfiltered_html\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:19:\"delete_others_pages\";b:1;s:19:\"delete_others_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:17:\"edit_others_posts\";b:1;s:10:\"edit_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:13:\"publish_pages\";b:1;s:13:\"publish_posts\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:26:\"manage_restaurant_settings\";b:1;s:23:\"manage_restaurant_terms\";b:1;s:22:\"manage_restaurant_menu\";b:1;s:14:\"manage_options\";b:1;s:17:\"edit_mp_menu_item\";b:1;s:17:\"read_mp_menu_item\";b:1;s:19:\"delete_mp_menu_item\";b:1;s:18:\"edit_mp_menu_items\";b:1;s:25:\"edit_others_mp_menu_items\";b:1;s:21:\"publish_mp_menu_items\";b:1;s:26:\"read_private_mp_menu_items\";b:1;s:20:\"delete_mp_menu_items\";b:1;s:28:\"delete_private_mp_menu_items\";b:1;s:30:\"delete_published_mp_menu_items\";b:1;s:27:\"delete_others_mp_menu_items\";b:1;s:26:\"edit_private_mp_menu_items\";b:1;s:28:\"edit_published_mp_menu_items\";b:1;s:25:\"manage_mp_menu_item_terms\";b:1;s:23:\"edit_mp_menu_item_terms\";b:1;s:25:\"delete_mp_menu_item_terms\";b:1;s:25:\"assign_mp_menu_item_terms\";b:1;s:23:\"view_mp_menu_item_stats\";b:1;s:15:\"edit_mprm_order\";b:1;s:15:\"read_mprm_order\";b:1;s:17:\"delete_mprm_order\";b:1;s:16:\"edit_mprm_orders\";b:1;s:23:\"edit_others_mprm_orders\";b:1;s:19:\"publish_mprm_orders\";b:1;s:24:\"read_private_mprm_orders\";b:1;s:18:\"delete_mprm_orders\";b:1;s:26:\"delete_private_mprm_orders\";b:1;s:28:\"delete_published_mprm_orders\";b:1;s:25:\"delete_others_mprm_orders\";b:1;s:24:\"edit_private_mprm_orders\";b:1;s:26:\"edit_published_mprm_orders\";b:1;s:23:\"manage_mprm_order_terms\";b:1;s:21:\"edit_mprm_order_terms\";b:1;s:23:\"delete_mprm_order_terms\";b:1;s:23:\"assign_mprm_order_terms\";b:1;s:21:\"view_mprm_order_stats\";b:1;}}s:13:\"mprm_customer\";a:2:{s:4:\"name\";s:19:\"Restaurant Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_ES', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:6:\"home_1\";a:1:{i:0;s:10:\"calendar-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:\"title\";s:8:\"calendar\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1538350840;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1538361640;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1538405078;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1538431269;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1537717019;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(128, 'can_compress_scripts', '0', 'no'),
(146, 'current_theme', 'Il Fonti Di Modena', 'yes'),
(147, 'theme_mods_Il Fonti Di Modena', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:8;}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(175, '_site_transient_timeout_browser_8651940b33fd1e958c905441aa40a03d', '1538430556', 'no'),
(176, '_site_transient_browser_8651940b33fd1e958c905441aa40a03d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"69.0.3497.100\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(183, 'recently_activated', 'a:2:{s:30:\"advanced-custom-fields/acf.php\";i:1538344804;s:38:\"mp-restaurant-menu/restaurant-menu.php\";i:1537837622;}', 'yes'),
(198, 'mprm_db_version', '2.0.0', 'yes'),
(199, 'mprm_settings', 'a:27:{s:8:\"currency\";s:3:\"USD\";s:13:\"template_mode\";s:5:\"theme\";s:14:\"customer_phone\";s:1:\"1\";s:8:\"gateways\";a:2:{s:6:\"paypal\";s:1:\"1\";s:6:\"manual\";s:1:\"1\";}s:15:\"item_quantities\";s:1:\"1\";s:16:\"shipping_address\";s:1:\"1\";s:16:\"enable_ajax_cart\";s:1:\"1\";s:15:\"default_gateway\";s:6:\"manual\";s:14:\"checkout_color\";s:7:\"inherit\";s:16:\"checkout_padding\";s:12:\"mprm-inherit\";s:17:\"currency_position\";s:6:\"before\";s:19:\"thousands_separator\";s:1:\",\";s:17:\"decimal_separator\";s:1:\".\";s:15:\"number_decimals\";s:1:\"2\";s:14:\"accepted_cards\";a:5:{s:10:\"mastercard\";s:10:\"Mastercard\";s:4:\"visa\";s:4:\"Visa\";s:15:\"americanexpress\";s:16:\"American Express\";s:8:\"discover\";s:8:\"Discover\";s:6:\"paypal\";s:6:\"PayPal\";}s:20:\"checkout_include_tax\";s:2:\"no\";s:14:\"checkout_label\";s:8:\"Purchase\";s:16:\"add_to_cart_text\";s:11:\"Add to Cart\";s:12:\"buy_now_text\";s:7:\"Buy Now\";s:16:\"display_taxonomy\";s:7:\"default\";s:13:\"taxonomy_grid\";a:5:{s:3:\"col\";s:1:\"3\";s:10:\"categ_name\";s:9:\"only_text\";s:8:\"feat_img\";s:1:\"1\";s:11:\"ingredients\";s:1:\"1\";s:9:\"link_item\";s:1:\"1\";}s:13:\"taxonomy_list\";a:5:{s:3:\"col\";s:1:\"2\";s:10:\"categ_name\";s:9:\"only_text\";s:8:\"feat_img\";s:1:\"1\";s:11:\"ingredients\";s:1:\"1\";s:9:\"link_item\";s:1:\"1\";}s:20:\"taxonomy_simple_list\";a:5:{s:3:\"col\";s:1:\"1\";s:9:\"price_pos\";s:6:\"points\";s:10:\"categ_name\";s:9:\"only_text\";s:5:\"price\";s:1:\"1\";s:9:\"link_item\";s:1:\"1\";}s:13:\"purchase_page\";s:0:\"\";s:12:\"success_page\";s:0:\"\";s:12:\"failure_page\";s:0:\"\";s:21:\"purchase_history_page\";s:0:\"\";}', 'yes'),
(200, 'mprm_use_php_sessions', '1', 'yes'),
(201, 'widget_mprm_menu_item', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(202, 'widget_mprm_category', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(203, 'widget_mprm_cart_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(207, 'mp_menu_category_children', 'a:0:{}', 'yes'),
(211, 'mp_menu_tag_children', 'a:0:{}', 'yes'),
(226, 'booking_activation_process', 'Off', 'yes'),
(227, 'booking_admin_cal_count', '2', 'yes'),
(228, 'booking_skin', '/css/skins/traditional.css', 'yes'),
(229, 'booking_num_per_page', '10', 'yes'),
(230, 'booking_sort_order', '', 'yes'),
(231, 'booking_default_toolbar_tab', 'filter', 'yes'),
(232, 'booking_listing_default_view_mode', 'vm_calendar', 'yes'),
(233, 'booking_view_days_num', '90', 'yes'),
(234, 'booking_max_monthes_in_calendar', '1m', 'yes'),
(235, 'booking_client_cal_count', '1', 'yes'),
(236, 'booking_start_day_weeek', '1', 'yes'),
(237, 'booking_title_after_reservation', 'Gracias por su reserva online.  Le enviaremos la confirmación de su reserva lo antes posible.', 'yes'),
(238, 'booking_title_after_reservation_time', '7000', 'yes'),
(239, 'booking_type_of_thank_you_message', 'message', 'yes'),
(240, 'booking_thank_you_page_URL', '/thank-you', 'yes'),
(241, 'booking_is_use_autofill_4_logged_user', 'Off', 'yes'),
(242, 'booking_date_format', 'j F, Y', 'yes'),
(243, 'booking_date_view_type', 'short', 'yes'),
(244, 'booking_is_delete_if_deactive', 'Off', 'yes'),
(245, 'booking_dif_colors_approval_pending', 'On', 'yes'),
(246, 'booking_is_use_hints_at_admin_panel', 'On', 'yes'),
(247, 'booking_is_not_load_bs_script_in_client', 'Off', 'yes'),
(248, 'booking_is_not_load_bs_script_in_admin', 'Off', 'yes'),
(249, 'booking_is_load_js_css_on_specific_pages', 'Off', 'yes'),
(250, 'booking_is_show_system_debug_log', 'Off', 'yes'),
(251, 'booking_pages_for_load_js_css', '', 'yes'),
(252, 'booking_type_of_day_selections', 'multiple', 'yes'),
(253, 'booking_timeslot_day_bg_as_available', 'On', 'yes'),
(254, 'booking_form_is_using_bs_css', 'On', 'yes'),
(255, 'booking_form_format_type', 'vertical', 'yes'),
(256, 'booking_form_field_active1', 'On', 'yes'),
(257, 'booking_form_field_required1', 'On', 'yes'),
(258, 'booking_form_field_label1', 'First Name', 'yes'),
(259, 'booking_form_field_active2', 'On', 'yes'),
(260, 'booking_form_field_required2', 'On', 'yes'),
(261, 'booking_form_field_label2', 'Last Name', 'yes'),
(262, 'booking_form_field_active3', 'On', 'yes'),
(263, 'booking_form_field_required3', 'On', 'yes'),
(264, 'booking_form_field_label3', 'Email', 'yes'),
(265, 'booking_form_field_active4', 'On', 'yes'),
(266, 'booking_form_field_required4', 'Off', 'yes'),
(267, 'booking_form_field_label4', 'Phone', 'yes'),
(268, 'booking_form_field_active5', 'On', 'yes'),
(269, 'booking_form_field_required5', 'Off', 'yes'),
(270, 'booking_form_field_label5', 'Details', 'yes'),
(271, 'booking_form_field_active6', 'Off', 'yes'),
(272, 'booking_form_field_required6', 'Off', 'yes'),
(273, 'booking_form_field_label6', 'Visitors', 'yes'),
(274, 'booking_form_field_values6', '1\n2\n3\n4', 'yes'),
(275, 'booking_is_days_always_available', 'Off', 'yes'),
(276, 'booking_is_show_pending_days_as_available', 'Off', 'yes'),
(277, 'booking_check_on_server_if_dates_free', 'Off', 'yes'),
(278, 'booking_unavailable_days_num_from_today', '0', 'yes'),
(279, 'booking_unavailable_day0', 'Off', 'yes'),
(280, 'booking_unavailable_day1', 'Off', 'yes'),
(281, 'booking_unavailable_day2', 'Off', 'yes'),
(282, 'booking_unavailable_day3', 'Off', 'yes'),
(283, 'booking_unavailable_day4', 'Off', 'yes'),
(284, 'booking_unavailable_day5', 'Off', 'yes'),
(285, 'booking_unavailable_day6', 'Off', 'yes'),
(286, 'booking_menu_position', 'top', 'yes'),
(287, 'booking_user_role_booking', 'editor', 'yes'),
(288, 'booking_user_role_addbooking', 'editor', 'yes'),
(289, 'booking_user_role_resources', 'editor', 'yes'),
(290, 'booking_user_role_settings', 'administrator', 'yes'),
(291, 'booking_is_email_reservation_adress', 'On', 'yes'),
(292, 'booking_email_reservation_adress', '&quot;Booking system&quot; &lt;ishamu023@gmail.com&gt;', 'yes'),
(293, 'booking_email_reservation_from_adress', '[visitoremail]', 'yes'),
(294, 'booking_email_reservation_subject', 'Nueva reserva', 'yes'),
(295, 'booking_email_reservation_content', 'Se ha solicitado una nueva reserva [bookingtype] para el día: [dates]&lt;br/&gt;&lt;br/&gt; Información de la persona que ha solicitado la reserva:&lt;br/&gt; [content]&lt;br/&gt;&lt;br/&gt; Nueva reserva pendiente de aprobación. Visite el panel de administración para gestionarla [moderatelink]&lt;br/&gt;&lt;br/&gt;Gracias, Il Fonti Di Modena&lt;br/&gt;[siteurl]', 'yes'),
(296, 'booking_is_email_newbookingbyperson_adress', 'Off', 'yes'),
(297, 'booking_email_newbookingbyperson_adress', '&quot;Booking system&quot; &lt;ishamu023@gmail.com&gt;', 'yes'),
(298, 'booking_email_newbookingbyperson_subject', 'Nueva reserva', 'yes'),
(299, 'booking_email_newbookingbyperson_content', 'Su reserva [bookingtype] para: [dates] se está procesando! Le enviaremos la confirmación por correo electrónico. &lt;br/&gt;&lt;br/&gt;[content]&lt;br/&gt;&lt;br/&gt; Gracias, Il Fonti Di Modena&lt;br/&gt;[siteurl]', 'yes'),
(300, 'booking_is_email_approval_adress', 'On', 'yes'),
(301, 'booking_is_email_approval_send_copy_to_admin', 'Off', 'yes'),
(302, 'booking_email_approval_adress', '&quot;Booking system&quot; &lt;ishamu023@gmail.com&gt;', 'yes'),
(303, 'booking_email_approval_subject', 'Su reserva ha sido aprobada', 'yes'),
(304, 'booking_email_approval_content', 'Su reserva [bookingtype] para: [dates] ha sido aprobada. &lt;br/&gt;&lt;br/&gt;[content]&lt;br/&gt;&lt;br/&gt; Gracias, Il Fonti Di Modena&lt;br/&gt;[siteurl]', 'yes'),
(305, 'booking_is_email_deny_adress', 'On', 'yes'),
(306, 'booking_is_email_deny_send_copy_to_admin', 'Off', 'yes'),
(307, 'booking_email_deny_adress', '&quot;Booking system&quot; &lt;ishamu023@gmail.com&gt;', 'yes'),
(308, 'booking_email_deny_subject', 'Su reserva ha sido rechazada', 'yes'),
(309, 'booking_email_deny_content', 'Su reserva [bookingtype] para: [dates] ha sido cancelada. &lt;br/&gt;[denyreason]&lt;br/&gt;&lt;br/&gt;[content]&lt;br/&gt;&lt;br/&gt; Gracias, Il Fonti Di Modena&lt;br/&gt;[siteurl]', 'yes'),
(310, 'booking_widget_title', 'Formulario de reserva', 'yes'),
(311, 'booking_widget_show', 'booking_form', 'yes'),
(312, 'booking_widget_type', '1', 'yes'),
(313, 'booking_widget_calendar_count', '1', 'yes'),
(314, 'booking_widget_last_field', '', 'yes'),
(315, 'booking_wpdev_copyright_adminpanel', 'On', 'yes'),
(316, 'booking_is_show_powered_by_notice', 'On', 'yes'),
(317, 'booking_is_use_captcha', 'On', 'yes'),
(318, 'booking_is_show_legend', 'Off', 'yes'),
(319, 'booking_legend_is_show_item_available', 'On', 'yes'),
(320, 'booking_legend_text_for_item_available', 'Disponible', 'yes'),
(321, 'booking_legend_is_show_item_pending', 'On', 'yes'),
(322, 'booking_legend_text_for_item_pending', 'Pendiente', 'yes'),
(323, 'booking_legend_is_show_item_approved', 'On', 'yes'),
(324, 'booking_legend_text_for_item_approved', 'Reservado', 'yes'),
(325, 'booking_legend_is_show_numbers', 'Off', 'yes'),
(326, 'booking_email_new_admin', 'a:15:{s:7:\"enabled\";s:2:\"On\";s:2:\"to\";s:19:\"ishamu023@gmail.com\";s:7:\"to_name\";s:14:\"Booking system\";s:4:\"from\";s:19:\"ishamu023@gmail.com\";s:9:\"from_name\";s:14:\"Booking system\";s:7:\"subject\";s:13:\"Nueva reserva\";s:7:\"content\";s:320:\"Se ha solicitado una nueva reserva [bookingtype] para el día: [dates]<br/><br/> Información de la persona que ha solicitado la reserva:<br/> [content]<br/><br/> Nueva reserva pendiente de aprobación. Visite el panel de administración para gestionarla [moderatelink]<br/><br/>Gracias, Il Fonti Di Modena<br/>[siteurl]\";s:14:\"header_content\";s:0:\"\";s:14:\"footer_content\";s:0:\"\";s:13:\"template_file\";s:5:\"plain\";s:10:\"base_color\";s:7:\"#557da1\";s:16:\"background_color\";s:7:\"#f5f5f5\";s:10:\"body_color\";s:7:\"#fdfdfd\";s:10:\"text_color\";s:7:\"#505050\";s:18:\"email_content_type\";s:4:\"html\";}', 'yes'),
(327, 'booking_email_new_visitor', 'a:13:{s:7:\"enabled\";s:2:\"On\";s:4:\"from\";s:19:\"ishamu023@gmail.com\";s:9:\"from_name\";s:14:\"Booking system\";s:7:\"subject\";s:13:\"Nueva reserva\";s:7:\"content\";s:187:\"Su reserva [bookingtype] para: [dates] se está procesando! Le enviaremos la confirmación por correo electrónico. <br/><br/>[content]<br/><br/> Gracias, Il Fonti Di Modena<br/>[siteurl]\";s:14:\"header_content\";s:0:\"\";s:14:\"footer_content\";s:0:\"\";s:13:\"template_file\";s:5:\"plain\";s:10:\"base_color\";s:7:\"#557da1\";s:16:\"background_color\";s:7:\"#f5f5f5\";s:10:\"body_color\";s:7:\"#fdfdfd\";s:10:\"text_color\";s:7:\"#505050\";s:18:\"email_content_type\";s:4:\"html\";}', 'yes'),
(328, 'booking_email_approved', 'a:16:{s:7:\"enabled\";s:2:\"On\";s:13:\"copy_to_admin\";s:3:\"Off\";s:2:\"to\";s:19:\"ishamu023@gmail.com\";s:7:\"to_name\";s:14:\"Booking system\";s:4:\"from\";s:19:\"ishamu023@gmail.com\";s:9:\"from_name\";s:14:\"Booking system\";s:7:\"subject\";s:27:\"Su reserva ha sido aprobada\";s:7:\"content\";s:128:\"Su reserva [bookingtype] para: [dates] ha sido aprobada. <br/><br/>[content]<br/><br/> Gracias, Il Fonti Di Modena<br/>[siteurl]\";s:14:\"header_content\";s:0:\"\";s:14:\"footer_content\";s:0:\"\";s:13:\"template_file\";s:5:\"plain\";s:10:\"base_color\";s:7:\"#557da1\";s:16:\"background_color\";s:7:\"#f5f5f5\";s:10:\"body_color\";s:7:\"#fdfdfd\";s:10:\"text_color\";s:7:\"#505050\";s:18:\"email_content_type\";s:4:\"html\";}', 'yes'),
(329, 'booking_email_deleted', 'a:16:{s:7:\"enabled\";s:2:\"On\";s:13:\"copy_to_admin\";s:3:\"Off\";s:2:\"to\";s:19:\"ishamu023@gmail.com\";s:7:\"to_name\";s:14:\"Booking system\";s:4:\"from\";s:19:\"ishamu023@gmail.com\";s:9:\"from_name\";s:14:\"Booking system\";s:7:\"subject\";s:28:\"Su reserva ha sido rechazada\";s:7:\"content\";s:146:\"Su reserva [bookingtype] para: [dates] ha sido cancelada. <br/>[denyreason]<br/><br/>[content]<br/><br/> Gracias, Il Fonti Di Modena<br/>[siteurl]\";s:14:\"header_content\";s:0:\"\";s:14:\"footer_content\";s:0:\"\";s:13:\"template_file\";s:5:\"plain\";s:10:\"base_color\";s:7:\"#557da1\";s:16:\"background_color\";s:7:\"#f5f5f5\";s:10:\"body_color\";s:7:\"#fdfdfd\";s:10:\"text_color\";s:7:\"#505050\";s:18:\"email_content_type\";s:4:\"html\";}', 'yes'),
(330, 'booking_email_deny', 'a:16:{s:7:\"enabled\";s:2:\"On\";s:13:\"copy_to_admin\";s:3:\"Off\";s:2:\"to\";s:19:\"ishamu023@gmail.com\";s:7:\"to_name\";s:14:\"Booking system\";s:4:\"from\";s:19:\"ishamu023@gmail.com\";s:9:\"from_name\";s:14:\"Booking system\";s:7:\"subject\";s:28:\"Su reserva ha sido rechazada\";s:7:\"content\";s:146:\"Su reserva [bookingtype] para: [dates] ha sido cancelada. <br/>[denyreason]<br/><br/>[content]<br/><br/> Gracias, Il Fonti Di Modena<br/>[siteurl]\";s:14:\"header_content\";s:0:\"\";s:14:\"footer_content\";s:0:\"\";s:13:\"template_file\";s:5:\"plain\";s:10:\"base_color\";s:7:\"#557da1\";s:16:\"background_color\";s:7:\"#f5f5f5\";s:10:\"body_color\";s:7:\"#fdfdfd\";s:10:\"text_color\";s:7:\"#505050\";s:18:\"email_content_type\";s:4:\"html\";}', 'yes'),
(331, 'booking_email_trash', 'a:16:{s:7:\"enabled\";s:2:\"On\";s:13:\"copy_to_admin\";s:3:\"Off\";s:2:\"to\";s:19:\"ishamu023@gmail.com\";s:7:\"to_name\";s:14:\"Booking system\";s:4:\"from\";s:19:\"ishamu023@gmail.com\";s:9:\"from_name\";s:14:\"Booking system\";s:7:\"subject\";s:28:\"Su reserva ha sido rechazada\";s:7:\"content\";s:146:\"Su reserva [bookingtype] para: [dates] ha sido cancelada. <br/>[denyreason]<br/><br/>[content]<br/><br/> Gracias, Il Fonti Di Modena<br/>[siteurl]\";s:14:\"header_content\";s:0:\"\";s:14:\"footer_content\";s:0:\"\";s:13:\"template_file\";s:5:\"plain\";s:10:\"base_color\";s:7:\"#557da1\";s:16:\"background_color\";s:7:\"#f5f5f5\";s:10:\"body_color\";s:7:\"#fdfdfd\";s:10:\"text_color\";s:7:\"#505050\";s:18:\"email_content_type\";s:4:\"html\";}', 'yes'),
(332, 'booking_form_structure_type', 'vertical', 'yes'),
(333, 'booking_menu_go_pro', 'show', 'yes'),
(334, 'booking_form', '<div class=\"wpbc_booking_form_structure wpbc_vertical\">\n  <div class=\"wpbc_structure_calendar\">\n    [calendar]\n  </div>\n  <div class=\"wpbc_structure_form\">\n     <p>Nombres*:<br />[text* name]</p>\n     <p>Apellidos*:<br />[text* secondname]</p>\n     <p>Email*:<br />[email* email]</p>\n     <p>Teléfono*:<br />[text* phone]</p>\n     <p>Detalles:<br />[textarea details]</p>\n     <p>[captcha]</p>\n     <p>[submit class:btn \"Send\"]</p>\n  </div>\n</div>\n<div class=\"wpbc_booking_form_footer\"></div>', 'yes'),
(335, 'booking_form_show', '<div style=\"text-align:left;word-wrap: break-word;\">\n  <strong>Nombres</strong>: <span class=\"fieldvalue\">[name]</span><br/>\n  <strong>Apellidos</strong>: <span class=\"fieldvalue\">[secondname]</span><br/>\n  <strong>Email</strong>: <span class=\"fieldvalue\">[email]</span><br/>\n  <strong>Teléfono</strong>: <span class=\"fieldvalue\">[phone]</span><br/>\n  <strong>Detalles</strong>: <span class=\"fieldvalue\">[details]</span><br/>\n</div>', 'yes'),
(336, 'booking_form_visual', 'a:9:{i:0;a:2:{s:4:\"type\";s:8:\"calendar\";s:10:\"obligatory\";s:2:\"On\";}i:1;a:8:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:4:\"name\";s:10:\"obligatory\";s:3:\"Off\";s:6:\"active\";s:2:\"On\";s:8:\"required\";s:2:\"On\";s:17:\"if_exist_required\";s:3:\"Off\";s:5:\"label\";s:7:\"Nombres\";s:5:\"value\";s:0:\"\";}i:2;a:8:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:10:\"secondname\";s:10:\"obligatory\";s:3:\"Off\";s:6:\"active\";s:2:\"On\";s:8:\"required\";s:2:\"On\";s:17:\"if_exist_required\";s:3:\"Off\";s:5:\"label\";s:9:\"Apellidos\";s:5:\"value\";s:0:\"\";}i:3;a:8:{s:4:\"type\";s:5:\"email\";s:4:\"name\";s:5:\"email\";s:10:\"obligatory\";s:2:\"On\";s:6:\"active\";s:2:\"On\";s:8:\"required\";s:2:\"On\";s:17:\"if_exist_required\";s:3:\"Off\";s:5:\"label\";s:5:\"Email\";s:5:\"value\";s:0:\"\";}i:4;a:8:{s:4:\"type\";s:6:\"select\";s:4:\"name\";s:8:\"visitors\";s:10:\"obligatory\";s:3:\"Off\";s:6:\"active\";s:3:\"Off\";s:8:\"required\";s:3:\"Off\";s:17:\"if_exist_required\";s:3:\"Off\";s:5:\"label\";s:8:\"Visitors\";s:5:\"value\";s:10:\"1\r\n2\r\n3\r\n4\";}i:5;a:8:{s:4:\"type\";s:4:\"text\";s:4:\"name\";s:5:\"phone\";s:10:\"obligatory\";s:3:\"Off\";s:6:\"active\";s:2:\"On\";s:8:\"required\";s:2:\"On\";s:17:\"if_exist_required\";s:3:\"Off\";s:5:\"label\";s:9:\"Teléfono\";s:5:\"value\";s:0:\"\";}i:6;a:8:{s:4:\"type\";s:8:\"textarea\";s:4:\"name\";s:7:\"details\";s:10:\"obligatory\";s:3:\"Off\";s:6:\"active\";s:2:\"On\";s:8:\"required\";s:3:\"Off\";s:17:\"if_exist_required\";s:3:\"Off\";s:5:\"label\";s:8:\"Detalles\";s:5:\"value\";s:0:\"\";}i:7;a:6:{s:4:\"type\";s:7:\"captcha\";s:4:\"name\";s:7:\"captcha\";s:10:\"obligatory\";s:2:\"On\";s:6:\"active\";s:2:\"On\";s:8:\"required\";s:2:\"On\";s:5:\"label\";s:0:\"\";}i:8;a:6:{s:4:\"type\";s:6:\"submit\";s:4:\"name\";s:6:\"submit\";s:10:\"obligatory\";s:2:\"On\";s:6:\"active\";s:2:\"On\";s:8:\"required\";s:2:\"On\";s:5:\"label\";s:6:\"Enviar\";}}', 'yes'),
(337, 'booking_gcal_feed', '', 'yes'),
(338, 'booking_gcal_events_from', 'month-start', 'yes'),
(339, 'booking_gcal_events_from_offset', '', 'yes'),
(340, 'booking_gcal_events_from_offset_type', '', 'yes'),
(341, 'booking_gcal_events_until', 'any', 'yes'),
(342, 'booking_gcal_events_until_offset', '', 'yes'),
(343, 'booking_gcal_events_until_offset_type', '', 'yes'),
(344, 'booking_gcal_events_max', '25', 'yes'),
(345, 'booking_gcal_api_key', '', 'yes'),
(346, 'booking_gcal_timezone', '', 'yes'),
(347, 'booking_gcal_is_send_email', 'Off', 'yes'),
(348, 'booking_gcal_auto_import_is_active', 'Off', 'yes'),
(349, 'booking_gcal_auto_import_time', '24', 'yes'),
(350, 'booking_gcal_events_form_fields', 's:101:\"a:3:{s:5:\"title\";s:9:\"text^name\";s:11:\"description\";s:16:\"textarea^details\";s:5:\"where\";s:5:\"text^\";}\";', 'yes'),
(351, 'booking_version_num', '8.4', 'yes'),
(354, 'widget_bookingwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(355, 'booking_activation_redirect_for_version', '8.4', 'yes'),
(357, 'mprm_capabilities_version', '0.0.0', 'yes'),
(434, 'acf_version', '5.7.6', 'yes'),
(459, '_site_transient_timeout_theme_roots', '1538326985', 'no'),
(460, '_site_transient_theme_roots', 'a:1:{s:18:\"Il Fonti Di Modena\";s:7:\"/themes\";}', 'no'),
(461, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1538325189;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-30 10:41:34\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/es_ES.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(462, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1538325190;s:7:\"checked\";a:1:{s:18:\"Il Fonti Di Modena\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(463, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1538344799;s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.7.6\";s:25:\"booking/wpdev-booking.php\";s:3:\"8.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"booking\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"8.4\";s:7:\"updated\";s:19:\"2018-09-25 15:58:26\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/translation/plugin/booking/8.4/es_ES.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.7.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"booking/wpdev-booking.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/booking\";s:4:\"slug\";s:7:\"booking\";s:6:\"plugin\";s:25:\"booking/wpdev-booking.php\";s:11:\"new_version\";s:3:\"8.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/booking/\";s:7:\"package\";s:50:\"https://downloads.wordpress.org/plugin/booking.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/booking/assets/icon-256x256.png?rev=1730848\";s:2:\"1x\";s:60:\"https://ps.w.org/booking/assets/icon-128x128.png?rev=1730848\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/booking/assets/banner-772x250.png?rev=1623635\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(469, '_transient_timeout_plugin_slugs', '1538431205', 'no'),
(470, '_transient_plugin_slugs', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:25:\"booking/wpdev-booking.php\";}', 'no'),
(477, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_postmeta`
--

CREATE TABLE `dl_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_postmeta`
--

INSERT INTO `dl_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 6, '_wp_trash_meta_status', 'publish'),
(6, 6, '_wp_trash_meta_time', '1537717836'),
(7, 7, '_wp_trash_meta_status', 'publish'),
(8, 7, '_wp_trash_meta_time', '1537729450'),
(11, 8, '_wp_attached_file', '2018/09/logo.png'),
(12, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:496;s:6:\"height\";i:100;s:4:\"file\";s:16:\"2018/09/logo.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-150x100.png\";s:5:\"width\";i:150;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"logo-300x60.png\";s:5:\"width\";i:300;s:6:\"height\";i:60;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 9, '_wp_trash_meta_status', 'publish'),
(14, 9, '_wp_trash_meta_time', '1537731838'),
(15, 10, '_edit_last', '1'),
(16, 10, '_edit_lock', '1537837474:1'),
(20, 10, 'price', '0'),
(21, 10, 'nutritional', 'a:7:{s:8:\"calories\";a:2:{s:3:\"val\";s:0:\"\";s:5:\"title\";s:8:\"Calories\";}s:11:\"cholesterol\";a:2:{s:3:\"val\";s:0:\"\";s:5:\"title\";s:11:\"Cholesterol\";}s:5:\"fiber\";a:2:{s:3:\"val\";s:0:\"\";s:5:\"title\";s:5:\"Fiber\";}s:6:\"sodium\";a:2:{s:3:\"val\";s:0:\"\";s:5:\"title\";s:6:\"Sodium\";}s:13:\"carbohydrates\";a:2:{s:3:\"val\";s:0:\"\";s:5:\"title\";s:13:\"Carbohydrates\";}s:3:\"fat\";a:2:{s:3:\"val\";s:0:\"\";s:5:\"title\";s:3:\"Fat\";}s:7:\"protein\";a:2:{s:3:\"val\";s:0:\"\";s:5:\"title\";s:7:\"Protein\";}}'),
(22, 10, 'attributes', 'a:3:{s:6:\"weight\";a:2:{s:3:\"val\";s:0:\"\";s:5:\"title\";s:6:\"Weight\";}s:4:\"bulk\";a:2:{s:3:\"val\";s:0:\"\";s:5:\"title\";s:6:\"Volume\";}s:4:\"size\";a:2:{s:3:\"val\";s:0:\"\";s:5:\"title\";s:4:\"Size\";}}'),
(23, 10, 'sku', ''),
(24, 10, 'mp_menu_gallery', ''),
(25, 12, '_edit_last', '1'),
(26, 12, '_edit_lock', '1537827164:1'),
(27, 12, '_wp_trash_meta_status', 'publish'),
(28, 12, '_wp_trash_meta_time', '1537827322'),
(29, 12, '_wp_desired_post_slug', 'home'),
(30, 2, '_wp_trash_meta_status', 'publish'),
(31, 2, '_wp_trash_meta_time', '1537827325'),
(32, 2, '_wp_desired_post_slug', 'pagina-ejemplo'),
(33, 3, '_wp_trash_meta_status', 'draft'),
(34, 3, '_wp_trash_meta_time', '1537827330'),
(35, 3, '_wp_desired_post_slug', 'politica-privacidad'),
(36, 17, '_edit_last', '1'),
(37, 17, '_edit_lock', '1537833525:1'),
(38, 21, '_wp_trash_meta_status', 'publish'),
(39, 21, '_wp_trash_meta_time', '1537833869'),
(40, 17, '_wp_trash_meta_status', 'publish'),
(41, 17, '_wp_trash_meta_time', '1537834364'),
(42, 17, '_wp_desired_post_slug', 'home'),
(43, 22, '_edit_last', '1'),
(44, 22, '_edit_lock', '1538344958:1'),
(45, 26, '_edit_last', '1'),
(46, 26, '_edit_lock', '1537883606:1'),
(47, 31, '_edit_last', '1'),
(48, 31, '_edit_lock', '1538003364:1'),
(49, 32, '_edit_last', '1'),
(50, 32, '_edit_lock', '1538252241:1'),
(52, 35, '_edit_last', '1'),
(53, 35, '_edit_lock', '1538004071:1'),
(54, 32, 'price', '2800'),
(55, 26, '_wp_trash_meta_status', 'publish'),
(56, 26, '_wp_trash_meta_time', '1538006453'),
(57, 26, '_wp_desired_post_slug', 'booking-form'),
(58, 31, '_wp_trash_meta_status', 'draft'),
(59, 31, '_wp_trash_meta_time', '1538068052'),
(60, 31, '_wp_desired_post_slug', ''),
(61, 35, '_wp_trash_meta_status', 'draft'),
(62, 35, '_wp_trash_meta_time', '1538068054'),
(63, 35, '_wp_desired_post_slug', ''),
(64, 37, '_edit_last', '1'),
(65, 37, '_edit_lock', '1538080548:1'),
(66, 22, 'menu_platos', 'Descubra nuestros platos'),
(67, 22, '_menu_platos', 'field_5bad2c4d964f6'),
(68, 39, 'menu_platos', 'Descubra nuestros platos'),
(69, 39, '_menu_platos', 'field_5bad2c4d964f6'),
(70, 41, '_wp_attached_file', '2018/09/polenta_frita.png'),
(71, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:614;s:6:\"height\";i:307;s:4:\"file\";s:25:\"2018/09/polenta_frita.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"polenta_frita-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"polenta_frita-300x150.png\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(72, 32, '_thumbnail_id', '41'),
(73, 42, '_edit_last', '1'),
(74, 42, '_edit_lock', '1538252431:1'),
(75, 43, '_wp_attached_file', '2018/09/peperonata.jpg'),
(76, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:634;s:6:\"height\";i:951;s:4:\"file\";s:22:\"2018/09/peperonata.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"peperonata-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"peperonata-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 42, '_thumbnail_id', '43'),
(78, 44, '_edit_last', '1'),
(79, 44, '_edit_lock', '1538252577:1'),
(80, 45, '_wp_attached_file', '2018/09/provoleta_oregano.jpg'),
(81, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:29:\"2018/09/provoleta_oregano.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"provoleta_oregano-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"provoleta_oregano-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"provoleta_oregano-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"provoleta_oregano-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(82, 44, '_thumbnail_id', '45'),
(83, 46, '_edit_last', '1'),
(84, 46, '_edit_lock', '1538262016:1'),
(85, 47, '_wp_attached_file', '2018/09/melazane_e_prosciuto.jpg'),
(86, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:586;s:6:\"height\";i:439;s:4:\"file\";s:32:\"2018/09/melazane_e_prosciuto.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"melazane_e_prosciuto-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"melazane_e_prosciuto-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 46, '_thumbnail_id', '47'),
(88, 48, '_edit_last', '1'),
(89, 48, '_edit_lock', '1538262278:1'),
(90, 49, '_wp_attached_file', '2018/09/insalatta_danubio.jpg'),
(91, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:701;s:4:\"file\";s:29:\"2018/09/insalatta_danubio.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"insalatta_danubio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"insalatta_danubio-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"insalatta_danubio-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"insalatta_danubio-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 48, '_thumbnail_id', '49'),
(93, 50, '_edit_last', '1'),
(94, 50, '_edit_lock', '1538263249:1'),
(95, 51, '_wp_attached_file', '2018/09/insalatta_pilarre.jpg'),
(96, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1053;s:6:\"height\";i:699;s:4:\"file\";s:29:\"2018/09/insalatta_pilarre.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"insalatta_pilarre-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"insalatta_pilarre-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"insalatta_pilarre-768x510.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"insalatta_pilarre-1024x680.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 50, '_thumbnail_id', '51'),
(98, 52, '_edit_last', '1'),
(99, 52, '_edit_lock', '1538263632:1'),
(100, 53, '_wp_attached_file', '2018/09/insalatta_andree.jpg'),
(101, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:28:\"2018/09/insalatta_andree.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"insalatta_andree-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"insalatta_andree-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"insalatta_andree-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"insalatta_andree-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 52, '_thumbnail_id', '53'),
(103, 54, '_edit_last', '1'),
(104, 54, '_edit_lock', '1538325123:1'),
(105, 55, '_wp_attached_file', '2018/09/zuppa_di_chef.jpg'),
(106, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:700;s:4:\"file\";s:25:\"2018/09/zuppa_di_chef.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"zuppa_di_chef-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"zuppa_di_chef-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"zuppa_di_chef-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"zuppa_di_chef-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 54, '_thumbnail_id', '55'),
(108, 56, '_edit_last', '1'),
(109, 56, '_edit_lock', '1538325253:1'),
(110, 57, '_wp_attached_file', '2018/09/ministrone_genovese.jpg'),
(111, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:634;s:6:\"height\";i:951;s:4:\"file\";s:31:\"2018/09/ministrone_genovese.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"ministrone_genovese-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"ministrone_genovese-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(112, 56, '_thumbnail_id', '57'),
(113, 58, '_edit_last', '1'),
(114, 58, '_edit_lock', '1538325382:1'),
(115, 59, '_wp_attached_file', '2018/09/marguerita.jpg'),
(116, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1189;s:6:\"height\";i:669;s:4:\"file\";s:22:\"2018/09/marguerita.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"marguerita-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"marguerita-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"marguerita-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"marguerita-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 58, '_thumbnail_id', '59'),
(118, 60, '_edit_last', '1'),
(119, 60, '_edit_lock', '1538325435:1'),
(120, 61, '_wp_attached_file', '2018/09/marinara.jpg'),
(121, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:20:\"2018/09/marinara.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"marinara-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 60, '_thumbnail_id', '61'),
(123, 62, '_edit_last', '1'),
(124, 62, '_edit_lock', '1538325558:1'),
(125, 63, '_wp_attached_file', '2018/09/caprissiosa.jpg'),
(126, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:23:\"2018/09/caprissiosa.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"caprissiosa-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"caprissiosa-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"caprissiosa-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"caprissiosa-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 62, '_thumbnail_id', '63'),
(128, 64, '_edit_last', '1'),
(129, 64, '_edit_lock', '1538327770:1'),
(130, 65, '_wp_attached_file', '2018/09/cinque_formaggi.jpg'),
(131, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:27:\"2018/09/cinque_formaggi.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cinque_formaggi-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cinque_formaggi-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 64, '_thumbnail_id', '65'),
(133, 66, '_edit_last', '1'),
(134, 66, '_edit_lock', '1538327898:1'),
(135, 67, '_wp_attached_file', '2018/09/pepperoni.jpg'),
(136, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:4:\"file\";s:21:\"2018/09/pepperoni.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"pepperoni-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"pepperoni-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"pepperoni-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"pepperoni-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 66, '_thumbnail_id', '67'),
(138, 68, '_edit_last', '1'),
(139, 68, '_edit_lock', '1538328050:1'),
(140, 69, '_wp_attached_file', '2018/09/putannesca.jpg'),
(141, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:427;s:4:\"file\";s:22:\"2018/09/putannesca.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"putannesca-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"putannesca-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 68, '_thumbnail_id', '69'),
(143, 70, '_edit_last', '1'),
(144, 70, '_edit_lock', '1538328281:1'),
(145, 71, '_wp_attached_file', '2018/09/capresse.jpg'),
(146, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:20:\"2018/09/capresse.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"capresse-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 70, '_thumbnail_id', '71'),
(148, 72, '_edit_last', '1'),
(149, 72, '_edit_lock', '1538328390:1'),
(150, 73, '_wp_attached_file', '2018/09/mediterranea.jpg'),
(151, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:674;s:6:\"height\";i:450;s:4:\"file\";s:24:\"2018/09/mediterranea.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"mediterranea-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"mediterranea-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(152, 72, '_thumbnail_id', '73'),
(153, 74, '_edit_last', '1'),
(154, 74, '_edit_lock', '1538328572:1'),
(155, 75, '_wp_attached_file', '2018/09/torino.jpg'),
(156, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:400;s:4:\"file\";s:18:\"2018/09/torino.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"torino-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"torino-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(157, 74, '_thumbnail_id', '75'),
(158, 76, '_edit_last', '1'),
(159, 76, '_edit_lock', '1538328652:1'),
(160, 77, '_wp_attached_file', '2018/09/vegetariana.jpg'),
(161, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:549;s:4:\"file\";s:23:\"2018/09/vegetariana.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"vegetariana-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"vegetariana-300x206.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:206;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"vegetariana-768x527.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:527;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 76, '_thumbnail_id', '77'),
(163, 78, '_edit_last', '1'),
(164, 78, '_edit_lock', '1538348432:1'),
(165, 79, '_wp_attached_file', '2018/09/griega.jpg'),
(166, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:18:\"2018/09/griega.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"griega-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"griega-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"griega-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 78, '_thumbnail_id', '79'),
(168, 80, '_edit_last', '1'),
(169, 80, '_edit_lock', '1538348636:1'),
(170, 81, '_wp_attached_file', '2018/09/gelato_di_ciocolatto.jpg'),
(171, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2448;s:6:\"height\";i:2448;s:4:\"file\";s:32:\"2018/09/gelato_di_ciocolatto.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"gelato_di_ciocolatto-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"gelato_di_ciocolatto-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"gelato_di_ciocolatto-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"gelato_di_ciocolatto-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 80, '_thumbnail_id', '83'),
(173, 82, '_edit_last', '1'),
(174, 82, '_edit_lock', '1538348610:1'),
(175, 82, '_thumbnail_id', '81'),
(176, 83, '_wp_attached_file', '2018/09/gelato.jpg'),
(177, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:168;s:4:\"file\";s:18:\"2018/09/gelato.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"gelato-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"gelato-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(178, 84, '_edit_last', '1'),
(179, 84, '_edit_lock', '1538348706:1'),
(180, 85, '_wp_attached_file', '2018/09/panna_cotta.jpg'),
(181, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1500;s:4:\"file\";s:23:\"2018/09/panna_cotta.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"panna_cotta-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"panna_cotta-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"panna_cotta-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"panna_cotta-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"8\";s:6:\"credit\";s:9:\"John Uher\";s:6:\"camera\";s:4:\"P45+\";s:7:\"caption\";s:50:\"Original File Name: 4186-Rasp_Pannacotta-009 1.tif\";s:17:\"created_timestamp\";s:10:\"1317660134\";s:9:\"copyright\";s:32:\"© Copyright 2011 Noel Barnhurst\";s:12:\"focal_length\";s:3:\"120\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:50:\"Original File Name: 4186-Rasp_Pannacotta-009 1.tif\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:6:{i:0;s:11:\"Raspberries\";i:1;s:9:\"Raspberry\";i:2;s:7:\"Dessert\";i:3;s:9:\"WineTwits\";i:4;s:7:\"Blogger\";i:5;s:7:\"Holiday\";}}}'),
(182, 84, '_thumbnail_id', '85'),
(183, 86, '_edit_last', '1'),
(184, 86, '_edit_lock', '1538348823:1'),
(185, 87, '_wp_attached_file', '2018/09/tiramisu.jpg'),
(186, 87, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:616;s:6:\"height\";i:462;s:4:\"file\";s:20:\"2018/09/tiramisu.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"tiramisu-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"tiramisu-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 86, '_thumbnail_id', '87'),
(188, 88, '_edit_last', '1'),
(189, 88, '_edit_lock', '1538348885:1'),
(190, 89, '_wp_attached_file', '2018/09/infusiones.jpg'),
(191, 89, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:358;s:6:\"height\";i:501;s:4:\"file\";s:22:\"2018/09/infusiones.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"infusiones-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"infusiones-214x300.jpg\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(192, 88, '_thumbnail_id', '89'),
(193, 90, '_edit_last', '1'),
(194, 90, '_edit_lock', '1538349095:1'),
(195, 91, '_wp_attached_file', '2018/09/espresso.jpg'),
(196, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:362;s:6:\"height\";i:500;s:4:\"file\";s:20:\"2018/09/espresso.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"espresso-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"espresso-217x300.jpg\";s:5:\"width\";i:217;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 90, '_thumbnail_id', '91'),
(198, 92, '_edit_last', '1'),
(199, 92, '_edit_lock', '1538348951:1'),
(200, 93, '_wp_attached_file', '2018/09/latte.jpg'),
(201, 93, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:334;s:6:\"height\";i:501;s:4:\"file\";s:17:\"2018/09/latte.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"latte-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"latte-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(202, 92, '_thumbnail_id', '93'),
(203, 94, '_edit_last', '1'),
(204, 94, '_edit_lock', '1538349001:1'),
(205, 95, '_wp_attached_file', '2018/09/moccaccino.jpg'),
(206, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:334;s:6:\"height\";i:501;s:4:\"file\";s:22:\"2018/09/moccaccino.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"moccaccino-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"moccaccino-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(207, 94, '_thumbnail_id', '95'),
(208, 96, '_edit_last', '1'),
(209, 96, '_edit_lock', '1538349037:1'),
(210, 97, '_wp_attached_file', '2018/09/agua_mineral.jpg'),
(211, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:334;s:6:\"height\";i:501;s:4:\"file\";s:24:\"2018/09/agua_mineral.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"agua_mineral-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"agua_mineral-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(212, 96, '_thumbnail_id', '97'),
(213, 98, '_edit_last', '1'),
(214, 98, '_edit_lock', '1538349079:1'),
(215, 99, '_wp_attached_file', '2018/09/bebidas.jpg'),
(216, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:752;s:6:\"height\";i:500;s:4:\"file\";s:19:\"2018/09/bebidas.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"bebidas-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"bebidas-300x199.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(217, 98, '_thumbnail_id', '99');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_posts`
--

CREATE TABLE `dl_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_posts`
--

INSERT INTO `dl_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-23 14:40:38', '2018-09-23 14:40:38', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a escribir!', '¡Hola mundo!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2018-09-23 14:40:38', '2018-09-23 14:40:38', '', 0, 'http://localhost:8080/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-23 14:40:38', '2018-09-23 14:40:38', 'Esta es una página de ejemplo, Es diferente a una entrada de blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página Acerca de mí para presentarse a los potenciales visitantes. Podría ser algo así:\n\n<blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Madrid, tengo perrazo llamado Juan y me encantan las piñas coladas (y que me pille un chaparrón)</blockquote>\n\n… o algo así:\n\n<blockquote>La empresa Calcetines XYZ se fundó en 1971, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene más de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href=\"http://localhost:8080/wp-admin/\">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-ejemplo__trashed', '', '', '2018-09-24 22:15:25', '2018-09-24 22:15:25', '', 0, 'http://localhost:8080/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-23 14:40:38', '2018-09-23 14:40:38', '<h2>Quiénes somos</h2><p>La dirección de nuestra web es: http://localhost:8080.</p><h2>Qué datos personales recogemos y por qué los recogemos</h2><h3>Comentarios</h3><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><h3>Medios</h3><p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><h3>Formularios de contacto</h3><h3>Cookies</h3><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><h3>Contenido incrustado de otros sitios web</h3><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><h3>Analítica</h3><h2>Con quién compartimos tus datos</h2><h2>Cuánto tiempo conservamos tus datos</h2><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><h2>Qué derechos tienes sobre tus datos</h2><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><h2>Dónde enviamos tus datos</h2><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><h2>Tu información de contacto</h2><h2>Información adicional</h2><h3>Cómo protegemos tus datos</h3><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><h3>De qué terceros recibimos datos</h3><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><h3>Requerimientos regulatorios de revelación de información del sector</h3>', 'Política de privacidad', '', 'trash', 'closed', 'open', '', 'politica-privacidad__trashed', '', '', '2018-09-24 22:15:30', '2018-09-24 22:15:30', '', 0, 'http://localhost:8080/?page_id=3', 0, 'page', '', 0),
(6, 1, '2018-09-23 15:50:36', '2018-09-23 15:50:36', '{\n    \"Il Fonti Di Modena::custom_logo\": {\n        \"value\": 5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-23 15:50:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5e8b6212-69e4-4481-9c70-e37037907fe8', '', '', '2018-09-23 15:50:36', '2018-09-23 15:50:36', '', 0, 'http://localhost:8080/2018/09/23/5e8b6212-69e4-4481-9c70-e37037907fe8/', 0, 'customize_changeset', '', 0),
(7, 1, '2018-09-23 19:04:10', '2018-09-23 19:04:10', '{\n    \"blogdescription\": {\n        \"value\": \"Restaurant \",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-23 19:04:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cdaf2af1-9e44-4859-a799-3d9da0acf071', '', '', '2018-09-23 19:04:10', '2018-09-23 19:04:10', '', 0, 'http://localhost:8080/2018/09/23/cdaf2af1-9e44-4859-a799-3d9da0acf071/', 0, 'customize_changeset', '', 0),
(8, 1, '2018-09-23 19:43:47', '2018-09-23 19:43:47', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-09-23 19:43:47', '2018-09-23 19:43:47', '', 0, 'http://localhost:8080/wp-content/uploads/2018/09/logo.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2018-09-23 19:43:58', '2018-09-23 19:43:58', '{\n    \"Il Fonti Di Modena::custom_logo\": {\n        \"value\": 8,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-23 19:43:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e6e81ce0-adbb-4f31-9cdb-4c8c9dbbbb26', '', '', '2018-09-23 19:43:58', '2018-09-23 19:43:58', '', 0, 'http://localhost:8080/2018/09/23/e6e81ce0-adbb-4f31-9cdb-4c8c9dbbbb26/', 0, 'customize_changeset', '', 0),
(10, 1, '2018-09-24 22:06:07', '2018-09-24 22:06:07', '[mprm_categories view=\"grid\" categ=\"\" col=\"6\" categ_name=\"1\" feat_img=\"1\" categ_icon=\"1\" categ_descr=\"1\" desc_length=\"\"]\r\n\r\nPalitos de polenta frita con salsa de tomates levemente picante', 'Polenta frita con salsa arrabiata', '', 'publish', 'closed', 'closed', '', 'polenta-frita-con-salsa-arrabiata', '', '', '2018-09-24 22:27:06', '2018-09-24 22:27:06', '', 0, 'http://localhost:8080/?post_type=mp_menu_item&#038;p=10', 0, 'mp_menu_item', '', 0),
(12, 1, '2018-09-24 22:14:32', '2018-09-24 22:14:32', '[mprm_categories view=\"grid\" categ=\"\" col=\"6\" categ_name=\"1\" feat_img=\"1\" categ_icon=\"1\" categ_descr=\"1\" desc_length=\"\"]', 'home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2018-09-24 22:15:22', '2018-09-24 22:15:22', '', 0, 'http://localhost:8080/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-09-24 22:14:32', '2018-09-24 22:14:32', '[mprm_categories view=\"grid\" categ=\"\" col=\"6\" categ_name=\"1\" feat_img=\"1\" categ_icon=\"1\" categ_descr=\"1\" desc_length=\"\"]', 'home', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-09-24 22:14:32', '2018-09-24 22:14:32', '', 12, 'http://localhost:8080/2018/09/24/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-09-24 22:15:25', '2018-09-24 22:15:25', 'Esta es una página de ejemplo, Es diferente a una entrada de blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página Acerca de mí para presentarse a los potenciales visitantes. Podría ser algo así:\n\n<blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Madrid, tengo perrazo llamado Juan y me encantan las piñas coladas (y que me pille un chaparrón)</blockquote>\n\n… o algo así:\n\n<blockquote>La empresa Calcetines XYZ se fundó en 1971, y ha estado produciendo calcetines de calidad para sus clientes desde entonces. Ubicada en Gothan, la empresa XYZ tiene más de 2.000 empleados e intenta ayudar en lo que puede para mejorar la vida en Gothan</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href=\"http://localhost:8080/wp-admin/\">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Pásalo bien!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-09-24 22:15:25', '2018-09-24 22:15:25', '', 2, 'http://localhost:8080/2018/09/24/2-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-09-24 22:15:30', '2018-09-24 22:15:30', '<h2>Quiénes somos</h2><p>La dirección de nuestra web es: http://localhost:8080.</p><h2>Qué datos personales recogemos y por qué los recogemos</h2><h3>Comentarios</h3><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de su comentario.</p><h3>Medios</h3><p>Si subes imágenes a la web deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de localización de las imágenes de la web.</p><h3>Formularios de contacto</h3><h3>Cookies</h3><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><p>Cuando inicias sesión, también instalaremos varias cookies para guardar tu información de inicio de sesión y tus opciones de visualización de pantalla. Las cookies de inicio de sesión duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas &quot;Recordarme&quot;, tu inicio de sesión perdurará durante dos semanas. Si sales de tu cuenta, las cookies de inicio de sesión se eliminarán.</p><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><h3>Contenido incrustado de otros sitios web</h3><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras web se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><h3>Analítica</h3><h2>Con quién compartimos tus datos</h2><h2>Cuánto tiempo conservamos tus datos</h2><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente en lugar de mantenerlos en una cola de moderación.</p><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><h2>Qué derechos tienes sobre tus datos</h2><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><h2>Dónde enviamos tus datos</h2><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><h2>Tu información de contacto</h2><h2>Información adicional</h2><h3>Cómo protegemos tus datos</h3><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><h3>De qué terceros recibimos datos</h3><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><h3>Requerimientos regulatorios de revelación de información del sector</h3>', 'Política de privacidad', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-09-24 22:15:30', '2018-09-24 22:15:30', '', 3, 'http://localhost:8080/2018/09/24/3-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-09-24 22:27:33', '2018-09-24 22:27:33', 'Palitos de polenta frita con salsa de tomates levemente picante', 'Polenta frita con salsa arrabiata', '', 'inherit', 'closed', 'closed', '', '10-autosave-v1', '', '', '2018-09-24 22:27:33', '2018-09-24 22:27:33', '', 10, 'http://localhost:8080/2018/09/24/10-autosave-v1/', 0, 'revision', '', 0),
(17, 1, '2018-09-25 00:00:11', '2018-09-25 00:00:11', '', 'home', '', 'trash', 'closed', 'closed', '', 'home__trashed-2', '', '', '2018-09-25 00:12:44', '2018-09-25 00:12:44', '', 0, 'http://localhost:8080/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-09-24 23:59:58', '2018-09-24 23:59:58', '', 'home', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-24 23:59:58', '2018-09-24 23:59:58', '', 17, 'http://localhost:8080/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-09-25 00:00:11', '2018-09-25 00:00:11', '[mprm_categories view=\"grid\" categ=\"\" col=\"6\" categ_name=\"1\" feat_img=\"1\" categ_icon=\"1\" categ_descr=\"1\" desc_length=\"\"]', 'home', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-25 00:00:11', '2018-09-25 00:00:11', '', 17, 'http://localhost:8080/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-09-25 00:01:08', '2018-09-25 00:01:08', '', 'home', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-25 00:01:08', '2018-09-25 00:01:08', '', 17, 'http://localhost:8080/17-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-09-25 00:04:29', '2018-09-25 00:04:29', '{\n    \"site_icon\": {\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-25 00:04:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'c8f6d599-03ad-4b27-9325-4d7c4edfc59c', '', '', '2018-09-25 00:04:29', '2018-09-25 00:04:29', '', 0, 'http://localhost:8080/c8f6d599-03ad-4b27-9325-4d7c4edfc59c/', 0, 'customize_changeset', '', 0),
(22, 1, '2018-09-25 01:02:20', '2018-09-25 01:02:20', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-09-27 20:24:54', '2018-09-27 20:24:54', '', 0, 'http://localhost:8080/?page_id=22', 0, 'page', '', 0),
(23, 1, '2018-09-25 01:02:11', '2018-09-25 01:02:11', '', 'home', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-09-25 01:02:11', '2018-09-25 01:02:11', '', 22, 'http://localhost:8080/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-09-25 01:09:35', '2018-09-25 01:09:35', '[booking]', 'home', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-09-25 01:09:35', '2018-09-25 01:09:35', '', 22, 'http://localhost:8080/22-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-09-25 01:17:44', '2018-09-25 01:17:44', '<img class=\"aligncenter size-medium wp-image-11\" src=\"http://localhost:8080/wp-content/uploads/2018/09/polenta_frita-300x150.png\" alt=\"\" width=\"300\" height=\"150\" />[booking startmonth=\'2018-9\']', 'booking form', '', 'trash', 'closed', 'closed', '', 'booking-form__trashed', '', '', '2018-09-27 00:00:53', '2018-09-27 00:00:53', '', 0, 'http://localhost:8080/?page_id=26', 0, 'page', '', 0),
(27, 1, '2018-09-25 01:17:44', '2018-09-25 01:17:44', '[booking]', 'booking form', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-25 01:17:44', '2018-09-25 01:17:44', '', 26, 'http://localhost:8080/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-09-25 01:22:57', '2018-09-25 01:22:57', '[booking nummonths=2]', 'booking form', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-25 01:22:57', '2018-09-25 01:22:57', '', 26, 'http://localhost:8080/26-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-09-25 01:36:14', '2018-09-25 01:36:14', '[booking startmonth=\'2018-9\']', 'booking form', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-25 01:36:14', '2018-09-25 01:36:14', '', 26, 'http://localhost:8080/26-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-09-25 01:40:15', '2018-09-25 01:40:15', '<img class=\"aligncenter size-medium wp-image-11\" src=\"http://localhost:8080/wp-content/uploads/2018/09/polenta_frita-300x150.png\" alt=\"\" width=\"300\" height=\"150\" />[booking startmonth=\'2018-9\']', 'booking form', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-09-25 01:40:15', '2018-09-25 01:40:15', '', 26, 'http://localhost:8080/26-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-09-27 17:07:32', '2018-09-27 17:07:32', 'papas mayo', 'papas con mayo', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-09-27 17:07:32', '2018-09-27 17:07:32', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=31', 0, 'menu', '', 0),
(32, 1, '2018-09-26 23:11:05', '2018-09-26 23:11:05', 'Palitos de polenta frita con salsa de tomates levemente picante', 'Polenta frita con salsa arrabiata $5600', '', 'publish', 'closed', 'closed', '', 'papas-con-mayo', '', '', '2018-09-30 23:03:18', '2018-09-30 23:03:18', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=32', 0, 'menu', '', 0),
(34, 1, '2018-09-26 23:20:41', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-26 23:20:41', '0000-00-00 00:00:00', '', 0, 'http://localhost:8080/?post_type=menu&p=34', 0, 'menu', '', 0),
(35, 1, '2018-09-27 17:07:35', '2018-09-27 17:07:35', '', 'Borrador creado el 26 September, 2018 a las 11:21 pm', '', 'trash', 'closed', 'closed', '', '__trashed-2', '', '', '2018-09-27 17:07:35', '2018-09-27 17:07:35', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=35', 0, 'menu', '', 0),
(36, 1, '2018-09-26 23:52:36', '2018-09-26 23:52:36', '', 'Home', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-09-26 23:52:36', '2018-09-26 23:52:36', '', 22, 'http://localhost:8080/22-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-09-27 19:12:45', '2018-09-27 19:12:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"22\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_5bad2b8b0865c', '', '', '2018-09-27 19:16:26', '2018-09-27 19:16:26', '', 0, 'http://localhost:8080/?post_type=acf-field-group&#038;p=37', 0, 'acf-field-group', '', 0),
(38, 1, '2018-09-27 19:16:26', '2018-09-27 19:16:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'menu platos', 'menu_platos', 'publish', 'closed', 'closed', '', 'field_5bad2c4d964f6', '', '', '2018-09-27 19:16:26', '2018-09-27 19:16:26', '', 37, 'http://localhost:8080/?post_type=acf-field&p=38', 0, 'acf-field', '', 0),
(39, 1, '2018-09-27 20:24:54', '2018-09-27 20:24:54', '', 'Home', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-09-27 20:24:54', '2018-09-27 20:24:54', '', 22, 'http://localhost:8080/22-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-09-29 20:06:11', '2018-09-29 20:06:11', 'Palitos de polenta frita con salsa de tomates levemente picante', 'Polenta frita con salsa arrabiata $5600', '', 'inherit', 'closed', 'closed', '', '32-autosave-v1', '', '', '2018-09-29 20:06:11', '2018-09-29 20:06:11', '', 32, 'http://localhost:8080/32-autosave-v1/', 0, 'revision', '', 0),
(41, 1, '2018-09-29 20:19:19', '2018-09-29 20:19:19', '', 'polenta_frita', '', 'inherit', 'open', 'closed', '', 'polenta_frita', '', '', '2018-09-29 20:19:19', '2018-09-29 20:19:19', '', 32, 'http://localhost:8080/wp-content/uploads/2018/09/polenta_frita.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2018-09-29 20:21:40', '2018-09-29 20:21:40', 'Láminas de pan de campo al ajo y hierbas cubiertas de guiso de pimentones', 'Peperonata $4600', '', 'publish', 'closed', 'closed', '', 'peperonata-4600', '', '', '2018-09-30 23:03:18', '2018-09-30 23:03:18', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=42', 0, 'menu', '', 0),
(43, 1, '2018-09-29 20:21:34', '2018-09-29 20:21:34', '', 'peperonata', '', 'inherit', 'open', 'closed', '', 'peperonata', '', '', '2018-09-29 20:21:34', '2018-09-29 20:21:34', '', 42, 'http://localhost:8080/wp-content/uploads/2018/09/peperonata.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-09-29 20:24:22', '2018-09-29 20:24:22', 'Fundido con tomates asados al orégano', 'Provoleta al oreganato $5200', '', 'publish', 'closed', 'closed', '', 'provoleta-al-oreganato-5200', '', '', '2018-09-30 23:03:18', '2018-09-30 23:03:18', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=44', 0, 'menu', '', 0),
(45, 1, '2018-09-29 20:24:16', '2018-09-29 20:24:16', '', 'provoleta_oregano', '', 'inherit', 'open', 'closed', '', 'provoleta_oregano', '', '', '2018-09-29 20:24:16', '2018-09-29 20:24:16', '', 44, 'http://localhost:8080/wp-content/uploads/2018/09/provoleta_oregano.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-09-29 20:26:53', '2018-09-29 20:26:53', 'Timbal de láminas de berenjenas asadas con salsa pesto, queso parmesano y jamón serrano', 'Melazane e prosciuto $7900', '', 'publish', 'closed', 'closed', '', 'melazane-e-prosciuto-7900', '', '', '2018-09-30 23:03:17', '2018-09-30 23:03:17', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=46', 0, 'menu', '', 0),
(47, 1, '2018-09-29 20:26:47', '2018-09-29 20:26:47', '', 'melazane_e_prosciuto', '', 'inherit', 'open', 'closed', '', 'melazane_e_prosciuto', '', '', '2018-09-29 20:26:47', '2018-09-29 20:26:47', '', 46, 'http://localhost:8080/wp-content/uploads/2018/09/melazane_e_prosciuto.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-09-29 23:06:50', '2018-09-29 23:06:50', 'Selección de lechugas, fondos de alcachofa, berenjenas asadas, tomate secos, zuccini grilldo con aderezo de albahaca', 'Insalatta danubio $6200', '', 'publish', 'closed', 'closed', '', 'insalatta-danubio-6200', '', '', '2018-09-30 23:03:17', '2018-09-30 23:03:17', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=48', 0, 'menu', '', 0),
(49, 1, '2018-09-29 23:06:45', '2018-09-29 23:06:45', '', 'insalatta_danubio', '', 'inherit', 'open', 'closed', '', 'insalatta_danubio', '', '', '2018-09-29 23:06:45', '2018-09-29 23:06:45', '', 48, 'http://localhost:8080/wp-content/uploads/2018/09/insalatta_danubio.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-09-29 23:08:43', '2018-09-29 23:08:43', 'Espinacas, panceta crujiente, nueces, tomates asados, y champiñones con aderezo dulce de aceto balsámico', 'Insalatta pilarre $6500', '', 'publish', 'closed', 'closed', '', 'insalatta-pilarre-6500', '', '', '2018-09-30 23:03:17', '2018-09-30 23:03:17', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=50', 0, 'menu', '', 0),
(51, 1, '2018-09-29 23:08:39', '2018-09-29 23:08:39', '', 'insalatta_pilarre', '', 'inherit', 'open', 'closed', '', 'insalatta_pilarre', '', '', '2018-09-29 23:08:39', '2018-09-29 23:08:39', '', 50, 'http://localhost:8080/wp-content/uploads/2018/09/insalatta_pilarre.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-09-29 23:29:16', '2018-09-29 23:29:16', 'Selección de lechugas, rúcula, queso de cabra, prosciutto, aceitunas, pimientos confitados y aderezo e orégano', 'Insalatta andreé $7000', '', 'publish', 'closed', 'closed', '', 'insalatta-andree-7000', '', '', '2018-09-30 23:03:17', '2018-09-30 23:03:17', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=52', 0, 'menu', '', 0),
(53, 1, '2018-09-29 23:29:10', '2018-09-29 23:29:10', '', 'insalatta_andree', '', 'inherit', 'open', 'closed', '', 'insalatta_andree', '', '', '2018-09-29 23:29:10', '2018-09-29 23:29:10', '', 52, 'http://localhost:8080/wp-content/uploads/2018/09/insalatta_andree.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-09-29 23:32:30', '2018-09-29 23:32:30', 'Sopa del día seleccionada por el chef con los mejores ingredientes seleccionados', 'Zuppa di chef $5300', '', 'publish', 'closed', 'closed', '', 'zuppa-di-chef-5300', '', '', '2018-09-30 23:03:17', '2018-09-30 23:03:17', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=54', 0, 'menu', '', 0),
(55, 1, '2018-09-29 23:32:22', '2018-09-29 23:32:22', '', 'zuppa_di_chef', '', 'inherit', 'open', 'closed', '', 'zuppa_di_chef', '', '', '2018-09-29 23:32:22', '2018-09-29 23:32:22', '', 54, 'http://localhost:8080/wp-content/uploads/2018/09/zuppa_di_chef.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-09-30 16:36:08', '2018-09-30 16:36:08', 'Sopa tradicional italiana a base de verduras, porotos blancos y pesto de albahaca', 'Ministrone genovese $5300', '', 'publish', 'closed', 'closed', '', 'ministrone-genovese-5300', '', '', '2018-09-30 23:03:16', '2018-09-30 23:03:16', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=56', 0, 'menu', '', 0),
(57, 1, '2018-09-30 16:36:03', '2018-09-30 16:36:03', '', 'ministrone_genovese', '', 'inherit', 'open', 'closed', '', 'ministrone_genovese', '', '', '2018-09-30 16:36:03', '2018-09-30 16:36:03', '', 56, 'http://localhost:8080/wp-content/uploads/2018/09/ministrone_genovese.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2018-09-30 16:38:20', '2018-09-30 16:38:20', 'Mozarella, pomodoro, albahaca fresca, aceite de oliva', 'Pizza Margherita $7200', '', 'publish', 'closed', 'closed', '', 'pizza-margherita-7200', '', '', '2018-09-30 23:03:16', '2018-09-30 23:03:16', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=58', 0, 'menu', '', 0),
(59, 1, '2018-09-30 16:38:15', '2018-09-30 16:38:15', '', 'marguerita', '', 'inherit', 'open', 'closed', '', 'marguerita', '', '', '2018-09-30 16:38:15', '2018-09-30 16:38:15', '', 58, 'http://localhost:8080/wp-content/uploads/2018/09/marguerita.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 1, '2018-09-30 16:39:36', '2018-09-30 16:39:36', 'Pomodoro, láminas de ajo, aceite de oliva', 'Pizza marinara $5900', '', 'publish', 'closed', 'closed', '', 'pizza-marinara-5900', '', '', '2018-09-30 23:03:16', '2018-09-30 23:03:16', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=60', 0, 'menu', '', 0),
(61, 1, '2018-09-30 16:39:33', '2018-09-30 16:39:33', '', 'marinara', '', 'inherit', 'open', 'closed', '', 'marinara', '', '', '2018-09-30 16:39:33', '2018-09-30 16:39:33', '', 60, 'http://localhost:8080/wp-content/uploads/2018/09/marinara.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2018-09-30 16:41:31', '2018-09-30 16:41:31', 'Mozarella, pomodoro, champiñones, jamón, fondos de alcachofa, aceite de oliva', 'Pizza caprissiosa $7100', '', 'publish', 'closed', 'closed', '', 'pizza-caprissiosa-7100', '', '', '2018-09-30 23:03:16', '2018-09-30 23:03:16', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=62', 0, 'menu', '', 0),
(63, 1, '2018-09-30 16:41:27', '2018-09-30 16:41:27', '', 'caprissiosa', '', 'inherit', 'open', 'closed', '', 'caprissiosa', '', '', '2018-09-30 16:41:27', '2018-09-30 16:41:27', '', 62, 'http://localhost:8080/wp-content/uploads/2018/09/caprissiosa.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-09-30 16:44:19', '2018-09-30 16:44:19', 'Mozarella, queso azul, ricotta, parmesano,mozzarella di buffala', 'Pizza cinque formaggi $7100', '', 'publish', 'closed', 'closed', '', 'cinque-formaggi-7100', '', '', '2018-09-30 23:03:16', '2018-09-30 23:03:16', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=64', 0, 'menu', '', 0),
(65, 1, '2018-09-30 16:44:13', '2018-09-30 16:44:13', '', 'cinque_formaggi', '', 'inherit', 'open', 'closed', '', 'cinque_formaggi', '', '', '2018-09-30 16:44:13', '2018-09-30 16:44:13', '', 64, 'http://localhost:8080/wp-content/uploads/2018/09/cinque_formaggi.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2018-09-30 17:20:39', '2018-09-30 17:20:39', 'Mozzarella, pomodoro, pepperoni', 'Pizza pepperoni $6200', '', 'publish', 'closed', 'closed', '', 'pizza-pepperoni-6200', '', '', '2018-09-30 23:03:15', '2018-09-30 23:03:15', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=66', 0, 'menu', '', 0),
(67, 1, '2018-09-30 17:20:35', '2018-09-30 17:20:35', '', 'pepperoni', '', 'inherit', 'open', 'closed', '', 'pepperoni', '', '', '2018-09-30 17:20:35', '2018-09-30 17:20:35', '', 66, 'http://localhost:8080/wp-content/uploads/2018/09/pepperoni.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2018-09-30 17:22:14', '2018-09-30 17:22:14', 'Mozzarella, pomodoro, ajo, pepperoncino, pepperoni, aceitunas', 'Pizza putannesca $6500', '', 'publish', 'closed', 'closed', '', 'pizza-putannesca-6500', '', '', '2018-09-30 23:03:15', '2018-09-30 23:03:15', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=68', 0, 'menu', '', 0),
(69, 1, '2018-09-30 17:22:10', '2018-09-30 17:22:10', '', 'putannesca', '', 'inherit', 'open', 'closed', '', 'putannesca', '', '', '2018-09-30 17:22:10', '2018-09-30 17:22:10', '', 68, 'http://localhost:8080/wp-content/uploads/2018/09/putannesca.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-09-30 17:26:57', '2018-09-30 17:26:57', 'Mozzarella, pomodoro, tomate, albahaca', 'Pizza capresse $7000', '', 'publish', 'closed', 'closed', '', 'pizza-capresse-7000', '', '', '2018-09-30 23:03:15', '2018-09-30 23:03:15', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=70', 0, 'menu', '', 0),
(71, 1, '2018-09-30 17:26:52', '2018-09-30 17:26:52', '', 'capresse', '', 'inherit', 'open', 'closed', '', 'capresse', '', '', '2018-09-30 17:26:52', '2018-09-30 17:26:52', '', 70, 'http://localhost:8080/wp-content/uploads/2018/09/capresse.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2018-09-30 17:28:50', '2018-09-30 17:28:50', 'Mozzarella, pomodoro, queso de cabra, pimentón, rúcula, aceituna', 'pizza mediterrannea $5300', '', 'publish', 'closed', 'closed', '', 'pizza-mediterrannea-5300', '', '', '2018-09-30 23:03:15', '2018-09-30 23:03:15', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=72', 0, 'menu', '', 0),
(73, 1, '2018-09-30 17:28:40', '2018-09-30 17:28:40', '', 'mediterranea', '', 'inherit', 'open', 'closed', '', 'mediterranea', '', '', '2018-09-30 17:28:40', '2018-09-30 17:28:40', '', 72, 'http://localhost:8080/wp-content/uploads/2018/09/mediterranea.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2018-09-30 17:31:19', '2018-09-30 17:31:19', 'Mozzarella, pomodoro, pepperoni, champiñon, cebolla morada, pimiento', 'Pizza torino $5300', '', 'publish', 'closed', 'closed', '', 'pizza-torino-5300', '', '', '2018-09-30 23:03:15', '2018-09-30 23:03:15', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=74', 0, 'menu', '', 0),
(75, 1, '2018-09-30 17:31:15', '2018-09-30 17:31:15', '', 'torino', '', 'inherit', 'open', 'closed', '', 'torino', '', '', '2018-09-30 17:31:15', '2018-09-30 17:31:15', '', 74, 'http://localhost:8080/wp-content/uploads/2018/09/torino.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2018-09-30 17:33:11', '2018-09-30 17:33:11', 'Mozzarella, pomodoro, espárrago, pimentón, rúcula, choclo', 'Pizza veggetarianna $7000', '', 'publish', 'closed', 'closed', '', 'pizza-veggetarianna-7000', '', '', '2018-09-30 23:03:14', '2018-09-30 23:03:14', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=76', 0, 'menu', '', 0),
(77, 1, '2018-09-30 17:33:07', '2018-09-30 17:33:07', '', 'vegetariana', '', 'inherit', 'open', 'closed', '', 'vegetariana', '', '', '2018-09-30 17:33:07', '2018-09-30 17:33:07', '', 76, 'http://localhost:8080/wp-content/uploads/2018/09/vegetariana.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2018-09-30 17:34:37', '2018-09-30 17:34:37', 'Mozzarella, pomodoro, queso de cabra, berenjena, cebolla', 'Pizza griegga $5300', '', 'publish', 'closed', 'closed', '', 'pizza-griegga-5300', '', '', '2018-09-30 23:03:14', '2018-09-30 23:03:14', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=78', 0, 'menu', '', 0),
(79, 1, '2018-09-30 17:34:34', '2018-09-30 17:34:34', '', 'griega', '', 'inherit', 'open', 'closed', '', 'griega', '', '', '2018-09-30 17:34:34', '2018-09-30 17:34:34', '', 78, 'http://localhost:8080/wp-content/uploads/2018/09/griega.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2018-09-30 23:04:32', '2018-09-30 23:04:32', '3 bolas de helado', 'Gelato $2500', '', 'publish', 'closed', 'closed', '', 'gelato-2500', '', '', '2018-09-30 23:06:17', '2018-09-30 23:06:17', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=80', 0, 'menu', '', 0),
(81, 1, '2018-09-30 23:04:26', '2018-09-30 23:04:26', '', 'gelato_di_ciocolatto', '', 'inherit', 'open', 'closed', '', 'gelato_di_ciocolatto', '', '', '2018-09-30 23:04:26', '2018-09-30 23:04:26', '', 80, 'http://localhost:8080/wp-content/uploads/2018/09/gelato_di_ciocolatto.jpg', 0, 'attachment', 'image/jpeg', 0),
(82, 1, '2018-09-30 23:05:53', '2018-09-30 23:05:53', '3 bolas de helado', 'Gelato di cioccolato $2500', '', 'publish', 'closed', 'closed', '', 'gelato-di-cioccolato-2500', '', '', '2018-09-30 23:05:53', '2018-09-30 23:05:53', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=82', 0, 'menu', '', 0),
(83, 1, '2018-09-30 23:06:11', '2018-09-30 23:06:11', '', 'gelato', '', 'inherit', 'open', 'closed', '', 'gelato', '', '', '2018-09-30 23:06:11', '2018-09-30 23:06:11', '', 80, 'http://localhost:8080/wp-content/uploads/2018/09/gelato.jpg', 0, 'attachment', 'image/jpeg', 0),
(84, 1, '2018-09-30 23:07:15', '2018-09-30 23:07:15', 'Postre de crema y manjar', 'Panna cotta $3500', '', 'publish', 'closed', 'closed', '', 'panna-cotta-3500', '', '', '2018-09-30 23:07:15', '2018-09-30 23:07:15', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=84', 0, 'menu', '', 0),
(85, 1, '2018-09-30 23:07:11', '2018-09-30 23:07:11', '', 'Original File Name: 4186-Rasp_Pannacotta-009 1.tif', 'Original File Name: 4186-Rasp_Pannacotta-009 1.tif', 'inherit', 'open', 'closed', '', 'original-file-name-4186-rasp_pannacotta-009-1-tif', '', '', '2018-09-30 23:07:11', '2018-09-30 23:07:11', '', 84, 'http://localhost:8080/wp-content/uploads/2018/09/panna_cotta.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2018-09-30 23:09:01', '2018-09-30 23:09:01', 'Tradicional tiramisú cremoso de mascarpone con base de galletas maceradas en licor de café', 'Tiramisu $3500', '', 'publish', 'closed', 'closed', '', 'tiramisu-3500', '', '', '2018-09-30 23:09:01', '2018-09-30 23:09:01', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=86', 0, 'menu', '', 0),
(87, 1, '2018-09-30 23:08:58', '2018-09-30 23:08:58', '', 'tiramisu', '', 'inherit', 'open', 'closed', '', 'tiramisu', '', '', '2018-09-30 23:08:58', '2018-09-30 23:08:58', '', 86, 'http://localhost:8080/wp-content/uploads/2018/09/tiramisu.jpg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2018-09-30 23:10:26', '2018-09-30 23:10:26', '', 'Infusiones $1100', '', 'publish', 'closed', 'closed', '', 'infusiones-1100', '', '', '2018-09-30 23:10:26', '2018-09-30 23:10:26', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=88', 0, 'menu', '', 0),
(89, 1, '2018-09-30 23:10:20', '2018-09-30 23:10:20', '', 'infusiones', '', 'inherit', 'open', 'closed', '', 'infusiones', '', '', '2018-09-30 23:10:20', '2018-09-30 23:10:20', '', 88, 'http://localhost:8080/wp-content/uploads/2018/09/infusiones.jpg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2018-09-30 23:10:59', '2018-09-30 23:10:59', '', 'Caffe espresso $1200', '', 'publish', 'closed', 'closed', '', 'caffe-espresso-1200', '', '', '2018-09-30 23:13:54', '2018-09-30 23:13:54', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=90', 0, 'menu', '', 0),
(91, 1, '2018-09-30 23:10:55', '2018-09-30 23:10:55', '', 'espresso', '', 'inherit', 'open', 'closed', '', 'espresso', '', '', '2018-09-30 23:10:55', '2018-09-30 23:10:55', '', 90, 'http://localhost:8080/wp-content/uploads/2018/09/espresso.jpg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2018-09-30 23:11:31', '2018-09-30 23:11:31', '', 'Latte $2100', '', 'publish', 'closed', 'closed', '', 'latte-2100', '', '', '2018-09-30 23:11:31', '2018-09-30 23:11:31', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=92', 0, 'menu', '', 0),
(93, 1, '2018-09-30 23:11:27', '2018-09-30 23:11:27', '', 'latte', '', 'inherit', 'open', 'closed', '', 'latte', '', '', '2018-09-30 23:11:27', '2018-09-30 23:11:27', '', 92, 'http://localhost:8080/wp-content/uploads/2018/09/latte.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2018-09-30 23:12:18', '2018-09-30 23:12:18', '', 'Moccaccino $2000', '', 'publish', 'closed', 'closed', '', 'moccaccino-2000', '', '', '2018-09-30 23:12:18', '2018-09-30 23:12:18', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=94', 0, 'menu', '', 0),
(95, 1, '2018-09-30 23:12:14', '2018-09-30 23:12:14', '', 'moccaccino', '', 'inherit', 'open', 'closed', '', 'moccaccino', '', '', '2018-09-30 23:12:14', '2018-09-30 23:12:14', '', 94, 'http://localhost:8080/wp-content/uploads/2018/09/moccaccino.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2018-09-30 23:12:59', '2018-09-30 23:12:59', '', 'Agua mineral $900', '', 'publish', 'closed', 'closed', '', 'agua-mineral-900', '', '', '2018-09-30 23:12:59', '2018-09-30 23:12:59', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=96', 0, 'menu', '', 0),
(97, 1, '2018-09-30 23:12:56', '2018-09-30 23:12:56', '', 'agua_mineral', '', 'inherit', 'open', 'closed', '', 'agua_mineral', '', '', '2018-09-30 23:12:56', '2018-09-30 23:12:56', '', 96, 'http://localhost:8080/wp-content/uploads/2018/09/agua_mineral.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2018-09-30 23:13:29', '2018-09-30 23:13:29', '', 'Bebida $1200', '', 'publish', 'closed', 'closed', '', 'bebida-1200', '', '', '2018-09-30 23:13:29', '2018-09-30 23:13:29', '', 0, 'http://localhost:8080/?post_type=menu&#038;p=98', 0, 'menu', '', 0),
(99, 1, '2018-09-30 23:13:26', '2018-09-30 23:13:26', '', 'bebidas', '', 'inherit', 'open', 'closed', '', 'bebidas', '', '', '2018-09-30 23:13:26', '2018-09-30 23:13:26', '', 98, 'http://localhost:8080/wp-content/uploads/2018/09/bebidas.jpg', 0, 'attachment', 'image/jpeg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_termmeta`
--

CREATE TABLE `dl_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_termmeta`
--

INSERT INTO `dl_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 2, 'mprm_taxonomy_2', 'a:3:{s:5:\"order\";s:1:\"0\";s:8:\"iconname\";s:16:\"mprm-icon-bowl-1\";s:12:\"thumbnail_id\";s:0:\"\";}'),
(2, 3, 'mprm_taxonomy_3', 'a:3:{s:5:\"order\";s:0:\"\";s:8:\"iconname\";s:18:\"mprm-icon-bottle-1\";s:12:\"thumbnail_id\";s:0:\"\";}'),
(3, 4, 'mprm_taxonomy_4', 'a:3:{s:5:\"order\";s:0:\"\";s:8:\"iconname\";s:18:\"mprm-icon-glass-26\";s:12:\"thumbnail_id\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_terms`
--

CREATE TABLE `dl_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_terms`
--

INSERT INTO `dl_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'menu', 'menu', 0),
(2, 'Principales', 'principales', 0),
(3, 'Bebestibles', 'bebestibles', 0),
(4, 'Postres', 'postres', 0),
(5, 'Antipastos', 'antipastos', 0),
(6, 'postres', 'postres', 0),
(7, 'bebestibles', 'bebestibles', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_term_relationships`
--

CREATE TABLE `dl_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_term_relationships`
--

INSERT INTO `dl_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(10, 2, 0),
(10, 5, 0),
(32, 1, 0),
(42, 1, 0),
(44, 1, 0),
(46, 1, 0),
(48, 1, 0),
(50, 1, 0),
(52, 1, 0),
(54, 1, 0),
(56, 1, 0),
(58, 1, 0),
(60, 1, 0),
(62, 1, 0),
(64, 1, 0),
(66, 1, 0),
(68, 1, 0),
(70, 1, 0),
(72, 1, 0),
(74, 1, 0),
(76, 1, 0),
(78, 1, 0),
(80, 6, 0),
(82, 6, 0),
(84, 6, 0),
(86, 6, 0),
(88, 7, 0),
(90, 7, 0),
(92, 7, 0),
(94, 7, 0),
(96, 7, 0),
(98, 7, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_term_taxonomy`
--

CREATE TABLE `dl_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_term_taxonomy`
--

INSERT INTO `dl_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 21),
(2, 2, 'mp_menu_category', '', 0, 1),
(3, 3, 'mp_menu_category', '', 0, 0),
(4, 4, 'mp_menu_category', '', 0, 0),
(5, 5, 'mp_menu_tag', '', 0, 1),
(6, 6, 'category', '', 0, 4),
(7, 7, 'category', '', 0, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_usermeta`
--

CREATE TABLE `dl_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_usermeta`
--

INSERT INTO `dl_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'imunozq'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'dl_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'dl_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"00fcea64b23c6074025ba2138616f1313f6439511d3a49686201e480a0cbc4bb\";a:4:{s:10:\"expiration\";i:1538923456;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1537713856;}s:64:\"9c6f1f1bb924fbf975e5018f68659498bee6df3283e22f746872cd0e802cc0ab\";a:4:{s:10:\"expiration\";i:1539035353;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1537825753;}s:64:\"9465140014953841a3c75c1a636505aa4476aec9119a74c688af59536443e211\";a:4:{s:10:\"expiration\";i:1538056384;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1537883584;}}'),
(17, 1, 'dl_user-settings', 'libraryContent=browse&imgsize=medium&align=center&advImgDetails=show&editor=tinymce&hidetb=1'),
(18, 1, 'dl_user-settings-time', '1537883786'),
(19, 1, 'dl_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dl_users`
--

CREATE TABLE `dl_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `dl_users`
--

INSERT INTO `dl_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'imunozq', '$P$BDtQ5APaB6iehQC8hO8PNIuwBI8YsO/', 'imunozq', 'ishamu023@gmail.com', '', '2018-09-23 14:40:37', '', 0, 'imunozq');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dl_booking`
--
ALTER TABLE `dl_booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indices de la tabla `dl_bookingdates`
--
ALTER TABLE `dl_bookingdates`
  ADD UNIQUE KEY `booking_id_dates` (`booking_id`,`booking_date`);

--
-- Indices de la tabla `dl_commentmeta`
--
ALTER TABLE `dl_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `dl_comments`
--
ALTER TABLE `dl_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `dl_links`
--
ALTER TABLE `dl_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `dl_mprm_customer`
--
ALTER TABLE `dl_mprm_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `user` (`user_id`);

--
-- Indices de la tabla `dl_options`
--
ALTER TABLE `dl_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `dl_postmeta`
--
ALTER TABLE `dl_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `dl_posts`
--
ALTER TABLE `dl_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `dl_termmeta`
--
ALTER TABLE `dl_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `dl_terms`
--
ALTER TABLE `dl_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `dl_term_relationships`
--
ALTER TABLE `dl_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `dl_term_taxonomy`
--
ALTER TABLE `dl_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `dl_usermeta`
--
ALTER TABLE `dl_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `dl_users`
--
ALTER TABLE `dl_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `dl_booking`
--
ALTER TABLE `dl_booking`
  MODIFY `booking_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `dl_commentmeta`
--
ALTER TABLE `dl_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dl_comments`
--
ALTER TABLE `dl_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `dl_links`
--
ALTER TABLE `dl_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dl_mprm_customer`
--
ALTER TABLE `dl_mprm_customer`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `dl_options`
--
ALTER TABLE `dl_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;
--
-- AUTO_INCREMENT de la tabla `dl_postmeta`
--
ALTER TABLE `dl_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=218;
--
-- AUTO_INCREMENT de la tabla `dl_posts`
--
ALTER TABLE `dl_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT de la tabla `dl_termmeta`
--
ALTER TABLE `dl_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `dl_terms`
--
ALTER TABLE `dl_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `dl_term_taxonomy`
--
ALTER TABLE `dl_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `dl_usermeta`
--
ALTER TABLE `dl_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT de la tabla `dl_users`
--
ALTER TABLE `dl_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
