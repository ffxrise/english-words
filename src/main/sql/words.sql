/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : englishworld

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2021-03-10 09:09:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for words_level
-- ----------------------------
DROP TABLE IF EXISTS `words_level`;
CREATE TABLE `words_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` char(1) DEFAULT NULL,
  `level_name` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of words_level
-- ----------------------------
INSERT INTO `words_level` VALUES ('1', '1', '初中');
INSERT INTO `words_level` VALUES ('2', '2', '高中');
INSERT INTO `words_level` VALUES ('3', '3', '四级');
INSERT INTO `words_level` VALUES ('4', '4', '六级');

-- ----------------------------
-- Table structure for words_part_of_speech
-- ----------------------------
DROP TABLE IF EXISTS `words_part_of_speech`;
CREATE TABLE `words_part_of_speech` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(8) DEFAULT NULL,
  `mean` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of words_part_of_speech
-- ----------------------------
INSERT INTO `words_part_of_speech` VALUES ('1', 'n.', '名词');
INSERT INTO `words_part_of_speech` VALUES ('2', 'pron.', '代词');
INSERT INTO `words_part_of_speech` VALUES ('3', 'adj.', '形容词');
INSERT INTO `words_part_of_speech` VALUES ('4', 'adv.', '副词');
INSERT INTO `words_part_of_speech` VALUES ('5', 'v.', '动词');
INSERT INTO `words_part_of_speech` VALUES ('6', 'num.', '数词');
INSERT INTO `words_part_of_speech` VALUES ('7', 'art.', '冠词');
INSERT INTO `words_part_of_speech` VALUES ('8', 'prep.', '介词');
INSERT INTO `words_part_of_speech` VALUES ('9', 'conj.', '连词');
INSERT INTO `words_part_of_speech` VALUES ('10', 'interj.', '感叹词');

-- ----------------------------
-- Table structure for words_root_affix
-- ----------------------------
DROP TABLE IF EXISTS `words_root_affix`;
CREATE TABLE `words_root_affix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(40) DEFAULT NULL,
  `mean` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of words_root_affix
-- ----------------------------

-- ----------------------------
-- Table structure for words_word
-- ----------------------------
DROP TABLE IF EXISTS `words_word`;
CREATE TABLE `words_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `word` varchar(255) DEFAULT NULL,
  `mean` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of words_word
-- ----------------------------

-- ----------------------------
-- Table structure for words_word_level_r
-- ----------------------------
DROP TABLE IF EXISTS `words_word_level_r`;
CREATE TABLE `words_word_level_r` (
  `id` int(11) NOT NULL,
  `word_id` int(11) DEFAULT NULL,
  `level_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of words_word_level_r
-- ----------------------------

-- ----------------------------
-- Table structure for words_word_pos_r
-- ----------------------------
DROP TABLE IF EXISTS `words_word_pos_r`;
CREATE TABLE `words_word_pos_r` (
  `id` int(11) NOT NULL,
  `word_id` int(11) DEFAULT NULL,
  `pos_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of words_word_pos_r
-- ----------------------------

-- ----------------------------
-- Table structure for words_word_root_affix_r
-- ----------------------------
DROP TABLE IF EXISTS `words_word_root_affix_r`;
CREATE TABLE `words_word_root_affix_r` (
  `id` int(11) NOT NULL,
  `word_id` int(11) DEFAULT NULL,
  `root_affix_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of words_word_root_affix_r
-- ----------------------------
