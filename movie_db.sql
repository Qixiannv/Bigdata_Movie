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
  `actor_id` int(11) DEFAULT NULL,
  `actor_name` varchar(20) DEFAULT NULL,
  `actor_pic` varchar(30) DEFAULT NULL,
  `actor_summary` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `actor_comment` table : 
#

CREATE TABLE `actor_comment` (
  `actor_comment_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `actor_id` int(11) DEFAULT NULL,
  `comment_text` varchar(200) DEFAULT NULL,
  `comment_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`actor_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Structure for the `type` table : 
#

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

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
  `rate` int(4) DEFAULT NULL,
  PRIMARY KEY (`movie_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

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
# Data for the `movie` table  (LIMIT 0,500)
#

INSERT INTO `movie` (`movie_id`, `movie_name`, `movie_summary`, `movie_pic`, `movie_type`, `date`, `time`, `rate`) VALUES 
  (1,NULL,'这里显示电影简评','images/r1.jpg',1,NULL,NULL,NULL),
  (2,NULL,'这里显示电影简评','images/r2.jpg',1,NULL,NULL,NULL),
  (3,NULL,'这里显示电影简评','images/r3.jpg',1,NULL,NULL,NULL),
  (4,NULL,'这里显示电影简评','images/r4.jpg',1,NULL,NULL,NULL),
  (5,NULL,'这里显示电影简评','images/r5.jpg',1,NULL,NULL,NULL),
  (6,NULL,NULL,'images/r6.jpg',1,NULL,NULL,NULL);
COMMIT;

#
# Data for the `movie_comment` table  (LIMIT 0,500)
#

INSERT INTO `movie_comment` (`comment_id`, `user_id`, `movie_id`, `comment_text`, `comment_time`) VALUES 
  (1,NULL,1,'aaa','2018-05-14 08:41:01'),
  (2,NULL,1,'good','2018-05-14 08:45:31'),
  (3,1,1,'娃娃','2018-05-14 09:22:04');
COMMIT;



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;