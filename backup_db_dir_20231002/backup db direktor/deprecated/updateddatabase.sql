/*
 Navicat Premium Data Transfer

 Source Server         : new
 Source Server Type    : MySQL
 Source Server Version : 100421
 Source Host           : localhost:3306
 Source Schema         : appdirektor7

 Target Server Type    : MySQL
 Target Server Version : 100421
 File Encoding         : 65001

 Date: 30/11/2022 11:43:02
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ana_integrantes
-- ----------------------------
DROP TABLE IF EXISTS `ana_integrantes`;
CREATE TABLE `ana_integrantes`  (
  `codProyecto` bigint NOT NULL,
  `codAnaRes` bigint NOT NULL,
  `codEstado` int NULL DEFAULT NULL,
  `dayFechaCreacion` datetime NULL DEFAULT NULL,
  `desUsuarioCreacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `codProyIntegrante` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ana_integrantes
-- ----------------------------
INSERT INTO `ana_integrantes` VALUES (98, 10, 1, '2022-11-23 22:38:24', '', 1);
INSERT INTO `ana_integrantes` VALUES (98, 10, 1, '2022-11-23 22:38:24', '', 2);
INSERT INTO `ana_integrantes` VALUES (107, 19, 1, '2022-11-28 17:54:20', '', 19);
INSERT INTO `ana_integrantes` VALUES (107, 19, 1, '2022-11-28 17:54:20', '', 20);

-- ----------------------------
-- Table structure for anares_actividad
-- ----------------------------
DROP TABLE IF EXISTS `anares_actividad`;
CREATE TABLE `anares_actividad`  (
  `codAnaResActividad` bigint NOT NULL,
  `desActividad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `desRestriccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `codTipoRestriccion` int NULL DEFAULT NULL,
  `dayFechaRequerida` datetime NULL DEFAULT NULL,
  `idUsuarioResponsable` bigint NULL DEFAULT NULL,
  `desAreaResponsable` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `codEstadoActividad` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `codUsuarioSolicitante` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `codAnaResFase` bigint NOT NULL,
  `codAnaResFrente` bigint NOT NULL,
  `codProyecto` bigint NOT NULL,
  `codAnaRes` bigint NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anares_actividad
-- ----------------------------

-- ----------------------------
-- Table structure for anares_analisisrestricciones
-- ----------------------------
DROP TABLE IF EXISTS `anares_analisisrestricciones`;
CREATE TABLE `anares_analisisrestricciones`  (
  `codProyecto` bigint NOT NULL,
  `codEstado` int NULL DEFAULT NULL,
  `dayFechaCreacion` datetime NULL DEFAULT NULL,
  `desUsuarioCreacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `indNoRetrasados` int NULL DEFAULT NULL,
  `indRetrasados` int NULL DEFAULT NULL,
  `codAnaRes` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`codAnaRes`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anares_analisisrestricciones
-- ----------------------------
INSERT INTO `anares_analisisrestricciones` VALUES (88, 1, '2022-11-21 13:23:39', 'John Doe, James Lilley,', 55, 40, 1);
INSERT INTO `anares_analisisrestricciones` VALUES (89, 1, '2022-11-21 13:34:41', 'john@j.com, james@j.com,', 55, 40, 2);
INSERT INTO `anares_analisisrestricciones` VALUES (91, 1, '2022-11-21 13:55:39', 'james@d.com', 55, 40, 3);
INSERT INTO `anares_analisisrestricciones` VALUES (92, 1, '2022-11-22 08:42:53', 'peter@peter.com', 55, 40, 4);
INSERT INTO `anares_analisisrestricciones` VALUES (93, 1, '2022-11-23 07:39:33', 'james@d.com', 55, 40, 5);
INSERT INTO `anares_analisisrestricciones` VALUES (97, 1, '2022-11-23 10:44:09', 'Daniel@gmail.com', 55, 40, 9);
INSERT INTO `anares_analisisrestricciones` VALUES (98, 1, '2022-11-23 22:38:24', 'Daniel@gmail.com', 55, 40, 10);
INSERT INTO `anares_analisisrestricciones` VALUES (99, 1, '2022-11-24 10:27:57', 'Daniel@gmail.com', 55, 40, 11);
INSERT INTO `anares_analisisrestricciones` VALUES (100, 1, '2022-11-24 10:31:03', 'Daniel@gmail.com', 55, 40, 12);
INSERT INTO `anares_analisisrestricciones` VALUES (101, 1, '2022-11-24 11:07:16', 'Daniel@gmail.com', 55, 40, 13);
INSERT INTO `anares_analisisrestricciones` VALUES (102, 1, '2022-11-24 12:08:31', 'Daniel@gmail.com', 55, 40, 14);
INSERT INTO `anares_analisisrestricciones` VALUES (103, 1, '2022-11-24 12:10:06', 'Daniel@gmail.com', 55, 40, 15);
INSERT INTO `anares_analisisrestricciones` VALUES (104, 1, '2022-11-24 12:14:04', 'Daniel@gmail.com', 55, 40, 16);
INSERT INTO `anares_analisisrestricciones` VALUES (105, 1, '2022-11-24 13:35:24', 'Daniel@gmail.com', 55, 40, 17);
INSERT INTO `anares_analisisrestricciones` VALUES (106, 1, '2022-11-24 13:37:49', 'Daniel@gmail.com', 55, 40, 18);
INSERT INTO `anares_analisisrestricciones` VALUES (107, 1, '2022-11-24 13:41:02', 'Daniel@gmail.com', 55, 40, 19);
INSERT INTO `anares_analisisrestricciones` VALUES (108, 1, '2022-11-24 14:26:11', 'Daniel@gmail.com', 55, 40, 20);
INSERT INTO `anares_analisisrestricciones` VALUES (109, 1, '2022-11-30 10:51:54', 'Daniel@gmail.com', 55, 40, 21);

-- ----------------------------
-- Table structure for anares_fase
-- ----------------------------
DROP TABLE IF EXISTS `anares_fase`;
CREATE TABLE `anares_fase`  (
  `codAnaResFase` bigint NOT NULL AUTO_INCREMENT,
  `desAnaResFase` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dayFechaCreacion` datetime NULL DEFAULT NULL,
  `desUsuarioCreacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `codAnaResFrente` bigint NOT NULL,
  `codProyecto` bigint NOT NULL,
  `codAnaRes` bigint NOT NULL,
  PRIMARY KEY (`codAnaResFase`) USING BTREE,
  UNIQUE INDEX `XPKAnaRes_Fase`(`codAnaResFase`, `codAnaResFrente`, `codProyecto`, `codAnaRes`) USING BTREE,
  INDEX `XIF1AnaRes_Fase`(`codAnaResFrente`, `codProyecto`, `codAnaRes`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anares_fase
-- ----------------------------
INSERT INTO `anares_fase` VALUES (1, 'Test Phase', '2022-11-29 08:12:53', NULL, 1, 107, 19);
INSERT INTO `anares_fase` VALUES (2, 'Phase Test', '2022-11-29 09:12:53', NULL, 1, 107, 19);
INSERT INTO `anares_fase` VALUES (3, 'second', '2022-11-29 10:41:21', '', 2, 107, 19);

-- ----------------------------
-- Table structure for anares_frente
-- ----------------------------
DROP TABLE IF EXISTS `anares_frente`;
CREATE TABLE `anares_frente`  (
  `codAnaResFrente` bigint NOT NULL AUTO_INCREMENT,
  `desAnaResFrente` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dayFechaCreacion` datetime NULL DEFAULT NULL,
  `desUsuarioCreacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `codProyecto` bigint NOT NULL,
  `codAnaRes` bigint NOT NULL,
  PRIMARY KEY (`codAnaResFrente`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of anares_frente
-- ----------------------------
INSERT INTO `anares_frente` VALUES (1, 'Test Front', '2022-11-29 08:12:53', '', 107, 19);
INSERT INTO `anares_frente` VALUES (2, 'Front TEST', '2022-11-29 09:08:33', '', 107, 19);

-- ----------------------------
-- Table structure for animals
-- ----------------------------
DROP TABLE IF EXISTS `animals`;
CREATE TABLE `animals`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of animals
-- ----------------------------

-- ----------------------------
-- Table structure for conf_estado
-- ----------------------------
DROP TABLE IF EXISTS `conf_estado`;
CREATE TABLE `conf_estado`  (
  `codEstado` int NOT NULL,
  `desEstado` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `desModule` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  UNIQUE INDEX `XPKConf_Estado`(`codEstado`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of conf_estado
-- ----------------------------

-- ----------------------------
-- Table structure for conf_ubigeo
-- ----------------------------
DROP TABLE IF EXISTS `conf_ubigeo`;
CREATE TABLE `conf_ubigeo`  (
  `codUbigeo` int NOT NULL,
  `desUbigeo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Departamento` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Provincia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `Distrito` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  UNIQUE INDEX `XPKConf_Ubigeo`(`codUbigeo`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of conf_ubigeo
-- ----------------------------

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------

-- ----------------------------
-- Table structure for other_notificaciones
-- ----------------------------
DROP TABLE IF EXISTS `other_notificaciones`;
CREATE TABLE `other_notificaciones`  (
  `codNotificacion` int NOT NULL,
  `desNombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `desDescripción` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `desPersonalizar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  UNIQUE INDEX `XPKother_Notificaciones`(`codNotificacion`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of other_notificaciones
-- ----------------------------

-- ----------------------------
-- Table structure for other_notificaciones_usuario
-- ----------------------------
DROP TABLE IF EXISTS `other_notificaciones_usuario`;
CREATE TABLE `other_notificaciones_usuario`  (
  `id` bigint NOT NULL,
  `codNotificacion` int NOT NULL,
  `codEstado` int NULL DEFAULT NULL,
  `dayFechaCreacion` datetime NULL DEFAULT NULL,
  `desUsuarioCreación` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  UNIQUE INDEX `XPKother_Notificaciones_Usuario`(`id`, `codNotificacion`) USING BTREE,
  INDEX `XIF1other_Notificaciones_Usuario`(`id`) USING BTREE,
  INDEX `XIF2other_Notificaciones_Usuario`(`codNotificacion`) USING BTREE,
  CONSTRAINT `other_notificaciones_usuario_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `other_notificaciones_usuario_ibfk_2` FOREIGN KEY (`codNotificacion`) REFERENCES `other_notificaciones` (`codNotificacion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of other_notificaciones_usuario
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token`) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type`, `tokenable_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
INSERT INTO `personal_access_tokens` VALUES (2, 'App\\Models\\User', 4, 'main', 'fad423794c19b2fcafa97ea7b3df90432ae38f84feb04d7876ae77e8c43749fd', '[\"*\"]', NULL, '2022-11-08 06:00:02', '2022-11-08 06:00:02');
INSERT INTO `personal_access_tokens` VALUES (3, 'App\\Models\\User', 4, 'main', '8b23b8515d0c16fa55307ada01558e8daa544f2cb148764486e7252fbcf40502', '[\"*\"]', NULL, '2022-11-08 06:00:25', '2022-11-08 06:00:25');
INSERT INTO `personal_access_tokens` VALUES (4, 'App\\Models\\User', 4, 'main', 'c7bf9c90bb85f93b443baf3ee8ead0f3da3de473fe798a3786ec450988c45b76', '[\"*\"]', NULL, '2022-11-08 16:38:39', '2022-11-08 16:38:39');
INSERT INTO `personal_access_tokens` VALUES (5, 'App\\Models\\User', 5, 'main', '0aa1e989c6969e6d10c6646cf74b3ab944df69d6152044c171a4d936288972a6', '[\"*\"]', NULL, '2022-11-10 19:18:15', '2022-11-10 19:18:15');
INSERT INTO `personal_access_tokens` VALUES (6, 'App\\Models\\User', 5, 'main', 'da842488d492df963f2820a0e4897de5a30e3d05b27d84150e4e1f83928e9133', '[\"*\"]', NULL, '2022-11-10 19:18:50', '2022-11-10 19:18:50');
INSERT INTO `personal_access_tokens` VALUES (7, 'App\\Models\\User', 5, 'main', '8e92ab3a7a4ad4da42c52fd6f1400095c016bfd9ec3bb302b18d363fda7bc889', '[\"*\"]', NULL, '2022-11-10 23:49:37', '2022-11-10 23:49:37');
INSERT INTO `personal_access_tokens` VALUES (8, 'App\\Models\\User', 5, 'main', '2a7a97c651cd5fb2fcf4d9c1dfd1d8d944a95193103303c141aac0982812dd91', '[\"*\"]', NULL, '2022-11-11 05:06:35', '2022-11-11 05:06:35');
INSERT INTO `personal_access_tokens` VALUES (9, 'App\\Models\\User', 5, 'main', 'c7d95e0a2148e561747b204d7154d1f40c44b17549aae17a8da6512c1903bdd9', '[\"*\"]', NULL, '2022-11-11 05:07:51', '2022-11-11 05:07:51');
INSERT INTO `personal_access_tokens` VALUES (10, 'App\\Models\\User', 5, 'main', '37d04b5f734555c1ac0da48ab605c44ed3a49aa5ec59c2cb18cf0087ec0dc768', '[\"*\"]', NULL, '2022-11-11 05:10:00', '2022-11-11 05:10:00');
INSERT INTO `personal_access_tokens` VALUES (11, 'App\\Models\\User', 5, 'main', '2f11262c47a6795de590094b52168449bf37ca353d13c68c5b3dbd70d2d8a671', '[\"*\"]', NULL, '2022-11-11 05:33:09', '2022-11-11 05:33:09');
INSERT INTO `personal_access_tokens` VALUES (12, 'App\\Models\\User', 5, 'main', '33f056e3e511f56ef8530326a2799d10b530b4273eaab0d593ea1a9e66bec7f4', '[\"*\"]', NULL, '2022-11-11 05:34:46', '2022-11-11 05:34:46');
INSERT INTO `personal_access_tokens` VALUES (13, 'App\\Models\\User', 5, 'main', '1d3e0128edeed25fe49c1b7f32234649909b225b54554749eb47e4c562bd5a9b', '[\"*\"]', NULL, '2022-11-11 05:39:32', '2022-11-11 05:39:32');
INSERT INTO `personal_access_tokens` VALUES (14, 'App\\Models\\User', 5, 'main', '4cab016e278c88a1e141cf1ad363d619f851475f4c1f2511c987bebc43970d41', '[\"*\"]', NULL, '2022-11-11 05:44:52', '2022-11-11 05:44:52');
INSERT INTO `personal_access_tokens` VALUES (15, 'App\\Models\\User', 5, 'main', 'a085b1189ee5434876835bc0e356830e26b446c54a442fec5b4f096b26f7756c', '[\"*\"]', NULL, '2022-11-11 13:20:13', '2022-11-11 13:20:13');
INSERT INTO `personal_access_tokens` VALUES (16, 'App\\Models\\User', 5, 'main', 'ec3da1d0dbbdfc1685ac78de7417e56226ba7f13df5cdd07b1de011d4f91fd58', '[\"*\"]', NULL, '2022-11-13 11:34:48', '2022-11-13 11:34:48');
INSERT INTO `personal_access_tokens` VALUES (17, 'App\\Models\\User', 6, 'main', 'c35d81587d6679cad0d462941e8b3d24f6057f4e7a1a539a0a2c664301d5a971', '[\"*\"]', NULL, '2022-11-15 04:22:22', '2022-11-15 04:22:22');
INSERT INTO `personal_access_tokens` VALUES (18, 'App\\Models\\User', 6, 'main', 'ce117f6577de5997021a35e2d05a8e9669bab2f744c97f435cec16968503bb04', '[\"*\"]', NULL, '2022-11-15 04:22:34', '2022-11-15 04:22:34');
INSERT INTO `personal_access_tokens` VALUES (19, 'App\\Models\\User', 7, 'main', '002d96e3164c3ace78cca5670d336dde247293a7771cd6c00c74256dcc84372e', '[\"*\"]', NULL, '2022-11-15 13:38:01', '2022-11-15 13:38:01');
INSERT INTO `personal_access_tokens` VALUES (20, 'App\\Models\\User', 7, 'main', 'c633a7156756adc12e54def5ddffdd27828e529de86e94b9b1806f575d386453', '[\"*\"]', NULL, '2022-11-15 13:38:16', '2022-11-15 13:38:16');
INSERT INTO `personal_access_tokens` VALUES (21, 'App\\Models\\User', 5, 'main', '066711ee3b2bc6ac0f388e03b56d3c8ce5e09ae6a81179bbce6afd86df179071', '[\"*\"]', NULL, '2022-11-17 00:03:26', '2022-11-17 00:03:26');
INSERT INTO `personal_access_tokens` VALUES (22, 'App\\Models\\User', 5, 'main', 'dbd3138ad438933d85d12b92d4afc21e95f30f04c2f97cfaba31e1f020b939e9', '[\"*\"]', NULL, '2022-11-17 16:40:30', '2022-11-17 16:40:30');
INSERT INTO `personal_access_tokens` VALUES (23, 'App\\Models\\User', 5, 'main', 'dc9f6f75376cdc7a6e887698f15c21ba08c5db28a52e327766b1e1273cc291c5', '[\"*\"]', NULL, '2022-11-18 01:49:24', '2022-11-18 01:49:24');
INSERT INTO `personal_access_tokens` VALUES (24, 'App\\Models\\User', 5, 'main', '4823fb622e5f1d691bac582faa0faf3043dd0a0554f4339d3010c18159a8deb6', '[\"*\"]', NULL, '2022-11-18 05:47:11', '2022-11-18 05:47:11');
INSERT INTO `personal_access_tokens` VALUES (25, 'App\\Models\\User', 6, 'main', 'f32a736b9f58fc341538407297f67141cf36bad581fcf9e19f45cef6676ec6bf', '[\"*\"]', NULL, '2022-11-18 05:47:49', '2022-11-18 05:47:49');
INSERT INTO `personal_access_tokens` VALUES (26, 'App\\Models\\User', 6, 'main', '5941cfbfc163e40db4a6b3f753aabad233ade3feaced5b2327bb6259c4773156', '[\"*\"]', NULL, '2022-11-18 05:49:06', '2022-11-18 05:49:06');
INSERT INTO `personal_access_tokens` VALUES (27, 'App\\Models\\User', 5, 'main', '355bcb5ced91a3e77b83b325968688a12fd7205dc70ddf62f969830417c0752a', '[\"*\"]', NULL, '2022-11-20 09:45:09', '2022-11-20 09:45:09');
INSERT INTO `personal_access_tokens` VALUES (28, 'App\\Models\\User', 6, 'main', '8193094a022a19d00c06774ec8ae0f089d5c0a57a2b5bd95fa62cc72764d5c36', '[\"*\"]', NULL, '2022-11-20 13:44:49', '2022-11-20 13:44:49');
INSERT INTO `personal_access_tokens` VALUES (29, 'App\\Models\\User', 6, 'main', 'def93eb74e74d92ea16f10fcaf0ebcc1496f753963fc17cdcd7442fee9323386', '[\"*\"]', NULL, '2022-11-21 15:25:03', '2022-11-21 15:25:03');
INSERT INTO `personal_access_tokens` VALUES (30, 'App\\Models\\User', 6, 'main', '93c913260bd3a10edefdd0d2cc3e1a8ba95f7bbccd8e868672013c4a8f12ccae', '[\"*\"]', NULL, '2022-11-22 09:16:17', '2022-11-22 09:16:17');
INSERT INTO `personal_access_tokens` VALUES (31, 'App\\Models\\User', 7, 'main', '1262a10de8a9ba54ff00c207791834275f013b4d05b5d9a1c46a789d87d142a3', '[\"*\"]', NULL, '2022-11-22 14:38:09', '2022-11-22 14:38:09');
INSERT INTO `personal_access_tokens` VALUES (32, 'App\\Models\\User', 5, 'main', '7b21d51c7031b2bcb03f59665900fc2b1c35f0b1a2103d152f684bf7bed4449c', '[\"*\"]', NULL, '2022-11-22 16:14:02', '2022-11-22 16:14:02');
INSERT INTO `personal_access_tokens` VALUES (33, 'App\\Models\\User', 6, 'main', '7c20ac3ce0b178133ac2666a10eacaa6a7bf0e35ea592e942abab05709eff183', '[\"*\"]', NULL, '2022-11-22 16:16:44', '2022-11-22 16:16:44');
INSERT INTO `personal_access_tokens` VALUES (34, 'App\\Models\\User', 6, 'main', '360f4e14c5fb61c24f3c017f8fd41ad4a2d460627b42feaf44fae3e9c470b5cc', '[\"*\"]', NULL, '2022-11-23 13:38:56', '2022-11-23 13:38:56');
INSERT INTO `personal_access_tokens` VALUES (35, 'App\\Models\\User', 8, 'main', 'b18722012bec8d32da5a01ed7599fec0c7bc2e63bd55e23d75c51c52b09a1d4f', '[\"*\"]', NULL, '2022-11-23 16:33:01', '2022-11-23 16:33:01');
INSERT INTO `personal_access_tokens` VALUES (36, 'App\\Models\\User', 8, 'main', 'b8deacf012d2afbea9729c6f42873d1af2e052e68172aa167a31a32314a22060', '[\"*\"]', NULL, '2022-11-23 16:33:19', '2022-11-23 16:33:19');
INSERT INTO `personal_access_tokens` VALUES (37, 'App\\Models\\User', 8, 'main', '17843f3bb8358b7cc59edf54484ed4cbe5236612885268e38961a326b4ca31bd', '[\"*\"]', '2022-11-23 20:27:21', '2022-11-23 20:23:23', '2022-11-23 20:27:21');
INSERT INTO `personal_access_tokens` VALUES (38, 'App\\Models\\User', 8, 'main', 'fbf99bf0f64788cc17d79c697feb4ed0d5f085a44ed05c7b2e2b2cf777d974f4', '[\"*\"]', NULL, '2022-11-23 20:45:02', '2022-11-23 20:45:02');
INSERT INTO `personal_access_tokens` VALUES (39, 'App\\Models\\User', 8, 'main', '50945625730f6994b69d25f168a94d3477107eb117587ab4d8820fb76772597e', '[\"*\"]', NULL, '2022-11-23 20:50:18', '2022-11-23 20:50:18');
INSERT INTO `personal_access_tokens` VALUES (40, 'App\\Models\\User', 8, 'main', '3565443e7ea98126f57ff7d5b76dc1c6e348af1173a0ba90c4124683d59d1511', '[\"*\"]', NULL, '2022-11-23 20:51:38', '2022-11-23 20:51:38');
INSERT INTO `personal_access_tokens` VALUES (41, 'App\\Models\\User', 8, 'main', 'e2c2dd0e587f95aa9d55c62a04e746345aed67ed34e3b6fef4cee0774e5d9e1f', '[\"*\"]', NULL, '2022-11-23 20:54:49', '2022-11-23 20:54:49');
INSERT INTO `personal_access_tokens` VALUES (42, 'App\\Models\\User', 8, 'main', '475b88901b90a2b31e61ef7b8bd8e5be2d5326912c7c6b396fc60a4c74142c62', '[\"*\"]', NULL, '2022-11-23 20:55:31', '2022-11-23 20:55:31');
INSERT INTO `personal_access_tokens` VALUES (43, 'App\\Models\\User', 8, 'main', '911c89bfdf0d83dab85e5f2e24584e77a7213334259be8291faa3047865d2f11', '[\"*\"]', NULL, '2022-11-23 20:55:58', '2022-11-23 20:55:58');
INSERT INTO `personal_access_tokens` VALUES (44, 'App\\Models\\User', 8, 'main', '79910f6bbdc548d92cbe2371bb6868f24ef5ed980adb3e66f3ddad06422d5a61', '[\"*\"]', NULL, '2022-11-23 20:56:53', '2022-11-23 20:56:53');
INSERT INTO `personal_access_tokens` VALUES (45, 'App\\Models\\User', 8, 'main', 'ef74dba917d7f74fee9587931fd2e9a1c249c6a4a54f6c4d05e336e66024b1ea', '[\"*\"]', NULL, '2022-11-23 21:05:40', '2022-11-23 21:05:40');
INSERT INTO `personal_access_tokens` VALUES (46, 'App\\Models\\User', 8, 'main', '858ee43fb1e289be220f0b7575c044ef125f6b6cb553176a9a1971c6f5f6ef76', '[\"*\"]', NULL, '2022-11-23 21:08:03', '2022-11-23 21:08:03');
INSERT INTO `personal_access_tokens` VALUES (47, 'App\\Models\\User', 8, 'main', 'b9e5ada0950bcb76c1ded852c0df0a8a9879463b207a95be589915f250a39402', '[\"*\"]', NULL, '2022-11-23 21:08:51', '2022-11-23 21:08:51');
INSERT INTO `personal_access_tokens` VALUES (48, 'App\\Models\\User', 8, 'main', '86103f8733fec3ea7506c2ee8850297d6c83a7b674566dc0a402f88e8b6838cf', '[\"*\"]', NULL, '2022-11-23 21:09:33', '2022-11-23 21:09:33');
INSERT INTO `personal_access_tokens` VALUES (49, 'App\\Models\\User', 8, 'main', '4fed75e11efeeee26ce2193beb991c38d56968d481368314752d8dd9921a0953', '[\"*\"]', NULL, '2022-11-23 21:09:49', '2022-11-23 21:09:49');
INSERT INTO `personal_access_tokens` VALUES (50, 'App\\Models\\User', 8, 'main', 'c9c0e0d4daa5f627e26c900067ef107bcaf51bf830303a6913316ede35e5b54c', '[\"*\"]', NULL, '2022-11-23 21:09:52', '2022-11-23 21:09:52');
INSERT INTO `personal_access_tokens` VALUES (51, 'App\\Models\\User', 8, 'main', 'd3b3dc80bccaaf768e131562ebb14b7dfcf9bcfbd1a1f9758775bcc8ec1a3284', '[\"*\"]', NULL, '2022-11-23 21:10:12', '2022-11-23 21:10:12');
INSERT INTO `personal_access_tokens` VALUES (52, 'App\\Models\\User', 8, 'main', 'f36a237cac578f7ae6ca36b3b5ad0cd50f7ece8ae982ff9e94981a53086a8e5a', '[\"*\"]', NULL, '2022-11-23 21:19:52', '2022-11-23 21:19:52');
INSERT INTO `personal_access_tokens` VALUES (53, 'App\\Models\\User', 8, 'main', 'b7ad94643e881a08d365ac3354f1bbaead37fe0809e9cbd3f924efba8294c16d', '[\"*\"]', NULL, '2022-11-23 21:21:06', '2022-11-23 21:21:06');
INSERT INTO `personal_access_tokens` VALUES (54, 'App\\Models\\User', 8, 'main', 'd1d33b481079b2367adcd077f0ea9cebc46047bf71b632231b8487cf73f1d417', '[\"*\"]', NULL, '2022-11-23 21:36:47', '2022-11-23 21:36:47');
INSERT INTO `personal_access_tokens` VALUES (55, 'App\\Models\\User', 8, 'main', 'f0ae1002035411f563a739b2f44a65472567d0b3b8390efb812bcab66a5914a8', '[\"*\"]', NULL, '2022-11-24 04:37:24', '2022-11-24 04:37:24');
INSERT INTO `personal_access_tokens` VALUES (56, 'App\\Models\\User', 8, 'main', 'c4731f02b9370fcda95b2f00eb15530316d46540768a4bfc04f1eb0ea24d904b', '[\"*\"]', NULL, '2022-11-24 13:23:36', '2022-11-24 13:23:36');
INSERT INTO `personal_access_tokens` VALUES (57, 'App\\Models\\User', 8, 'main', 'a465a694e4c6447798353b2a6de54dfc9d96a9b05417beeaf4bdf32c72deeb28', '[\"*\"]', NULL, '2022-11-24 16:15:46', '2022-11-24 16:15:46');
INSERT INTO `personal_access_tokens` VALUES (58, 'App\\Models\\User', 8, 'main', 'f65f0311e2e2872f9bee90c601e57881c870bc7bc5ef52efa59b6a7a22cd835a', '[\"*\"]', NULL, '2022-11-24 19:33:42', '2022-11-24 19:33:42');
INSERT INTO `personal_access_tokens` VALUES (59, 'App\\Models\\User', 8, 'main', '691f32db8d5961f94b70ed3982037c0e5353bcdb333eaf05d6ab55f2b1a44289', '[\"*\"]', NULL, '2022-11-28 16:35:31', '2022-11-28 16:35:31');
INSERT INTO `personal_access_tokens` VALUES (60, 'App\\Models\\User', 8, 'main', 'f5272698a019d122e2a8e1978e2f806f40611bdedd9b76fe828ff0649fe7d1d3', '[\"*\"]', NULL, '2022-11-29 13:12:18', '2022-11-29 13:12:18');
INSERT INTO `personal_access_tokens` VALUES (61, 'App\\Models\\User', 8, 'main', '2e03998469315e6fe17dcf9f584c20349bf002d2d7632e101c6ca7be3796f686', '[\"*\"]', NULL, '2022-11-29 13:15:21', '2022-11-29 13:15:21');
INSERT INTO `personal_access_tokens` VALUES (62, 'App\\Models\\User', 8, 'main', '7484c83a92b479cd0f05edfdbb698a412d3783a4466529edb7258e83375b87f1', '[\"*\"]', NULL, '2022-11-29 13:16:27', '2022-11-29 13:16:27');
INSERT INTO `personal_access_tokens` VALUES (63, 'App\\Models\\User', 8, 'main', '4d1b2d8fae9a5a0e553319582b372b547de32a2ead615e65760f40759c8ae16f', '[\"*\"]', NULL, '2022-11-29 13:18:52', '2022-11-29 13:18:52');
INSERT INTO `personal_access_tokens` VALUES (64, 'App\\Models\\User', 8, 'main', '82e3f2f5ba3f8bc4e433bb36e775826feb1a02e913ef3c230a3ba2b645640339', '[\"*\"]', NULL, '2022-11-29 13:26:11', '2022-11-29 13:26:11');
INSERT INTO `personal_access_tokens` VALUES (65, 'App\\Models\\User', 8, 'main', '01457f4f4d05dc104ed3c581615822a192e83fbe500cc5868651c58892c3aaa6', '[\"*\"]', NULL, '2022-11-29 13:27:14', '2022-11-29 13:27:14');
INSERT INTO `personal_access_tokens` VALUES (66, 'App\\Models\\User', 8, 'main', '4e4bf5e09363b4ad9d88d1e54abc2d32c4cde6441df350f4a6547ff78ae46934', '[\"*\"]', NULL, '2022-11-29 13:28:29', '2022-11-29 13:28:29');
INSERT INTO `personal_access_tokens` VALUES (67, 'App\\Models\\User', 8, 'main', 'ffc7ed1f829c1e1845cab8499d6fad0189a933dd84f932441e131eb64dfb3ff7', '[\"*\"]', NULL, '2022-11-29 13:28:33', '2022-11-29 13:28:33');
INSERT INTO `personal_access_tokens` VALUES (68, 'App\\Models\\User', 8, 'main', '31120f2219d960882283db6f8cce6ca758dbed4fcc66872f053cbac2afb14993', '[\"*\"]', NULL, '2022-11-29 13:29:07', '2022-11-29 13:29:07');
INSERT INTO `personal_access_tokens` VALUES (69, 'App\\Models\\User', 8, 'main', 'aa3c83f058fad39b4220c6617c1d67427bc75029c7dba5d6e1cc08b3730d3804', '[\"*\"]', NULL, '2022-11-29 13:32:59', '2022-11-29 13:32:59');
INSERT INTO `personal_access_tokens` VALUES (70, 'App\\Models\\User', 8, 'main', '65ccede432c55f784758d356aca64ffaadc5497a76e8cb754f0ddc3ea3f37325', '[\"*\"]', NULL, '2022-11-29 13:33:51', '2022-11-29 13:33:51');
INSERT INTO `personal_access_tokens` VALUES (71, 'App\\Models\\User', 8, 'main', '43d5275e8bbcb5b36cc05c6bc65e59cbe574c23b27de94e5cbef2efc0d6f13c9', '[\"*\"]', NULL, '2022-11-29 13:36:46', '2022-11-29 13:36:46');

-- ----------------------------
-- Table structure for proy_integrantes
-- ----------------------------
DROP TABLE IF EXISTS `proy_integrantes`;
CREATE TABLE `proy_integrantes`  (
  `codProyIntegrante` bigint NOT NULL AUTO_INCREMENT,
  `codProyecto` bigint NOT NULL,
  `id` bigint NOT NULL,
  `codEstadoInvitacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `desArea` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dayFechaInvitacion` datetime NULL DEFAULT NULL,
  `dayFechaInvitacionConfirmacion` datetime NULL DEFAULT NULL,
  `codRolIntegrante` int NULL DEFAULT NULL,
  `desCorreo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`codProyIntegrante`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of proy_integrantes
-- ----------------------------
INSERT INTO `proy_integrantes` VALUES (1, 98, 8, '1', 'Peru', '2022-11-15 07:43:58', NULL, 1, 'jack@j.com');
INSERT INTO `proy_integrantes` VALUES (2, 98, 8, '1', 'Peru', '2022-11-15 07:44:02', NULL, 2, 'David@d.com');
INSERT INTO `proy_integrantes` VALUES (3, 99, 8, '1', 'editor', '2022-11-24 10:27:57', NULL, 1, 'asdgasdg');
INSERT INTO `proy_integrantes` VALUES (4, 99, 8, '1', 'visualizer', '2022-11-24 10:27:57', NULL, 1, 'zxcvzxcvzxcv');
INSERT INTO `proy_integrantes` VALUES (5, 100, 8, '1', 'peru', '2022-11-24 10:31:03', NULL, 1, 'asdfasdf');
INSERT INTO `proy_integrantes` VALUES (6, 100, 8, '1', 'ua', '2022-11-24 10:31:03', NULL, 1, 'zxcvzxcv');
INSERT INTO `proy_integrantes` VALUES (7, 101, 8, '1', 'Peru', '2022-11-24 11:07:16', NULL, 1, 'fasdgasdg');
INSERT INTO `proy_integrantes` VALUES (8, 101, 8, '1', 'Ukraine', '2022-11-24 11:07:16', NULL, 1, 'zxcvzxcv');
INSERT INTO `proy_integrantes` VALUES (9, 102, 8, '1', 'Peru', '2022-11-24 12:08:31', NULL, 1, 'john@j.com');
INSERT INTO `proy_integrantes` VALUES (10, 102, 8, '1', 'Ukraine', '2022-11-24 12:08:31', NULL, 1, 'david@d.com');
INSERT INTO `proy_integrantes` VALUES (11, 103, 8, '1', 'Peru', '2022-11-24 12:10:06', NULL, 1, 'asfasdfasd');
INSERT INTO `proy_integrantes` VALUES (12, 103, 8, '1', 'Ukraine', '2022-11-24 12:10:06', NULL, 1, 'zxcbzxcb');
INSERT INTO `proy_integrantes` VALUES (13, 104, 8, '1', 'Peru', '2022-11-24 12:14:04', NULL, 1, '11qweqweqw');
INSERT INTO `proy_integrantes` VALUES (14, 104, 8, '1', 'Ukraine', '2022-11-24 12:14:04', NULL, 1, 'asdasdsadas');
INSERT INTO `proy_integrantes` VALUES (15, 105, 8, '1', 'Peru', '2022-11-24 13:35:24', NULL, 1, 'adsfasdfasdf');
INSERT INTO `proy_integrantes` VALUES (16, 105, 8, '1', 'Ukraine', '2022-11-24 13:35:24', NULL, 1, 'xczvxcvzxcv');
INSERT INTO `proy_integrantes` VALUES (17, 106, 8, '1', 'Peru', '2022-11-24 13:37:49', NULL, 1, 'asdfasdf');
INSERT INTO `proy_integrantes` VALUES (18, 106, 8, '1', 'Ukraine', '2022-11-24 13:37:49', NULL, 1, 'azxvzxcv');
INSERT INTO `proy_integrantes` VALUES (19, 107, 8, '1', 'Peru', '2022-11-24 13:41:02', NULL, 1, 'zxcvzxcv');
INSERT INTO `proy_integrantes` VALUES (20, 107, 8, '1', 'Ukraine', '2022-11-24 13:41:02', NULL, 1, 'asfasdf');
INSERT INTO `proy_integrantes` VALUES (21, 108, 8, '1', 'werqw', '2022-11-24 14:26:11', NULL, 1, 'asdfasdf');
INSERT INTO `proy_integrantes` VALUES (22, 108, 8, '1', 'asdfasdf', '2022-11-24 14:26:11', NULL, 1, 'zxcvzxcv');
INSERT INTO `proy_integrantes` VALUES (23, 108, 8, '1', 'zxvasdfasd', '2022-11-24 14:26:11', NULL, 1, 'xcvzxv');
INSERT INTO `proy_integrantes` VALUES (24, 109, 8, '1', 'sfsdgdf', '2022-11-30 10:51:54', NULL, 1, '56858');
INSERT INTO `proy_integrantes` VALUES (25, 109, 8, '1', 'd3y5hth', '2022-11-30 10:51:54', NULL, 1, 'w346w');

-- ----------------------------
-- Table structure for proy_proyecto
-- ----------------------------
DROP TABLE IF EXISTS `proy_proyecto`;
CREATE TABLE `proy_proyecto`  (
  `codProyecto` bigint NOT NULL AUTO_INCREMENT,
  `desNombreProyecto` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `codEstado` int NULL DEFAULT NULL,
  `id` bigint NOT NULL,
  `desEmpresa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `numPlazo` int NULL DEFAULT NULL,
  `numAreaTechado` decimal(25, 2) NULL DEFAULT NULL,
  `desTipoProyecto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `codUbigeo` int NULL DEFAULT NULL,
  `dayFechaInicio` datetime NULL DEFAULT NULL,
  `numMontoReferencial` decimal(25, 2) NULL DEFAULT NULL,
  `numAreaTechada` decimal(25, 2) NULL DEFAULT NULL,
  `numAreaConstruida` decimal(25, 2) NULL DEFAULT NULL,
  `desPais` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `desDireccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dayFechaCreacion` datetime NULL DEFAULT NULL,
  `desUsuarioCreacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  UNIQUE INDEX `XPKProy_Proyecto`(`codProyecto`) USING BTREE,
  INDEX `XIF1Proy_Proyecto`(`id`) USING BTREE,
  INDEX `XIF2Proy_Proyecto`(`codUbigeo`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of proy_proyecto
-- ----------------------------
INSERT INTO `proy_proyecto` VALUES (1, '2341', 1, 4, '1234', 1235, 1245.00, '1234', 452, NULL, 356234.00, 2346.00, 3456.00, NULL, '3456', '2022-11-08 15:07:29', NULL);
INSERT INTO `proy_proyecto` VALUES (8, 'RES', 1, 2, 'R', 2, 2.00, '2', 2, NULL, 2.00, 2.00, 2.00, NULL, '2', '2022-11-04 23:37:10', NULL);
INSERT INTO `proy_proyecto` VALUES (9, 'UUUU', 1, 20, 'UU', 20, 20.00, '20', 20, NULL, 20.00, 20.00, 20.00, NULL, '20', '2022-11-04 23:45:23', NULL);
INSERT INTO `proy_proyecto` VALUES (11, 'REST', 1, 20, 'FE', 20, 20.00, 'RES', 20, NULL, 20.00, 202.00, 20.00, NULL, '20', '2022-11-05 05:51:36', NULL);
INSERT INTO `proy_proyecto` VALUES (12, 'Test Project', 1, 30, 'Test Com', 30, 20.00, '20', 20, NULL, 400.00, 20.00, 20.00, NULL, '20', '2022-11-05 08:19:50', NULL);
INSERT INTO `proy_proyecto` VALUES (13, 'New Project', 1, 30, 'New Com', 30, 20.00, '30', 20, NULL, 30.00, 20.00, 30.00, NULL, '20', '2022-11-05 08:23:34', NULL);
INSERT INTO `proy_proyecto` VALUES (14, 'Ressss', 1, 20, 'sss', 20, 20.00, 'Res', 20, NULL, 2.00, 0.00, 20.00, NULL, '20', '2022-11-05 10:03:39', NULL);
INSERT INTO `proy_proyecto` VALUES (15, 'GJE', 1, 20, 'Gej', 20, 20.00, '20', 20, NULL, 20.00, 20.00, 20.00, NULL, '20', '2022-11-05 10:04:43', NULL);
INSERT INTO `proy_proyecto` VALUES (16, 'Re', 1, 20, 'Re', 20, 20.00, '20', 20, NULL, 20.00, 20.00, 20.00, NULL, '20', '2022-11-05 10:11:28', NULL);
INSERT INTO `proy_proyecto` VALUES (17, 'Re', 1, 20, 'Re', 20, 20.00, '20', 20, NULL, 20.00, 20.00, 20.00, NULL, '20', '2022-11-05 10:12:21', NULL);
INSERT INTO `proy_proyecto` VALUES (18, '222', 1, 2, '2', 2, 2.00, '2', 2, NULL, 2.00, 2.00, 2.00, NULL, '2', '2022-11-05 10:13:17', NULL);
INSERT INTO `proy_proyecto` VALUES (75, 'asdfasdf', 1, 5, 'zxcvzxcv', 20, 7.00, '7', 7, NULL, 7.00, 7.00, 7.00, NULL, '7', '2022-11-14 12:05:09', 'asdfasdf,');
INSERT INTO `proy_proyecto` VALUES (76, 'qweq', 1, 5, 'qwerq', 7, 7.00, '7', 7, NULL, 7.00, 77.00, 7.00, NULL, '7', '2022-11-14 12:08:06', 'sdf,');
INSERT INTO `proy_proyecto` VALUES (77, 'asdg', 1, 5, 'wertwe', 7, 7.00, '7', 7, NULL, 7.00, 7.00, 7.00, NULL, '7', '2022-11-14 12:12:07', 'asdgasg,');
INSERT INTO `proy_proyecto` VALUES (78, 'asdfasdf', 1, 5, 'wrqwer', 7, 7.00, '7', 7, NULL, 7.00, 7.00, 7.00, NULL, '7', '2022-11-14 12:13:46', 'peter@p.com, vector@v.com,');
INSERT INTO `proy_proyecto` VALUES (79, 'New Project', 1, 5, 'New Company', 100, 100.00, '100', 100, NULL, 100.00, 100.00, 100.00, NULL, '100', '2022-11-14 12:19:00', 'Peter, David, James,');
INSERT INTO `proy_proyecto` VALUES (80, 'New Project NEWNEW', 1, 6, 'New Company', 10, 10.00, 'Abierto', 10, '2022-11-20 10:23:25', 10.00, 10.00, 10.00, NULL, '10', '2022-11-20 20:43:07', 'Peter, David, James,');
INSERT INTO `proy_proyecto` VALUES (82, 'new', 1, 6, 'NEW', 7, 7.00, 'Abierto', 7, NULL, 7.00, 7.00, 7.00, 'Peru', '7', '2022-11-18 04:01:14', 'asdfasdf, zxcvzxcv,');
INSERT INTO `proy_proyecto` VALUES (83, 'New Laravel + Vue Project', 1, 6, 'Client Peru Diego', 500, 50.00, 'Cerrado', 75, '2022-11-20 10:23:25', 70.00, 70.00, 70.00, 'Peru', 'newnewnew', '2022-11-18 15:46:28', 'peter@p.com, vector@v.com, james@j.com, jack@j.com, new@n.com,');
INSERT INTO `proy_proyecto` VALUES (85, 'Des Project', 1, 6, 'em', 70, 70.00, 'Cerrado', 70, '2022-11-20 10:23:25', 70.00, 70.00, 70.00, NULL, '70', '2022-11-18 12:13:53', 'james@j.com, alpha@a.com, top@t.com,');
INSERT INTO `proy_proyecto` VALUES (88, 'New Pro new', 1, 6, 'new co', 70, 70.00, 'Abierto', 70, '2022-11-20 10:23:25', 70.00, 70.00, 70.00, 'Peru', 'ABC', '2022-11-21 13:23:39', 'John Doe, James Lilley,');
INSERT INTO `proy_proyecto` VALUES (89, 'PRoject New', 1, 6, 'Com new', 77, 77.00, 'Abierto', 77, '2022-11-20 10:23:25', 77.00, 77.00, 77.00, 'Peru', 'DDD', '2022-11-21 13:34:41', 'john@j.com, james@j.com,');
INSERT INTO `proy_proyecto` VALUES (91, 'MDmDMDM', 1, 6, 'md', 70, 70.00, 'Abierto', 70, '2022-11-20 10:23:25', 70.00, 70.00, 70.00, 'Peru', 'QQWWW', '2022-11-21 13:55:39', 'John, Liely,');
INSERT INTO `proy_proyecto` VALUES (92, 'New Project Laravel+Vue', 1, 7, 'New Company', 70, 70.00, 'Abierto', 70, '2022-11-20 10:23:25', 70.00, 70.00, 70.00, 'Peru', 'Peru', '2022-11-22 08:47:50', 'James@james.com, Peter@peter.com, Diego@diego.com,');
INSERT INTO `proy_proyecto` VALUES (93, 'asdfasdf', 1, 6, 'asdasdf', 70, 70.00, '70', 70, '2022-11-20 10:23:25', 70.00, 70.00, 70.00, 'Peru', '70', '2022-11-23 07:39:33', 'asdfasdf, zxcvzxcv,');
INSERT INTO `proy_proyecto` VALUES (106, '77', 1, 8, '7', 7, 7.00, '7', 7, '2022-11-20 10:23:25', 7.00, 7.00, 7.00, 'Peru', '7', '2022-11-24 13:37:49', 'asdfasdf, azxvzxcv,');
INSERT INTO `proy_proyecto` VALUES (107, 'asdgasdg', 1, 8, 'asdfasd', 7, 7.00, '7', 7, '2022-11-20 10:23:25', 7.00, 7.00, 7.00, 'Peru', '7', '2022-11-28 17:54:20', 'zxcvzxcv, asfasdf,');
INSERT INTO `proy_proyecto` VALUES (108, '70', 1, 8, '70', 7, 7.00, '7', 7, '2022-11-20 10:23:25', 7.00, 7.00, 7.00, 'Peru', '77', '2022-11-24 14:26:11', 'asdfasdf, zxcvzxcv, xcvzxv,');
INSERT INTO `proy_proyecto` VALUES (109, 'qwer', 1, 8, 'q', 7, 7.00, '7', 7, '2022-11-20 10:23:25', 7.00, 7.00, 7.00, 'Peru', '7', '2022-11-30 10:51:54', '56858, w346w,');

-- ----------------------------
-- Table structure for proy_proyectoreportes
-- ----------------------------
DROP TABLE IF EXISTS `proy_proyectoreportes`;
CREATE TABLE `proy_proyectoreportes`  (
  `codUtilReportes` int NOT NULL,
  `codProyecto` bigint NOT NULL,
  `flagReporteMasivo` int NULL DEFAULT NULL,
  `codTipoFrecuencia` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dayFechaCreacion` datetime NULL DEFAULT NULL,
  `desUsuarioCreacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `desCorreoEnvios` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `codfrecuenciaenvioreporte` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of proy_proyectoreportes
-- ----------------------------
INSERT INTO `proy_proyectoreportes` VALUES (1, 63, 1, 'LV', '2022-11-14 11:49:09', NULL, 'sky@sky.com, dream@dream.com', NULL);
INSERT INTO `proy_proyectoreportes` VALUES (2, 71, 1, 'LV', '2022-11-14 11:52:19', '', 'sdfasdf,', 1);
INSERT INTO `proy_proyectoreportes` VALUES (3, 72, 1, 'LV', '2022-11-14 11:56:38', '', 'asdfasdf,', 2);
INSERT INTO `proy_proyectoreportes` VALUES (4, 73, 1, 'LV', '2022-11-14 11:57:58', '', 'asdfasdf,', 1);
INSERT INTO `proy_proyectoreportes` VALUES (5, 74, 1, 'LV', '2022-11-14 12:01:09', '', 'oopop,', 1);
INSERT INTO `proy_proyectoreportes` VALUES (6, 74, 1, 'LV', '2022-11-14 12:01:09', '', 'oopop, xzcZxc,', 2);
INSERT INTO `proy_proyectoreportes` VALUES (7, 75, 1, 'LV', '2022-11-14 12:05:09', '', 'asdfasdf,', 1);
INSERT INTO `proy_proyectoreportes` VALUES (8, 76, 1, 'LV', '2022-11-14 12:08:06', '', 'sdf,', 2);
INSERT INTO `proy_proyectoreportes` VALUES (9, 77, 1, 'LV', '2022-11-14 12:12:07', '', 'asdgasg,', 2);
INSERT INTO `proy_proyectoreportes` VALUES (10, 78, 1, 'LV', '2022-11-14 12:13:46', '', 'zxcv,', 1);
INSERT INTO `proy_proyectoreportes` VALUES (11, 78, 1, 'LV', '2022-11-14 12:13:46', '', 'zxcv, asdzxcv,', 2);
INSERT INTO `proy_proyectoreportes` VALUES (12, 79, 1, 'LV', '2022-11-14 12:19:00', '', 'peter@p.com,', 2);
INSERT INTO `proy_proyectoreportes` VALUES (13, 79, 1, 'LV', '2022-11-14 12:19:00', '', 'peter@p.com, vector@v.com,', 3);
INSERT INTO `proy_proyectoreportes` VALUES (14, 80, 1, 'LV', '2022-11-14 22:33:48', '', 'Peter, David, James,', 1);
INSERT INTO `proy_proyectoreportes` VALUES (15, 80, 0, 'LV', '2022-11-14 22:33:48', '', 'Peter,', 2);
INSERT INTO `proy_proyectoreportes` VALUES (16, 82, 1, 'LV', '2022-11-18 04:01:14', '', 'asdfasdf, zxcvzxcv,', 1);
INSERT INTO `proy_proyectoreportes` VALUES (17, 85, 1, 'LV', '2022-11-18 12:13:53', '', 'james@j.com, alpha@a.com, top@t.com,', 1);
INSERT INTO `proy_proyectoreportes` VALUES (18, 85, 0, 'LV', '2022-11-18 12:13:53', '', 'james@j.com, alpha@a.com, top@t.com,', 3);
INSERT INTO `proy_proyectoreportes` VALUES (19, 88, 1, 'LV', '2022-11-21 13:23:39', '', 'John Doe, James Lilley,', 1);
INSERT INTO `proy_proyectoreportes` VALUES (20, 88, 0, 'LV', '2022-11-21 13:23:39', '', 'John Doe, James Lilley,', 3);
INSERT INTO `proy_proyectoreportes` VALUES (21, 89, 1, 'LV', '2022-11-21 13:34:41', '', 'john@j.com, james@j.com,', 1);
INSERT INTO `proy_proyectoreportes` VALUES (22, 89, 0, 'LV', '2022-11-21 13:34:41', '', 'john@j.com,', 2);
INSERT INTO `proy_proyectoreportes` VALUES (23, 91, 1, 'LS', '2022-11-21 13:55:39', '', 'John, Liely,', 2);
INSERT INTO `proy_proyectoreportes` VALUES (24, 92, 1, 'LV', '2022-11-22 08:42:53', '', 'James@james.com, Peter@peter.com,', 1);
INSERT INTO `proy_proyectoreportes` VALUES (25, 92, 0, 'LV', '2022-11-22 08:42:53', '', 'James@james.com, Peter@peter.com,', 2);
INSERT INTO `proy_proyectoreportes` VALUES (38, 107, 1, 'LV', '2022-11-24 13:41:02', '', '', 1);
INSERT INTO `proy_proyectoreportes` VALUES (39, 107, 0, 'LV', '2022-11-24 13:41:02', '', 'zxcvzxcv', 2);
INSERT INTO `proy_proyectoreportes` VALUES (39, 107, 0, 'LV', '2022-11-24 13:41:02', '', 'asfasdf', 3);
INSERT INTO `proy_proyectoreportes` VALUES (40, 108, 1, 'LV', '2022-11-24 14:26:11', '', '', 1);
INSERT INTO `proy_proyectoreportes` VALUES (41, 109, 1, 'LV', '2022-11-30 10:51:54', '', '', 1);

-- ----------------------------
-- Table structure for proy_rolintegrante
-- ----------------------------
DROP TABLE IF EXISTS `proy_rolintegrante`;
CREATE TABLE `proy_rolintegrante`  (
  `codRolIntegrante` int NOT NULL,
  `desRolIntegrante` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  UNIQUE INDEX `XPKProy_RolIntegrante`(`codRolIntegrante`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of proy_rolintegrante
-- ----------------------------
INSERT INTO `proy_rolintegrante` VALUES (1, 'Editor');
INSERT INTO `proy_rolintegrante` VALUES (2, 'Visualizor');

-- ----------------------------
-- Table structure for sec_cargo
-- ----------------------------
DROP TABLE IF EXISTS `sec_cargo`;
CREATE TABLE `sec_cargo`  (
  `codCargo` int NOT NULL,
  `nameCargo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  UNIQUE INDEX `XPKSec_Cargo`(`codCargo`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sec_cargo
-- ----------------------------

-- ----------------------------
-- Table structure for sec_membresia
-- ----------------------------
DROP TABLE IF EXISTS `sec_membresia`;
CREATE TABLE `sec_membresia`  (
  `codMembresia` bigint NOT NULL,
  `desMembresia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `canDiasPrueba` int NULL DEFAULT NULL,
  `desMonto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `canProyectos` int NULL DEFAULT NULL,
  `desFrecuencia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  UNIQUE INDEX `XPKSec_Membresia`(`codMembresia`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sec_membresia
-- ----------------------------

-- ----------------------------
-- Table structure for sec_membresiausuario
-- ----------------------------
DROP TABLE IF EXISTS `sec_membresiausuario`;
CREATE TABLE `sec_membresiausuario`  (
  `codMembresiaUsuario` bigint NOT NULL,
  `id` bigint NOT NULL,
  `codMembresia` bigint NOT NULL,
  `dayFechaInicio` datetime NULL DEFAULT NULL,
  `dayFechaFin` datetime NULL DEFAULT NULL,
  `codEstado` int NULL DEFAULT NULL,
  `des_PagoVerificado` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  UNIQUE INDEX `XPKSec_MembresiaUsuario`(`codMembresiaUsuario`, `id`, `codMembresia`) USING BTREE,
  INDEX `XIF1Sec_MembresiaUsuario`(`id`) USING BTREE,
  INDEX `XIF2Sec_MembresiaUsuario`(`codMembresia`) USING BTREE,
  CONSTRAINT `sec_membresiausuario_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sec_membresiausuario_ibfk_2` FOREIGN KEY (`codMembresia`) REFERENCES `sec_membresia` (`codMembresia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sec_membresiausuario
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `celular` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `lastname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nombreempresa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `codCargo` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `XPKusersidunique`(`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE,
  UNIQUE INDEX `XPKuseremailunique`(`email`) USING BTREE,
  INDEX `XIF1users`(`codCargo`) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`codCargo`) REFERENCES `sec_cargo` (`codCargo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (4, 'AB', '1234567890', 'CD', 'Free', 'abcd@abcd.com', NULL, '$2y$10$fYcUrydJqze3tPW9b37u7OTpjcHRJQvUXfjXYMVMEEBaN9DJV/1NO', NULL, '2022-11-08 06:00:02', '2022-11-08 06:00:02', NULL);
INSERT INTO `users` VALUES (5, 'peter', '123123123', 'peter', 'free', 'peter@p.com', NULL, '$2y$10$GueBt.76Dks1GaW.WNGlSuiBMSJTR.9OKn9t6bT6w0ihyg5.hcXYq', NULL, '2022-11-10 19:18:14', '2022-11-10 19:18:14', NULL);
INSERT INTO `users` VALUES (6, 'James', '1234567890', 'David', 'Free', 'james@d.com', NULL, '$2y$10$ffdn5MwekjzF3QM8jQATlefu4/TjY0/GdSPIbrCbk0.Y3BDLYd5Yu', NULL, '2022-11-15 04:22:22', '2022-11-15 04:22:22', NULL);
INSERT INTO `users` VALUES (7, 'Peter', '1231231231', 'Fawzy', 'Free', 'peter@peter.com', NULL, '$2y$10$YixvPeyUEGgbD1Nukz6MM.KuvlLUSMzYyGBF6OSWlcIoS6.G2e.iy', NULL, '2022-11-15 13:38:00', '2022-11-15 13:38:00', NULL);
INSERT INTO `users` VALUES (8, 'Daniel Johnson', '1234567890', 'Daniel', 'Free', 'Daniel@gmail.com', NULL, '$2y$10$8s5xke.qjVoqTrdhdyZgne6mlRNGCPGZ7fR5npayZlWeyZjR6a0Jy', NULL, '2022-11-23 16:33:01', '2022-11-23 16:33:01', NULL);

-- ----------------------------
-- Table structure for util_reportes
-- ----------------------------
DROP TABLE IF EXISTS `util_reportes`;
CREATE TABLE `util_reportes`  (
  `codUtilReportes` int NOT NULL AUTO_INCREMENT,
  `desUtilReportes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `desDirReporte` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`codUtilReportes`) USING BTREE,
  UNIQUE INDEX `XPKUtil_Reportes`(`codUtilReportes`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of util_reportes
-- ----------------------------
INSERT INTO `util_reportes` VALUES (1, 'Reporte de análisis de restricciones', NULL);
INSERT INTO `util_reportes` VALUES (5, 'Reporte de análisis de restricciones', NULL);
INSERT INTO `util_reportes` VALUES (10, 'Reporte de análisis de restricciones', NULL);
INSERT INTO `util_reportes` VALUES (11, 'Reporte de avance gráfico', NULL);
INSERT INTO `util_reportes` VALUES (12, 'Reporte de análisis de restricciones', NULL);
INSERT INTO `util_reportes` VALUES (13, 'Reporte de avance gráfico', NULL);
INSERT INTO `util_reportes` VALUES (14, 'Reporte de análisis de restricciones', NULL);
INSERT INTO `util_reportes` VALUES (15, 'Reporte de avance gráfico', NULL);
INSERT INTO `util_reportes` VALUES (16, 'Reporte de análisis de restricciones', NULL);
INSERT INTO `util_reportes` VALUES (17, 'Reporte de análisis de restricciones', NULL);
INSERT INTO `util_reportes` VALUES (18, 'Reporte de avance gráfico', NULL);
INSERT INTO `util_reportes` VALUES (19, 'Reporte de análisis de restricciones', NULL);
INSERT INTO `util_reportes` VALUES (36, 'Reporte de análisis de restricciones', NULL);
INSERT INTO `util_reportes` VALUES (37, 'Reporte de análisis de restricciones', NULL);
INSERT INTO `util_reportes` VALUES (38, 'Reporte de análisis de restricciones', NULL);
INSERT INTO `util_reportes` VALUES (39, 'Reporte de avance gráfico', NULL);
INSERT INTO `util_reportes` VALUES (40, 'Reporte de análisis de restricciones', NULL);
INSERT INTO `util_reportes` VALUES (41, 'Reporte de análisis de restricciones', NULL);

SET FOREIGN_KEY_CHECKS = 1;
