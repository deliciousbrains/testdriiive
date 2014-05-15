-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: testdriiive
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.13.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'Mr WordPress','','https://wordpress.org/','','2014-05-15 17:01:03','2014-05-15 17:01:03','Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.',0,'1','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (3,'siteurl','http://example.com/wp','yes'),(4,'blogname','Test Driiive','yes'),(5,'blogdescription','Just another WordPress site','yes'),(6,'users_can_register','0','yes'),(7,'admin_email','d@danielbachhuber.com','yes'),(8,'start_of_week','1','yes'),(9,'use_balanceTags','0','yes'),(10,'use_smilies','1','yes'),(11,'require_name_email','1','yes'),(12,'comments_notify','1','yes'),(13,'posts_per_rss','10','yes'),(14,'rss_use_excerpt','0','yes'),(15,'mailserver_url','mail.example.com','yes'),(16,'mailserver_login','login@example.com','yes'),(17,'mailserver_pass','password','yes'),(18,'mailserver_port','110','yes'),(19,'default_category','1','yes'),(20,'default_comment_status','open','yes'),(21,'default_ping_status','open','yes'),(22,'default_pingback_flag','1','yes'),(23,'posts_per_page','10','yes'),(24,'date_format','F j, Y','yes'),(25,'time_format','g:i a','yes'),(26,'links_updated_date_format','F j, Y g:i a','yes'),(27,'comment_moderation','0','yes'),(28,'moderation_notify','1','yes'),(29,'permalink_structure','','yes'),(30,'gzipcompression','0','yes'),(31,'hack_file','0','yes'),(32,'blog_charset','UTF-8','yes'),(33,'moderation_keys','','no'),(34,'active_plugins','a:0:{}','yes'),(35,'home','http://example.com/wp','yes'),(36,'category_base','','yes'),(37,'ping_sites','http://rpc.pingomatic.com/','yes'),(38,'advanced_edit','0','yes'),(39,'comment_max_links','2','yes'),(40,'gmt_offset','0','yes'),(41,'default_email_category','1','yes'),(42,'recently_edited','','no'),(43,'template','editor','yes'),(44,'stylesheet','editor','yes'),(45,'comment_whitelist','1','yes'),(46,'blacklist_keys','','no'),(47,'comment_registration','0','yes'),(48,'html_type','text/html','yes'),(49,'use_trackback','0','yes'),(50,'default_role','subscriber','yes'),(51,'db_version','27916','yes'),(52,'uploads_use_yearmonth_folders','1','yes'),(53,'upload_path','','yes'),(54,'blog_public','1','yes'),(55,'default_link_category','2','yes'),(56,'show_on_front','posts','yes'),(57,'tag_base','','yes'),(58,'show_avatars','1','yes'),(59,'avatar_rating','G','yes'),(60,'upload_url_path','','yes'),(61,'thumbnail_size_w','150','yes'),(62,'thumbnail_size_h','150','yes'),(63,'thumbnail_crop','1','yes'),(64,'medium_size_w','300','yes'),(65,'medium_size_h','300','yes'),(66,'avatar_default','mystery','yes'),(67,'large_size_w','1024','yes'),(68,'large_size_h','1024','yes'),(69,'image_default_link_type','file','yes'),(70,'image_default_size','','yes'),(71,'image_default_align','','yes'),(72,'close_comments_for_old_posts','0','yes'),(73,'close_comments_days_old','14','yes'),(74,'thread_comments','1','yes'),(75,'thread_comments_depth','5','yes'),(76,'page_comments','0','yes'),(77,'comments_per_page','50','yes'),(78,'default_comments_page','newest','yes'),(79,'comment_order','asc','yes'),(80,'sticky_posts','a:0:{}','yes'),(81,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(82,'widget_text','a:0:{}','yes'),(83,'widget_rss','a:0:{}','yes'),(84,'uninstall_plugins','a:0:{}','no'),(85,'timezone_string','','yes'),(86,'page_for_posts','0','yes'),(87,'page_on_front','0','yes'),(88,'default_post_format','0','yes'),(89,'link_manager_enabled','0','yes'),(90,'initial_db_version','27916','yes'),(91,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(92,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(93,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(94,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(95,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(96,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(97,'sidebars_widgets','a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"orphaned_widgets_2\";a:0:{}s:18:\"orphaned_widgets_3\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(98,'cron','a:3:{i:1400216470;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1400224020;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}','yes'),(105,'template_root','/demo-themes','yes'),(106,'stylesheet_root','/demo-themes','yes'),(107,'current_theme','Editor','yes'),(108,'theme_switched','','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2014-05-15 17:01:03','2014-05-15 17:01:03','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','publish','open','open','','hello-world','','','2014-05-15 17:01:03','2014-05-15 17:01:03','',0,'http://example.com/?p=1',0,'post','',1),(2,1,'2014-05-15 17:01:03','2014-05-15 17:01:03','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://example.com/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','open','open','','sample-page','','','2014-05-15 17:01:03','2014-05-15 17:01:03','',0,'http://example.com/?page_id=2',0,'page','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_samplesite_commentmeta`
--

DROP TABLE IF EXISTS `wp_samplesite_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_samplesite_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_samplesite_commentmeta`
--

