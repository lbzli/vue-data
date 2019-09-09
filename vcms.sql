/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : vcms

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 09/09/2019 22:16:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ctime` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES (2, '宝马', '2019-09-13 14:57:03.000000');
INSERT INTO `brands` VALUES (5, '奔驰', '2019-09-13 14:57:03.000000');
INSERT INTO `brands` VALUES (6, '劳斯莱斯', '2019-09-08 15:16:49.000000');
INSERT INTO `brands` VALUES (7, '兰博基尼', '2019-09-08 16:17:10.000000');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cou` int(10) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sell_price` decimal(10, 2) NULL DEFAULT NULL,
  `thumb_path` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (1, '华为（HUAWEI）荣耀', 2195.00, NULL, 1);
INSERT INTO `cart` VALUES (1, '华为（HUAWEI）荣耀', 2195.00, NULL, 2);
INSERT INTO `cart` VALUES (1, '华为（HUAWEI）荣耀', 2195.00, NULL, 3);
INSERT INTO `cart` VALUES (1, '华为（HUAWEI）荣耀', 2195.00, NULL, 4);
INSERT INTO `cart` VALUES (1, '华为（HUAWEI）荣耀', 2195.00, NULL, 5);
INSERT INTO `cart` VALUES (1, '华为（HUAWEI）荣耀', 2195.00, NULL, 6);

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `artid` int(10) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (2, '我来评论一下啦1', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (2, '我来评论一下啦2', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (3, '我来评论一下啦3', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (2, '我来评论一下啦4', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (3, '我来评论一下啦5', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (2, '我来评论一下啦6', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (1, '我来评论一下啦7', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (1, '我来评论一下啦8', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (1, '我来评论一下啦9', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (1, '我来评论一下啦10', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (1, '我来评论一下啦11', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (1, '我来评论一下啦12', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (1, '我来评论一下啦13', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (1, '我来评论一下啦14', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (1, '我来评论一下啦15', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (1, '我来评论一下啦16', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (1, '我来评论一下啦17', '匿名用户', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (1, '我来评论一下啦18', '匿名用户2', '2015-04-19 20:09:30.000000');
INSERT INTO `comments` VALUES (1, '你好啊，这是我的第一次发言', '这是个匿名的用户', '2019-09-08 13:02:02.000000');
INSERT INTO `comments` VALUES (1, '这个输测试数据', NULL, '2019-09-08 16:40:45.000000');

-- ----------------------------
-- Table structure for commoditys
-- ----------------------------
DROP TABLE IF EXISTS `commoditys`;
CREATE TABLE `commoditys`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  `zhaiyao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `click` int(10) NULL DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sell_price` decimal(10, 2) NULL DEFAULT NULL,
  `market_price` decimal(10, 2) NULL DEFAULT NULL,
  `stock_quantity` decimal(10, 0) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `goods_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commoditys
-- ----------------------------
INSERT INTO `commoditys` VALUES (1, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (2, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (3, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (4, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (5, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (6, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (7, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (8, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (9, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (10, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (11, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (12, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (13, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (14, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (15, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (16, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (17, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (18, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (19, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (20, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (21, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');
INSERT INTO `commoditys` VALUES (22, '华为（HUAWEI）荣耀6plus 16G双4G版', '2015-04-19 16:51:03.000000', '荣耀6plus，改机型分为两款型号，分别为PE', 0, '', 2195.00, 2499.00, 60, '荣耀', 'SD3973042344');

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhaiyao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `click` int(11) NULL DEFAULT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `categoryid` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES (1, '有气质且可爱的美女组图', NULL, '有气质且可爱的美女组图', '家居生活', 3, '2015-04-18 00:00:00.000000', 'Widawscy studio 为华沙的一处公寓做了设计，初看的色彩。面积最大的公共空间，包括客厅，餐厅和厨房采用了黄色的色彩，', 1);
INSERT INTO `images` VALUES (2, '这个是第二条图片书局', NULL, '恩，就是我写的', '随便数据', 2, '2019-09-07 00:00:00.000000', '别看了说了你又不信', 2);
INSERT INTO `images` VALUES (3, '这个是第3条图片书局', NULL, '恩，就是我写的3', '随便数据', 2, '2019-09-07 00:00:00.000000', '别看了说了你又不信', 2);

-- ----------------------------
-- Table structure for imggroup
-- ----------------------------
DROP TABLE IF EXISTS `imggroup`;
CREATE TABLE `imggroup`  (
  `id` int(10) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `click` int(10) NULL DEFAULT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `groupId` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of imggroup
-- ----------------------------
INSERT INTO `imggroup` VALUES (1, '这个是第二条图片书局', 2, '2019-09-04 00:00:47.000000', '别看了说了你又不信', '1', 2);
INSERT INTO `imggroup` VALUES (2, '有气质且可爱的美女组图', 3, '2015-04-18 00:00:00.000000', 'Widawscy studio 为华沙的一处公寓做了设计，初看的色彩。面积最大的公共空间，包括客厅，餐厅和厨房采用了黄色的色彩', '2', 1);
INSERT INTO `imggroup` VALUES (3, '这个是第3条图片书局', 2, '2019-09-12 00:02:00.000000', '别看了说了你又不信', '3', 1);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_time` datetime(6) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhaiyao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `click` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '1季度多家房企利润跌幅超50% 去库存促销战打响', '2015-04-16 03:50:28.000000', NULL, '房企一季度销售业绩陆续公布，可而悦研究中心统计', '1', NULL);
INSERT INTO `news` VALUES (2, '这是第二条数据', '2019-09-07 22:56:00.000000', NULL, '这条数据我是随便写的', '2', NULL);

SET FOREIGN_KEY_CHECKS = 1;
