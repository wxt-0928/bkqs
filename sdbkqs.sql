/*
 Navicat Premium Data Transfer

 Source Server         : wxt
 Source Server Type    : MySQL
 Source Server Version : 80039
 Source Host           : localhost:3306
 Source Schema         : sdbkqs

 Target Server Type    : MySQL
 Target Server Version : 80039
 File Encoding         : 65001

 Date: 12/11/2024 17:44:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', 'admin', '管理员', 'http://localhost:9090/files/1697438073596-avatar.png', 'ADMIN', '13677889922', 'admin@xm.com');

-- ----------------------------
-- Table structure for blog
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `descr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简介',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '封面',
  `tags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标签',
  `user_id` int NULL DEFAULT NULL COMMENT '发布人ID',
  `date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布日期',
  `read_count` int NULL DEFAULT 0 COMMENT '浏览量',
  `category_id` int NULL DEFAULT NULL COMMENT '分类ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '博客信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES (1, '关于做好2024年本科生国家奖助学金评审工作的通知', '<p><span><span>各院（部）：</span></span></p><p><span><span><span><span>根据河南省教育厅关于国家奖助学金评审发放工作</span></span><span><span>通知</span></span><span><span>，结合我校实际情况，现就认真做好</span></span></span></span><span>202</span><span><span>4</span></span><span><span>年本科生国家奖助学金评审有关工作通知如下：</span></span></p><p><span><span><span><strong><span>一</span></strong></span></span><span><strong><span>、资助项目和范围</span></strong></span></span></p><p><span><span>1. </span></span><span><span><span><span>国家奖学金</span></span><span><span>：</span></span><span><span>每生每年</span></span></span></span><span><span>8000</span><span><span>元</span></span><span><span>。</span></span><span><span>我校二年级及以上特别优秀的全日制本科在校生。</span></span></span></p><p><span><span>2. </span></span><span><span><span><span>国家励志奖学金</span></span><span><span>：</span></span><span><span>每生每年</span></span></span></span><span><span>5000</span><span><span>元</span></span><span><span>。</span></span><span><span>具有我校学籍且品学兼优、通过当年家庭经济困难认定的，二年级及以上全日制本科在校生。</span></span></span></p><p><span><span>3. </span></span><span><span><span><span>国家助学金</span></span><span><span>：</span></span><span><span>分三个档次</span></span><span><span>，</span></span><span><span>一等国家助学金</span></span></span></span><span><span>4000</span><span><span>元，二等国家助学金</span></span></span><span><span>3300</span><span><span>元，三等国家助学金</span></span></span><span><span>2600</span><span><span>元。具有我校学籍且通过当年家庭经济困难认定的全日制本科（含预科、不含退役士兵学生）在校生。</span></span></span></p><p><span><span>同一学年内，学生不可同时获得国家奖学金和国家励志奖学金，但可同时获得国家奖学金和国家助学金或国家励志奖</span></span><span><span>学金和国家助学金。</span></span></p><p><span><span><span><strong><span>二、</span></strong></span></span><span><strong><span>名额分配情况</span></strong></span></span><span><strong><span>（</span></strong></span><span><strong><span>见附件</span></strong></span><strong><span>1</span></strong><span><strong><span>）</span></strong></span></p><p><span><span><span><strong><span>三、</span></strong></span></span><span><strong><span>评审程序</span></strong></span></span><span><strong><span>（</span></strong></span><span><strong><span>见附件</span></strong></span><span><strong><span>2</span></strong></span><span><strong><span>）</span></strong></span></p><p><span><strong><span>四、日程安排</span></strong></span></p><p><span><span>1. </span></span><span><span>9</span><span><span>月</span></span></span><span><span>10</span></span><span><span>日—</span></span><span>1</span><span><span>8</span></span><span><span><span><span>日，各院（部</span></span><span><span>）</span></span><span><span>认真组织宣讲国家奖助学金评审文件精神和本通知要求，做到每位学生均知悉国家奖助学金资助政策。</span></span></span></span></p><p><span><span>2. </span></span><span><span>9</span><span><span>月</span></span></span><span>1</span><span><span>8</span></span><span><span>日—</span></span><span><span>9</span><span><span>月</span></span></span><span>2</span><span><span>2</span></span><span><span><span><span>日，符合奖助学金评选条件的学生自愿提出申请，</span></span><span><span>各院（部）</span></span><span><span>经各层次工作小组评议确定最终拟获奖助名单，并于</span></span></span></span><span><span>9</span><span><span>月</span></span></span><span>2</span><span><span>3</span></span><span>—2</span><span><span>7</span></span><span><span><span><span>日将奖助结果在显要位置进行公示。</span></span><span><strong><span>公示时间不得少于五个工作日。</span></strong></span></span></span></p><p><span><span>3. </span></span><span><span>9</span><span><span>月</span></span></span><span>2</span><span><span>7</span></span><span><span>日</span></span><span>1</span><span><span><span>8</span></span><span><span>：</span></span></span><span><span>00</span><span><span>前，通过评审的学生通过扫描河南师范大学资助在线二维码（见附件</span></span></span><span><span>3</span></span><span><span><span><span>）进入河南省高校学生资助业务系统，</span></span><span><strong><span>先完善个人</span></strong></span></span><span><strong><span>基本</span></strong></span></span><span><strong><span>信息，再进行</span></strong></span><span><strong><span>相关项目的</span></strong></span><span><strong><span>申请</span></strong></span><span><span>。</span></span></p><p><span><span>4. </span></span><span><span>9</span><span><span>月</span></span></span><span><span>28</span></span><span><span>日组织各院（部）资助工作专员在致远楼</span></span><span><span>424</span><span><span>进行奖助学金填报系统的相关培训。（具体时间另行在资助群通知）</span></span></span></p><p><span><span>5. </span></span><span><span>9</span><span><span>月</span></span></span><span><span>29</span></span><span><span>—10</span><span><span>月</span></span></span><span><span>7</span></span><span><span><span><span>日，</span></span><span><span>各院（部）数据自审</span></span><span><span>、</span></span><span><span>调整阶段。</span></span></span></span></p><p><span><span>6. </span></span><span><span>10</span><span><span>月</span></span></span><span><span>8</span><span><span>日，学校学生资助中心对国家奖助学金获得者进行复审并提出拟获得国家奖助学金名单，报学校国家奖助学金领导小组审批，并于</span></span></span><span><span>10</span><span><span>月</span></span></span><span><span>9</span><span><span>日—</span></span></span><span>1</span><span><span>4</span></span><span><span>日进行校内公示。</span></span></p>', NULL, 'http://localhost:9090/files/1731285263373-u=3512882654,2980194618&fm=253&fmt=auto&app=120&f=JPEG.webp', '[\"我爱师大\",\"新生求助\",\"每日一问\"]', NULL, '2024-11-11', 0, 2);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '博客分类' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '奖学金');
INSERT INTO `category` VALUES (2, '助学金');
INSERT INTO `category` VALUES (4, '双学位');
INSERT INTO `category` VALUES (5, '转专业');
INSERT INTO `category` VALUES (6, '评优评先');
INSERT INTO `category` VALUES (7, '考公经验');
INSERT INTO `category` VALUES (8, '考研经验');
INSERT INTO `category` VALUES (9, '勤工俭学');
INSERT INTO `category` VALUES (10, '助学贷款');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '今天系统正式上线，开始内测', '今天系统正式上线，开始内测', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (2, '所有功能都已完成，可以正常使用', '所有功能都已完成，可以正常使用', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (3, '今天天气很不错，可以出去一起玩了', '今天天气很不错，可以出去一起玩了', '2023-09-05', 'admin');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '简介',
  `birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '生日',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'wxt', '123', 'wxt', NULL, 'USER', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (3, 'hd', '123', 'hd', NULL, 'USER', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (4, 'syy', '123', 'syy', NULL, 'USER', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (5, 'jyp', '123', 'jyp', NULL, 'USER', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (6, 'yyy', '123', 'yyy', NULL, 'USER', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `user` VALUES (7, 'ssh', '123', 'ssh', NULL, 'USER', NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