LOCK TABLES `wp_samplesite_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_samplesite_commentmeta` DISABLE KEYS */;
INSERT INTO `wp_samplesite_commentmeta` VALUES (1,1,'akismet_result','false'),(2,1,'akismet_history','a:4:{s:4:\"time\";d:1385921386.007591;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:0:\"\";}'),(3,9,'akismet_result','false'),(4,9,'akismet_history','a:4:{s:4:\"time\";d:1365208267.2220261;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:13:\"mikemcalister\";}'),(5,10,'akismet_result','false'),(6,10,'akismet_history','a:4:{s:4:\"time\";d:1365208310.9833081;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:0:\"\";}'),(7,10,'akismet_history','a:4:{s:4:\"time\";d:1365465817.2966659;s:7:\"message\";s:52:\"mikemcalister changed the comment status to approved\";s:5:\"event\";s:15:\"status-approved\";s:4:\"user\";s:13:\"mikemcalister\";}'),(8,11,'akismet_result','false'),(9,11,'akismet_history','a:4:{s:4:\"time\";d:1380414213.164257;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:0:\"\";}'),(10,12,'akismet_result','false'),(11,12,'akismet_history','a:4:{s:4:\"time\";d:1390880526.2478399;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:0:\"\";}'),(12,19,'akismet_result','false'),(13,19,'akismet_history','a:4:{s:4:\"time\";d:1391295833.688822;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:0:\"\";}'),(14,20,'akismet_result','false'),(15,20,'akismet_history','a:4:{s:4:\"time\";d:1391295852.7988269;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:0:\"\";}'),(16,21,'akismet_result','false'),(17,21,'akismet_history','a:4:{s:4:\"time\";d:1391295898.433501;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:0:\"\";}'),(18,23,'akismet_history','a:4:{s:4:\"time\";d:1365200121.3028901;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:13:\"mikemcalister\";}'),(19,23,'akismet_result','false'),(20,24,'akismet_result','false'),(21,24,'akismet_history','a:4:{s:4:\"time\";d:1365200165.0955379;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:0:\"\";}'),(22,24,'akismet_history','a:4:{s:4:\"time\";d:1365205268.0187969;s:7:\"message\";s:52:\"mikemcalister changed the comment status to approved\";s:5:\"event\";s:15:\"status-approved\";s:4:\"user\";s:13:\"mikemcalister\";}'),(23,25,'akismet_result','false'),(24,25,'akismet_history','a:4:{s:4:\"time\";d:1379660549.110569;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:0:\"\";}'),(25,26,'akismet_result','false'),(26,26,'akismet_history','a:4:{s:4:\"time\";d:1382569517.6210511;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:0:\"\";}'),(27,27,'akismet_result','false'),(28,27,'akismet_history','a:4:{s:4:\"time\";d:1365204921.5491371;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:0:\"\";}'),(29,27,'akismet_history','a:4:{s:4:\"time\";d:1365205268.015568;s:7:\"message\";s:52:\"mikemcalister changed the comment status to approved\";s:5:\"event\";s:15:\"status-approved\";s:4:\"user\";s:13:\"mikemcalister\";}'),(30,28,'akismet_result','false'),(31,28,'akismet_history','a:4:{s:4:\"time\";d:1365204962.1526361;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:0:\"\";}'),(32,28,'akismet_history','a:4:{s:4:\"time\";d:1365205268.012059;s:7:\"message\";s:52:\"mikemcalister changed the comment status to approved\";s:5:\"event\";s:15:\"status-approved\";s:4:\"user\";s:13:\"mikemcalister\";}'),(33,29,'akismet_result','false'),(34,29,'akismet_history','a:4:{s:4:\"time\";d:1374152136.0969131;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:0:\"\";}'),(35,30,'akismet_result','false'),(36,30,'akismet_history','a:4:{s:4:\"time\";d:1376993135.3134079;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:0:\"\";}'),(37,31,'akismet_result','false'),(38,31,'akismet_history','a:4:{s:4:\"time\";d:1391030216.185343;s:7:\"message\";s:28:\"Akismet cleared this comment\";s:5:\"event\";s:9:\"check-ham\";s:4:\"user\";s:0:\"\";}');
/*!40000 ALTER TABLE `wp_samplesite_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_samplesite_comments`
--

DROP TABLE IF EXISTS `wp_samplesite_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_samplesite_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_samplesite_comments`
--

LOCK TABLES `wp_samplesite_comments` WRITE;
/*!40000 ALTER TABLE `wp_samplesite_comments` DISABLE KEYS */;
INSERT INTO `wp_samplesite_comments` VALUES (1,15,'カルティエ バレリーナ','axsgnh@gmail.com','http://dianxinco.mcmbyidenticaljp.org/','54.245.117.0','2013-12-01 18:09:45','2013-12-01 18:09:45','ランニングシューズ 大きいサイズ カルティエ バレリーナ http://dianxinco.mcmbyidenticaljp.org/',0,'0','','',0,0),(2,35,'Mike McAlister','m@mikemcalister.com','http://twitter.com/mikemcalister','127.0.0.1','2012-09-29 04:55:16','2012-09-29 04:55:16','In a closed society where everybody\'s guilty, the only crime is getting caught. In a world of thieves, the only final sin is stupidity.',0,'1','','',0,0),(3,35,'Mandi Hollis','hollisal18@gmail.com','http://twitter.com/mandihollis','127.0.0.1','2012-10-01 09:48:59','2012-10-01 09:48:59','Journalism is not a profession or a trade. It is a cheap catch-all for fuckoffs and misfits -- a false doorway to the backside of life, a filthy piss-ridden little hole nailed off by the building inspector, but just deep enough for a wino to curl up from the sidewalk.',0,'1','','',0,0),(4,35,'Mike McAlister','m@mikemcalister.com','http://twitter.com/mikemcalister','127.0.0.1','2012-10-01 09:49:29','2012-10-01 09:49:29','But our trip was different. It was a classic affirmation of everything right and true and decent in the national character. It was a gross, physical salute to the fantastic possibilities of life in this country-but only for those with true grit. And we were chock full of that.',0,'1','','',0,0),(5,35,'Mike McAlister','m@mikemcalister.com','http://twitter.com/mikemcalister','67.180.26.125','2012-11-11 03:04:44','2012-11-11 03:04:44','Ignore that nightmare in the bathroom. Just another ugly refugee from the Love Generation, some doom-struck gimp who couldn\'t handle the pressure.',0,'1','','',0,0),(6,35,'Mike McAlister','m@mikemcalister.com','http://twitter.com/mikemcalister','67.180.26.125','2012-11-11 03:05:17','2012-11-11 03:05:17','We were somewhere around Barstow, on the edge of the desert, when the drugs began to take hold.',0,'1','','',3,0),(7,91,'Mike McAlister','m@mikemcalister.com','http://twitter.com/mikemcalister','127.0.0.1','2012-10-01 10:26:27','2012-10-01 10:26:27','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac purus nec diam laoreet sollicitudin. Fusce ullamcorper imperdiet turpis, non accumsan enim egestas in. Lorem ipsum dolor sit amet, consectetur adipiscing elit. \n\nDonec ac purus nec diam laoreet sollicitudin. Fusce ullamcorper imperdiet turpis, non accumsan enim egestas in. Lorem ipsum dolor sit amet, consectetur.',0,'1','','',0,0),(8,91,'Mike McAlister','m@mikemcalister.com','http://twitter.com/mikemcalister','127.0.0.1','2012-11-03 00:41:59','2012-11-03 00:41:59','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac purus nec diam laoreet sollicitudin. Fusce ullamcorper imperdiet turpis, non accumsan enim egestas in!',0,'1','','',0,0),(9,125,'Mike McAlister','m@mikemcalister.com','http://twitter.com/mikemcalister','67.180.26.125','2013-04-06 00:31:07','2013-04-06 00:31:07','So now, less than five years later, you can go up on a steep hill in Las Vegas and look West, and with the right kind of eyes you can almost see the high-water mark—that place where the wave finally broke and rolled back.',0,'1','','',0,0),(10,125,'Raul Duke','okaythemes@gmail.com','http://twitter.com/mikemcalister','67.180.26.125','2013-04-06 00:31:50','2013-04-06 00:31:50','No sympathy for the devil; keep that in mind. Buy the ticket, take the ride...and if it occasionally gets a little heavier than what you had in mind, well...maybe chalk it off to forced conscious expansion: Tune in, freak out, get beaten',0,'1','','',0,0),(11,125,'tom','tom@test.com','http://mysite.com','69.176.177.213','2013-09-29 00:23:33','2013-09-29 00:23:33','this is a test',0,'0','','',0,0),(12,125,'George Washington','george@beforethe.internet','http://beforethe.internet','123.255.47.251','2014-01-28 03:42:06','2014-01-28 03:42:06','Whats this web thingy',0,'0','','',0,0),(13,144,'Mike McAlister','m@mikemcalister.com','http://twitter.com/mikemcalister','127.0.0.1','2012-10-01 09:46:20','2012-10-01 09:46:20','Jesus! Did I SAY that? Or just think it? Was I talking? Did they hear me? I glanced over at my attorney, but he seemed oblivious...',0,'1','','',0,0),(14,144,'Mandi Hollis','hollisal18@gmail.com','http://twitter.com/mandihollis','127.0.0.1','2012-10-01 09:47:49','2012-10-01 09:47:49','Ignore that nightmare in the bathroom. Just another ugly refugee from the Love Generation, some doom-struck gimp who couldn\'t handle the pressure. My attorney has never been able to accept the notion.',0,'1','','',0,0),(15,148,'Mike McAlister','m@mikemcalister.com','http://twitter.com/mikemcalister','127.0.0.1','2012-10-01 09:45:26','2012-10-01 09:45:26','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac purus nec diam laoreet sollicitudin. Fusce ullamcorper imperdiet turpis, non accumsan enim egestas in. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',0,'1','','',0,0),(16,148,'Mandi Hollis','hollisal18@gmail.com','http://twitter.com/mandihollis','127.0.0.1','2012-10-01 09:50:43','2012-10-01 09:50:43','Donec ac purus nec diam laoreet sollicitudin. Fusce ullamcorper imperdiet turpis, non accumsan enim egestas in.',0,'1','','',0,0),(17,157,'Mike McAlister','m@mikemcalister.com','http://twitter.com/mikemcalister','127.0.0.1','2012-10-01 09:52:21','2012-10-01 09:52:21','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac purus nec diam laoreet sollicitudin. Fusce ullamcorper imperdiet turpis, non accumsan enim egestas in. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ac purus nec diam laoreet sollicitudin. Fusce ullamcorper imperdiet turpis, non accumsan enim egestas in.',0,'1','','',0,0),(18,364,'Mike McAlister','m@mikemcalister.com','http://twitter.com/mikemcalister','127.0.0.1','2012-11-03 00:41:40','2012-11-03 00:41:40','You could strike sparks anywhere. There was a fantastic universal sense that whatever we were doing was right, that we were winning.',0,'1','','',0,0),(19,364,'Name','name@email.com','','174.67.231.210','2014-02-01 23:03:53','2014-02-01 23:03:53','Comments',0,'0','','',0,0),(20,364,'Name','name@email.com','','174.67.231.210','2014-02-01 23:04:12','2014-02-01 23:04:12','Leave a reply',0,'0','','',18,0),(21,364,'Name','name@email.com','','174.67.231.210','2014-02-01 23:04:58','2014-02-01 23:04:58','Another test',0,'0','','',0,0),(22,457,'Hunter Thompson','','','','2012-11-07 05:27:43','2012-11-07 05:27:43','In a closed society where everybody\'s guilty, the only crime is getting caught. In a world of thieves, the only final sin is stupidity.',0,'1','','',0,0),(23,457,'Mike McAlister','m@mikemcalister.com','http://twitter.com/mikemcalister','67.180.26.125','2013-04-05 22:15:21','2013-04-05 22:15:21','There was madness in any direction, at any hour. If not across the Bay, then up the Golden Gate or down 101 to Los Altos or La Honda',0,'1','','',0,0),(24,457,'George Harrison','okaythemes@gmail.com','http://twitter.com/mikemcalister','67.180.26.125','2013-04-05 22:16:05','2013-04-05 22:16:05','You could strike sparks anywhere. There was a fantastic universal sense that whatever we were doing was right, that we were winning.',0,'1','','',0,0),(25,457,'test','john@doe.com','','115.249.110.130','2013-09-20 07:02:29','2013-09-20 07:02:29','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',0,'0','','',23,0),(26,457,'Bob','bob@bob.com','http://bob.com','24.155.7.101','2013-10-23 23:05:17','2013-10-23 23:05:17','Testing this out...',0,'0','','',23,0),(27,490,'George Harrison','okaythemes@gmail.com','http://twitter.com/mikemcalister','67.180.26.125','2013-04-05 23:35:21','2013-04-05 23:35:21','The biggest break in my career was getting into the Beatles in 1962. The second biggest break since then is getting out of them.',0,'1','','',0,0),(28,490,'John Lennon','okaythemes@gmail.com','http://twitter.com/mikemcalister','67.180.26.125','2013-04-05 23:36:02','2013-04-05 23:36:02','Our society is run by insane people for insane objectives. I think we\'re being run by maniacs for maniacal ends and I think I\'m liable to be put away as insane for expressing that. That\'s what\'s insane about it.',0,'1','','',0,0),(29,490,'test','test@test.com','','62.198.235.124','2013-07-18 12:55:36','2013-07-18 12:55:36','this is a test :-)',0,'0','','',0,0),(30,490,'Markus','markus.roedder@live.de','http://www.subcess.de','87.139.241.67','2013-08-20 10:05:35','2013-08-20 10:05:35','Awesome Website and Template. Think about to use it!',0,'0','','',0,0),(31,490,'Peter','mail@mail.com','','213.21.80.51','2014-01-29 21:16:56','2014-01-29 21:16:56','Comment',0,'0','','',27,0);
/*!40000 ALTER TABLE `wp_samplesite_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_samplesite_links`
--

DROP TABLE IF EXISTS `wp_samplesite_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_samplesite_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_samplesite_links`
--

LOCK TABLES `wp_samplesite_links` WRITE;
/*!40000 ALTER TABLE `wp_samplesite_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_samplesite_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_samplesite_options`
--

DROP TABLE IF EXISTS `wp_samplesite_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_samplesite_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_samplesite_options`
--

LOCK TABLES `wp_samplesite_options` WRITE;
/*!40000 ALTER TABLE `wp_samplesite_options` DISABLE KEYS */;
INSERT INTO `wp_samplesite_options` VALUES (1,'siteurl','http://samplesite.testdriiive.dev/wp','yes'),(2,'blogname','Just another Test Driiive Site','yes'),(3,'blogdescription','Just another WordPress site','yes'),(4,'users_can_register','0','yes'),(5,'admin_email','samplesite@testdriiive.com','yes'),(6,'start_of_week','1','yes'),(7,'use_balanceTags','0','yes'),(8,'use_smilies','1','yes'),(9,'require_name_email','1','yes'),(10,'comments_notify','1','yes'),(11,'posts_per_rss','10','yes'),(12,'rss_use_excerpt','0','yes'),(13,'mailserver_url','mail.example.com','yes'),(14,'mailserver_login','login@example.com','yes'),(15,'mailserver_pass','password','yes'),(16,'mailserver_port','110','yes'),(17,'default_category','1','yes'),(18,'default_comment_status','open','yes'),(19,'default_ping_status','open','yes'),(20,'default_pingback_flag','1','yes'),(21,'posts_per_page','10','yes'),(22,'date_format','F j, Y','yes'),(23,'time_format','g:i a','yes'),(24,'links_updated_date_format','F j, Y g:i a','yes'),(25,'comment_moderation','0','yes'),(26,'moderation_notify','1','yes'),(27,'permalink_structure','','yes'),(28,'gzipcompression','0','yes'),(29,'hack_file','0','yes'),(30,'blog_charset','UTF-8','yes'),(31,'moderation_keys','','no'),(32,'active_plugins','a:1:{i:0;s:41:\"wordpress-importer/wordpress-importer.php\";}','yes'),(33,'home','http://samplesite.testdriiive.dev/wp','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'advanced_edit','0','yes'),(37,'comment_max_links','2','yes'),(38,'gmt_offset','0','yes'),(39,'default_email_category','1','yes'),(40,'recently_edited','','no'),(41,'template','editor','yes'),(42,'stylesheet','editor','yes'),(43,'comment_whitelist','1','yes'),(44,'blacklist_keys','','no'),(45,'comment_registration','0','yes'),(46,'html_type','text/html','yes'),(47,'use_trackback','0','yes'),(48,'default_role','subscriber','yes'),(49,'db_version','27916','yes'),(50,'uploads_use_yearmonth_folders','1','yes'),(51,'upload_path','','yes'),(52,'blog_public','1','yes'),(53,'default_link_category','2','yes'),(54,'show_on_front','posts','yes'),(55,'tag_base','','yes'),(56,'show_avatars','1','yes'),(57,'avatar_rating','G','yes'),(58,'upload_url_path','','yes'),(59,'thumbnail_size_w','150','yes'),(60,'thumbnail_size_h','150','yes'),(61,'thumbnail_crop','1','yes'),(62,'medium_size_w','300','yes'),(63,'medium_size_h','300','yes'),(64,'avatar_default','mystery','yes'),(65,'large_size_w','1024','yes'),(66,'large_size_h','1024','yes'),(67,'image_default_link_type','file','yes'),(68,'image_default_size','','yes'),(69,'image_default_align','','yes'),(70,'close_comments_for_old_posts','0','yes'),(71,'close_comments_days_old','14','yes'),(72,'thread_comments','1','yes'),(73,'thread_comments_depth','5','yes'),(74,'page_comments','0','yes'),(75,'comments_per_page','50','yes'),(76,'default_comments_page','newest','yes'),(77,'comment_order','asc','yes'),(78,'sticky_posts','a:0:{}','yes'),(79,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_text','a:0:{}','yes'),(81,'widget_rss','a:0:{}','yes'),(82,'uninstall_plugins','a:0:{}','no'),(83,'timezone_string','','yes'),(84,'page_for_posts','0','yes'),(85,'page_on_front','0','yes'),(86,'default_post_format','0','yes'),(87,'link_manager_enabled','0','yes'),(88,'initial_db_version','27916','yes'),(89,'wp_samplesite_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:9:\"add_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(90,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(91,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(92,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(93,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(94,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(95,'sidebars_widgets','a:5:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:18:\"orphaned_widgets_2\";a:0:{}s:18:\"orphaned_widgets_3\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(96,'cron','a:4:{i:1400216483;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1400224440;a:1:{s:20:\"wp_maybe_auto_update\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1400259686;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(113,'_transient_random_seed','029056154d6d1650407577fc5132e28a','yes'),(114,'logged_in_key','5pJ=*n<a}f_zEg~g~G@=Cx~T?s `enkq;minDulh0QQ-_{>k|S,LqGh*D$pPW*fQ','yes'),(115,'logged_in_salt','M;|1TCV1`N!||<TOMbbvU&vt~?u(^A&w~}eAICiTvViogk]*L6,~g9zE]GU/.ZF6','yes'),(116,'auth_key','d9 (^CSl/T@bunI4MML,qjZR?wfbv*kR8<{}1]Qb8*e<KrhL[1,x,#]tB}?y.qJe','yes'),(117,'auth_salt','SIY^B#DXjVz.0VhwH:($M-3;1Nh+GTV4L&;`&W5)z_Iy rSHlbg3c_8I.J~n;^(a','yes'),(118,'nonce_key','oX<{^!BM&Wm&XM+PS1sW%Q9]NtGjUzB?TzD]Cji7g`O0a/+J]F{`3RLeeK}9 ke%','yes'),(119,'nonce_salt','cDZQcLLAO{^O92!|,-]A3ztgz(R5)`n|hP@4f LVT%I7;A^h)0&eM/L)m8,OFh6<','yes'),(121,'can_compress_scripts','1','yes'),(122,'category_children','a:0:{}','yes'),(124,'current_theme','Editor','yes'),(125,'theme_mods_twentyfourteen','a:2:{i:0;b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1400174285;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes'),(126,'theme_switched','','yes'),(131,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-3.9.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-3.9.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-3.9.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-3.9.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"3.9.1\";s:7:\"version\";s:5:\"3.9.1\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"3.8\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1400173801;s:15:\"version_checked\";s:5:\"3.9.1\";s:12:\"translations\";a:0:{}}','yes'),(132,'_site_transient_update_plugins','O:8:\"stdClass\":3:{s:12:\"last_checked\";i:1400173801;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','yes'),(133,'_site_transient_timeout_theme_roots','1400175601','yes'),(134,'_site_transient_theme_roots','a:1:{s:6:\"editor\";s:12:\"/demo-themes\";}','yes'),(135,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1400173801;s:7:\"checked\";a:1:{s:6:\"editor\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','yes'),(136,'template_root','/demo-themes','yes'),(137,'stylesheet_root','/demo-themes','yes');
/*!40000 ALTER TABLE `wp_samplesite_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_samplesite_postmeta`
--

DROP TABLE IF EXISTS `wp_samplesite_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_samplesite_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_samplesite_postmeta`
--

LOCK TABLES `wp_samplesite_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_samplesite_postmeta` DISABLE KEYS */;
INSERT INTO `wp_samplesite_postmeta` VALUES (1,496,'_wp_attached_file','2013/04/beatles.jpg'),(2,496,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:900;s:6:\"height\";i:357;s:4:\"file\";s:19:\"2013/04/beatles.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"beatles-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"beatles-300x119.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:119;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(3,520,'_wp_attached_file','2013/03/books1.jpg'),(4,520,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:622;s:6:\"height\";i:622;s:4:\"file\";s:18:\"2013/03/books1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"books1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"books1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(5,521,'_wp_attached_file','2013/03/code1.jpg'),(6,521,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:657;s:6:\"height\";i:657;s:4:\"file\";s:17:\"2013/03/code1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"code1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"code1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(7,522,'_wp_attached_file','2013/03/DSCF06571.jpg'),(8,522,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:579;s:6:\"height\";i:579;s:4:\"file\";s:21:\"2013/03/DSCF06571.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"DSCF06571-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"DSCF06571-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(9,523,'_wp_attached_file','2013/03/records1.jpg'),(10,523,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:526;s:6:\"height\";i:526;s:4:\"file\";s:20:\"2013/03/records1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"records1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"records1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(11,525,'_wp_attached_file','2013/03/notes.jpg'),(12,525,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:717;s:6:\"height\";i:717;s:4:\"file\";s:17:\"2013/03/notes.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"notes-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"notes-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(13,532,'_wp_attached_file','2013/03/notes1.jpg'),(14,532,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:717;s:6:\"height\";i:717;s:4:\"file\";s:18:\"2013/03/notes1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"notes1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"notes1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(15,534,'_wp_attached_file','2013/03/phone.jpg'),(16,534,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:717;s:6:\"height\";i:717;s:4:\"file\";s:17:\"2013/03/phone.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"phone-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"phone-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(17,572,'_wp_attached_file','2013/03/sightglass.jpg'),(18,572,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:800;s:6:\"height\";i:343;s:4:\"file\";s:22:\"2013/03/sightglass.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sightglass-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sightglass-300x128.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(19,573,'_menu_item_type','custom'),(20,573,'_menu_item_menu_item_parent','0'),(21,573,'_menu_item_object_id','573'),(22,573,'_menu_item_object','custom'),(23,573,'_menu_item_target',''),(24,573,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(25,573,'_menu_item_xfn',''),(26,573,'_menu_item_url','http://themes.array.is/typable/'),(27,589,'_wp_attached_file','2013/04/vinyl.jpg'),(28,589,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:700;s:6:\"height\";i:285;s:4:\"file\";s:17:\"2013/04/vinyl.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"vinyl-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"vinyl-300x122.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:122;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";d:2;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:12:\"FinePix X100\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:1350259877;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"23\";s:3:\"iso\";s:3:\"640\";s:13:\"shutter_speed\";s:17:\"0.016666666666667\";s:5:\"title\";s:0:\"\";}}'),(29,591,'_wp_attached_file','2013/04/clock.jpg'),(30,591,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:720;s:6:\"height\";i:285;s:4:\"file\";s:17:\"2013/04/clock.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"clock-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"clock-300x118.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:118;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(31,593,'_wp_attached_file','2013/03/imac.jpg'),(32,593,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:600;s:4:\"file\";s:16:\"2013/03/imac.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"imac-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"imac-300x128.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"imac-1024x438.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:438;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(33,597,'_wp_attached_file','2013/03/cliffhouse.jpg'),(34,597,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:720;s:6:\"height\";i:285;s:4:\"file\";s:22:\"2013/03/cliffhouse.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cliffhouse-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cliffhouse-300x118.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:118;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(35,599,'_wp_attached_file','2013/03/guitar.jpg'),(36,599,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:720;s:6:\"height\";i:285;s:4:\"file\";s:18:\"2013/03/guitar.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"guitar-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"guitar-300x118.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:118;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(37,601,'_wp_attached_file','2013/03/tools.jpg'),(38,601,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:720;s:6:\"height\";i:285;s:4:\"file\";s:17:\"2013/03/tools.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"tools-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"tools-300x118.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:118;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),(39,602,'_menu_item_type','custom'),(40,602,'_menu_item_menu_item_parent','0'),(41,602,'_menu_item_object_id','602'),(42,602,'_menu_item_object','custom'),(43,602,'_menu_item_target',''),(44,602,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(45,602,'_menu_item_xfn',''),(46,602,'_menu_item_url','http://themes.array.is/typable/2013/03/29/post-styles/'),(47,15,'_wp_old_slug','the-great-typography-post-of-twenty-thirteen'),(48,15,'_thumbnail_id','589'),(49,20,'_wp_page_template','default'),(50,21,'_wp_page_template','default'),(51,21,'_thumbnail_id','331'),(52,35,'_thumbnail_id','599'),(53,91,'_wp_old_slug','dylan'),(54,91,'_wp_old_slug','view-berkele'),(55,91,'_wp_old_slug','lennon-poster'),(56,125,'_thumbnail_id','601'),(57,144,'_thumbnail_id','593'),(58,148,'_thumbnail_id','597'),(59,157,'_wp_old_slug','bart-goes-under-the-bay'),(60,157,'_thumbnail_id','572'),(61,311,'_wp_page_template','custom-archive.php'),(62,364,'_wp_old_slug','new-zealan'),(63,364,'_wp_old_slug','japan-a-skiers-journey-video'),(64,457,'_wp_old_slug','hello-world-2'),(65,457,'_thumbnail_id','591'),(66,490,'_thumbnail_id','496'),(67,490,'_wp_old_slug','why-the-beatles-still-matter'),(68,603,'_menu_item_type','post_type'),(69,603,'_menu_item_menu_item_parent','0'),(70,603,'_menu_item_object_id','21'),(71,603,'_menu_item_object','page'),(72,603,'_menu_item_target',''),(73,603,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(74,603,'_menu_item_xfn',''),(75,603,'_menu_item_url',''),(76,604,'_menu_item_type','post_type'),(77,604,'_menu_item_menu_item_parent','0'),(78,604,'_menu_item_object_id','311'),(79,604,'_menu_item_object','page'),(80,604,'_menu_item_target',''),(81,604,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(82,604,'_menu_item_xfn',''),(83,604,'_menu_item_url',''),(84,605,'_menu_item_type','post_type'),(85,605,'_menu_item_menu_item_parent','0'),(86,605,'_menu_item_object_id','20'),(87,605,'_menu_item_object','page'),(88,605,'_menu_item_target',''),(89,605,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(90,605,'_menu_item_xfn',''),(91,605,'_menu_item_url','');
/*!40000 ALTER TABLE `wp_samplesite_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_samplesite_posts`
--

DROP TABLE IF EXISTS `wp_samplesite_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_samplesite_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=606 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_samplesite_posts`
--

LOCK TABLES `wp_samplesite_posts` WRITE;
/*!40000 ALTER TABLE `wp_samplesite_posts` DISABLE KEYS */;
INSERT INTO `wp_samplesite_posts` VALUES (15,0,'2013-04-03 21:20:19','2013-04-03 21:20:19','The phonograph, record player, or gramophone, is a device introduced in 1877 for the recording and reproduction of sound recordings. The recordings played on such a device generally consist of wavy lines that are either scratched, engraved, or grooved onto a rotating cylinder or disc. As the cylinder or disc rotates, a stylus or needle traces the wavy lines and vibrates to reproduce the recorded sound waves.\n\n<h3>Edison Delivers</h3>\n\nThe phonograph was invented in 1877 by Thomas Edison. While other inventors had produced devices that could record sounds, Edison\'s phonograph was the first to be able to reproduce the recorded sound.\n\nHis phonograph originally recorded sound onto a tinfoil sheet phonograph cylinder, and could both record and reproduce sounds. Alexander Graham Bell\'s Volta Laboratory made several improvements in the 1880s, including the use of wax-coated cardboard cylinders, and a cutting stylus that moved from side to side in a \"zig zag\" pattern across the record.\n\n<h3>Berliner Iterates</h3>\n\nAt the turn of the 19th century, Emile Berliner initiated the transition from phonograph cylinders to gramophone records: flat, double-sided discs with a spiral groove running from the periphery to near the center. Other improvements were made throughout the years, including modifications to the turntable and its drive system, the needle and stylus, and the sound and equalization systems.','The Phonograph Is Still Relevant And Here\'s Why','The phonograph, record player, or gramophone, is a device introduced in 1877 for the recording and reproduction of sound recordings. The recordings played on such a device generally consist of wavy lines that are either scratched, engraved, or grooved onto a rotating cylinder or disc. As the cylinder or disc rotates, a stylus or needle traces the wavy lines and vibrates to reproduce the recorded sound waves.','publish','open','open','','phono','','','2013-04-03 21:20:19','2013-04-03 21:20:19','',0,'http://dev.themes/typable/?p=15',0,'post','',0),(20,0,'2012-09-29 03:07:10','2012-09-29 03:07:10','<div class=\"intro\">Drop me a line using the form below! I\'m not currently accepting any projects, not even for one million dollars. Unless you have a million dollars.</div>\n[contact-form-7 id=\"59\" title=\"Contact form 1\"]','Contact','','publish','open','closed','','contact','','','2012-09-29 03:07:10','2012-09-29 03:07:10','',0,'http://dev.themes/pocket/?page_id=10',0,'page','',0),(21,0,'2012-09-29 03:07:17','2012-09-29 03:07:17','<div class=\"intro\">WordPress Developer, Web Craftsman, Pixel Critic. Sometimes I take photos, spin vinyl records and drink really good coffee.</div>\n\nHello, friends. My name is Mike McAlister and I\'m a web designer and developer living in Northern California. I run a WordPress theme shop called Okay Themes and create some pretty neat stuff, including the theme you\'re looking at!\n\nTypable isn\'t bloated with 1,000 customization options. Instead, it\'s been hand crafted with the finest pixels from the ground up with simplicity in mind. To hell with themes that get in the way of your content! Typable has been designed and coded to put your content in the spotlight.\n\nTypable is my attempt to get back to the basics. The basics of design, the basics of code, the basics of writing. It\'s time to start making concise web products that better solve aesthetic and communicative dilemma.','About','','publish','open','closed','','about','','','2012-09-29 03:07:17','2012-09-29 03:07:17','',0,'http://dev.themes/pocket/?page_id=12',0,'page','',0),(35,0,'2013-03-16 08:14:01','2013-03-16 08:14:01','An acoustic guitar is a guitar that uses only an acoustic sound board to help transmitting the strings\' vibrational energy to the air in order to produce a sound. The initial timbre and harmonics of the sound in an acoustic guitar are produced by the plucking of the string. The frequencies produced depend on string length, mass, and tension. The soundboard will add various resonant modes due to its own mix of bracing, damping, and undamped resonance.\n\n<h3>The Soundboard</h3>\n\nThe acoustic guitar\'s soundboard also has a strong effect on the loudness of the guitar. No amplification actually occurs in this process, in the sense that no energy is externally added to increase the loudness of the sound as would be the case with an electronic amplifier.\n\n<h3>Impedance Matching</h3>\n\nAll the energy is provided by the plucking of the string. But without a soundboard, the string would just \"cut\" through the air without actually moving it much. The soundboard increases the surface of the vibrating area (initially just the strings), in a process called impedance matching. The soundboard has a much easier task to move the air than the string alone, because it is large - it can \"push\" the air better because the impedance of the soundboard is a little closer to the impedance of the air than the impedance of the strings. \n\nThis process increases the entire system\'s transfer efficiency and the energy initially confined to the string now moves much more air: a much louder sound is being emitted.','Acoustic, Electric and Everything in Between','An acoustic guitar is a guitar that uses only an acoustic sound board to help transmitting the strings\' vibrational energy to the air in order to produce a sound. The initial timbre and harmonics of the sound in an acoustic guitar are produced by the plucking of the string.','publish','open','open','','history-of-the-acoustic-guitar','','','2013-03-16 08:14:01','2013-03-16 08:14:01','',0,'http://dev.themes/pocket/?p=35',8,'post','',5),(91,0,'2013-03-30 07:10:51','2013-03-30 07:10:51','<iframe src=\"http://player.vimeo.com/video/63186969?title=0&amp;byline=0&amp;portrait=0&amp;badge=0&amp;color=ffffff\" height=\"444\" width=\"790\" allowfullscreen=\"\" frameborder=\"0\"></iframe>\n\nAlchemy is an influential philosophical tradition whose early practitioners\' claims to profound powers were known from antiquity. The defining objectives of alchemy are varied; these include the creation of the fabled philosopher\'s stone possessing powers including the capability of turning base metals into the noble metals gold or silver, as well as an elixir of life conferring youth and longevity. Western alchemy is recognized as a protoscience that contributed to the development of modern chemistry and medicine. Alchemists developed a framework of theory, terminology, experimental process and basic laboratory techniques that are still recognizable today. But alchemy differs from modern sci<a style=\"color: #555; border-bottom: none;\" href=\"http://cl.ly/O7pH\">e</a>nce in the inclusion of Hermetic principles and practices related to mythology, religion, and spirituality.\n<h3>Modern Discussions</h3>\nModern discussions of alchemy are generally split into an examination of its exoteric practical applications, and its esoteric aspects. The former is pursued by historians of the physical sciences who have examined the subject in terms of proto-chemistry, medicine, and charlatanism. The latter is of interest to the historians of esotericism, psychologists, spiritual and new age communities, and hermetic philosophers. The subject has also made an ongoing impact on literature and the arts. Despite the modern split, numerous sources stress an integration of esoteric and exoteric approaches to alchemy.\n<h3>Egyptian Technology</h3>\nHolmyard, when writing on exoteric aspects, states that they can not be properly appreciated if the esoteric is not always kept in mind. The prototype for this model can be found in Bolos of Mendes\' third century BCE work, Physika kai Mystika (\"On Physical and Mystical Matters\"). Marie-Louise von Franz tells us the double approach of Western alchemy was set from the start, when Greek philosophy was mixed with Egyptian and Mesopotamian technology. The technological, operative approach, which she calls extraverted, and the mystic, contemplative, psychological one, which she calls introverted are not mutually exclusive, but complementary instead, as meditation requires practice in the real world, and conversely.','Alchemy -- A Video About Transformation','<iframe src=\"http://player.vimeo.com/video/63186969?title=0&amp;byline=0&amp;portrait=0&amp;badge=0&amp;color=ffffff\" height=\"444\" width=\"790\" allowfullscreen=\"\" frameborder=\"0\"></iframe>\n\nAlchemy is an influential philosophical tradition whose early practitioners\' claims to profound powers were known from antiquity. The defining objectives of alchemy are varied; these include the creation of the fabled philosopher\'s stone possessing powers including the capability of turning base metals into the noble metals gold or silver, as well as an elixir of life conferring youth and longevity. ','publish','open','open','','travel-video','','','2013-03-30 07:10:51','2013-03-30 07:10:51','',0,'http://dev.themes/pocket/?p=91',6,'post','',2),(125,0,'2013-03-29 07:12:20','2013-03-29 07:12:20','This post shows some of the styled elements included with Typable. It shows basic text formatting options and a few other little extras. You can combine these little nuances to create a post that is truly unique.\n\n<hr />\n\n<h3>Basic Image Styling</h3>\n[caption id=\"attachment_525\" align=\"alignright\" width=\"150\"]<a href=\"http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/03/notes.jpg\"><img class=\"size-thumbnail wp-image-525\" alt=\"Right Aligned Image\" src=\"http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/03/notes-150x150.jpg\" width=\"150\" height=\"150\" /></a> Right Aligned Image[/caption]\n\nImages may be two-dimensional, such as a photograph, screen display, and as well as a three-dimensional, such as a statue or hologram. They may be captured by optical devices–such as cameras, mirrors, lenses, telescopes, microscopes, etc. and natural objects and phenomena, such as the human eye or water surfaces.\n\nThe word image is also used in the broader sense of any two-dimensional figure such as a map, a graph, a pie chart, or an abstract painting. In this wider sense, images can also be rendered manually, such as by drawing, painting, carving, rendered automatically by printing or computer graphics technology, or developed by a combination of methods, especially in a pseudo-photograph.\n\n<!--more-->\n\n[caption id=\"attachment_523\" align=\"alignleft\" width=\"150\"]<a href=\"http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/03/records1.jpg\"><img class=\"size-thumbnail wp-image-523\" alt=\"records1\" src=\"http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/03/records1-150x150.jpg\" width=\"150\" height=\"150\" /></a> Left Aligned Image[/caption]\n\nA volatile image is one that exists only for a short period of time. This may be a reflection of an object by a mirror, a projection of a camera obscura, or a scene displayed on a cathode ray tube. A fixed image, also called a hard copy, is one that has been <span class=\"highlight\">recorded on a material object</span>, such as paper or textile by photography or digital processes.\n\n<hr />\n\n<blockquote>Those of us that had been up all night were in no mood for coffee and donuts, we wanted strong drink. We were, after all, the absolute cream of the national sporting press. This is a blockquote.</blockquote>\n<div style=\"clear: both;\"></div>\n\n<hr />\n\n<h1>This Is What An H1 Looks Like</h1>\n<h2>This Is What An H2 Looks Like</h2>\n<h3>This Is What An H3 Looks Like</h3>\n<h4>This Is What An H4 Looks Like</h4>\n<h5>This Is What An H5 Looks Like</h5>\n<h6>This Is What An H6 Looks Like</h6>\n\n<hr />\n\n<h3>Just A Few List Items</h3>\n<ul>\n	<li>Donec non tortor in arcu mollis feugiat</li>\n	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</li>\n	<li>Donec id eros eget quam aliquam gravida</li>\n	<li>Vivamus convallis urna id felis</li>\n	<li>Nulla porta tempus sapien lorem ipsum</li>\n</ul>\n\n<hr />\n\n<ol>\n	<li>Donec non tortor in arcu mollis feugiat</li>\n	<li>Lorem ipsum dolor sit amet, consectetuer adipiscing elit</li>\n	<li>Donec id eros eget quam aliquam gravida</li>\n	<li>Vivamus convallis urna id felis</li>\n	<li>Nulla porta tempus sapien lorem ipsum</li>\n</ol>\n\n<hr />\n\n<h3>Thumbnail Gallery</h3>\n[gallery link=\"file\" columns=\"6\" ids=\"520,521,522,523,534\"]','Typable Post and Page Style Guide','This post shows some of the styled elements included with Typable. It shows basic text formatting options and a few other little extras. You can combine these little nuances to create a post that is truly unique. Or don\'t. What do I care?','publish','open','open','','post-styles','','','2013-03-29 07:12:20','2013-03-29 07:12:20','',0,'http://dev.themes/pocket/?p=125',4,'post','',2),(144,0,'2013-03-20 07:42:46','2013-03-20 07:42:46','<div class=\"intro\">With the emergence of Retina displays by Apple, you can bet the rest of the industry is going to follow suit very soon. After all, they have no choice if they want to compete.</div>\nRetina Display is a brand name used by Apple for liquid crystal displays which they claim to have a high enough pixel density that the human eye is unable to notice pixelation at a typical viewing distance. The term is used for several Apple products, including the iPhone, iPod Touch, iPad, and MacBook Pro. As the typical viewing distance would be different depending on each device\'s usage, the pixels per inch claimed as <em>retina</em> quality can be different for the smallest devices: greater than the mid-sized devices and greater than the larger devices.\n\n<code>.post code {\nbackground: #90979F;\ncolor: #fff;\npadding: 30px;\nwidth: 100%;\ndisplay: inline-block;\n}</code>\n\nThe displays are manufactured by different suppliers. Currently, the iPad\'s display comes from the same suppliers Samsung use whilst the suppliers of LG make the MacBook Pro display, along with the iPhone and iPod Touch displays. Apple has applied to register the term \"Retina\" as a trademark in regard to computers and mobile devices with the United States Patent and Trademark Office, Canadian Intellectual Property Office, and in Jamaica.\n<blockquote>Apple has applied to register the term \"Retina\" as a trademark in regard to computers and mobile devices.</blockquote>\nAccording to Raymond Soneira, president of DisplayMate Technologies, the resolution of the actual human retina is higher than claimed by Apple, working out to 477 pixels per inch at 12 inches (305 mm) from the eye. Phil Plait of Bad Astronomy wrote a response saying that \"if you have <em>[better than 20/20]</em> eyesight, then at one foot away the iPhone 4\'s pixels are resolved. The picture will look pixellated. If you have average eyesight, the picture will look just fine,\" and concluded, \"So in my opinion, what Jobs said was fine. Soneira, while technically correct, was being picky.\" Retinal neuroscientist Bryan Jones using a similar but more detailed analysis, came to a similar conclusion on his blog, stating \"...I’d find Apple’s claims stand up to what the human eye can perceive.\"','It Looks Better On Retina','Retina Display is a brand name used by Apple for liquid crystal displays which they claim to have a high enough pixel density that the human eye is unable to notice pixelation at a typical viewing distance. The term is used for several Apple products, including the iPhone, iPod Touch, iPad, and MacBook Pro. As the typical viewing distance would be different depending on each device\'s usage, the pixels per inch claimed as <em>retina</em> quality can be different for the smallest devices: greater than the mid-sized devices and greater than the larger devices.','publish','open','open','','it-looks-better-on-retina','','','2013-03-20 07:42:46','2013-03-20 07:42:46','',0,'http://dev.themes/pocket/?p=144',5,'post','',2),(148,0,'2013-03-18 07:09:28','2013-03-18 07:09:28','<div class=\"intro\">Today, San Francisco is renowned for its cool summers, fog, steep rolling hills, eclectic mix of architecture, and landmarks.</div>\nThe only consolidated city-county in California, it encompasses a land area of about 46.9 square miles on the northern end of the San Francisco Peninsula, giving it a density of about 17,179 people per square mile. It is the most densely settled large city in the state of California and the second-most densely populated major city in the United States after New York City.\n\nSan Francisco is the fourth most populous city in California and the 14th most populous city in the United States, with a population of 805,235 as of the 2010 Census. The city is also the financial and cultural hub of the larger San Jose-San Francisco-Oakland metropolitan area, with a population of 7.4 million.\n\n<blockquote>After three-quarters of the city was destroyed by the 1906 earthquake and fire, San Francisco was quickly rebuilt, hosting the Panama-Pacific International Exposition nine years later.</blockquote>\nSan Francisco (Spanish for \"Saint Francis\") was founded on June 29, 1776, when colonists from Spain established a fort at the Golden Gate and a missionnamed for St. Francis of Assisi a few miles away. The California Gold Rush of 1849 propelled the city into a period of rapid growth, increasing the population in one year from 1,000 to 25,000, and thus transforming it into the largest city on the West Coast at the time.\n\nAfter three-quarters of the city was destroyed by the 1906 earthquake and fire, San Francisco was quickly rebuilt, hosting the Panama-Pacific International Exposition nine years later. During World War II, San Francisco was the port of embarkation for service members shipping out to the Pacific Theater. After the war, the confluence of returning servicemen, massive immigration, liberalizing attitudes, and other factors led to the Summer of Love and the gay rights movement, cementing San Francisco as a center of liberal activism in the United States. Among major U.S. cities, the city has the largest percentage of gay, lesbian and bisexual residents, at 15.4%.','A Quick Trip To San Francisco','San Francisco is the fourth most populous city in California and the 14th most populous city in the United States, with a population of 805,235 as of the 2010 Census. The city is also the financial and cultural hub of the larger San Jose-San Francisco-Oakland metropolitan area, with a population of 7.4 million.','publish','open','open','','a-trip-to-the-san-francisco-bay','','','2013-03-18 07:09:28','2013-03-18 07:09:28','',0,'http://dev.themes/pocket/?p=148',7,'post','',2),(157,0,'2013-03-12 07:40:05','2013-03-12 07:40:05','Espresso is a concentrated beverage brewed by forcing a small amount of nearly boiling water under pressure through finely ground coffee beans. Espresso often has a thicker consistency than coffee brewed by other methods, a higher concentration of suspended and dissolved solids, and crema (meaning cream, but being a reference to the foam with a creamy texture that forms as a result of the pressure).\n<h3>Various Kinds of Espresso</h3>\nAs a result of the pressurized brewing process the flavors and chemicals in a typical cup of coffee are very concentrated. Espresso is the base for other drinks, such as a latte, cappuccino, macchiato, mocha, or americano. Espresso has more caffeine per unit volume than most beverages, but the usual serving size is smaller—a typical 60 mL (2 US fluid ounce) of espresso has 80 to 150 mg of caffeine, little less than the 95 to 200 mg of a standard 240 mL (8 US fluid ounces) cup of drip-brewed coffee.\n<h3>How It\'s Made</h3>\nEspresso is made by forcing very hot water under high pressure through finely ground, compacted coffee. Tamping down the coffee promotes the water\'s even penetration of the grounds. This process produces an almost syrupy beverage by extracting both solid and dissolved components.\n<blockquote>There is no universal standard defining the process of extracting espresso, but there are several published definitions.</blockquote>\nIt also produces the definitive crema, by emulsifying the oils in the ground coffee into a colloid, which does not occur in other brewing methods. There is no universal standard defining the process of extracting espresso, but there are several published definitions which attempt to place constraints on the amount and type of ground coffee used, the temperature and pressure of the water, and the rate of extraction.\n<h3>Espresso Machines</h3>\nGenerally, one uses an espresso machine to make espresso. The act of producing a shot of espresso is often termed \"pulling\" a shot, originating from lever espresso machines, which require pulling down a handle attached to a spring-loaded piston, forcing hot water through the coffee at high pressure. Today, however, it is more common for the pressure to be generated by an electric pump.','How To Prepare Espresso','Espresso is made by forcing very hot water under high pressure through finely ground, compacted coffee. Tamping down the coffee promotes the water\'s even penetration of the grounds. This process produces an almost syrupy beverage by extracting both solid and dissolved components. ','publish','open','open','','how-to-prepare-espresso','','','2013-03-12 07:40:05','2013-03-12 07:40:05','',0,'http://dev.themes/pocket/?p=157',9,'post','',1),(311,0,'2012-10-31 21:49:50','2012-10-31 21:49:50','Welcome to the archives. You can browse my latest posts, or go back in time and see what I wrote weeks, months, or years ago. You can also browse by category and stuff.','Archives','','publish','open','open','','archives','','','2012-10-31 21:49:50','2012-10-31 21:49:50','',0,'http://dev.themes/fixed/?page_id=311',0,'page','',0),(364,0,'2013-03-28 22:10:57','2013-03-28 22:10:57','<iframe src=\"http://player.vimeo.com/video/62980495?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff\" height=\"444\" width=\"790\" allowfullscreen=\"\" frameborder=\"0\"></iframe>\n\nNew Zealand is an island country in the southwestern Pacific Ocean. The country geographically comprises two main landmasses ‒ that of the North and South Islands ‒ and numerous smaller islands. New Zealand is situated some 1,500 kilometres (900 mi) east of Australia across the Tasman Sea and roughly 1,000 kilometres (600 mi) south of the Pacific island nations of New Caledonia, Fiji, and Tonga. Because of its remoteness, it was one of the last lands to be settled by humans.\n<h3>Polynesians in New Zealand</h3>\nPolynesians settled New Zealand in 1250–1300 CE and developed a distinctive Māori culture, and Europeans first made contact in 1642 CE. The introduction of potatoes and muskets triggered upheaval among Māori early during the 19th century, which led to the inter-tribal Musket Wars. In 1840 the British and Māori signed a treaty making New Zealand a colony of the British Empire. Immigrant numbers increased sharply and conflicts escalated into the New Zealand Wars, which resulted in much Māori land being confiscated in the mid North Island. Economic depressions were followed by periods of political reform, with women gaining the vote during the 1890s, and a welfare state being established from the 1930s. After World War II, New Zealand joined Australia and the United States in the ANZUS security treaty, although the United States later, until 2010, suspended the treaty after New Zealand banned nuclear weapons.\n<h3>UKUSA Agreement</h3>\nNew Zealand is part of the intelligence sharing among the Anglosphere countries, the UKUSA Agreement. New Zealanders enjoyed one of the highest standards of living in the world in the 1950s, but the 1970s saw a deep recession, worsened by oil shocks and the United Kingdom\'s entry into the European Economic Community. The country underwent major economic changes during the 1980s, which transformed it from a protectionist to a liberalised free trade economy. Markets for New Zealand\'s agricultural exports have diversified greatly since the 1970s, with once-dominant exports of wool being overtaken by dairy products, meat, and recently wine.','New Zealand Landscapes Timelapse','<iframe src=\"http://player.vimeo.com/video/62980495?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff\" height=\"444\" width=\"790\" allowfullscreen=\"\" frameborder=\"0\"></iframe>\n\nNew Zealand is an island country in the southwestern Pacific Ocean. The country geographically comprises two main landmasses ‒ that of the North and South Islands ‒ and numerous smaller islands. New Zealand is situated some 1,500 kilometres east of Australia across the Tasman Sea and roughly 1,000 kilometres south of the Pacific island nations of New Caledonia, Fiji, and Tonga. Because of its remoteness, it was one of the last lands to be settled by humans.','publish','open','open','','new-zealand','','','2013-03-28 22:10:57','2013-03-28 22:10:57','',0,'http://themes.array.is/fixed/?p=364',3,'post','',1),(457,0,'2013-04-01 05:27:43','2013-04-01 05:27:43','Time travel is the concept of moving between different points in time in a manner analogous to moving between different points in space. Time travel could hypothetically involve moving backward in time to a moment earlier than the starting point, or forward to the future of that point without the need for the traveler to experience the intervening period (at least not at the normal rate). Any technological device – whether fictional, hypothetical or actual – that would be used to achieve time travel is commonly known as a time machine.\n\n<h3>The Consensus</h3>\nThere is no widespread agreement as to which written work should be recognized as the earliest example of a time travel story, since a number of early works feature elements ambiguously suggestive of time travel. Ancient folk tales and myths sometimes involved something akin to travelling forward in time; for example, in Hindu mythology, the Mahabharata mentions the story of the King Revaita, who travels to heaven to meet the creator Brahma and is shocked to learn that many ages have passed when he returns to Earth.\n<h3>Going Backwards</h3>\nAnother one of the earliest known stories to involve traveling forward in time to a distant future was the Japanese tale of \"Urashima Tarō\", first described in the Nihongi. It was about a young fisherman named Urashima Taro who visits an undersea palace and stays there for three days. After returning home to his village, he finds himself 300 years in the future, when he is long forgotten, his house in ruins, and his family long dead. Another very old example of this type of story can be found in the Talmud with the story of Honi HaM\'agel who went to sleep for 70 years and woke up to a world where his grandchildren were grandparents and where all his friends and family were dead.','Time Travel And You -- A Beginners Guide','Time travel could hypothetically involve moving backward in time to a moment earlier than the starting point, or forward to the future of that point without the need for the traveler to experience the intervening period (at least not at the normal rate). Any technological device – whether fictional, hypothetical or actual – that would be used to achieve time travel is commonly known as a time machine.','publish','open','open','','time-travel','','','2013-04-01 05:27:43','2013-04-01 05:27:43','',0,'http://dev.themes/typable/?p=1',1,'post','',3),(490,0,'2013-04-04 23:31:48','2013-04-04 23:31:48','<span class=\"intro\">They came to be perceived by many fans and cultural observers as an embodiment of the ideals shared by the era’s sociocultural revolutions.</span>\n\nThe Beatles were an English rock band formed in Liverpool in 1960. They became the most commercially successful and critically acclaimed act in the history of popular music. Their best-known lineup consisted of John Lennon, Paul McCartney, George Harrison, and Ringo Starr. Rooted in skiffle and 1950s rock and roll, they later utilised several genres, ranging from pop ballads to psychedelic rock, often incorporating classical and other elements in innovative ways. In the early 1960s, their enormous popularity first emerged as “Beatlemania”, but as their songwriting grew in sophistication, they came to be perceived by many fans and cultural observers as an embodiment of the ideals shared by the era’s sociocultural revolutions.\n\n<h3>Via Liverpool</h3>\nThey built their reputation playing clubs in Liverpool and Hamburg over a three-year period from 1960. Manager Brian Epstein moulded them into a professional act and producer George Martin enhanced their musical potential. They gained popularity in the United Kingdom after their first single, “Love Me Do”, became a modest hit in late 1962. They acquired the nickname the “Fab Four” as Beatlemania grew in Britain over the following year, and by early 1964 they had become international stars, leading the “British Invasion” into the United States pop market.\n<h3>The Later Years</h3>\nFrom 1965 on, the Beatles produced what many critics consider their finest material, including the innovative and widely influential albums Rubber Soul (1965), Revolver (1966), Sgt Pepper’s Lonely Hearts Club Band (1967), The Beatles (1968), and Abbey Road (1969). After their break-up in 1970, they each enjoyed successful musical careers. Lennon died in 1980 after having been shot by a deranged former fan, and Harrison died of lung cancer in 2001. McCartney and Starr remain active.','The Beatles Were Just A Band From Liverpool','The Beatles were an English rock band formed in Liverpool in 1960. They became the most commercially successful and critically acclaimed act in the history of popular music. Their best-known lineup consisted of John Lennon, Paul McCartney, George Harrison, and Ringo Starr. Rooted in skiffle and 1950s rock and roll, they later utilised several genres, ranging from pop ballads to psychedelic rock.','publish','open','open','','the-beatles','','','2013-04-04 23:31:48','2013-04-04 23:31:48','',0,'http://themes.array.is/typable/?p=490',2,'post','',2),(496,0,'2013-04-05 23:38:16','2013-04-05 23:38:16','','beatles','','inherit','open','open','','beatles','','','2013-04-05 23:38:16','2013-04-05 23:38:16','',490,'http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/04/beatles.jpg',0,'attachment','image/jpeg',0),(520,0,'2013-04-06 00:11:50','2013-04-06 00:11:50','','books1','','inherit','open','open','','books1','','','2013-04-06 00:11:50','2013-04-06 00:11:50','',125,'http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/03/books1.jpg',0,'attachment','image/jpeg',0),(521,0,'2013-04-06 00:11:52','2013-04-06 00:11:52','','code1','','inherit','open','open','','code1','','','2013-04-06 00:11:52','2013-04-06 00:11:52','',125,'http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/03/code1.jpg',0,'attachment','image/jpeg',0),(522,0,'2013-04-06 00:11:54','2013-04-06 00:11:54','','DSCF06571','','inherit','open','open','','dscf06571','','','2013-04-06 00:11:54','2013-04-06 00:11:54','',125,'http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/03/DSCF06571.jpg',0,'attachment','image/jpeg',0),(523,0,'2013-04-06 00:11:56','2013-04-06 00:11:56','','records1','','inherit','open','open','','records1','','','2013-04-06 00:11:56','2013-04-06 00:11:56','',125,'http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/03/records1.jpg',0,'attachment','image/jpeg',0),(525,0,'2013-04-06 00:18:02','2013-04-06 00:18:02','','Taking Notes','Right Aligned Image','inherit','open','open','','notes','','','2013-04-06 00:18:02','2013-04-06 00:18:02','',125,'http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/03/notes.jpg',0,'attachment','image/jpeg',0),(532,0,'2013-04-06 00:23:19','2013-04-06 00:23:19','','notes','','inherit','open','open','','notes-2','','','2013-04-06 00:23:19','2013-04-06 00:23:19','',125,'http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/03/notes1.jpg',0,'attachment','image/jpeg',0),(534,0,'2013-04-06 00:25:31','2013-04-06 00:25:31','','phone','','inherit','open','open','','phone','','','2013-04-06 00:25:31','2013-04-06 00:25:31','',125,'http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/03/phone.jpg',0,'attachment','image/jpeg',0),(572,0,'2013-04-09 01:04:21','2013-04-09 01:04:21','','sightglass','','inherit','open','open','','sightglass','','','2013-04-09 01:04:21','2013-04-09 01:04:21','',157,'http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/03/sightglass.jpg',0,'attachment','image/jpeg',0),(573,0,'2014-05-15 17:01:44','2014-05-15 17:01:44','','Home','','publish','open','open','','home','','','2014-05-15 17:01:44','2014-05-15 17:01:44','',0,'http://samplesite.testdriiive.dev/?p=573',1,'nav_menu_item','',0),(589,0,'2013-07-08 10:15:31','2013-07-08 10:15:31','','vinyl','','inherit','open','open','','vinyl','','','2013-07-08 10:15:31','2013-07-08 10:15:31','',15,'http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/04/vinyl.jpg',0,'attachment','image/jpeg',0),(591,0,'2013-07-08 10:21:14','2013-07-08 10:21:14','','clock','','inherit','open','open','','clock','','','2013-07-08 10:21:14','2013-07-08 10:21:14','',457,'http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/04/clock.jpg',0,'attachment','image/jpeg',0),(593,0,'2013-07-08 10:24:29','2013-07-08 10:24:29','','imac','','inherit','open','open','','imac','','','2013-07-08 10:24:29','2013-07-08 10:24:29','',144,'http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/03/imac.jpg',0,'attachment','image/jpeg',0),(597,0,'2013-07-08 10:28:18','2013-07-08 10:28:18','','cliffhouse','','inherit','open','open','','cliffhouse','','','2013-07-08 10:28:18','2013-07-08 10:28:18','',148,'http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/03/cliffhouse.jpg',0,'attachment','image/jpeg',0),(599,0,'2013-07-08 10:29:24','2013-07-08 10:29:24','','guitar','','inherit','open','open','','guitar','','','2013-07-08 10:29:24','2013-07-08 10:29:24','',35,'http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/03/guitar.jpg',0,'attachment','image/jpeg',0),(601,0,'2013-07-08 10:32:08','2013-07-08 10:32:08','','tools','','inherit','open','open','','tools','','','2013-07-08 10:32:08','2013-07-08 10:32:08','',125,'http://samplesite.testdriiive.dev/content/uploads/samplesite/2013/03/tools.jpg',0,'attachment','image/jpeg',0),(602,0,'2014-05-15 17:01:51','2014-05-15 17:01:51','','Style Guide','','publish','open','open','','style-guide','','','2014-05-15 17:01:51','2014-05-15 17:01:51','',0,'http://samplesite.testdriiive.dev/?p=602',3,'nav_menu_item','',0),(603,0,'2014-05-15 17:01:51','2014-05-15 17:01:51',' ','','','publish','open','open','','603','','','2014-05-15 17:01:51','2014-05-15 17:01:51','',0,'http://samplesite.testdriiive.dev/?p=603',2,'nav_menu_item','',0),(604,0,'2014-05-15 17:01:51','2014-05-15 17:01:51',' ','','','publish','open','open','','604','','','2014-05-15 17:01:51','2014-05-15 17:01:51','',0,'http://samplesite.testdriiive.dev/?p=604',4,'nav_menu_item','',0),(605,0,'2014-05-15 17:01:51','2014-05-15 17:01:51',' ','','','publish','open','open','','605','','','2014-05-15 17:01:51','2014-05-15 17:01:51','',0,'http://samplesite.testdriiive.dev/?p=605',5,'nav_menu_item','',0);
/*!40000 ALTER TABLE `wp_samplesite_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_samplesite_term_relationships`
--

DROP TABLE IF EXISTS `wp_samplesite_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_samplesite_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_samplesite_term_relationships`
--

LOCK TABLES `wp_samplesite_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_samplesite_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_samplesite_term_relationships` VALUES (15,3,0),(15,8,0),(35,3,0),(35,8,0),(35,12,0),(35,14,0),(91,10,0),(91,11,0),(91,18,0),(91,42,0),(125,2,0),(125,10,0),(144,5,0),(144,8,0),(144,21,0),(144,22,0),(148,5,0),(148,9,0),(148,19,0),(148,29,0),(157,5,0),(157,9,0),(157,39,0),(157,41,0),(364,9,0),(364,11,0),(364,24,0),(457,7,0),(457,8,0),(490,3,0),(490,5,0),(573,46,0),(602,46,0),(603,46,0),(604,46,0),(605,46,0);
/*!40000 ALTER TABLE `wp_samplesite_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_samplesite_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_samplesite_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_samplesite_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_samplesite_term_taxonomy`
--

LOCK TABLES `wp_samplesite_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_samplesite_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_samplesite_term_taxonomy` VALUES (1,1,'category','',0,0),(2,2,'category','',0,1),(3,3,'category','',0,3),(4,4,'category','',0,0),(5,5,'category','',0,4),(6,6,'category','',0,0),(7,7,'category','',0,1),(8,8,'category','',0,4),(9,9,'category','',0,3),(10,10,'category','',0,2),(11,11,'category','',0,2),(12,12,'post_tag','',0,1),(13,13,'post_tag','',0,0),(14,14,'post_tag','',0,1),(15,15,'post_tag','',0,0),(16,16,'post_tag','',0,0),(17,17,'post_tag','',0,0),(18,18,'post_tag','',0,1),(19,19,'post_tag','',0,1),(20,20,'post_tag','',0,0),(21,21,'post_tag','',0,1),(22,22,'post_tag','',0,1),(23,23,'post_tag','',0,0),(24,24,'post_tag','',0,1),(25,25,'post_tag','',0,0),(26,26,'post_tag','',0,0),(27,27,'post_tag','',0,0),(28,28,'post_tag','',0,0),(29,29,'post_tag','',0,1),(30,30,'post_tag','',0,0),(31,4,'post_tag','',0,0),(32,31,'post_tag','',0,0),(33,32,'post_tag','',0,0),(34,33,'post_tag','',0,0),(35,34,'post_tag','',0,0),(36,35,'post_tag','',0,0),(37,36,'post_tag','',0,0),(38,37,'post_tag','',0,0),(39,38,'post_tag','',0,1),(40,39,'post_tag','',0,0),(41,40,'post_tag','',0,1),(42,9,'post_tag','',0,1),(43,41,'post_tag','',0,0),(44,42,'post_tag','',0,0),(45,43,'post_tag','',0,0),(46,44,'nav_menu','',0,5);
/*!40000 ALTER TABLE `wp_samplesite_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_samplesite_terms`
--

DROP TABLE IF EXISTS `wp_samplesite_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_samplesite_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_samplesite_terms`
--

LOCK TABLES `wp_samplesite_terms` WRITE;
/*!40000 ALTER TABLE `wp_samplesite_terms` DISABLE KEYS */;
INSERT INTO `wp_samplesite_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'Design','design',0),(3,'Music','music',0),(4,'Ninjas','ninjas',0),(5,'Photography','photography',0),(6,'Quotables','quotables',0),(7,'Science','science',0),(8,'Technology','technology',0),(9,'Travel','travel',0),(10,'Typography','typography',0),(11,'Video','video',0),(12,'acoustic','acoustic',0),(13,'albums','albums',0),(14,'amps','amps',0),(15,'Apple','apple',0),(16,'Bob Dylan','bob-dylan',0),(17,'coffee','coffee',0),(18,'Documentary','documentary',0),(19,'Food Trucks','food-trucks',0),(20,'Forest','forest',0),(21,'iPad','ipad',0),(22,'iPhone','iphone',0),(23,'iPhone 5','iphone-5',0),(24,'japan','japan',0),(25,'Lennon','lennon',0),(26,'Lettering','lettering',0),(27,'Letterpress','letterpress',0),(28,'Magazines','magazines',0),(29,'Mission','mission',0),(30,'Movies','movies',0),(31,'Oil','oil',0),(32,'Panorama','panorama',0),(33,'Paris','paris',0),(34,'Peace','peace',0),(35,'Politics','politics',0),(36,'Simplicity','simplicity',0),(37,'Skating','skating',0),(38,'Subway','subway',0),(39,'Sunny','sunny',0),(40,'Transit','transit',0),(41,'Trees','trees',0),(42,'vinyl','vinyl',0),(43,'Yellow','yellow',0),(44,'Header','header',0);
/*!40000 ALTER TABLE `wp_samplesite_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_samplesite_usermeta`
--

DROP TABLE IF EXISTS `wp_samplesite_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_samplesite_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_samplesite_usermeta`
--

LOCK TABLES `wp_samplesite_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_samplesite_usermeta` DISABLE KEYS */;
INSERT INTO `wp_samplesite_usermeta` VALUES (1,1,'first_name','Sample'),(2,1,'last_name','Site'),(3,1,'nickname','samplesite'),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'wp_samplesite_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'wp_samplesite_user_level','10'),(12,1,'dismissed_wp_pointers','wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),(13,1,'show_welcome_panel','1');
/*!40000 ALTER TABLE `wp_samplesite_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_samplesite_users`
--

DROP TABLE IF EXISTS `wp_samplesite_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_samplesite_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_samplesite_users`
--

LOCK TABLES `wp_samplesite_users` WRITE;
/*!40000 ALTER TABLE `wp_samplesite_users` DISABLE KEYS */;
INSERT INTO `wp_samplesite_users` VALUES (1,'samplesite','$P$Bx/cZEp4kCTAhygoij0OPmdhXCqVhz0','samplesite','samplesite@testdriiive.com','','2014-05-15 17:01:23','',0,'Sample Site');
/*!40000 ALTER TABLE `wp_samplesite_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'first_name',''),(2,1,'last_name',''),(3,1,'nickname','daniel'),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'comment_shortcuts','false'),(7,1,'admin_color','fresh'),(8,1,'use_ssl','0'),(9,1,'show_admin_bar_front','true'),(10,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(11,1,'wp_user_level','10'),(12,1,'dismissed_wp_pointers','wp350_media,wp360_revisions,wp360_locks,wp390_widgets'),(13,1,'show_welcome_panel','1'),(14,2,'first_name','Sample'),(15,2,'last_name','Site'),(16,2,'nickname','samplesite'),(17,2,'description',''),(18,2,'rich_editing','true'),(19,2,'comment_shortcuts','false'),(20,2,'admin_color','fresh'),(21,2,'use_ssl','0'),(22,2,'show_admin_bar_front','true'),(23,2,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}'),(24,2,'wp_user_level','0'),(25,2,'signup_theme','editor');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'daniel','$P$BVlTZma3iMgjehBCE24NHYiyiCe4bR.','daniel','d@danielbachhuber.com','','2014-05-15 17:01:03','',0,'daniel'),(2,'samplesite','$P$BjXJ22EhxhPzpi8MXdETxeSgUnsmLx/','samplesite','samplesite@testdriiive.com','','2014-05-15 17:01:22','',0,'Sample Site');
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

-- Dump completed on 2014-05-15 10:21:13
