# SQL Manager 2007 Lite for MySQL 4.4.2.1
# ---------------------------------------
# Host     : localhost
# Port     : 3306
# Database : movie_db


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

SET FOREIGN_KEY_CHECKS=0;

CREATE DATABASE `movie_db`
    CHARACTER SET 'utf8'
    COLLATE 'utf8_general_ci';

USE `movie_db`;

#
# Structure for the `actor` table : 
#

CREATE TABLE `actor` (
  `actor_id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_name` varchar(20) DEFAULT NULL,
  `actor_pic` varchar(30) DEFAULT NULL,
  `actor_summary` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Structure for the `user` table : 
#

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) NOT NULL,
  `phone` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `birthday` date DEFAULT NULL,
  `avatar` varchar(40) DEFAULT NULL,
  `gender` varchar(4) DEFAULT NULL,
  `signature` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Structure for the `actor_comment` table : 
#

CREATE TABLE `actor_comment` (
  `actorcomment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `actor_id` int(11) DEFAULT NULL,
  `comment_text` varchar(200) DEFAULT NULL,
  `comment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`actorcomment_id`),
  KEY `user_id` (`user_id`),
  KEY `actor_id` (`actor_id`),
  CONSTRAINT `actor_comment_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `actor_comment_fk1` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

#
# Structure for the `movie` table : 
#

CREATE TABLE `movie` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(20) DEFAULT NULL,
  `movie_summary` varchar(300) DEFAULT NULL,
  `movie_pic` varchar(40) DEFAULT NULL,
  `movie_type` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` int(5) DEFAULT NULL,
  `rate` float(9,3) DEFAULT NULL,
  PRIMARY KEY (`movie_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Structure for the `actor_movie` table : 
#

CREATE TABLE `actor_movie` (
  `ac_id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  PRIMARY KEY (`ac_id`),
  KEY `actor_id` (`actor_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `actor_movie_fk` FOREIGN KEY (`actor_id`) REFERENCES `actor` (`actor_id`),
  CONSTRAINT `actor_movie_fk1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Structure for the `type` table : 
#

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Structure for the `favor` table : 
#

CREATE TABLE `favor` (
  `favor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`favor_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `type_id` (`type_id`) USING BTREE,
  CONSTRAINT `favor_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `favor_fk1` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

#
# Structure for the `friend` table : 
#

CREATE TABLE `friend` (
  `friend_id` int(11) NOT NULL AUTO_INCREMENT,
  `userid_1` int(11) NOT NULL,
  `userid_2` int(11) NOT NULL,
  PRIMARY KEY (`friend_id`) USING BTREE,
  KEY `userid_1` (`userid_1`) USING BTREE,
  KEY `userid_2` (`userid_2`) USING BTREE,
  CONSTRAINT `friend_fk` FOREIGN KEY (`userid_1`) REFERENCES `user` (`user_id`),
  CONSTRAINT `friend_fk1` FOREIGN KEY (`userid_2`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Structure for the `movie_comment` table : 
#

CREATE TABLE `movie_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `comment_text` varchar(300) DEFAULT NULL,
  `comment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`comment_id`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `movie_id` (`movie_id`) USING BTREE,
  CONSTRAINT `movie_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `movie_comment_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Data for the `actor` table  (LIMIT 0,500)
#

INSERT INTO `actor` (`actor_id`, `actor_name`, `actor_pic`, `actor_summary`) VALUES 
  (1,'新垣结衣','images/gakki.jpg','waifu'),
  (2,'渣渣辉','images/zhazhahui.jpg','是兄弟就来砍我'),
  (3,'吴京','images/wujing.jpg','爱慕拆妮子');
COMMIT;

#
# Data for the `user` table  (LIMIT 0,500)
#

INSERT INTO `user` (`user_id`, `email`, `phone`, `username`, `password`, `birthday`, `avatar`, `gender`, `signature`) VALUES 
  (1,'11',11,'侵权','11',NULL,NULL,NULL,NULL),
  (2,'123',123,'啊啊啊','123',NULL,NULL,NULL,NULL),
  (3,'222',222,'111','222',NULL,NULL,NULL,NULL),
  (4,'123',1,'烧烧烧','111',NULL,NULL,NULL,NULL),
  (5,'123',233,'爆炸','333',NULL,NULL,NULL,NULL);
COMMIT;

#
# Data for the `actor_comment` table  (LIMIT 0,500)
#

INSERT INTO `actor_comment` (`actorcomment_id`, `user_id`, `actor_id`, `comment_text`, `comment_time`) VALUES 
  (13,1,1,'啊','2018-05-17 08:44:16'),
  (14,1,1,'很好','2018-05-17 08:45:20'),
  (15,1,1,'很好','2018-05-17 08:46:52'),
  (16,1,1,'啊','2018-05-17 08:55:02'),
  (17,1,1,'AA','2018-05-17 08:57:28'),
  (18,1,1,'去','2018-05-17 09:06:50'),
  (19,1,1,'啊','2018-05-17 09:46:54'),
  (20,1,1,'1','2018-05-17 09:49:48'),
  (21,1,1,'啊','2018-05-17 09:57:27'),
  (22,1,1,'很好','2018-05-17 09:59:45'),
  (23,1,1,'啊','2018-05-17 10:01:04'),
  (24,1,1,'12','2018-05-17 10:03:56'),
  (25,1,1,'啊','2018-05-17 10:04:24'),
  (26,1,1,'啊','2018-05-17 10:05:58'),
  (27,1,1,'啊','2018-05-17 10:33:52'),
  (28,1,1,'啊','2018-05-17 14:53:16'),
  (29,1,1,'啊','2018-05-17 15:00:34'),
  (30,1,1,'去','2018-05-17 15:41:09'),
  (31,1,1,'啊','2018-05-17 15:41:38'),
  (32,1,1,'1','2018-05-17 15:43:07'),
  (33,1,1,'这种','2018-05-17 15:45:03'),
  (34,1,1,'啊','2018-05-21 10:04:55'),
  (35,1,1,'q1','2018-05-21 10:12:21');
COMMIT;

#
# Data for the `movie` table  (LIMIT 0,500)
#

INSERT INTO `movie` (`movie_id`, `movie_name`, `movie_summary`, `movie_pic`, `movie_type`, `date`, `time`, `rate`) VALUES 
  (1,'大饼张嘎','反映人民艰苦抗战精神的电影','images/r1.jpg',1,NULL,200,4.000),
  (2,'建国大娘','北京黑芝麻胡同里的张建国大娘一家的悲欢离合','images/r2.jpg',1,NULL,145,7.000),
  (3,'自杀小队：希特勒传','从入党到入土','images/r3.jpg',1,NULL,345,8.000),
  (4,'莎士比亚谢顶之谜','英国著名作家莎士比亚，导致他谢顶的原因一直众说纷纭','images/r4.jpg',1,NULL,321,1.000),
  (5,'一起来看刘伯承','贵族学校中的爱情故事，以及刘伯承先生对此的看法','images/r5.jpg',1,NULL,123,10.000);
COMMIT;

#
# Data for the `actor_movie` table  (LIMIT 0,500)
#

INSERT INTO `actor_movie` (`ac_id`, `actor_id`, `movie_id`) VALUES 
  (1,1,1),
  (2,1,2);
COMMIT;

#
# Data for the `movie_comment` table  (LIMIT 0,500)
#

INSERT INTO `movie_comment` (`comment_id`, `user_id`, `movie_id`, `comment_text`, `comment_time`) VALUES 
  (1,NULL,1,'aaa','2018-05-14 08:41:01'),
  (2,NULL,1,'good','2018-05-14 08:45:31'),
  (3,1,1,'娃娃','2018-05-14 09:22:04'),
  (4,1,1,'111','2018-05-15 16:33:20'),
  (5,1,1,'我','2018-05-15 16:44:34'),
  (6,1,1,'啊','2018-05-16 08:38:56'),
  (7,1,1,'可以','2018-05-16 09:14:13'),
  (8,1,1,'好好好','2018-05-16 11:14:39'),
  (9,1,1,'去','2018-05-16 14:38:33'),
  (10,1,1,'啊','2018-05-16 14:47:17'),
  (11,1,1,'啊','2018-05-16 14:51:45'),
  (12,1,1,'a1','2018-05-16 15:08:27'),
  (13,1,1,'啊','2018-05-16 16:13:03'),
  (14,1,1,'AA','2018-05-16 17:00:02'),
  (15,1,1,'去','2018-05-17 08:56:05'),
  (16,1,1,'啊','2018-05-17 09:14:21'),
  (17,1,1,'啊','2018-05-17 09:37:50'),
  (18,1,1,'13','2018-05-17 15:45:42'),
  (19,1,1,'很好','2018-05-21 08:55:51'),
  (20,1,1,'aa1','2018-05-22 14:30:44');
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;