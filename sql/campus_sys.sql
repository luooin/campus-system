/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : campus_sys

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 23/06/2024 22:24:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'http://localhost:8080/campus/upload/1596202765029.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'http://localhost:8080/campus/upload/1596202778459.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'http://localhost:8080/campus/upload/1596202789362.jpg');
INSERT INTO `config` VALUES (4, 'picture4', 'http://localhost:8080/campus/upload/1596202801460.jpg');
INSERT INTO `config` VALUES (5, 'picture5', 'http://localhost:8080/campus/upload/1596202812156.jpg');
INSERT INTO `config` VALUES (6, 'homepage', 'http://localhost:8080/campus/upload/1596202819339.jpg');

-- ----------------------------
-- Table structure for discussqiuzhizhexinxi
-- ----------------------------
DROP TABLE IF EXISTS `discussqiuzhizhexinxi`;
CREATE TABLE `discussqiuzhizhexinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `refid` bigint(0) NOT NULL COMMENT '关联表id',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '求职者信息评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussqiuzhizhexinxi
-- ----------------------------

-- ----------------------------
-- Table structure for discusszhaopinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `discusszhaopinxinxi`;
CREATE TABLE `discusszhaopinxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `refid` bigint(0) NOT NULL COMMENT '关联表id',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评论内容',
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘信息评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discusszhaopinxinxi
-- ----------------------------

-- ----------------------------
-- Table structure for gangweifenlei
-- ----------------------------
DROP TABLE IF EXISTS `gangweifenlei`;
CREATE TABLE `gangweifenlei`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `gangweileibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位类别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1596203316887 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位分类' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gangweifenlei
-- ----------------------------
INSERT INTO `gangweifenlei` VALUES (1596203279032, '2024-06-23 11:10:39', '管理岗位');
INSERT INTO `gangweifenlei` VALUES (1596203306345, '2024-06-23 11:10:39', '专技岗位');
INSERT INTO `gangweifenlei` VALUES (1596203316886, '2024-06-23 11:10:39', '工勤岗位');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `userid` bigint(0) NOT NULL COMMENT '留言人id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1596712023224 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '留言板' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (1596712023223, '2024-06-23 11:10:39', '很好很强大。', 1596200777877);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1596204167472 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '新闻资讯' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1596204167471, '2024-06-23 11:10:39', '京东1/4管理层为90后，互联网巨头都爱年轻人', 'http://localhost:8080/campus/upload/1596204129522.jpeg', '<p class=\"ql-align-justify\">2020年第一批90后已迈入30岁，成为互联网公司的主力。同样，这一讯号也激励着正在打拼的年轻人。</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">近日，京东招聘负责人在脉脉组织的《把脉》访谈中透露了一组数据：目前京东近90%的管理者都是内部培养的，1/4以上的管理者都是90后。并且在2020年年初的晋升中，57.5%都是90后，首次晋升的95后，占比达到11.7%。据悉，更有技术类员工，在毕业3年便晋升为T8专家。</p><p class=\"ql-align-justify\">在瞬息万变的互联网公司中，曾经的90后多数是给70后、80后做下属。但如今，互联网大厂更青睐于选择有想法的年轻人。</p><p><img src=\"http://localhost:8080/campus/upload/1596204165238.jpeg\"></p><p class=\"ql-align-justify\">其实不止京东，互联网大厂皆是如此。张勇也曾经谈到管理95后员工：“我不懂，但放手让他们做。”并且早在2018年，阿里便拥有了95后的科学家。</p><p class=\"ql-align-justify\">百度也将高管年轻化作为最新战略之一，李彦宏曾在内部信中表示，“公司将加速干部年轻化的进程，选拔更多的80、90后年轻同事进入管理层。”</p><p class=\"ql-align-justify\">据悉，在2020年新一届的招聘中，多数企业都面向应届生开展培养计划，力求为公司补进新生力量。前述京东招聘负责人透露，京东2020年校园招聘共收到简历近13万份。在全部简历中，技术人才占比70%，在发放的offer中技术岗位占比也达到七成。</p><p><br></p>');

-- ----------------------------
-- Table structure for qiuzhizhexinxi
-- ----------------------------
DROP TABLE IF EXISTS `qiuzhizhexinxi`;
CREATE TABLE `qiuzhizhexinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `dianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `zhaopian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  `xueli` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `gangweileibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位类别',
  `jianli` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简历',
  `gongzuojingli` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '工作经历',
  `gerenjibenqingkuang` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '个人基本情况',
  `thumbsupnum` int(0) NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int(0) NULL DEFAULT 0 COMMENT '踩',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1596372486542 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '求职者信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qiuzhizhexinxi
-- ----------------------------
INSERT INTO `qiuzhizhexinxi` VALUES (1596285238983, '2024-06-23 11:10:39', 'zhangsan', '张三', '男', '13512345678', 'http://localhost:8080/campus/upload/1596284947334.jpg', '硕士', '专技岗位', 'http://localhost:8080/campus/upload/1596285115757.jpg', '没有', '<p>只会考试</p>', 0, 0);
INSERT INTO `qiuzhizhexinxi` VALUES (1596372486541, '2024-06-23 11:10:39', 'lisi', '李四', '女', '18866661234', 'http://localhost:8080/campus/upload/1596372445456.jpg', '本科', '管理岗位', 'http://localhost:8080/campus/upload/1596372470161.jpg', '略', '<p>略</p>', 0, 0);

-- ----------------------------
-- Table structure for qiyexinxi
-- ----------------------------
DROP TABLE IF EXISTS `qiyexinxi`;
CREATE TABLE `qiyexinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `qiyebianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业编号',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `qiyemingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `qiyeyouxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业邮箱',
  `qiyejieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '企业介绍',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `qiyebianhao`(`qiyebianhao`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1596200834702 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '企业信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qiyexinxi
-- ----------------------------
INSERT INTO `qiyexinxi` VALUES (1596200834701, '2024-06-23 11:10:39', 'tengxun', '123456', '腾讯', '老马', '13632146547', '13632146547@qq.com', 'QQ微信都是我家的');

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `refid` bigint(0) NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1596372529848 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1596372529847, '2024-06-23 11:10:39', 1596372388838, 1596371998272, 'zhaopinxinxi', 'Java工程师', 'http://localhost:8080/campus/upload/1596371914892.jpg');

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `userid` bigint(0) NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `expiratedtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (2, 1596200777877, 'zhangsan', 'yonghu', '用户', 'w124ckaxnrnp0jvd56ktb04seihxpdwc', '2024-06-23 11:10:39', '2024-06-23 15:21:04');
INSERT INTO `token` VALUES (3, 1596200834701, 'tengxun', 'qiyexinxi', '企业信息', '8okn5022b7a5hv6xwmw1qlg8g891nlc7', '2024-06-23 11:10:39', '2024-06-23 15:20:14');
INSERT INTO `token` VALUES (4, 1596372388838, 'lisi', 'yonghu', '用户', '7ukws5mujkht18r36jhrkhoqfjik8mhs', '2024-06-23 11:10:39', '2024-06-30 11:10:39');
INSERT INTO `token` VALUES (5, 1, 'abo', 'users', '管理员', 'sg4i30afmcoips7qnwdmfxb3gck3e2r9', '2024-06-23 11:10:39', '2024-06-23 15:21:53');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', '管理员', '2024-06-23 11:10:39');

-- ----------------------------
-- Table structure for xuelixinxi
-- ----------------------------
DROP TABLE IF EXISTS `xuelixinxi`;
CREATE TABLE `xuelixinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `xueli` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1596203473682 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学历信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xuelixinxi
-- ----------------------------
INSERT INTO `xuelixinxi` VALUES (1596203425441, '2024-06-30 11:10:39', '博士');
INSERT INTO `xuelixinxi` VALUES (1596203441455, '2024-06-30 11:10:39', '硕士');
INSERT INTO `xuelixinxi` VALUES (1596203466812, '2024-06-30 11:10:39', '本科');
INSERT INTO `xuelixinxi` VALUES (1596203473681, '2024-06-30 11:10:39', '专科');

