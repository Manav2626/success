-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-05-07 06:27:45','2024-05-07 06:27:45','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=665 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://success.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://success.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Success','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','1','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:157:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=39&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:39:\"manual-image-crop/manual-image-crop.php\";i:2;s:19:\"members/members.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','Lux','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','Lux','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','57155','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','41','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','39','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1730615265','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'wp_attachment_pages_enabled','0','yes');
INSERT INTO `wp_options` VALUES (100,'initial_db_version','57155','yes');
INSERT INTO `wp_options` VALUES (101,'wp_user_roles','a:6:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:76:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"restrict_content\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:12:\"delete_roles\";b:1;s:10:\"edit_roles\";b:1;s:10:\"edit_notes\";b:1;s:17:\"edit_others_notes\";b:1;s:12:\"delete_notes\";b:1;s:13:\"publish_notes\";b:1;s:18:\"read_private_notes\";b:1;s:20:\"delete_private_notes\";b:1;s:22:\"delete_published_notes\";b:1;s:19:\"delete_others_notes\";b:1;s:18:\"edit_private_notes\";b:1;s:20:\"edit_published_notes\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:5:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_notes\";b:1;s:10:\"edit_notes\";b:1;s:13:\"publish_notes\";b:1;}}s:13:\"event_manager\";a:2:{s:4:\"name\";s:13:\"Event Manager\";s:12:\"capabilities\";a:11:{s:4:\"read\";b:1;s:11:\"edit_events\";b:1;s:18:\"edit_others_events\";b:1;s:13:\"delete_events\";b:1;s:14:\"publish_events\";b:1;s:19:\"read_private_events\";b:1;s:21:\"delete_private_events\";b:1;s:23:\"delete_published_events\";b:1;s:20:\"delete_others_events\";b:1;s:19:\"edit_private_events\";b:1;s:21:\"edit_published_events\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (102,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (103,'user_count','3','no');
INSERT INTO `wp_options` VALUES (104,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (106,'cron','a:9:{i:1717673182;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1717673185;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717673266;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1717698466;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1717741666;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717743325;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1718173666;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1718191625;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.5.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}','yes');
INSERT INTO `wp_options` VALUES (123,'recovery_keys','a:2:{s:22:\"No62GDCchS7taHjBTylKoi\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BaHtc29rnwY69V1aBs7/zx13ltRV0h.\";s:10:\"created_at\";i:1717583047;}s:22:\"UtKDEM82ddRFoMJomAJaHQ\";a:2:{s:10:\"hashed_key\";s:34:\"$P$B2Sg4reF5IXoeEqta5ugNIHLlN9pyZ0\";s:10:\"created_at\";i:1717669519;}}','yes');
INSERT INTO `wp_options` VALUES (131,'theme_mods_twentytwentyfour','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1715175033;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','no');
INSERT INTO `wp_options` VALUES (140,'can_compress_scripts','0','yes');
INSERT INTO `wp_options` VALUES (157,'wp_calendar_block_has_published_posts','1','yes');
INSERT INTO `wp_options` VALUES (160,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.5.4-partial-3.zip\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.4\";s:7:\"version\";s:5:\"6.5.4\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:5:\"6.5.3\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.4-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.5.4-partial-3.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.4-rollback-3.zip\";}s:7:\"current\";s:5:\"6.5.4\";s:7:\"version\";s:5:\"6.5.4\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:5:\"6.5.3\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1717655330;s:15:\"version_checked\";s:5:\"6.5.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (161,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"dev-email@wpengine.local\";s:7:\"version\";s:5:\"6.5.3\";s:9:\"timestamp\";i:1715167632;}','no');
INSERT INTO `wp_options` VALUES (168,'_transient_health-check-site-status-result','{\"good\":17,\"recommended\":3,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (172,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (180,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1717655332;s:7:\"checked\";a:1:{s:3:\"Lux\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (181,'current_theme','LUX-Premium','yes');
INSERT INTO `wp_options` VALUES (182,'theme_mods_Lux','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:3;s:13:\"footerMenuTwo\";i:4;s:13:\"footerMenuOne\";i:5;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (183,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (214,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (237,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (282,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','no');
INSERT INTO `wp_options` VALUES (283,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (287,'acf_first_activated_version','6.2.9','yes');
INSERT INTO `wp_options` VALUES (288,'acf_version','6.3.0','yes');
INSERT INTO `wp_options` VALUES (360,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (361,'new_admin_email','dev-email@wpengine.local','yes');
INSERT INTO `wp_options` VALUES (382,'recovery_mode_email_last_sent','1717669519','yes');
INSERT INTO `wp_options` VALUES (385,'mic_make2x','true','yes');
INSERT INTO `wp_options` VALUES (476,'_site_transient_timeout_browser_43544f0c81a090558dc27390694769b1','1717655015','no');
INSERT INTO `wp_options` VALUES (477,'_site_transient_browser_43544f0c81a090558dc27390694769b1','a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:4:\"17.5\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (517,'_site_transient_timeout_php_check_18f908370f4cb169b20964c7203d6110','1717743146','no');
INSERT INTO `wp_options` VALUES (518,'_site_transient_php_check_18f908370f4cb169b20964c7203d6110','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (535,'acf_site_health','{\"version\":\"6.3.0\",\"plugin_type\":\"Free\",\"wp_version\":\"6.5.3\",\"mysql_version\":\"8.0.16\",\"is_multisite\":false,\"active_theme\":{\"name\":\"LUX-Premium\",\"version\":\"1.0\",\"theme_uri\":\"\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.3.0\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"manual-image-crop\\/manual-image-crop.php\":{\"name\":\"Manual Image Crop\",\"version\":\"1.12\",\"plugin_uri\":\"https:\\/\\/github.com\\/tomaszsita\\/wp-manual-image-crop\"},\"regenerate-thumbnails\\/regenerate-thumbnails.php\":{\"name\":\"Regenerate Thumbnails\",\"version\":\"3.1.6\",\"plugin_uri\":\"https:\\/\\/alex.blog\\/wordpress-plugins\\/regenerate-thumbnails\\/\"}},\"ui_field_groups\":\"4\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"date_picker\":1,\"wysiwyg\":1,\"image\":1,\"text\":1,\"relationship\":1},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"6\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"3\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":true,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"last_updated\":1717138525}','no');
INSERT INTO `wp_options` VALUES (537,'_transient_timeout_members_30days_flag','1719730683','no');
INSERT INTO `wp_options` VALUES (538,'_transient_members_30days_flag','1','no');
INSERT INTO `wp_options` VALUES (539,'members_activated','1717138683','yes');
INSERT INTO `wp_options` VALUES (540,'members_addons_migrated','1','yes');
INSERT INTO `wp_options` VALUES (541,'widget_members-widget-login','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (542,'widget_members-widget-users','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (545,'members_notifications','a:4:{s:6:\"update\";i:1717668155;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (633,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1717610095','no');
INSERT INTO `wp_options` VALUES (634,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>','no');
INSERT INTO `wp_options` VALUES (658,'_site_transient_timeout_theme_roots','1717657131','no');
INSERT INTO `wp_options` VALUES (659,'_site_transient_theme_roots','a:1:{s:3:\"Lux\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (660,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1717655333;s:8:\"response\";a:1:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.3.1\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3096880\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3096880\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3096880\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3096880\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.5.4\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.5\";}s:19:\"members/members.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/members\";s:4:\"slug\";s:7:\"members\";s:6:\"plugin\";s:19:\"members/members.php\";s:11:\"new_version\";s:5:\"3.2.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/members/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/members.3.2.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/members/assets/icon-256x256.png?rev=2503334\";s:2:\"1x\";s:60:\"https://ps.w.org/members/assets/icon-128x128.png?rev=2503334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/members/assets/banner-1544x500.jpg?rev=2503334\";s:2:\"1x\";s:62:\"https://ps.w.org/members/assets/banner-772x250.jpg?rev=2503334\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.6\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.6.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.3.0\";s:39:\"manual-image-crop/manual-image-crop.php\";s:4:\"1.12\";s:19:\"members/members.php\";s:5:\"3.2.9\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.6\";}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=485 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,6,'_edit_lock','1715175502:1');
INSERT INTO `wp_postmeta` VALUES (6,9,'_edit_lock','1715175556:1');
INSERT INTO `wp_postmeta` VALUES (9,11,'_edit_lock','1715248524:1');
INSERT INTO `wp_postmeta` VALUES (16,2,'_edit_lock','1715505807:1');
INSERT INTO `wp_postmeta` VALUES (17,17,'_edit_lock','1716296739:1');
INSERT INTO `wp_postmeta` VALUES (18,3,'_edit_lock','1715498510:1');
INSERT INTO `wp_postmeta` VALUES (19,20,'_edit_lock','1715499886:1');
INSERT INTO `wp_postmeta` VALUES (20,22,'_edit_lock','1715499929:1');
INSERT INTO `wp_postmeta` VALUES (21,24,'_edit_lock','1715501699:1');
INSERT INTO `wp_postmeta` VALUES (22,26,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (23,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (24,26,'_menu_item_object_id','26');
INSERT INTO `wp_postmeta` VALUES (25,26,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (26,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (27,26,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (28,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (29,26,'_menu_item_url','http://success.local/');
INSERT INTO `wp_postmeta` VALUES (30,26,'_menu_item_orphaned','1715506331');
INSERT INTO `wp_postmeta` VALUES (31,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (32,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (33,27,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (34,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (35,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (36,27,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (37,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (38,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (39,27,'_menu_item_orphaned','1715506331');
INSERT INTO `wp_postmeta` VALUES (40,28,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (41,28,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (42,28,'_menu_item_object_id','24');
INSERT INTO `wp_postmeta` VALUES (43,28,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (44,28,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (45,28,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (46,28,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (47,28,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (48,28,'_menu_item_orphaned','1715506331');
INSERT INTO `wp_postmeta` VALUES (49,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (50,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (51,29,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (52,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (53,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (54,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (55,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (56,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (58,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (59,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (60,30,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (61,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (62,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (63,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (64,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (65,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (66,30,'_menu_item_orphaned','1715506331');
INSERT INTO `wp_postmeta` VALUES (67,31,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (68,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (69,31,'_menu_item_object_id','20');
INSERT INTO `wp_postmeta` VALUES (70,31,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (71,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (72,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (73,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (74,31,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (75,31,'_menu_item_orphaned','1715506331');
INSERT INTO `wp_postmeta` VALUES (76,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (77,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (78,32,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (79,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (80,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (81,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (82,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (83,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (84,32,'_menu_item_orphaned','1715506331');
INSERT INTO `wp_postmeta` VALUES (85,33,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (86,33,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (87,33,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (88,33,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (89,33,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (90,33,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (91,33,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (92,33,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (93,33,'_menu_item_orphaned','1715506331');
INSERT INTO `wp_postmeta` VALUES (94,34,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (95,34,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (96,34,'_menu_item_object_id','3');
INSERT INTO `wp_postmeta` VALUES (97,34,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (98,34,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (99,34,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (100,34,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (101,34,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (130,38,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (131,38,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (132,38,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (133,38,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (134,38,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (135,38,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (136,38,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (137,38,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (139,39,'_edit_lock','1715585476:1');
INSERT INTO `wp_postmeta` VALUES (140,41,'_edit_lock','1715585505:1');
INSERT INTO `wp_postmeta` VALUES (141,43,'_edit_lock','1715782787:1');
INSERT INTO `wp_postmeta` VALUES (144,48,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (145,48,'_edit_lock','1715855524:1');
INSERT INTO `wp_postmeta` VALUES (146,53,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (147,53,'_edit_lock','1715855389:1');
INSERT INTO `wp_postmeta` VALUES (156,65,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (157,65,'_edit_lock','1715790580:1');
INSERT INTO `wp_postmeta` VALUES (158,53,'event_date','20240626');
INSERT INTO `wp_postmeta` VALUES (159,53,'_event_date','field_6644d53ccc412');
INSERT INTO `wp_postmeta` VALUES (161,48,'event_date','19871002');
INSERT INTO `wp_postmeta` VALUES (162,48,'_event_date','field_6644d53ccc412');
INSERT INTO `wp_postmeta` VALUES (163,68,'_edit_lock','1715855597:1');
INSERT INTO `wp_postmeta` VALUES (164,68,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (165,68,'event_date','20240523');
INSERT INTO `wp_postmeta` VALUES (166,68,'_event_date','field_6644d53ccc412');
INSERT INTO `wp_postmeta` VALUES (167,69,'_edit_lock','1715855489:1');
INSERT INTO `wp_postmeta` VALUES (168,71,'_edit_lock','1715857344:1');
INSERT INTO `wp_postmeta` VALUES (169,71,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (170,71,'event_date','19590601');
INSERT INTO `wp_postmeta` VALUES (171,71,'_event_date','field_6644d53ccc412');
INSERT INTO `wp_postmeta` VALUES (172,72,'_edit_lock','1715866382:1');
INSERT INTO `wp_postmeta` VALUES (173,74,'_edit_lock','1717050750:1');
INSERT INTO `wp_postmeta` VALUES (174,75,'_edit_lock','1717050619:1');
INSERT INTO `wp_postmeta` VALUES (175,76,'_edit_lock','1717063840:1');
INSERT INTO `wp_postmeta` VALUES (176,77,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (177,77,'_edit_lock','1716183750:1');
INSERT INTO `wp_postmeta` VALUES (178,79,'_edit_lock','1715941750:1');
INSERT INTO `wp_postmeta` VALUES (179,79,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (180,79,'event_date','20240520');
INSERT INTO `wp_postmeta` VALUES (181,79,'_event_date','field_6644d53ccc412');
INSERT INTO `wp_postmeta` VALUES (182,79,'related_programs','a:2:{i:0;s:2:\"75\";i:1;s:2:\"76\";}');
INSERT INTO `wp_postmeta` VALUES (183,79,'_related_programs','field_66472dabb1dfa');
INSERT INTO `wp_postmeta` VALUES (184,81,'_edit_lock','1717586152:1');
INSERT INTO `wp_postmeta` VALUES (185,82,'_edit_lock','1716901150:1');
INSERT INTO `wp_postmeta` VALUES (186,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (187,81,'related_programs','a:2:{i:0;s:2:\"74\";i:1;s:2:\"76\";}');
INSERT INTO `wp_postmeta` VALUES (188,81,'_related_programs','field_66472dabb1dfa');
INSERT INTO `wp_postmeta` VALUES (189,82,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (190,82,'related_programs','a:2:{i:0;s:2:\"75\";i:1;s:2:\"76\";}');
INSERT INTO `wp_postmeta` VALUES (191,82,'_related_programs','field_66472dabb1dfa');
INSERT INTO `wp_postmeta` VALUES (192,83,'_wp_attached_file','2024/05/diagram-e1716189937149.png');
INSERT INTO `wp_postmeta` VALUES (193,83,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:428;s:6:\"height\";i:512;s:4:\"file\";s:34:\"2024/05/diagram-e1716189937149.png\";s:8:\"filesize\";i:10473;s:5:\"sizes\";a:4:{s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:34:\"diagram-e1716189937149-400x260.png\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5023;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:19:\"diagram-480x512.png\";s:5:\"width\";i:480;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6405;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"diagram-e1716189937149-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2458;}s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"diagram-e1716189937149-251x300.png\";s:5:\"width\";i:251;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4966;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (194,81,'_thumbnail_id','83');
INSERT INTO `wp_postmeta` VALUES (195,83,'_wp_attachment_backup_sizes','a:5:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:11:\"diagram.png\";}s:14:\"thumbnail-orig\";a:5:{s:4:\"file\";s:19:\"diagram-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2688;}s:11:\"medium-orig\";a:5:{s:4:\"file\";s:19:\"diagram-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5616;}s:23:\"professorLandscape-orig\";a:5:{s:4:\"file\";s:19:\"diagram-400x260.png\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5418;}s:22:\"professorPortrait-orig\";a:5:{s:4:\"file\";s:19:\"diagram-480x512.png\";s:5:\"width\";i:480;s:6:\"height\";i:512;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6405;}}');
INSERT INTO `wp_postmeta` VALUES (196,84,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (197,84,'_edit_lock','1716198302:1');
INSERT INTO `wp_postmeta` VALUES (198,87,'_wp_attached_file','2024/05/skull_and_bones_2018_video_game-wallpaper-5120x2160-1-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (199,87,'_wp_attachment_metadata','a:8:{s:5:\"width\";i:2560;s:6:\"height\";i:1080;s:4:\"file\";s:72:\"2024/05/skull_and_bones_2018_video_game-wallpaper-5120x2160-1-scaled.jpg\";s:8:\"filesize\";i:249062;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:65:\"skull_and_bones_2018_video_game-wallpaper-5120x2160-1-300x127.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:127;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6860;}s:5:\"large\";a:5:{s:4:\"file\";s:66:\"skull_and_bones_2018_video_game-wallpaper-5120x2160-1-1024x432.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:50915;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:65:\"skull_and_bones_2018_video_game-wallpaper-5120x2160-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5668;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:65:\"skull_and_bones_2018_video_game-wallpaper-5120x2160-1-768x324.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32163;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:66:\"skull_and_bones_2018_video_game-wallpaper-5120x2160-1-1536x648.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:648;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:102422;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:66:\"skull_and_bones_2018_video_game-wallpaper-5120x2160-1-2048x864.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:864;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:168483;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:65:\"skull_and_bones_2018_video_game-wallpaper-5120x2160-1-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:17786;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:65:\"skull_and_bones_2018_video_game-wallpaper-5120x2160-1-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49705;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:66:\"skull_and_bones_2018_video_game-wallpaper-5120x2160-1-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:49011;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:57:\"skull_and_bones_2018_video_game-wallpaper-5120x2160-1.jpg\";s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"91\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:4:\"5.12\";}}}');
INSERT INTO `wp_postmeta` VALUES (200,81,'page_banner_image','87');
INSERT INTO `wp_postmeta` VALUES (201,81,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (202,81,'page_subtitle','Great Professor ');
INSERT INTO `wp_postmeta` VALUES (203,81,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (204,88,'_wp_attached_file','2024/05/Untitled-design.gif');
INSERT INTO `wp_postmeta` VALUES (205,88,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:319;s:6:\"height\";i:188;s:4:\"file\";s:27:\"2024/05/Untitled-design.gif\";s:8:\"filesize\";i:536353;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"Untitled-design-300x177.gif\";s:5:\"width\";i:300;s:6:\"height\";i:177;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:16274;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"Untitled-design-150x150.gif\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/gif\";s:8:\"filesize\";i:8289;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:15:\"micSelectedArea\";a:1:{s:10:\"pageBanner\";a:5:{s:1:\"x\";s:1:\"0\";s:1:\"y\";s:2:\"99\";s:1:\"w\";s:3:\"500\";s:1:\"h\";s:18:\"116.66666666666629\";s:5:\"scale\";s:1:\"3\";}}}');
INSERT INTO `wp_postmeta` VALUES (207,17,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (209,89,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (211,17,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (212,17,'page_banner_image','88');
INSERT INTO `wp_postmeta` VALUES (213,17,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (214,17,'page_subtitle','Everything about us');
INSERT INTO `wp_postmeta` VALUES (215,17,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (216,89,'page_banner_image','88');
INSERT INTO `wp_postmeta` VALUES (217,89,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (218,89,'page_subtitle','Everything about us');
INSERT INTO `wp_postmeta` VALUES (219,89,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (220,90,'_wp_attached_file','2024/05/Untitled-design.png');
INSERT INTO `wp_postmeta` VALUES (221,90,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:3072;s:6:\"height\";i:3072;s:4:\"file\";s:27:\"2024/05/Untitled-design.png\";s:8:\"filesize\";i:400116;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"Untitled-design-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:20845;}s:5:\"large\";a:5:{s:4:\"file\";s:29:\"Untitled-design-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:94724;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"Untitled-design-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8833;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"Untitled-design-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:68555;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:29:\"Untitled-design-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:163130;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:29:\"Untitled-design-2048x2048.png\";s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:243020;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:27:\"Untitled-design-400x260.png\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18742;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:27:\"Untitled-design-480x650.png\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37783;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:28:\"Untitled-design-1500x350.png\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:34028;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (222,75,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (223,75,'page_banner_image','91');
INSERT INTO `wp_postmeta` VALUES (224,75,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (225,75,'page_subtitle','this is bio sub');
INSERT INTO `wp_postmeta` VALUES (226,75,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (227,91,'_wp_attached_file','2024/05/forza_horizon_lamborghini-wallpaper-3440x1440-1-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (228,91,'_wp_attachment_metadata','a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1072;s:4:\"file\";s:66:\"2024/05/forza_horizon_lamborghini-wallpaper-3440x1440-1-scaled.jpg\";s:8:\"filesize\";i:121406;s:5:\"sizes\";a:9:{s:6:\"medium\";a:5:{s:4:\"file\";s:59:\"forza_horizon_lamborghini-wallpaper-3440x1440-1-300x126.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:126;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5001;}s:5:\"large\";a:5:{s:4:\"file\";s:60:\"forza_horizon_lamborghini-wallpaper-3440x1440-1-1024x429.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:429;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:31353;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:59:\"forza_horizon_lamborghini-wallpaper-3440x1440-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3018;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:59:\"forza_horizon_lamborghini-wallpaper-3440x1440-1-768x321.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:321;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:20705;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:60:\"forza_horizon_lamborghini-wallpaper-3440x1440-1-1536x643.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:643;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:57468;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:60:\"forza_horizon_lamborghini-wallpaper-3440x1440-1-2048x857.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:857;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:87529;}s:18:\"professorLandscape\";a:5:{s:4:\"file\";s:59:\"forza_horizon_lamborghini-wallpaper-3440x1440-1-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10376;}s:17:\"professorPortrait\";a:5:{s:4:\"file\";s:59:\"forza_horizon_lamborghini-wallpaper-3440x1440-1-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16877;}s:10:\"pageBanner\";a:5:{s:4:\"file\";s:60:\"forza_horizon_lamborghini-wallpaper-3440x1440-1-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:41902;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:51:\"forza_horizon_lamborghini-wallpaper-3440x1440-1.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (229,82,'page_banner_image','');
INSERT INTO `wp_postmeta` VALUES (230,82,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (231,82,'page_subtitle','');
INSERT INTO `wp_postmeta` VALUES (232,82,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (233,82,'_thumbnail_id','90');
INSERT INTO `wp_postmeta` VALUES (234,92,'_edit_lock','1716900699:1');
INSERT INTO `wp_postmeta` VALUES (237,92,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (238,92,'_pingme','1');
INSERT INTO `wp_postmeta` VALUES (239,92,'page_banner_image','');
INSERT INTO `wp_postmeta` VALUES (240,92,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (241,92,'page_subtitle','');
INSERT INTO `wp_postmeta` VALUES (242,92,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (243,93,'page_banner_image','');
INSERT INTO `wp_postmeta` VALUES (244,93,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (245,93,'page_subtitle','');
INSERT INTO `wp_postmeta` VALUES (246,93,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (247,95,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (248,95,'_edit_lock','1717065654:1');
INSERT INTO `wp_postmeta` VALUES (249,75,'main_body_content','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum recusandae cum quas dolores quia doloremque fugit quod impedit modi. Distinctio perferendis, expedita provident consequatur excepturi sunt non molestias a aliquam quas rerum accusantium consequuntur quod, itaque sit ad possimus eaque dolorum recusandae dicta, voluptatibus ipsam perspiciatis error? Quae, ipsam maxime?\r\n\r\nMaths is also cool');
INSERT INTO `wp_postmeta` VALUES (250,75,'_main_body_content','field_66581c02df1d2');
INSERT INTO `wp_postmeta` VALUES (251,74,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (252,74,'main_body_content','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum recusandae cum quas dolores quia doloremque fugit quod impedit modi. Distinctio perferendis, expedita provident consequatur excepturi sunt non molestias a aliquam quas rerum accusantium consequuntur quod, itaque sit ad possimus eaque dolorum recusandae dicta, voluptatibus ipsam perspiciatis error? Quae, ipsam maxime?');
INSERT INTO `wp_postmeta` VALUES (253,74,'_main_body_content','field_66581c02df1d2');
INSERT INTO `wp_postmeta` VALUES (254,74,'page_banner_image','');
INSERT INTO `wp_postmeta` VALUES (255,74,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (256,74,'page_subtitle','');
INSERT INTO `wp_postmeta` VALUES (257,74,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (258,76,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (259,76,'main_body_content','Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum recusandae cum quas dolores quia doloremque fugit quod impedit modi. Distinctio perferendis, expedita provident consequatur excepturi sunt non molestias a aliquam quas rerum accusantium consequuntur quod, itaque sit ad possimus eaque dolorum recusandae dicta, voluptatibus ipsam perspiciatis error? Quae, ipsam maxime?');
INSERT INTO `wp_postmeta` VALUES (260,76,'_main_body_content','field_66581c02df1d2');
INSERT INTO `wp_postmeta` VALUES (261,76,'page_banner_image','');
INSERT INTO `wp_postmeta` VALUES (262,76,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (263,76,'page_subtitle','');
INSERT INTO `wp_postmeta` VALUES (264,76,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (265,97,'_edit_lock','1717064408:1');
INSERT INTO `wp_postmeta` VALUES (266,97,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (267,97,'page_banner_image','');
INSERT INTO `wp_postmeta` VALUES (268,97,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (269,97,'page_subtitle','');
INSERT INTO `wp_postmeta` VALUES (270,97,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (271,98,'page_banner_image','');
INSERT INTO `wp_postmeta` VALUES (272,98,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (273,98,'page_subtitle','');
INSERT INTO `wp_postmeta` VALUES (274,98,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (275,99,'_edit_lock','1717066566:1');
INSERT INTO `wp_postmeta` VALUES (276,99,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (277,99,'event_date','20250522');
INSERT INTO `wp_postmeta` VALUES (278,99,'_event_date','field_6644d53ccc412');
INSERT INTO `wp_postmeta` VALUES (279,99,'page_banner_image','');
INSERT INTO `wp_postmeta` VALUES (280,99,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (281,99,'page_subtitle','');
INSERT INTO `wp_postmeta` VALUES (282,99,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (283,99,'related_programs','');
INSERT INTO `wp_postmeta` VALUES (284,99,'_related_programs','field_66472dabb1dfa');
INSERT INTO `wp_postmeta` VALUES (285,100,'_edit_lock','1717066500:1');
INSERT INTO `wp_postmeta` VALUES (286,102,'_edit_lock','1717151465:1');
INSERT INTO `wp_postmeta` VALUES (287,102,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (288,102,'page_banner_image','');
INSERT INTO `wp_postmeta` VALUES (289,102,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (290,102,'page_subtitle','');
INSERT INTO `wp_postmeta` VALUES (291,102,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (292,103,'page_banner_image','');
INSERT INTO `wp_postmeta` VALUES (293,103,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (294,103,'page_subtitle','');
INSERT INTO `wp_postmeta` VALUES (295,103,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (296,104,'_edit_lock','1717237722:1');
INSERT INTO `wp_postmeta` VALUES (297,104,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (298,104,'page_banner_image','');
INSERT INTO `wp_postmeta` VALUES (299,104,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (300,104,'page_subtitle','');
INSERT INTO `wp_postmeta` VALUES (301,104,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (302,105,'_edit_lock','1717236791:1');
INSERT INTO `wp_postmeta` VALUES (303,105,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (304,105,'page_banner_image','');
INSERT INTO `wp_postmeta` VALUES (305,105,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (306,105,'page_subtitle','');
INSERT INTO `wp_postmeta` VALUES (307,105,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (317,107,'_edit_lock','1717417320:1');
INSERT INTO `wp_postmeta` VALUES (318,107,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (319,107,'page_banner_image','');
INSERT INTO `wp_postmeta` VALUES (320,107,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (321,107,'page_subtitle','');
INSERT INTO `wp_postmeta` VALUES (322,107,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (379,122,'_edit_lock','1717568683:1');
INSERT INTO `wp_postmeta` VALUES (380,122,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (381,122,'page_banner_image','');
INSERT INTO `wp_postmeta` VALUES (382,122,'_page_banner_image','field_664afc26156e0');
INSERT INTO `wp_postmeta` VALUES (383,122,'page_subtitle','');
INSERT INTO `wp_postmeta` VALUES (384,122,'_page_subtitle','field_664afc4d156e1');
INSERT INTO `wp_postmeta` VALUES (385,123,'_edit_lock','1717568944:1');
INSERT INTO `wp_postmeta` VALUES (386,123,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (387,123,'_wp_trash_meta_time','1717569838');
INSERT INTO `wp_postmeta` VALUES (388,123,'_wp_desired_post_slug','hehe123');
INSERT INTO `wp_postmeta` VALUES (389,126,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (390,126,'_wp_trash_meta_time','1717570494');
INSERT INTO `wp_postmeta` VALUES (391,126,'_wp_desired_post_slug','hello');
INSERT INTO `wp_postmeta` VALUES (392,125,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (393,125,'_wp_trash_meta_time','1717570495');
INSERT INTO `wp_postmeta` VALUES (394,125,'_wp_desired_post_slug','mis');
INSERT INTO `wp_postmeta` VALUES (395,134,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (396,134,'_wp_trash_meta_time','1717582795');
INSERT INTO `wp_postmeta` VALUES (397,134,'_wp_desired_post_slug','77');
INSERT INTO `wp_postmeta` VALUES (398,133,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (399,133,'_wp_trash_meta_time','1717582796');
INSERT INTO `wp_postmeta` VALUES (400,133,'_wp_desired_post_slug','66');
INSERT INTO `wp_postmeta` VALUES (401,132,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (402,132,'_wp_trash_meta_time','1717582797');
INSERT INTO `wp_postmeta` VALUES (403,132,'_wp_desired_post_slug','55');
INSERT INTO `wp_postmeta` VALUES (404,131,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (405,131,'_wp_trash_meta_time','1717582893');
INSERT INTO `wp_postmeta` VALUES (406,131,'_wp_desired_post_slug','44');
INSERT INTO `wp_postmeta` VALUES (407,131,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (408,131,'_wp_trash_meta_time','1717583302');
INSERT INTO `wp_postmeta` VALUES (409,127,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (410,127,'_wp_trash_meta_time','1717583328');
INSERT INTO `wp_postmeta` VALUES (411,127,'_wp_desired_post_slug','hello');
INSERT INTO `wp_postmeta` VALUES (412,128,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (413,128,'_wp_trash_meta_time','1717583331');
INSERT INTO `wp_postmeta` VALUES (414,128,'_wp_desired_post_slug','11');
INSERT INTO `wp_postmeta` VALUES (415,136,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (416,136,'_wp_trash_meta_time','1717583348');
INSERT INTO `wp_postmeta` VALUES (417,136,'_wp_desired_post_slug','66');
INSERT INTO `wp_postmeta` VALUES (418,137,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (419,137,'_wp_trash_meta_time','1717584057');
INSERT INTO `wp_postmeta` VALUES (420,137,'_wp_desired_post_slug','77');
INSERT INTO `wp_postmeta` VALUES (421,138,'_wp_trash_meta_status','private');
INSERT INTO `wp_postmeta` VALUES (422,138,'_wp_trash_meta_time','1717584673');
INSERT INTO `wp_postmeta` VALUES (423,138,'_wp_desired_post_slug','edited');
INSERT INTO `wp_postmeta` VALUES (424,140,'_edit_lock','1717586216:1');
INSERT INTO `wp_postmeta` VALUES (425,141,'_edit_lock','1717655604:1');
INSERT INTO `wp_postmeta` VALUES (426,141,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (439,146,'_edit_lock','1717656366:1');
INSERT INTO `wp_postmeta` VALUES (482,156,'liked_professor_id','82');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2024-05-07 06:27:45','2024-05-07 06:27:45','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2024-05-07 06:27:45','2024-05-07 06:27:45','',0,'http://success.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2024-05-07 06:27:45','2024-05-07 06:27:45','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://success.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2024-05-07 06:27:45','2024-05-07 06:27:45','',0,'http://success.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2024-05-07 06:27:45','2024-05-07 06:27:45','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://success.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','publish','closed','open','','privacy-policy','','','2024-05-12 07:24:10','2024-05-12 07:24:10','',0,'http://success.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2024-05-08 11:26:10','2024-05-08 11:26:10','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2024-05-08 11:26:10','2024-05-08 11:26:10','',0,'http://success.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2024-05-08 11:27:04','2024-05-08 11:27:04','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa adipisci culpa quos illo in corporis, excepturi eaque eligendi exercitationem ratione aut dolorum nulla, laboriosam sequi, ullam rerum nisi enim sed inventore. Vero quia blanditiis accusantium nemo soluta deserunt aut porro ex, fugiat aliquam fugit sit accusamus dolore quos explicabo maiores.</p>\n<!-- /wp:paragraph -->','Test Post-1','','publish','open','open','','test-post-1','','','2024-05-08 13:40:41','2024-05-08 13:40:41','',0,'http://success.local/?p=6',0,'post','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2024-05-08 11:26:31','2024-05-08 11:26:31','{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }','Custom Styles','','publish','closed','closed','','wp-global-styles-twentytwentyfour','','','2024-05-08 11:26:31','2024-05-08 11:26:31','',0,'http://success.local/wp-global-styles-twentytwentyfour/',0,'wp_global_styles','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2024-05-08 11:27:04','2024-05-08 11:27:04','<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi non quis exercitationem culpa nesciunt nihil aut nostrum explicabo reprehenderit optio amet ab temporibus asperiores quasi cupiditate. Voluptatum ducimus voluptates voluptas?</code></pre>\n<!-- /wp:code -->','Test Post-1','','inherit','closed','closed','','6-revision-v1','','','2024-05-08 11:27:04','2024-05-08 11:27:04','',6,'http://success.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2024-05-08 11:27:24','2024-05-08 11:27:24','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa adipisci culpa quos illo in corporis, excepturi eaque eligendi exercitationem ratione aut dolorum nulla, laboriosam sequi, ullam rerum nisi enim sed inventore. Vero quia blanditiis accusantium nemo soluta deserunt aut porro ex, fugiat aliquam fugit sit accusamus dolore quos explicabo maiores.</p>\n<!-- /wp:paragraph -->','Test Post-2','','publish','open','open','','test-post-2','','','2024-05-08 13:41:12','2024-05-08 13:41:12','',0,'http://success.local/?p=9',0,'post','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2024-05-08 11:27:24','2024-05-08 11:27:24','<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi non quis exercitationem culpa nesciunt nihil aut nostrum explicabo reprehenderit optio amet ab temporibus asperiores quasi cupiditate. Voluptatum ducimus voluptates voluptas?</code></pre>\n<!-- /wp:code -->','Test Post-2','','inherit','closed','closed','','9-revision-v1','','','2024-05-08 11:27:24','2024-05-08 11:27:24','',9,'http://success.local/?p=10',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2024-05-08 11:27:53','2024-05-08 11:27:53','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa adipisci culpa quos illo in corporis, excepturi eaque eligendi exercitationem ratione aut dolorum nulla, laboriosam sequi, ullam rerum nisi enim sed inventore. Vero quia blanditiis accusantium nemo soluta deserunt aut porro ex, fugiat aliquam fugit sit accusamus dolore quos explicabo maiores.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Test Page','','publish','closed','closed','','test-page','','','2024-05-08 13:41:54','2024-05-08 13:41:54','',0,'http://success.local/?page_id=11',0,'page','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2024-05-08 11:27:53','2024-05-08 11:27:53','<!-- wp:paragraph -->\n<p>hehe</p>\n<!-- /wp:paragraph -->','Test Page','','inherit','closed','closed','','11-revision-v1','','','2024-05-08 11:27:53','2024-05-08 11:27:53','',11,'http://success.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2024-05-08 13:40:41','2024-05-08 13:40:41','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa adipisci culpa quos illo in corporis, excepturi eaque eligendi exercitationem ratione aut dolorum nulla, laboriosam sequi, ullam rerum nisi enim sed inventore. Vero quia blanditiis accusantium nemo soluta deserunt aut porro ex, fugiat aliquam fugit sit accusamus dolore quos explicabo maiores.</p>\n<!-- /wp:paragraph -->','Test Post-1','','inherit','closed','closed','','6-revision-v1','','','2024-05-08 13:40:41','2024-05-08 13:40:41','',6,'http://success.local/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2024-05-08 13:40:55','2024-05-08 13:40:55','<!-- wp:code -->\n<pre class=\"wp-block-code\"><code>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa adipisci culpa quos illo in corporis, excepturi eaque eligendi exercitationem ratione aut dolorum nulla, laboriosam sequi, ullam rerum nisi enim sed inventore. Vero quia blanditiis accusantium nemo soluta deserunt aut porro ex, fugiat aliquam fugit sit accusamus dolore quos explicabo maiores.</code></pre>\n<!-- /wp:code -->','Test Post-2','','inherit','closed','closed','','9-revision-v1','','','2024-05-08 13:40:55','2024-05-08 13:40:55','',9,'http://success.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2024-05-08 13:41:12','2024-05-08 13:41:12','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa adipisci culpa quos illo in corporis, excepturi eaque eligendi exercitationem ratione aut dolorum nulla, laboriosam sequi, ullam rerum nisi enim sed inventore. Vero quia blanditiis accusantium nemo soluta deserunt aut porro ex, fugiat aliquam fugit sit accusamus dolore quos explicabo maiores.</p>\n<!-- /wp:paragraph -->','Test Post-2','','inherit','closed','closed','','9-revision-v1','','','2024-05-08 13:41:12','2024-05-08 13:41:12','',9,'http://success.local/?p=15',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2024-05-08 13:41:54','2024-05-08 13:41:54','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsa adipisci culpa quos illo in corporis, excepturi eaque eligendi exercitationem ratione aut dolorum nulla, laboriosam sequi, ullam rerum nisi enim sed inventore. Vero quia blanditiis accusantium nemo soluta deserunt aut porro ex, fugiat aliquam fugit sit accusamus dolore quos explicabo maiores.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Test Page','','inherit','closed','closed','','11-revision-v1','','','2024-05-08 13:41:54','2024-05-08 13:41:54','',11,'http://success.local/?p=16',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2024-05-12 07:23:58','2024-05-12 07:23:58','<!-- wp:paragraph -->\n<p>This page gives info about us</p>\n<!-- /wp:paragraph -->','About US','','publish','closed','closed','','about-us','','','2024-05-20 08:07:01','2024-05-20 08:07:01','',0,'http://success.local/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2024-05-12 07:23:58','2024-05-12 07:23:58','<!-- wp:paragraph -->\n<p>This page gives info about us</p>\n<!-- /wp:paragraph -->','About US','','inherit','closed','closed','','17-revision-v1','','','2024-05-12 07:23:58','2024-05-12 07:23:58','',17,'http://success.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2024-05-12 07:24:10','2024-05-12 07:24:10','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://success.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2024-05-12 07:24:10','2024-05-12 07:24:10','',3,'http://success.local/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2024-05-12 07:47:10','2024-05-12 07:47:10','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum recusandae cum quas dolores quia doloremque fugit quod impedit modi. Distinctio perferendis, expedita provident consequatur excepturi sunt non molestias a aliquam quas rerum accusantium consequuntur quod, itaque sit ad possimus eaque dolorum recusandae dicta, voluptatibus ipsam perspiciatis error? Quae, ipsam maxime?</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2024-05-12 07:47:10','2024-05-12 07:47:10','',17,'http://success.local/?page_id=20',0,'page','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2024-05-12 07:47:10','2024-05-12 07:47:10','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum recusandae cum quas dolores quia doloremque fugit quod impedit modi. Distinctio perferendis, expedita provident consequatur excepturi sunt non molestias a aliquam quas rerum accusantium consequuntur quod, itaque sit ad possimus eaque dolorum recusandae dicta, voluptatibus ipsam perspiciatis error? Quae, ipsam maxime?</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','20-revision-v1','','','2024-05-12 07:47:10','2024-05-12 07:47:10','',20,'http://success.local/?p=21',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2024-05-12 07:47:22','2024-05-12 07:47:22','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum recusandae cum quas dolores quia doloremque fugit quod impedit modi. Distinctio perferendis, expedita provident consequatur excepturi sunt non molestias a aliquam quas rerum accusantium consequuntur quod, itaque sit ad possimus eaque dolorum recusandae dicta, voluptatibus ipsam perspiciatis error? Quae, ipsam maxime?</p>\n<!-- /wp:paragraph -->','Our Goal','','publish','closed','closed','','our-goal','','','2024-05-12 07:47:22','2024-05-12 07:47:22','',17,'http://success.local/?page_id=22',0,'page','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2024-05-12 07:47:22','2024-05-12 07:47:22','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum recusandae cum quas dolores quia doloremque fugit quod impedit modi. Distinctio perferendis, expedita provident consequatur excepturi sunt non molestias a aliquam quas rerum accusantium consequuntur quod, itaque sit ad possimus eaque dolorum recusandae dicta, voluptatibus ipsam perspiciatis error? Quae, ipsam maxime?</p>\n<!-- /wp:paragraph -->','Our Goal','','inherit','closed','closed','','22-revision-v1','','','2024-05-12 07:47:22','2024-05-12 07:47:22','',22,'http://success.local/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2024-05-12 08:09:14','2024-05-12 08:09:14','','Cookies Policy','','publish','closed','closed','','cookies-policy','','','2024-05-12 08:09:14','2024-05-12 08:09:14','',3,'http://success.local/?page_id=24',0,'page','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2024-05-12 08:09:14','2024-05-12 08:09:14','','Cookies Policy','','inherit','closed','closed','','24-revision-v1','','','2024-05-12 08:09:14','2024-05-12 08:09:14','',24,'http://success.local/?p=25',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2024-05-12 09:32:11','0000-00-00 00:00:00','','Home','','draft','closed','closed','','','','','2024-05-12 09:32:11','0000-00-00 00:00:00','',0,'http://success.local/?p=26',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2024-05-12 09:32:11','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-05-12 09:32:11','0000-00-00 00:00:00','',0,'http://success.local/?p=27',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2024-05-12 09:32:11','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-05-12 09:32:11','0000-00-00 00:00:00','',3,'http://success.local/?p=28',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2024-05-12 09:33:10','2024-05-12 09:32:52',' ','','','publish','closed','closed','','29','','','2024-05-12 09:33:10','2024-05-12 09:33:10','',0,'http://success.local/?p=29',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2024-05-12 09:32:11','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-05-12 09:32:11','0000-00-00 00:00:00','',17,'http://success.local/?p=30',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2024-05-12 09:32:11','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-05-12 09:32:11','0000-00-00 00:00:00','',17,'http://success.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2024-05-12 09:32:11','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-05-12 09:32:11','0000-00-00 00:00:00','',0,'http://success.local/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2024-05-12 09:32:11','0000-00-00 00:00:00',' ','','','draft','closed','closed','','','','','2024-05-12 09:32:11','0000-00-00 00:00:00','',0,'http://success.local/?p=33',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2024-05-12 09:35:04','2024-05-12 09:34:29',' ','','','publish','closed','closed','','34','','','2024-05-12 09:35:04','2024-05-12 09:35:04','',0,'http://success.local/?p=34',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2024-05-12 09:41:45','2024-05-12 09:41:45',' ','','','publish','closed','closed','','38','','','2024-05-12 09:41:45','2024-05-12 09:41:45','',0,'http://success.local/?p=38',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2024-05-13 07:33:39','2024-05-13 07:33:39','','Home','','publish','closed','closed','','home','','','2024-05-13 07:33:39','2024-05-13 07:33:39','',0,'http://success.local/?page_id=39',0,'page','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2024-05-13 07:33:39','2024-05-13 07:33:39','','Home','','inherit','closed','closed','','39-revision-v1','','','2024-05-13 07:33:39','2024-05-13 07:33:39','',39,'http://success.local/?p=40',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2024-05-13 07:34:06','2024-05-13 07:34:06','','Blog','','publish','closed','closed','','blog','','','2024-05-13 07:34:06','2024-05-13 07:34:06','',0,'http://success.local/?page_id=41',0,'page','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2024-05-13 07:34:06','2024-05-13 07:34:06','','Blog','','inherit','closed','closed','','41-revision-v1','','','2024-05-13 07:34:06','2024-05-13 07:34:06','',41,'http://success.local/?p=42',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2024-05-13 10:13:52','2024-05-13 10:13:52','<!-- wp:paragraph -->\n<p>yayyyy</p>\n<!-- /wp:paragraph -->','We won an Award','lorem lorem lorem, everyewhere','publish','open','open','','we-won-an-award','','','2024-05-15 14:15:06','2024-05-15 14:15:06','',0,'http://success.local/?p=43',0,'post','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2024-05-13 10:13:52','2024-05-13 10:13:52','<!-- wp:paragraph -->\n<p>yayyyy</p>\n<!-- /wp:paragraph -->','We won an Award','','inherit','closed','closed','','43-revision-v1','','','2024-05-13 10:13:52','2024-05-13 10:13:52','',43,'http://success.local/?p=44',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2024-05-15 12:57:54','2024-05-15 12:57:54','Happy Birthday','Khushbu Birthday','','publish','closed','closed','','khushbu-birthday','','','2024-05-16 09:58:29','2024-05-16 09:58:29','',0,'http://success.local/?post_type=event&#038;p=48',0,'event','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2024-05-15 13:32:57','2024-05-15 13:32:57','<div>\r\n<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum recusandae cum quas dolores quia doloremque fugit quod impedit modi. Distinctio perferendis, expedita provident consequatur excepturi sunt non molestias a aliquam quas rerum accusantium consequuntur quod, itaque sit ad possimus eaque dolorum recusandae dicta, voluptatibus ipsam perspiciatis error? Quae, ipsam maxime?</div>\r\n</div>','Sahaj Birthday','','publish','closed','closed','','sahaj-birthday','','','2024-05-15 16:34:04','2024-05-15 16:34:04','',0,'http://success.local/?post_type=event&#038;p=53',0,'event','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2024-05-15 14:15:06','2024-05-15 14:15:06','<!-- wp:paragraph -->\n<p>yayyyy</p>\n<!-- /wp:paragraph -->','We won an Award','lorem lorem lorem, everyewhere','inherit','closed','closed','','43-revision-v1','','','2024-05-15 14:15:06','2024-05-15 14:15:06','',43,'http://success.local/?p=54',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2024-05-15 16:27:55','2024-05-15 16:27:55','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Event Date','event-date','publish','closed','closed','','group_6644d53bb068b','','','2024-05-15 16:32:00','2024-05-15 16:32:00','',0,'http://success.local/?post_type=acf-field-group&#038;p=65',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2024-05-15 16:27:55','2024-05-15 16:27:55','a:9:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_6644d53ccc412','','','2024-05-15 16:27:55','2024-05-15 16:27:55','',65,'http://success.local/?post_type=acf-field&p=66',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2024-05-16 10:32:31','2024-05-16 10:32:31','','RtCamp','','publish','closed','closed','','rtcamp','','','2024-05-16 10:32:31','2024-05-16 10:32:31','',0,'http://success.local/?post_type=event&#038;p=68',0,'event','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2024-05-16 10:33:28','2024-05-16 10:33:28','','Past Events','','publish','closed','closed','','past-events','','','2024-05-16 10:33:28','2024-05-16 10:33:28','',0,'http://success.local/?page_id=69',0,'page','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2024-05-16 10:33:28','2024-05-16 10:33:28','','Past Events','','inherit','closed','closed','','69-revision-v1','','','2024-05-16 10:33:28','2024-05-16 10:33:28','',69,'http://success.local/?p=70',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2024-05-16 11:00:30','2024-05-16 11:00:30','','Dad\'s Birthday','','publish','closed','closed','','dads-birthday','','','2024-05-16 11:00:30','2024-05-16 11:00:30','',0,'http://success.local/?post_type=event&#038;p=71',0,'event','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2024-05-16 13:35:13','2024-05-16 13:35:13','','Programs','','publish','closed','closed','','programs','','','2024-05-16 13:35:13','2024-05-16 13:35:13','',0,'http://success.local/?page_id=72',0,'page','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2024-05-16 13:35:13','2024-05-16 13:35:13','','Programs','','inherit','closed','closed','','72-revision-v1','','','2024-05-16 13:35:13','2024-05-16 13:35:13','',72,'http://success.local/?p=73',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2024-05-16 13:35:37','2024-05-16 13:35:37','','Maths','','publish','closed','closed','','maths','','','2024-05-30 06:32:30','2024-05-30 06:32:30','',0,'http://success.local/?post_type=program&#038;p=74',0,'program','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2024-05-16 13:35:45','2024-05-16 13:35:45','','Biology','','publish','closed','closed','','biology','','','2024-05-30 06:29:31','2024-05-30 06:29:31','',0,'http://success.local/?post_type=program&#038;p=75',0,'program','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2024-05-16 13:35:53','2024-05-16 13:35:53','','English','','publish','closed','closed','','english','','','2024-05-30 06:32:40','2024-05-30 06:32:40','',0,'http://success.local/?post_type=program&#038;p=76',0,'program','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2024-05-17 10:15:29','2024-05-17 10:15:29','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Related Programs','related-programs','publish','closed','closed','','group_66472daa74ac2','','','2024-05-20 04:31:28','2024-05-20 04:31:28','',0,'http://success.local/?post_type=acf-field-group&#038;p=77',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2024-05-17 10:15:29','2024-05-17 10:15:29','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:11:\"post_status\";s:0:\"\";s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:13:\"return_format\";s:6:\"object\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:8:\"elements\";s:0:\"\";s:13:\"bidirectional\";i:0;s:20:\"bidirectional_target\";a:0:{}}','Related Programs','related_programs','publish','closed','closed','','field_66472dabb1dfa','','','2024-05-17 10:15:29','2024-05-17 10:15:29','',77,'http://success.local/?post_type=acf-field&p=78',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2024-05-17 10:16:12','2024-05-17 10:16:12','<!-- wp:paragraph -->\n<p>something something</p>\n<!-- /wp:paragraph -->','The Science Event','','publish','closed','closed','','the-science-event','','','2024-05-17 10:20:05','2024-05-17 10:20:05','',0,'http://success.local/?post_type=event&#038;p=79',0,'event','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2024-05-20 04:28:53','2024-05-20 04:28:53','<!-- wp:paragraph -->\n<p>Cool Math professor. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum recusandae cum quas dolores quia doloremque fugit quod impedit modi. Distinctio perferendis, expedita provident consequatur excepturi sunt non molestias a aliquam quas rerum accusantium consequuntur quod, itaque sit ad possimus eaque dolorum recusandae dicta, voluptatibus ipsam perspiciatis error? Quae, ipsam maxime?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Professor 1','','publish','closed','closed','','professor-1','','','2024-05-28 13:02:05','2024-05-28 13:02:05','',0,'http://success.local/?post_type=professor&#038;p=81',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2024-05-20 04:29:03','2024-05-20 04:29:03','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum recusandae cum quas dolores quia doloremque fugit quod impedit modi. Distinctio perferendis, expedita provident consequatur excepturi sunt non molestias a aliquam quas rerum accusantium consequuntur quod, itaque sit ad possimus eaque dolorum recusandae dicta, voluptatibus ipsam perspiciatis error? Quae, ipsam maxime?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Great Biology</p>\n<!-- /wp:paragraph -->','Professor 2','','publish','closed','closed','','professor-2','','','2024-05-28 12:46:11','2024-05-28 12:46:11','',0,'http://success.local/?post_type=professor&#038;p=82',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2024-05-20 06:15:59','2024-05-20 06:15:59','','diagram','','inherit','open','closed','','diagram','','','2024-05-20 06:15:59','2024-05-20 06:15:59','',81,'http://success.local/wp-content/uploads/2024/05/diagram.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (84,1,'2024-05-20 07:32:10','2024-05-20 07:32:10','a:8:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Page Banner + Subtitle','page-banner-subtitle','publish','closed','closed','','group_664afc25ab343','','','2024-05-20 07:40:53','2024-05-20 07:40:53','',0,'http://success.local/?post_type=acf-field-group&#038;p=84',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2024-05-20 07:32:10','2024-05-20 07:32:10','a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}','Page Banner Image','page_banner_image','publish','closed','closed','','field_664afc26156e0','','','2024-05-20 07:32:10','2024-05-20 07:32:10','',84,'http://success.local/?post_type=acf-field&p=85',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2024-05-20 07:32:10','2024-05-20 07:32:10','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Page Subtitle','page_subtitle','publish','closed','closed','','field_664afc4d156e1','','','2024-05-20 07:40:53','2024-05-20 07:40:53','',84,'http://success.local/?post_type=acf-field&#038;p=86',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2024-05-20 07:44:26','2024-05-20 07:44:26','','skull_and_bones_2018_video_game-wallpaper-5120x2160','','inherit','open','closed','','skull_and_bones_2018_video_game-wallpaper-5120x2160','','','2024-05-20 07:44:26','2024-05-20 07:44:26','',81,'http://success.local/wp-content/uploads/2024/05/skull_and_bones_2018_video_game-wallpaper-5120x2160-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (88,1,'2024-05-20 08:06:46','2024-05-20 08:06:46','','Untitled design','','inherit','open','closed','','untitled-design','','','2024-05-20 08:06:46','2024-05-20 08:06:46','',17,'http://success.local/wp-content/uploads/2024/05/Untitled-design.gif',0,'attachment','image/gif',0);
INSERT INTO `wp_posts` VALUES (89,1,'2024-05-20 08:07:00','2024-05-20 08:07:00','<!-- wp:paragraph -->\n<p>This page gives info about us</p>\n<!-- /wp:paragraph -->','About US','','inherit','closed','closed','','17-revision-v1','','','2024-05-20 08:07:00','2024-05-20 08:07:00','',17,'http://success.local/?p=89',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2024-05-20 09:33:55','2024-05-20 09:33:55','','Untitled design','','inherit','open','closed','','untitled-design-2','','','2024-05-20 09:33:55','2024-05-20 09:33:55','',75,'http://success.local/wp-content/uploads/2024/05/Untitled-design.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (91,1,'2024-05-20 09:41:25','2024-05-20 09:41:25','','forza_horizon_lamborghini-wallpaper-3440x1440','','inherit','open','closed','','forza_horizon_lamborghini-wallpaper-3440x1440','','','2024-05-20 09:41:25','2024-05-20 09:41:25','',75,'http://success.local/wp-content/uploads/2024/05/forza_horizon_lamborghini-wallpaper-3440x1440-1.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (92,1,'2024-05-28 12:51:39','2024-05-28 12:51:39','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum recusandae cum quas dolores quia doloremque fugit quod impedit modi. Distinctio perferendis, expedita provident consequatur excepturi sunt non molestias a aliquam quas rerum accusantium consequuntur quod, itaque sit ad possimus eaque dolorum recusandae dicta, voluptatibus ipsam perspiciatis error? Quae, ipsam maxime?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Math is complex but cool</p>\n<!-- /wp:paragraph -->','Math is Cool','','publish','open','open','','math-is-cool','','','2024-05-28 12:51:39','2024-05-28 12:51:39','',0,'http://success.local/?p=92',0,'post','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2024-05-28 12:51:39','2024-05-28 12:51:39','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolorum recusandae cum quas dolores quia doloremque fugit quod impedit modi. Distinctio perferendis, expedita provident consequatur excepturi sunt non molestias a aliquam quas rerum accusantium consequuntur quod, itaque sit ad possimus eaque dolorum recusandae dicta, voluptatibus ipsam perspiciatis error? Quae, ipsam maxime?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Math is complex but cool</p>\n<!-- /wp:paragraph -->','Math is Cool','','inherit','closed','closed','','92-revision-v1','','','2024-05-28 12:51:39','2024-05-28 12:51:39','',92,'http://success.local/?p=93',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2024-05-30 06:23:35','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-05-30 06:23:35','0000-00-00 00:00:00','',0,'http://success.local/?p=94',0,'post','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2024-05-30 06:28:26','2024-05-30 06:28:26','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Main Body Content','main-body-content','publish','closed','closed','','group_66581c019048e','','','2024-05-30 06:29:12','2024-05-30 06:29:12','',0,'http://success.local/?post_type=acf-field-group&#038;p=95',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2024-05-30 06:28:26','2024-05-30 06:28:26','a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Main Body Content','main_body_content','publish','closed','closed','','field_66581c02df1d2','','','2024-05-30 06:28:26','2024-05-30 06:28:26','',95,'http://success.local/?post_type=acf-field&p=96',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2024-05-30 10:13:14','2024-05-30 10:13:14','','Search','','publish','closed','closed','','search','','','2024-05-30 10:13:14','2024-05-30 10:13:14','',0,'http://success.local/?page_id=97',0,'page','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2024-05-30 10:13:14','2024-05-30 10:13:14','','Search','','inherit','closed','closed','','97-revision-v1','','','2024-05-30 10:13:14','2024-05-30 10:13:14','',97,'http://success.local/?p=98',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2024-05-30 10:55:23','2024-05-30 10:55:23','','Math Mater Event','','publish','closed','closed','','math-mater-event','','','2024-05-30 10:55:23','2024-05-30 10:55:23','',0,'http://success.local/?post_type=event&#038;p=99',0,'event','',0);
INSERT INTO `wp_posts` VALUES (100,1,'2024-05-30 10:57:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-05-30 10:57:15','0000-00-00 00:00:00','',0,'http://success.local/?page_id=100',0,'page','',0);
INSERT INTO `wp_posts` VALUES (101,2,'2024-05-31 06:54:24','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2024-05-31 06:54:24','0000-00-00 00:00:00','',0,'http://success.local/?p=101',0,'post','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2024-05-31 10:20:17','2024-05-31 10:20:17','','My Notes','','publish','closed','closed','','my-notes','','','2024-05-31 10:20:17','2024-05-31 10:20:17','',0,'http://success.local/?page_id=102',0,'page','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2024-05-31 10:20:17','2024-05-31 10:20:17','','My Notes','','inherit','closed','closed','','102-revision-v1','','','2024-05-31 10:20:17','2024-05-31 10:20:17','',102,'http://success.local/?p=103',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2024-05-31 10:33:21','2024-05-31 10:33:21','<!-- wp:paragraph -->\n<p>Learned a lot</p>\n<!-- /wp:paragraph -->','Biology Lecture #1','','private','closed','closed','','biology-lecture-1','','','2024-06-05 06:25:25','2024-06-05 06:25:25','',0,'http://success.local/?post_type=note&#038;p=104',0,'note','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2024-05-31 10:33:58','2024-05-31 10:33:58','<!-- wp:paragraph -->\n<p>Learned cool math tricks for logical purpose </p>\n<!-- /wp:paragraph -->','Math Lecture #1','','private','closed','closed','','math-lecture-1','','','2024-06-05 06:25:25','2024-06-05 06:25:25','',0,'http://success.local/?post_type=note&#038;p=105',0,'note','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2024-06-01 10:13:05','2024-06-01 10:13:05','<!-- wp:paragraph -->\n<p>English is fun</p>\n<!-- /wp:paragraph -->','English Lecture #2','','private','closed','closed','','english','','','2024-06-05 06:25:25','2024-06-05 06:25:25','',0,'http://success.local/?post_type=note&#038;p=107',0,'note','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2024-06-05 06:24:10','2024-06-05 06:24:10','hello 145','test 456','','private','closed','closed','','test-456','','','2024-06-05 06:25:25','2024-06-05 06:25:25','',0,'http://success.local/?post_type=note&#038;p=122',0,'note','',0);
INSERT INTO `wp_posts` VALUES (123,3,'2024-06-05 06:30:59','2024-06-05 06:30:59','huhui','hehe123','','trash','closed','closed','','hehe123__trashed','','','2024-06-05 06:43:58','2024-06-05 06:43:58','',0,'http://success.local/note/hehe123/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (124,3,'2024-06-05 06:43:49','2024-06-05 06:43:49','testing 1212','Edited Private test','','private','closed','closed','','private-test','','','2024-06-05 06:52:46','2024-06-05 06:52:46','',0,'http://success.local/note/private-test/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (125,3,'2024-06-05 06:54:31','2024-06-05 06:54:31',' alert(\'hello\')  ','mis','','trash','closed','closed','','mis__trashed','','','2024-06-05 06:54:55','2024-06-05 06:54:55','',0,'http://success.local/note/mis/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (126,3,'2024-06-05 06:54:48','2024-06-05 06:54:48',' Hello','hello','','trash','closed','closed','','hello__trashed','','','2024-06-05 06:54:54','2024-06-05 06:54:54','',0,'http://success.local/note/hello/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (127,3,'2024-06-05 07:07:41','2024-06-05 07:07:41','1 \n\n\n alert(\'he;llo\')','Hello','','trash','closed','closed','','hello__trashed-2','','','2024-06-05 10:28:48','2024-06-05 10:28:48','',0,'http://success.local/note/hello/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (128,3,'2024-06-05 10:19:18','2024-06-05 10:19:18','11','11','','trash','closed','closed','','11__trashed','','','2024-06-05 10:28:51','2024-06-05 10:28:51','',0,'http://success.local/note/11/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (129,3,'2024-06-05 10:19:22','2024-06-05 10:19:22','22','22','','private','closed','closed','','22','','','2024-06-05 10:19:22','2024-06-05 10:19:22','',0,'http://success.local/note/22/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (130,3,'2024-06-05 10:19:24','2024-06-05 10:19:24','33','335','','private','closed','closed','','33','','','2024-06-05 10:47:45','2024-06-05 10:47:45','',0,'http://success.local/note/33/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (131,3,'2024-06-05 10:19:29','2024-06-05 10:19:29','44','44','','trash','closed','closed','','44__trashed','','','2024-06-05 10:28:22','2024-06-05 10:28:22','',0,'http://success.local/note/44/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (132,3,'2024-06-05 10:19:33','2024-06-05 10:19:33','55','55','','trash','closed','closed','','55__trashed','','','2024-06-05 10:19:57','2024-06-05 10:19:57','',0,'http://success.local/note/55/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (133,3,'2024-06-05 10:19:41','2024-06-05 10:19:41','66','66','','trash','closed','closed','','66__trashed','','','2024-06-05 10:19:56','2024-06-05 10:19:56','',0,'http://success.local/note/66/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (134,3,'2024-06-05 10:19:49','2024-06-05 10:19:49','77','77','','trash','closed','closed','','77__trashed','','','2024-06-05 10:19:55','2024-06-05 10:19:55','',0,'http://success.local/note/77/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (135,3,'2024-06-05 10:28:54','2024-06-05 10:28:54','55','55','','private','closed','closed','','55','','','2024-06-05 10:49:03','2024-06-05 10:49:03','',0,'http://success.local/note/55/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (136,3,'2024-06-05 10:29:01','2024-06-05 10:29:01','66','66','','trash','closed','closed','','66__trashed-2','','','2024-06-05 10:29:08','2024-06-05 10:29:08','',0,'http://success.local/note/66/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (137,3,'2024-06-05 10:29:11','2024-06-05 10:29:11','77','Edited','','trash','closed','closed','','77__trashed-2','','','2024-06-05 10:40:57','2024-06-05 10:40:57','',0,'http://success.local/note/77/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (138,3,'2024-06-05 10:41:04','2024-06-05 10:41:04','fgh','Edited','','trash','closed','closed','','edited__trashed','','','2024-06-05 10:51:13','2024-06-05 10:51:13','',0,'http://success.local/note/edited/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (139,3,'2024-06-05 10:51:18','2024-06-05 10:51:18','fight','gfhgfh','','private','closed','closed','','gfhgfh','','','2024-06-05 10:51:18','2024-06-05 10:51:18','',0,'http://success.local/note/gfhgfh/',0,'note','',0);
INSERT INTO `wp_posts` VALUES (140,1,'2024-06-05 11:16:40','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-06-05 11:16:40','0000-00-00 00:00:00','',0,'http://success.local/?post_type=like&p=140',0,'like','',0);
INSERT INTO `wp_posts` VALUES (141,1,'2024-06-05 11:17:48','2024-06-05 11:17:48','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"like\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Liked Professor ID','liked-professor-id','publish','closed','closed','','group_6660492f2b9d5','','','2024-06-05 11:17:48','2024-06-05 11:17:48','',0,'http://success.local/?post_type=acf-field-group&#038;p=141',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (142,1,'2024-06-05 11:17:48','2024-06-05 11:17:48','a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Liked Professor ID','liked_professor_id','publish','closed','closed','','field_6660492fdfd10','','','2024-06-05 11:17:48','2024-06-05 11:17:48','',141,'http://success.local/?post_type=acf-field&p=142',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (143,1,'2024-06-05 11:17:55','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-06-05 11:17:55','0000-00-00 00:00:00','',0,'http://success.local/?post_type=like&p=143',0,'like','',0);
INSERT INTO `wp_posts` VALUES (146,1,'2024-06-06 06:37:22','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2024-06-06 06:37:22','0000-00-00 00:00:00','',0,'http://success.local/?post_type=like&p=146',0,'like','',0);
INSERT INTO `wp_posts` VALUES (156,1,'2024-06-06 10:37:07','2024-06-06 10:37:07','','Our PHP created Like Post Title','','publish','closed','closed','','our-php-created-like-post-title','','','2024-06-06 10:37:07','2024-06-06 10:37:07','',0,'http://success.local/like/our-php-created-like-post-title/',0,'like','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (6,1,0);
INSERT INTO `wp_term_relationships` VALUES (7,2,0);
INSERT INTO `wp_term_relationships` VALUES (9,1,0);
INSERT INTO `wp_term_relationships` VALUES (29,3,0);
INSERT INTO `wp_term_relationships` VALUES (34,4,0);
INSERT INTO `wp_term_relationships` VALUES (38,5,0);
INSERT INTO `wp_term_relationships` VALUES (43,6,0);
INSERT INTO `wp_term_relationships` VALUES (92,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'wp_theme','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'twentytwentyfour','twentytwentyfour',0);
INSERT INTO `wp_terms` VALUES (3,'Header','header',0);
INSERT INTO `wp_terms` VALUES (4,'Footer Menu Two','footer-menu-two',0);
INSERT INTO `wp_terms` VALUES (5,'Footer Menu One','footer-menu-one',0);
INSERT INTO `wp_terms` VALUES (6,'Awards','awards',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','root');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:2:{s:13:\"administrator\";b:1;s:13:\"event_manager\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"f69b9d26cf6003d875c2b2cbcb7de00e52fcfa920128c0523f7a4d937bf0ad06\";a:4:{s:10:\"expiration\";i:1717739673;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15\";s:5:\"login\";i:1717566873;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','94');
INSERT INTO `wp_usermeta` VALUES (18,1,'wp_persisted_preferences','a:3:{s:14:\"core/edit-post\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-06-05T06:24:22.873Z\";s:4:\"core\";a:1:{s:10:\"openPanels\";a:5:{i:0;s:15:\"page-attributes\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:12:\"post-excerpt\";i:3;s:14:\"featured-image\";i:4;s:11:\"post-status\";}}}');
INSERT INTO `wp_usermeta` VALUES (19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'closedpostboxes_event','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (22,1,'metaboxhidden_event','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (23,1,'enable_custom_fields','1');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_professor','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_professor','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (27,1,'wp_user-settings-time','1716185759');
INSERT INTO `wp_usermeta` VALUES (28,2,'nickname','LEO');
INSERT INTO `wp_usermeta` VALUES (29,2,'first_name','');
INSERT INTO `wp_usermeta` VALUES (30,2,'last_name','');
INSERT INTO `wp_usermeta` VALUES (31,2,'description','');
INSERT INTO `wp_usermeta` VALUES (32,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (33,2,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (34,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (35,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (36,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (37,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (38,2,'locale','');
INSERT INTO `wp_usermeta` VALUES (39,2,'wp_capabilities','a:1:{s:13:\"event_manager\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (40,2,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (41,2,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (42,2,'session_tokens','a:1:{s:64:\"46bdb493242bdd2392578088d5dd509eb2fdf6082dc2f29ccb69f33ad6ee4246\";a:4:{s:10:\"expiration\";i:1717311264;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15\";s:5:\"login\";i:1717138464;}}');
INSERT INTO `wp_usermeta` VALUES (43,2,'wp_dashboard_quick_press_last_post_id','101');
INSERT INTO `wp_usermeta` VALUES (44,3,'nickname','Brownie');
INSERT INTO `wp_usermeta` VALUES (45,3,'first_name','');
INSERT INTO `wp_usermeta` VALUES (46,3,'last_name','');
INSERT INTO `wp_usermeta` VALUES (47,3,'description','');
INSERT INTO `wp_usermeta` VALUES (48,3,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (49,3,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (50,3,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (51,3,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (52,3,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (53,3,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (54,3,'locale','');
INSERT INTO `wp_usermeta` VALUES (55,3,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (56,3,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (57,3,'default_password_nag','');
INSERT INTO `wp_usermeta` VALUES (62,3,'session_tokens','a:2:{s:64:\"2fafd3e32f39a241b1e23793d4eca70e8fc14028acbe815f4d84974538faecb9\";a:4:{s:10:\"expiration\";i:1717740885;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15\";s:5:\"login\";i:1717568085;}s:64:\"dc9de6395adb67acba994caf3625127d6ebb1a0f281d00a232e1f58d4a3590ba\";a:4:{s:10:\"expiration\";i:1717825916;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/17.5 Safari/605.1.15\";s:5:\"login\";i:1717653116;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'root','$P$BP6JIAlbDvPtLvvKPD1EwzuKGN.Afo0','root','dev-email@wpengine.local','http://success.local','2024-05-07 06:27:45','',0,'root');
INSERT INTO `wp_users` VALUES (2,'LEO','$P$BjGtcUXXAni/AT.Rb2shD/sMUonb2c/','leo','manavwork01@gmail.com','','2024-05-31 06:53:50','1717138430:$P$B0RjAlCGcaJ6vecyL.U/70eQF0gl2s0',0,'LEO');
INSERT INTO `wp_users` VALUES (3,'Brownie','$P$BR7E9K75ODyGl75QBP2ru01sFk.aj6/','brownie','manavrajani226@gmail.com','','2024-05-31 07:08:54','',0,'Brownie');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-06 16:28:21
