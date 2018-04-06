/*
 Navicat Premium Data Transfer

 Source Server         : movie
 Source Server Type    : MySQL
 Source Server Version : 50615
 Source Host           : localhost:3306
 Source Schema         : movie_db

 Target Server Type    : MySQL
 Target Server Version : 50615
 File Encoding         : 65001

 Date: 06/04/2018 17:29:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for favor
-- ----------------------------
DROP TABLE IF EXISTS `favor`;
CREATE TABLE `favor`  (
  `favor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  PRIMARY KEY (`favor_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `type_id`(`type_id`) USING BTREE,
  CONSTRAINT `favor_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `favor_fk1` FOREIGN KEY (`type_id`) REFERENCES `type` (`type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for friend
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend`  (
  `friend_id` int(11) NOT NULL AUTO_INCREMENT,
  `userid_1` int(11) NOT NULL,
  `userid_2` int(11) NOT NULL,
  PRIMARY KEY (`friend_id`) USING BTREE,
  INDEX `userid_1`(`userid_1`) USING BTREE,
  INDEX `userid_2`(`userid_2`) USING BTREE,
  CONSTRAINT `friend_fk1` FOREIGN KEY (`userid_2`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `friend_fk` FOREIGN KEY (`userid_1`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `movie_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `movie_summary` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `movie_pic` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `movie_type` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`) USING BTREE,
  INDEX `movie_type`(`movie_type`) USING BTREE,
  CONSTRAINT `movie_fk` FOREIGN KEY (`movie_type`) REFERENCES `type` (`type_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for movie_comment
-- ----------------------------
DROP TABLE IF EXISTS `movie_comment`;
CREATE TABLE `movie_comment`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `movie_id` int(11) NULL DEFAULT NULL,
  `comment_text` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` date NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `movie_id`(`movie_id`) USING BTREE,
  CONSTRAINT `movie_comment_fk1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `movie_comment_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` tinyint(15) NOT NULL,
  `birthday` date NULL DEFAULT NULL,
  `avatar` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
