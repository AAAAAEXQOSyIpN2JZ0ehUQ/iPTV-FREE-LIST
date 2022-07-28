-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: xtream_iptvpro
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devices` (
  `device_id` int(11) NOT NULL AUTO_INCREMENT,
  `device_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_header` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `device_conf` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `device_footer` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `default_output` int(11) NOT NULL DEFAULT '0',
  `copy_text` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`device_id`),
  KEY `device_key` (`device_key`),
  KEY `default_output` (`default_output`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devices`
--

LOCK TABLES `devices` WRITE;
/*!40000 ALTER TABLE `devices` DISABLE KEYS */;
INSERT INTO `devices` VALUES (1,'m3u','m3u','tv_channels_{USERNAME}.m3u','#EXTM3U','#EXTINF:-1,{CHANNEL_NAME}\r\n{URL}','',2,NULL),(2,'m3u With Options','m3u_plus','tv_channels_{USERNAME}_plus.m3u','#EXTM3U','#EXTINF:-1 tvg-id=\"{CHANNEL_ID}\" tvg-name=\"{CHANNEL_NAME}\" tvg-logo=\"{CHANNEL_ICON}\" group-title=\"{CATEGORY}\",{CHANNEL_NAME}\r\n{URL}','',2,NULL),(3,'Simple List','simple','simple_{USERNAME}.txt','','{URL} #Name: {CHANNEL_NAME}','',2,NULL),(4,'Enigma 2 OE 1.6 Auto Script','enigma216_script','iptv.sh','USERNAME=\"{USERNAME}\";PASSWORD=\"{PASSWORD}\";bouquet=\"{BOUQUET_NAME}\";directory=\"/etc/enigma2/iptv.sh\";url=\"{SERVER_URL}get.php?username=$USERNAME&password=$PASSWORD&type=enigma16&output={OUTPUT_KEY}\";rm /etc/enigma2/userbouquet.\"$bouquet\"__tv_.tv;wget -O /etc/enigma2/userbouquet.\"$bouquet\"__tv_.tv $url;if ! cat /etc/enigma2/bouquets.tv | grep -v grep | grep -c $bouquet > /dev/null;then echo \"[+]Creating Folder for iptv and rehashing...\";cat /etc/enigma2/bouquets.tv | sed -n 1p > /etc/enigma2/new_bouquets.tv;echo \'#SERVICE 1:7:1:0:0:0:0:0:0:0:FROM BOUQUET \"userbouquet.\'$bouquet\'__tv_.tv\" ORDER BY bouquet\' >> /etc/enigma2/new_bouquets.tv; cat /etc/enigma2/bouquets.tv | sed -n \'2,$p\' >> /etc/enigma2/new_bouquets.tv;rm /etc/enigma2/bouquets.tv;mv /etc/enigma2/new_bouquets.tv /etc/enigma2/bouquets.tv;fi;rm /usr/bin/enigma2_pre_start.sh;echo \"writing to the file.. NO NEED FOR REBOOT\";echo \"/bin/sh \"$directory\" > /dev/null 2>&1 &\" > /usr/bin/enigma2_pre_start.sh;chmod 777 /usr/bin/enigma2_pre_start.sh;wget -qO - \"http://127.0.0.1/web/servicelistreload?mode=2\";wget -qO - \"http://127.0.0.1/web/servicelistreload?mode=2\";','','',2,'wget -O /etc/enigma2/iptv.sh {DEVICE_LINK} && chmod 777 /etc/enigma2/iptv.sh && /etc/enigma2/iptv.sh'),(5,'Enigma 2 OE 2.0 Auto Script','enigma22_script','iptv.sh','USERNAME=\"{USERNAME}\";PASSWORD=\"{PASSWORD}\";bouquet=\"{BOUQUET_NAME}\";directory=\"/etc/enigma2/iptv.sh\";url=\"{SERVER_URL}get.php?username=$USERNAME&password=$PASSWORD&type=dreambox&output={OUTPUT_KEY}\";rm /etc/enigma2/userbouquet.\"$bouquet\"__tv_.tv;wget -O /etc/enigma2/userbouquet.\"$bouquet\"__tv_.tv $url;if ! cat /etc/enigma2/bouquets.tv | grep -v grep | grep -c $bouquet > /dev/null;then echo \"[+]Creating Folder for iptv and rehashing...\";cat /etc/enigma2/bouquets.tv | sed -n 1p > /etc/enigma2/new_bouquets.tv;echo \'#SERVICE 1:7:1:0:0:0:0:0:0:0:FROM BOUQUET \"userbouquet.\'$bouquet\'__tv_.tv\" ORDER BY bouquet\' >> /etc/enigma2/new_bouquets.tv; cat /etc/enigma2/bouquets.tv | sed -n \'2,$p\' >> /etc/enigma2/new_bouquets.tv;rm /etc/enigma2/bouquets.tv;mv /etc/enigma2/new_bouquets.tv /etc/enigma2/bouquets.tv;fi;rm /usr/bin/enigma2_pre_start.sh;echo \"writing to the file.. NO NEED FOR REBOOT\";echo \"/bin/sh \"$directory\" > /dev/null 2>&1 &\" > /usr/bin/enigma2_pre_start.sh;chmod 777 /usr/bin/enigma2_pre_start.sh;wget -qO - \"http://127.0.0.1/web/servicelistreload?mode=2\";wget -qO - \"http://127.0.0.1/web/servicelistreload?mode=2\";','','',2,'wget -O /etc/enigma2/iptv.sh {DEVICE_LINK} && chmod 777 /etc/enigma2/iptv.sh && /etc/enigma2/iptv.sh'),(6,'Enigma 2 OE 1.6','enigma16','userbouquet.favourites.tv','#NAME {BOUQUET_NAME}','#SERVICE 4097{SID}{URL#:}\r\n#DESCRIPTION {CHANNEL_NAME}','',2,NULL),(7,'DreamBox OE 2.0','dreambox','userbouquet.favourites.tv','#NAME {BOUQUET_NAME}','#SERVICE {ESR_ID}{SID}{URL#:}\r\n#DESCRIPTION {CHANNEL_NAME}','',2,NULL),(8,'GigaBlue','gigablue','userbouquet.favourites.tv','#NAME {BOUQUET_NAME}','#SERVICE 4097:0:1:0:0:0:0:0:0:0:{URL#:}\r\n#DESCRIPTION {CHANNEL_NAME}','',2,NULL),(9,'Octagon','octagon','internettv.feed','','[TITLE]\r\n{CHANNEL_NAME}\r\n[URL]\r\n{URL}\r\n[DESCRIPTION]\r\nIPTV\r\n[TYPE]\r\nLive','',2,NULL),(10,'Octagon Auto Script','octagon_script','iptv','USERNAME=\"{USERNAME}\";PASSWORD=\"{PASSWORD}\";url=\"{SERVER_URL}get.php?username=$USERNAME&password=$PASSWORD&type=octagon&output={OUTPUT_KEY}\";rm /var/freetvplus/internettv.feed;wget -O /var/freetvplus/internettv.feed1 $url;chmod 777 /var/freetvplus/internettv.feed1;awk -v BINMODE=3 -v RS=\'(\\r\\n|\\n)\' -v ORS=\'\\n\' \'{ print }\' /var/freetvplus/internettv.feed1 > /var/freetvplus/internettv.feed;rm /var/freetvplus/internettv.feed1','','',2,'wget -qO /var/bin/iptv {DEVICE_LINK}'),(13,'Starlive v3/StarSat HD6060/AZclass','starlivev3','iptvlist.txt','','{CHANNEL_NAME},{URL}','',2,NULL),(14,'MediaStar / StarLive v4','mediastar','tvlist.txt','','{CHANNEL_NAME} {URL}','',2,NULL),(15,'StarLive v5','starlivev5','channel.jason','','','',2,NULL),(16,'WebTV List','webtvlist','webtv list.txt','','Channel name:{CHANNEL_NAME}\r\nURL:{URL}','[Webtv channel END]',2,NULL),(18,'Ariva','ariva','ariva_{USERNAME}.txt','','{CHANNEL_NAME},{URL}','',2,NULL),(19,'Spark','spark','webtv_usr.xml','<?xml version=\"1.0\"?>\r\n<webtvs>','<webtv title=\"{CHANNEL_NAME}\" urlkey=\"0\" url=\"{URL}\" description=\"\" iconsrc=\"{CHANNEL_ICON}\" iconsrc_b=\"\" group=\"0\" type=\"0\" />','</webtvs>',2,NULL),(20,'Geant/Starsat/Tiger/Qmax/Hyper/Royal','gst','{USERNAME}_list.txt','','I: {URL} {CHANNEL_NAME}','',2,NULL),(21,'Fortec999/Prifix9400/Starport','fps','Royal.cfg','','IPTV: { {CHANNEL_NAME} } { {URL} }','',2,NULL),(22,'Revolution 60/60 | Sunplus','revosun','network_iptv.cfg','','IPTV: { {CHANNEL_NAME} } { {URL} }','',2,NULL),(23,'Zorro','zorro','iptv.cfg','<NETDBS_TXT_VER_1>','IPTV: { {CHANNEL_NAME} } { {URL} } -HIDE_URL','',2,NULL);
/*!40000 ALTER TABLE `devices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-21 17:17:51
