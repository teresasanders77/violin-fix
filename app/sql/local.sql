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
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
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
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2021-08-19 18:52:52','2021-08-19 18:52:52','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
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
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
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
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://violin-fix.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://violin-fix.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','violin-fix','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
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
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:53:\"all-in-one-video-gallery/all-in-one-video-gallery.php\";i:2;s:41:\"wordpress-importer/wordpress-importer.php\";i:3;s:29:\"wp-db-backup/wp-db-backup.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','','no');
INSERT INTO `wp_options` VALUES (40,'template','violin-fix','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','violin-fix','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','49752','yes');
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
INSERT INTO `wp_options` VALUES (81,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','7','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1644951171','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_major','enabled','yes');
INSERT INTO `wp_options` VALUES (98,'wp_force_deactivated_plugins','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (99,'initial_db_version','49752','yes');
INSERT INTO `wp_options` VALUES (100,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:75:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:16:\"edit_aiovg_video\";b:1;s:16:\"read_aiovg_video\";b:1;s:18:\"delete_aiovg_video\";b:1;s:17:\"edit_aiovg_videos\";b:1;s:24:\"edit_others_aiovg_videos\";b:1;s:20:\"publish_aiovg_videos\";b:1;s:25:\"read_private_aiovg_videos\";b:1;s:19:\"delete_aiovg_videos\";b:1;s:27:\"delete_private_aiovg_videos\";b:1;s:29:\"delete_published_aiovg_videos\";b:1;s:26:\"delete_others_aiovg_videos\";b:1;s:25:\"edit_private_aiovg_videos\";b:1;s:27:\"edit_published_aiovg_videos\";b:1;s:20:\"manage_aiovg_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:44:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:17:\"edit_aiovg_videos\";b:1;s:24:\"edit_others_aiovg_videos\";b:1;s:20:\"publish_aiovg_videos\";b:1;s:25:\"read_private_aiovg_videos\";b:1;s:19:\"delete_aiovg_videos\";b:1;s:27:\"delete_private_aiovg_videos\";b:1;s:29:\"delete_published_aiovg_videos\";b:1;s:26:\"delete_others_aiovg_videos\";b:1;s:25:\"edit_private_aiovg_videos\";b:1;s:27:\"edit_published_aiovg_videos\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:15:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:17:\"edit_aiovg_videos\";b:1;s:20:\"publish_aiovg_videos\";b:1;s:19:\"delete_aiovg_videos\";b:1;s:29:\"delete_published_aiovg_videos\";b:1;s:27:\"edit_published_aiovg_videos\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:10:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:17:\"edit_aiovg_videos\";b:1;s:20:\"publish_aiovg_videos\";b:1;s:19:\"delete_aiovg_videos\";b:1;s:29:\"delete_published_aiovg_videos\";b:1;s:27:\"edit_published_aiovg_videos\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:7:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_aiovg_videos\";b:1;s:20:\"publish_aiovg_videos\";b:1;s:19:\"delete_aiovg_videos\";b:1;s:29:\"delete_published_aiovg_videos\";b:1;s:27:\"edit_published_aiovg_videos\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (101,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (102,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:6:{i:1631044373;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1631083973;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1631127173;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1631128170;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1631299973;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (112,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (113,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'nonce_key','8|/#]!uM$HU)}s|?In}zyQYUB7:Fr>+&}tn-djTo~%y;z`/t0JE2.T[]ZIu$mNLj','no');
INSERT INTO `wp_options` VALUES (115,'nonce_salt','.wfpx(!NHAv:YqcC6i1HU|a;vNNPG[rSLCWYx*QXxk|:I~Od%O;{QVU$uKQY6Va>','no');
INSERT INTO `wp_options` VALUES (116,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (118,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (120,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.8.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.8-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.8-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.8\";s:7:\"version\";s:3:\"5.8\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1631042424;s:15:\"version_checked\";s:3:\"5.8\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (121,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (122,'theme_mods_twentytwentyone','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1629400177;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','yes');
INSERT INTO `wp_options` VALUES (123,'https_detection_errors','a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}','yes');
INSERT INTO `wp_options` VALUES (128,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1631042425;s:7:\"checked\";a:1:{s:10:\"violin-fix\";s:4:\"1.0;\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (146,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (147,'current_theme','Violin Fix','yes');
INSERT INTO `wp_options` VALUES (148,'theme_mods_violin-fix','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (149,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (152,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (161,'recently_activated','a:1:{s:31:\"presto-player/presto-player.php\";i:1630455245;}','yes');
INSERT INTO `wp_options` VALUES (168,'acf_version','5.10.2','yes');
INSERT INTO `wp_options` VALUES (172,'h5vp_import','2.3.7','yes');
INSERT INTO `wp_options` VALUES (184,'_transient_health-check-site-status-result','{\"good\":13,\"recommended\":5,\"critical\":0}','yes');
INSERT INTO `wp_options` VALUES (191,'presto_player_pro_update_performance','1','no');
INSERT INTO `wp_options` VALUES (192,'presto_player_visits_database_version','1','yes');
INSERT INTO `wp_options` VALUES (193,'presto_player_presets_database_version','18','yes');
INSERT INTO `wp_options` VALUES (194,'presto_player_videos_database_version','2','yes');
INSERT INTO `wp_options` VALUES (195,'presto_player_email_collection_database_version','1','yes');
INSERT INTO `wp_options` VALUES (196,'presto_preset_seed_version','3','yes');
INSERT INTO `wp_options` VALUES (198,'presto_player_branding','a:3:{s:4:\"logo\";s:0:\"\";s:5:\"color\";s:7:\"#00b3ff\";s:10:\"logo_width\";d:150;}','yes');
INSERT INTO `wp_options` VALUES (199,'presto_player_performance','a:2:{s:14:\"module_enabled\";b:0;s:11:\"automations\";b:1;}','yes');
INSERT INTO `wp_options` VALUES (229,'_site_transient_timeout_browser_605f01b1409979f1b4f5151f8eefb28a','1631058501','no');
INSERT INTO `wp_options` VALUES (230,'_site_transient_browser_605f01b1409979f1b4f5151f8eefb28a','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"92.0.4515.159\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (231,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1631058501','no');
INSERT INTO `wp_options` VALUES (232,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (251,'rewrite_rules','a:134:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:15:\"aiovg_videos/?$\";s:32:\"index.php?post_type=aiovg_videos\";s:45:\"aiovg_videos/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=aiovg_videos&feed=$matches[1]\";s:40:\"aiovg_videos/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=aiovg_videos&feed=$matches[1]\";s:32:\"aiovg_videos/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=aiovg_videos&paged=$matches[1]\";s:43:\"video-category/([^/]+)/page/?([0-9]{1,})/?$\";s:65:\"index.php?page_id=28&aiovg_category=$matches[1]&paged=$matches[2]\";s:25:\"video-category/([^/]+)/?$\";s:47:\"index.php?page_id=28&aiovg_category=$matches[1]\";s:38:\"video-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:60:\"index.php?page_id=29&aiovg_tag=$matches[1]&paged=$matches[2]\";s:20:\"video-tag/([^/]+)/?$\";s:42:\"index.php?page_id=29&aiovg_tag=$matches[1]\";s:40:\"user-videos/([^/]+)/page/?([0-9]{1,})/?$\";s:61:\"index.php?page_id=31&aiovg_user=$matches[1]&paged=$matches[2]\";s:22:\"user-videos/([^/]+)/?$\";s:43:\"index.php?page_id=31&aiovg_user=$matches[1]\";s:26:\"player-embed/id/([^/]+)/?$\";s:58:\"index.php?page_id=32&aiovg_type=id&aiovg_video=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"aiovg_videos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"aiovg_videos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"aiovg_videos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"aiovg_videos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"aiovg_videos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"aiovg_videos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"aiovg_videos/([^/]+)/embed/?$\";s:45:\"index.php?aiovg_videos=$matches[1]&embed=true\";s:33:\"aiovg_videos/([^/]+)/trackback/?$\";s:39:\"index.php?aiovg_videos=$matches[1]&tb=1\";s:53:\"aiovg_videos/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?aiovg_videos=$matches[1]&feed=$matches[2]\";s:48:\"aiovg_videos/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?aiovg_videos=$matches[1]&feed=$matches[2]\";s:41:\"aiovg_videos/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?aiovg_videos=$matches[1]&paged=$matches[2]\";s:48:\"aiovg_videos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?aiovg_videos=$matches[1]&cpage=$matches[2]\";s:37:\"aiovg_videos/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?aiovg_videos=$matches[1]&page=$matches[2]\";s:29:\"aiovg_videos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"aiovg_videos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"aiovg_videos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"aiovg_videos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"aiovg_videos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"aiovg_videos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:57:\"aiovg_categories/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?aiovg_categories=$matches[1]&feed=$matches[2]\";s:52:\"aiovg_categories/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?aiovg_categories=$matches[1]&feed=$matches[2]\";s:33:\"aiovg_categories/([^/]+)/embed/?$\";s:49:\"index.php?aiovg_categories=$matches[1]&embed=true\";s:45:\"aiovg_categories/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?aiovg_categories=$matches[1]&paged=$matches[2]\";s:27:\"aiovg_categories/([^/]+)/?$\";s:38:\"index.php?aiovg_categories=$matches[1]\";s:51:\"aiovg_tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?aiovg_tags=$matches[1]&feed=$matches[2]\";s:46:\"aiovg_tags/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?aiovg_tags=$matches[1]&feed=$matches[2]\";s:27:\"aiovg_tags/([^/]+)/embed/?$\";s:43:\"index.php?aiovg_tags=$matches[1]&embed=true\";s:39:\"aiovg_tags/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?aiovg_tags=$matches[1]&paged=$matches[2]\";s:21:\"aiovg_tags/([^/]+)/?$\";s:32:\"index.php?aiovg_tags=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=7&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (256,'fs_active_plugins','O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:33:\"all-in-one-video-gallery/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.4.2\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1630682935;s:11:\"plugin_path\";s:53:\"all-in-one-video-gallery/all-in-one-video-gallery.php\";}}s:7:\"abspath\";s:55:\"/Users/teresaloafman/Local Sites/violin-fix/app/public/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:53:\"all-in-one-video-gallery/all-in-one-video-gallery.php\";s:8:\"sdk_path\";s:33:\"all-in-one-video-gallery/freemius\";s:7:\"version\";s:5:\"2.4.2\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1630682935;}}','yes');
INSERT INTO `wp_options` VALUES (257,'fs_debug_mode','','yes');
INSERT INTO `wp_options` VALUES (258,'fs_accounts','a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:3213;a:3:{s:4:\"slug\";s:24:\"all-in-one-video-gallery\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:53:\"all-in-one-video-gallery/all-in-one-video-gallery.php\";}}s:11:\"plugin_data\";a:1:{s:24:\"all-in-one-video-gallery\";a:17:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:53:\"all-in-one-video-gallery/all-in-one-video-gallery.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1630455418;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.4.2\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"2.4.8\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:15:\"localhost:10016\";s:9:\"server_ip\";s:9:\"127.0.0.1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1630455418;s:7:\"version\";s:5:\"2.4.8\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1630455429;s:7:\"version\";s:5:\"2.4.8\";}s:21:\"trial_promotion_shown\";i:1630682939;}}s:13:\"file_slug_map\";a:1:{s:53:\"all-in-one-video-gallery/all-in-one-video-gallery.php\";s:24:\"all-in-one-video-gallery\";}s:7:\"plugins\";a:1:{s:24:\"all-in-one-video-gallery\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:24:\"All-in-One Video Gallery\";s:4:\"slug\";s:24:\"all-in-one-video-gallery\";s:12:\"premium_slug\";s:32:\"all-in-one-video-gallery-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:53:\"all-in-one-video-gallery/all-in-one-video-gallery.php\";s:7:\"version\";s:5:\"2.4.8\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_e1bed9a9a8957abe8947bb2619ab7\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"3213\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"a7255f1957db02bf279bc919c7d3078c\";s:13:\"admin_notices\";a:1:{s:24:\"all-in-one-video-gallery\";a:1:{s:15:\"trial_promotion\";a:8:{s:7:\"message\";s:405:\"Hey! How do you like <b>All-in-One Video Gallery</b> so far? Test all our awesome premium features with a 7-day free trial. No credit card required!  <a style=\"margin-left: 10px; vertical-align: super;\" href=\"http://violin-fix.local/wp-admin/admin.php?billing_cycle=annual&trial=true&page=all-in-one-video-gallery-pricing\"><button class=\"button button-primary\">Start free trial &nbsp;&#10140;</button></a>\";s:5:\"title\";s:0:\"\";s:4:\"type\";s:9:\"promotion\";s:6:\"sticky\";b:1;s:2:\"id\";s:15:\"trial_promotion\";s:10:\"manager_id\";s:24:\"all-in-one-video-gallery\";s:6:\"plugin\";s:24:\"All-in-One Video Gallery\";s:10:\"wp_user_id\";N;}}}}','yes');
INSERT INTO `wp_options` VALUES (259,'fs_gdpr','a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}','yes');
INSERT INTO `wp_options` VALUES (260,'fs_api_cache','a:1:{s:30:\"get:/v1/plugins/3213/info.json\";O:8:\"stdClass\":3:{s:6:\"result\";O:8:\"stdClass\":14:{s:9:\"plugin_id\";s:4:\"3213\";s:3:\"url\";N;s:11:\"description\";N;s:17:\"short_description\";N;s:10:\"banner_url\";N;s:15:\"card_banner_url\";N;s:15:\"selling_point_0\";N;s:15:\"selling_point_1\";N;s:15:\"selling_point_2\";N;s:11:\"screenshots\";N;s:2:\"id\";s:3:\"622\";s:7:\"created\";s:19:\"2019-01-29 17:48:11\";s:7:\"updated\";N;s:4:\"icon\";s:93:\"//s3-us-west-2.amazonaws.com/freemius/plugins/3213/icons/54c34a4c939c0050d2439ff1f7710f36.png\";}s:7:\"created\";i:1630455420;s:9:\"timestamp\";i:1631060220;}}','no');
INSERT INTO `wp_options` VALUES (263,'aiovg_player_settings','a:10:{s:6:\"player\";s:6:\"iframe\";s:5:\"width\";s:0:\"\";s:5:\"ratio\";d:56.25;s:8:\"autoplay\";i:0;s:4:\"loop\";i:0;s:5:\"muted\";i:0;s:7:\"preload\";s:8:\"metadata\";s:8:\"controls\";a:9:{s:9:\"playpause\";s:9:\"playpause\";s:7:\"current\";s:7:\"current\";s:8:\"progress\";s:8:\"progress\";s:8:\"duration\";s:8:\"duration\";s:6:\"tracks\";s:6:\"tracks\";s:7:\"quality\";s:7:\"quality\";s:5:\"speed\";s:5:\"speed\";s:6:\"volume\";s:6:\"volume\";s:10:\"fullscreen\";s:10:\"fullscreen\";}s:14:\"quality_levels\";s:20:\"360p\n480p\n720p\n1080p\";s:19:\"use_native_controls\";a:1:{s:8:\"facebook\";s:8:\"facebook\";}}','yes');
INSERT INTO `wp_options` VALUES (264,'aiovg_videos_settings','a:8:{s:8:\"template\";s:7:\"classic\";s:7:\"columns\";i:3;s:5:\"limit\";i:10;s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:15:\"thumbnail_style\";s:8:\"standard\";s:7:\"display\";a:6:{s:5:\"count\";s:5:\"count\";s:5:\"title\";s:5:\"title\";s:8:\"category\";s:8:\"category\";s:3:\"tag\";s:3:\"tag\";s:5:\"views\";s:5:\"views\";s:8:\"duration\";s:8:\"duration\";}s:14:\"excerpt_length\";i:75;}','yes');
INSERT INTO `wp_options` VALUES (265,'aiovg_categories_settings','a:9:{s:8:\"template\";s:4:\"grid\";s:7:\"columns\";i:3;s:5:\"limit\";i:0;s:7:\"orderby\";s:4:\"name\";s:5:\"order\";s:3:\"asc\";s:12:\"hierarchical\";i:1;s:16:\"show_description\";i:0;s:10:\"show_count\";i:1;s:10:\"hide_empty\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (266,'aiovg_video_settings','a:2:{s:7:\"display\";a:4:{s:8:\"category\";s:8:\"category\";s:3:\"tag\";s:3:\"tag\";s:5:\"views\";s:5:\"views\";s:7:\"related\";s:7:\"related\";}s:12:\"has_comments\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (267,'aiovg_related_videos_settings','a:5:{s:7:\"columns\";i:3;s:5:\"limit\";i:10;s:7:\"orderby\";s:4:\"date\";s:5:\"order\";s:4:\"desc\";s:7:\"display\";a:1:{s:10:\"pagination\";s:10:\"pagination\";}}','yes');
INSERT INTO `wp_options` VALUES (268,'aiovg_image_settings','a:1:{s:5:\"ratio\";d:56.25;}','yes');
INSERT INTO `wp_options` VALUES (269,'aiovg_socialshare_settings','a:3:{s:8:\"services\";a:6:{s:8:\"facebook\";s:8:\"facebook\";s:7:\"twitter\";s:7:\"twitter\";s:8:\"linkedin\";s:8:\"linkedin\";s:9:\"pinterest\";s:9:\"pinterest\";s:6:\"tumblr\";s:6:\"tumblr\";s:8:\"whatsapp\";s:8:\"whatsapp\";}s:15:\"open_graph_tags\";i:1;s:16:\"twitter_username\";s:0:\"\";}','yes');
INSERT INTO `wp_options` VALUES (270,'aiovg_permalink_settings','a:1:{s:5:\"video\";s:12:\"aiovg_videos\";}','yes');
INSERT INTO `wp_options` VALUES (271,'aiovg_general_settings','a:2:{s:18:\"delete_plugin_data\";i:1;s:18:\"delete_media_files\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (272,'aiovg_page_settings','a:5:{s:8:\"category\";i:28;s:3:\"tag\";i:29;s:6:\"search\";i:30;s:11:\"user_videos\";i:31;s:6:\"player\";i:32;}','yes');
INSERT INTO `wp_options` VALUES (273,'aiovg_privacy_settings','a:3:{s:12:\"show_consent\";i:0;s:15:\"consent_message\";s:153:\"<strong>Please accept cookies to play this video</strong>. By accepting you will be accessing content from a service provided by an external third party.\";s:20:\"consent_button_label\";s:6:\"Accept\";}','yes');
INSERT INTO `wp_options` VALUES (274,'aiovg_version','2.4.8','yes');
INSERT INTO `wp_options` VALUES (275,'widget_aiovg-widget-categories','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (276,'widget_aiovg-widget-videos','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (277,'widget_aiovg-widget-video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (278,'widget_aiovg-widget-search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (279,'aiovg_issues','a:2:{s:5:\"found\";a:0:{}s:7:\"ignored\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (286,'_site_transient_timeout_browser_164ef18bd347e2080439bfc8a27818e8','1631287739','no');
INSERT INTO `wp_options` VALUES (287,'_site_transient_browser_164ef18bd347e2080439bfc8a27818e8','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"92.0.4515.159\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (303,'widget_recent-comments','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (304,'widget_recent-posts','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (309,'nav_menu_options','a:1:{s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (313,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1631042425;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.10.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.10.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:53:\"all-in-one-video-gallery/all-in-one-video-gallery.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:38:\"w.org/plugins/all-in-one-video-gallery\";s:4:\"slug\";s:24:\"all-in-one-video-gallery\";s:6:\"plugin\";s:53:\"all-in-one-video-gallery/all-in-one-video-gallery.php\";s:11:\"new_version\";s:5:\"2.4.8\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/all-in-one-video-gallery/\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/plugin/all-in-one-video-gallery.2.4.8.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:77:\"https://ps.w.org/all-in-one-video-gallery/assets/icon-128x128.png?rev=1807625\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/all-in-one-video-gallery/assets/banner-772x250.png?rev=1807625\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"4.7.0\";}s:29:\"wp-db-backup/wp-db-backup.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-db-backup\";s:4:\"slug\";s:12:\"wp-db-backup\";s:6:\"plugin\";s:29:\"wp-db-backup/wp-db-backup.php\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-db-backup/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/wp-db-backup.2.4.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:56:\"https://s.w.org/plugins/geopattern-icon/wp-db-backup.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"3.6.0\";}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:3:\"0.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.7\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.10.2\";s:53:\"all-in-one-video-gallery/all-in-one-video-gallery.php\";s:5:\"2.4.8\";s:29:\"wp-db-backup/wp-db-backup.php\";s:3:\"2.4\";s:41:\"wordpress-importer/wordpress-importer.php\";s:3:\"0.7\";}}','no');
INSERT INTO `wp_options` VALUES (324,'_site_transient_timeout_theme_roots','1631044225','no');
INSERT INTO `wp_options` VALUES (325,'_site_transient_theme_roots','a:1:{s:10:\"violin-fix\";s:7:\"/themes\";}','no');
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
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,3,'_wp_trash_meta_status','draft');
INSERT INTO `wp_postmeta` VALUES (4,3,'_wp_trash_meta_time','1629404803');
INSERT INTO `wp_postmeta` VALUES (5,3,'_wp_desired_post_slug','privacy-policy');
INSERT INTO `wp_postmeta` VALUES (6,2,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (7,2,'_wp_trash_meta_time','1629404803');
INSERT INTO `wp_postmeta` VALUES (8,2,'_wp_desired_post_slug','sample-page');
INSERT INTO `wp_postmeta` VALUES (9,7,'_edit_lock','1630695022:1');
INSERT INTO `wp_postmeta` VALUES (10,7,'_wp_page_template','page-templates/home.php');
INSERT INTO `wp_postmeta` VALUES (11,9,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (12,9,'_edit_lock','1629411965:1');
INSERT INTO `wp_postmeta` VALUES (13,9,'h5vp_video_link','https://youtu.be/V6M0spkNaBY');
INSERT INTO `wp_postmeta` VALUES (14,9,'h5vp_video_thumbnails','');
INSERT INTO `wp_postmeta` VALUES (15,9,'h5vp_repeat_playerio','once');
INSERT INTO `wp_postmeta` VALUES (16,9,'h5vp_muted_playerio','0');
INSERT INTO `wp_postmeta` VALUES (17,9,'h5vp_auto_play_playerio','');
INSERT INTO `wp_postmeta` VALUES (18,9,'h5vp_player_width_playerio','');
INSERT INTO `wp_postmeta` VALUES (19,9,'h5vp_auto_hide_control_playerio','1');
INSERT INTO `wp_postmeta` VALUES (20,9,'h5vp_controls','a:10:{i:0;s:10:\"play-large\";i:1;s:4:\"play\";i:2;s:8:\"progress\";i:3;s:12:\"current-time\";i:4;s:4:\"mute\";i:5;s:6:\"volume\";i:6;s:8:\"settings\";i:7;s:3:\"pip\";i:8;s:8:\"download\";i:9;s:10:\"fullscreen\";}');
INSERT INTO `wp_postmeta` VALUES (21,10,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (22,10,'_edit_lock','1629411058:1');
INSERT INTO `wp_postmeta` VALUES (23,7,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (24,7,'video_embed_link','[video id=\'9\']');
INSERT INTO `wp_postmeta` VALUES (25,7,'_video_embed_link','field_611ed520efdf3');
INSERT INTO `wp_postmeta` VALUES (26,12,'video_embed_link','<?php echo do_shortcode(\'[video id=\"9\"]\'); ?>');
INSERT INTO `wp_postmeta` VALUES (27,12,'_video_embed_link','field_611ed520efdf3');
INSERT INTO `wp_postmeta` VALUES (28,13,'video_embed_link','<?php echo do_shortcode(\'[video id=\"9\"]\'); ?>');
INSERT INTO `wp_postmeta` VALUES (29,13,'_video_embed_link','field_611ed520efdf3');
INSERT INTO `wp_postmeta` VALUES (30,14,'video_embed_link','[video id=\'9\']');
INSERT INTO `wp_postmeta` VALUES (31,14,'_video_embed_link','field_611ed520efdf3');
INSERT INTO `wp_postmeta` VALUES (32,15,'_wp_attached_file','2021/08/Mr-Snow.mp4');
INSERT INTO `wp_postmeta` VALUES (33,15,'_wp_attachment_metadata','a:10:{s:8:\"filesize\";i:92579495;s:9:\"mime_type\";s:9:\"video/mp4\";s:6:\"length\";i:313;s:16:\"length_formatted\";s:4:\"5:13\";s:5:\"width\";i:1280;s:6:\"height\";i:720;s:10:\"fileformat\";s:3:\"mp4\";s:10:\"dataformat\";s:9:\"quicktime\";s:5:\"audio\";a:7:{s:10:\"dataformat\";s:3:\"mp4\";s:5:\"codec\";s:19:\"ISO/IEC 14496-3 AAC\";s:11:\"sample_rate\";d:44100;s:8:\"channels\";i:2;s:15:\"bits_per_sample\";i:16;s:8:\"lossless\";b:0;s:11:\"channelmode\";s:6:\"stereo\";}s:17:\"created_timestamp\";i:-2082844800;}');
INSERT INTO `wp_postmeta` VALUES (34,16,'_edit_lock','1630454714:1');
INSERT INTO `wp_postmeta` VALUES (35,10,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (36,10,'_wp_trash_meta_time','1629764178');
INSERT INTO `wp_postmeta` VALUES (37,10,'_wp_desired_post_slug','group_611ed515a30c9');
INSERT INTO `wp_postmeta` VALUES (38,11,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (39,11,'_wp_trash_meta_time','1629764178');
INSERT INTO `wp_postmeta` VALUES (40,11,'_wp_desired_post_slug','field_611ed520efdf3');
INSERT INTO `wp_postmeta` VALUES (41,33,'_wp_attached_file','2021/09/About-me-smaller.jpg');
INSERT INTO `wp_postmeta` VALUES (42,33,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1500;s:6:\"height\";i:2250;s:4:\"file\";s:28:\"2021/09/About-me-smaller.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"About-me-smaller-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"About-me-smaller-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"About-me-smaller-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"About-me-smaller-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"About-me-smaller-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:30:\"About-me-smaller-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:21:\"Canon EOS 5D Mark III\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1489337904\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"135\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:8:\"0.003125\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (43,40,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (44,40,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (45,40,'_menu_item_object_id','40');
INSERT INTO `wp_postmeta` VALUES (46,40,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (47,40,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (48,40,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (49,40,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (50,40,'_menu_item_url','http://violin-fix.local');
INSERT INTO `wp_postmeta` VALUES (51,39,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (52,39,'_wp_trash_meta_time','1630683366');
INSERT INTO `wp_postmeta` VALUES (53,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (54,1,'_wp_trash_meta_time','1630683464');
INSERT INTO `wp_postmeta` VALUES (55,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (56,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (57,42,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (58,42,'_wp_trash_meta_time','1630683520');
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
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2021-08-19 18:52:52','2021-08-19 18:52:52','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2021-09-03 15:37:44','2021-09-03 15:37:44','',0,'http://violin-fix.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2021-08-19 18:52:52','2021-08-19 18:52:52','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://violin-fix.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2021-08-19 20:26:43','2021-08-19 20:26:43','',0,'http://violin-fix.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2021-08-19 18:52:52','2021-08-19 18:52:52','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://violin-fix.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2021-08-19 20:26:43','2021-08-19 20:26:43','',0,'http://violin-fix.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2021-08-19 20:26:43','2021-08-19 20:26:43','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://violin-fix.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2021-08-19 20:26:43','2021-08-19 20:26:43','',3,'http://violin-fix.local/?p=5',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2021-08-19 20:26:43','2021-08-19 20:26:43','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://violin-fix.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2021-08-19 20:26:43','2021-08-19 20:26:43','',2,'http://violin-fix.local/?p=6',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2021-08-19 20:26:57','2021-08-19 20:26:57','<!-- wp:shortcode -->\n[aiovg_video type=\"youtube\" youtube=\"https://www.youtube.com/watch?v=ZXDp6FM7Jbk\" poster=\"https://i.ytimg.com/vi/ZXDp6FM7Jbk/hqdefault.jpg\" width=\"1000\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Home','','publish','closed','closed','','home','','','2021-09-01 00:23:21','2021-09-01 00:23:21','',0,'http://violin-fix.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2021-08-19 20:26:57','2021-08-19 20:26:57','','Home','','inherit','closed','closed','','7-revision-v1','','','2021-08-19 20:26:57','2021-08-19 20:26:57','',7,'http://violin-fix.local/?p=8',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2021-08-19 22:02:00','2021-08-19 22:02:00','','Weekly Highlighted Video','','publish','closed','closed','','weekly-highlighted-video','','','2021-08-19 22:26:04','2021-08-19 22:26:04','',0,'http://violin-fix.local/?post_type=videoplayer&#038;p=9',0,'videoplayer','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2021-08-19 22:04:44','2021-08-19 22:04:44','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"page-templates/home.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Video Embed','video-embed','trash','closed','closed','','group_611ed515a30c9__trashed','','','2021-08-24 00:16:18','2021-08-24 00:16:18','',0,'http://violin-fix.local/?post_type=acf-field-group&#038;p=10',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2021-08-19 22:04:44','2021-08-19 22:04:44','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:24:\"Paste the Shortcode here\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:14:\"[video id=\'9\']\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Video Embed Link','video_embed_link','trash','closed','closed','','field_611ed520efdf3__trashed','','','2021-08-24 00:16:18','2021-08-24 00:16:18','',10,'http://violin-fix.local/?post_type=acf-field&#038;p=11',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2021-08-19 22:05:01','2021-08-19 22:05:01','','Home','','inherit','closed','closed','','7-revision-v1','','','2021-08-19 22:05:01','2021-08-19 22:05:01','',7,'http://violin-fix.local/?p=12',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2021-08-19 22:06:05','2021-08-19 22:06:05','','Home','','inherit','closed','closed','','7-revision-v1','','','2021-08-19 22:06:05','2021-08-19 22:06:05','',7,'http://violin-fix.local/?p=13',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2021-08-19 22:07:02','2021-08-19 22:07:02','','Home','','inherit','closed','closed','','7-revision-v1','','','2021-08-19 22:07:02','2021-08-19 22:07:02','',7,'http://violin-fix.local/?p=14',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2021-08-19 22:22:50','2021-08-19 22:22:50','','Mr Snow','','inherit','open','closed','','mr-snow','','','2021-08-19 22:22:50','2021-08-19 22:22:50','',9,'http://violin-fix.local/wp-content/uploads/2021/08/Mr-Snow.mp4',0,'attachment','video/mp4',0);
INSERT INTO `wp_posts` VALUES (16,1,'2021-08-24 00:12:45','2021-08-24 00:12:45','<!-- wp:presto-player/reusable-edit -->\n<div class=\"wp-block-presto-player-reusable-edit\"><!-- wp:presto-player/youtube {\"id\":1,\"src\":\"https://www.youtube.com/watch?v=y015AI6Nf80\",\"preset\":1,\"video_id\":\"y015AI6Nf80\"} /--></div>\n<!-- /wp:presto-player/reusable-edit -->','Weekly Highlighted Video','','publish','closed','closed','','16','','','2021-08-24 00:13:34','2021-08-24 00:13:34','',0,'http://violin-fix.local/?post_type=pp_video_block&#038;p=16',0,'pp_video_block','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2021-08-24 00:33:15','2021-08-24 00:33:15','<!-- wp:paragraph -->\n<p>[presto_player id=16]</p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','7-revision-v1','','','2021-08-24 00:33:15','2021-08-24 00:33:15','',7,'http://violin-fix.local/?p=17',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2021-08-24 00:33:38','2021-08-24 00:33:38','','Home','','inherit','closed','closed','','7-revision-v1','','','2021-08-24 00:33:38','2021-08-24 00:33:38','',7,'http://violin-fix.local/?p=18',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2021-08-24 00:35:33','2021-08-24 00:35:33','<!-- wp:presto-player/youtube {\"id\":1,\"src\":\"https://www.youtube.com/watch?v=y015AI6Nf80\",\"preset\":1,\"video_id\":\"y015AI6Nf80\"} /-->','Home','','inherit','closed','closed','','7-revision-v1','','','2021-08-24 00:35:33','2021-08-24 00:35:33','',7,'http://violin-fix.local/?p=19',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2021-08-31 23:48:22','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-08-31 23:48:22','0000-00-00 00:00:00','',0,'http://violin-fix.local/?p=20',0,'post','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2021-09-01 00:02:09','2021-09-01 00:02:09','<!-- wp:presto-player/youtube {\"id\":1,\"src\":\"https://www.youtube.com/watch?v=y015AI6Nf80\",\"preset\":1,\"video_id\":\"y015AI6Nf80\"} /-->\n\n<!-- wp:presto-player/youtube {\"id\":2,\"src\":\"https://www.youtube.com/watch?v=hTQd3Nocalg\",\"preset\":5,\"video_id\":\"hTQd3Nocalg\"} /-->','Home','','inherit','closed','closed','','7-revision-v1','','','2021-09-01 00:02:09','2021-09-01 00:02:09','',7,'http://violin-fix.local/?p=22',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2021-09-01 00:03:30','2021-09-01 00:03:30','<!-- wp:presto-player/youtube {\"id\":1,\"src\":\"https://www.youtube.com/watch?v=y015AI6Nf80\",\"preset\":1,\"video_id\":\"y015AI6Nf80\"} /-->\n\n<!-- wp:presto-player/youtube {\"id\":2,\"src\":\"https://www.youtube.com/watch?v=hTQd3Nocalg\",\"preset\":4,\"video_id\":\"hTQd3Nocalg\"} /-->','Home','','inherit','closed','closed','','7-revision-v1','','','2021-09-01 00:03:30','2021-09-01 00:03:30','',7,'http://violin-fix.local/?p=23',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2021-09-01 00:03:39','2021-09-01 00:03:39','<!-- wp:presto-player/youtube {\"id\":1,\"src\":\"https://www.youtube.com/watch?v=y015AI6Nf80\",\"preset\":1,\"video_id\":\"y015AI6Nf80\"} /-->\n\n<!-- wp:presto-player/youtube {\"id\":2,\"src\":\"https://www.youtube.com/watch?v=hTQd3Nocalg\",\"preset\":3,\"video_id\":\"hTQd3Nocalg\"} /-->','Home','','inherit','closed','closed','','7-revision-v1','','','2021-09-01 00:03:39','2021-09-01 00:03:39','',7,'http://violin-fix.local/?p=24',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (25,1,'2021-09-01 00:10:14','2021-09-01 00:10:14','<!-- wp:presto-player/youtube {\"id\":1,\"src\":\"https://www.youtube.com/watch?v=y015AI6Nf80\",\"preset\":1,\"video_id\":\"y015AI6Nf80\"} /-->\n\n<!-- wp:presto-player/youtube {\"id\":2,\"src\":\"https://www.youtube.com/watch?v=hTQd3Nocalg\",\"preset\":3,\"video_id\":\"hTQd3Nocalg\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','7-revision-v1','','','2021-09-01 00:10:14','2021-09-01 00:10:14','',7,'http://violin-fix.local/?p=25',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2021-09-01 00:12:10','2021-09-01 00:12:10','<!-- wp:presto-player/youtube {\"id\":1,\"src\":\"https://www.youtube.com/watch?v=y015AI6Nf80\",\"preset\":3,\"video_id\":\"y015AI6Nf80\"} /-->\n\n<!-- wp:presto-player/youtube {\"id\":2,\"src\":\"https://www.youtube.com/watch?v=hTQd3Nocalg\",\"preset\":3,\"video_id\":\"hTQd3Nocalg\"} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','7-revision-v1','','','2021-09-01 00:12:10','2021-09-01 00:12:10','',7,'http://violin-fix.local/?p=26',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2021-09-01 00:13:57','2021-09-01 00:13:57','<!-- wp:presto-player/youtube {\"id\":1,\"src\":\"https://www.youtube.com/watch?v=y015AI6Nf80\",\"preset\":3,\"video_id\":\"y015AI6Nf80\"} /-->\n\n<!-- wp:presto-player/youtube {\"id\":3,\"src\":\"https://www.youtube.com/watch?v=Jd8%E2%80%A6\\u0026#8221\",\"preset\":3,\"video_id\":null} /-->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','7-revision-v1','','','2021-09-01 00:13:57','2021-09-01 00:13:57','',7,'http://violin-fix.local/?p=27',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2021-09-01 00:16:59','2021-09-01 00:16:59','[aiovg_category]','Video Category','','publish','closed','closed','','video-category','','','2021-09-01 00:16:59','2021-09-01 00:16:59','',0,'http://violin-fix.local/video-category/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2021-09-01 00:16:59','2021-09-01 00:16:59','[aiovg_tag]','Video Tag','','publish','closed','closed','','video-tag','','','2021-09-01 00:16:59','2021-09-01 00:16:59','',0,'http://violin-fix.local/video-tag/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2021-09-01 00:16:59','2021-09-01 00:16:59','[aiovg_search]','Search Videos','','publish','closed','closed','','search-videos','','','2021-09-01 00:16:59','2021-09-01 00:16:59','',0,'http://violin-fix.local/search-videos/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2021-09-01 00:16:59','2021-09-01 00:16:59','[aiovg_user_videos]','User Videos','','publish','closed','closed','','user-videos','','','2021-09-01 00:16:59','2021-09-01 00:16:59','',0,'http://violin-fix.local/user-videos/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2021-09-01 00:16:59','2021-09-01 00:16:59','','Player Embed','','publish','closed','closed','','player-embed','','','2021-09-01 00:16:59','2021-09-01 00:16:59','',0,'http://violin-fix.local/player-embed/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2021-09-01 00:18:13','2021-09-01 00:18:13','','About me- smaller','','inherit','open','closed','','about-me-smaller','','','2021-09-01 00:18:13','2021-09-01 00:18:13','',0,'http://violin-fix.local/wp-content/uploads/2021/09/About-me-smaller.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (34,1,'2021-09-01 00:18:52','2021-09-01 00:18:52','<!-- wp:shortcode -->\n[aiovg_video type=\"youtube\" youtube=\"https://www.youtube.com/watch?v=ZXDp6FM7Jbk\" poster=\"http://violin-fix.local/wp-content/uploads/2021/09/About-me-smaller.jpg\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','7-revision-v1','','','2021-09-01 00:18:52','2021-09-01 00:18:52','',7,'http://violin-fix.local/?p=34',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2021-09-01 00:20:07','2021-09-01 00:20:07','<!-- wp:shortcode -->\n[aiovg_video type=\"youtube\" youtube=\"https://www.youtube.com/watch?v=ZXDp6FM7Jbk\" poster=\"http://violin-fix.local/wp-content/uploads/2021/09/About-me-smaller.jpg\" width=\"200\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','7-revision-v1','','','2021-09-01 00:20:07','2021-09-01 00:20:07','',7,'http://violin-fix.local/?p=35',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2021-09-01 00:20:22','2021-09-01 00:20:22','<!-- wp:shortcode -->\n[aiovg_video type=\"youtube\" youtube=\"https://www.youtube.com/watch?v=ZXDp6FM7Jbk\" poster=\"http://violin-fix.local/wp-content/uploads/2021/09/About-me-smaller.jpg\" width=\"500\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','7-revision-v1','','','2021-09-01 00:20:22','2021-09-01 00:20:22','',7,'http://violin-fix.local/?p=36',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2021-09-01 00:20:29','2021-09-01 00:20:29','<!-- wp:shortcode -->\n[aiovg_video type=\"youtube\" youtube=\"https://www.youtube.com/watch?v=ZXDp6FM7Jbk\" poster=\"http://violin-fix.local/wp-content/uploads/2021/09/About-me-smaller.jpg\" width=\"1000\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','7-revision-v1','','','2021-09-01 00:20:29','2021-09-01 00:20:29','',7,'http://violin-fix.local/?p=37',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2021-09-01 00:23:21','2021-09-01 00:23:21','<!-- wp:shortcode -->\n[aiovg_video type=\"youtube\" youtube=\"https://www.youtube.com/watch?v=ZXDp6FM7Jbk\" poster=\"https://i.ytimg.com/vi/ZXDp6FM7Jbk/hqdefault.jpg\" width=\"1000\"]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Home','','inherit','closed','closed','','7-revision-v1','','','2021-09-01 00:23:21','2021-09-01 00:23:21','',7,'http://violin-fix.local/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2021-09-03 15:36:06','2021-09-03 15:36:06','{\n    \"nav_menu[-2429990513678160000]\": {\n        \"value\": {\n            \"name\": \"Home\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-03 15:36:06\"\n    },\n    \"nav_menu_item[-8142226217263927000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://violin-fix.local\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -2429990513678160000,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-03 15:36:06\"\n    }\n}','','','trash','closed','closed','','10c47d2a-9c2a-43ac-88b9-da7ea7167384','','','2021-09-03 15:36:06','2021-09-03 15:36:06','',0,'http://violin-fix.local/10c47d2a-9c2a-43ac-88b9-da7ea7167384/',0,'customize_changeset','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2021-09-03 15:36:06','2021-09-03 15:36:06','','Home','','publish','closed','closed','','home','','','2021-09-03 15:36:06','2021-09-03 15:36:06','',0,'http://violin-fix.local/home/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2021-09-03 15:37:44','2021-09-03 15:37:44','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2021-09-03 15:37:44','2021-09-03 15:37:44','',1,'http://violin-fix.local/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2021-09-03 15:38:40','2021-09-03 15:38:40','{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-03 15:38:40\"\n    },\n    \"page_on_front\": {\n        \"value\": \"7\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-09-03 15:38:40\"\n    }\n}','','','trash','closed','closed','','75f666d2-b849-4f53-a334-3434781636ff','','','2021-09-03 15:38:40','2021-09-03 15:38:40','',0,'http://violin-fix.local/75f666d2-b849-4f53-a334-3434781636ff/',0,'customize_changeset','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_presto_player_email_collection`
--

DROP TABLE IF EXISTS `wp_presto_player_email_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_presto_player_email_collection` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `behavior` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `percentage` bigint(20) DEFAULT NULL,
  `allow_skip` tinyint(1) NOT NULL DEFAULT '0',
  `headline` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bottom_text` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `button_text` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `preset_id` bigint(20) DEFAULT NULL,
  `border_radius` bigint(20) NOT NULL,
  `email_provider` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email_provider_list` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email_provider_tag` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `preset_id` (`preset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_presto_player_email_collection`
--

LOCK TABLES `wp_presto_player_email_collection` WRITE;
/*!40000 ALTER TABLE `wp_presto_player_email_collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_presto_player_email_collection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_presto_player_presets`
--

DROP TABLE IF EXISTS `wp_presto_player_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_presto_player_presets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slug` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `icon` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `skin` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `play-large` tinyint(1) NOT NULL DEFAULT '0',
  `rewind` tinyint(1) NOT NULL DEFAULT '0',
  `play` tinyint(1) NOT NULL DEFAULT '0',
  `fast-forward` tinyint(1) NOT NULL DEFAULT '0',
  `progress` tinyint(1) NOT NULL DEFAULT '0',
  `current-time` tinyint(1) NOT NULL DEFAULT '0',
  `mute` tinyint(1) NOT NULL DEFAULT '0',
  `volume` tinyint(1) NOT NULL DEFAULT '0',
  `speed` tinyint(1) NOT NULL DEFAULT '0',
  `pip` tinyint(1) NOT NULL DEFAULT '0',
  `fullscreen` tinyint(1) NOT NULL DEFAULT '0',
  `captions` tinyint(1) NOT NULL DEFAULT '0',
  `reset_on_end` tinyint(1) NOT NULL DEFAULT '0',
  `auto_hide` tinyint(1) NOT NULL DEFAULT '0',
  `captions_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `save_player_position` tinyint(1) NOT NULL DEFAULT '0',
  `sticky_scroll` tinyint(1) NOT NULL DEFAULT '0',
  `sticky_scroll_position` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `play_video_viewport` tinyint(1) NOT NULL DEFAULT '0',
  `hide_youtube` tinyint(1) NOT NULL DEFAULT '0',
  `lazy_load_youtube` tinyint(1) NOT NULL DEFAULT '0',
  `hide_logo` tinyint(1) NOT NULL DEFAULT '0',
  `border_radius` bigint(20) unsigned DEFAULT NULL,
  `caption_style` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `caption_background` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `cta` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email_collection` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action_bar` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `watermark` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_presto_player_presets`
--

LOCK TABLES `wp_presto_player_presets` WRITE;
/*!40000 ALTER TABLE `wp_presto_player_presets` DISABLE KEYS */;
INSERT INTO `wp_presto_player_presets` VALUES (1,'Default','default','format-video','default',1,1,1,1,1,1,1,1,0,0,1,0,1,1,0,1,0,'bottom right',0,0,0,0,NULL,NULL,NULL,1,'','','',1,'2021-08-24 06:11:27','2021-08-24 06:11:27',NULL,'');
INSERT INTO `wp_presto_player_presets` VALUES (2,'Course','course','welcome-learn-more','stacked',1,1,1,1,1,1,1,1,1,1,1,0,1,1,0,1,1,'bottom right',0,0,0,0,NULL,NULL,NULL,1,'','','',1,'2021-08-24 06:11:27','2021-08-24 06:11:27',NULL,'');
INSERT INTO `wp_presto_player_presets` VALUES (3,'Simple','simple','video-alt3',NULL,1,0,1,0,1,0,0,0,0,0,1,0,1,1,0,0,0,'bottom right',0,1,0,0,NULL,NULL,NULL,1,'','','',1,'2021-08-24 06:11:27','2021-08-24 06:11:27',NULL,'');
INSERT INTO `wp_presto_player_presets` VALUES (4,'Minimal','minimal','controls-play',NULL,1,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,'bottom right',0,1,0,1,NULL,NULL,NULL,1,'','','',1,'2021-08-24 06:11:27','2021-08-24 06:11:27',NULL,'');
INSERT INTO `wp_presto_player_presets` VALUES (5,'Youtube Optimized','youtube','youtube','stacked',1,1,1,1,1,1,1,1,1,0,1,0,1,1,0,0,0,'bottom right',0,0,1,0,NULL,NULL,NULL,1,'','','a:6:{s:7:\"enabled\";b:1;s:16:\"percentage_start\";i:0;s:4:\"text\";s:24:\"Subscribe to our channel\";s:16:\"background_color\";s:7:\"#1d1d1d\";s:11:\"button_type\";s:7:\"youtube\";s:12:\"button_count\";b:0;}',1,'2021-08-24 06:11:27','2021-08-24 06:11:27',NULL,'');
/*!40000 ALTER TABLE `wp_presto_player_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_presto_player_videos`
--

DROP TABLE IF EXISTS `wp_presto_player_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_presto_player_videos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `external_id` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attachment_id` bigint(20) unsigned DEFAULT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `src` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `external_id` (`external_id`),
  KEY `attachment_id` (`attachment_id`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_presto_player_videos`
--

LOCK TABLES `wp_presto_player_videos` WRITE;
/*!40000 ALTER TABLE `wp_presto_player_videos` DISABLE KEYS */;
INSERT INTO `wp_presto_player_videos` VALUES (1,'','youtube','y015AI6Nf80',0,7,'https://www.youtube.com/watch?v=y015AI6Nf80',1,'2021-08-24 06:12:14','2021-09-01 06:13:40',NULL);
INSERT INTO `wp_presto_player_videos` VALUES (2,'','youtube','hTQd3Nocalg',0,7,'https://www.youtube.com/watch?v=hTQd3Nocalg',1,'2021-09-01 06:01:33','2021-09-01 06:10:16',NULL);
INSERT INTO `wp_presto_player_videos` VALUES (3,'https://www.youtube.com/watch?v=Jd8%E2%80%A6&#8221','youtube','',0,7,'https://www.youtube.com/watch?v=Jd8%E2%80%A6&#8221',1,'2021-09-01 06:13:53','0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `wp_presto_player_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_presto_player_visits`
--

DROP TABLE IF EXISTS `wp_presto_player_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_presto_player_visits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `duration` bigint(20) unsigned NOT NULL,
  `video_id` bigint(20) unsigned NOT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `video_id` (`video_id`),
  KEY `ip_address` (`ip_address`),
  KEY `created_at` (`created_at`),
  KEY `updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_presto_player_visits`
--

LOCK TABLES `wp_presto_player_visits` WRITE;
/*!40000 ALTER TABLE `wp_presto_player_visits` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_presto_player_visits` ENABLE KEYS */;
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
INSERT INTO `wp_term_relationships` VALUES (40,2,0);
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
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,1);
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
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
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
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Home','home',0);
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
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','teresasanders77');
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
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"4d15e99eb76375c1c955d0be1751a266d722a64507be15c2e40e6f7c8f5e74f8\";a:4:{s:10:\"expiration\";i:1630855739;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/92.0.4515.159 Safari/537.36\";s:5:\"login\";i:1630682939;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','20');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (20,1,'wp_user-settings-time','1629411775');
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
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'teresasanders77','$P$B21XhXmzYW6ATUo95VrKz15eIWYt6d.','teresasanders77','dev-email@flywheel.local','http://violin-fix.local','2021-08-19 18:52:52','',0,'teresasanders77');
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

-- Dump completed on 2021-09-07 13:58:58
