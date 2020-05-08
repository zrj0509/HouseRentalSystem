/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : localhost:3306
 Source Schema         : house

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 17/04/2020 16:13:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for liuyan
-- ----------------------------
DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE `liuyan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `hid` int(11) NULL DEFAULT NULL COMMENT '房子编号',
  `hname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房子名称',
  `remarker` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `createtime` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of liuyan
-- ----------------------------
INSERT INTO `liuyan` VALUES (1, 'test', '非常不错', 23, '1', '1', '2020-04-17 10:23:08');
INSERT INTO `liuyan` VALUES (2, 'tianming', '一片浮云飘过大海，是我的生命， ', 23, '好房来袭果香北苑中装两室急租带车位精装修', NULL, '2020-04-17 12:24:48');

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userpwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (1, 'admin', 'admin');

-- ----------------------------
-- Table structure for t_house
-- ----------------------------
DROP TABLE IF EXISTS `t_house`;
CREATE TABLE `t_house`  (
  `h_id` int(11) NOT NULL AUTO_INCREMENT,
  `house_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '租房描述',
  `house_model` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房屋类型，几室几厅',
  `house_area` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房屋面积',
  `house_floor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房屋楼层',
  `house_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出租方式',
  `house_price` int(10) NOT NULL COMMENT '出租价格',
  `house_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出租地址',
  `house_image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房屋简介照片',
  `community_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '小区名字',
  `house_linkman` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房屋联系电话',
  `house_oriented` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房屋朝向',
  `house_detailes_img` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '房屋详细页面展示图片',
  `publisher` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '管理员' COMMENT '发布人',
  `publish_time` datetime NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`h_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_house
-- ----------------------------
INSERT INTO `t_house` VALUES (22, '西陵房源111', '2344', '2344', '2344', '整租', 2344, '2344', '/HouseRentalSystem/file/1a29d779-d6e4-450a-8b25-842b9e377679.jpg', '2344', '18314463717', '东西', '/HouseRentalSystem/file/81cbb6fe-9130-44e0-8a71-94e2f57f0930.jpg~/HouseRentalSystem/file/e8e397f9-2611-4e21-a92d-33695380c0f3.jpg~', '天明', '2020-04-13 17:36:29');
INSERT INTO `t_house` VALUES (23, '好房来袭果香北苑中装两室急租带车位精装修', '两室两厅两卫', '100平', '高层1002', '整租', 1400, 'XXX省XXX市呈贡经济开发区民旺路建工新城生活广场5号楼718室', '/HouseRentalSystem/file/1a29d779-d6e4-450a-8b25-842b9e377679.jpg', '风华小区', '18314463717', '南北', '/HouseRentalSystem/file/81cbb6fe-9130-44e0-8a71-94e2f57f0930.jpg~/HouseRentalSystem/file/e8e397f9-2611-4e21-a92d-33695380c0f3.jpg~', '天明', '2020-04-13 17:41:48');
INSERT INTO `t_house` VALUES (24, '好房来袭果香北苑中装两室急租带车位精装修99999', '两室两厅两卫', '100平', '高层1002', '整租', 1400, 'XXX省XXX市呈贡经济开发区民旺路建工新城生活广场5号楼718室', '/HouseRentalSystem/file/20503ffc-e621-44e9-ab22-cdadcf1fd1cc.jpg', '风华小区', '18314463717', '南北', '/HouseRentalSystem/file/81cbb6fe-9130-44e0-8a71-94e2f57f0930.jpg~/HouseRentalSystem/file/e8e397f9-2611-4e21-a92d-33695380c0f3.jpg~', '天明', '2020-04-13 17:41:48');
INSERT INTO `t_house` VALUES (25, '好房来袭果香北苑中装两室急租带车位精装修4', '两室两厅两卫', '100平', '高层1002', '整租', 1400, 'XXX省XXX市呈贡经济开发区民旺路建工新城生活广场5号楼718室', '/HouseRentalSystem/file/20503ffc-e621-44e9-ab22-cdadcf1fd1cc.jpg', '风华小区', '18314463717', '南北', '/HouseRentalSystem/file/81cbb6fe-9130-44e0-8a71-94e2f57f0930.jpg~/HouseRentalSystem/file/e8e397f9-2611-4e21-a92d-33695380c0f3.jpg~', '天明', '2020-04-13 17:41:48');
INSERT INTO `t_house` VALUES (26, '好房来袭果香北苑中装两室急租带车位精装修6', '两室两厅两卫', '100平', '高层1002', '整租', 1400, 'XXX省XXX市呈贡经济开发区民旺路建工新城生活广场5号楼718室', '/HouseRentalSystem/file/20503ffc-e621-44e9-ab22-cdadcf1fd1cc.jpg', '风华小区', '18314463717', '南北', '/HouseRentalSystem/file/81cbb6fe-9130-44e0-8a71-94e2f57f0930.jpg~/HouseRentalSystem/file/e8e397f9-2611-4e21-a92d-33695380c0f3.jpg~', '天明', '2020-04-13 17:41:48');

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS `t_order`;
CREATE TABLE `t_order`  (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `h_id` int(11) NOT NULL COMMENT '房屋租赁id',
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `order_time` datetime NULL,
  `order_user` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`o_id`) USING BTREE,
  INDEX `fk1`(`h_id`) USING BTREE,
  INDEX `fk2`(`u_id`) USING BTREE,
  CONSTRAINT `fk1` FOREIGN KEY (`h_id`) REFERENCES `t_house` (`h_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk2` FOREIGN KEY (`u_id`) REFERENCES `t_users` (`u_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_order
-- ----------------------------
INSERT INTO `t_order` VALUES (9, 24, 3, '2019-11-28 23:51:29', '天明');

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `u_phone_number` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户注册手机号码，用于找回密码',
  `u_nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '昵称',
  PRIMARY KEY (`u_id`) USING BTREE,
  UNIQUE INDEX `uniq`(`u_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES (3, 'tianming', 'tianming', '18314463717', '天明');
INSERT INTO `t_users` VALUES (4, '小米', '123456', '15987542136', '小叮当');
INSERT INTO `t_users` VALUES (5, '小明', '123456', '15987452364', '小布丁');

SET FOREIGN_KEY_CHECKS = 1;