-- ----------------------------
-- Table structure for yingpinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `yingpinxinxi`;
CREATE TABLE `yingpinxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `qiyebianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业编号',
  `qiyemingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `zhaopingangwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招聘岗位',
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `dianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `jianli` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简历',
  `sfsh` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '审核回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应聘信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yingpinxinxi
-- ----------------------------

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `yonghuming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `xingming` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `mima` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingbie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `dianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `yonghuming`(`yonghuming`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1596372388839 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (1596200777877, '2024-06-23 11:10:39', 'zhangsan', '张三', '123456', '男', '13512345678', '13512345678@qq.com');
INSERT INTO `yonghu` VALUES (1596372388838, '2024-06-23 11:10:39', 'lisi', '李四', '123456', '女', '18866661234', '18866661234@qq.com');

-- ----------------------------
-- Table structure for youqinglianjie
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `wangzhanmingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网站名称',
  `logo` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'logo',
  `wangzhi` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网址',
  `wangzhanjieshao` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '网站介绍',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1596203976310 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '友情链接' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES (1596203976309, '2024-06-30 11:10:39', 'Java攀登网', 'http://localhost:8080/campus/upload/1596203897238.gif', 'http://www.javaclimb.com/', '<p>提供大量原创视频教程</p>');

-- ----------------------------
-- Table structure for zhaopinxinxi
-- ----------------------------
DROP TABLE IF EXISTS `zhaopinxinxi`;
CREATE TABLE `zhaopinxinxi`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `qiyebianhao` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业编号',
  `qiyemingcheng` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `fuzeren` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `lianxidianhua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `zhaopingangwei` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招聘岗位',
  `zhaopinrenshu` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '招聘人数',
  `gangweileibie` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '岗位类别',
  `xueli` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历',
  `tupian` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `gangweiyaoqiu` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '岗位要求',
  `gongzuozhize` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '工作职责',
  `thumbsupnum` int(0) NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int(0) NULL DEFAULT 0 COMMENT '踩',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1596371998273 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '招聘信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zhaopinxinxi
-- ----------------------------
INSERT INTO `zhaopinxinxi` VALUES (1596371998272, '2024-06-30 11:10:39', 'tengxun', '腾讯', '老马', '13632146547', 'Java工程师', '20', '专技岗位', '本科', 'http://localhost:8080/campus/upload/1596372817043.jpg', '1、会SpringBoot。\n2、熟练掌握MySQL。\n3、精通算法。', '<p>协助项目经理完成开发后台的工作。</p>', 2, 1);

SET FOREIGN_KEY_CHECKS = 1;
