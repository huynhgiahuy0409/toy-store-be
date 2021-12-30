/*
 Navicat Premium Data Transfer

 Source Server         : toystoredb
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : mysql-50176-0.cloudclusters.net:12046
 Source Schema         : toystore

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 21/09/2021 21:26:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for age
-- ----------------------------
DROP TABLE IF EXISTS `age`;
CREATE TABLE `age`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of age
-- ----------------------------
INSERT INTO `age` VALUES (1, NULL, NULL, NULL, NULL, '1-3 YEARS', '1-3 tuổi');
INSERT INTO `age` VALUES (2, NULL, NULL, NULL, NULL, '4-6 YEARS', '4-6 tuổi');
INSERT INTO `age` VALUES (3, NULL, NULL, NULL, NULL, '6-1 YEARS', '6-11 tuổi');
INSERT INTO `age` VALUES (4, NULL, NULL, NULL, NULL, 'UNDER 12 YEARS', 'trên 12 tuổi');

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `contract_term` int NULL DEFAULT NULL,
  `cooperation_date` datetime(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `thumbnail_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKb6vprqr6tfrfcvvgygm7rufhc`(`thumbnail_id`) USING BTREE,
  CONSTRAINT `FKb6vprqr6tfrfcvvgygm7rufhc` FOREIGN KEY (`thumbnail_id`) REFERENCES `image` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (1, NULL, NULL, NULL, NULL, 'AIRHOG', 1, NULL, 'AIRHOG', 1, 1);
INSERT INTO `brand` VALUES (51, NULL, NULL, NULL, NULL, 'AB', 2, NULL, 'ANGRY BIRDS', 1, 2);
INSERT INTO `brand` VALUES (52, NULL, NULL, NULL, NULL, 'AVG', 1, NULL, 'AVENGERS', 1, 3);
INSERT INTO `brand` VALUES (53, NULL, NULL, NULL, NULL, 'AD', 2, NULL, 'AQUA DABRA', 1, 4);
INSERT INTO `brand` VALUES (54, NULL, NULL, NULL, NULL, 'DP', 2, NULL, 'DISNEY PRINCES', 1, 5);
INSERT INTO `brand` VALUES (55, NULL, NULL, NULL, NULL, 'BRU', 1, NULL, 'BRUDER', 1, 6);
INSERT INTO `brand` VALUES (56, NULL, NULL, NULL, NULL, 'LG', 2, NULL, 'LEGO', 1, 7);
INSERT INTO `brand` VALUES (58, NULL, NULL, NULL, NULL, 'BBIE', 1, NULL, 'BARBIE', 1, 9);
INSERT INTO `brand` VALUES (59, NULL, NULL, NULL, NULL, 'DD', 1, NULL, 'DONI DINO', 1, 10);
INSERT INTO `brand` VALUES (60, NULL, NULL, NULL, NULL, 'BT21', 1, NULL, 'BT21', 1, 11);
INSERT INTO `brand` VALUES (61, NULL, NULL, NULL, NULL, 'CL', 2, NULL, 'CANDYLOCK', 1, 12);
INSERT INTO `brand` VALUES (62, NULL, NULL, NULL, NULL, 'EFF', 2, NULL, 'ECOIFFIER', 1, 13);
INSERT INTO `brand` VALUES (66, NULL, NULL, NULL, NULL, 'JWM', 2, NULL, 'JURASSIC WORLD MATTEL', 1, 16);
INSERT INTO `brand` VALUES (68, NULL, NULL, NULL, NULL, 'GGB', 2, NULL, 'GOGO BUS', 1, 23);
INSERT INTO `brand` VALUES (69, NULL, NULL, NULL, NULL, 'DC', 2, NULL, 'DC', 1, 8);
INSERT INTO `brand` VALUES (70, NULL, NULL, NULL, NULL, 'IWK', 2, NULL, 'IWAKO', 1, 17);
INSERT INTO `brand` VALUES (71, NULL, NULL, NULL, NULL, 'HP', 2, NULL, 'HANKYPANKY', 1, 15);
INSERT INTO `brand` VALUES (72, NULL, NULL, NULL, NULL, 'FF19', 2, NULL, 'FISHERPRICE', 1, 14);

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `discount` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES (1, NULL, NULL, NULL, NULL, 'GIAHUY', 5, 'COUPON của Huy');
INSERT INTO `coupon` VALUES (2, NULL, NULL, NULL, NULL, 'QUOCDUY', 10, 'DUY COUPON');

-- ----------------------------
-- Table structure for credit_card
-- ----------------------------
DROP TABLE IF EXISTS `credit_card`;
CREATE TABLE `credit_card`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `card_holder_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `card_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `expired_date` date NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKh4wi9724muee2kp2c4ku1yia2`(`user_id`) USING BTREE,
  CONSTRAINT `FKh4wi9724muee2kp2c4ku1yia2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of credit_card
-- ----------------------------
INSERT INTO `credit_card` VALUES (22, NULL, '2021-09-09 22:50:38', NULL, '2021-09-09 22:50:38', 'HUYNH GIA HUY', '444555666777', NULL, 1);
INSERT INTO `credit_card` VALUES (23, NULL, '2021-09-17 15:34:10', NULL, '2021-09-17 15:34:10', 'HUYNH GIA HUY', '44445556667777', '2021-09-19', 1);

-- ----------------------------
-- Table structure for favorite_product
-- ----------------------------
DROP TABLE IF EXISTS `favorite_product`;
CREATE TABLE `favorite_product`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `product_id` bigint NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK2lg2xrrb5c14y0s8hwoyn783n`(`product_id`) USING BTREE,
  INDEX `FK77loqyqxss454wdhhyhuatyfx`(`user_id`) USING BTREE,
  CONSTRAINT `FK2lg2xrrb5c14y0s8hwoyn783n` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK77loqyqxss454wdhhyhuatyfx` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of favorite_product
-- ----------------------------
INSERT INTO `favorite_product` VALUES (8, 'anonymousUser', '2021-09-10 07:04:48', 'anonymousUser', '2021-09-10 07:04:48', 5, 1);
INSERT INTO `favorite_product` VALUES (9, 'anonymousUser', '2021-09-10 07:04:52', 'anonymousUser', '2021-09-10 07:04:52', 6, 1);
INSERT INTO `favorite_product` VALUES (12, 'anonymousUser', '2021-09-10 07:05:01', 'anonymousUser', '2021-09-10 07:05:01', 9, 1);
INSERT INTO `favorite_product` VALUES (13, 'anonymousUser', '2021-09-10 07:05:04', 'anonymousUser', '2021-09-10 07:05:04', 10, 1);
INSERT INTO `favorite_product` VALUES (15, NULL, '2021-09-18 06:00:16', NULL, '2021-09-18 06:00:16', 8, 1);
INSERT INTO `favorite_product` VALUES (16, NULL, '2021-09-18 06:00:22', NULL, '2021-09-18 06:00:22', 15, 1);
INSERT INTO `favorite_product` VALUES (17, NULL, '2021-09-21 02:08:30', NULL, '2021-09-21 02:08:30', 1, 1);
INSERT INTO `favorite_product` VALUES (18, NULL, '2021-09-21 04:13:50', NULL, '2021-09-21 04:13:50', 2, 1);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES (1, NULL, NULL, NULL, NULL, 'AIRHOG.jpg');
INSERT INTO `image` VALUES (2, NULL, NULL, NULL, NULL, 'ANGRYBIRDS.jpg');
INSERT INTO `image` VALUES (3, NULL, NULL, NULL, NULL, 'AVENGERS.jpg');
INSERT INTO `image` VALUES (4, NULL, NULL, NULL, NULL, 'AQUADABRA.jpg');
INSERT INTO `image` VALUES (5, NULL, NULL, NULL, NULL, 'DISNEYPRINCES.jpg');
INSERT INTO `image` VALUES (6, NULL, NULL, NULL, NULL, 'BRUDER.jpg');
INSERT INTO `image` VALUES (7, NULL, NULL, NULL, NULL, 'LEGO.jpg');
INSERT INTO `image` VALUES (8, NULL, NULL, NULL, NULL, 'DC.jpg');
INSERT INTO `image` VALUES (9, NULL, NULL, NULL, NULL, 'BARBIE.jpg');
INSERT INTO `image` VALUES (10, NULL, NULL, NULL, NULL, 'DONIDINO.jpg');
INSERT INTO `image` VALUES (11, NULL, NULL, NULL, NULL, 'BT21.jpg');
INSERT INTO `image` VALUES (12, NULL, NULL, NULL, NULL, 'CANDYLOCK.jpg');
INSERT INTO `image` VALUES (13, NULL, NULL, NULL, NULL, 'ECOIFFIER.jpg');
INSERT INTO `image` VALUES (14, NULL, NULL, NULL, NULL, 'FISHERPRICE19.jpg');
INSERT INTO `image` VALUES (15, NULL, NULL, NULL, NULL, 'HANKYPANKY.jpg');
INSERT INTO `image` VALUES (16, NULL, NULL, NULL, NULL, 'JURASSICWORLDMATTEL.jpg');
INSERT INTO `image` VALUES (17, NULL, NULL, NULL, NULL, 'IWAKO.jpg');
INSERT INTO `image` VALUES (18, NULL, NULL, NULL, NULL, 'AIRHOG6044137.jpg');
INSERT INTO `image` VALUES (19, NULL, NULL, NULL, NULL, 'AIRHOG6041531.jpg');
INSERT INTO `image` VALUES (20, NULL, NULL, NULL, NULL, 'BRU03651_1.jpg');
INSERT INTO `image` VALUES (21, NULL, NULL, NULL, NULL, 'BRU03780.jpg');
INSERT INTO `image` VALUES (22, NULL, NULL, NULL, NULL, 'CL6052311A.jpg');
INSERT INTO `image` VALUES (23, NULL, NULL, NULL, NULL, 'GOGOBUS.jpg');
INSERT INTO `image` VALUES (24, NULL, NULL, NULL, NULL, 'CL6052312.jpg');
INSERT INTO `image` VALUES (25, NULL, NULL, NULL, NULL, 'DC6060069.jpg');
INSERT INTO `image` VALUES (26, NULL, NULL, NULL, NULL, 'DC6056331.jpg');
INSERT INTO `image` VALUES (27, NULL, NULL, NULL, NULL, 'EFF003026.jpg');
INSERT INTO `image` VALUES (28, NULL, NULL, NULL, NULL, 'EFF003045.jpg');
INSERT INTO `image` VALUES (29, NULL, NULL, NULL, NULL, 'FP19-GJW15.jpg');
INSERT INTO `image` VALUES (30, NULL, NULL, NULL, NULL, 'FP19-FYK56.jpg');
INSERT INTO `image` VALUES (31, NULL, NULL, NULL, NULL, 'GGB-YS3037C.jpg');
INSERT INTO `image` VALUES (32, NULL, NULL, NULL, NULL, 'GGB-YS3037B.jpg');
INSERT INTO `image` VALUES (33, NULL, NULL, NULL, NULL, 'HP1905.jpg');
INSERT INTO `image` VALUES (34, NULL, NULL, NULL, NULL, 'HP1908.jpg');
INSERT INTO `image` VALUES (35, NULL, NULL, NULL, NULL, 'IW-OMO015.jpg');
INSERT INTO `image` VALUES (36, NULL, NULL, NULL, NULL, 'IW-OMO014.jpg');
INSERT INTO `image` VALUES (37, NULL, NULL, NULL, NULL, 'JWM-GWT53.jpg');
INSERT INTO `image` VALUES (38, NULL, NULL, NULL, NULL, 'JWM-GNL07.jpg');
INSERT INTO `image` VALUES (39, NULL, NULL, NULL, NULL, 'CL6052311A.jpg');

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `quantity` int NOT NULL,
  `order_id` bigint NULL DEFAULT NULL,
  `product_id` bigint NULL DEFAULT NULL,
  `shopping_cart_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKs1l6jn5vnqw59toieoieog1lu`(`order_id`) USING BTREE,
  INDEX `FK551losx9j75ss5d6bfsqvijna`(`product_id`) USING BTREE,
  INDEX `FKar6pn3aqv60udnvv4pme9p6a0`(`shopping_cart_id`) USING BTREE,
  CONSTRAINT `FK551losx9j75ss5d6bfsqvijna` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKar6pn3aqv60udnvv4pme9p6a0` FOREIGN KEY (`shopping_cart_id`) REFERENCES `shopping_cart` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKs1l6jn5vnqw59toieoieog1lu` FOREIGN KEY (`order_id`) REFERENCES `order_t` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 180 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES (164, NULL, '2021-09-18 02:21:47', NULL, '2021-09-18 02:22:28', 2, 50, 1, 41);
INSERT INTO `order_item` VALUES (165, NULL, '2021-09-18 02:22:10', NULL, '2021-09-18 02:22:28', 1, 50, 2, 41);
INSERT INTO `order_item` VALUES (166, NULL, '2021-09-18 05:34:51', NULL, '2021-09-18 07:32:00', 1, 51, 3, 42);
INSERT INTO `order_item` VALUES (168, NULL, '2021-09-18 07:57:16', NULL, '2021-09-18 09:32:20', 2, 52, 3, 43);
INSERT INTO `order_item` VALUES (169, NULL, '2021-09-18 07:57:16', NULL, '2021-09-18 09:32:20', 0, 52, 3, 43);
INSERT INTO `order_item` VALUES (170, NULL, '2021-09-18 09:31:11', NULL, '2021-09-18 09:32:20', 2, 52, 8, 43);
INSERT INTO `order_item` VALUES (171, NULL, '2021-09-18 09:31:11', NULL, '2021-09-18 09:32:20', 11, 52, 16, 43);
INSERT INTO `order_item` VALUES (177, NULL, '2021-09-18 22:17:21', NULL, '2021-09-18 22:19:42', 2, 53, 1, 44);
INSERT INTO `order_item` VALUES (178, NULL, '2021-09-18 22:17:23', NULL, '2021-09-18 22:19:42', 2, 53, 2, 44);
INSERT INTO `order_item` VALUES (182, NULL, '2021-09-21 07:51:47', NULL, '2021-09-21 08:15:29', 100, NULL, 1, 45);

-- ----------------------------
-- Table structure for order_t
-- ----------------------------
DROP TABLE IF EXISTS `order_t`;
CREATE TABLE `order_t`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `total_payment` int NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `payment_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKrxd9u9gxd15lm4vyn3bpnvh0u`(`user_id`) USING BTREE,
  INDEX `FKbr6knlm2nodjpi36lb9siri9i`(`payment_id`) USING BTREE,
  CONSTRAINT `FKbr6knlm2nodjpi36lb9siri9i` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrxd9u9gxd15lm4vyn3bpnvh0u` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_t
-- ----------------------------
INSERT INTO `order_t` VALUES (50, NULL, '2021-09-18 02:22:27', NULL, '2021-09-18 02:22:27', 1938000, 1, 47);
INSERT INTO `order_t` VALUES (51, NULL, '2021-09-18 07:32:00', NULL, '2021-09-18 07:32:00', 1507000, 1, 48);
INSERT INTO `order_t` VALUES (52, NULL, '2021-09-18 09:32:19', NULL, '2021-09-18 09:32:19', 5903400, 1, 49);
INSERT INTO `order_t` VALUES (53, NULL, '2021-09-18 22:19:41', NULL, '2021-09-18 22:19:41', 2316100, 1, 50);

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `credit_card_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK41brulskee4m5ppls85o6go9r`(`credit_card_id`) USING BTREE,
  CONSTRAINT `FK41brulskee4m5ppls85o6go9r` FOREIGN KEY (`credit_card_id`) REFERENCES `credit_card` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO `payment` VALUES (34, NULL, '2021-09-09 22:50:38', NULL, '2021-09-09 22:50:38', '1', 22);
INSERT INTO `payment` VALUES (35, NULL, '2021-09-10 01:16:52', NULL, '2021-09-10 01:16:52', '1', 22);
INSERT INTO `payment` VALUES (36, NULL, '2021-09-10 23:17:42', NULL, '2021-09-10 23:17:42', '0', NULL);
INSERT INTO `payment` VALUES (37, NULL, '2021-09-10 23:17:58', NULL, '2021-09-10 23:17:58', '0', NULL);
INSERT INTO `payment` VALUES (38, NULL, '2021-09-10 23:18:23', NULL, '2021-09-10 23:18:23', '0', NULL);
INSERT INTO `payment` VALUES (39, NULL, '2021-09-10 23:18:41', NULL, '2021-09-10 23:18:41', '0', NULL);
INSERT INTO `payment` VALUES (40, NULL, '2021-09-10 23:18:58', NULL, '2021-09-10 23:18:58', '0', NULL);
INSERT INTO `payment` VALUES (41, NULL, '2021-09-10 23:19:34', NULL, '2021-09-10 23:19:34', '0', NULL);
INSERT INTO `payment` VALUES (42, NULL, '2021-09-10 23:19:48', NULL, '2021-09-10 23:19:48', '0', NULL);
INSERT INTO `payment` VALUES (43, NULL, '2021-09-13 19:49:20', NULL, '2021-09-13 19:49:20', '1', 22);
INSERT INTO `payment` VALUES (44, NULL, '2021-09-17 15:34:10', NULL, '2021-09-17 15:34:10', '1', 23);
INSERT INTO `payment` VALUES (45, NULL, '2021-09-17 15:35:10', NULL, '2021-09-17 15:35:10', '1', 22);
INSERT INTO `payment` VALUES (46, NULL, '2021-09-18 01:55:53', NULL, '2021-09-18 01:55:53', '1', 22);
INSERT INTO `payment` VALUES (47, NULL, '2021-09-18 02:22:27', NULL, '2021-09-18 02:22:27', '1', 22);
INSERT INTO `payment` VALUES (48, NULL, '2021-09-18 07:31:59', NULL, '2021-09-18 07:31:59', '0', NULL);
INSERT INTO `payment` VALUES (49, NULL, '2021-09-18 09:32:19', NULL, '2021-09-18 09:32:19', '0', NULL);
INSERT INTO `payment` VALUES (50, NULL, '2021-09-18 22:19:41', NULL, '2021-09-18 22:19:41', '1', 22);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `permission_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `permission_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permission
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `description` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `discount_percent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price_to_buy` double NOT NULL,
  `price_unit` double NOT NULL,
  `quantity` int NOT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `brand_id` bigint NULL DEFAULT NULL,
  `tax_id` bigint NULL DEFAULT NULL,
  `thumbnail_id` bigint NULL DEFAULT NULL,
  `is_new` bit(1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKs6cydsualtsrprvlf2bb3lcam`(`brand_id`) USING BTREE,
  INDEX `FK9lk9bo7vg7ug89vmn99wj40eh`(`tax_id`) USING BTREE,
  INDEX `FKku2jtdv7y9jgf473dqd3py2ic`(`thumbnail_id`) USING BTREE,
  CONSTRAINT `FK9lk9bo7vg7ug89vmn99wj40eh` FOREIGN KEY (`tax_id`) REFERENCES `tax` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKku2jtdv7y9jgf473dqd3py2ic` FOREIGN KEY (`thumbnail_id`) REFERENCES `image` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKs6cydsualtsrprvlf2bb3lcam` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, NULL, NULL, NULL, NULL, 'Dòng sản phẩm Supernova của Airhogs mở ra một kỷ nguyên máy bay điều khiển mới thông qua tương tác. Khám phá sức mạnh của tân binh mới này với chính đôi tay bạn, kích hoạt khả năng hoạt động chỉ cần quăng sản phẩm vào không khi. Biến hóa khôn lường với hơn 30 cách di chuyển khác nhau và 9 thủ thuật đầy bí ẩn', '40', 'Máy bay điều khiển Supernova', 719000, 1199000, 10, 'AIRHOG6044137', 1, 1, 18, b'1');
INSERT INTO `product` VALUES (2, NULL, NULL, NULL, NULL, 'Bức phá giới hạn với xe đua đệm khí siêu mạnh Drone Power Racers. Khả năng tách rời và kết hợp 2 trong 1 siêu linh hoạt giúp Drone Power Racers đạt được tốc độ tới đa khi đua trên mặt đất và bức phá ở những chặng cuối với khả năng bay tăng tốc.', '50', 'Xe đua đệm khí Drone Power Racer', 500000, 999000, 10, 'AIRHOG6041531', 1, 1, 19, b'1');
INSERT INTO `product` VALUES (3, NULL, NULL, NULL, NULL, 'Bộ đồ chơi dạng mô hình theo tỷ lệ thu nhỏ 1-16 Xe công trình Mercedes-Benz là một trong những sản phẩm hàng đầu của thương hiệu đồ chơi BRUDER. Với những chức năng vượt trội như cửa xe đóng mở, cần cẩu phía trên có thể kéo dài và quay 360\', tương tác với các phụ kiện như palet, cẩn cẩu tái hiện việc di chuyển, 4 chân trụ có thể kéo dài, các cạnh của cần cẩu cũng có tính năng hỗ trợ kéo dài có thể được hạ xuống để thêm vào sự ổn định của xe trong khi nó đang được nạp hoặc dỡ xuống, sức mạnh, độ bền và hiệu quả là điều tối quan trọng hàng ngày khi lái xe trên đường hoặc làm việc tại công trường, dòng xe tải cẩu MB với cánh tay cẩu là một mô hình bắt mắt với các bé, đặc biệt là các bé trai. Đây là một trong những chiếc xe không thể thiếu trong cuộc sống hằng ngày.', '33', 'Xe công trình', 1507000, 2249000, 10, 'BRU03651', 51, 1, 20, b'0');
INSERT INTO `product` VALUES (4, NULL, NULL, NULL, NULL, 'Được thiết kế tỉ mỉ đến từng chị tiết, chiếc xe chở rác này sẽ mang đến cho các bé nhiều điều bổ ích và thú vị', '20', 'Xe vệ sinh mặt đường MAN TGS', 1887000, 2359000, 10, 'BRU03780', 51, 1, 21, b'1');
INSERT INTO `product` VALUES (5, NULL, NULL, NULL, NULL, 'Phong cách mùa hè nhiệt đới hoàn toàn mới với màu sắc nổi bật và bắt mắt Sản phẩm bao gồm 1 búp bê tóc mây xinh xắn, giấu gương mặt mình phía sau mái tóc mây bồng bềnh mềm mại, mùi hương trái cây nhiệt đới ngọt ngào quyến rũ. Thêm vào đó, cô bạn búp bê còn đi kèm theo 1 phụ kiện trang trí tóc cực cool. Có tổng cộng 16 bạn búp bê xinh xắn cho bé sưu tập', '30', 'Búp bê tóc mây bí ẩn (mùa S20)', 202000, 289000, 10, 'CL6052311A', 61, 1, 39, b'0');
INSERT INTO `product` VALUES (6, NULL, NULL, NULL, NULL, 'Bộ Đôi Bạn Thân Búp Bê Tóc Mây Bí Ẩn là những nàng công chúa xinh đẹp với mái tóc dài đến 38 cm, đặc biệt có mùi hương trên tóc giống nhau. Đôi bạn thân búp bê luôn giấu khuôn mặt và giả dạng như chiếc que kem ốc quế bằng mái tóc tuyệt vời, quyến rũ của mình.', '30', 'Bộ đôi bạn thân búp bê tóc mây bí ẩn', 349000, 499000, 10, 'CL6052312', 61, 1, 24, b'1');
INSERT INTO `product` VALUES (7, NULL, NULL, NULL, NULL, 'Biệt đội siêu anh hùng công lý với 11 khớp cử động linh hoạt cho bạn thỏa thích tạo nhiều dáng cử động mới lạ cho nhân vật. Thiết kế mang nhiều đường nét chi tiết sắc sảo và phụ kiện tương ứng với từng nhân vật trong phim mang đến một hình ảnh biệt đội siêu anh hùng siêu thực. Nhanh tay sưu tập thêm trọn bộ nhân vật bao gồm: Superman, Aquaman, Flash, Cyborg Thích hợp dành cho trẻ từ 3 tuổi trở lên Sản phẩm bao gồm: 1 nhân vật siêu anh hùng công lý 12 inch', '20', 'Siêu anh hùng Aquaman 12inch', 239000, 299000, 10, 'DC6060069', 66, 1, 25, b'1');
INSERT INTO `product` VALUES (8, NULL, NULL, NULL, NULL, 'Nhân vật biệt đội siêu anh hùng công lý 4 inch với 11 khớp nối cho bạn dễ dàng tạo mọi dáng đứng khác nhau Khám phá 3 phụ kiện bí mật như đinh ba, khiên, gươm thần và còn nhiều thiết bị hỗ trợ cho biệt đội công lý trong mỗi hộp sản phẩm. Hãy kết hợp phụ kiện tương ứng với nhân vật để có thể giúp biệt đội hoàn thành nhiệm vụ Đa dạng nhiệm vụ cho bạn thực hiện như Metropolis Mayhem, Alien Attack, Central City Clash hay Coastline Crisis Sản phẩm bao gồm: 1 nhân vật siêu anh hùng, 3 vũ khí bí mật, 1 tờ sưu tập nhân vật và 1 hướng dẫn chơi cùng.', '20', 'Biệt đội anh hùng công lý 4 inch', 207000, 259000, 10, 'DC6056331', 66, 1, 26, b'0');
INSERT INTO `product` VALUES (9, NULL, NULL, NULL, NULL, 'Mô hình cứu hỏa hiện đại với máy bay trực thăng, xe cứu hỏa và lính cứu hỏa. Bộ đồ chơi bao gồm 3 lính cứu hỏa, 1 máy bay, 1 xe thang, 2 xe hơi, 1 vòi xịt nước, mô hình đậu máy bay', '30', 'Trạm Cứu Hỏa Abrick', 699000, 999000, 10, 'EFF003026', 62, 1, 27, b'0');
INSERT INTO `product` VALUES (10, NULL, NULL, NULL, NULL, 'Bộ máy bay phản lực ECOIFFIER – 003045 là đồ chơi mô phỏng dành mang đến cho trẻ những giờ phút giải trí thú vị và hóa thân thành các nhân vật với nghề nghiệp mình yêu thích.', '30', 'Bộ máy bay phản lực', 349000, 499000, 10, 'EFF003045', 62, 1, 28, b'1');
INSERT INTO `product` VALUES (11, NULL, NULL, NULL, NULL, 'Bộ xếp chồng Fisher Price nay trở lại với phiên bản “khổng lồ” mới cho bé yêu', '0', 'Đồ chơi xếp chồng lúc lắc khổng lồ', 699000, 699000, 10, 'FP19-GJW15', 66, 1, 29, b'0');
INSERT INTO `product` VALUES (12, NULL, NULL, NULL, NULL, 'Thương hiệu đồ chơi hàng đầu của Mỹ với bề dày lịch sử hơn 90 năm. Top 5 về nhận dạng thương hiệu trên Thế giới, đã có mặt trên 150 Quốc gia. Không chỉ cung cấp những sản phẩm đồ chơi chất lượng, có nhiều chức năng cho vui chơi và tìm hiểu, Fisher Price còn có những sản phẩm cần thiết hỗ trợ bé phát triển toàn diện từ thời điểm lọt lòng.', '0', 'Đàn piano phát sáng cho bé', 779000, 779000, 10, 'FP19-FYK56', 66, 1, 30, b'0');
INSERT INTO `product` VALUES (13, NULL, NULL, NULL, NULL, 'Gogo Bus - Xe buýt biến hình thông minh là phim hoạt hình được yêu thích của các bạn nhỏ với chiếc xe biến hình thành nhiều phương tiện giao thông khác nhau Xe cảnh sát bánh đà nhún nhảy GoGo Bus với chức năng: - Đẩy, xe chạy nhanh về phía trước - Xe vừa chạy, vừa nhún nhảy tạo độ vui nhộn cho bé Giúp bé khám phá phương tiện giao thông cùng với hoạt động của bánh đà Xe được làm bằng chất liệu nhựa cao cấp Tăng trí tưởng tượng cho bé và phát triển vận động tinh', '0', 'Xe cảnh sát bánh đà nhún nhảy GoGo Justin', 499000, 499000, 10, 'GGB-YS3037C', 68, 1, 31, b'1');
INSERT INTO `product` VALUES (14, NULL, NULL, NULL, NULL, 'Gogo Bus - Xe buýt biến hình thông minh là phim hoạt hình được yêu thích của các bạn nhỏ với chiếc xe biến hình thành nhiều phương tiện giao thông khác nhau Xe cứu hỏa bánh đà nhún nhảy GoGo Firy với chức năng: - Đẩy, xe chạy nhanh về phía trước - Xe vừa chạy, vừa nhún nhảy tạo độ vui nhộn cho bé Giúp bé khám phá phương tiện giao thông cùng với hoạt động của bánh đà Xe được làm bằng chất liệu nhựa cao cấp Tăng trí tưởng tượng cho bé và phát triển vận động tinh', '0', 'Xe cứu hỏa bánh đà nhún nhảy GoGo Firy', 499000, 499000, 10, 'GGB-YS3037B', 68, 1, 32, b'0');
INSERT INTO `product` VALUES (15, NULL, NULL, NULL, NULL, 'Thương hiệu ảo thuật Hanky Panky đến từ Thái Lan! Các trò ảo thuật từ dễ đến khó, giúp trẻ thực hành biểu diễn một cách dễ dàng và lý thú! Nón Magic - 125 trò ảo thuật Úm ba la! Thỏ con xuất hiện trong chiếc nón? Chiếc đũa thần kỳ biến hóa trong tích tắc! Khám phá ngay!', '0', 'Bộ đôi bạn thân búp bê tóc mây bí ẩn', 619000, 619000, 10, 'HP1905', 66, 1, 33, b'0');
INSERT INTO `product` VALUES (16, NULL, NULL, NULL, NULL, 'Thương hiệu ảo thuật Hanky Panky đến từ Thái Lan! Các trò ảo thuật từ dễ đến khó, giúp trẻ thực hành biểu diễn một cách dễ dàng và lý thú! BST 25 trò ảo thuật cùng Hang Cọp Tháo nút thắt mà không cần chạm tay? Cây đũa thần ma thuật lơ lửng hay bóng bay nhiễm từ? Khám phá ngay!', '0', 'Bộ ảo thuật Hang Cọp', 499000, 499000, 10, 'HP1908', 66, 1, 34, b'1');
INSERT INTO `product` VALUES (17, NULL, NULL, NULL, NULL, 'Gôm lắp ráp Nhật Bản IWAKO với nhiều chủ đề khác nhau (ẩm thực, bánh ngọt, động vật, xe cộ và nhiều chủ để thú vị khác) như một phiên bản thu nhỏ của đồ thật', '0', 'GÔM LẮP RÁP IWAKO_SET_SINH VẬT BIỂN', 55000, 55000, 10, 'IW-OMO015', 66, 1, 35, b'0');
INSERT INTO `product` VALUES (18, NULL, NULL, NULL, NULL, 'Bộ Đôi Bạn Thân Búp Bê Tóc Mây Bí Ẩn là những nàng công chúa xinh đẹp với mái tóc dài đến 38 cm, đặc biệt có mùi hương trên tóc giống nhau. Đôi bạn thân búp bê luôn giấu khuôn mặt và giả dạng như chiếc que kem ốc quế bằng mái tóc tuyệt vời, quyến rũ của mình.', '0', 'GÔM LẮP RÁP IWAKO_SET_KHỦNG LONG', 55000, 55000, 10, 'IW-OMO014', 66, 1, 36, b'0');
INSERT INTO `product` VALUES (19, NULL, NULL, NULL, NULL, 'Hãy là một phần của cuộc phiêu lưu Jurassic World với những pha hành động chiến đấu đỉnh cao! Những nhân vật hành động người và khủng long xấp xỉ 6 inch này có các nhân vật con người được người hâm mộ yêu thích như Owen, khủng long Velociraptor Blue, Stygimoloch Stiggy và hơn thế nữa! Mỗi nhân vật hành động của con người có khớp tay và chân, điêu khắc chân thực và trang trí chân thực; mỗi hình khủng long có các tính năng khác nhau các điểm khớp nối, điêu khắc chân thực và trang trí chân thực. Sân khấu các cảnh kể chuyện hoành tráng và các trận chiến với khủng long với những nhân vật này và thể hiện tất cả các hành động và cuộc phiêu lưu của bộ phim! Mỗi con người và hình hành động khủng long được bán riêng, tùy thuộc vào tình trạng sẵn có. Thu thập tất cả! Trong khi đó, bạn sẽ không gặp phải khó khăn gì', '0', 'JURASSIC WORLD MATTEL', 139000, 139000, 10, 'JWM-GWT53', 66, 1, 37, b'1');
INSERT INTO `product` VALUES (20, NULL, NULL, NULL, NULL, 'Hãy là một phần của cuộc phiêu lưu Jurassic World với những pha hành động chiến đấu đỉnh cao! Toro chú khủng long nhân vật chính. Với nhiều âm thanh và các khớp linh hoạt Di chuyển đuôi lên và xuống để làm cho đầu quay lại Di chuyển đuôi lên và xuống để thực hiện hành động đập đầu và trở nên hung dữ hơn. Xoay đuôi để thực hiện hành động đập đầu và gầm rú Nhấn vào nút ở đuôi để mở miệng và thực hiện hành động NGOẠM', '0', 'JURASSIC WORLD MATTEL', 139000, 139000, 10, 'JWM-GNL07', 66, 1, 38, b'0');

-- ----------------------------
-- Table structure for product_age
-- ----------------------------
DROP TABLE IF EXISTS `product_age`;
CREATE TABLE `product_age`  (
  `product_id` bigint NOT NULL,
  `age_id` bigint NOT NULL,
  PRIMARY KEY (`product_id`, `age_id`) USING BTREE,
  INDEX `FK8cyqr7d2e7r8e9q87d0kdtuxc`(`age_id`) USING BTREE,
  CONSTRAINT `FK8cyqr7d2e7r8e9q87d0kdtuxc` FOREIGN KEY (`age_id`) REFERENCES `age` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKrd2pbsra3p2q84uw1sbjc452t` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product_age
-- ----------------------------
INSERT INTO `product_age` VALUES (1, 1);
INSERT INTO `product_age` VALUES (2, 1);
INSERT INTO `product_age` VALUES (1, 2);
INSERT INTO `product_age` VALUES (2, 2);
INSERT INTO `product_age` VALUES (3, 2);
INSERT INTO `product_age` VALUES (4, 2);
INSERT INTO `product_age` VALUES (5, 2);
INSERT INTO `product_age` VALUES (3, 3);
INSERT INTO `product_age` VALUES (4, 3);
INSERT INTO `product_age` VALUES (2, 4);

-- ----------------------------
-- Table structure for product_detail
-- ----------------------------
DROP TABLE IF EXISTS `product_detail`;
CREATE TABLE `product_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `product_id` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FKilxoi77ctyin6jn9robktb16c`(`product_id`) USING BTREE,
  CONSTRAINT `FKilxoi77ctyin6jn9robktb16c` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product_detail
-- ----------------------------

-- ----------------------------
-- Table structure for product_use_obj
-- ----------------------------
DROP TABLE IF EXISTS `product_use_obj`;
CREATE TABLE `product_use_obj`  (
  `product_id` bigint NOT NULL,
  `user_obj_id` bigint NOT NULL,
  PRIMARY KEY (`product_id`, `user_obj_id`) USING BTREE,
  INDEX `FK1i2apmogj7u6utq0goqumrk3x`(`user_obj_id`) USING BTREE,
  CONSTRAINT `FK1i2apmogj7u6utq0goqumrk3x` FOREIGN KEY (`user_obj_id`) REFERENCES `use_object` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKlpnnrws9oeiv13kwans3jiram` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of product_use_obj
-- ----------------------------
INSERT INTO `product_use_obj` VALUES (1, 1);
INSERT INTO `product_use_obj` VALUES (5, 1);
INSERT INTO `product_use_obj` VALUES (4, 2);
INSERT INTO `product_use_obj` VALUES (2, 3);
INSERT INTO `product_use_obj` VALUES (3, 3);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for role_permission
-- ----------------------------
DROP TABLE IF EXISTS `role_permission`;
CREATE TABLE `role_permission`  (
  `role_id` bigint NOT NULL,
  `permission_id` bigint NOT NULL,
  PRIMARY KEY (`role_id`, `permission_id`) USING BTREE,
  INDEX `FKf8yllw1ecvwqy3ehyxawqa1qp`(`permission_id`) USING BTREE,
  CONSTRAINT `FKa6jx8n8xkesmjmv6jqug6bg68` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKf8yllw1ecvwqy3ehyxawqa1qp` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_permission
-- ----------------------------

-- ----------------------------
-- Table structure for shopping_cart
-- ----------------------------
DROP TABLE IF EXISTS `shopping_cart`;
CREATE TABLE `shopping_cart`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `user_id` bigint NULL DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK254qp5akhuaaj9n5co4jww3fk`(`user_id`) USING BTREE,
  CONSTRAINT `FK254qp5akhuaaj9n5co4jww3fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of shopping_cart
-- ----------------------------
INSERT INTO `shopping_cart` VALUES (28, NULL, '2021-09-09 22:50:19', NULL, '2021-09-09 22:50:38', 1, 1);
INSERT INTO `shopping_cart` VALUES (29, NULL, '2021-09-10 01:16:38', NULL, '2021-09-10 01:16:52', 1, 1);
INSERT INTO `shopping_cart` VALUES (30, NULL, '2021-09-10 01:17:01', NULL, '2021-09-10 23:17:42', 1, 1);
INSERT INTO `shopping_cart` VALUES (31, NULL, '2021-09-10 23:17:48', NULL, '2021-09-10 23:17:58', 1, 1);
INSERT INTO `shopping_cart` VALUES (32, NULL, '2021-09-10 23:18:16', NULL, '2021-09-10 23:18:23', 1, 1);
INSERT INTO `shopping_cart` VALUES (33, NULL, '2021-09-10 23:18:29', NULL, '2021-09-10 23:18:41', 1, 1);
INSERT INTO `shopping_cart` VALUES (34, NULL, '2021-09-10 23:18:44', NULL, '2021-09-10 23:18:58', 1, 1);
INSERT INTO `shopping_cart` VALUES (35, NULL, '2021-09-10 23:19:25', NULL, '2021-09-10 23:19:34', 1, 1);
INSERT INTO `shopping_cart` VALUES (36, NULL, '2021-09-10 23:19:40', NULL, '2021-09-10 23:19:48', 1, 1);
INSERT INTO `shopping_cart` VALUES (37, NULL, '2021-09-11 02:51:04', NULL, '2021-09-13 19:49:20', 1, 1);
INSERT INTO `shopping_cart` VALUES (38, NULL, '2021-09-17 11:52:44', NULL, '2021-09-17 15:34:11', 1, 1);
INSERT INTO `shopping_cart` VALUES (39, NULL, '2021-09-17 15:34:14', NULL, '2021-09-17 15:35:11', 1, 1);
INSERT INTO `shopping_cart` VALUES (40, NULL, '2021-09-17 15:35:58', NULL, '2021-09-18 01:55:54', 1, 1);
INSERT INTO `shopping_cart` VALUES (41, NULL, '2021-09-18 02:21:46', NULL, '2021-09-18 02:22:28', 1, 1);
INSERT INTO `shopping_cart` VALUES (42, NULL, '2021-09-18 02:32:37', NULL, '2021-09-18 07:32:00', 1, 1);
INSERT INTO `shopping_cart` VALUES (43, NULL, '2021-09-18 07:57:13', NULL, '2021-09-18 09:32:20', 1, 1);
INSERT INTO `shopping_cart` VALUES (44, NULL, '2021-09-18 09:32:59', NULL, '2021-09-18 22:19:42', 1, 1);
INSERT INTO `shopping_cart` VALUES (45, NULL, '2021-09-19 01:03:11', NULL, '2021-09-19 01:03:11', 1, 0);

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag`  (
  `id` bigint NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tag
-- ----------------------------

-- ----------------------------
-- Table structure for tax
-- ----------------------------
DROP TABLE IF EXISTS `tax`;
CREATE TABLE `tax`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NOT NULL,
  `tax_percent` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tax
-- ----------------------------
INSERT INTO `tax` VALUES (1, NULL, NULL, NULL, NULL, 'TAX5', 'Tax 5%', 1, 5);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `token_expiration_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 454 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 'anonymousUser', '2021-07-28 19:48:14', 'anonymousUser', '2021-07-28 19:48:14', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzQ3NjUwMywiaWF0IjoxNjI3NDc2NDkzfQ.izQPM0H9FQcHkqQuGwlQ4w72YAjK0FGWhD8Z6vKl9hjdnjDM8DsVzgVrwGAmhaVTUJ4pWj3qK9fqd9_gI69xGw', '2021-07-28 19:48:23');
INSERT INTO `token` VALUES (2, 'anonymousUser', '2021-07-28 19:50:11', 'anonymousUser', '2021-07-28 19:50:11', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzQ3NjYyMSwiaWF0IjoxNjI3NDc2NjExfQ.ugYZ1_GBmyZWMDVCZiWcahr_5DQCE7_xVHPHtkrpx_N5Iy0QVO16Q1OwXIsO7VLXnfIVJrrrWGpooR453NHN5g', '2021-07-28 19:50:21');
INSERT INTO `token` VALUES (3, 'anonymousUser', '2021-07-29 00:59:05', 'anonymousUser', '2021-07-29 00:59:05', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzQ5NTE1NSwiaWF0IjoxNjI3NDk1MTQ1fQ.9fHsLthFA_lI5iNVCY-zQOqbU4JxTlBBhL9HH5tdPnXPE7WvaMaVAUcwZqkQbwfNz-2-ehVmSXmRCtydeOm9vw', '2021-07-29 00:59:15');
INSERT INTO `token` VALUES (4, 'anonymousUser', '2021-07-29 01:00:19', 'anonymousUser', '2021-07-29 01:00:19', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzQ5NTIyOSwiaWF0IjoxNjI3NDk1MjE5fQ.u6cUcU0Rth28fFwCUSxVNyUEs0oYBW_m3nFtLWzUoAq4Yhjrmt4LvymI5fPwhBAVLZrKIlleLeSndPLLxZ5UCA', '2021-07-29 01:00:29');
INSERT INTO `token` VALUES (5, 'anonymousUser', '2021-07-29 01:01:57', 'anonymousUser', '2021-07-29 01:01:57', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzQ5NTMyNiwiaWF0IjoxNjI3NDk1MzE2fQ.OJ2czXlNA3GrT_B0W_EXoOsxfcbg6BcpoaJsu6LB6e6zh_PwCoh3ysVp4aLdAXskNxfgKsp6CUzNLVBVOUREJQ', '2021-07-29 01:02:06');
INSERT INTO `token` VALUES (6, 'anonymousUser', '2021-07-29 18:55:39', NULL, '2021-07-29 19:00:34', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzU2MDA0NCwiaWF0IjoxNjI3NTYwMDM0fQ.YiUl-sL3VePgkw5sVSsxVjXpFPhEzI6O0iAW4tc5hJEN4Gl-7U_eIJurPf6Olu1DTOhA22VfQTgx970j0B5fKQ', '2021-07-29 19:00:44');
INSERT INTO `token` VALUES (7, 'anonymousUser', '2021-07-29 19:00:48', NULL, '2021-07-29 19:07:51', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzU2MDQ4MSwiaWF0IjoxNjI3NTYwNDcxfQ.9DPicn7Bm6e9HiyKXEQ7uEN77A3RbyygODu_Blgb-852_57tkfT754GkTd0_h-gDtvBYyclQpKyEYnKrQs8Ttg', '2021-07-29 19:08:01');
INSERT INTO `token` VALUES (9, 'anonymousUser', '2021-07-29 19:26:42', NULL, '2021-07-29 19:28:54', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzU2MTc0NCwiaWF0IjoxNjI3NTYxNzM0fQ.1Pme8BuUU8eDY-_Kg0Ugf1wjB-fioaqq7V5Lqwz-8nqfSPCiy297jykiNlh8dpITmhSFzNLD-umgBmGPWWgjrQ', '2021-07-29 19:29:04');
INSERT INTO `token` VALUES (12, 'anonymousUser', '2021-07-29 20:34:21', NULL, '2021-07-29 20:37:21', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzU2NTg1MSwiaWF0IjoxNjI3NTY1ODQxfQ.QuGTx3hSQ1LVZgvHlke6D3MGHq4t8Ek32EONrZ_kwe2vMkWAPDV87cTMZ1gO93OI3KiVXjRTWgnFXx7YU4F1xg', '2021-07-29 20:37:31');
INSERT INTO `token` VALUES (14, 'anonymousUser', '2021-07-29 20:45:05', NULL, '2021-07-29 20:46:41', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzU2NjQxMSwiaWF0IjoxNjI3NTY2NDAxfQ.I1w7iRPT2if3NkeB9phA4bb414L-LyU4Dq1lHaxAe8ChJBU8xD3PkYqvSbNvvXiacGzdSlhXn2pt7klHwTQXgQ', '2021-07-29 20:46:51');
INSERT INTO `token` VALUES (15, 'anonymousUser', '2021-07-29 20:49:05', NULL, '2021-07-29 20:50:01', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzU2NjYxMSwiaWF0IjoxNjI3NTY2NjAxfQ.9uN9nI4OmhGu1QRwmzyQ2QowT3sZwCUTTHOWCOvM1GdJ3TEVQpNjWVaXThx9mKBxlY_I5XO2OVsJVBNgid0HxA', '2021-07-29 20:50:11');
INSERT INTO `token` VALUES (17, 'anonymousUser', '2021-07-29 20:52:08', NULL, '2021-07-29 20:55:03', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzU2NjkxMywiaWF0IjoxNjI3NTY2OTAzfQ.jllT-ZZdc9sPV7A12diY3mT15ecT5bgvs7f74zDYWnnh7oFDl3RT6MUM_KJ7bsaZbjLxgGahe8rM-GqRQBkZ5g', '2021-07-29 20:55:13');
INSERT INTO `token` VALUES (18, 'anonymousUser', '2021-07-29 21:02:29', NULL, '2021-07-29 21:08:05', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzU2NzY5NSwiaWF0IjoxNjI3NTY3Njg1fQ.I2AyrLspVJ7XTm4szF8sFHp8VgJgOLIP8PhzaDQRdFDjjofyZ7ezzTyUlVyRBN_rwNB5uIG2xnm5az2LHZ6p3Q', '2021-07-29 21:08:15');
INSERT INTO `token` VALUES (19, 'anonymousUser', '2021-07-29 21:15:01', NULL, '2021-07-29 21:24:15', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzU2ODY2NCwiaWF0IjoxNjI3NTY4NjU0fQ.xG5ucICk1g3A62izfrFm7nVT9ZZ_isBZNQxnd1sLfvWBtHmf1hcuuU6n6Ty4HSumNgmGXCuZ8mAHsI9D95BFzg', '2021-07-29 21:24:24');
INSERT INTO `token` VALUES (20, 'anonymousUser', '2021-07-29 21:26:19', NULL, '2021-07-29 22:48:11', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzU3MzcwMSwiaWF0IjoxNjI3NTczNjkxfQ.4uMFzwOkWKGkisXwtgq09BFW7-FSff4k__ENy5KUYm5dDFsYzf8VNNVzKFY42oTDptRa4e2Ax4CV8dq5acE0Dg', '2021-07-29 22:48:21');
INSERT INTO `token` VALUES (21, 'anonymousUser', '2021-07-29 22:52:02', NULL, '2021-07-29 22:59:07', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzU3NDM1NywiaWF0IjoxNjI3NTc0MzQ3fQ.CGhHM4hvt5Zc6l17_Nht_gAuR43dassQVf3-VNDgm3VlC11KEfZ-YrQiwHPpjKCviyo2hHe_vBKxl8UdFJJenw', '2021-07-29 22:59:17');
INSERT INTO `token` VALUES (22, 'anonymousUser', '2021-07-30 00:03:32', NULL, '2021-07-30 00:39:12', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzU4MDM2MSwiaWF0IjoxNjI3NTgwMzUxfQ.saNLVP3UsURNo8-PVNqGpo86ou4Pjl7XbXv9iwEiI4zBT7GyLUcOsovsqFAUtpaYQ5PHWIsHKaBhUuwCBuU0DQ', '2021-07-30 00:39:21');
INSERT INTO `token` VALUES (23, 'anonymousUser', '2021-07-30 01:21:27', NULL, '2021-07-30 01:22:07', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzU4MjkzNiwiaWF0IjoxNjI3NTgyOTI2fQ.RtEjfAexCuZzwXbHiWcszdRJniUl22us1UoH9XojUc_M4AngEKPh7Xa2RN-DvMpQ7YNEwGgFWO79ZmhOdB0sIQ', '2021-07-30 01:22:16');
INSERT INTO `token` VALUES (24, 'anonymousUser', '2021-07-30 01:29:17', NULL, '2021-07-30 01:31:34', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzU4MzUwNCwiaWF0IjoxNjI3NTgzNDk0fQ.eXY-64HY6MiMCgTvpKA0rqxoswn_mtCv6Vql6SFgLwRUshMUAW2D5iQybBesK9b9_msNtCMXLsC8dY87GtcT1A', '2021-07-30 01:31:44');
INSERT INTO `token` VALUES (25, 'anonymousUser', '2021-07-30 18:27:37', NULL, '2021-07-30 18:42:13', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY0NTM0MywiaWF0IjoxNjI3NjQ1MzMzfQ.eFvGvJ5tjR6Z2i3I1xmDYGJBCXHTU0YjKJDPiAVF5zIYNH-nl8KRpU55S2TxZMklKYzAelJZ8bbHK1NFx0GDeA', '2021-07-30 18:42:23');
INSERT INTO `token` VALUES (26, 'anonymousUser', '2021-07-30 18:44:29', NULL, '2021-07-30 19:03:08', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY0NjU5NywiaWF0IjoxNjI3NjQ2NTg3fQ.DcJUTd5VwzX_oZyaq22CL_Ujw9CyXQbm80c36qu9y08oGhGvyINSsDMPMvRDZIjP2LJ0-LqrUwSASA2rAomgWg', '2021-07-30 19:03:17');
INSERT INTO `token` VALUES (27, 'anonymousUser', '2021-07-30 19:06:17', NULL, '2021-07-30 19:26:45', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY0ODAxNSwiaWF0IjoxNjI3NjQ4MDA1fQ.jvelDFGTaoD-UD505dGps9-zhLTZpC7hqYwnOljDNs6ZhKORfJGmlQpNoibU5Zs7A1UR9M4s7I4g3fTqj8FTCg', '2021-07-30 19:26:55');
INSERT INTO `token` VALUES (28, 'anonymousUser', '2021-07-30 22:41:42', NULL, '2021-07-30 22:42:15', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY1OTc0NCwiaWF0IjoxNjI3NjU5NzM0fQ.8L06DgEtJzFYUBZJ2kL8iry-SCuukRi44zO6v6QDg-Ft4gAw9wSc4Mb1UlVjK6JtNRbswoysj3G2gN2zTxX98w', '2021-07-30 22:42:24');
INSERT INTO `token` VALUES (29, 'anonymousUser', '2021-07-30 22:42:40', NULL, '2021-07-30 22:45:55', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY1OTk2NSwiaWF0IjoxNjI3NjU5OTU1fQ.XAqPwoJayF9iMpCvg6jWtxDAHNF5Xwa0NRXa_buyu39nwPp_kPnIQDqMFfsmp6v_PBx8cHmBxswNFQW6B-KKvg', '2021-07-30 22:46:05');
INSERT INTO `token` VALUES (30, 'anonymousUser', '2021-07-30 22:46:30', NULL, '2021-07-30 22:48:36', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY2MDEyNiwiaWF0IjoxNjI3NjYwMTE2fQ.7eWmhyeEruLilPyLGTk58T-J-fpnPVTMzUCLMbZvlyL7zqB7Sszi7exzDfDMtGO0NINxkabxdEIuF0ortN05XQ', '2021-07-30 22:48:46');
INSERT INTO `token` VALUES (31, 'anonymousUser', '2021-07-30 22:49:19', NULL, '2021-07-30 22:49:56', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY2MDIwNiwiaWF0IjoxNjI3NjYwMTk2fQ.jPVqfLtbYWK-54e6bXDRVuP9Al5WsP11wPymC_hAWKf6OZbkxFX-pvyPp6h6nVqf9lLlszi6C4Ye9DtG5ggEXw', '2021-07-30 22:50:06');
INSERT INTO `token` VALUES (32, 'anonymousUser', '2021-07-30 22:50:25', NULL, '2021-07-30 22:51:52', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY2MDMyMiwiaWF0IjoxNjI3NjYwMzEyfQ.ZhHJeTKJOKmy4gcymDiOALLPnhJui7SLviECOKb0w71cEFraGfN9S1_ikGjesnGYKiMOkZFQ7A8A98GcNIKCmw', '2021-07-30 22:52:02');
INSERT INTO `token` VALUES (33, 'anonymousUser', '2021-07-30 23:06:22', NULL, '2021-07-30 23:07:35', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY2MTI2NCwiaWF0IjoxNjI3NjYxMjU0fQ.TCJjsGX6cRWpkgboBxREovGZ-Pw2BDyAd_1D_awfVmGZhZ69C8PH6Wk1OZ7xfP186POUzXsoQv1tDq2mZBrTMQ', '2021-07-30 23:07:44');
INSERT INTO `token` VALUES (34, 'anonymousUser', '2021-07-30 23:08:02', NULL, '2021-07-30 23:09:48', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY2MTM5NywiaWF0IjoxNjI3NjYxMzg3fQ.dfiBObGlJp1YirbLtP4VaCIcVA8tiXuVKjdq_tGa3vdNxKd7F3cGXPr4qo3KdSnlM9xaO8g62DTaieA7e1xMTg', '2021-07-30 23:09:57');
INSERT INTO `token` VALUES (35, 'anonymousUser', '2021-07-30 23:10:18', NULL, '2021-07-30 23:12:37', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY2MTU2NiwiaWF0IjoxNjI3NjYxNTU2fQ.lJsa1jCY4tJGNRYH7QSRbYIa9MoMTPPz_GU9lCM-cOVlqEgMR2Mq1_PqWo_lmD0HKfMKJHFo3lpSYbPXM9sHjA', '2021-07-30 23:12:46');
INSERT INTO `token` VALUES (36, 'anonymousUser', '2021-07-30 23:12:43', NULL, '2021-07-30 23:14:36', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY2MTY4NSwiaWF0IjoxNjI3NjYxNjc1fQ.PQV87ckqv7CHx0HQFy5j_7UgbBI_meYIw3FE2OrzFjkDu-9Ei-W1IRmRcDhOJxI2DKwfnNyPs6uGuV5s8TidMQ', '2021-07-30 23:14:45');
INSERT INTO `token` VALUES (37, 'anonymousUser', '2021-07-30 23:15:06', NULL, '2021-07-30 23:32:38', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY2Mjc2NywiaWF0IjoxNjI3NjYyNzU3fQ.OfMYbCuRzlQOCKji2ZljI8KYvr4oLHDuzV-n_zbcbDJpgGiHhcLbhvf2IEHasNgQlDYOidr4aWpd6MsBYwQfpg', '2021-07-30 23:32:47');
INSERT INTO `token` VALUES (38, 'anonymousUser', '2021-07-30 23:33:04', NULL, '2021-07-30 23:41:37', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY2MzMwNiwiaWF0IjoxNjI3NjYzMjk2fQ.O3JutfdZPhDHWwoM3iOpiLT_CI-wgQ-6-T58EFPrtprhmvJD_1uwuhR2IPzOsL9xCD3SDx9TP9C1bZCkoBw2-A', '2021-07-30 23:41:46');
INSERT INTO `token` VALUES (39, 'anonymousUser', '2021-07-30 23:41:58', NULL, '2021-07-30 23:42:46', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY2MzM3NiwiaWF0IjoxNjI3NjYzMzY2fQ.4SknhVevaMDg67xOE4XlHwD1kxM4Wg8rZtDvqQ5M9g9qaQ6fMElcWwTjjcL18A_p-VEO9G9Tprk8B3u0SibvEg', '2021-07-30 23:42:56');
INSERT INTO `token` VALUES (40, 'anonymousUser', '2021-07-30 23:44:13', NULL, '2021-07-30 23:59:34', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY2NDM4MywiaWF0IjoxNjI3NjY0MzczfQ.GLbGIhlZBHpNF420cSrnHVWbqkBoSQpyPP5t5hEQ0GHamNxMvECWz7bvRqDUSD2_uZz2OoeP0jgxExQ4mdJqRw', '2021-07-30 23:59:43');
INSERT INTO `token` VALUES (41, 'anonymousUser', '2021-07-31 02:09:19', NULL, '2021-07-31 02:12:03', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzY3MjMzMiwiaWF0IjoxNjI3NjcyMzIyfQ.WnvdQzqFccX8BUKxp7gwhdm1Z_aPyvB-4mMhyPVoyL2tTCTN9DFrZavYVfFPD0Dli06siuxrp5exGHjHoP6Bdg', '2021-07-31 02:12:12');
INSERT INTO `token` VALUES (42, 'anonymousUser', '2021-07-31 17:58:05', NULL, '2021-07-31 20:01:42', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzczNjUxMSwiaWF0IjoxNjI3NzM2NTAxfQ.z7kI8vLlHe1qTRubyykPkLnbp3Zp7MAbeFBZpNGf3d7QmvStntOJo0KQAMfP2cUUgjTzFH26j55jMcdgTrrEBw', '2021-07-31 20:01:51');
INSERT INTO `token` VALUES (43, 'anonymousUser', '2021-07-31 20:02:49', NULL, '2021-07-31 20:02:58', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzczNjU4NywiaWF0IjoxNjI3NzM2NTc3fQ.h9xwsUgU3Usn_H7Me0i8IUvBXWa6OBi9vLTy-UrSiMmstEEGJoLInZGJW0eETqUcR3t6s6gGxSlFeg_VkbAM-Q', '2021-07-31 20:03:07');
INSERT INTO `token` VALUES (44, 'anonymousUser', '2021-07-31 20:03:47', NULL, '2021-07-31 20:11:35', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzczNzEwNCwiaWF0IjoxNjI3NzM3MDk0fQ.SEoLIGfal_kNCrW4rSO-vlwKg6Xp_iIV0QRqm01hfUzKm6f8tH88CEc1tHHe12NtR_oofW1vP3SdGa9znuGaLQ', '2021-07-31 20:11:44');
INSERT INTO `token` VALUES (45, 'anonymousUser', '2021-07-31 20:12:17', NULL, '2021-07-31 20:36:06', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzczODU3NSwiaWF0IjoxNjI3NzM4NTY1fQ.PnG_IMkdVjRZmRT2bKPCG86Cu7K5i85TnFShom-mK05wCbZmuTv8_OLAPtvNyA7CdnnGGJRLZg5iwcg79MA3Hg', '2021-07-31 20:36:15');
INSERT INTO `token` VALUES (46, 'anonymousUser', '2021-07-31 20:37:03', NULL, '2021-07-31 21:08:39', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0MDUyOCwiaWF0IjoxNjI3NzQwNTE4fQ.wC0GDOe4zkHexPkQD1ngwmrkOSM66sk_vfgve9FvaQOwPMa0a5ss5FosUz_P_vtzV9a-2jw2Bfbv84CrQE04aw', '2021-07-31 21:08:48');
INSERT INTO `token` VALUES (48, 'anonymousUser', '2021-07-31 21:19:02', NULL, '2021-07-31 21:24:05', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0MTQ1NSwiaWF0IjoxNjI3NzQxNDQ1fQ.kw5lQ0d8R6pnRnUd9E6QevIHKjJWGlXWS0zaQJyTJjbBovlzaRA1PC0rBbrzjYfnO7wqw_1uJBl7NuLSftcdpA', '2021-07-31 21:24:15');
INSERT INTO `token` VALUES (49, 'anonymousUser', '2021-07-31 21:26:17', NULL, '2021-07-31 21:27:30', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0MTY2MCwiaWF0IjoxNjI3NzQxNjUwfQ.ZT8j2HNXpWNCD9BQK3ub05uhev7GJrJE0i__13kUOofK7vvQuEimwCaVXNjdz8X0zXhd16t9ajyCGpm2KmJ_cw', '2021-07-31 21:27:40');
INSERT INTO `token` VALUES (50, 'anonymousUser', '2021-07-31 21:27:54', NULL, '2021-07-31 21:28:43', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0MTczMywiaWF0IjoxNjI3NzQxNzIzfQ.sKGkguVzImvC9EDw-OoMvpBP0yu8EYxkoCHIvUrqo69dEmbVpf3nAajpBgWdytdVvzFUrccE9F65Umwh3cIGMg', '2021-07-31 21:28:53');
INSERT INTO `token` VALUES (51, 'anonymousUser', '2021-07-31 21:29:56', NULL, '2021-07-31 21:54:13', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0MzI2MiwiaWF0IjoxNjI3NzQzMjUyfQ.m_EMHwgcqjbyb-EjZm15ClWDYMsQ6uFpJEpr_Xd86fowHTTi0cDGV0lAE7Ylfxm77lvKhI9DdMFbnnOIl3lVXQ', '2021-07-31 21:54:22');
INSERT INTO `token` VALUES (52, 'anonymousUser', '2021-07-31 21:55:03', NULL, '2021-07-31 21:55:12', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0MzMyMSwiaWF0IjoxNjI3NzQzMzExfQ.GX9xE-m3tbkNRTWk6Yeb_6V0JtHwhogDgeQ7C7H5pQchNbVUByh6vHEmXgeqshr0_-Na6qNSJDvptdJ8FQSwIA', '2021-07-31 21:55:21');
INSERT INTO `token` VALUES (53, 'anonymousUser', '2021-07-31 21:55:50', NULL, '2021-07-31 21:57:49', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0MzQ3OSwiaWF0IjoxNjI3NzQzNDY5fQ.-QJZtWi-91x3t687F2H6v5azpoi7OmaNFoiACUQle91jadkqCkARmsFBNLGIO5k3dg-fJSJjpD9vex-hFaqzsQ', '2021-07-31 21:57:59');
INSERT INTO `token` VALUES (54, 'anonymousUser', '2021-07-31 22:10:54', NULL, '2021-07-31 22:12:57', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0NDM4NywiaWF0IjoxNjI3NzQ0Mzc3fQ.H6E0A8T2ylaNh9JTua8zdBH8Ue5bDkUo5BXBsJbvWRINzjj-WNHzuK6hidKjbtR16N-V-W_RwcV0i4WZ0m8Kwg', '2021-07-31 22:13:07');
INSERT INTO `token` VALUES (55, 'anonymousUser', '2021-07-31 22:13:27', NULL, '2021-07-31 22:17:04', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0NDYzMywiaWF0IjoxNjI3NzQ0NjIzfQ.FBc1PiGnl7y0llxtCwHhU79AX8zg4-4savluCQVi_zc74t1EzZIudDChJcPi-n5l7AOt9QYqrJ3dEZKvHoPLJw', '2021-07-31 22:17:13');
INSERT INTO `token` VALUES (56, 'anonymousUser', '2021-07-31 22:28:35', 'anonymousUser', '2021-07-31 22:28:35', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0NTMyNSwiaWF0IjoxNjI3NzQ1MzE1fQ.51tI53Ch9lqP5eJHBvnW2xaJMTDZOkRmKV-A_BByuTkMS6S9qwfg_6F-miXsDOzhhjQ8HcDvK-0h9dOf3ws2cw', '2021-07-31 22:28:45');
INSERT INTO `token` VALUES (57, 'anonymousUser', '2021-07-31 22:29:42', NULL, '2021-07-31 22:33:46', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0NTYzNSwiaWF0IjoxNjI3NzQ1NjI1fQ.cUsYlzgaKyCKOigtxQKC8eAeLjcZAGgAEE-jW5muynkox8S8Pa_9LwkeU9Ec-V1O186Zi5vQx7v0GSq8AAEckQ', '2021-07-31 22:33:55');
INSERT INTO `token` VALUES (58, 'anonymousUser', '2021-07-31 22:37:17', NULL, '2021-07-31 22:38:18', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0NTkwOCwiaWF0IjoxNjI3NzQ1ODk4fQ.9bOXlsn2lIuxaUM_TruaukaUL5J8J0i8kUQVnT2DnQ8aPxlPC5tgV9cfjQWPvswGm_LP9VJHj35K9gj3k3Ynug', '2021-07-31 22:38:28');
INSERT INTO `token` VALUES (59, 'anonymousUser', '2021-07-31 22:39:09', NULL, '2021-07-31 22:40:40', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0NjA0OSwiaWF0IjoxNjI3NzQ2MDM5fQ.EAr5hOIzM3LyIi8yt540cnHRKoeAz3UVTL_fmeyJmGz36LYPRQO-WWWrgPWOPhQfnHBSK33I420yCqyxn4JqMw', '2021-07-31 22:40:49');
INSERT INTO `token` VALUES (60, 'anonymousUser', '2021-07-31 22:40:51', NULL, '2021-07-31 22:47:52', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0NjQ4MSwiaWF0IjoxNjI3NzQ2NDcxfQ.OICYhPf4NOjckU8QqBcsQpPSH5YV83qFUa7XNiblw1o8WCloR_JooMLj9YwOTw1HzOnPg5THnohR1ibJ8XpRrA', '2021-07-31 22:48:01');
INSERT INTO `token` VALUES (61, 'anonymousUser', '2021-07-31 22:48:38', NULL, '2021-07-31 22:49:44', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0NjU5MywiaWF0IjoxNjI3NzQ2NTgzfQ.q6RDh0r8qIxYNl5H6RdaT6pHlF8uCWqvZD1I4ZSl7k2-vrA_Q_kCobeBygQHjhmDvbC0grT8ya-IepXe5bOwmw', '2021-07-31 22:49:53');
INSERT INTO `token` VALUES (62, 'anonymousUser', '2021-07-31 22:50:23', NULL, '2021-07-31 22:55:53', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0Njk2MiwiaWF0IjoxNjI3NzQ2OTUyfQ.F0QzkqJ0Y6rsPbXEZmZzelmJObmNkPbPI27O_Fp_YH78KxrllgSNlZHmpTn7L5LeTiKS1Z-yZIa2E17VI4NVgA', '2021-07-31 22:56:02');
INSERT INTO `token` VALUES (63, 'anonymousUser', '2021-07-31 22:56:02', NULL, '2021-07-31 22:57:08', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0NzAzNywiaWF0IjoxNjI3NzQ3MDI3fQ.IYxnFrWX2OI3Kw5p-lem9evn-C2KQ0njGAHQvZceBz0rVRPgEv8I9gWnswoMaVGN2Hnz8d4SgUonivk5nom_zg', '2021-07-31 22:57:17');
INSERT INTO `token` VALUES (64, 'anonymousUser', '2021-07-31 23:00:38', NULL, '2021-07-31 23:06:13', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0NzU4MywiaWF0IjoxNjI3NzQ3NTczfQ.tnalQXTa6kAo5ORhNwg9H2DrOZwfKqeOldf3ro-ogebTyosPUc83Xr9w-h5o6ZJknNKrTOW2cO2VQSBucLDnyQ', '2021-07-31 23:06:23');
INSERT INTO `token` VALUES (65, 'anonymousUser', '2021-07-31 23:06:45', NULL, '2021-07-31 23:09:33', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0Nzc4MiwiaWF0IjoxNjI3NzQ3NzcyfQ.3HIyoKnFqDP2gsPb-P3IX73_UBVSWi4KRapjKhvApq3dZpF96uGLW24tCiKq0vr7rA-hb8atRqBZCJkqdS7nyA', '2021-07-31 23:09:42');
INSERT INTO `token` VALUES (66, 'anonymousUser', '2021-07-31 23:10:44', NULL, '2021-07-31 23:12:36', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0Nzk2NiwiaWF0IjoxNjI3NzQ3OTU2fQ.pdp4BZK2z-Kik8R0cKkaXEwI58buoyuErNxBjeNGP7otMmx2KsRWirPi3T2qnCkMLOnuqGuNj_Q0whnO3wsgLA', '2021-07-31 23:12:46');
INSERT INTO `token` VALUES (67, 'anonymousUser', '2021-07-31 23:13:23', NULL, '2021-07-31 23:24:27', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzc0ODY3NiwiaWF0IjoxNjI3NzQ4NjY2fQ.RmShRerDx1kkZ8cZglAOxt20gMt1RD66_7pfLfFurBzE5blx6GR3G__M2HzBoqQZi92l2BpTaH67f7WGyaHTKw', '2021-07-31 23:24:36');
INSERT INTO `token` VALUES (68, 'anonymousUser', '2021-08-01 18:06:56', NULL, '2021-08-01 18:07:44', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzgxNjA3MywiaWF0IjoxNjI3ODE2MDYzfQ.2-HQKy14fmAPJfxJpNrS1m0ghb-gxMrFEFPSzDU0ug5UHPmwTwUb3EZxVdwplDCsd2Ci8Sm03IQbpcjirhzZdg', '2021-08-01 18:07:53');
INSERT INTO `token` VALUES (69, 'anonymousUser', '2021-08-01 18:13:30', NULL, '2021-08-01 18:14:11', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzgxNjQ2MCwiaWF0IjoxNjI3ODE2NDUwfQ.4sCbl1AxXQKd-NjPJcJNAcGH5o5OKIGP4q5YvyJ_VM8qqzC4kEC8C5kcGhvKob7Zhre9oXbJGWzfKE5mbFLJJQ', '2021-08-01 18:14:20');
INSERT INTO `token` VALUES (70, 'anonymousUser', '2021-08-01 18:15:48', NULL, '2021-08-01 18:18:38', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzgxNjcyOCwiaWF0IjoxNjI3ODE2NzE4fQ.W0EUs88qvmKxZD3nvvW9FDlWb0Y7SvgEYcoYB_m4tfZjZHhcL7z_ICVRGbAGAOJ-GQXe5blkMSb96dOwzUWCvw', '2021-08-01 18:18:48');
INSERT INTO `token` VALUES (71, 'anonymousUser', '2021-08-01 18:19:11', NULL, '2021-08-01 18:54:47', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzgxODg5NiwiaWF0IjoxNjI3ODE4ODg2fQ.WulilLaTBb1kRbcmHaJJwhfujFLqbh6qFoKdSOij9VH_RIk89pf4uFJ8W2qdezTuwcgj2fsu6L5MlXIA6tFmRA', '2021-08-01 18:54:56');
INSERT INTO `token` VALUES (72, 'anonymousUser', '2021-08-01 18:55:51', NULL, '2021-08-01 18:57:28', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzgxOTA1OCwiaWF0IjoxNjI3ODE5MDQ4fQ.WjYxYSx74thXACPiauamtcBeN56_qHERzJc7bjQMkvan6YXkHc4ugg4T3HmA65VTtAxXE8bf7grNmXCEwtm_CA', '2021-08-01 18:57:38');
INSERT INTO `token` VALUES (73, 'anonymousUser', '2021-08-01 18:59:19', NULL, '2021-08-01 20:08:22', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzgyMzMxMSwiaWF0IjoxNjI3ODIzMzAxfQ.KH_4NlcmGLQbkgzlVA_LZwmtZenKrlGajYecSUQwRetTkYuet25nu7bHgHEyDM17CRJ1bDKGcdWOZDa7tG8L6A', '2021-08-01 20:08:31');
INSERT INTO `token` VALUES (74, 'anonymousUser', '2021-08-02 00:17:20', NULL, '2021-08-02 00:32:38', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzgzOTE2NywiaWF0IjoxNjI3ODM5MTU3fQ.PMi7psiOH0_4Q1Q20KRF4g6ukETGGwIrerSebEfOhtmXc1VpfEGaN0PRMSgeg0DyQjnK93Otp6UB8m9hZ-1W4Q', '2021-08-02 00:32:47');
INSERT INTO `token` VALUES (75, 'anonymousUser', '2021-08-02 00:36:13', NULL, '2021-08-02 00:37:07', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzgzOTQzNywiaWF0IjoxNjI3ODM5NDI3fQ.0KhNZgcv6w11xXZdsgswyC4JH4jH8MqcsRaLOdpw_L2c1IJNnGU7Mb0jK3NrrihL7j277CmDPAgCWJGD0BIeNw', '2021-08-02 00:37:17');
INSERT INTO `token` VALUES (76, 'anonymousUser', '2021-08-02 01:24:16', NULL, '2021-08-02 01:26:32', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzg0MjQwMSwiaWF0IjoxNjI3ODQyMzkxfQ.jdDBeznidSSPYf9008C9wBbuUdrOGhEQ8ssL5srbTRnMbIdTkD7A7KoHs9qP5hSi0_eJCDeaellOWa4M0zVpmQ', '2021-08-02 01:26:41');
INSERT INTO `token` VALUES (77, 'anonymousUser', '2021-08-02 17:55:21', NULL, '2021-08-02 18:08:07', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkwMjQ5NywiaWF0IjoxNjI3OTAyNDg3fQ.lAsNjrZ1V4J7TO8truR665Cp4isqA5ogioC3tcaDxj0Ak5MVYRH-Ra53GOsjpXAf_2nYcfsodwbNKhgbK7DzHQ', '2021-08-02 18:08:17');
INSERT INTO `token` VALUES (78, 'anonymousUser', '2021-08-02 18:57:52', NULL, '2021-08-02 19:07:27', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkwNjA1NiwiaWF0IjoxNjI3OTA2MDQ2fQ.5KzKc7LjwE0LmNuhgwGmfI2cpBG8t6N8tCmAE7_Y8QDRKtUFJpFGsUB-2Lp0Q5GANkPQQNDW0T3BY9f3OVIVHw', '2021-08-02 19:07:36');
INSERT INTO `token` VALUES (79, 'anonymousUser', '2021-08-02 19:10:04', NULL, '2021-08-02 19:13:06', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkwNjM5NiwiaWF0IjoxNjI3OTA2Mzg2fQ.2frM7_NIsbHjBM9m6qKEHv-BpJywYCvB_VmTnyBsDaFAbbkx3-YA-MFNfzsAv72ZoI7kCg7UUHhukk2oi9ndeQ', '2021-08-02 19:13:16');
INSERT INTO `token` VALUES (80, 'anonymousUser', '2021-08-02 19:13:24', NULL, '2021-08-02 19:15:43', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkwNjU1MywiaWF0IjoxNjI3OTA2NTQzfQ.im-3RQ1mIf_6CR-2f0KEt0JOV4hz5X9-m8YOTE3zONuLL3GfaY_wtuJztd0ZDzaq2AToZOCyfgxbFzsDcHEPBA', '2021-08-02 19:15:53');
INSERT INTO `token` VALUES (81, 'anonymousUser', '2021-08-02 19:16:11', NULL, '2021-08-02 19:27:28', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkwNzI1OCwiaWF0IjoxNjI3OTA3MjQ4fQ.EfvYuKXKmcUxpGbA1I1erloN3TaSXePmlwM2dfjg5hXj7iuSchk7M3JouzkktQGS7wKSdqlhXrbriXurIE1xZA', '2021-08-02 19:27:38');
INSERT INTO `token` VALUES (82, 'anonymousUser', '2021-08-02 19:28:21', NULL, '2021-08-02 19:34:31', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkwNzY4MSwiaWF0IjoxNjI3OTA3NjcxfQ.d4bNhuSZKdZcO-OYQwYJfksHf9y8byZTLYtSUKKo9TPd5HJvZrBMWL2e9lpIRq577i2NSBbvY3Uga3JNjaHODQ', '2021-08-02 19:34:41');
INSERT INTO `token` VALUES (83, 'anonymousUser', '2021-08-02 19:36:05', NULL, '2021-08-02 19:38:31', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkwNzkyMCwiaWF0IjoxNjI3OTA3OTEwfQ.qiJ1pm7-n6saIKnMkGMYMpFOl6vyfvMwM24bdRySCGmMZ6hxvqzWn08RaKh42uboYOPeXJ4Jg385PeNX1ExFmg', '2021-08-02 19:38:40');
INSERT INTO `token` VALUES (84, 'anonymousUser', '2021-08-02 19:39:43', NULL, '2021-08-02 19:40:50', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkwODA1OSwiaWF0IjoxNjI3OTA4MDQ5fQ.3ZsHku82fwyk61b9RYvljndLxxXssFhtQZslICBokRSFFDzxlbuPOthPNlfdvUwDTGjnV6CHTkEdVyD2c-VnQA', '2021-08-02 19:40:59');
INSERT INTO `token` VALUES (85, 'anonymousUser', '2021-08-02 19:41:00', NULL, '2021-08-02 19:43:57', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkwODI0NiwiaWF0IjoxNjI3OTA4MjM2fQ.xrxYK0_j_g67SwTr12KIHHdfEPctNm5WrwiIQEhOilDuE4AQ6LQz0JpOXoAyShwb5ujYHJhhn0aM3evkxhjMKQ', '2021-08-02 19:44:06');
INSERT INTO `token` VALUES (86, 'anonymousUser', '2021-08-02 19:44:14', NULL, '2021-08-02 19:46:24', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkwODM5NCwiaWF0IjoxNjI3OTA4Mzg0fQ.t24RAGq1dV9XmRFmBIP86TZY209bD8TJMCtDIko7d-JKXWojSYA5KDnOhK2PhlQbs3vLbRfPIUwiaSdbYMsCBA', '2021-08-02 19:46:34');
INSERT INTO `token` VALUES (87, 'anonymousUser', '2021-08-02 19:46:45', NULL, '2021-08-02 19:53:01', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkwODc5MSwiaWF0IjoxNjI3OTA4NzgxfQ.dAKeiELZtamOaDXJmoU2EnF3p0IQ8te3VLC0NDoIRYKmVe6SBzJlG0z8EU43f1PVVLTQsDmCjLtGb3vydgcrKQ', '2021-08-02 19:53:11');
INSERT INTO `token` VALUES (88, 'anonymousUser', '2021-08-02 19:55:02', NULL, '2021-08-02 19:56:33', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkwOTAwMywiaWF0IjoxNjI3OTA4OTkzfQ.S4KMNGcvM5FqwkDr9eSV1zj1ixZgdWYq2rmZD3aOWIUdJzf7tgT-MmT_4yA7qyd6DGsBqGdNu2qqSHsaz4IqNw', '2021-08-02 19:56:43');
INSERT INTO `token` VALUES (89, 'anonymousUser', '2021-08-02 20:02:42', NULL, '2021-08-02 20:07:24', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkwOTY1NCwiaWF0IjoxNjI3OTA5NjQ0fQ.OCImSSkX1TJf_VvSZjz_CfRwkHdtjGpMYRYoQVTOwfyo0oBpGd3BDllrZQNNa8-Dfc2n1srD7HMMuwZ_Yzv6-w', '2021-08-02 20:07:34');
INSERT INTO `token` VALUES (90, 'anonymousUser', '2021-08-02 20:09:42', NULL, '2021-08-02 20:11:20', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkwOTg5MCwiaWF0IjoxNjI3OTA5ODgwfQ.21thv_l_cxHqC-KHtFeEU7n2_S_F-rF93h9nEVv7SGshwcVK7ayP4alxjqIWvbIJosssWZ9UBujSJF9rXGsRdg', '2021-08-02 20:11:30');
INSERT INTO `token` VALUES (91, 'anonymousUser', '2021-08-02 20:11:36', NULL, '2021-08-02 20:13:05', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkwOTk5NSwiaWF0IjoxNjI3OTA5OTg1fQ.5dvovVCyhwFvaucEDuPSOcomBhMcKCu51Re3Jqwt5c76xxTzzIMFXRwwbO-6Lk-pDdbl1yaeP9PAd3Naw7UaOg', '2021-08-02 20:13:15');
INSERT INTO `token` VALUES (92, 'anonymousUser', '2021-08-02 20:13:33', NULL, '2021-08-02 20:16:12', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkxMDE4MiwiaWF0IjoxNjI3OTEwMTcyfQ.zv1cNpLTEOmBFCEJ2E6uyVw-nABidSlD-WMTUbAdI63sBCcoxwYdUnSJ9yHeS5G4pDPb6RPnCKo4Yd2npxGMZw', '2021-08-02 20:16:22');
INSERT INTO `token` VALUES (93, 'anonymousUser', '2021-08-02 20:16:26', NULL, '2021-08-02 21:23:20', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkxNDIwOSwiaWF0IjoxNjI3OTE0MTk5fQ.oW0Sc54a7aCIQp7dDwieRZjQ_tIFbcrHPGM9AimfjQUY6YXHN2yEBoQEUZntIUANUOduchBVhfvB9xP1HxVIZA', '2021-08-02 21:23:29');
INSERT INTO `token` VALUES (94, 'anonymousUser', '2021-08-02 21:24:05', NULL, '2021-08-02 21:24:21', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkxNDI3MSwiaWF0IjoxNjI3OTE0MjYxfQ.vlKO32uTbfM0ywfsnNO4F4kiJwjlHUO4KWFtJSS-w4kZFsKi1CdGqhNv-_twWbRCKzwTPqXT5Tbha-r9YFLZHg', '2021-08-02 21:24:31');
INSERT INTO `token` VALUES (95, 'anonymousUser', '2021-08-02 21:28:11', NULL, '2021-08-02 22:01:02', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkxNjQ3MSwiaWF0IjoxNjI3OTE2NDYxfQ.VpEZWub6GerXpUt8AByHl3eDx4e4Zmw89qdUQMttIxbJ34rw0G4vlltaaMm2gPHUrbc4Ax6fHrpU-KAGLq-H1A', '2021-08-02 22:01:11');
INSERT INTO `token` VALUES (96, 'anonymousUser', '2021-08-02 22:01:10', NULL, '2021-08-02 22:03:01', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkxNjU5MSwiaWF0IjoxNjI3OTE2NTgxfQ.CQsOREzZbn9JfR3mJWBIzE1us7x_MRMktwCFDfdnQTiQSqmNt_c8_jCXk3fQ5VnSH3MEoSKd_xJ0Mvsh7nJoAA', '2021-08-02 22:03:11');
INSERT INTO `token` VALUES (97, 'anonymousUser', '2021-08-02 22:03:08', NULL, '2021-08-02 22:15:20', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkxNzMyOSwiaWF0IjoxNjI3OTE3MzE5fQ.fdE_JuFp7XpSZTf1Pm8UhyDNM5Xc1q2zGZvWzI8s9bjwO02eW4pJ9pC8_9bWhRfxqblLFofaYU-h0iK7tlTcWQ', '2021-08-02 22:15:29');
INSERT INTO `token` VALUES (98, 'anonymousUser', '2021-08-02 22:15:49', NULL, '2021-08-02 22:28:07', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkxODA5NiwiaWF0IjoxNjI3OTE4MDg2fQ.cUrjE1QIPGDgAVwzaAkZXKz1t45H0OWXiw3VJG5kEZ_666KIad6XdK5FLgbn49WURk_cSIS61Qpgyk03pGiz5g', '2021-08-02 22:28:16');
INSERT INTO `token` VALUES (99, 'anonymousUser', '2021-08-02 22:28:41', NULL, '2021-08-02 23:07:14', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkyMDQ0MywiaWF0IjoxNjI3OTIwNDMzfQ.mORLiDMfDTjQ7bJetIYigOr04H_GWWKeecov1mdpRkyqxY7aNldcYHlyTGAxT9syxPt2cojRSF57rsY-N3pOgQ', '2021-08-02 23:07:23');
INSERT INTO `token` VALUES (100, 'anonymousUser', '2021-08-02 23:12:31', NULL, '2021-08-03 00:37:38', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkyNTg2OCwiaWF0IjoxNjI3OTI1ODU4fQ.pQNVP_9M-yfIfJ1o7LOBR9Bat1xt4yv9zhLFBQ5KhSnQkkw6FvPCQlzXPwkC_3-A7UhDotaK1HhTxcAdCodpMQ', '2021-08-03 00:37:48');
INSERT INTO `token` VALUES (101, 'anonymousUser', '2021-08-03 00:39:35', NULL, '2021-08-03 00:40:07', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkyNjAxNywiaWF0IjoxNjI3OTI2MDA3fQ.zC_TLaFh3YEo_2snGUcmftDTeiFlFltHnL2VTzi-ESbzdQ4GEu1WaooJ0whS12BA7OvuVItTb53xlIhDJYi1hg', '2021-08-03 00:40:17');
INSERT INTO `token` VALUES (102, 'anonymousUser', '2021-08-03 00:40:57', NULL, '2021-08-03 00:45:30', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkyNjM0MCwiaWF0IjoxNjI3OTI2MzMwfQ.O9ApzmPPTSAeoaBx6Emj_Ut24bQ7R_2JF9yfqF4TmrO3u0svskDNhJZkzWFOva4lGRMC09KfBxJDJraqm33jLQ', '2021-08-03 00:45:40');
INSERT INTO `token` VALUES (103, 'anonymousUser', '2021-08-03 00:49:32', NULL, '2021-08-03 01:41:40', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyNzkyOTcwOSwiaWF0IjoxNjI3OTI5Njk5fQ.NToScMz1-mzac-9XDak4LFKmRkV_ytElj8ZC5Q7TDoYNhqfLBxN-TZ8lVIkELAoQOZHlLJMhp1EXsv8QhNDXUQ', '2021-08-03 01:41:49');
INSERT INTO `token` VALUES (104, 'anonymousUser', '2021-08-03 13:16:43', NULL, '2021-08-03 22:10:23', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyODg2NzQyMiwiaWF0IjoxNjI4MDAzNDIyfQ.CDaF-BFvNL9PgoZSlj6x8YLK656yPfb66BEYiYt59b2GGgBJ-XFcvcgzzAfsj1iYKAb5B66sfeyQdfAeiSN_aQ', '2021-08-13 22:10:22');
INSERT INTO `token` VALUES (105, 'anonymousUser', '2021-08-03 22:10:40', NULL, '2021-08-04 02:44:55', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyODg4Mzg5NSwiaWF0IjoxNjI4MDE5ODk1fQ.waRLSekUk1Y9ofN1PCM31X0lil-Xb0P3hghbTcn-NGIndkVeCy5NYiEnpeppLSbAFf3iy8M0IHC1f3lCyImHag', '2021-08-14 02:44:55');
INSERT INTO `token` VALUES (106, 'anonymousUser', '2021-08-04 02:54:21', NULL, '2021-08-04 18:24:05', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyODk0MDI0NCwiaWF0IjoxNjI4MDc2MjQ0fQ.E3DxqjlC51gk6Fh2EY6i14ibUdXYpsNc3sQj9yfzAU_LcDNfAfKp7uR9nMzGoL6ohj7g89Y7qnE_-YXccAjBcg', '2021-08-14 18:24:04');
INSERT INTO `token` VALUES (121, 'anonymousUser', '2021-08-04 22:47:37', NULL, '2021-08-04 22:49:55', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyODk1NjE5NCwiaWF0IjoxNjI4MDkyMTk0fQ.tf7Ofa3-mKVrZ5H8DE4_RJ_VR9DjVEMN7dczV_eTCRY5ojRmsTJmIXoks8kvqwlxY-dSbCrD34JwOhzAO_DeaA', '2021-08-14 22:49:54');
INSERT INTO `token` VALUES (122, 'anonymousUser', '2021-08-04 22:52:43', 'anonymousUser', '2021-08-04 22:52:43', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyODk1NjM2MiwiaWF0IjoxNjI4MDkyMzYyfQ.By570XTBZOI4LOvs6aMSOXoixyDHYg1z6_I_TlRf1dESaZ-okFrLh6BSwJWyXWPU69abWw_jt1a2qcno5D9ejg', '2021-08-14 22:52:42');
INSERT INTO `token` VALUES (123, 'anonymousUser', '2021-08-04 22:52:55', NULL, '2021-08-04 22:53:29', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyODk1NjQwOCwiaWF0IjoxNjI4MDkyNDA4fQ.MOGXx3COfWkE06j5x5pKl6s2jRhEJMqxxTXpcyR-oza8VDo5aule-SWNbdw4x6jw31RFisy7ia_SCJvhGF6OwA', '2021-08-14 22:53:28');
INSERT INTO `token` VALUES (128, 'anonymousUser', '2021-08-05 15:03:22', NULL, '2021-08-05 15:03:55', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyOTAxNDYzNCwiaWF0IjoxNjI4MTUwNjM0fQ.SL-NyumgY7P0Nbqq-2t4RT54vhE-zmnyAipD8kInRy_AHq43cIdpXaySNJPRyPuhObnupp-ifs4iFK2Bl3-G0A', '2021-08-15 15:03:54');
INSERT INTO `token` VALUES (129, 'anonymousUser', '2021-08-05 15:04:04', 'anonymousUser', '2021-08-05 15:04:04', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyOTAxNDY0MywiaWF0IjoxNjI4MTUwNjQzfQ.hqKIK2cjPtEGa7I4bVyAovpaQo_9MmBmeSBsmEuhR6lB3P37iV-jAocGIVgRKnEtQ3Z7vfKxoaKZQZ2heQCZHQ', '2021-08-15 15:04:03');
INSERT INTO `token` VALUES (130, 'anonymousUser', '2021-08-05 15:04:50', 'anonymousUser', '2021-08-05 15:04:50', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyOTAxNDY5MCwiaWF0IjoxNjI4MTUwNjkwfQ.1I1jkOyXOp2Tkw1zBXpYcS6oz4haw7ZyIotwn1z07kCFXGTj5QAKvIZKGsZ2Jn86r-N_ChmQo_ygamotKEqw6g', '2021-08-15 15:04:50');
INSERT INTO `token` VALUES (131, 'anonymousUser', '2021-08-05 15:05:32', NULL, '2021-08-05 15:05:41', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyOTAxNDc0MSwiaWF0IjoxNjI4MTUwNzQxfQ.Mbse5nYqfUiJoFxWeLDB8Es0aPCSaCW7cJj0ILyqQmI5-KOaY4fZdAauP2bXQqYQqksRdG6NvGnDIuTCFks8FQ', '2021-08-15 15:05:41');
INSERT INTO `token` VALUES (132, 'anonymousUser', '2021-08-05 15:05:51', NULL, '2021-08-05 15:06:17', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyOTAxNDc3NiwiaWF0IjoxNjI4MTUwNzc2fQ.DpGZ1iEgQYqPlZ3b3FdPE5XaAGsKuDnepciAYNI7aDEHcH7xq5381qqK2xsSbS_HhpTiApU8jNwjFn61Jgujgw', '2021-08-15 15:06:16');
INSERT INTO `token` VALUES (134, 'anonymousUser', '2021-08-05 15:07:55', NULL, '2021-08-05 15:15:47', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyOTAxNTM0NywiaWF0IjoxNjI4MTUxMzQ3fQ.SMmcxJFM-adoHAdt7x3JH_mcDIs7DQ-DYCRiqLBUSHC3Kp07JJpypduDmiS1ISXJAlj9yaXRh359gJaymgRkXQ', '2021-08-15 15:15:47');
INSERT INTO `token` VALUES (135, 'anonymousUser', '2021-08-07 19:55:38', NULL, '2021-08-09 01:20:17', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyOTMxMDgxNiwiaWF0IjoxNjI4NDQ2ODE2fQ.2XeOxSXDnGN0-DPPcPPh5zgR-Kit5ELHJpMhnM3oX0Ox7dBhJG-ogKmGX2bJEhjMOend2gIEIaNC_RN8ySIbsA', '2021-08-19 01:20:16');
INSERT INTO `token` VALUES (136, 'anonymousUser', '2021-08-11 15:54:41', NULL, '2021-08-11 15:55:39', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyOTUzNjEzOSwiaWF0IjoxNjI4NjcyMTM5fQ.cR4r7fatEltury441cKEr2S9LQKbYwYglMY-cdOXictoJGvV_ErIIdyp4l3mX56o3mqFi6yeEqOWeFFG7U2dbg', '2021-08-21 15:55:39');
INSERT INTO `token` VALUES (137, 'anonymousUser', '2021-08-11 15:58:22', 'anonymousUser', '2021-08-11 15:58:22', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyOTUzNjMwMiwiaWF0IjoxNjI4NjcyMzAyfQ.W5vWAuSWgfmw56HDW3_L10TOq9WKCly7fVciLmgLLMI7Hy5ev6U7qX8eIfGTkjxeWHmY4cV7ezvpaS5ZeQW6bg', '2021-08-21 15:58:22');
INSERT INTO `token` VALUES (138, 'anonymousUser', '2021-08-11 15:59:03', NULL, '2021-08-11 16:01:27', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyOTUzNjQ4NiwiaWF0IjoxNjI4NjcyNDg2fQ.2rWgC3uPQT7AijToz7Kp542v5I6CadWES8JxdOYGaP5ZyoVoabYIKQGMRS6hK6mciFpYNOfwQCBrE-p3r8L4vg', '2021-08-21 16:01:26');
INSERT INTO `token` VALUES (140, 'anonymousUser', '2021-08-11 16:03:19', NULL, '2021-08-11 16:16:07', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyOTUzNzM2NywiaWF0IjoxNjI4NjczMzY3fQ.JBgWb8vNj91ZJEjqyB7PydGJ-URHzcG2W09cF3fCrUckFl8_wIuZw-SKQSMvxPYiy1s5aCd0cP2kLc_4HgYYMg', '2021-08-21 16:16:07');
INSERT INTO `token` VALUES (147, 'anonymousUser', '2021-08-16 18:02:33', 'anonymousUser', '2021-08-16 18:02:33', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyOTk3NTc1MiwiaWF0IjoxNjI5MTExNzUyfQ.wWeKihvRh1IFxN9-12ZS-T3g1wfWQ39CAAKyPpV-eYpxTYNJ1Zt4NSLSrZbOzgPUpZuVmdkLFH-3fAi_TVvBXA', '2021-08-26 18:02:32');
INSERT INTO `token` VALUES (148, 'anonymousUser', '2021-08-16 18:02:33', 'anonymousUser', '2021-08-16 18:02:33', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYyOTk3NTc1MiwiaWF0IjoxNjI5MTExNzUyfQ.wWeKihvRh1IFxN9-12ZS-T3g1wfWQ39CAAKyPpV-eYpxTYNJ1Zt4NSLSrZbOzgPUpZuVmdkLFH-3fAi_TVvBXA', '2021-08-26 18:02:32');
INSERT INTO `token` VALUES (153, 'anonymousUser', '2021-08-17 20:39:12', NULL, '2021-08-17 20:54:33', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMDA3MjQ3MywiaWF0IjoxNjI5MjA4NDczfQ.FmO2r2YhROHvF6isiNNaLRnDdGQW69HjrAmAeIx0Vc2gOX8aoxzFXzhs4qAHEXzHwiQVuzSKtHBecCuuR5Yi-Q', '2021-08-27 20:54:33');
INSERT INTO `token` VALUES (154, 'anonymousUser', '2021-08-17 20:55:57', NULL, '2021-08-17 21:13:40', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMDA3MzYxOSwiaWF0IjoxNjI5MjA5NjE5fQ.9tVhzPD4xwg-5Cvl6dGO-OS3-PtqO6AAuCyJRxvhm-KJ3ew4bFZ_eLuTfrc3ZEqzp6cjKe6ToV7iX_JJKkvZyA', '2021-08-27 21:13:39');
INSERT INTO `token` VALUES (155, 'anonymousUser', '2021-08-17 21:52:55', NULL, '2021-08-17 22:32:36', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMDA3ODM1NSwiaWF0IjoxNjI5MjE0MzU1fQ.kV5-uGvAgpyzXkXox30ylM1OMixHb3ce0Z6cCZGVCWYaomSVsHcv0JRg_HYJKYFDqKLje54KtQrDjSzKkAIQMg', '2021-08-27 22:32:35');
INSERT INTO `token` VALUES (158, 'anonymousUser', '2021-08-18 00:29:54', NULL, '2021-08-18 00:46:43', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMDA4NjQwMywiaWF0IjoxNjI5MjIyNDAzfQ.D2pFiHzQcwGlQQ_vnlGlHfjnrKqN23mRL25IQ9s7cBDQMS91--LZYzhZievgkhqw9mu_agk19590mqdi3ZLjng', '2021-08-28 00:46:43');
INSERT INTO `token` VALUES (159, 'anonymousUser', '2021-08-18 02:44:32', NULL, '2021-08-18 02:56:36', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMDA5NDE5NiwiaWF0IjoxNjI5MjMwMTk2fQ.GJtlFyiyXYkArPLY-_4oaC90VGZ6Ad6PMn220XuTUlM8PBYWs0c9vfjTprdtgzN0K8PW1c3I9QlYoM7TAtxVVg', '2021-08-28 02:56:36');
INSERT INTO `token` VALUES (160, 'anonymousUser', '2021-08-18 03:16:04', NULL, '2021-08-18 03:45:22', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMDA5NzEyMiwiaWF0IjoxNjI5MjMzMTIyfQ.dNYdAWABbDNQ9RHSUBNmLbySAJY770x212k5suHVWtoyKjM0zGiQHlthNPC3_7ZUy2KnsW7qMFafBO8_BfmGQg', '2021-08-28 03:45:22');
INSERT INTO `token` VALUES (162, 'anonymousUser', '2021-08-19 19:31:59', NULL, '2021-08-24 19:11:16', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMDY3MTA3NSwiaWF0IjoxNjI5ODA3MDc1fQ.cHFUpPXuzntXVCFrykGp0rnkeHISsN-xuXyruOghKzKgKjFduOYZxlhd9ZwjK3hTh6dQn5xPhWWwY_tBKnRJbQ', '2021-09-03 19:11:15');
INSERT INTO `token` VALUES (167, 'anonymousUser', '2021-08-24 22:40:41', NULL, '2021-08-24 23:12:42', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMDY4NTU2MiwiaWF0IjoxNjI5ODIxNTYyfQ.NVdcq-BRRg1ELJdeLopZIzq6SWWFv0vQif8b7o1TEvpc3ZEg3nWRTZjuvlkkBcoLh1WHeMrobIyLhIrOVTAOmQ', '2021-09-03 23:12:42');
INSERT INTO `token` VALUES (171, 'anonymousUser', '2021-08-25 02:04:48', NULL, '2021-08-25 02:32:15', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMDY5NzUzNCwiaWF0IjoxNjI5ODMzNTM0fQ.YEFBMzT5B1ZDNqy6I6ZgHyZjLR0W7k4cwUwsG8Vum49H3EWNtyx5UVpiOvTwx-hOqpCT2CfdPBuqMeuDUnjGjA', '2021-09-04 02:32:14');
INSERT INTO `token` VALUES (173, 'anonymousUser', '2021-08-25 03:29:13', NULL, '2021-08-25 18:03:59', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMDc1MzQzOCwiaWF0IjoxNjI5ODg5NDM4fQ.XV02z3SRdk2fBK6EJFy1ZNM-ig_-Eg6IJy0zqbi5n0i4gh8JvI0RUbE8pYasbcM3To5JsvHZbTdd9n2X7CGSCQ', '2021-09-04 18:03:58');
INSERT INTO `token` VALUES (174, 'anonymousUser', '2021-08-25 18:11:41', NULL, '2021-08-28 20:09:58', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTAyMDE5OCwiaWF0IjoxNjMwMTU2MTk4fQ.2KHyixKNRJtvkESREguVg126UQ_x5VyBphe01INVzFmqrmEh9LoomNQVIkftMdktzssOu1uFgcDGoPFdSDD5KQ', '2021-09-07 20:09:58');
INSERT INTO `token` VALUES (176, 'anonymousUser', '2021-08-28 21:02:49', NULL, '2021-08-28 23:57:23', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTAzMzg0MywiaWF0IjoxNjMwMTY5ODQzfQ.kYsSu3P1c8RkE1l8-LIGz-hf7zCUcf8zjyll3JaA8EiykZ5KQtrkZqYfxv2qaL7Biujg5bXrO2PikRAf2G2eWg', '2021-09-07 23:57:23');
INSERT INTO `token` VALUES (177, 'anonymousUser', '2021-08-28 23:59:49', 'anonymousUser', '2021-08-28 23:59:49', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTAzMzk4OSwiaWF0IjoxNjMwMTY5OTg5fQ.RH8bn3BA4ilbuHVodjRVNb97cDWGujjN05dNDI-BvP9uSRbVjioO7ZBSK-dO2faYrjLsXDRjpJvgM2BXIbp9HQ', '2021-09-07 23:59:49');
INSERT INTO `token` VALUES (178, 'anonymousUser', '2021-08-28 23:59:49', 'anonymousUser', '2021-08-28 23:59:49', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTAzMzk4OSwiaWF0IjoxNjMwMTY5OTg5fQ.RH8bn3BA4ilbuHVodjRVNb97cDWGujjN05dNDI-BvP9uSRbVjioO7ZBSK-dO2faYrjLsXDRjpJvgM2BXIbp9HQ', '2021-09-07 23:59:49');
INSERT INTO `token` VALUES (179, 'anonymousUser', '2021-08-29 00:02:54', NULL, '2021-08-29 21:57:42', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTExMzA2MiwiaWF0IjoxNjMwMjQ5MDYyfQ.ZEliJ-bcwfxpRliEYUDqQhVnr6xkz-zDXs5uBDC-VH1qTsPryyLf-2u-lsCqni2gc2z-wqjLwwZYC9PGew4jQA', '2021-09-08 21:57:42');
INSERT INTO `token` VALUES (180, 'anonymousUser', '2021-08-29 21:58:09', NULL, '2021-08-30 03:21:32', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTEzMjQ5MSwiaWF0IjoxNjMwMjY4NDkxfQ.PVhduBzIEp7L2BtdFS-wSG-nyI1ZFXY1peXTkxoeQ6XrlUoZFfkihYBnKNAVPj_GNAuuqK1oC1TudwwNFfDKGQ', '2021-09-09 03:21:31');
INSERT INTO `token` VALUES (184, 'anonymousUser', '2021-08-30 05:04:28', NULL, '2021-08-30 16:26:54', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTE3OTYxNCwiaWF0IjoxNjMwMzE1NjE0fQ.NfTR1dYI48GVPg5mTLqcVuNl-rGM2agv1kProOfbsE-zipg9-_jKwntv47xbmUXMs0bc09lN0DyoTb-9k-3YiA', '2021-09-09 16:26:54');
INSERT INTO `token` VALUES (185, 'anonymousUser', '2021-08-30 17:08:09', NULL, '2021-08-30 21:27:27', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTE5NzY0NywiaWF0IjoxNjMwMzMzNjQ3fQ.cUKOUDzEdvhtk0iOCr-ygh3Gjm06kQYej-2x2KQEZBtbsslWw1Nc0bx2W2kfA1kR8RPbB6IP0HP-kRt63BgJqg', '2021-09-09 21:27:27');
INSERT INTO `token` VALUES (186, 'anonymousUser', '2021-08-31 01:35:10', NULL, '2021-08-31 03:17:10', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIxODYzMCwiaWF0IjoxNjMwMzU0NjMwfQ.IPBcjAdpTUj7ZBuDDsZe0RcD1ekRBjUUkqpadCM9sinyFvLLmRLeeiCii8GPNMe2BTjGfeHu0R4wFpo3tDA5SQ', '2021-09-10 03:17:10');
INSERT INTO `token` VALUES (187, 'anonymousUser', '2021-08-31 04:44:00', NULL, '2021-08-31 05:52:32', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIyNzk1MiwiaWF0IjoxNjMwMzYzOTUyfQ.fppmtIt-j0EE5jaWXb_AcHBONBmPvRDZfrEz8zeW7_scaquGDKzw0o_2koUPpZYh4xOGbQLZWOeNXYql7B6-gw', '2021-09-10 05:52:32');
INSERT INTO `token` VALUES (190, 'anonymousUser', '2021-09-01 02:50:30', NULL, '2021-09-01 02:52:15', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTMwMzUzNSwiaWF0IjoxNjMwNDM5NTM1fQ.OSE5GNu_eZGPQylzxcGArRdssnYa6UxQgTaXi7jSGg4yDlowEiWt07CGTtWE5UqTVDKKqAN0rudv2R1AkjnyzA', '2021-09-11 02:52:15');
INSERT INTO `token` VALUES (191, 'anonymousUser', '2021-09-01 02:53:12', NULL, '2021-09-01 02:57:19', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTMwMzgzOSwiaWF0IjoxNjMwNDM5ODM5fQ.Z3LE350kBEFaz2EPWOOWS9ramSD_1gRnuTJ3vjOskxmrAFmrZzLk8Xo8nURqFZANd2qcbHn_065ftFdIQbvxoA', '2021-09-11 02:57:19');
INSERT INTO `token` VALUES (194, 'anonymousUser', '2021-09-01 03:28:53', NULL, '2021-09-01 04:05:38', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTMwNzkzNywiaWF0IjoxNjMwNDQzOTM3fQ.vNgKB8CL9lstSlgkItqVf9hvEDhrzh0LsCgRkNyGyHWj2ehWRJJJs8Z0elQRbHX-E6ksitjqckagsl_7y5Yviw', '2021-09-11 04:05:37');
INSERT INTO `token` VALUES (197, 'anonymousUser', '2021-09-01 20:10:12', NULL, '2021-09-01 23:49:33', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTM3ODk3MiwiaWF0IjoxNjMwNTE0OTcyfQ.xz3JhJ0QF9hkH65CYTewF0EWRFgjbSXaYLx_7XCk_0_8-4VjXwpftfdbvIA4VzpQf_XzHHj9GY6eRH8t4-8dWw', '2021-09-11 23:49:32');
INSERT INTO `token` VALUES (198, 'anonymousUser', '2021-09-01 23:49:49', NULL, '2021-09-02 00:33:08', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTM4MTU4OCwiaWF0IjoxNjMwNTE3NTg4fQ.kwSMWUL8o8n3vBGmWVmqn0dYaXwSV2hMgxdDaKk69i0qeQ--Iv5mZAds5Kglze61m3qkgJQ9fw6szTPzfv2ljg', '2021-09-12 00:33:08');
INSERT INTO `token` VALUES (200, 'anonymousUser', '2021-09-02 04:50:02', NULL, '2021-09-02 04:56:46', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTM5NzQwNSwiaWF0IjoxNjMwNTMzNDA1fQ.zFKPUtbUIQ9VvOJ7ZohXpE9RMj5aP77KetGxwaT0AHWt_fJhZrB9DVOd0KSYlBVueeDhV8-KJdDJ5KNqLGonOg', '2021-09-12 04:56:45');
INSERT INTO `token` VALUES (201, 'anonymousUser', '2021-09-02 04:59:03', NULL, '2021-09-02 19:24:47', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTQ0OTQ4NiwiaWF0IjoxNjMwNTg1NDg2fQ.ydDp5HL9FHgAxB2q7nWHfrWgz2FC0bSXt_C_yJW-DCMdCjOfEg8dnbkJKnp5kwUjLMTgnbxHDDazeFbTTPILCA', '2021-09-12 19:24:46');
INSERT INTO `token` VALUES (202, 'anonymousUser', '2021-09-02 21:00:03', NULL, '2021-09-02 22:23:57', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTQ2MDIzNywiaWF0IjoxNjMwNTk2MjM3fQ.9yqryuZF1XPxEF-ffrbfXuiS1PEhBqNjcfj3yPx_2YSogRK9bht5_8Eff2aT_v0fW-Rvh7gUvrzu3OsDLliUUw', '2021-09-12 22:23:57');
INSERT INTO `token` VALUES (224, 'anonymousUser', '2021-09-05 19:19:39', NULL, '2021-09-05 19:29:53', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTcwODk5MiwiaWF0IjoxNjMwODQ0OTkyfQ.N8yAAIGGxF7jt8lhqecu5jM28Y1eztfDfkF4j1IgvcxJ5a9POZQjnUXRrdteDspHj0aXNsrjXIpeGg90Xxt8nQ', '2021-09-15 19:29:52');
INSERT INTO `token` VALUES (225, 'anonymousUser', '2021-09-05 19:39:28', NULL, '2021-09-05 19:40:28', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTcwOTYyOCwiaWF0IjoxNjMwODQ1NjI4fQ.NFOmykziqLzxlqCInObOk5_1iveR_P8XwJecQ5wN8dDrS4neYXvDSD75QH7eF9C7rGNvEHdxMxmOAZr6-ZXyQA', '2021-09-15 19:40:28');
INSERT INTO `token` VALUES (228, 'anonymousUser', '2021-09-05 22:50:28', 'anonymousUser', '2021-09-05 22:50:28', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTcyMTAyOCwiaWF0IjoxNjMwODU3MDI4fQ.C0UO7UUgSZb2mm8TH7D2OqjwfRzCe4HNvhC8Yyn6vj_PI2uLS1gQNH70SGQhRNQd-kZBfogwbd596FblYVMzSQ', '2021-09-15 22:50:28');
INSERT INTO `token` VALUES (229, 'anonymousUser', '2021-09-05 22:52:00', NULL, '2021-09-05 23:17:08', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTcyMjYyOCwiaWF0IjoxNjMwODU4NjI4fQ.AwXxLsF-kBVkfaSHmRAskrQWjC6am2amQAQ6dWRj8wLMoJzAtqw0vtKriASsxl1Oq1bY3c6xyrMKN5uSYGEU_g', '2021-09-15 23:17:08');
INSERT INTO `token` VALUES (231, 'anonymousUser', '2021-09-06 00:00:00', NULL, '2021-09-06 00:18:10', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTcyNjI4OSwiaWF0IjoxNjMwODYyMjg5fQ.VA1QqhDCI5FdR6IvydRxi_AGie8xEsq-xC4NBIWeIqpbZ5DhGjjQcEOr286CFtDAy5DerISejTY6_MGbZGwYvw', '2021-09-16 00:18:09');
INSERT INTO `token` VALUES (232, 'anonymousUser', '2021-09-06 00:29:32', NULL, '2021-09-06 01:05:04', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTcyOTEwMywiaWF0IjoxNjMwODY1MTAzfQ.F43ZClopniZ3rphIMf62ZzHKJLKbTGEsefGMrLfqiUh9YJD2OXQJBtiCvwx5nIZleQyBJ-bi16pGZHef74WxBg', '2021-09-16 01:05:03');
INSERT INTO `token` VALUES (233, 'anonymousUser', '2021-09-06 01:08:19', NULL, '2021-09-06 01:13:06', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTcyOTU4NiwiaWF0IjoxNjMwODY1NTg2fQ.B4-zOhtQFcNTgbsVLovkgOOG8s7Db_A2fIz0OT-Ah1CbBz2kAx0GsTNnKIRjTGhNU6I6F9O8WcLmXx5F5qtJyA', '2021-09-16 01:13:06');
INSERT INTO `token` VALUES (234, 'anonymousUser', '2021-09-06 01:13:53', NULL, '2021-09-06 02:33:58', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTczNDQzNywiaWF0IjoxNjMwODcwNDM3fQ.HSJFS3yTl_mLTKzWxlTOFjBGqy89rk4LHkzjEqkDDTajV9h3V3OKgheA3CdGoHl9LH8jPMEmiJob3KoTJu2QVg', '2021-09-16 02:33:57');
INSERT INTO `token` VALUES (235, 'anonymousUser', '2021-09-06 02:41:45', NULL, '2021-09-06 02:43:09', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTczNDk4OCwiaWF0IjoxNjMwODcwOTg4fQ.OXM4adWGnibGnTjLJW2rFC38U0qTaXAEd9mAyB1I5tqg2RIfXHVCBYCtH7WlpvbsL_uLhTO9bRrXJlitS8dEUQ', '2021-09-16 02:43:08');
INSERT INTO `token` VALUES (236, 'anonymousUser', '2021-09-06 02:43:34', NULL, '2021-09-06 02:46:05', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTczNTE2NCwiaWF0IjoxNjMwODcxMTY0fQ.D-F7A7r_rqMxZeQWHfiTbtkZMbscfZSohbhUixS07v0oAd-W8lysy3o0R0g8roMJTUEOLgYo83BnX22fMbsNjQ', '2021-09-16 02:46:04');
INSERT INTO `token` VALUES (237, 'anonymousUser', '2021-09-06 02:49:45', NULL, '2021-09-06 02:50:29', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTczNTQyOSwiaWF0IjoxNjMwODcxNDI5fQ.j1qXVHX-Xvzd6czmfYfayYYtkdRY-hZzeA2v4nWIjsbWPSPjScvFWI-7YBREER333-5aMSE547g_Ibfsd3f9hQ', '2021-09-16 02:50:29');
INSERT INTO `token` VALUES (239, 'anonymousUser', '2021-09-06 02:52:09', NULL, '2021-09-06 02:52:32', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTczNTU1MiwiaWF0IjoxNjMwODcxNTUyfQ.v4hlPMDsJfDVeWDA7MN9KMSmPH5U7jy5OUOfCFTkgUuQRdeX1Br-WCiLgnOslluyUJKWZbt-ihvTh5FmXmEbSw', '2021-09-16 02:52:32');
INSERT INTO `token` VALUES (241, 'anonymousUser', '2021-09-06 02:53:05', NULL, '2021-09-06 02:53:35', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTczNTYxNSwiaWF0IjoxNjMwODcxNjE1fQ.QYaSY7I1c8bAWkYiN5LATL6J5qvBuKn6MNqLis0JeVx5hkVuEH8AWAOelc2yJ1DOi3FNx0dEO9jGj9or1c817g', '2021-09-16 02:53:35');
INSERT INTO `token` VALUES (249, 'anonymousUser', '2021-09-06 03:05:01', NULL, '2021-09-06 03:06:52', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTczNjQxMSwiaWF0IjoxNjMwODcyNDExfQ.DpSij_utoVq0YZmxmrU9g34UQbB_5vO3h81whlGVy1MnmnFZoC4GlnNA-FFCVu8Xpkk3tet9-KHkIhxunaGZLQ', '2021-09-16 03:06:51');
INSERT INTO `token` VALUES (253, 'anonymousUser', '2021-09-06 03:10:21', NULL, '2021-09-06 03:10:56', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTczNjY1NSwiaWF0IjoxNjMwODcyNjU1fQ.CTkl6xvvVUeBdOk5kHi_ySCYsbFC0moQVcfMFO8gE3SgKN1EgbtS4Mt92Xo6CywmRAmfFqsFvB9GjnR-GDmAEQ', '2021-09-16 03:10:55');
INSERT INTO `token` VALUES (264, 'anonymousUser', '2021-09-06 03:29:25', 'anonymousUser', '2021-09-06 03:29:25', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTczNzc2NCwiaWF0IjoxNjMwODczNzY0fQ.hEb2TUyD2_rG5Cr5lxPLRtN_5rEq0qggp1z-mOWchtRPEjGPPR9TYtO1Tbm92le0CK28AOEmOvgIEXR6JaxCyw', '2021-09-16 03:29:24');
INSERT INTO `token` VALUES (266, 'anonymousUser', '2021-09-06 03:33:28', NULL, '2021-09-06 03:38:34', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTczODMxMywiaWF0IjoxNjMwODc0MzEzfQ.kXfn1HFzlXkZQnc50chX_Gazp4czKfslOC2bycP2q440tiz0pVzN2fnjMMwAUgUUtEgGrIH1iYbNPQI3WzWLSg', '2021-09-16 03:38:33');
INSERT INTO `token` VALUES (269, 'anonymousUser', '2021-09-06 03:43:30', NULL, '2021-09-06 03:44:08', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTczODY0OCwiaWF0IjoxNjMwODc0NjQ4fQ.tIyykW3x1fJ4D3bgOVdjOzbGVrTqGs7SHPu3t2hpRMN6lns-f6-eRN_Sjb-Xi1IfXMDM4Q1UHQaJUaRusH9GUw', '2021-09-16 03:44:08');
INSERT INTO `token` VALUES (272, 'anonymousUser', '2021-09-06 03:47:43', NULL, '2021-09-06 03:48:46', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTczODkyNiwiaWF0IjoxNjMwODc0OTI2fQ.Q0GrY5KZt9FfSzeboWNI_86H4F3f5NkCwlP9gqMwwWXGEihpCPLO_ZMWcW2ESDNRCOY7vTKcfG9Tc1FV7v2ukw', '2021-09-16 03:48:46');
INSERT INTO `token` VALUES (277, 'anonymousUser', '2021-09-06 04:01:41', NULL, '2021-09-06 04:05:31', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTczOTkzMCwiaWF0IjoxNjMwODc1OTMwfQ.9cdKbn0Sk0wqSPfWjhftlbp1sop5UyZwGdUfKCTwZsdlhaScSqSDyl4-T5OI67lXbIiekMqgLMb_883w80Jqlg', '2021-09-16 04:05:30');
INSERT INTO `token` VALUES (278, 'anonymousUser', '2021-09-06 04:07:06', NULL, '2021-09-06 04:08:44', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTc0MDEyNCwiaWF0IjoxNjMwODc2MTI0fQ.bLRKfN3s4DKUpB8hbMx9tTm1-riIrQlneiSiWZDCwiM4SIEtV6wWs7IR77iLa37Hjr9s_iIPEfmeriqezhMEbg', '2021-09-16 04:08:44');
INSERT INTO `token` VALUES (279, 'anonymousUser', '2021-09-06 04:09:22', 'anonymousUser', '2021-09-06 04:09:22', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTc0MDE2MSwiaWF0IjoxNjMwODc2MTYxfQ.8T-rYjrZQbSs_1FJrNI1WWFO2NWuUZNwi-R3IU1lUjaeqDQJB4F8YnrGer7ZlwnhDMVpyQ6uHArAs3qaZYaLbw', '2021-09-16 04:09:21');
INSERT INTO `token` VALUES (280, 'anonymousUser', '2021-09-06 04:12:03', NULL, '2021-09-06 04:13:35', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTc0MDQxNSwiaWF0IjoxNjMwODc2NDE1fQ.gKSfSkc1-1vyQf1S-CAF6aD1xhDOkVuy_3AatSLJs0fOs5dVYB7iKk8e6Th4Sjk1Lu5FQJjwMsOOQNOTsp8oHA', '2021-09-16 04:13:35');
INSERT INTO `token` VALUES (281, 'anonymousUser', '2021-09-06 04:14:15', NULL, '2021-09-06 10:18:18', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTc2MjI5OCwiaWF0IjoxNjMwODk4Mjk4fQ.Xto6GqoYKXLNHhyVvvFqohpXJb9nmlha67L4XdPIjyS0BnO9vJpekbipnI9MP7eAlqKK279dDCxnWMLq7UXF2g', '2021-09-16 10:18:18');
INSERT INTO `token` VALUES (282, 'anonymousUser', '2021-09-06 21:07:54', NULL, '2021-09-06 21:51:28', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTgwMzg4OCwiaWF0IjoxNjMwOTM5ODg4fQ.XbDzRZRWgVEYLgPbMhaeaH9eK24kZXJLQpNgtjNeHo-TflnKzlyiFdPK7nt4nKtSZXrsZU8g_cfG8FzlfoV9cg', '2021-09-16 21:51:28');
INSERT INTO `token` VALUES (286, 'anonymousUser', '2021-09-07 05:45:46', 'anonymousUser', '2021-09-07 05:45:46', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTgzMjM0NiwiaWF0IjoxNjMwOTY4MzQ2fQ.UYYhIdJS-WhJypW22i-5ExInVbnnRlzz-JoYYOI-uq6u49U8eBrstsHCwdw5lQntREuuGM8MeQ7Q-I3OWWWOjg', '2021-09-17 05:45:46');
INSERT INTO `token` VALUES (287, 'anonymousUser', '2021-09-07 05:46:35', 'anonymousUser', '2021-09-07 05:46:35', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTgzMjM5NSwiaWF0IjoxNjMwOTY4Mzk1fQ.HHQ1ReYZXzJWt4ofgYhtfcJl7XgkW2y0DwZMMPbqUqblpqFtBwOtITzWwg_QaV6I3kauA6NNFuAjK6G7CLHP1Q', '2021-09-17 05:46:35');
INSERT INTO `token` VALUES (288, 'anonymousUser', '2021-09-07 05:47:37', 'anonymousUser', '2021-09-07 05:47:37', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTgzMjQ1NywiaWF0IjoxNjMwOTY4NDU3fQ.CyR6TlV7jrl8HY_jk1z21hVcWEArUAAsgwWBWO57oY-6t70wYuz4VXU0XWpRSJvuxcCubE_IgWfvlqcFR5wgHg', '2021-09-17 05:47:37');
INSERT INTO `token` VALUES (289, 'anonymousUser', '2021-09-07 05:59:11', 'anonymousUser', '2021-09-07 05:59:11', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTgzMzE1MSwiaWF0IjoxNjMwOTY5MTUxfQ._wLYBkxTYwu2t65rugnE4mnm7S8Qi-qaUxy5J2WzfVSyKagceW0BN4R6_PbcIOk4fyaFgJTQl2chMrmRhx7lAw', '2021-09-17 05:59:11');
INSERT INTO `token` VALUES (290, 'anonymousUser', '2021-09-07 06:05:26', NULL, '2021-09-07 18:05:42', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTg3Njc0MSwiaWF0IjoxNjMxMDEyNzQxfQ.88DGwNq2kIZeUEUoWMt6-ECh95mAkzl9Qzg0dS-ZFkV3kM_HooJ_FLl63KKmxIjuTt4ckKr-0Y1IetWlPhqrYg', '2021-09-17 18:05:41');
INSERT INTO `token` VALUES (291, 'anonymousUser', '2021-09-07 18:06:07', NULL, '2021-09-07 20:04:38', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTg4Mzg3OCwiaWF0IjoxNjMxMDE5ODc4fQ.7ahMEK7-g-apHRuJo6o8Zi-qupqKLHrgSIVhb92UPhLR55zGaxXtNn-AwJ3roMUmQx1errZSRl7u2l0M_THs0A', '2021-09-17 20:04:38');
INSERT INTO `token` VALUES (294, 'anonymousUser', '2021-09-08 00:38:29', 'anonymousUser', '2021-09-08 00:38:29', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTkwMDMwOSwiaWF0IjoxNjMxMDM2MzA5fQ.pNLG8R5whWHWYyfEFuYZWaCZ7k3QS_-EGSaARNBiRFVXG4WUDVpMj4_RtCA_S4jn7Fok3lVMVZtVSzhfQt2Sjw', '2021-09-18 00:38:29');
INSERT INTO `token` VALUES (296, 'anonymousUser', '2021-09-08 01:22:53', NULL, '2021-09-08 01:36:48', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTkwMzgwNywiaWF0IjoxNjMxMDM5ODA3fQ.ABithau9y304_i7EUPLfDWIls1rf_WQ8j95a3cJ2vabU284AyP6Mu1JOIqeKpQq_LqkoEt33eyWyNhoWBU3bUg', '2021-09-18 01:36:47');
INSERT INTO `token` VALUES (298, 'anonymousUser', '2021-09-08 01:52:36', NULL, '2021-09-08 02:51:55', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTkwODMxNSwiaWF0IjoxNjMxMDQ0MzE1fQ.0Gtw6HO8jLlEhJMQ9hC4WcMTURP_lB8LAo8hbyZUGXUv49iHdGvqpAHTohj2Mp62yhlXV1ZTjFIbOzcEu6_vJA', '2021-09-18 02:51:55');
INSERT INTO `token` VALUES (305, 'anonymousUser', '2021-09-08 04:20:33', NULL, '2021-09-08 04:21:18', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTkxMzY3NywiaWF0IjoxNjMxMDQ5Njc3fQ.Xmv3-Pi029fcEniaV1kNrfjhutBnhA5vzL5pnU1zT-OqB_f8uaIwT_U5KSGJz5zeXaLUevi5q9Xx_3ADEdZ2VQ', '2021-09-18 04:21:17');
INSERT INTO `token` VALUES (306, 'anonymousUser', '2021-09-08 04:22:02', 'anonymousUser', '2021-09-08 04:22:02', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTkxMzcyMiwiaWF0IjoxNjMxMDQ5NzIyfQ.5jn6kokb3ndQ9WMNX-OJLdZMGcZG5vdub6XSueHg3UDe1FmTd6d0p1l9e4fOO3mSuyg0YOxbirhrw3pXh3Uuug', '2021-09-18 04:22:02');
INSERT INTO `token` VALUES (316, 'anonymousUser', '2021-09-08 23:55:41', NULL, '2021-09-09 00:32:04', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTk4NjMyNCwiaWF0IjoxNjMxMTIyMzI0fQ.kKYjyOmKfsv2zH6TtptVsJY3EyjfOqrQpiY3mya2w_lZWrkMtBuQvzjCiJFFp85Ht4NZr7wMGVtncT0g5IpbJA', '2021-09-19 00:32:04');
INSERT INTO `token` VALUES (317, 'anonymousUser', '2021-09-09 00:32:23', 'anonymousUser', '2021-09-09 00:32:23', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTk4NjM0MywiaWF0IjoxNjMxMTIyMzQzfQ.8sm6lwio5QFsyJMpAF4YP2faMq9mgq50mo6xMpCKzfzalajQRK9K3ha79CcWwfjLT9RsE2N8b-LZeTXAjiiKpw', '2021-09-19 00:32:23');
INSERT INTO `token` VALUES (318, 'anonymousUser', '2021-09-09 01:01:04', 'anonymousUser', '2021-09-09 01:01:04', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTk4ODA2NCwiaWF0IjoxNjMxMTI0MDY0fQ.LZg0V7NazDJGcmnO-dhJgoGPaCBLtJgVoOsdjxEv9PrtJkU9CoLkqLzcd0z2If1b-XDEy8cEkr0ubByeOK9xzw', '2021-09-19 01:01:04');
INSERT INTO `token` VALUES (319, 'anonymousUser', '2021-09-09 01:02:31', 'anonymousUser', '2021-09-09 01:02:31', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTk4ODE1MSwiaWF0IjoxNjMxMTI0MTUxfQ.Mw8KQtIX8MHkk1cX0N5OE3e7vUdg2_m4h2QgU9B-BlxVUs0Tr06h8jAclxd_58UcBnCHCO-eN9SW3eYb-gH0iQ', '2021-09-19 01:02:31');
INSERT INTO `token` VALUES (320, 'anonymousUser', '2021-09-09 01:04:25', 'anonymousUser', '2021-09-09 01:04:25', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTk4ODI2NCwiaWF0IjoxNjMxMTI0MjY0fQ.joT62lv45B0gqegmAL3sRpqWqF0WGvg2IIVkNFm3BfkGIZOBmr5uXyoK7LV2O5r9LHEZFPs5yO1ocvXwbL6CHg', '2021-09-19 01:04:24');
INSERT INTO `token` VALUES (324, 'anonymousUser', '2021-09-09 01:24:59', NULL, '2021-09-09 01:26:22', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTk4OTU4MiwiaWF0IjoxNjMxMTI1NTgyfQ.8iXR2kIfSha6ae6LVhM5Ttqx0RNyoSTukzjf-v6Id6U9hDQJlOdn_BDJzxw58XSkfEqTTYMA3OkwX_-eaKsZGg', '2021-09-19 01:26:22');
INSERT INTO `token` VALUES (325, 'anonymousUser', '2021-09-09 01:27:21', NULL, '2021-09-09 01:28:44', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTk4OTcyMywiaWF0IjoxNjMxMTI1NzIzfQ.QpDIHGqvkonLYfKfbRIYczFOJ_5AmuoZukG4-C-r76BJpARHqSJA_DNzSuEaogCVqU5I-wQ1UnqjkSmqCTJmaw', '2021-09-19 01:28:43');
INSERT INTO `token` VALUES (332, 'anonymousUser', '2021-09-09 02:08:41', NULL, '2021-09-09 02:13:10', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTk5MjM4OSwiaWF0IjoxNjMxMTI4Mzg5fQ.tVXDnuGNaFnP2W45q29XbCvcLIjF8dB5-kqDhW8v55_j76y1Hin42QbA7DrwG8dgbIy1Fz86vah0C-WNbHXKQg', '2021-09-19 02:13:09');
INSERT INTO `token` VALUES (333, 'anonymousUser', '2021-09-09 02:13:48', NULL, '2021-09-09 02:16:54', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTk5MjYxNCwiaWF0IjoxNjMxMTI4NjE0fQ.ExhcteOjiz20QSygTbpuks2cAvhP1EXxEzGM2nwklPMrclnf-nzqwmydAEKoA7QMOrGKqHhC4dGjYVfRYc27tA', '2021-09-19 02:16:54');
INSERT INTO `token` VALUES (334, 'anonymousUser', '2021-09-09 02:56:54', 'anonymousUser', '2021-09-09 02:56:54', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTk5NTAxNCwiaWF0IjoxNjMxMTMxMDE0fQ.JbpdZKuWAyqQ_z-hOyxmPMK247H45wE99piByRUA_0uUOcrUZzTyHp0GkZfJUTooRtVP7GMtzLBoXEXU4_8MXg', '2021-09-19 02:56:54');
INSERT INTO `token` VALUES (335, 'anonymousUser', '2021-09-09 02:57:56', 'anonymousUser', '2021-09-09 02:57:56', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTk5NTA3NSwiaWF0IjoxNjMxMTMxMDc1fQ.mZEj-t62eCEBFAf-MWNoUDPUr9puAxAjsQ1lyYBKcDpGMG3B773d782GvR0gn5g4RRL_fNPxRw3yZ4K2tVX-tQ', '2021-09-19 02:57:55');
INSERT INTO `token` VALUES (336, 'anonymousUser', '2021-09-09 03:04:29', 'anonymousUser', '2021-09-09 03:04:29', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTk5NTQ2OSwiaWF0IjoxNjMxMTMxNDY5fQ.g34P0UPCUjXniIwxa1S7eMsc0FzA6M7cGwF77NOXcv5pvRO8eW1ZgOYRRESKEnN7QWyUflihUto4B6bzRfsxug', '2021-09-19 03:04:29');
INSERT INTO `token` VALUES (337, 'anonymousUser', '2021-09-09 18:43:46', 'anonymousUser', '2021-09-09 18:43:46', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjA1MTgyNiwiaWF0IjoxNjMxMTg3ODI2fQ.2oXQ-8wHC2kKcW51R9hCXvUlzZtZoZAVPruDZ7idMxnGgdATPBhKbDS7k5AGPSnNtKrxOekiBG4Q64OAlTnsvw', '2021-09-19 18:43:46');
INSERT INTO `token` VALUES (338, 'anonymousUser', '2021-09-09 18:44:28', 'anonymousUser', '2021-09-09 18:44:28', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjA1MTg2OCwiaWF0IjoxNjMxMTg3ODY4fQ.5xt25c6ENYgM9kP54NGp2hPVrQgU0C49VUPtK90ukIGxnnMWm9C0_jNn1NRlz8xSBQXoyqshgcXp8MxYACmWCA', '2021-09-19 18:44:28');
INSERT INTO `token` VALUES (339, 'anonymousUser', '2021-09-09 18:45:07', 'anonymousUser', '2021-09-09 18:45:07', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjA1MTkwNiwiaWF0IjoxNjMxMTg3OTA2fQ.Kl0pWFCMWMRs3dLtZfwWZ4V-OdbZ-UcbEhxD7SMTGPQK5wVC1eFNeMIZcEw7obXPSBMczeEf79IS1vWufn7AjQ', '2021-09-19 18:45:06');
INSERT INTO `token` VALUES (340, 'anonymousUser', '2021-09-09 18:46:58', 'anonymousUser', '2021-09-09 18:46:58', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjA1MjAxNywiaWF0IjoxNjMxMTg4MDE3fQ.BDBHwWl1_VWBHwtWqEdCm6SY6ymDzh2HEkRjbHGNX6l97qh--iaNONmemcW0qf9mAChWHFtj1jO0Yz8Giin9Ng', '2021-09-19 18:46:57');
INSERT INTO `token` VALUES (341, 'anonymousUser', '2021-09-09 18:47:34', 'anonymousUser', '2021-09-09 18:47:34', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjA1MjA1NCwiaWF0IjoxNjMxMTg4MDU0fQ.Ie3lLHOUtZILqcBmv8R8-OgCj6eUxmfIsJKjjaX_NiT0_PrtY4VA4iA7jGVLA7PWdIS2MPX4q81-UORRBjV-JQ', '2021-09-19 18:47:34');
INSERT INTO `token` VALUES (342, 'anonymousUser', '2021-09-09 18:49:37', 'anonymousUser', '2021-09-09 18:49:37', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjA1MjE3NiwiaWF0IjoxNjMxMTg4MTc2fQ.SDI3ROT1pAOlmDWv8g45J3Rq3GV7RlIUjqtji6ZbqcAL1cfi1HDl_Iw7QJCB2-Z40-NI6IQLhBY_AdMM2akojQ', '2021-09-19 18:49:36');
INSERT INTO `token` VALUES (343, 'anonymousUser', '2021-09-09 18:50:16', 'anonymousUser', '2021-09-09 18:50:16', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjA1MjIxNiwiaWF0IjoxNjMxMTg4MjE2fQ.oFfXzKyZUBxYCCU7EG3PTQRNPv2P5uEs2BSoi8A4RBt_QGHnEYSATq-aBDaIMxpSAr-CTL9GJUu0xFOcSwzPOg', '2021-09-19 18:50:16');
INSERT INTO `token` VALUES (344, 'anonymousUser', '2021-09-09 18:52:58', 'anonymousUser', '2021-09-09 18:52:58', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjA1MjM3NywiaWF0IjoxNjMxMTg4Mzc3fQ.rBEZxUFlXyXC1zIH5a0YD1dXgFcXKdJugqLDpWIX4Pit1G3JVit19luP4IUmmXPHG7F6D3GUVGRpzmVuCzhxaw', '2021-09-19 18:52:57');
INSERT INTO `token` VALUES (345, 'anonymousUser', '2021-09-09 19:03:22', NULL, '2021-09-09 19:10:44', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTE4OTQ1MywiaWF0IjoxNjMxMTg5NDQzfQ.F2FxVJd37RK_yvpoHJg4ERwJ3pegQJHNjoVR2jULgqtrcJqMADGR1Yb4PNTls946b3WboD-CM9PqXDsCHA3wVg', '2021-09-09 19:10:53');
INSERT INTO `token` VALUES (346, 'anonymousUser', '2021-09-09 19:11:57', 'anonymousUser', '2021-09-09 19:11:57', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTE4OTUyNywiaWF0IjoxNjMxMTg5NTE3fQ.solVQ_h_LCi8SX5GkYvxiLCQVjMPbvi2-Z0ksVc69SLvtXVfYpGM6Qu6kQIPLybwNtT0ncL8nDxI8X0U1iscmQ', '2021-09-09 19:12:07');
INSERT INTO `token` VALUES (347, 'anonymousUser', '2021-09-09 19:14:07', 'anonymousUser', '2021-09-09 19:14:07', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTE4OTY1NiwiaWF0IjoxNjMxMTg5NjQ2fQ.vD_ggLtlaF6SEuAdC0QXqfBAng1Q3fUMulj1D6YSpbaJW4aFmh--h9gOEQsehDFHCYPlEXa5IVF5Un4q8_Zc6w', '2021-09-09 19:14:16');
INSERT INTO `token` VALUES (348, 'anonymousUser', '2021-09-09 19:14:56', NULL, '2021-09-09 19:20:56', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTE5MDA2NSwiaWF0IjoxNjMxMTkwMDU1fQ.0E4p4qZBiFJTsOqZMpgbFTmBP4yaYo9IKeIJQs1kONF2_FdDKiTy7R47PnVXI0UP8hU5hsQmsGzen53QpUpe2A', '2021-09-09 19:21:05');
INSERT INTO `token` VALUES (349, 'anonymousUser', '2021-09-09 19:26:08', 'anonymousUser', '2021-09-09 19:26:08', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTE5MDM3OCwiaWF0IjoxNjMxMTkwMzY4fQ._Gsl-JdKadHh-_pBWbtZYYYSo7R4IWqlq-lTHnLXUlcEyfPf5gSlgYPtZoSOgt9lsDhVf5LN7wXso5eYqLsGSw', '2021-09-09 19:26:18');
INSERT INTO `token` VALUES (350, 'anonymousUser', '2021-09-09 19:49:54', NULL, '2021-09-09 19:50:40', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTE5MTg0OSwiaWF0IjoxNjMxMTkxODM5fQ.M0OHFU7mK10O5Di7WqpVTPR4F_v4QRxhlDM92hB_EcFS-YXjB6cnJI3x_mQDWErzmdHfkm-7mrpIn32cYBxlhw', '2021-09-09 19:50:49');
INSERT INTO `token` VALUES (352, 'anonymousUser', '2021-09-09 19:56:53', 'anonymousUser', '2021-09-09 19:56:53', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTE5MjIyMywiaWF0IjoxNjMxMTkyMjEzfQ.gr5r9XXY6tTTB10lKBCMO4o0lMttAiQjHOmSBKKJBcqx3WFrZN6uGqDsFIq8VATSIqXqqFjuKbeOOV50r6e1Yg', '2021-09-09 19:57:03');
INSERT INTO `token` VALUES (355, 'anonymousUser', '2021-09-09 20:22:06', NULL, '2021-09-09 20:41:48', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTE5NDkxNywiaWF0IjoxNjMxMTk0OTA3fQ.qjKBTH2xWq6bbS9OpDKfBBkKi1ZwutfAyU2-O9LLqO1LGkMkYqj3l4S-mKB5sr3G5QhSofL64ogUYPZLySKpWQ', '2021-09-09 20:41:57');
INSERT INTO `token` VALUES (358, 'anonymousUser', '2021-09-09 21:34:50', NULL, '2021-09-09 21:39:00', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTE5ODM0OSwiaWF0IjoxNjMxMTk4MzM5fQ.LBi6PJxJVsapiw1notMWHEuWJ5rlGvVBPFL6_OZrhG8cnRosQ0tX69RZEISH7l1-0r-JzgncpPrIAQj9Or6QkQ', '2021-09-09 21:39:09');
INSERT INTO `token` VALUES (360, 'anonymousUser', '2021-09-09 21:42:56', NULL, '2021-09-09 21:53:06', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTE5OTE5NiwiaWF0IjoxNjMxMTk5MTg2fQ.J8PcAlwF6xdlZQoz8m0EtzJUEmh5JXg-PI0KgPLsMZRQkvLMd1uiWz3gbM0wz1CnMvgC93HAcPE_Jj8pOtc4IA', '2021-09-09 21:53:16');
INSERT INTO `token` VALUES (361, 'anonymousUser', '2021-09-09 22:07:52', NULL, '2021-09-09 22:29:29', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIwMTM3OCwiaWF0IjoxNjMxMjAxMzY4fQ.GEq7sQR9sWDM5oN8tOGXI2gKUa5AxDsE6Y7LRyGDQTCm1Vhm5dIlB6zzFgj69uYk6vnTe2YER0Kj96wPWnTzcw', '2021-09-09 22:29:38');
INSERT INTO `token` VALUES (362, 'anonymousUser', '2021-09-09 22:31:51', NULL, '2021-09-09 22:33:35', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIwMTYyNSwiaWF0IjoxNjMxMjAxNjE1fQ.ziK_X9VvHH5XwoT2cH2CLI4CIn4vm4f6WP51d9dGUOW-ZUeqeRLJwGUEVbk7PEk2iVMnhWOYwEJH4iGJvXY86g', '2021-09-09 22:33:45');
INSERT INTO `token` VALUES (363, 'anonymousUser', '2021-09-09 22:42:18', NULL, '2021-09-09 22:54:19', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIwMjg2OCwiaWF0IjoxNjMxMjAyODU4fQ.KIcM1QXwM3gqPJCw7EBy-Xa1dRuk3po-L3r8Pwsjcq--v0fABekJeThD2FpItuy0CqmV9RLMn7Q6Zm4SmVsPfg', '2021-09-09 22:54:28');
INSERT INTO `token` VALUES (364, 'anonymousUser', '2021-09-09 23:27:09', NULL, '2021-09-09 23:35:39', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIwNTM0OCwiaWF0IjoxNjMxMjA1MzM4fQ.WIUm-UBZkT9wL5I8aUoKByjzI_nX-zjFjIoLhNykJTZSbjc5HAgIoJSZHmhfySWNmt4LM3SrLLGNllO0YElQgQ', '2021-09-09 23:35:48');
INSERT INTO `token` VALUES (366, 'anonymousUser', '2021-09-09 23:42:51', NULL, '2021-09-10 00:34:52', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIwODkwMSwiaWF0IjoxNjMxMjA4ODkxfQ.mc1q5aGwVo-DXE0kI2_rYibpKnh0ulw52X2eYt2BaB_fLLn5nnPl8TOL-_uw6zi9HXN7fKwo_YHGKyhtqhavxg', '2021-09-10 00:35:01');
INSERT INTO `token` VALUES (367, 'anonymousUser', '2021-09-10 00:52:22', NULL, '2021-09-10 00:57:15', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIxMDI0NSwiaWF0IjoxNjMxMjEwMjM1fQ.NQcnovlDTorlpBpqnQVPN0tbaNCciPxwO9VhWVN3Wt4AMicSy6m61lN6Gl2tN-S2-upAnn9pzJs1AZiXBndmnA', '2021-09-10 00:57:25');
INSERT INTO `token` VALUES (368, 'anonymousUser', '2021-09-10 00:59:03', NULL, '2021-09-10 00:59:37', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIxMDM4NywiaWF0IjoxNjMxMjEwMzc3fQ.oPLLd6H8Wlr2BYx9ONDLiuJAD90bWu_8yuZnP68T1MBtK0rvUEJHHND63J84Y2y0_G3tiEuBZHJhQAtJUSDY3Q', '2021-09-10 00:59:47');
INSERT INTO `token` VALUES (369, 'anonymousUser', '2021-09-10 01:00:42', NULL, '2021-09-10 01:02:37', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIxMDU2NywiaWF0IjoxNjMxMjEwNTU3fQ.0YYiU9IuqZ7qGPE5wgYGLEaQ-z11Ve9-wBlip1rDKMODkyjG6n_8XWJmb0gZ8Ds5-6KKxXlZNs9W7cWEd3z6QQ', '2021-09-10 01:02:47');
INSERT INTO `token` VALUES (370, 'anonymousUser', '2021-09-10 01:12:43', NULL, '2021-09-10 01:13:38', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIxMTIyNywiaWF0IjoxNjMxMjExMjE3fQ.qRFgLZ0byQn3q8xt53noJsUrtc_GyLS1l0f5duyKx6aj8-SygAdyqTQANIMR7I3sy35fI9A8ZPMrqJSlrUPAnw', '2021-09-10 01:13:47');
INSERT INTO `token` VALUES (371, 'anonymousUser', '2021-09-10 01:14:12', NULL, '2021-09-10 01:26:21', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIxMTk5MCwiaWF0IjoxNjMxMjExOTgwfQ.Fqu9aP3i9ON7Zj4kO-C4GjOJm6I9M9SvOIgQ3Dtv30b_fD4HFjk--WcEm2fxKDdQhJesnaQ6Qv8iX_lPYr6ICA', '2021-09-10 01:26:30');
INSERT INTO `token` VALUES (372, 'anonymousUser', '2021-09-10 01:31:10', NULL, '2021-09-10 01:33:33', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIxMjQyMiwiaWF0IjoxNjMxMjEyNDEyfQ.n_YRIsM7E9DOH7jcevGGHmOdHTu-CZ5uiurUMbBCrASpmvBsVnoyDFz8GBgp0SqQeKU2CRksrDEFW0IYDphvbA', '2021-09-10 01:33:42');
INSERT INTO `token` VALUES (373, 'anonymousUser', '2021-09-10 02:21:07', NULL, '2021-09-10 02:24:09', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIxNTQ1OCwiaWF0IjoxNjMxMjE1NDQ4fQ.dYqM57HtP-GDYwvLhSoRsB3K_wtv-nHNM8qxVuWXBPFIqofWO1BvpJO34Y1YszkuxcsWrydAnGWIqMzJoJ_IQg', '2021-09-10 02:24:18');
INSERT INTO `token` VALUES (374, 'anonymousUser', '2021-09-10 02:28:26', NULL, '2021-09-10 02:41:34', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIxNjUwMywiaWF0IjoxNjMxMjE2NDkzfQ.8sIZ8xvvZHk2sT-ywhCs1zHb6JqZniiXhpHJmkKyc0sMlksXykaek5STYnUVU0I0ulGZVTKVTQbK998b01pHrw', '2021-09-10 02:41:43');
INSERT INTO `token` VALUES (375, 'anonymousUser', '2021-09-10 02:41:57', NULL, '2021-09-10 03:12:16', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIxODM0NiwiaWF0IjoxNjMxMjE4MzM2fQ.hpUho3T4v5Mp6mjVlrUnt59Fh-CKcwqVyKqFyASSg3L0A8HTn7LmTdMRCUAtmhb_VnsVGp0s45xDGht_JQnKBg', '2021-09-10 03:12:26');
INSERT INTO `token` VALUES (377, 'anonymousUser', '2021-09-10 03:42:14', NULL, '2021-09-10 04:55:17', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIyNDUyNiwiaWF0IjoxNjMxMjI0NTE2fQ.LbXoaRcNNpmJd148-II-PdSEixsdOcLf8yTMnFFoPfufTZb38CbksTI8qoKsz3DaSvoFMgVbC8dE7jsEzcyazA', '2021-09-10 04:55:26');
INSERT INTO `token` VALUES (378, 'anonymousUser', '2021-09-10 05:32:32', NULL, '2021-09-10 05:32:46', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIyNjc3NiwiaWF0IjoxNjMxMjI2NzY2fQ._arAECCWJ8O0aj2br69UKZVe_FpFtc6qEG9UJEs2d-ehh7X9VgwWiGjAXh5ahfpZhDRV8XO2anNcY4jU7AQlcw', '2021-09-10 05:32:56');
INSERT INTO `token` VALUES (379, 'anonymousUser', '2021-09-10 05:32:55', NULL, '2021-09-10 05:33:09', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIyNjc5OSwiaWF0IjoxNjMxMjI2Nzg5fQ.tJFppOlLnRUiLZPNXL1Cq5_eAFqPs465zPk8mzfXsfOOu1KZRi6ox7A7rCp5UgJC0EOaRUS4oNdx0f-OaTnkQg', '2021-09-10 05:33:19');
INSERT INTO `token` VALUES (380, 'anonymousUser', '2021-09-10 05:39:19', NULL, '2021-09-10 05:42:24', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIyNzM1NCwiaWF0IjoxNjMxMjI3MzQ0fQ.Augi0uexoPBr4UFjjxKtr-2UWeDc3rGLQ2SP5Vr3JqWc1uS0j_mOTOb7JDjhcvjVtVz4jqaPF70GDci_ywE1vA', '2021-09-10 05:42:34');
INSERT INTO `token` VALUES (381, 'anonymousUser', '2021-09-10 05:43:05', NULL, '2021-09-10 06:46:14', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIzMTE4MywiaWF0IjoxNjMxMjMxMTczfQ.dmRo4zbXMSakgqS6bMOna03FW1LUrDYIqbAEtdjbHlLl_X5xnuuAl7peDlVbz68MWtjJGWemR_EvOw2YggGhHQ', '2021-09-10 06:46:23');
INSERT INTO `token` VALUES (382, 'anonymousUser', '2021-09-10 06:46:42', NULL, '2021-09-10 06:47:17', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTIzMTI0NiwiaWF0IjoxNjMxMjMxMjM2fQ.kKOeSKJEbZCbJEQRWCg0T0pwoXzs1GotadEr2wWA1CGIYPdspuScGWnwZeu6UPnWLkXh44Kj3dLPp6nWg5HFoA', '2021-09-10 06:47:26');
INSERT INTO `token` VALUES (383, 'anonymousUser', '2021-09-10 20:29:24', NULL, '2021-09-10 20:35:39', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTI4MDk0OSwiaWF0IjoxNjMxMjgwOTM5fQ.ev5Xkz0vUyAVOQImUFO5jHJuNzsjqTx3-FNEGiT71nYd0jm2dafZH5DgVo5ZJqrl78pYNJfyOztPFyiwV9s8vg', '2021-09-10 20:35:49');
INSERT INTO `token` VALUES (384, 'anonymousUser', '2021-09-10 20:36:17', NULL, '2021-09-10 20:45:47', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTI4MTU1NywiaWF0IjoxNjMxMjgxNTQ3fQ.FkK10w8zy4q1GPMxiDfV13a5yIcBr7OfPkP3V2nxhGv_Y5tyqfVrweDfkFLcg11PbFpz2vg1ZD02CWMksZ74wA', '2021-09-10 20:45:57');
INSERT INTO `token` VALUES (385, 'anonymousUser', '2021-09-10 20:52:20', NULL, '2021-09-10 20:54:36', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTI4MjA4NSwiaWF0IjoxNjMxMjgyMDc1fQ.Zo9AGka4RnSbW3sRh3aK0l76wQWPqdD4b2In7hXREyx0F8RiBZe44BPDpwE43CTEfSzqH-JO9Z6_-JsBy4axHQ', '2021-09-10 20:54:45');
INSERT INTO `token` VALUES (386, 'anonymousUser', '2021-09-10 20:54:42', NULL, '2021-09-10 20:56:50', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTI4MjIyMCwiaWF0IjoxNjMxMjgyMjEwfQ.f4e1jxU5LzLXP2xVM7MYpViBEkKFC7pR6WP0OgQB1JGtU6wiuI53Jc5h1b0ncwI26JpzI69Fqya1HRGW8gg4TA', '2021-09-10 20:57:00');
INSERT INTO `token` VALUES (387, 'anonymousUser', '2021-09-10 20:57:59', NULL, '2021-09-10 20:59:58', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTI4MjQwOCwiaWF0IjoxNjMxMjgyMzk4fQ.EF0qgnmVwiaDyr3LL5K8xglzpuW94Vx2B5uWwd0MsgVZHumaSU9uGB4XgfKpU36vf-_y-y_3XX7FXaPY-sqTWQ', '2021-09-10 21:00:08');
INSERT INTO `token` VALUES (388, 'anonymousUser', '2021-09-10 21:01:55', NULL, '2021-09-10 21:03:09', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTI4MjU5OCwiaWF0IjoxNjMxMjgyNTg4fQ.eWbB-lE78Kak--53sjHqO-awHYC4qtD3rwfsjRUfL85PMEMLC88hw2uDpax3Nz3EaKGz6awdtgn3KWnEj1HLbA', '2021-09-10 21:03:18');
INSERT INTO `token` VALUES (389, 'anonymousUser', '2021-09-10 21:06:07', NULL, '2021-09-10 21:07:48', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTI4Mjg3NywiaWF0IjoxNjMxMjgyODY3fQ.uzIy46g1OylFj88BGkYSVHYZ3lDIMrR69Oh5fRkGCQmpeTYebCiE-UcBfahCUZaixCUTRTn7ZGhknDo5_O0dlQ', '2021-09-10 21:07:57');
INSERT INTO `token` VALUES (390, 'anonymousUser', '2021-09-10 21:07:57', NULL, '2021-09-10 21:09:50', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTI4MzAwMCwiaWF0IjoxNjMxMjgyOTkwfQ.1fGBAfhHhlW-yHua08ZcAkltnyuatevm7s8AYBTln4eDmomG_rqyRzacOR5V9fD9t47y2qmlGuXg6aDmHci5gw', '2021-09-10 21:10:00');
INSERT INTO `token` VALUES (391, 'anonymousUser', '2021-09-10 21:10:17', NULL, '2021-09-10 21:10:38', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTI4MzA0NywiaWF0IjoxNjMxMjgzMDM3fQ.cOKz4PU4O5pTgmRu15VCY8yOmFuhPBkjqKJ0SZkckXStpbrjX7_Nx824X1A-6JVGxoL7LJWhF11ImHYTOwJjug', '2021-09-10 21:10:47');
INSERT INTO `token` VALUES (392, 'anonymousUser', '2021-09-10 21:11:06', NULL, '2021-09-10 22:25:45', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTI4NzU1NCwiaWF0IjoxNjMxMjg3NTQ0fQ.TvOKM772s9HskDo-h_9FFnRu7LFQIIHbqUEnqo99np0NgKc4URqg7ztLxGhsUyj4VSI70DnrhZlLibnsAVODLw', '2021-09-10 22:25:54');
INSERT INTO `token` VALUES (393, 'anonymousUser', '2021-09-10 22:39:17', NULL, '2021-09-10 23:05:43', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTI4OTk1MywiaWF0IjoxNjMxMjg5OTQzfQ.xsYi9SlMiJmVtUTphKuPcZxTUH7y584eSzuow1N3kyfRmGf0sWUkcgzBziEBknxLMbTiZc84V7Pa2wGMm8sukw', '2021-09-10 23:05:53');
INSERT INTO `token` VALUES (394, 'anonymousUser', '2021-09-10 23:06:05', NULL, '2021-09-10 23:11:55', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTI5MDMyNCwiaWF0IjoxNjMxMjkwMzE0fQ.c5nhnwmFWE3oqRp2JnkWXqxNCnO6bGDsXHAx97LTpfEs2Y9isIL2swv5oVs9KpfFFAoTaSsf9ctmDBNBauKgvA', '2021-09-10 23:12:04');
INSERT INTO `token` VALUES (395, 'anonymousUser', '2021-09-10 23:12:04', NULL, '2021-09-10 23:13:41', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTI5MDQzMCwiaWF0IjoxNjMxMjkwNDIwfQ.21E4b23xkIazClCEAkPDNl9UKAFF4F1Bt_rcBXyRxFUxeju8Ts8Zke3kIqRy6a0B0D2Hs-V81Etqqz2J2xGz5Q', '2021-09-10 23:13:50');
INSERT INTO `token` VALUES (396, 'anonymousUser', '2021-09-10 23:14:15', NULL, '2021-09-10 23:30:11', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTI5MTQyMCwiaWF0IjoxNjMxMjkxNDEwfQ.tWuf-1C-xbV1obgPLem6hVkCSLkxORDCI6RvGksAoeBdj9rl5fHdQsocTHT3WoayE9rGbqVZxIoVbZ-8QOOPjw', '2021-09-10 23:30:20');
INSERT INTO `token` VALUES (398, 'anonymousUser', '2021-09-11 03:19:10', NULL, '2021-09-11 03:25:31', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTMwNTU0MSwiaWF0IjoxNjMxMzA1NTMxfQ.Vzf1VgeuFKcRFTcinExvzQefa86IDyVbIG0RzIzcJhv1uMcfF97B1mrXQneE8eikA4pqVlcSeTy8LDUPjSb8nQ', '2021-09-11 03:25:41');
INSERT INTO `token` VALUES (399, 'anonymousUser', '2021-09-11 03:27:46', NULL, '2021-09-11 03:36:20', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTMwNjE5MCwiaWF0IjoxNjMxMzA2MTgwfQ.D19Jl7Dia74xHa_gxSdOsjBcivae4OFZwvQ1rbG87adXZ3OG5siF7U-HFQhxYuZ4J-l0VBDvkmosZMEwCQH1ww', '2021-09-11 03:36:30');
INSERT INTO `token` VALUES (400, 'anonymousUser', '2021-09-11 03:53:41', NULL, '2021-09-11 03:53:59', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTMwNzI0OCwiaWF0IjoxNjMxMzA3MjM4fQ.arMS6oT5l76a4K10YGNVFW15dwtVLF4WyZoxbryM_4CCEO1Tb27swIBkuyQNIaLK33p_ND5cLeu8NDySrFrbdw', '2021-09-11 03:54:08');
INSERT INTO `token` VALUES (401, 'anonymousUser', '2021-09-11 03:54:06', NULL, '2021-09-11 03:56:20', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTMwNzM5MCwiaWF0IjoxNjMxMzA3MzgwfQ.M6l6Ftllrs4CpeG5bUx2QJV2PKnroHXGmcRjJVLidsxYLXc_Hfznu6V4sZGtRwRKOg9Tq3PezD9bzhbVBnmGDw', '2021-09-11 03:56:30');
INSERT INTO `token` VALUES (402, 'anonymousUser', '2021-09-11 03:58:50', NULL, '2021-09-11 04:00:49', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTMwNzY1OSwiaWF0IjoxNjMxMzA3NjQ5fQ.fiwFoivGP4-4ldiY-INNHkiRF5GJpMBP1QrnJ-XqZolQT6B5iJ6HzO-63fDJXzX9XQsxzCGKX4qrcpdFd-8wgQ', '2021-09-11 04:00:59');
INSERT INTO `token` VALUES (403, 'anonymousUser', '2021-09-11 04:01:18', NULL, '2021-09-11 04:16:17', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTMwODU4NiwiaWF0IjoxNjMxMzA4NTc2fQ.Sf4vjKlmJMXSyif2txOmYKKJMhu3epk91U9G-1IwCbFS8G1wSj-OnzyBrtRewcw1D2t-0AsRuwSSex4E7MZ7_A', '2021-09-11 04:16:26');
INSERT INTO `token` VALUES (408, 'anonymousUser', '2021-09-11 21:35:32', NULL, '2021-09-11 21:35:36', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTM3MDk0NiwiaWF0IjoxNjMxMzcwOTM2fQ.L8GeszAPZOGxTVb5h5f1GTmzSRiegfIibJCxeQQw-6xOneftpG_MFj20hDQbiG48LM4-_ejvYeyfvrSHroQzsA', '2021-09-11 21:35:46');
INSERT INTO `token` VALUES (409, 'anonymousUser', '2021-09-11 21:35:45', NULL, '2021-09-11 21:52:37', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTM3MTk2NiwiaWF0IjoxNjMxMzcxOTU2fQ.1yZKbz8htlddy0Ifufm8bhBMEgdsOVkj7YE-BNW-LMwQKPLcsC8TUXXjcdTGmfPQTs_nbMtAIOHQJaEHLEr_Tg', '2021-09-11 21:52:46');
INSERT INTO `token` VALUES (411, 'anonymousUser', '2021-09-11 22:11:44', NULL, '2021-09-11 22:11:54', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTM3MzEyNCwiaWF0IjoxNjMxMzczMTE0fQ.2UDXWiE-uTlO47nzLb_z5-PhQrOzj12dTJEc9CLTEb_QIouWQ2BiRQbeNYTBMEg9pmFylKsJB8qe_pe4ywP2og', '2021-09-11 22:12:04');
INSERT INTO `token` VALUES (412, 'anonymousUser', '2021-09-11 22:12:58', NULL, '2021-09-11 22:42:07', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTM3NDkzNiwiaWF0IjoxNjMxMzc0OTI2fQ.BIPTIUsLxzFj4CQUTjEmdsPnXB3VG0uobadkTNSqAbcRntBWmQ_tc8VBT-k5Z5WiHZ9iKva3Gio4A2yCCQDu6w', '2021-09-11 22:42:16');
INSERT INTO `token` VALUES (413, 'anonymousUser', '2021-09-12 19:24:21', NULL, '2021-09-12 19:25:25', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTQ0OTUzNCwiaWF0IjoxNjMxNDQ5NTI0fQ.KYpvbam-8DKlrYEAssxxuRi9S7rCtejz5T8HML3efZdWDU1L7OeerAYS3zLctTHiBB4pRwCIEIl7Q8Kj71blgw', '2021-09-12 19:25:34');
INSERT INTO `token` VALUES (414, 'anonymousUser', '2021-09-12 19:58:46', NULL, '2021-09-12 19:59:06', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTQ1MTU1NSwiaWF0IjoxNjMxNDUxNTQ1fQ.SNq9Jq2tBLXNRwedyRY_78zRgSMRQcSe23lean3Msn5QJPdeiHroc0OpJz-3-Eiwy_0yvZ9Bo9nJqhzl9achkg', '2021-09-12 19:59:15');
INSERT INTO `token` VALUES (416, 'anonymousUser', '2021-09-12 20:01:43', NULL, '2021-09-12 20:02:05', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTQ1MTczNCwiaWF0IjoxNjMxNDUxNzI0fQ.bpNjltlAToxLFDkJ4Esdzt0zKgLqPbWCG_prTh_6TEpa8Y5UkoL8tQG0obefAwere95rcjSMcWdZ7zkNqPHNEg', '2021-09-12 20:02:14');
INSERT INTO `token` VALUES (417, 'anonymousUser', '2021-09-12 20:50:34', NULL, '2021-09-12 20:57:03', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTQ1NTAzMywiaWF0IjoxNjMxNDU1MDIzfQ.uJEr1HXkWpsC_tgJfm7qeJOA3UwZ0qMpsQUIkWflpc6RlvEx5ZMYZ1m1ZkkXS-329qJmxDOtgjKnmgBWiOWHOw', '2021-09-12 20:57:13');
INSERT INTO `token` VALUES (418, 'anonymousUser', '2021-09-12 20:57:24', NULL, '2021-09-12 21:14:31', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTQ1NjA4MSwiaWF0IjoxNjMxNDU2MDcxfQ.VxjmYjNXYJ8eicApndFEH2f-CfECLiohWWOkIHhKzrSSm67U5aA34iKn7vIcTKdsCKCFWohb5swGH2aozMwVDw', '2021-09-12 21:14:41');
INSERT INTO `token` VALUES (419, 'anonymousUser', '2021-09-12 21:15:01', NULL, '2021-09-12 21:33:33', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTQ1NzIyMiwiaWF0IjoxNjMxNDU3MjEyfQ.C09A-VOdaFGJH7-oW0xrck-41cOx5ucwy0FlXDRefnaZUyMO_hqXmz1cYcwrH0nmZpK1m8Jzg9RCdHG9Q0oz3w', '2021-09-12 21:33:42');
INSERT INTO `token` VALUES (421, 'anonymousUser', '2021-09-13 19:48:24', NULL, '2021-09-13 19:59:10', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTUzNzk2MCwiaWF0IjoxNjMxNTM3OTUwfQ.QywODXL9YflLWSF4nb4S4mgEsL2u1fpXCi05AgTB3EpV_BwXagngOgHV8F7sb_izG-qc6WRzsHdrXw4-gCHN6Q', '2021-09-13 19:59:20');
INSERT INTO `token` VALUES (422, 'anonymousUser', '2021-09-13 19:59:47', NULL, '2021-09-13 20:04:35', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTUzODI4NSwiaWF0IjoxNjMxNTM4Mjc1fQ.sg_gkWv7-fIEX9tbfuy1dzn6JadK14ODuCJ-cp59O02VHmuHCbTTENCERPP86eKO9IDwx30HXlzvUaJ5o3T6tg', '2021-09-13 20:04:45');
INSERT INTO `token` VALUES (423, 'anonymousUser', '2021-09-13 20:05:17', NULL, '2021-09-13 20:05:45', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMTUzODM1NSwiaWF0IjoxNjMxNTM4MzQ1fQ.Dl-C3Z8jTOYzMp4Xkc1a5Y0ChxXUg7rvUOVvm4-rluSMDydnJVNI4aJF-5K28p4GHTW8RtaQlfCUAgpVkUoGXA', '2021-09-13 20:05:55');
INSERT INTO `token` VALUES (424, 'anonymousUser', '2021-09-16 16:29:16', 'anonymousUser', '2021-09-16 16:29:16', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjY3Mzc1NSwiaWF0IjoxNjMxODA5NzU1fQ.Ykof1HRnRlhUdQbF-MyvPyxCJKIn-atw31UcQBVBDar5HB-ts9HI2kvHodrG8bzXslaPdjTkPHdRe7m1GiTrAQ', '2021-09-26 16:29:15');
INSERT INTO `token` VALUES (425, 'anonymousUser', '2021-09-17 04:06:17', 'anonymousUser', '2021-09-17 04:06:17', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjcxNTU3NywiaWF0IjoxNjMxODUxNTc3fQ.4vLUqPAhwMTFX2b9Io9QCCH6H7jgzFppyMnp-jUTDgFH6z8021dlUSJ1cH9b612LJwBh7wUYNHBXI8xdqt4GkQ', '2021-09-27 04:06:17');
INSERT INTO `token` VALUES (430, 'anonymousUser', '2021-09-17 15:20:05', NULL, '2021-09-20 08:25:50', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjk5MDM0OSwiaWF0IjoxNjMyMTI2MzQ5fQ.AdXWkAPCUcoI2ytEy2zVVNpFcC0dbzGIPU5yuOedEUFpFQcNpReu6E81fvTRn2UpDEneiTobmel6WULo0mn_aw', '2021-09-30 08:25:49');
INSERT INTO `token` VALUES (431, 'anonymousUser', '2021-09-17 15:32:59', NULL, '2021-09-17 15:33:12', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjc1Njc5MSwiaWF0IjoxNjMxODkyNzkxfQ.EwN0ZwNgao1U6cJVGVi8VK2OPzU-iancwTh8d-Cqut6FFhMRliIdgQyW_ZtyeKZgMgvF2YTB_fCaSdOsH7VkKA', '2021-09-27 15:33:11');
INSERT INTO `token` VALUES (435, 'anonymousUser', '2021-09-18 06:51:45', 'anonymousUser', '2021-09-18 06:51:45', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjgxMTkwNSwiaWF0IjoxNjMxOTQ3OTA1fQ.K4IgS2YzcP321P7-VakXEmDjM0xtYV6ENj3AZryI4F9lUEgvSlfcm_IK4UG5dnDIcupDJKDwox3BjK_L-q8l2Q', '2021-09-28 06:51:45');
INSERT INTO `token` VALUES (436, 'anonymousUser', '2021-09-18 06:52:05', NULL, '2021-09-18 06:52:08', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjgxMTkyOCwiaWF0IjoxNjMxOTQ3OTI4fQ.cZ0Pg3eEr83DJGIzTlpGDsLYR9JROt_e5hZ3iNYrlNhMUItuhWYOtW6hFiPkZu49I91t5YYsMHl0pvxM6RMyzQ', '2021-09-28 06:52:08');
INSERT INTO `token` VALUES (438, 'anonymousUser', '2021-09-18 09:31:09', NULL, '2021-09-21 07:51:14', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMzA3NDY3NCwiaWF0IjoxNjMyMjEwNjc0fQ.a9HKV-ESyhEjT7OGsF6BGolDMiSJbJI71e3dBS6J6Hzj4-TUC6KyyMVX28QkINRW_GU0mH6A-4MT-XOiqvVRgA', '2021-10-01 07:51:14');
INSERT INTO `token` VALUES (444, 'anonymousUser', '2021-09-19 01:37:01', NULL, '2021-09-19 02:40:08', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjg4MzIwOCwiaWF0IjoxNjMyMDE5MjA4fQ.WmlQ0vLrhVS0rWb02JYO5tBKmdQrchzwgdxxdjCqmm-5kiDygADOBAVSk5XKhCMo5lUCxCZdRcc8jTUw4fr1lg', '2021-09-29 02:40:08');
INSERT INTO `token` VALUES (447, 'anonymousUser', '2021-09-20 06:55:17', 'anonymousUser', '2021-09-20 06:55:17', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjk4NDkxNywiaWF0IjoxNjMyMTIwOTE3fQ.kEuGrXu9axMi0yb3nO4T2EE_Oi9W-NqfL0Oi3ev-kVZQDEu_y7kxN4IzlPmwQhS_XkJAc65-6f5Qf5cKn5qVIw', '2021-09-30 06:55:17');
INSERT INTO `token` VALUES (448, 'anonymousUser', '2021-09-20 06:55:17', 'anonymousUser', '2021-09-20 06:55:17', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjk4NDkxNywiaWF0IjoxNjMyMTIwOTE3fQ.kEuGrXu9axMi0yb3nO4T2EE_Oi9W-NqfL0Oi3ev-kVZQDEu_y7kxN4IzlPmwQhS_XkJAc65-6f5Qf5cKn5qVIw', '2021-09-30 06:55:17');
INSERT INTO `token` VALUES (449, 'anonymousUser', '2021-09-20 06:55:17', 'anonymousUser', '2021-09-20 06:55:17', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjk4NDkxNywiaWF0IjoxNjMyMTIwOTE3fQ.kEuGrXu9axMi0yb3nO4T2EE_Oi9W-NqfL0Oi3ev-kVZQDEu_y7kxN4IzlPmwQhS_XkJAc65-6f5Qf5cKn5qVIw', '2021-09-30 06:55:17');
INSERT INTO `token` VALUES (450, 'anonymousUser', '2021-09-20 06:55:18', 'anonymousUser', '2021-09-20 06:55:18', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjk4NDkxNywiaWF0IjoxNjMyMTIwOTE3fQ.kEuGrXu9axMi0yb3nO4T2EE_Oi9W-NqfL0Oi3ev-kVZQDEu_y7kxN4IzlPmwQhS_XkJAc65-6f5Qf5cKn5qVIw', '2021-09-30 06:55:17');
INSERT INTO `token` VALUES (451, 'anonymousUser', '2021-09-20 06:55:18', 'anonymousUser', '2021-09-20 06:55:18', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjk4NDkxNywiaWF0IjoxNjMyMTIwOTE3fQ.kEuGrXu9axMi0yb3nO4T2EE_Oi9W-NqfL0Oi3ev-kVZQDEu_y7kxN4IzlPmwQhS_XkJAc65-6f5Qf5cKn5qVIw', '2021-09-30 06:55:17');
INSERT INTO `token` VALUES (452, 'anonymousUser', '2021-09-20 06:55:18', 'anonymousUser', '2021-09-20 06:55:18', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjk4NDkxNywiaWF0IjoxNjMyMTIwOTE3fQ.kEuGrXu9axMi0yb3nO4T2EE_Oi9W-NqfL0Oi3ev-kVZQDEu_y7kxN4IzlPmwQhS_XkJAc65-6f5Qf5cKn5qVIw', '2021-09-30 06:55:17');
INSERT INTO `token` VALUES (453, 'anonymousUser', '2021-09-20 07:02:57', 'anonymousUser', '2021-09-20 07:02:57', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMjk4NTM3NiwiaWF0IjoxNjMyMTIxMzc2fQ.SdYskJpfeJ50hpLt02rUWoxOrC9Dud0dNgKNVWyuBLIyKMnzEKPh4R-z35rxtEPD8M5gEZ5Z2Srn9ipES-8iFA', '2021-09-30 07:02:56');
INSERT INTO `token` VALUES (454, 'anonymousUser', '2021-09-21 02:08:17', NULL, '2021-09-21 07:50:25', 'eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJjdXN0b21lciIsImV4cCI6MTYzMzA3NDYyNCwiaWF0IjoxNjMyMjEwNjI0fQ.QD7Q9SdLaZPxgw7uaRHK9Y87sNyfx9S0I48QrzNyDUwQ7aVlf238KTVqIcr1r-QCi1D8MYwBbDxORJcBG9fjiQ', '2021-10-01 07:50:24');

-- ----------------------------
-- Table structure for use_object
-- ----------------------------
DROP TABLE IF EXISTS `use_object`;
CREATE TABLE `use_object`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of use_object
-- ----------------------------
INSERT INTO `use_object` VALUES (1, NULL, NULL, NULL, NULL, 'BOY', 'Con trai');
INSERT INTO `use_object` VALUES (2, NULL, NULL, NULL, NULL, 'GIRL', 'Con gái');
INSERT INTO `use_object` VALUES (3, NULL, NULL, NULL, NULL, 'UNISEX', 'Unisex');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_date` datetime(0) NULL DEFAULT NULL,
  `modified_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `modified_date` datetime(0) NULL DEFAULT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, NULL, NULL, NULL, '2021-09-17 04:07:48', 'Huynh Gia Huy', 'nam', '123', 1, 'customer', '2 Đường 4, Khu dân cư Thăng Long, Phường Bình Trị Đông B\r\n, Quận Bình Tân, TPHCM', 'huynhgiahuy492@gmail.com', '0776425942');
INSERT INTO `user` VALUES (15, NULL, NULL, NULL, NULL, 'Hoàng Quốc Duy', 'nam', '123', 1, 'customer1', '2 Đường 4, Khu dân cư Thăng Long, Phường Bình Trị Đông B\r\n, Quận Bình Tân, TPHCM', 'hoangquocduy@gmail.com', '0903316526');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role`  (
  `user_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `FKa68196081fvovjhkek5m97n3y`(`role_id`) USING BTREE,
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user_role
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
