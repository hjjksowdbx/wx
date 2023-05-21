/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306_1
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : wx

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 20/05/2023 23:48:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NULL DEFAULT NULL,
  `jia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `count` int NULL DEFAULT NULL,
  `uid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES (1, 2, '45', 9, 3);
INSERT INTO `car` VALUES (2, 6, '4', 1, 3);
INSERT INTO `car` VALUES (3, 4, '10', 5, 3);
INSERT INTO `car` VALUES (4, 5, '9', 3, 3);
INSERT INTO `car` VALUES (5, 10, '24', 3, 3);
INSERT INTO `car` VALUES (6, 7, '32', 4, 3);
INSERT INTO `car` VALUES (7, 6, '40', 10, 3);
INSERT INTO `car` VALUES (8, 5, '30', 10, 3);

-- ----------------------------
-- Table structure for cately
-- ----------------------------
DROP TABLE IF EXISTS `cately`;
CREATE TABLE `cately`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NULL DEFAULT NULL,
  `keyword` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cately
-- ----------------------------
INSERT INTO `cately` VALUES (1, NULL, '早餐');
INSERT INTO `cately` VALUES (2, NULL, '中餐');
INSERT INTO `cately` VALUES (3, NULL, '晚餐');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `jia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `talk_id` int NULL DEFAULT NULL,
  `c_id` int NULL DEFAULT NULL,
  `detail` varchar(1686) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, '/images/肠粉.jpg', '肠粉', '6', NULL, 1, 'https://tse3-mm.cn.bing.net/th/id/OIP-C.Slm3K4Sn_coyEzTe8dHu8QHaE1?w=302&h=197&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse1-mm.cn.bing.net/th/id/OIP-C.I4FVsGIjUKD-d7SHUhDF4wHaFj?w=248&h=186&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse4-mm.cn.bing.net/th/id/OIP-C.rCCk_JuNXC5gPd20BIOmhQHaJ4?w=148&h=197&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO `product` VALUES (2, '/images/小龙包.jpg', '小笼包', '5', NULL, 1, 'https://tse4-mm.cn.bing.net/th/id/OIP-C.C9YgUpzCKT_M4u5xVUmljQHaE7?w=298&h=197&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse4-mm.cn.bing.net/th/id/OIP-C.oK_oRsvzbUq6qUe6q3v83QHaE_?w=292&h=197&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse4-mm.cn.bing.net/th/id/OIP-C.mqzyeacTkMp6hTpxovpN0AHaFl?w=254&h=192&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO `product` VALUES (4, '/images/豆浆.jpg', '豆浆', '2', NULL, 1, 'https://tse2-mm.cn.bing.net/th/id/OIP-C.i85mN9nIMXIyPxhkoHxi5QHaEV?w=311&h=166&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse2-mm.cn.bing.net/th/id/OIP-C.tfIh7uwcnK4OgqIxRqB5PAHaE0?w=271&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse3-mm.cn.bing.net/th/id/OIP-C.57Si9AoqvzQ9HpPLq0gC1QHaFj?w=228&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO `product` VALUES (5, '/images/油条.jpg', '油条', '3', NULL, 1, 'https://tse4-mm.cn.bing.net/th/id/OIP-C.9OteSJxqI53rRRzYitp88gHaE8?w=260&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse4-mm.cn.bing.net/th/id/OIP-C.edIXTm0aeUa46OWRS2ORHAHaG3?w=195&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse2-mm.cn.bing.net/th/id/OIP-C.kKh4kB-z0hCmPl4wOJkO8gHaE6?w=284&h=189&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO `product` VALUES (6, '/images/肉包.jpg', '肉包', '4', NULL, 1, 'https://tse3-mm.cn.bing.net/th/id/OIP-C.IqNCBvIJUSddJqfa5dhMxwHaE7?w=276&h=183&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse4-mm.cn.bing.net/th/id/OIP-C.GjyiYdbIT0it3EnFL95zZAAAAA?w=189&h=189&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse1-mm.cn.bing.net/th/id/OIP-C.WziZ-A_h1b7e695NQf6vPAHaEh?w=290&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO `product` VALUES (7, '/images/猪脚饭.jpg', '猪脚饭', '8', NULL, 2, 'https://tse3-mm.cn.bing.net/th/id/OIP-C.cjPIthtTRsJawG4wDmEAmQHaE8?w=295&h=197&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse3-mm.cn.bing.net/th/id/OIP-C.CovgrqGygEz31knOH8br3wHaHa?w=182&h=182&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse2-mm.cn.bing.net/th/id/OIP-C.iEs6g49OdJWhwT3IXBtgyQHaE8?w=291&h=194&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO `product` VALUES (8, '/images/白切肉.jpg', '白切鸡', '9', NULL, 2, 'https://tse3-mm.cn.bing.net/th/id/OIP-C.MhWtWn6LO1BYxjBH9NHSAAHaE8?w=291&h=194&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse4-mm.cn.bing.net/th/id/OIP-C.3tW2TwzVXCOakjd0GmL8OQAAAA?w=195&h=130&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse4-mm.cn.bing.net/th/id/OIP-C.HyVOSwu1H92GmKGySdZJGAHaE8?w=289&h=192&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO `product` VALUES (9, '/images/th (1).jpg', '烧鸭饭', '13', NULL, 2, 'https://tse3-mm.cn.bing.net/th/id/OIP-C.riOabcXow7UDCX74GHjDngHaFk?w=225&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse2-mm.cn.bing.net/th/id/OIP-C.-FPE0mnhFJoKyYNMXi-fDwAAAA?w=271&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse2-mm.cn.bing.net/th/id/OIP-C.Wf5VlCQyVediiyxf0unr6gHaE8?w=261&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO `product` VALUES (10, '/images/红烧茄子.jpg', '红烧茄子', '8', NULL, 3, 'https://tse4-mm.cn.bing.net/th/id/OIP-C.6JSNmzPh0WFzk1px4Y40ogHaFj?w=224&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse2-mm.cn.bing.net/th/id/OIP-C.Xy7ov4jf4wyQUIq6DEtDEQHaEy?w=271&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse4-mm.cn.bing.net/th/id/OIP-C.l3m7C5EtYpv8l7BZ1h9AqQHaF7?w=209&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO `product` VALUES (11, '/images/请教.jpg', '青椒炒肉', '5', NULL, 3, 'https://tse2-mm.cn.bing.net/th/id/OIP-C.SgiOw6IDbDdpzvwpgguz5gHaFj?w=208&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse1-mm.cn.bing.net/th/id/OIP-C.UuG4R4oKZYMXLjAM2AfFNwHaFj?w=244&h=183&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse3-mm.cn.bing.net/th/id/OIP-C.jQSuqia1PiwJBtgirFBYfAHaFj?w=250&h=187&c=7&r=0&o=5&dpr=1.3&pid=1.7');
INSERT INTO `product` VALUES (12, '/images/紫菜.jpg', '紫菜蛋花汤', '8', NULL, 3, 'https://tse4-mm.cn.bing.net/th/id/OIP-C.xwjHgb0_W5BjkzPbIFnmLgHaE8?w=265&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse1-mm.cn.bing.net/th/id/OIP-C.xf4RZipqlcGma8wcIu2ZnAHaEK?w=316&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7!,https://tse3-mm.cn.bing.net/th/id/OIP-C.Yh0suNlHmwbE3Gd577E6JQHaFH?w=267&h=184&c=7&r=0&o=5&dpr=1.3&pid=1.7');

-- ----------------------------
-- Table structure for talking_detail
-- ----------------------------
DROP TABLE IF EXISTS `talking_detail`;
CREATE TABLE `talking_detail`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `talk_detail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `crete_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `pid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of talking_detail
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (3, 'P20210304349 余增清');

SET FOREIGN_KEY_CHECKS = 1;
