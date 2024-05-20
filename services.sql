-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2024 at 04:39 AM
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
-- Database: `services`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2024-05-02 11:46:57', '2024-05-02 11:46:57', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/services', 'yes'),
(2, 'home', 'http://localhost/services', 'yes'),
(3, 'blogname', 'Services', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '1', 'yes'),
(6, 'admin_email', 'aniket.kadam91@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:115:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"services/?$\";s:28:\"index.php?post_type=services\";s:41:\"services/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:36:\"services/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=services&feed=$matches[1]\";s:28:\"services/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=services&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"services/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"services/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"services/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"services/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"services/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"services/([^/]+)/embed/?$\";s:41:\"index.php?services=$matches[1]&embed=true\";s:29:\"services/([^/]+)/trackback/?$\";s:35:\"index.php?services=$matches[1]&tb=1\";s:49:\"services/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:44:\"services/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?services=$matches[1]&feed=$matches[2]\";s:37:\"services/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&paged=$matches[2]\";s:44:\"services/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?services=$matches[1]&cpage=$matches[2]\";s:33:\"services/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?services=$matches[1]&page=$matches[2]\";s:25:\"services/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"services/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"services/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"services/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"services/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=13&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:33:\"classic-editor/classic-editor.php\";i:1;s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";i:2;s:23:\"next-root/next-root.php\";i:3;s:21:\"services/services.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentyfour', 'yes'),
(41, 'stylesheet', 'twentytwentyfour-child', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '0', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:53:\"child-theme-configurator/child-theme-configurator.php\";s:22:\"chld_thm_cfg_uninstall\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '13', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1730202417', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '57155', 'yes'),
(101, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '0', 'yes'),
(103, 'user_count', '18', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:10:{i:1716133618;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1716162418;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1716162435;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1716205618;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716205635;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716205638;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1716465670;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1716551218;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1716637604;a:1:{s:19:\"jwt_auth_share_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.5.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(123, 'recovery_keys', 'a:1:{s:22:\"8B5S6m633usLyeD8JUvkRm\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BHwdDByH4wH/JP2oGxRRfNPtOsia5H1\";s:10:\"created_at\";i:1716035010;}}', 'yes'),
(125, 'theme_mods_twentytwentyfour', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1714661520;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'no'),
(130, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716119488;s:7:\"checked\";a:4:{s:22:\"twentytwentyfour-child\";s:0:\"\";s:16:\"twentytwentyfour\";s:3:\"1.1\";s:17:\"twentytwentythree\";s:3:\"1.4\";s:15:\"twentytwentytwo\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.1.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.4.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.7.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(138, 'can_compress_scripts', '1', 'yes'),
(151, 'finished_updating_comment_type', '1', 'yes'),
(152, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'no'),
(153, 'recently_activated', 'a:0:{}', 'yes'),
(158, 'acf_first_activated_version', '6.2.9', 'yes'),
(159, 'acf_version', '6.2.9', 'yes'),
(161, 'recovery_mode_email_last_sent', '1716035010', 'yes'),
(200, 'theme_mods_twentytwentyfour-child', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(201, 'current_theme', 'Twenty Twenty-Four Child', 'yes'),
(202, 'theme_switched', '', 'yes'),
(229, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(290, '_site_transient_timeout_php_check_3fde9d06ba9e4fd20d08658e6f30b792', '1716186925', 'no'),
(291, '_site_transient_php_check_3fde9d06ba9e4fd20d08658e6f30b792', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(292, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(293, '_transient_health-check-site-status-result', '{\"good\":19,\"recommended\":2,\"critical\":2}', 'yes'),
(296, '_site_transient_timeout_browser_a16ddaab909d2cf27fce353f26dd2ff2', '1716186945', 'no'),
(297, '_site_transient_browser_a16ddaab909d2cf27fce353f26dd2ff2', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"124.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(308, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.3\";s:7:\"version\";s:5:\"6.5.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1716119488;s:15:\"version_checked\";s:5:\"6.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(309, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"aniket.kadam91@gmail.com\";s:7:\"version\";s:5:\"6.5.3\";s:9:\"timestamp\";i:1715582174;}', 'no'),
(314, 'classic-editor-replace', 'classic', 'yes'),
(315, 'classic-editor-allow-users', 'disallow', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(361, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1716119488;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:48:\"w.org/plugins/jwt-authentication-for-wp-rest-api\";s:4:\"slug\";s:34:\"jwt-authentication-for-wp-rest-api\";s:6:\"plugin\";s:47:\"jwt-authentication-for-wp-rest-api/jwt-auth.php\";s:11:\"new_version\";s:5:\"1.3.4\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/jwt-authentication-for-wp-rest-api/\";s:7:\"package\";s:83:\"https://downloads.wordpress.org/plugin/jwt-authentication-for-wp-rest-api.1.3.4.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=2787935\";s:3:\"svg\";s:79:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/icon.svg?rev=2787935\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:89:\"https://ps.w.org/jwt-authentication-for-wp-rest-api/assets/banner-772x250.jpg?rev=2787935\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.2\";}}}', 'no'),
(362, 'jwt_auth_admin_notice', '1', 'yes'),
(365, 'WPLANG', '', 'yes'),
(366, 'new_admin_email', 'aniket.kadam91@gmail.com', 'yes'),
(431, '_site_transient_timeout_theme_roots', '1716132128', 'no'),
(432, '_site_transient_theme_roots', 'a:4:{s:22:\"twentytwentyfour-child\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 7, '_edit_last', '1'),
(4, 7, '_edit_lock', '1714670820:1'),
(5, 10, '_edit_last', '1'),
(6, 10, '_edit_lock', '1714656911:1'),
(7, 11, '_wp_attached_file', '2024/05/m2i8d3i8N4d3N4K9.jpg'),
(8, 11, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:720;s:6:\"height\";i:508;s:4:\"file\";s:28:\"2024/05/m2i8d3i8N4d3N4K9.jpg\";s:8:\"filesize\";i:98514;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9, 10, '_thumbnail_id', '11'),
(10, 12, '_edit_last', '1'),
(11, 12, '_edit_lock', '1714656905:1'),
(12, 12, '_thumbnail_id', '11'),
(13, 12, 'publisher_name', 'John Dow'),
(14, 12, '_publisher_name', 'field_663380c09ee2e'),
(15, 12, 'external_link', 'https://www.google.com'),
(16, 12, '_external_link', 'field_663380f39ee2f'),
(17, 13, '_edit_lock', '1715582290:1'),
(20, 2, '_wp_trash_meta_status', 'publish'),
(21, 2, '_wp_trash_meta_time', '1714652243'),
(22, 2, '_wp_desired_post_slug', 'sample-page'),
(23, 10, 'publisher_name', 'John Dow'),
(24, 10, '_publisher_name', 'field_663380c09ee2e'),
(25, 10, 'external_link', ''),
(26, 10, '_external_link', 'field_663380f39ee2f'),
(27, 19, '_edit_last', '1'),
(28, 19, '_edit_lock', '1714657085:1'),
(29, 20, '_wp_attached_file', '2024/05/360_F_260788352_x5sSHM4DGvpjHj9wz8sFltzAPktQwJCj.jpg'),
(30, 20, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:360;s:6:\"height\";i:360;s:4:\"file\";s:60:\"2024/05/360_F_260788352_x5sSHM4DGvpjHj9wz8sFltzAPktQwJCj.jpg\";s:8:\"filesize\";i:10974;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 19, '_thumbnail_id', '20'),
(32, 19, 'publisher_name', 'Tom Kally'),
(33, 19, '_publisher_name', 'field_663380c09ee2e'),
(34, 19, 'external_link', 'https://www.google.com'),
(35, 19, '_external_link', 'field_663380f39ee2f'),
(36, 21, '_edit_last', '1'),
(37, 21, '_edit_lock', '1714658007:1'),
(38, 22, '_wp_attached_file', '2024/05/download.jpg'),
(39, 22, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:200;s:6:\"height\";i:148;s:4:\"file\";s:20:\"2024/05/download.jpg\";s:8:\"filesize\";i:1483;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 21, '_thumbnail_id', '22'),
(41, 21, 'publisher_name', 'Aniket Kadam'),
(42, 21, '_publisher_name', 'field_663380c09ee2e'),
(43, 21, 'external_link', 'http://www.test.com'),
(44, 21, '_external_link', 'field_663380f39ee2f'),
(45, 23, '_edit_last', '1'),
(46, 23, '_edit_lock', '1714710121:1'),
(47, 24, '_wp_attached_file', '2024/05/download-1.jpg'),
(48, 24, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:148;s:6:\"height\";i:148;s:4:\"file\";s:22:\"2024/05/download-1.jpg\";s:8:\"filesize\";i:1946;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 23, '_thumbnail_id', '24'),
(50, 23, 'publisher_name', 'Megh Davis'),
(51, 23, '_publisher_name', 'field_663380c09ee2e'),
(52, 23, 'external_link', 'https://www.google.com'),
(53, 23, '_external_link', 'field_663380f39ee2f'),
(54, 26, '_edit_lock', '1714669643:1'),
(56, 28, '_edit_last', '1'),
(57, 28, '_edit_lock', '1714670921:1'),
(58, 28, '_thumbnail_id', '11'),
(59, 28, 'publisher_name', 'Sachin Patil'),
(60, 28, '_publisher_name', 'field_663380c09ee2e'),
(61, 28, 'external_link', 'https://www.google.com'),
(62, 28, '_external_link', 'field_663380f39ee2f'),
(63, 29, '_edit_last', '1'),
(64, 29, '_edit_lock', '1714708014:1'),
(65, 29, '_thumbnail_id', '37'),
(66, 29, 'publisher_name', 'Gauri Kale'),
(67, 29, '_publisher_name', 'field_663380c09ee2e'),
(68, 29, 'external_link', 'https://www.google.com'),
(69, 29, '_external_link', 'field_663380f39ee2f'),
(70, 30, '_edit_last', '1'),
(71, 30, '_edit_lock', '1714671022:1'),
(72, 30, '_thumbnail_id', '11'),
(73, 30, 'publisher_name', 'Piter Parker'),
(74, 30, '_publisher_name', 'field_663380c09ee2e'),
(75, 30, 'external_link', 'http://www.test.com'),
(76, 30, '_external_link', 'field_663380f39ee2f'),
(77, 31, '_edit_last', '1'),
(78, 31, '_edit_lock', '1714671083:1'),
(79, 31, '_thumbnail_id', '11'),
(80, 31, 'publisher_name', 'Parth Pow'),
(81, 31, '_publisher_name', 'field_663380c09ee2e'),
(82, 31, 'external_link', 'https://www.google.com'),
(83, 31, '_external_link', 'field_663380f39ee2f'),
(84, 32, '_edit_last', '1'),
(85, 32, '_edit_lock', '1714671134:1'),
(86, 32, '_thumbnail_id', '20'),
(87, 32, 'publisher_name', 'Atual wagh'),
(88, 32, '_publisher_name', 'field_663380c09ee2e'),
(89, 32, 'external_link', 'https://www.google.com'),
(90, 32, '_external_link', 'field_663380f39ee2f'),
(91, 33, '_edit_last', '1'),
(92, 33, '_edit_lock', '1714673040:1'),
(93, 33, '_thumbnail_id', '11'),
(94, 33, 'publisher_name', 'suhas Patil'),
(95, 33, '_publisher_name', 'field_663380c09ee2e'),
(96, 33, 'external_link', 'https://www.google.com'),
(97, 33, '_external_link', 'field_663380f39ee2f'),
(98, 34, '_edit_last', '1'),
(99, 34, '_edit_lock', '1714708395:1'),
(100, 34, '_thumbnail_id', '39'),
(101, 34, 'publisher_name', 'John Martin'),
(102, 34, '_publisher_name', 'field_663380c09ee2e'),
(103, 34, 'external_link', 'https://www.google.com'),
(104, 34, '_external_link', 'field_663380f39ee2f'),
(107, 36, '_edit_last', '1'),
(108, 36, '_edit_lock', '1714709763:1'),
(109, 36, '_thumbnail_id', '24'),
(110, 36, 'publisher_name', 'Tushar Patil'),
(111, 36, 'external_link', 'http://www.test.com'),
(112, 36, '_publisher_name', 'field_663380c09ee2e'),
(113, 36, '_external_link', 'field_663380f39ee2f'),
(114, 37, '_wp_attached_file', '2024/05/placeholder-avatar-female-person-default-woman-avatar-image-gray-profile-anonymous-face-picture-illustration-isolated-on-white-vector.jpg'),
(115, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:980;s:6:\"height\";i:980;s:4:\"file\";s:145:\"2024/05/placeholder-avatar-female-person-default-woman-avatar-image-gray-profile-anonymous-face-picture-illustration-isolated-on-white-vector.jpg\";s:8:\"filesize\";i:18338;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 38, '_wp_attached_file', '2024/05/360_F_260788352_x5sSHM4DGvpjHj9wz8sFltzAPktQwJCj-1.jpg'),
(117, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:360;s:6:\"height\";i:360;s:4:\"file\";s:62:\"2024/05/360_F_260788352_x5sSHM4DGvpjHj9wz8sFltzAPktQwJCj-1.jpg\";s:8:\"filesize\";i:10974;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 39, '_wp_attached_file', '2024/05/avatar-2092113_1280.webp'),
(119, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1244;s:6:\"height\";i:1280;s:4:\"file\";s:32:\"2024/05/avatar-2092113_1280.webp\";s:8:\"filesize\";i:63414;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 40, '_edit_last', '1'),
(121, 40, '_edit_lock', '1714711026:1'),
(122, 40, '_thumbnail_id', '38'),
(123, 40, 'publisher_name', 'vivek Lad'),
(124, 40, 'external_link', 'http://www.test.com'),
(125, 41, '_edit_lock', '1715583530:1'),
(126, 41, '_edit_last', '1'),
(127, 41, '_wp_page_template', 'services.php'),
(128, 43, '_wp_attached_file', '2024/05/Vector.png'),
(129, 43, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:69;s:6:\"height\";i:73;s:4:\"file\";s:18:\"2024/05/Vector.png\";s:8:\"filesize\";i:2779;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 44, '_wp_attached_file', '2024/05/Background.png'),
(131, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:333;s:4:\"file\";s:22:\"2024/05/Background.png\";s:8:\"filesize\";i:3344;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 45, '_wp_attached_file', '2024/05/Globe-2.png'),
(133, 45, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:333;s:4:\"file\";s:19:\"2024/05/Globe-2.png\";s:8:\"filesize\";i:749648;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 46, '_wp_attached_file', '2024/05/Layer_1-2.png'),
(135, 46, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:83;s:6:\"height\";i:86;s:4:\"file\";s:21:\"2024/05/Layer_1-2.png\";s:8:\"filesize\";i:7334;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 47, '_wp_attached_file', '2024/05/Progress-Report.png'),
(137, 47, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:90;s:6:\"height\";i:86;s:4:\"file\";s:27:\"2024/05/Progress-Report.png\";s:8:\"filesize\";i:6747;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(138, 48, '_wp_attached_file', '2024/05/new-technology.png'),
(139, 48, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:84;s:6:\"height\";i:86;s:4:\"file\";s:26:\"2024/05/new-technology.png\";s:8:\"filesize\";i:12103;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(140, 49, '_wp_attached_file', '2024/05/Layer_1-1.png'),
(141, 49, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:86;s:6:\"height\";i:86;s:4:\"file\";s:21:\"2024/05/Layer_1-1.png\";s:8:\"filesize\";i:10250;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(142, 50, '_wp_attached_file', '2024/05/Layer_1.png'),
(143, 50, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:55;s:6:\"height\";i:86;s:4:\"file\";s:19:\"2024/05/Layer_1.png\";s:8:\"filesize\";i:6324;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2024-05-02 11:46:57', '2024-05-02 11:46:57', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2024-05-02 11:46:57', '2024-05-02 11:46:57', '', 0, 'http://localhost/services/?p=1', 0, 'post', '', 1),
(2, 1, '2024-05-02 11:46:57', '2024-05-02 11:46:57', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/services/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2024-05-02 12:17:23', '2024-05-02 12:17:23', '', 0, 'http://localhost/services/?page_id=2', 0, 'page', '', 0),
(3, 1, '2024-05-02 11:46:57', '2024-05-02 11:46:57', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/services.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2024-05-02 11:46:57', '2024-05-02 11:46:57', '', 0, 'http://localhost/services/?page_id=3', 0, 'page', '', 0),
(4, 0, '2024-05-02 11:47:01', '2024-05-02 11:47:01', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2024-05-02 11:47:01', '2024-05-02 11:47:01', '', 0, 'http://localhost/services/2024/05/02/navigation/', 0, 'wp_navigation', '', 0),
(7, 1, '2024-05-02 12:03:50', '2024-05-02 12:03:50', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"services\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Services Fields', 'services-fields', 'publish', 'closed', 'closed', '', 'group_663380bfa9dfc', '', '', '2024-05-02 12:09:45', '2024-05-02 12:09:45', '', 0, 'http://localhost/services/?post_type=acf-field-group&#038;p=7', 0, 'acf-field-group', '', 0),
(8, 1, '2024-05-02 12:03:50', '2024-05-02 12:03:50', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Publisher name', 'publisher_name', 'publish', 'closed', 'closed', '', 'field_663380c09ee2e', '', '', '2024-05-02 12:03:50', '2024-05-02 12:03:50', '', 7, 'http://localhost/services/?post_type=acf-field&p=8', 0, 'acf-field', '', 0),
(9, 1, '2024-05-02 12:03:50', '2024-05-02 12:03:50', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'External Link', 'external_link', 'publish', 'closed', 'closed', '', 'field_663380f39ee2f', '', '', '2024-05-02 12:09:45', '2024-05-02 12:09:45', '', 7, 'http://localhost/services/?post_type=acf-field&#038;p=9', 1, 'acf-field', '', 0),
(10, 1, '2024-05-02 12:09:50', '2024-05-02 12:09:50', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'Test Service 1', '', 'publish', 'open', 'closed', '', 'test-service-1', '', '', '2024-05-02 13:13:25', '2024-05-02 13:13:25', '', 0, 'http://localhost/services/?post_type=services&#038;p=10', 0, 'services', '', 0),
(11, 1, '2024-05-02 12:08:17', '2024-05-02 12:08:17', '', 'm2i8d3i8N4d3N4K9', '', 'inherit', 'open', 'closed', '', 'm2i8d3i8n4d3n4k9', '', '', '2024-05-02 12:08:17', '2024-05-02 12:08:17', '', 10, 'http://localhost/services/wp-content/uploads/2024/05/m2i8d3i8N4d3N4K9.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2024-05-02 12:11:30', '2024-05-02 12:11:30', 'sdfds', 'Test', '', 'publish', 'open', 'closed', '', 'test', '', '', '2024-05-02 12:11:49', '2024-05-02 12:11:49', '', 0, 'http://localhost/services/?post_type=services&#038;p=12', 0, 'services', '', 0),
(13, 1, '2024-05-02 12:16:32', '2024-05-02 12:16:32', '<!-- wp:shortcode -->\n[services]\n<!-- /wp:shortcode -->', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2024-05-02 12:16:51', '2024-05-02 12:16:51', '', 0, 'http://localhost/services/?page_id=13', 0, 'page', '', 0),
(14, 1, '2024-05-02 12:15:51', '2024-05-02 12:15:51', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfour', '', '', '2024-05-02 12:15:51', '2024-05-02 12:15:51', '', 0, 'http://localhost/services/2024/05/02/wp-global-styles-twentytwentyfour/', 0, 'wp_global_styles', '', 0),
(15, 1, '2024-05-02 12:16:32', '2024-05-02 12:16:32', '<!-- wp:shortcode -->\nservices\n<!-- /wp:shortcode -->', 'Services', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-05-02 12:16:32', '2024-05-02 12:16:32', '', 13, 'http://localhost/services/?p=15', 0, 'revision', '', 0),
(17, 1, '2024-05-02 12:16:51', '2024-05-02 12:16:51', '<!-- wp:shortcode -->\n[services]\n<!-- /wp:shortcode -->', 'Services', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2024-05-02 12:16:51', '2024-05-02 12:16:51', '', 13, 'http://localhost/services/?p=17', 0, 'revision', '', 0),
(18, 1, '2024-05-02 12:17:23', '2024-05-02 12:17:23', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/services/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2024-05-02 12:17:23', '2024-05-02 12:17:23', '', 2, 'http://localhost/services/?p=18', 0, 'revision', '', 0),
(19, 1, '2024-05-02 13:40:16', '2024-05-02 13:40:16', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. ', 'Where does it come from?', '', 'publish', 'open', 'closed', '', 'where-does-it-come-from', '', '', '2024-05-02 13:40:16', '2024-05-02 13:40:16', '', 0, 'http://localhost/services/?post_type=services&#038;p=19', 0, 'services', '', 0),
(20, 1, '2024-05-02 13:40:04', '2024-05-02 13:40:04', '', '360_F_260788352_x5sSHM4DGvpjHj9wz8sFltzAPktQwJCj', '', 'inherit', 'open', 'closed', '', '360_f_260788352_x5sshm4dgvpjhj9wz8sfltzapktqwjcj', '', '', '2024-05-02 13:40:04', '2024-05-02 13:40:04', '', 19, 'http://localhost/services/wp-content/uploads/2024/05/360_F_260788352_x5sSHM4DGvpjHj9wz8sFltzAPktQwJCj.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2024-05-02 13:41:51', '2024-05-02 13:41:51', '', 'Service sample post 4', '', 'publish', 'open', 'closed', '', 'service-sample-post-4', '', '', '2024-05-02 13:41:51', '2024-05-02 13:41:51', '', 0, 'http://localhost/services/?post_type=services&#038;p=21', 0, 'services', '', 0),
(22, 1, '2024-05-02 13:41:18', '2024-05-02 13:41:18', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2024-05-02 13:41:18', '2024-05-02 13:41:18', '', 21, 'http://localhost/services/wp-content/uploads/2024/05/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2024-05-02 14:00:16', '2024-05-02 14:00:16', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage', 'Where can I get some?', '', 'publish', 'open', 'closed', '', 'where-can-i-get-some', '', '', '2024-05-02 14:00:16', '2024-05-02 14:00:16', '', 0, 'http://localhost/services/?post_type=services&#038;p=23', 0, 'services', '', 0),
(24, 1, '2024-05-02 13:59:58', '2024-05-02 13:59:58', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2024-05-02 13:59:58', '2024-05-02 13:59:58', '', 23, 'http://localhost/services/wp-content/uploads/2024/05/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2024-05-02 14:53:47', '2024-05-02 14:53:47', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfour-child', '', '', '2024-05-02 14:53:47', '2024-05-02 14:53:47', '', 0, 'http://localhost/services/wp-global-styles-twentytwentyfour-child/', 0, 'wp_global_styles', '', 0),
(26, 1, '2024-05-02 17:06:29', '2024-05-02 17:06:29', '', 'test', '', 'publish', 'open', 'open', '', 'test', '', '', '2024-05-02 17:06:29', '2024-05-02 17:06:29', '', 0, 'http://localhost/services/?p=26', 0, 'post', '', 0),
(27, 1, '2024-05-02 17:06:29', '2024-05-02 17:06:29', '', 'test', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2024-05-02 17:06:29', '2024-05-02 17:06:29', '', 26, 'http://localhost/services/?p=27', 0, 'revision', '', 0),
(28, 1, '2024-05-02 17:31:01', '2024-05-02 17:31:01', 'Nam diam sapien, rhoncus et cursus vitae, accumsan non eros. Nullam in hendrerit lectus. Proin eget pellentesque ex. Vivamus tincidunt faucibus lectus non cursus. Praesent velit purus, faucibus ut enim aliquam, rutrum accumsan tortor. Maecenas ut vestibulum ex. Morbi sit amet sodales augue. Donec in tortor eleifend, placerat lectus sed, bibendum elit. Nunc imperdiet ligula eu magna porta, sit amet posuere lorem convallis.', 'Praesent hendrerit faucibus scelerisque', '', 'publish', 'open', 'closed', '', 'praesent-hendrerit-faucibus-scelerisque', '', '', '2024-05-02 17:31:01', '2024-05-02 17:31:01', '', 0, 'http://localhost/services/?post_type=services&#038;p=28', 0, 'services', '', 0),
(29, 1, '2024-05-02 17:31:46', '2024-05-02 17:31:46', 'Pellentesque libero mi, laoreet placerat nisi ac, aliquet faucibus sem. Nam quis orci ipsum. Sed mauris elit, facilisis eget nulla id, auctor sagittis ligula. Pellentesque nisl dolor, consequat non velit in, gravida vestibulum risus. Proin sollicitudin purus sed diam lobortis tincidunt. Etiam sodales massa ut elit elementum, eu vestibulum purus aliquet. Fusce luctus eros libero, sit amet volutpat quam porta vel. Aenean efficitur, tortor at porta efficitur, eros ipsum posuere est, a rhoncus ante mauris ut nibh. Praesent a dui vulputate, auctor diam at, pellentesque urna. Morbi tristique gravida lectus eget rhoncus. Mauris non diam elementum, posuere nisl at, posuere nisl. Vivamus at faucibus augue. Aliquam sed purus ultrices leo rhoncus pulvinar. Mauris vulputate rutrum ex, sed placerat augue.\r\n\r\nPellentesque u', 'Curabitur dignissim mauris ut ex dictum mollis', '', 'publish', 'open', 'closed', '', 'curabitur-dignissim-mauris-ut-ex-dictum-mollis', '', '', '2024-05-03 03:46:18', '2024-05-03 03:46:18', '', 0, 'http://localhost/services/?post_type=services&#038;p=29', 0, 'services', '', 0),
(30, 1, '2024-05-02 17:32:44', '2024-05-02 17:32:44', 'Praesent hendrerit faucibus scelerisque. Nam diam sapien, rhoncus et cursus vitae, accumsan non eros. Nullam in hendrerit lectus. Proin eget pellentesque ex. Vivamus tincidunt faucibus lectus non cursus. Praesent velit purus, faucibus ut enim aliquam, rutrum accumsan tortor. Maecenas ut vestibulum ex. Morbi sit amet sodales augue. Donec in tortor eleifend, placerat lectus sed, bibendum elit. Nunc imperdiet ligula eu magna porta, sit amet posuere lorem convallis.', 'nteger ornare laoreet lectus vitae congue.', '', 'publish', 'open', 'closed', '', 'nteger-ornare-laoreet-lectus-vitae-congue', '', '', '2024-05-02 17:32:44', '2024-05-02 17:32:44', '', 0, 'http://localhost/services/?post_type=services&#038;p=30', 0, 'services', '', 0),
(31, 1, '2024-05-02 17:33:29', '2024-05-02 17:33:29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis convallis vel libero a congue. Donec at mauris vel augue sodales blandit non nec enim. Morbi et odio purus. Sed aliquet quis leo in tincidunt. Phasellus risus lacus, fermentum ut risus venenatis, tempor blandit turpis. Aenean at sem quis eros scelerisque vestibulum ac bibendum odio. Nullam fringilla metus eget vulputate convallis. Aenean non sem nulla. Praesent sit amet ipsum ullamcorper, placerat lorem eu, hendrerit sem. Nam iaculis ipsum metus, sed tristique tortor tincidunt sed. Maecenas sed vestibulum urna. Nulla eget erat neque. Vivamus laoreet quis massa sit amet tincidunt. Integer quis dictum neque, ut aliquet lorem. Pellentesque luctus lobortis felis nec posuere.', 'Service 10', '', 'publish', 'open', 'closed', '', 'service-10', '', '', '2024-05-02 17:33:29', '2024-05-02 17:33:29', '', 0, 'http://localhost/services/?post_type=services&#038;p=31', 0, 'services', '', 0),
(32, 1, '2024-05-02 17:34:21', '2024-05-02 17:34:21', 'Praesent hendrerit faucibus scelerisque. Nam diam sapien, rhoncus et cursus vitae, accumsan non eros. Nullam in hendrerit lectus. Proin eget pellentesque ex. Vivamus tincidunt faucibus lectus non cursus. Praesent velit purus, faucibus ut enim aliquam, rutrum accumsan tortor. Maecenas ut vestibulum ex. Morbi sit amet sodales augue. Donec in tortor eleifend, placerat lectus sed, bibendum elit. Nunc imperdiet ligula eu magna porta, sit amet posuere lorem convallis.', 'Service 11', '', 'publish', 'open', 'closed', '', 'service-11', '', '', '2024-05-02 17:34:21', '2024-05-02 17:34:21', '', 0, 'http://localhost/services/?post_type=services&#038;p=32', 0, 'services', '', 0),
(33, 1, '2024-05-02 17:35:12', '2024-05-02 17:35:12', 'Curabitur dignissim mauris ut ex dictum mollis. Pellentesque libero mi, laoreet placerat nisi ac, aliquet faucibus sem. Nam quis orci ipsum. Sed mauris elit, facilisis eget nulla id, auctor sagittis ligula. Pellentesque nisl dolor, consequat non velit in, gravida vestibulum risus. Proin sollicitudin purus sed diam lobortis tincidunt. Etiam sodales massa ut elit elementum, eu vestibulum purus aliquet. Fusce luctus eros libero, sit amet volutpat quam porta vel. Aenean efficitur, tortor at porta efficitur, eros ipsum posuere est, a rhoncus ante mauris ut nibh. Praesent a dui vulputate, auctor diam at, pellentesque urna. Morbi tristique gravida lectus eget rhoncus. Mauris non diam elementum, posuere nisl at, posuere nisl. Vivamus at faucibus augue. Aliquam sed purus ultrices leo rhoncus pulvinar. Mauris vulputate rutrum ex, sed placerat augue.', 'Service 12', '', 'publish', 'open', 'closed', '', 'service-12', '', '', '2024-05-02 17:35:12', '2024-05-02 17:35:12', '', 0, 'http://localhost/services/?post_type=services&#038;p=33', 0, 'services', '', 0),
(34, 1, '2024-05-02 18:10:46', '2024-05-02 18:10:46', 'However, I had the exact same issue with my pagination at first on the default loop, and flushed my permalinks, refreshed the browser, and all worked fine. I never tried flushing my permalinks on the custom post type.', 'Service 13', '', 'publish', 'open', 'closed', '', 'service-13', '', '', '2024-05-03 03:51:10', '2024-05-03 03:51:10', '', 0, 'http://localhost/services/?post_type=services&#038;p=34', 0, 'services', '', 0),
(36, 1, '2024-05-02 19:53:29', '2024-05-02 19:53:29', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage ', 'Test service 14', '', 'publish', 'open', 'closed', '', 'test-service-14', '', '', '2024-05-02 19:54:18', '2024-05-02 19:54:18', '', 0, 'http://localhost/services/?post_type=services&#038;p=36', 0, 'services', '', 0),
(37, 1, '2024-05-03 03:46:14', '2024-05-03 03:46:14', '', 'placeholder-avatar-female-person-default-woman-avatar-image-gray-profile-anonymous-face-picture-illustration-isolated-on-white-vector', '', 'inherit', 'open', 'closed', '', 'placeholder-avatar-female-person-default-woman-avatar-image-gray-profile-anonymous-face-picture-illustration-isolated-on-white-vector', '', '', '2024-05-03 03:46:14', '2024-05-03 03:46:14', '', 29, 'http://localhost/services/wp-content/uploads/2024/05/placeholder-avatar-female-person-default-woman-avatar-image-gray-profile-anonymous-face-picture-illustration-isolated-on-white-vector.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2024-05-03 03:49:35', '2024-05-03 03:49:35', '', '360_F_260788352_x5sSHM4DGvpjHj9wz8sFltzAPktQwJCj', '', 'inherit', 'open', 'closed', '', '360_f_260788352_x5sshm4dgvpjhj9wz8sfltzapktqwjcj-2', '', '', '2024-05-03 03:49:35', '2024-05-03 03:49:35', '', 34, 'http://localhost/services/wp-content/uploads/2024/05/360_F_260788352_x5sSHM4DGvpjHj9wz8sFltzAPktQwJCj-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2024-05-03 03:51:05', '2024-05-03 03:51:05', '', 'avatar-2092113_1280', '', 'inherit', 'open', 'closed', '', 'avatar-2092113_1280', '', '', '2024-05-03 03:51:05', '2024-05-03 03:51:05', '', 34, 'http://localhost/services/wp-content/uploads/2024/05/avatar-2092113_1280.webp', 0, 'attachment', 'image/webp', 0),
(40, 1, '2024-05-03 04:26:54', '2024-05-03 04:26:54', 'test description hjas jsad ', 'Test service 15', '', 'publish', 'open', 'closed', '', 'test-service-15', '', '', '2024-05-03 04:26:54', '2024-05-03 04:26:54', '', 0, 'http://localhost/services/?post_type=services&#038;p=40', 0, 'services', '', 0),
(41, 1, '2024-05-13 06:36:55', '2024-05-13 06:36:55', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services-2', '', '', '2024-05-13 06:38:22', '2024-05-13 06:38:22', '', 0, 'http://localhost/services/?page_id=41', 0, 'page', '', 0),
(42, 1, '2024-05-13 06:36:55', '2024-05-13 06:36:55', '', 'Services', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2024-05-13 06:36:55', '2024-05-13 06:36:55', '', 41, 'http://localhost/services/?p=42', 0, 'revision', '', 0),
(43, 1, '2024-05-13 06:46:50', '2024-05-13 06:46:50', '', 'Vector', '', 'inherit', 'open', 'closed', '', 'vector', '', '', '2024-05-13 06:46:50', '2024-05-13 06:46:50', '', 0, 'http://localhost/services/wp-content/uploads/2024/05/Vector.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2024-05-13 06:46:51', '2024-05-13 06:46:51', '', 'Background', '', 'inherit', 'open', 'closed', '', 'background', '', '', '2024-05-13 06:46:51', '2024-05-13 06:46:51', '', 0, 'http://localhost/services/wp-content/uploads/2024/05/Background.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2024-05-13 08:39:14', '2024-05-13 08:39:14', '', 'Globe 2', '', 'inherit', 'open', 'closed', '', 'globe-2', '', '', '2024-05-13 08:39:14', '2024-05-13 08:39:14', '', 0, 'http://localhost/services/wp-content/uploads/2024/05/Globe-2.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2024-05-13 09:21:27', '2024-05-13 09:21:27', '', 'Layer_1 (2)', '', 'inherit', 'open', 'closed', '', 'layer_1-2', '', '', '2024-05-13 09:21:27', '2024-05-13 09:21:27', '', 0, 'http://localhost/services/wp-content/uploads/2024/05/Layer_1-2.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2024-05-13 09:21:29', '2024-05-13 09:21:29', '', 'Progress Report', '', 'inherit', 'open', 'closed', '', 'progress-report', '', '', '2024-05-13 09:21:29', '2024-05-13 09:21:29', '', 0, 'http://localhost/services/wp-content/uploads/2024/05/Progress-Report.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2024-05-13 09:21:31', '2024-05-13 09:21:31', '', 'new technology', '', 'inherit', 'open', 'closed', '', 'new-technology', '', '', '2024-05-13 09:21:31', '2024-05-13 09:21:31', '', 0, 'http://localhost/services/wp-content/uploads/2024/05/new-technology.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2024-05-13 09:21:32', '2024-05-13 09:21:32', '', 'Layer_1 (1)', '', 'inherit', 'open', 'closed', '', 'layer_1-1', '', '', '2024-05-13 09:21:32', '2024-05-13 09:21:32', '', 0, 'http://localhost/services/wp-content/uploads/2024/05/Layer_1-1.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2024-05-13 09:21:34', '2024-05-13 09:21:34', '', 'Layer_1', '', 'inherit', 'open', 'closed', '', 'layer_1', '', '', '2024-05-13 09:21:34', '2024-05-13 09:21:34', '', 0, 'http://localhost/services/wp-content/uploads/2024/05/Layer_1.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2024-05-18 11:43:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2024-05-18 11:43:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/services/?p=51', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'twentytwentyfour', 'twentytwentyfour', 0),
(3, 'twentytwentyfour-child', 'twentytwentyfour-child', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(14, 2, 0),
(25, 3, 0),
(26, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"57feeb9b61c30d91f7d2bcb105a1dfe7701f9abd5cc6030d5c65e02aa83e3e49\";a:4:{s:10:\"expiration\";i:1715860035;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36\";s:5:\"login\";i:1714650435;}s:64:\"e384d9d055846d9aaf6e54245d66eb151c657cbc75609af31a6cc44579b413b7\";a:4:{s:10:\"expiration\";i:1716791742;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36\";s:5:\"login\";i:1715582142;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '51'),
(18, 1, 'wp_user-settings', 'editor=html&libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1714651758'),
(20, 1, 'wp_persisted_preferences', 'a:4:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-05-13T06:36:16.490Z\";s:14:\"core/edit-site\";a:1:{s:12:\"welcomeGuide\";b:0;}s:4:\"core\";a:1:{s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:15:\"page-attributes\";i:2;s:16:\"discussion-panel\";}}}'),
(21, 1, 'closedpostboxes_services', 'a:4:{i:0;s:11:\"postexcerpt\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:9:\"authordiv\";}'),
(22, 1, 'metaboxhidden_services', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(23, 1, 'meta-box-order_services', 'a:3:{s:4:\"side\";s:22:\"submitdiv,postimagediv\";s:6:\"normal\";s:73:\"service_fields,postexcerpt,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(24, 1, 'screen_layout_services', '2'),
(233, 18, 'nickname', 'ruturest'),
(234, 18, 'first_name', 'rutu'),
(235, 18, 'last_name', 'rest'),
(236, 18, 'description', ''),
(237, 18, 'rich_editing', 'true'),
(238, 18, 'syntax_highlighting', 'true'),
(239, 18, 'comment_shortcuts', 'false'),
(240, 18, 'admin_color', 'fresh'),
(241, 18, 'use_ssl', '0'),
(242, 18, 'show_admin_bar_front', 'true'),
(243, 18, 'locale', ''),
(244, 18, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(245, 18, 'wp_user_level', '0'),
(246, 19, 'nickname', 'aniketdfg'),
(247, 19, 'first_name', 'aniket'),
(248, 19, 'last_name', 'dfg'),
(249, 19, 'description', ''),
(250, 19, 'rich_editing', 'true'),
(251, 19, 'syntax_highlighting', 'true'),
(252, 19, 'comment_shortcuts', 'false'),
(253, 19, 'admin_color', 'fresh'),
(254, 19, 'use_ssl', '0'),
(255, 19, 'show_admin_bar_front', 'true'),
(256, 19, 'locale', ''),
(257, 19, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(258, 19, 'wp_user_level', '0'),
(259, 20, 'nickname', 'testuser22ds'),
(260, 20, 'first_name', 'anikettest'),
(261, 20, 'last_name', 'kadam'),
(262, 20, 'description', ''),
(263, 20, 'rich_editing', 'true'),
(264, 20, 'syntax_highlighting', 'true'),
(265, 20, 'comment_shortcuts', 'false'),
(266, 20, 'admin_color', 'fresh'),
(267, 20, 'use_ssl', '0'),
(268, 20, 'show_admin_bar_front', 'true'),
(269, 20, 'locale', ''),
(270, 20, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(271, 20, 'wp_user_level', '0'),
(272, 21, 'nickname', 'aniketasd'),
(273, 21, 'first_name', 'aniket'),
(274, 21, 'last_name', 'asd'),
(275, 21, 'description', ''),
(276, 21, 'rich_editing', 'true'),
(277, 21, 'syntax_highlighting', 'true'),
(278, 21, 'comment_shortcuts', 'false'),
(279, 21, 'admin_color', 'fresh'),
(280, 21, 'use_ssl', '0'),
(281, 21, 'show_admin_bar_front', 'true'),
(282, 21, 'locale', ''),
(283, 21, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(284, 21, 'wp_user_level', '0'),
(285, 22, 'nickname', 'aniketasdasdas'),
(286, 22, 'first_name', 'aniket'),
(287, 22, 'last_name', 'asdasdas'),
(288, 22, 'description', ''),
(289, 22, 'rich_editing', 'true'),
(290, 22, 'syntax_highlighting', 'true'),
(291, 22, 'comment_shortcuts', 'false'),
(292, 22, 'admin_color', 'fresh'),
(293, 22, 'use_ssl', '0'),
(294, 22, 'show_admin_bar_front', 'true'),
(295, 22, 'locale', ''),
(296, 22, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(297, 22, 'wp_user_level', '0'),
(298, 23, 'nickname', 'test1234'),
(299, 23, 'first_name', ''),
(300, 23, 'last_name', 'test1234'),
(301, 23, 'description', ''),
(302, 23, 'rich_editing', 'true'),
(303, 23, 'syntax_highlighting', 'true'),
(304, 23, 'comment_shortcuts', 'false'),
(305, 23, 'admin_color', 'fresh'),
(306, 23, 'use_ssl', '0'),
(307, 23, 'show_admin_bar_front', 'true'),
(308, 23, 'locale', ''),
(309, 23, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(310, 23, 'wp_user_level', '0'),
(311, 24, 'nickname', 'anikettest1234'),
(312, 24, 'first_name', 'aniket'),
(313, 24, 'last_name', 'test1234'),
(314, 24, 'description', ''),
(315, 24, 'rich_editing', 'true'),
(316, 24, 'syntax_highlighting', 'true'),
(317, 24, 'comment_shortcuts', 'false'),
(318, 24, 'admin_color', 'fresh'),
(319, 24, 'use_ssl', '0'),
(320, 24, 'show_admin_bar_front', 'true'),
(321, 24, 'locale', ''),
(322, 24, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(323, 24, 'wp_user_level', '0'),
(324, 25, 'nickname', 'werewrwerewrewr'),
(325, 25, 'first_name', 'werewr'),
(326, 25, 'last_name', 'werewrewr'),
(327, 25, 'description', ''),
(328, 25, 'rich_editing', 'true'),
(329, 25, 'syntax_highlighting', 'true'),
(330, 25, 'comment_shortcuts', 'false'),
(331, 25, 'admin_color', 'fresh'),
(332, 25, 'use_ssl', '0'),
(333, 25, 'show_admin_bar_front', 'true'),
(334, 25, 'locale', ''),
(335, 25, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(336, 25, 'wp_user_level', '0'),
(337, 26, 'nickname', 'aniketasdasdassdas'),
(338, 26, 'first_name', 'aniket'),
(339, 26, 'last_name', 'asdasdassdas'),
(340, 26, 'description', ''),
(341, 26, 'rich_editing', 'true'),
(342, 26, 'syntax_highlighting', 'true'),
(343, 26, 'comment_shortcuts', 'false'),
(344, 26, 'admin_color', 'fresh'),
(345, 26, 'use_ssl', '0'),
(346, 26, 'show_admin_bar_front', 'true'),
(347, 26, 'locale', ''),
(348, 26, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(349, 26, 'wp_user_level', '0'),
(350, 27, 'nickname', 'asdasdsaasdasdasd'),
(351, 27, 'first_name', 'asdasdsa'),
(352, 27, 'last_name', 'asdasdasd'),
(353, 27, 'description', ''),
(354, 27, 'rich_editing', 'true'),
(355, 27, 'syntax_highlighting', 'true'),
(356, 27, 'comment_shortcuts', 'false'),
(357, 27, 'admin_color', 'fresh'),
(358, 27, 'use_ssl', '0'),
(359, 27, 'show_admin_bar_front', 'true'),
(360, 27, 'locale', ''),
(361, 27, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(362, 27, 'wp_user_level', '0'),
(363, 28, 'nickname', 'PoojaChavan'),
(364, 28, 'first_name', 'Pooja'),
(365, 28, 'last_name', 'Chavan'),
(366, 28, 'description', ''),
(367, 28, 'rich_editing', 'true'),
(368, 28, 'syntax_highlighting', 'true'),
(369, 28, 'comment_shortcuts', 'false'),
(370, 28, 'admin_color', 'fresh'),
(371, 28, 'use_ssl', '0'),
(372, 28, 'show_admin_bar_front', 'true'),
(373, 28, 'locale', ''),
(374, 28, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(375, 28, 'wp_user_level', '0'),
(376, 29, 'nickname', 'SnehalV'),
(377, 29, 'first_name', 'Snehal'),
(378, 29, 'last_name', 'V'),
(379, 29, 'description', ''),
(380, 29, 'rich_editing', 'true'),
(381, 29, 'syntax_highlighting', 'true'),
(382, 29, 'comment_shortcuts', 'false'),
(383, 29, 'admin_color', 'fresh'),
(384, 29, 'use_ssl', '0'),
(385, 29, 'show_admin_bar_front', 'true'),
(386, 29, 'locale', ''),
(387, 29, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(388, 29, 'wp_user_level', '0'),
(389, 30, 'nickname', 'RushiPowar'),
(390, 30, 'first_name', 'Rushi'),
(391, 30, 'last_name', 'Powar'),
(392, 30, 'description', ''),
(393, 30, 'rich_editing', 'true'),
(394, 30, 'syntax_highlighting', 'true'),
(395, 30, 'comment_shortcuts', 'false'),
(396, 30, 'admin_color', 'fresh'),
(397, 30, 'use_ssl', '0'),
(398, 30, 'show_admin_bar_front', 'true'),
(399, 30, 'locale', ''),
(400, 30, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(401, 30, 'wp_user_level', '0'),
(402, 31, 'nickname', 'rwerew'),
(403, 31, 'first_name', 'rwerew'),
(404, 31, 'last_name', ''),
(405, 31, 'description', ''),
(406, 31, 'rich_editing', 'true'),
(407, 31, 'syntax_highlighting', 'true'),
(408, 31, 'comment_shortcuts', 'false'),
(409, 31, 'admin_color', 'fresh'),
(410, 31, 'use_ssl', '0'),
(411, 31, 'show_admin_bar_front', 'true'),
(412, 31, 'locale', ''),
(413, 31, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(414, 31, 'wp_user_level', '0'),
(415, 32, 'nickname', 'sdfdsdsfsdf'),
(416, 32, 'first_name', 'sdfds'),
(417, 32, 'last_name', 'dsfsdf'),
(418, 32, 'description', ''),
(419, 32, 'rich_editing', 'true'),
(420, 32, 'syntax_highlighting', 'true'),
(421, 32, 'comment_shortcuts', 'false'),
(422, 32, 'admin_color', 'fresh'),
(423, 32, 'use_ssl', '0'),
(424, 32, 'show_admin_bar_front', 'true'),
(425, 32, 'locale', ''),
(426, 32, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(427, 32, 'wp_user_level', '0'),
(428, 33, 'nickname', 'fdgfdgdfdfg'),
(429, 33, 'first_name', 'fdgfdg'),
(430, 33, 'last_name', 'dfdfg'),
(431, 33, 'description', ''),
(432, 33, 'rich_editing', 'true'),
(433, 33, 'syntax_highlighting', 'true'),
(434, 33, 'comment_shortcuts', 'false'),
(435, 33, 'admin_color', 'fresh'),
(436, 33, 'use_ssl', '0'),
(437, 33, 'show_admin_bar_front', 'true'),
(438, 33, 'locale', ''),
(439, 33, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(440, 33, 'wp_user_level', '0'),
(441, 34, 'nickname', 'aniketadsadsasd'),
(442, 34, 'first_name', 'aniketads'),
(443, 34, 'last_name', 'adsasd'),
(444, 34, 'description', ''),
(445, 34, 'rich_editing', 'true'),
(446, 34, 'syntax_highlighting', 'true'),
(447, 34, 'comment_shortcuts', 'false'),
(448, 34, 'admin_color', 'fresh'),
(449, 34, 'use_ssl', '0'),
(450, 34, 'show_admin_bar_front', 'true'),
(451, 34, 'locale', ''),
(452, 34, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(453, 34, 'wp_user_level', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BEWHkwpz.w340/9XZXVYqt4WH0nMsn0', 'admin', 'aniket.kadam91@gmail.com', 'http://localhost/services', '2024-05-02 11:46:57', '', 0, 'admin'),
(18, 'ruturest', '$P$BZXPkFOX/BoR1RGRf2jYVGt24Vlflq1', 'ruturest', 'trrt@dgdg.com', '', '2024-05-18 14:19:06', '', 0, 'rutu rest'),
(19, 'aniketdfg', '$P$B6RLqmutwAtPR2HLaf8E.RH32VbAWt1', 'aniketdfg', 'test4321@test.com', '', '2024-05-19 06:03:15', '', 0, 'aniket dfg'),
(20, 'testuser22ds', '$P$Bn5DVt7XeWfl/h07P3NAIn5pDefzmp.', 'testuser22ds', 'testuser22sdf@gmail.com', '', '2024-05-19 06:13:31', '', 0, 'anikettest kadam'),
(21, 'aniketasd', '$P$B2/1lILVbTWn1GLh/NMiYgJMJwKb7Z1', 'aniketasd', 'asdasdasdwqeqwe@sdfsf.com', '', '2024-05-19 06:14:16', '', 0, 'aniket asd'),
(22, 'aniketasdasdas', '$P$BSqvvXSHtuXcoCQRVyaeXWPhjHZDLe.', 'aniketasdasdas', 'trrtqweqwe@dgdg.com', '', '2024-05-19 06:20:00', '', 0, 'aniket asdasdas'),
(23, 'test1234', '$P$B32ZmhShMbsHCw.6u3UdbDJ4ZkpS7i/', 'test1234', 'aniket.k@gmail.com', '', '2024-05-19 06:20:41', '', 0, 'test1234'),
(24, 'anikettest1234', '$P$BdAfER5EtcEA9LLltS3CMgByTOAbxq/', 'anikettest1234', 'etertertre@sdfds.com', '', '2024-05-19 06:35:19', '', 0, 'aniket test1234'),
(25, 'werewrwerewrewr', '$P$BCBpR5xQ6Jf3VO9RUTeeTQeG38Jr8/0', 'werewrwerewrewr', 'qeqweqwe@sfd.com', '', '2024-05-19 06:39:59', '', 0, 'werewr werewrewr'),
(26, 'aniketasdasdassdas', '$P$Ba87LrQ8jD5s7ao0XMzlIycrHmiR4p.', 'aniketasdasdassdas', 'testdasdqwe@ggg.com', '', '2024-05-19 06:41:43', '', 0, 'aniket asdasdassdas'),
(27, 'asdasdsaasdasdasd', '$P$Bm7.VAJ2q0n74Xu7Eww/sBhmrde9Oc1', 'asdasdsaasdasdasd', 'sdasdasdasdas@dsdfdfs.com', '', '2024-05-19 06:44:26', '', 0, 'asdasdsa asdasdasd'),
(28, 'PoojaChavan', '$P$BnQYdDwinhnYvm5YM9EBCj3ozZ35fr/', 'poojachavan', '', '', '2024-05-19 12:35:05', '', 0, 'Pooja Chavan'),
(29, 'SnehalV', '$P$BDGoOsrGPvoWkgMu1yCun0A71SOn4P.', 'snehalv', '', '', '2024-05-19 12:37:57', '', 0, 'Snehal V'),
(30, 'RushiPowar', '$P$BvSJRnL.UxqIrnO4qYpXuayXHTK2Zh1', 'rushipowar', 'Rushipowar@gmail.com', '', '2024-05-19 12:39:59', '', 0, 'Rushi Powar'),
(31, 'rwerew', '$P$B1SiZn4wr9FV3dhJAmmokdkaCm1nmT/', 'rwerew', '', '', '2024-05-19 14:47:41', '', 0, 'rwerew'),
(32, 'sdfdsdsfsdf', '$P$BYKnBONi6MUHY.w1uJlvCL52vZ9wH8.', 'sdfdsdsfsdf', '', '', '2024-05-19 14:57:03', '', 0, 'sdfds dsfsdf'),
(33, 'fdgfdgdfdfg', '$P$B6mI9g990F7ngzwMzvg/St/Tlr74WI/', 'fdgfdgdfdfg', 'dfgdfgd@sfd.com', '', '2024-05-19 14:58:19', '', 0, 'fdgfdg dfdfg'),
(34, 'aniketadsadsasd', '$P$BAQiW1/irBGioDAwtoIrrHtnBE7IUC1', 'aniketadsadsasd', 'trrasdasdsat@dgdg.com', '', '2024-05-19 15:01:18', '', 0, 'aniketads adsasd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=433;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=454;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
