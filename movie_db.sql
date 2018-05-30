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
  `avatar` varchar(100) DEFAULT NULL,
  `gender` varchar(4) DEFAULT NULL,
  `signature` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

#
# Structure for the `actor_movie` table : 
#

CREATE TABLE `actor_movie` (
  `ac_id` int(11) NOT NULL AUTO_INCREMENT,
  `actor_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  PRIMARY KEY (`ac_id`),
  KEY `actor_id` (`actor_id`),
  KEY `movie_id` (`movie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

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
  KEY `movie_id` (`movie_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Structure for the `type` table : 
#

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

#
# Structure for the `type_movie` table : 
#

CREATE TABLE `type_movie` (
  `tm_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `movie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `type_user` table : 
#

CREATE TABLE `type_user` (
  `tu_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
  (1,'11',11,'侵权','11',NULL,'images/152757423198376776740_cut.jpg',NULL,'握力高'),
  (12,'12345@123.com',421,'卡布达','123',NULL,'images/152714592174442976578_cut.jpg',NULL,'爆炸'),
  (14,'111',123,'我是谁','123123',NULL,'images/152714594252866023413_cut.jpg',NULL,'我是这个小区最牛逼的人'),
  (15,'abc@123.com',123,'杨永信','123',NULL,'images/152714596938149370799_cut.jpg',NULL,'丶点点\r\n'),
  (16,'111@123.com',858585,'闫相垠','yxy15032',NULL,'images/152714674559428625868_cut.jpg',NULL,'我是好人');
COMMIT;

#
# Data for the `actor_comment` table  (LIMIT 0,500)
#

INSERT INTO `actor_comment` (`actorcomment_id`, `user_id`, `actor_id`, `comment_text`, `comment_time`) VALUES 
  (42,1,1,'老婆','2018-05-24 09:30:57'),
  (43,1,2,'沙发','2018-05-24 09:31:13'),
  (44,15,1,'rua','2018-05-24 14:01:46'),
  (45,16,1,'楼上真恶心','2018-05-24 15:27:28');
COMMIT;

#
# Data for the `actor_movie` table  (LIMIT 0,500)
#

INSERT INTO `actor_movie` (`ac_id`, `actor_id`, `movie_id`) VALUES 
  (1,1,1),
  (2,1,2);
COMMIT;

#
# Data for the `movie` table  (LIMIT 0,500)
#

INSERT INTO `movie` (`movie_id`, `movie_name`, `movie_summary`, `movie_pic`, `movie_type`, `date`, `time`, `rate`) VALUES 
  (1,'刘伯承','我好兴奋啊','images/r1.jpg',1,NULL,300,4.000),
  (3,'自杀小队：希特勒传','从入党到入土','images/r3.jpg',1,NULL,345,8.000),
  (4,'莎士比亚谢顶之谜','英国著名作家莎士比亚，导致他谢顶的原因一直众说纷纭','images/r4.jpg',1,NULL,321,1.000),
  (5,'一起来看刘伯承','贵族学校中的爱情故事，以及刘伯承先生对此的看法','images/r5.jpg',1,NULL,123,10.000);
COMMIT;

#
# Data for the `movie_comment` table  (LIMIT 0,500)
#

INSERT INTO `movie_comment` (`comment_id`, `user_id`, `movie_id`, `comment_text`, `comment_time`) VALUES 
  (28,1,1,'AA','2018-05-24 08:35:04'),
  (40,15,1,'我觉得不行','2018-05-24 14:29:06'),
  (41,16,1,'我觉得很好','2018-05-24 15:27:05'),
  (42,1,2,'bruh','2018-05-28 10:08:42');
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;