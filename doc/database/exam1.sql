/*
 Navicat Premium Data Transfer

 Source Server         : php_root
 Source Server Type    : MySQL
 Source Server Version : 50553
 Source Host           : localhost:3306
 Source Schema         : exam1

 Target Server Type    : MySQL
 Target Server Version : 50553
 File Encoding         : 65001

 Date: 01/11/2019 00:29:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for em_admin
-- ----------------------------
DROP TABLE IF EXISTS `em_admin`;
CREATE TABLE `em_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码',
  `login_time` datetime NOT NULL COMMENT '最后登录时间',
  `login_ip` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '最后登录ip地址',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态:1是,0否',
  `add_time` datetime NOT NULL COMMENT '添加时间',
  `on_off` tinyint(4) NOT NULL DEFAULT 1 COMMENT '开关状态 1开启 0关闭',
  `login_site` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ip物理地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of em_admin
-- ----------------------------
INSERT INTO `em_admin` VALUES (1, 'changchun', '123456', '0000-00-00 00:00:00', '', 0, '2019-10-08 21:21:11', 0, '');
INSERT INTO `em_admin` VALUES (2, 'dongshao', '123456', '0000-00-00 00:00:00', '', 0, '2019-10-24 12:38:37', 0, '');
INSERT INTO `em_admin` VALUES (3, 'liuyougang', '123456', '0000-00-00 00:00:00', '', 0, '2019-10-24 12:38:39', 0, '');
INSERT INTO `em_admin` VALUES (4, 'zhangxudong', '123456', '2019-11-01 00:01:49', '127.0.0.1', 0, '2019-10-24 12:38:41', 0, '本机地址');
INSERT INTO `em_admin` VALUES (5, 'changsheng', '123456', '0000-00-00 00:00:00', '', 0, '2019-10-26 18:55:20', 0, '');
INSERT INTO `em_admin` VALUES (19, 'tom', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-09 08:39:47', 1, '');
INSERT INTO `em_admin` VALUES (20, 'user', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-09 10:00:29', 1, '');
INSERT INTO `em_admin` VALUES (30, 'li', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-09 10:10:29', 1, '');
INSERT INTO `em_admin` VALUES (32, 'check', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-09 10:24:57', 1, '');
INSERT INTO `em_admin` VALUES (35, 'peter', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-10 08:42:30', 1, '');
INSERT INTO `em_admin` VALUES (36, 'tomk', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-29 21:39:26', 1, '');
INSERT INTO `em_admin` VALUES (37, 'yt', '123456', '0000-00-00 00:00:00', '', 0, '2019-10-29 21:41:24', 1, '');
INSERT INTO `em_admin` VALUES (38, '王正相', '123456', '2019-11-01 00:01:31', '127.0.0.1', 1, '2019-10-31 22:44:54', 1, '本机地址');
INSERT INTO `em_admin` VALUES (39, '张兴强', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (40, '赵昌', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (41, '李宗伟', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (42, '王宏', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (43, '马政', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (44, '王鑫', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (45, '梁月辉', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (46, '汪道彬', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (47, '李龙强', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (48, '肖体莲', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (49, '王伟', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (50, '郭伟', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (51, '郭腾芳', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (52, '任红吏', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (53, '康 颗', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (54, '陈雪冬', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (55, '杨孝明', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (56, '吕军', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (57, '郑欣', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (58, '蒋伟', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (59, '李阳勇', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (60, '龙炳全', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (61, '叶俊利', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (62, '樊家岐', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (63, '肖恒', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (64, '刘晓晶', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (65, '成亮', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (66, '叶何林', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (67, '李金柯', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:54', 1, '');
INSERT INTO `em_admin` VALUES (68, '侯晓轩', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (69, '叶鉴原', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (70, '凌娟', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (71, '翁邦维', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (72, '李鑫全', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (73, '田玲玲', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (74, '卿舒心', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (75, '谢鑫', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (76, '吕平', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (77, '廖雅婷', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (78, '黄鑫宇', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (79, '王佩文', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (80, '丁洋', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (81, '钱程', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (82, '廖理', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (83, '吴寻', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (84, '刘庆花', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (85, '黄婧', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (86, '卿文浩', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (87, '黎莉媛', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');
INSERT INTO `em_admin` VALUES (88, '刘富腾', '123456', '0000-00-00 00:00:00', '', 1, '2019-10-31 22:44:55', 1, '');

-- ----------------------------
-- Table structure for em_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `em_admin_role`;
CREATE TABLE `em_admin_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
  `role_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '角色ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 81 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of em_admin_role
-- ----------------------------
INSERT INTO `em_admin_role` VALUES (6, 20, '4');
INSERT INTO `em_admin_role` VALUES (11, 30, '8');
INSERT INTO `em_admin_role` VALUES (13, 32, '4');
INSERT INTO `em_admin_role` VALUES (16, 1, '1');
INSERT INTO `em_admin_role` VALUES (17, 19, '6');
INSERT INTO `em_admin_role` VALUES (18, 35, '4');
INSERT INTO `em_admin_role` VALUES (19, 36, '4,8');
INSERT INTO `em_admin_role` VALUES (20, 2, '1');
INSERT INTO `em_admin_role` VALUES (21, 3, '1');
INSERT INTO `em_admin_role` VALUES (22, 4, '1');
INSERT INTO `em_admin_role` VALUES (28, 5, '1');
INSERT INTO `em_admin_role` VALUES (29, 37, '1');
INSERT INTO `em_admin_role` VALUES (30, 38, '9');
INSERT INTO `em_admin_role` VALUES (31, 39, '9');
INSERT INTO `em_admin_role` VALUES (32, 40, '9');
INSERT INTO `em_admin_role` VALUES (33, 41, '9');
INSERT INTO `em_admin_role` VALUES (34, 42, '9');
INSERT INTO `em_admin_role` VALUES (35, 43, '9');
INSERT INTO `em_admin_role` VALUES (36, 44, '9');
INSERT INTO `em_admin_role` VALUES (37, 45, '9');
INSERT INTO `em_admin_role` VALUES (38, 46, '9');
INSERT INTO `em_admin_role` VALUES (39, 47, '9');
INSERT INTO `em_admin_role` VALUES (40, 48, '9');
INSERT INTO `em_admin_role` VALUES (41, 49, '9');
INSERT INTO `em_admin_role` VALUES (42, 50, '9');
INSERT INTO `em_admin_role` VALUES (43, 51, '9');
INSERT INTO `em_admin_role` VALUES (44, 52, '9');
INSERT INTO `em_admin_role` VALUES (45, 53, '9');
INSERT INTO `em_admin_role` VALUES (46, 54, '9');
INSERT INTO `em_admin_role` VALUES (47, 55, '9');
INSERT INTO `em_admin_role` VALUES (48, 56, '9');
INSERT INTO `em_admin_role` VALUES (49, 57, '9');
INSERT INTO `em_admin_role` VALUES (50, 58, '9');
INSERT INTO `em_admin_role` VALUES (51, 59, '9');
INSERT INTO `em_admin_role` VALUES (52, 60, '9');
INSERT INTO `em_admin_role` VALUES (53, 61, '9');
INSERT INTO `em_admin_role` VALUES (54, 62, '9');
INSERT INTO `em_admin_role` VALUES (55, 63, '9');
INSERT INTO `em_admin_role` VALUES (56, 64, '9');
INSERT INTO `em_admin_role` VALUES (57, 65, '9');
INSERT INTO `em_admin_role` VALUES (58, 66, '9');
INSERT INTO `em_admin_role` VALUES (59, 67, '9');
INSERT INTO `em_admin_role` VALUES (60, 68, '9');
INSERT INTO `em_admin_role` VALUES (61, 69, '9');
INSERT INTO `em_admin_role` VALUES (62, 70, '9');
INSERT INTO `em_admin_role` VALUES (63, 71, '9');
INSERT INTO `em_admin_role` VALUES (64, 72, '9');
INSERT INTO `em_admin_role` VALUES (65, 73, '9');
INSERT INTO `em_admin_role` VALUES (66, 74, '9');
INSERT INTO `em_admin_role` VALUES (67, 75, '9');
INSERT INTO `em_admin_role` VALUES (68, 76, '9');
INSERT INTO `em_admin_role` VALUES (69, 77, '9');
INSERT INTO `em_admin_role` VALUES (70, 78, '9');
INSERT INTO `em_admin_role` VALUES (71, 79, '9');
INSERT INTO `em_admin_role` VALUES (72, 80, '9');
INSERT INTO `em_admin_role` VALUES (73, 81, '9');
INSERT INTO `em_admin_role` VALUES (74, 82, '9');
INSERT INTO `em_admin_role` VALUES (75, 83, '9');
INSERT INTO `em_admin_role` VALUES (76, 84, '9');
INSERT INTO `em_admin_role` VALUES (77, 85, '9');
INSERT INTO `em_admin_role` VALUES (78, 86, '9');
INSERT INTO `em_admin_role` VALUES (79, 87, '9');
INSERT INTO `em_admin_role` VALUES (80, 88, '9');

-- ----------------------------
-- Table structure for em_exam_status
-- ----------------------------
DROP TABLE IF EXISTS `em_exam_status`;
CREATE TABLE `em_exam_status`  (
  `id` int(11) NOT NULL DEFAULT 0 COMMENT 'id字段',
  `on_off` tinyint(4) NOT NULL DEFAULT 1 COMMENT '考试开关 1开启 0关闭',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '考试维护信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of em_exam_status
-- ----------------------------
INSERT INTO `em_exam_status` VALUES (1, 1, '当前未到考试时间，考试已关闭维护，详细联系管理员：184941312');

-- ----------------------------
-- Table structure for em_judge
-- ----------------------------
DROP TABLE IF EXISTS `em_judge`;
CREATE TABLE `em_judge`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id编号',
  `judge_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '题目',
  `right_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '正确答案',
  `status` smallint(4) NOT NULL DEFAULT 1 COMMENT '状态:1是,0否',
  `major_id` int(10) NOT NULL COMMENT '对应专业表的id',
  `subject_id` int(10) NOT NULL COMMENT '对应科目表的id',
  `add_time` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 298 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '判断题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of em_judge
-- ----------------------------
INSERT INTO `em_judge` VALUES (1, '”上海西北京” 可以通过like ‘%上海_’查出来。', '0', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_judge` VALUES (2, 'truncate是DDL操作，不能 rollback。', '1', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_judge` VALUES (3, 'Oracle数据库中字符串和日期必须使用双引号标识。', '0', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_judge` VALUES (4, 'Oracle数据库中字符串数据是区分大小写的。', '1', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_judge` VALUES (5, 'drop是属于DML(数据操纵)语言', '0', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_judge` VALUES (6, 'oracle系统中SGA所有用户进程和服务器进程所共享', '0', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_judge` VALUES (7, 'oracle数据库系统中数据块的大小与操作系统有关', '1', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_judge` VALUES (8, 'oracle数据库系统中，启动数据库和第一步是启动一个数据库实例（）。 启动数据库实例、挂载数据库', '1', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_judge` VALUES (9, 'Order by 子句仅对检索数据的显示有影响，并不改变表中行的内部顺序。', '1', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_judge` VALUES (10, '从一个表中删除元组时， delete 和 drop table 命令可以起到同样的效果。（） 元组其实就是行，delete可以，drop的可以删除表对象', '0', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_judge` VALUES (11, '与主键不同，惟一键可以是 null 值。（） 主键是非空的', '0', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_judge` VALUES (12, 'Delete 可以有选择地删除记录，使用 rollback 语句可以取消这个命令的执行。（） delete之后没有commit的时候是可以rollback的', '1', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_judge` VALUES (13, 'Create table &lt;table name&gt; as select 能够创建一个复制表对象。', '1', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_judge` VALUES (14, '在Scratch中,画笔部件中的“落笔”将角色像一个个图章一样印在舞台上。', '0', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (15, '随机数,就是随机产生的、无规则的数,在Scratch中,只需调用随机选择部件便可产生随机数', '1', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (16, '在Scratch中,通过“广播”和“当收到广播”实现角色转换', '1', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (17, '变量是指在程序运行过程中其值会变化的量,变量可以直接使用,不必预先定义', '0', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (18, '循环结构是程序设计中的三种基本结构之一,在循环结构中重复执行的程序段叫做循环', '1', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (19, 'Scratch的“数字和逻辑运算“部件中,包含有四个算术运算部件----加、减、乘、除,,三种关系运算符----小于、等于、大于,三种逻辑运算部件----且、或、不成立', '1', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (20, '当运行程序时,计算机按照程序中语言的顺序依次执行它们的指定操作,这种程序结构就是顺序结构', '1', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (21, 'Scratch是一种积木式编程软件,他通过鼠标拖曳部件,来实现对角色的编程', '1', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (22, 'Scratch中的默认角色是一只可爱的小猫,我们也可以通过右下区域的新增和删除角色来实现角色的更换', '1', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (23, ' Scratch 提供播放声音、演奏音符和敲鼓三种音乐输出形式', '1', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (24, 'scratch 指令模块区:共有六大类指令。', '0', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (25, '当绿旗被点击的时候程序开始运行', '1', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (26, 'Scartch软件分了三个区，分别是舞台区，脚本区，和积木区', '1', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (27, 'Scartch程序是以.scr结尾的', '0', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (28, '编程是编写语言', '0', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (29, '变量的长度必须大于255个字符', '0', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (30, '属于动作板块的是碰到边缘就反弹', '1', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (31, '背景的设置不包括利用画板编程器创建或编辑文本', '0', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (32, '造型的设计步骤是选定角色一点击按钮一切换到造型区域-设计造型', '1', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (33, '数值逻辑不包括取小数', '1', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_judge` VALUES (34, '引用在声明时必须对其初始化，以绑定某个已经存在的变量（或对象），在该引用的生命期内，该绑定不能被更改。', '1', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (35, '指针变量在定义时必须对其初始化，以锁定某个已经存在的目标变量（或对象），在该指针变量的生命期内，该指向不能被更改。', '0', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (36, '值返回的函数（如：double sqrt(double);）的调用表达式，如：sqrt(2.0)）代表一个无名的临时变量（或对象），一般不将其用作左值。', '1', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (37, '引用返回的函数，可以返回该函数中值传递的形参变量（或对象）。', '0', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (38, '任何类都有构造函数、复制构造函数、析构函数、赋值运算符函数。', '1', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (39, '有静态数据成员的类，一般地应该考虑为其设计复制构造函数、析构函数。', '1', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (40, '将用于输出的插入运算符函数operator&lt;&lt;设计成友元函数的根本原因是因为进行输出操作时需要访问对象的内部数据成员。', '0', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (41, '在C++程序中，操作符new的功能与calloc函数的功能完全一样。', '0', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (42, '创建一个C++字符串对象（如：string str;），则sizeof(str)的值等于str.length()的值。其中成员函数length为返回字符串的长度。', '0', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (43, '基类的私有数据成员在派生类中是存在的，但不可直接访问，需要用从基类继承下来的函数访问。', '1', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (44, '类的构造函数的函数名与类名相同，可以重载构造函数。', '1', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (45, '类的析构函数可以被重载。', '0', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (46, '重载运算符函数不能改变运算符的操作数个数、优先级和结合方向。', '1', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (47, '引用在声明时必须对其初始化，以绑定某个已经存在的变量（或对象），在该引用的生命期内，该绑定不能被更改。', '1', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (48, '指针变量在定义时必须对其初始化，以锁定某个已经存在的目标变量（或对象），在该指针变量的生命期内，该指向不能被更改。', '0', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (49, '类的非静态成员函数均有一个隐含的形式参数this指针常量，用于指向调用该函数的对象。函数体中不能改变该指针常量的指向（即锁定调用该函数的对象）。', '1', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (50, '派生类继承了基类的所有数据成员，并且在派生类的成员函数中都能直接访问基类的访问属性为private的成员。', '0', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (51, '构造派生类对象时，先调用基类的构造函数，后执行派生类的构造函数。析构派生类对象时，先调用基类的析构函数，后执行派生类的析构函数。', '0', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (52, '含纯虚函数的类称为抽象类，不能创建抽象类的对象，不能定义抽象类的指针变量，不能声明抽象类的引用。', '0', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (53, '引用返回的函数可以作左值，也避免了函数值返回时创建与返回类型相同的临时无名对象。', '1', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (54, '创建对象意味着给对象分配内存空间。在对象的基本空间中存放了该对象的非静态数据成员。', '1', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (55, '运算符sizeof能够测量对象的基本空间及对象的资源空间所占用的内存单元字节数的总和。', '0', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (56, '对于在某函数内创建的多个局部自动对象，当该函数返回而引起这些局部自动对象销毁时，先创建的对象先析构、后创建的对象后析构。', '0', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (57, '类的所有成员函数都有一个隐含传递的形参this指针。', '0', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (58, '类的友元函数可以是另一个类的成员函数。甚至另一个类的所有成员函数都是本类的友元函数（友类）。', '1', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (59, '常量成员函数不能修改对象的数据成员的值。', '1', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (60, '由于前增量、前减量、后增量、后减量运算符皆为单目运算符，故在重载后增量、后减量运算符时需要在其运算符函数声明及定义时添加一个纯形式上的参数int，以示与前增量、前减量运算符函数的区别。', '1', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (61, '派生类（或称为子类）的成员函数可以直接访问其基类（或成为父类）的所有成员，甚至是基类的私有成员。', '0', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (62, '含有纯虚函数的类被称为抽象类，可以创建抽象类的对象。', '0', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (63, '若某个类可能作为基类，则最好将其析构函数设计成虚函数。', '1', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_judge` VALUES (64, '要修改用于列表项的标志类型，可以使用属性 list-style-color', '0', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (65, 'W3C是指万维网联盟。', '1', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (66, 'ID 选择器类与类选择器完全相同', '0', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (67, '浮动框不在文档的普通流中。', '0', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (68, 'display 属性规定元素应该生成的框的类型。', '1', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (69, 'border-color属性设置边框颜色。', '1', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (70, 'CSS 只允许应用纯色作为背景。', '0', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (71, '&lt;a&gt; 标签定义超链接，用于从一张页面链接到另一张页面。', '1', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (72, 'HTML中,空格的代码为”&amp;nbsp;”', '1', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (73, 'id 属性规定元素的行内样式', '0', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (74, 'HTML标记符的属性一般不区分大小写', '1', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (75, 'GIF格式的图象最多可以显示256种颜色', '1', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (76, '在HTML表格中,TD和TH标记符都可以用来包括单元格内容', '1', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (77, '在HTML表格中,表格的列数等于任意一行中TH与TD的个数', '0', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (78, '在HTML表格中,表格的列数等于任意一行中TH与TD的colspan属性的和。', '0', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (79, '在HTML中,与表格一样,表单也能嵌套。', '0', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (80, 'HTML表格内容的垂直对齐方式默认为垂直居中。', '1', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (81, '网站就是一个链接的页面集合。', '1', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (82, '所有的HTML标记符都包括开始标记符和结束标记符。', '0', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (83, 'HTML表格在默认情况下有边框。', '0', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_judge` VALUES (84, '”上海西北京” 可以通过like ‘%上海_’查出来。', '0', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_judge` VALUES (85, 'truncate是DDL操作，不能 rollback。', '1', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_judge` VALUES (86, 'Oracle数据库中字符串和日期必须使用双引号标识。', '0', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_judge` VALUES (87, 'Oracle数据库中字符串数据是区分大小写的。', '1', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_judge` VALUES (88, 'drop是属于DML(数据操纵)语言', '0', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_judge` VALUES (89, 'oracle系统中SGA所有用户进程和服务器进程所共享', '0', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_judge` VALUES (90, 'oracle数据库系统中数据块的大小与操作系统有关', '1', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_judge` VALUES (91, 'oracle数据库系统中，启动数据库和第一步是启动一个数据库实例（）。 启动数据库实例、挂载数据库', '1', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_judge` VALUES (92, 'Order by 子句仅对检索数据的显示有影响，并不改变表中行的内部顺序。', '1', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_judge` VALUES (93, '从一个表中删除元组时， delete 和 drop table 命令可以起到同样的效果。（） 元组其实就是行，delete可以，drop的可以删除表对象', '0', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_judge` VALUES (94, '与主键不同，惟一键可以是 null 值。（） 主键是非空的', '0', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_judge` VALUES (95, 'Delete 可以有选择地删除记录，使用 rollback 语句可以取消这个命令的执行。（） delete之后没有commit的时候是可以rollback的', '1', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_judge` VALUES (96, 'Create table &lt;table name&gt; as select 能够创建一个复制表对象。', '1', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_judge` VALUES (97, 'rpm–e命令可以进行查询软件包的工作', '0', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (98, ' 在KDE环境中的命令终端与进入命令控制台一样，必须完成新用户登录过程', '0', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (99, 'KDE最多只能提供四个虚拟桌面。', '0', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (100, '因为命令终端窗口是输入命令的地方，所以它和一般窗口有些区别，比如一些针对 窗口操作的快捷键就不再有效', '0', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (101, '并不是所有的窗口都具备工具栏，有的窗口就没有工具栏，但是窗口都有菜单栏', '0', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (102, '在grep命令中，有*这个通配符', '0', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (103, '安装桌面系统时必须给出root的登录密码，不许为空', '0', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (104, 'chown命令的作用是改变文件的运行权限。', '0', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (105, '/usr文件系统中包含了所有的系统命令、库文件和文档', '0', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (106, '进入vi时，系统处于编辑模式', '0', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (107, 'linux的内核版本和发行版本号是一样的', '0', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (108, 'Ubuntu LINUX安装时自动创建了根用户', '1', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (109, 'LINUX中的超级用户为root,登陆时不需要口令', '0', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (110, 'Linux的特点之一是它是一种开放、免费的操作系统', '1', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (111, '确定当前目录使用的命令为：pwd', '1', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (112, 'Ubuntu默认的 Linux 文件系统是ext3', '1', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (113, '我们可以使用命令kill来结束Linux系统下运行的进程', '1', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (114, 'Linux系统管理员的权限和普通用户的权限相同', '0', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (115, 'Linux系统的任何用户都可以设置计算机的名字', '0', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (116, '改变文件的命令是chown吗', '1', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (117, 'Linux操作系统是一种多用户多进程的系统吗', '1', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_judge` VALUES (118, 'Python代码的注释只有一种方式，那就是使用#符号。', '0', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (119, '调用函数时，在实参前面加一个型号*表示序列解包', '1', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (120, 'Python支持使用字典的“键”作为下标来访问字典中的值。', '1', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (121, '列表可以作为字典的“键”。', '0', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (122, '元组可以作为字典的“键”。', '1', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (123, '字典的“键”必须是不可变的。', '1', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (124, '尽管可以使用import语句一次导入任意多个标准库或扩展库，但是仍建议每次只导入一个标准库或扩展库。', '1', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (125, '为了让代码更加紧凑，编写Python程序时应尽量避免加入空格和空行。\n38、在Python 3.5中运算符+不仅可以实现数值的相加、字符串连接，还可以实现列表、元组的合并和集合的并集运算。', '0', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (126, 'Python集合中的元素不允许重复。', '1', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (127, 'Python集合可以包含相同的元素。', '0', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (128, 'ython字典中的“键”不允许重复。', '1', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (129, '列表对象的append()方法属于原地操作，用于在列表尾部追加一个元素。', '1', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (130, '使用列表对象的remove()方法可以删除列表中首次出现的指定元素，如果列中不存在要删除的指定元素则抛出异常。', '1', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (131, '元组是不可变的，不支持列表对象的inset()、remove()等方法，也不支持del命令删除其中的元素，但可以使用del命令删除整个元组对象。', '1', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (132, 'Python字典和集合属于无序序列。', '1', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (133, '只能通过切片访问列表中的元素，不能使用切片修改列表中的元素。', '0', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (134, 'Python字典和集合支持双向索引。', '0', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (135, '定义Python函数时必须指定函数返回值类型。', '0', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (136, '函数中必须包含return语句。', '0', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (137, '表达式 ‘a’+1的值为’b’。', '0', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_judge` VALUES (138, 'Requestdispatcher的forward方法和include方法的区别是forward可以到另外一个web应用的资源，而include只能到同一web的另外资源。', '0', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (139, '如果一个Sevlet有多个Filter，则优先级最高的Filter先执行。', '0', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (140, '在HTML页面文件中加入JSP脚本元素、JSP标记等就构成了一个JSP页面。', '1', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (141, '在“&lt;%!”和“%&gt;”标记之间声明的Java的方法在整个页面内有效。', '1', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (142, 'JSP中Java表达式的值由服务器负责计算，并将计算值按字符串发送给客户端显示。', '1', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (143, '不可以用一个page指令指定多个属性的取值。', '0', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (144, '&lt;jsp:forward ... &gt;标记的page属性值是相对的URL地址，只能静态的URL。', '0', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (145, 'JSP页面只能在客户端执行。', '0', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (146, 'respone对象主要用于向客户端发送数据。', '1', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (147, 'Post属于表单的隐式提交信息方法。', '1', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (148, '表单信息的验证只能放在服务器端执行。', '0', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (149, 'session对象是HttpSession接口类的实例，由客户端负责创建和销毁，所以不同客户的session对象不同。', '1', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (150, 'application对象对所有用户都是共享的，任何对它的操作都会影响到所有的用户。', '1', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (151, '使用request对象获取信息的时候，可能会出现NullPointerException异常', '1', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (152, 'Cookie由浏览器保存在客户端，通常保存为一个文本文件 。', '1', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (153, 'JavaBean的属性可读写，编写时set方法和get方法必须配对。', '0', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (154, '在JSP页面中使用Bean首先要使用import指令将Bean引入。', '1', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (155, '&lt;％@ page ％&gt;指令不一定放在页面内的头部。', '1', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (156, '数据库服务与Web服务器需要在同一台计算机上。', '0', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (157, 'JDBC中的URL提供了一种标识数据库的方法，使DriverManage类能够识别相应的驱动程序。', '1', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_judge` VALUES (158, 'Java语言有三种技术平台,分别是JavaSE、JavaME、JavaEE', '1', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (159, '方法的返回值类型可以定义也可以不定义', '0', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (160, 'Java是一门高级计算机语言', '1', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (161, '在Java中判断方法重载的条件除了参数外,还可以通过返回值类型判断', '0', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (162, 'Java中有一种特殊的赋值运算叫做三元运算,它和if-else语句类似', '1', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (163, '方法内部类是指在成员方法中定义的类,它只能在当前方法中被使用。', '1', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (164, '只有private修饰成员变量才是类的封装体现。', '0', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (165, '静态变量可以被类和对象调用。', '1', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (166, '方法重写时,子类抛出的异常类型大于等于父类抛出的异常类型', '0', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (167, '、在实例化子类对象时,会自动调用父类无参的构造方法', '1', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (168, '类只支持单继承,不允许多重继承,C类不可以既继承A类又B类', '1', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (169, '自定义的异常类必须继承自Exception或其子类', '1', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (170, '静态方法不能使用synchronized关键字来修饰。', '0', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (171, '使用StringBuffer修改字符串时,并不会产生新的StringBuffer对象。', '1', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (172, 'DateFormat类可以将日期格式化为字符串', '1', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (173, 'SimpleDateFormat类是抽象类', '0', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (174, 'System.out.println(‘a’+0);语句的输出结果是a0', '0', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (175, 'while循环条件不能是boolean类型的常量', '0', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (176, 'if()条件语句和switch()条件语句中的判断条件语句的值都是布尔类型(F)', '0', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (177, '若int[][]arr=newint[][]{{1},{2,3,4},{5,6}},则arr[1][1]的结果为3', '1', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_judge` VALUES (178, 'Python代码的注释只有一种方式，那就是使用#符号。', '0', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (179, '调用函数时，在实参前面加一个型号*表示序列解包', '1', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (180, 'Python支持使用字典的“键”作为下标来访问字典中的值。', '1', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (181, '列表可以作为字典的“键”。', '0', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (182, '元组可以作为字典的“键”。', '1', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (183, '字典的“键”必须是不可变的。', '1', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (184, '尽管可以使用import语句一次导入任意多个标准库或扩展库，但是仍建议每次只导入一个标准库或扩展库。', '1', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (185, '为了让代码更加紧凑，编写Python程序时应尽量避免加入空格和空行。\n38、在Python 3.5中运算符+不仅可以实现数值的相加、字符串连接，还可以实现列表、元组的合并和集合的并集运算。', '0', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (186, 'Python集合中的元素不允许重复。', '1', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (187, 'Python集合可以包含相同的元素。', '0', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (188, 'ython字典中的“键”不允许重复。', '1', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (189, '列表对象的append()方法属于原地操作，用于在列表尾部追加一个元素。', '1', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (190, '使用列表对象的remove()方法可以删除列表中首次出现的指定元素，如果列中不存在要删除的指定元素则抛出异常。', '1', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (191, '元组是不可变的，不支持列表对象的inset()、remove()等方法，也不支持del命令删除其中的元素，但可以使用del命令删除整个元组对象。', '1', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (192, 'Python字典和集合属于无序序列。', '1', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (193, '只能通过切片访问列表中的元素，不能使用切片修改列表中的元素。', '0', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (194, 'Python字典和集合支持双向索引。', '0', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (195, '定义Python函数时必须指定函数返回值类型。', '0', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (196, '函数中必须包含return语句。', '0', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (197, '表达式 ‘a’+1的值为’b’。', '0', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_judge` VALUES (198, '1.  window.onload必须等到页面内包括图片的所有元素加载完毕后才能执行', '1', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (199, '2.  on()方法在被选元素及子元素上添加一个或多个事件处理程序', '1', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (200, '3.  $(&quot;this&quot;)是使用标签选择器，查找名为this的标签', '1', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (201, '4.  nextAll() 不能替代$(\'prev~siblindgs\')选择器', '0', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (202, '5.   在一个网页中一个Id可以用很多次', '0', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (203, '6.   在jquery中可以用 replaceWith() 和 replaceAll() 替换节点', '1', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (204, '7.   $(\'prev~div\') 能选择\'所有的的同辈&lt;div&gt;元素', '0', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (205, '8.   jQuery中addClass()方法 可以来设置和获取 样式', '1', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (206, '9.   $.getScript()方法可以加载.js文件，需要对javascript文件进行处理 ', '0', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (207, '10. delegate() 方法为指定的元素（属于被选元素的子元素）添加一个或多个事件处理程序，并规定当这些事件发生时运行的函数', '1', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (208, '11.  jquery的load()方法中data 参数是必须的', '0', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (209, '12.  nextAll() 方法返回被选元素的所有跟随的同胞元素', '1', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (210, '13.  parent() 方法返回被选元素的所有祖先元素，它一路向上直到文档的根元素', '0', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (211, '14.  toggle() 方法在被选元素上进行 hide() 和 show() 之间的切换。', '1', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (212, '15.  $(\'div &gt; span\').css(\'color\', \'#FF0000\');的作用是选取div下的所有span元素，将字体颜色设为红色', '0', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (213, '16.  jQuery是一个javascript库', '1', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (214, '17.  通过 jQuery，$(&quot;div.intro&quot;) 能够选取的元素是class=&quot;intro&quot; 的首个 div 元素', '0', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (215, '18. jQuery.ajaxAsync()方法用于执行异步 HTTP 请求', '0', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (216, '19.    jQuery 是 W3C 标准', '0', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (217, '20.  jQueryget请求会将参数跟在URL后进行传递，而POST请求则是作为HTTP消息的实体内容发送给Web服务器的，这种传递是对用户不可见的。', '1', 1, 7, 7, '2019-10-30 11:03:35');
INSERT INTO `em_judge` VALUES (218, 'Java语言有三种技术平台,分别是JavaSE、JavaME、JavaEE', '1', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (219, '方法的返回值类型可以定义也可以不定义', '0', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (220, 'Java是一门高级计算机语言', '1', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (221, '在Java中判断方法重载的条件除了参数外,还可以通过返回值类型判断', '0', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (222, 'Java中有一种特殊的赋值运算叫做三元运算,它和if-else语句类似', '1', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (223, '方法内部类是指在成员方法中定义的类,它只能在当前方法中被使用。', '1', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (224, '只有private修饰成员变量才是类的封装体现。', '0', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (225, '静态变量可以被类和对象调用。', '1', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (226, '方法重写时,子类抛出的异常类型大于等于父类抛出的异常类型', '0', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (227, '、在实例化子类对象时,会自动调用父类无参的构造方法', '1', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (228, '类只支持单继承,不允许多重继承,C类不可以既继承A类又B类', '1', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (229, '自定义的异常类必须继承自Exception或其子类', '1', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (230, '静态方法不能使用synchronized关键字来修饰。', '0', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (231, '使用StringBuffer修改字符串时,并不会产生新的StringBuffer对象。', '1', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (232, 'DateFormat类可以将日期格式化为字符串', '1', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (233, 'SimpleDateFormat类是抽象类', '0', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (234, 'System.out.println(‘a’+0);语句的输出结果是a0', '0', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (235, 'while循环条件不能是boolean类型的常量', '0', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (236, 'if()条件语句和switch()条件语句中的判断条件语句的值都是布尔类型(F)', '0', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (237, '若int[][]arr=newint[][]{{1},{2,3,4},{5,6}},则arr[1][1]的结果为3', '1', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_judge` VALUES (238, '要修改用于列表项的标志类型，可以使用属性 list-style-color', '0', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (239, 'W3C是指万维网联盟。', '1', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (240, 'ID 选择器类与类选择器完全相同', '0', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (241, '浮动框不在文档的普通流中。', '0', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (242, 'display 属性规定元素应该生成的框的类型。', '1', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (243, 'border-color属性设置边框颜色。', '1', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (244, 'CSS 只允许应用纯色作为背景。', '0', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (245, '&lt;a&gt; 标签定义超链接，用于从一张页面链接到另一张页面。', '1', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (246, 'HTML中,空格的代码为”&amp;nbsp”.', '1', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (247, 'id 属性规定元素的行内样式', '0', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (248, 'HTML标记符的属性一般不区分大小写', '1', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (249, 'GIF格式的图象最多可以显示256种颜色', '1', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (250, '在HTML表格中,TD和TH标记符都可以用来包括单元格内容', '1', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (251, '在HTML表格中,表格的列数等于任意一行中TH与TD的个数', '0', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (252, '在HTML表格中,表格的列数等于任意一行中TH与TD的colspan属性的和。', '0', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (253, '在HTML中,与表格一样,表单也能嵌套。', '0', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (254, 'HTML表格内容的垂直对齐方式默认为垂直居中。', '1', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (255, '网站就是一个链接的页面集合。', '1', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (256, '所有的HTML标记符都包括开始标记符和结束标记符。', '0', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (257, 'HTML表格在默认情况下有边框。', '0', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_judge` VALUES (258, 'Java语言有三种技术平台,分别是JavaSE、JavaME、JavaEE', '1', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (259, '方法的返回值类型可以定义也可以不定义', '0', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (260, 'Java是一门高级计算机语言', '1', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (261, '在Java中判断方法重载的条件除了参数外,还可以通过返回值类型判断', '0', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (262, 'Java中有一种特殊的赋值运算叫做三元运算,它和if-else语句类似', '1', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (263, '方法内部类是指在成员方法中定义的类,它只能在当前方法中被使用。', '1', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (264, '只有private修饰成员变量才是类的封装体现。', '0', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (265, '静态变量可以被类和对象调用。', '1', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (266, '方法重写时,子类抛出的异常类型大于等于父类抛出的异常类型', '0', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (267, '、在实例化子类对象时,会自动调用父类无参的构造方法', '1', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (268, '类只支持单继承,不允许多重继承,C类不可以既继承A类又B类', '1', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (269, '自定义的异常类必须继承自Exception或其子类', '1', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (270, '静态方法不能使用synchronized关键字来修饰。', '0', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (271, '使用StringBuffer修改字符串时,并不会产生新的StringBuffer对象。', '1', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (272, 'DateFormat类可以将日期格式化为字符串', '1', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (273, 'SimpleDateFormat类是抽象类', '0', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (274, 'System.out.println(‘a’+0);语句的输出结果是a0', '0', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (275, 'while循环条件不能是boolean类型的常量', '0', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (276, 'if()条件语句和switch()条件语句中的判断条件语句的值都是布尔类型(F)', '0', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (277, '若int[][]arr=newint[][]{{1},{2,3,4},{5,6}},则arr[1][1]的结果为3', '1', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_judge` VALUES (278, '1.  window.onload必须等到页面内包括图片的所有元素加载完毕后才能执行', '1', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (279, '2.  on()方法在被选元素及子元素上添加一个或多个事件处理程序', '1', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (280, '3.  $(&quot;this&quot;)是使用标签选择器，查找名为this的标签', '1', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (281, '4.  nextAll() 不能替代$(\'prev~siblindgs\')选择器', '0', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (282, '5.   在一个网页中一个Id可以用很多次', '0', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (283, '6.   在jquery中可以用 replaceWith() 和 replaceAll() 替换节点', '1', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (284, '7.   $(\'prev~div\') 能选择\'所有的的同辈&lt;div&gt;元素', '0', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (285, '8.   jQuery中addClass()方法 可以来设置和获取 样式', '1', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (286, '9.   $.getScript()方法可以加载.js文件，需要对javascript文件进行处理 ', '0', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (287, '10. delegate() 方法为指定的元素（属于被选元素的子元素）添加一个或多个事件处理程序，并规定当这些事件发生时运行的函数', '1', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (288, '11.  jquery的load()方法中data 参数是必须的', '0', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (289, '12.  nextAll() 方法返回被选元素的所有跟随的同胞元素', '1', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (290, '13.  parent() 方法返回被选元素的所有祖先元素，它一路向上直到文档的根元素', '0', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (291, '14.  toggle() 方法在被选元素上进行 hide() 和 show() 之间的切换。', '1', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (292, '15.  $(\'div &gt; span\').css(\'color\', \'#FF0000\');的作用是选取div下的所有span元素，将字体颜色设为红色', '0', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (293, '16.  jQuery是一个javascript库', '1', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (294, '17.  通过 jQuery，$(&quot;div.intro&quot;) 能够选取的元素是class=&quot;intro&quot; 的首个 div 元素', '0', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (295, '18. jQuery.ajaxAsync()方法用于执行异步 HTTP 请求', '0', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (296, '19.    jQuery 是 W3C 标准', '0', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_judge` VALUES (297, '20.  jQueryget请求会将参数跟在URL后进行传递，而POST请求则是作为HTTP消息的实体内容发送给Web服务器的，这种传递是对用户不可见的。', '1', 1, 3, 15, '2019-10-30 11:06:06');

-- ----------------------------
-- Table structure for em_major
-- ----------------------------
DROP TABLE IF EXISTS `em_major`;
CREATE TABLE `em_major`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id编号',
  `major_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专业名称',
  `status` smallint(4) NOT NULL DEFAULT 1 COMMENT '状态:1是,0否',
  `add_time` datetime NOT NULL COMMENT '添加时间',
  `on_off` tinyint(4) NOT NULL DEFAULT 1 COMMENT '开关状态 1开启 0关闭',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专业表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of em_major
-- ----------------------------
INSERT INTO `em_major` VALUES (1, '软件开发', 1, '2019-09-28 16:41:52', 1);
INSERT INTO `em_major` VALUES (2, 'ui设计', 1, '2019-09-28 20:44:41', 1);
INSERT INTO `em_major` VALUES (3, '平面设计', 1, '2019-09-29 08:45:59', 1);
INSERT INTO `em_major` VALUES (4, '电子商务', 1, '2019-09-29 08:46:00', 1);
INSERT INTO `em_major` VALUES (7, '大数据', 1, '2019-10-24 09:42:13', 1);
INSERT INTO `em_major` VALUES (8, '人工智能', 1, '2019-10-24 18:56:09', 1);
INSERT INTO `em_major` VALUES (9, '移动app', 1, '2019-10-24 18:59:27', 1);

-- ----------------------------
-- Table structure for em_operation
-- ----------------------------
DROP TABLE IF EXISTS `em_operation`;
CREATE TABLE `em_operation`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id编号',
  `operation_name` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '题目',
  `status` smallint(4) NOT NULL DEFAULT 1 COMMENT '状态:1是,0否',
  `major_id` int(10) NOT NULL COMMENT '对应专业表的id',
  `subject_id` int(10) NOT NULL COMMENT '对应科目表的id',
  `pathinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作题文件路径',
  `add_time` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of em_operation
-- ----------------------------
INSERT INTO `em_operation` VALUES (1, '题目：已知公司的员工表EMP(EID, ENAME, BDATE, SEX, CITY)，\n部门表DEPT（DID, DNAME, DCITY），\n工作表WORK（EID,DID,STARTDATE,SALARY）。各个字段说明如下：\nEID——员工编号，最多6个字符。例如A00001（主键）\nENAME——员工姓名，最多10个字符。例如SMITH\nBDATE——出生日期，日期型\nSEX——员工性别，单个字符。F或者M\nCITY——员工居住的城市，最多20个字符。例如：上海\nDID——部门编号，最多3个字符。例如 A01 （主键）\nDNAME——部门名称，最多20个字符。例如：研发部门\nDCITY——部门所在的城市，最多20个字符。例如：上海\nSTARTDATE——员工到部门上班的日期，日期型\nSALARY——员工的工资。整型。\n\n\n1、创建表EMP，DEPT，WORK，并定义表的主键和外键。\n2、向每个表中插入适当的数据。例如：插入三条部门的数据，分别为每个部门插入两条员工数据\n\nselect * from work;\n\n \nEID    DID     STARTDATE     SALARY\n------ --- ----------- ---------------------------------------\nA001   D03     1990/1/1        4040\nA002   D01   2010/1/1        3000\nA003   D02   2003/1/1        3500\nA005   D01   2001/9/1        1900\nA015   D01   2004/9/1        3100\nA014   D03   2000/9/1        5100\n \nselect * from dept;\n \nDID DNAME      DCITY\n--- ---------- --------------------\nD01 研发部     上海\nD02 发行部     上海\nD03 广告部     上海\n \nselect * from emp;\n \nEID    ENAME      BDATE  SEX    CITY\n------ ---------- ----------- --- ----', 1, 2, 3, '', '2019-10-30 11:00:45');
INSERT INTO `em_operation` VALUES (2, '使用穷举法计算出以下每个汉字对应的数字  \n               好 啊 好\n        +      真 是 好\n------------------------\n        =    真 是 好 啊', 1, 2, 6, '', '2019-10-30 11:01:11');
INSERT INTO `em_operation` VALUES (3, '设计一个汉罗塔', 1, 2, 6, '', '2019-10-30 11:01:11');
INSERT INTO `em_operation` VALUES (4, '设计一个冒泡排序', 1, 2, 6, '', '2019-10-30 11:01:11');
INSERT INTO `em_operation` VALUES (5, '写一个函数找出一个整数数组中，第二小的数。', 1, 3, 2, '', '2019-10-30 11:01:26');
INSERT INTO `em_operation` VALUES (6, '请完成下载文件中题目一的效果', 1, 1, 1, 'public/uploads\\operation\\6\\20191030\\1129beb11842b669576a9b18241283e8.zip', '2019-10-30 11:02:06');
INSERT INTO `em_operation` VALUES (7, '请完成下载文件中题目二的效果', 1, 1, 1, 'public/uploads\\operation\\7\\20191030\\1b86fe6feb04a1432c04c3fe22502775.zip', '2019-10-30 11:02:06');
INSERT INTO `em_operation` VALUES (8, '题目：已知公司的员工表EMP(EID, ENAME, BDATE, SEX, CITY)，\n部门表DEPT（DID, DNAME, DCITY），\n工作表WORK（EID,DID,STARTDATE,SALARY）。各个字段说明如下：\nEID——员工编号，最多6个字符。例如A00001（主键）\nENAME——员工姓名，最多10个字符。例如SMITH\nBDATE——出生日期，日期型\nSEX——员工性别，单个字符。F或者M\nCITY——员工居住的城市，最多20个字符。例如：上海\nDID——部门编号，最多3个字符。例如 A01 （主键）\nDNAME——部门名称，最多20个字符。例如：研发部门\nDCITY——部门所在的城市，最多20个字符。例如：上海\nSTARTDATE——员工到部门上班的日期，日期型\nSALARY——员工的工资。整型。\n\n\n1、创建表EMP，DEPT，WORK，并定义表的主键和外键。\n2、向每个表中插入适当的数据。例如：插入三条部门的数据，分别为每个部门插入两条员工数据\n\nselect * from work;\n\n \nEID    DID     STARTDATE     SALARY\n------ --- ----------- ---------------------------------------\nA001   D03     1990/1/1        4040\nA002   D01   2010/1/1        3000\nA003   D02   2003/1/1        3500\nA005   D01   2001/9/1        1900\nA015   D01   2004/9/1        3100\nA014   D03   2000/9/1        5100\n \nselect * from dept;\n \nDID DNAME      DCITY\n--- ---------- --------------------\nD01 研发部     上海\nD02 发行部     上海\nD03 广告部     上海\n \nselect * from emp;\n \nEID    ENAME      BDATE  SEX    CITY\n------ ---------- ----------- --- ----', 1, 1, 4, '', '2019-10-30 11:02:21');
INSERT INTO `em_operation` VALUES (9, '使用shell写一个99乘法表', 1, 4, 5, '', '2019-10-30 11:02:23');
INSERT INTO `em_operation` VALUES (10, '设计一个函数，统计字符串中英文字母和数字各自出现的次数', 1, 4, 9, '', '2019-10-30 11:02:38');
INSERT INTO `em_operation` VALUES (11, '完成用户登录和用户注册功能（jsp+oracle/mysql完成）\n要求：\n1.界面自己设计（设计越好分数越高，图片自己准备，风格不限）\n2.数据库自行设计\n3.至少完成用户登录和用户注册功能，其他功能可自行添加，可以加分。', 1, 1, 8, '', '2019-10-30 11:02:40');
INSERT INTO `em_operation` VALUES (12, 'Cola公司的雇员分为以下若干类： \n• 4.1 ColaEmployee ：这是所有员工总的父类，属性：员工的姓名,员工的生日月份。方法：getSalary(int month) 根据参数月份来确定工资，如果该月员工过生日，则公司会额外奖励100 元。 \n• 4.2 SalariedEmployee ： ColaEmployee 的子类，拿固定工资的员工。属性：月薪 \n• 4.3 HourlyEmployee ：ColaEmployee 的子类，按小时拿工资的员工，每月工作超出160 小时的部分按照1.5 倍工资发放。属性：每小时的工资、每月工作的小时数 \n• 4.4 SalesEmployee ：ColaEmployee 的子类，销售人员，工资由月销售额和提成率决定。属性：月销售额、提成率 \n• 4.5 定义一个类Company，在该类中写一个方法，调用该方法可以打印出某月某个员工的工资数额，写一个测试类TestCompany,在main方法，把若干各种类型的员工放在一个ColaEmployee 数组里，并单元出数组中每个员工当月的工资。', 1, 8, 10, '', '2019-10-30 11:02:57');
INSERT INTO `em_operation` VALUES (13, '编写三个系别的学生类：英语系，计算机系，文学系（要求通过继承学生类） [选做题] \n各系有以下成绩： \n• 英语系： 演讲，期末考试，期中考试； \n• 计算机系：操作能力，英语写作，期中考试，期末考试； \n• 文学系： 演讲，作品，期末考试，期中考试; \n各系总分评测标准： \n• 英语系： 演讲 50% \n• 期末考试 25% \n• 期中考试 25% \n• 计算机系： 操作能力 40% \n• 英语写作 20% \n• 期末考试 20% \n• 期中考试 20% \n• 文学系： 演讲 35% \n• 作品 35% \n• 期末考试 15% \n• 期中考试 15% \n• 6.3定义一个可容纳5个学生的学生类数组，使用随机数给该数组装入各系学生的对象，然后按如下格式输出数组中的信息： \n• 学号:XXXXXXXX 姓名：XXX 性别：X 年龄：XX 综合成绩：XX', 1, 8, 10, '', '2019-10-30 11:02:57');
INSERT INTO `em_operation` VALUES (14, '设计一个单例模式', 1, 8, 10, '', '2019-10-30 11:02:57');
INSERT INTO `em_operation` VALUES (15, '设计一个函数，统计字符串中英文字母和数字各自出现的次数', 1, 8, 14, '', '2019-10-30 11:03:30');
INSERT INTO `em_operation` VALUES (16, '请完成下载文件中题目一的效果', 1, 7, 7, '', '2019-10-30 11:03:35');
INSERT INTO `em_operation` VALUES (17, '请完成下载文件中题目二的效果', 1, 7, 7, '', '2019-10-30 11:03:35');
INSERT INTO `em_operation` VALUES (18, 'Cola公司的雇员分为以下若干类： \n• 4.1 ColaEmployee ：这是所有员工总的父类，属性：员工的姓名,员工的生日月份。方法：getSalary(int month) 根据参数月份来确定工资，如果该月员工过生日，则公司会额外奖励100 元。 \n• 4.2 SalariedEmployee ： ColaEmployee 的子类，拿固定工资的员工。属性：月薪 \n• 4.3 HourlyEmployee ：ColaEmployee 的子类，按小时拿工资的员工，每月工作超出160 小时的部分按照1.5 倍工资发放。属性：每小时的工资、每月工作的小时数 \n• 4.4 SalesEmployee ：ColaEmployee 的子类，销售人员，工资由月销售额和提成率决定。属性：月销售额、提成率 \n• 4.5 定义一个类Company，在该类中写一个方法，调用该方法可以打印出某月某个员工的工资数额，写一个测试类TestCompany,在main方法，把若干各种类型的员工放在一个ColaEmployee 数组里，并单元出数组中每个员工当月的工资。', 1, 7, 13, '', '2019-10-30 11:03:55');
INSERT INTO `em_operation` VALUES (19, '编写三个系别的学生类：英语系，计算机系，文学系（要求通过继承学生类） [选做题] \n各系有以下成绩： \n• 英语系： 演讲，期末考试，期中考试； \n• 计算机系：操作能力，英语写作，期中考试，期末考试； \n• 文学系： 演讲，作品，期末考试，期中考试; \n各系总分评测标准： \n• 英语系： 演讲 50% \n• 期末考试 25% \n• 期中考试 25% \n• 计算机系： 操作能力 40% \n• 英语写作 20% \n• 期末考试 20% \n• 期中考试 20% \n• 文学系： 演讲 35% \n• 作品 35% \n• 期末考试 15% \n• 期中考试 15% \n• 6.3定义一个可容纳5个学生的学生类数组，使用随机数给该数组装入各系学生的对象，然后按如下格式输出数组中的信息： \n• 学号:XXXXXXXX 姓名：XXX 性别：X 年龄：XX 综合成绩：XX', 1, 7, 13, '', '2019-10-30 11:03:55');
INSERT INTO `em_operation` VALUES (20, '设计一个单例模式', 1, 7, 13, '', '2019-10-30 11:03:55');
INSERT INTO `em_operation` VALUES (21, 'Cola公司的雇员分为以下若干类： \n• 4.1 ColaEmployee ：这是所有员工总的父类，属性：员工的姓名,员工的生日月份。方法：getSalary(int month) 根据参数月份来确定工资，如果该月员工过生日，则公司会额外奖励100 元。 \n• 4.2 SalariedEmployee ： ColaEmployee 的子类，拿固定工资的员工。属性：月薪 \n• 4.3 HourlyEmployee ：ColaEmployee 的子类，按小时拿工资的员工，每月工作超出160 小时的部分按照1.5 倍工资发放。属性：每小时的工资、每月工作的小时数 \n• 4.4 SalesEmployee ：ColaEmployee 的子类，销售人员，工资由月销售额和提成率决定。属性：月销售额、提成率 \n• 4.5 定义一个类Company，在该类中写一个方法，调用该方法可以打印出某月某个员工的工资数额，写一个测试类TestCompany,在main方法，把若干各种类型的员工放在一个ColaEmployee 数组里，并单元出数组中每个员工当月的工资。', 1, 9, 12, '', '2019-10-30 11:04:11');
INSERT INTO `em_operation` VALUES (22, '编写三个系别的学生类：英语系，计算机系，文学系（要求通过继承学生类） [选做题] \n各系有以下成绩： \n• 英语系： 演讲，期末考试，期中考试； \n• 计算机系：操作能力，英语写作，期中考试，期末考试； \n• 文学系： 演讲，作品，期末考试，期中考试; \n各系总分评测标准： \n• 英语系： 演讲 50% \n• 期末考试 25% \n• 期中考试 25% \n• 计算机系： 操作能力 40% \n• 英语写作 20% \n• 期末考试 20% \n• 期中考试 20% \n• 文学系： 演讲 35% \n• 作品 35% \n• 期末考试 15% \n• 期中考试 15% \n• 6.3定义一个可容纳5个学生的学生类数组，使用随机数给该数组装入各系学生的对象，然后按如下格式输出数组中的信息： \n• 学号:XXXXXXXX 姓名：XXX 性别：X 年龄：XX 综合成绩：XX', 1, 9, 12, '', '2019-10-30 11:04:11');
INSERT INTO `em_operation` VALUES (23, '设计一个单例模式', 1, 9, 12, '', '2019-10-30 11:04:11');
INSERT INTO `em_operation` VALUES (24, '请完成下载文件中题目一的效果', 1, 3, 15, '', '2019-10-30 11:06:06');
INSERT INTO `em_operation` VALUES (25, '请完成下载文件中题目二的效果', 1, 3, 15, '', '2019-10-30 11:06:06');

-- ----------------------------
-- Table structure for em_role
-- ----------------------------
DROP TABLE IF EXISTS `em_role`;
CREATE TABLE `em_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '描述',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态:1是,0否',
  `add_time` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of em_role
-- ----------------------------
INSERT INTO `em_role` VALUES (1, '超级管理员', '最高权限', 0, '2019-10-15 09:35:44');
INSERT INTO `em_role` VALUES (4, '学生管理员', '描述', 1, '2019-10-10 21:46:08');
INSERT INTO `em_role` VALUES (6, '题库管理员', '描述', 1, '2019-10-11 21:59:05');
INSERT INTO `em_role` VALUES (8, '考试管理员', '啊', 1, '2019-10-17 12:08:30');
INSERT INTO `em_role` VALUES (9, '教师阅卷管理员', '教师和教务处阅卷', 1, '2019-10-31 22:41:33');

-- ----------------------------
-- Table structure for em_role_rule
-- ----------------------------
DROP TABLE IF EXISTS `em_role_rule`;
CREATE TABLE `em_role_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT 0 COMMENT '角色ID',
  `rule_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '权限ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of em_role_rule
-- ----------------------------
INSERT INTO `em_role_rule` VALUES (1, 6, '9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30');
INSERT INTO `em_role_rule` VALUES (4, 4, '1,2,3,4,5,6,7,8');
INSERT INTO `em_role_rule` VALUES (5, 8, '38,39,40,41,42,43,44,45,46,60,61,62,63');
INSERT INTO `em_role_rule` VALUES (6, 9, '38,60,61,62,63,64,65,66,67,68');

-- ----------------------------
-- Table structure for em_rule
-- ----------------------------
DROP TABLE IF EXISTS `em_rule`;
CREATE TABLE `em_rule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '权限名称',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '模型名称',
  `controller_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '控制器名称',
  `action_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '方法名称',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '上级权限ID 0表示顶级权限',
  `is_show` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否导航菜单显示1  显示 0 不显示',
  `add_time` datetime NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 69 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of em_rule
-- ----------------------------
INSERT INTO `em_rule` VALUES (1, '学生管理', 'admin', 'students', '#', 0, 1, '2019-10-17 10:58:59');
INSERT INTO `em_rule` VALUES (2, '学生列表', 'admin', 'students', 'index', 1, 1, '2019-10-17 11:02:28');
INSERT INTO `em_rule` VALUES (3, '学生添加', 'admin', 'students', 'add', 1, 0, '2019-10-17 11:02:48');
INSERT INTO `em_rule` VALUES (4, '学生编辑', 'admin', 'students', 'edit', 1, 0, '2019-10-17 11:03:09');
INSERT INTO `em_rule` VALUES (5, '学生删除', 'admin', 'students', 'del', 1, 0, '2019-10-17 11:03:18');
INSERT INTO `em_rule` VALUES (6, '学生列表回收站', 'admin', 'students', 'trash', 2, 1, '2019-10-17 16:12:29');
INSERT INTO `em_rule` VALUES (7, '学生列表回收站恢复', 'admin', 'students', 'recover', 2, 0, '2019-10-17 16:13:06');
INSERT INTO `em_rule` VALUES (8, '学生列表回收站删除', 'admin', 'students', 'remove', 2, 0, '2019-10-17 16:13:31');
INSERT INTO `em_rule` VALUES (9, '题库管理', 'admin', 'single,selection,judge,operaction', '#', 0, 1, '2019-10-17 10:34:23');
INSERT INTO `em_rule` VALUES (10, '单选题列表', 'admin', 'single', 'index', 9, 1, '2019-10-17 10:42:56');
INSERT INTO `em_rule` VALUES (11, '单选题添加', 'admin', 'single', 'add', 9, 0, '2019-10-17 10:43:37');
INSERT INTO `em_rule` VALUES (12, '单选题编辑', 'admin', 'single', 'edit', 9, 0, '2019-10-17 10:44:20');
INSERT INTO `em_rule` VALUES (13, '单选题删除', 'admin', 'single', 'del', 9, 0, '2019-10-17 10:44:40');
INSERT INTO `em_rule` VALUES (14, '单选题回收站', 'admin', 'single', 'trash', 10, 1, '2019-10-17 11:16:54');
INSERT INTO `em_rule` VALUES (15, '单选题回收站恢复', 'admin', 'single', 'recover', 10, 0, '2019-10-17 15:10:21');
INSERT INTO `em_rule` VALUES (16, '单选题回收站删除', 'admin', 'single', 'remove', 10, 0, '2019-10-17 15:11:08');
INSERT INTO `em_rule` VALUES (17, '多选题列表', 'admin', 'selection', 'index', 9, 1, '2019-10-17 10:45:49');
INSERT INTO `em_rule` VALUES (18, '多选题添加', 'admin', 'selection', 'add', 9, 0, '2019-10-17 10:46:44');
INSERT INTO `em_rule` VALUES (19, '多选题编辑', 'admin', 'selection', 'edit', 9, 0, '2019-10-17 10:47:16');
INSERT INTO `em_rule` VALUES (20, '多选题删除', 'admin', 'selection', 'del', 9, 0, '2019-10-17 10:47:33');
INSERT INTO `em_rule` VALUES (21, '多选题题回收站', 'admin', 'selection', 'trash', 17, 1, '2019-10-17 11:16:54');
INSERT INTO `em_rule` VALUES (22, '多选题回收站恢复', 'admin', 'selection', 'recover', 17, 0, '2019-10-17 15:10:21');
INSERT INTO `em_rule` VALUES (23, '多选题回收站删除', 'admin', 'selection', 'remove', 17, 0, '2019-10-17 15:11:08');
INSERT INTO `em_rule` VALUES (24, '判断题列表', 'admin', 'judge', 'index', 9, 1, '2019-10-17 10:50:33');
INSERT INTO `em_rule` VALUES (25, '判断题添加', 'admin', 'judge', 'add', 9, 0, '2019-10-17 10:52:52');
INSERT INTO `em_rule` VALUES (26, '判断题编辑', 'admin', 'judge', 'edit', 9, 0, '2019-10-17 10:53:09');
INSERT INTO `em_rule` VALUES (27, '判断题删除', 'admin', 'judge', 'del', 9, 0, '2019-10-17 10:53:24');
INSERT INTO `em_rule` VALUES (28, '判断题回收站', 'admin', 'judge', 'trash', 24, 1, '2019-10-17 11:16:54');
INSERT INTO `em_rule` VALUES (29, '判断题回收站恢复', 'admin', 'judge', 'recover', 24, 0, '2019-10-17 15:10:21');
INSERT INTO `em_rule` VALUES (30, '判断题回收站删除', 'admin', 'judge', 'remove', 24, 0, '2019-10-17 15:11:08');
INSERT INTO `em_rule` VALUES (31, '操作题列表', 'admin', 'operation', 'index', 9, 1, '2019-10-17 10:53:59');
INSERT INTO `em_rule` VALUES (32, '操作题添加', 'admin', 'operation', 'add', 9, 0, '2019-10-17 10:54:11');
INSERT INTO `em_rule` VALUES (33, '操作题编辑', 'admin', 'operation', 'edit', 9, 0, '2019-10-17 10:54:28');
INSERT INTO `em_rule` VALUES (34, '操作题删除', 'admin', 'operation', 'del', 9, 0, '2019-10-17 10:54:37');
INSERT INTO `em_rule` VALUES (35, '操作题题回收站', 'admin', 'operation', 'trash', 31, 1, '2019-10-17 09:45:28');
INSERT INTO `em_rule` VALUES (36, '操作题回收站恢复', 'admin', 'operation', 'recover', 31, 0, '2019-10-17 10:06:14');
INSERT INTO `em_rule` VALUES (37, '操作题回收站删除', 'admin', 'operation', 'remove', 31, 0, '2019-10-10 22:38:11');
INSERT INTO `em_rule` VALUES (38, '考试管理', 'admin', 'major,subject,scroe', '#', 0, 1, '2019-10-10 22:38:11');
INSERT INTO `em_rule` VALUES (39, '专业列表', 'admin', 'major', 'index', 38, 1, '2019-10-15 10:05:55');
INSERT INTO `em_rule` VALUES (40, '专业添加', 'admin', 'major', 'add', 38, 0, '2019-10-10 22:51:37');
INSERT INTO `em_rule` VALUES (41, '专业编辑', 'admin', 'major', 'edit', 38, 0, '2019-10-10 22:52:11');
INSERT INTO `em_rule` VALUES (42, '专业删除', 'admin', 'major', 'del', 38, 0, '2019-10-11 08:41:45');
INSERT INTO `em_rule` VALUES (43, '科目列表', 'admin', 'subject', 'index', 38, 1, '2019-10-17 09:21:46');
INSERT INTO `em_rule` VALUES (44, '科目添加', 'admin', 'subject', 'add', 38, 0, '2019-10-17 09:26:20');
INSERT INTO `em_rule` VALUES (45, '科目编辑', 'admin', 'subject', 'edit', 38, 0, '2019-10-17 09:26:59');
INSERT INTO `em_rule` VALUES (46, '科目删除', 'admin', 'subject', 'del', 38, 0, '2019-10-17 09:26:59');
INSERT INTO `em_rule` VALUES (47, '权限管理', 'admin', 'admin,role,rule', '#', 0, 1, '2019-10-17 09:42:42');
INSERT INTO `em_rule` VALUES (48, '管理员列表', 'admin', 'admin', 'index', 47, 1, '2019-10-17 09:45:28');
INSERT INTO `em_rule` VALUES (49, '管理员添加', 'admin', 'admin', 'add', 47, 0, '2019-10-17 09:46:28');
INSERT INTO `em_rule` VALUES (50, '管理员编辑', 'admin', 'admin', 'edit', 47, 0, '2019-10-17 09:50:52');
INSERT INTO `em_rule` VALUES (51, '管理员删除', 'admin', 'admin', 'del', 47, 0, '2019-10-17 09:52:07');
INSERT INTO `em_rule` VALUES (52, '角色列表', 'admin', 'role', 'index', 47, 1, '2019-10-17 09:55:04');
INSERT INTO `em_rule` VALUES (53, '角色添加', 'admin', 'role', 'add', 47, 0, '2019-10-17 10:01:22');
INSERT INTO `em_rule` VALUES (54, '角色编辑', 'admin', 'role', 'edit', 47, 0, '2019-10-17 10:04:43');
INSERT INTO `em_rule` VALUES (55, '角色删除', 'admin', 'role', 'del', 47, 0, '2019-10-17 10:04:57');
INSERT INTO `em_rule` VALUES (56, '权限列表', 'admin', 'rule', 'index', 47, 1, '2019-10-17 10:06:14');
INSERT INTO `em_rule` VALUES (57, '权限添加', 'admin', 'rule', 'add', 47, 0, '2019-10-17 10:06:33');
INSERT INTO `em_rule` VALUES (58, '权限编辑', 'admin', 'rule', 'edit', 47, 0, '2019-10-17 10:06:47');
INSERT INTO `em_rule` VALUES (59, '权限删除', 'admin', 'rule', 'del', 47, 0, '2019-10-17 10:07:14');
INSERT INTO `em_rule` VALUES (60, '教师阅卷', 'admin', 'scroe', 'teacherIndex', 38, 1, '2019-10-23 14:40:31');
INSERT INTO `em_rule` VALUES (61, '教师阅卷回收站', 'admin', 'scroe', 'trash', 60, 1, '2019-10-23 14:40:34');
INSERT INTO `em_rule` VALUES (62, '教师阅卷回收站恢复', 'admin', 'scroe', 'recover', 60, 0, '2019-10-23 14:45:31');
INSERT INTO `em_rule` VALUES (63, '教师阅卷回收站删除', 'admin', 'scroe', 'remove', 60, 0, '2019-10-23 14:45:33');
INSERT INTO `em_rule` VALUES (64, '教务处阅卷', 'admin', 'scroe', 'officeIndex', 38, 1, '2019-10-25 13:49:54');
INSERT INTO `em_rule` VALUES (65, '教师阅卷删除', 'admin', 'scroe', 'del', 38, 0, '2019-10-26 17:54:32');
INSERT INTO `em_rule` VALUES (66, '教师阅卷功能', 'admin', 'scroe', 'teacherRead', 38, 0, '2019-10-26 17:57:11');
INSERT INTO `em_rule` VALUES (67, '教务处阅卷功能', 'admin', 'scroe', 'officeRead', 38, 0, '2019-10-26 17:57:34');
INSERT INTO `em_rule` VALUES (68, '教务处阅卷删除', 'admin', 'scroe', 'officedel', 38, 0, '2019-10-31 15:15:48');

-- ----------------------------
-- Table structure for em_selection
-- ----------------------------
DROP TABLE IF EXISTS `em_selection`;
CREATE TABLE `em_selection`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id编号',
  `selection_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '题目',
  `A` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'A选项',
  `B` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'B选项',
  `C` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'C选项',
  `D` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'D选项',
  `right_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '正确答案',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态:1是,0否',
  `major_id` int(10) NOT NULL COMMENT '专业id',
  `subject_id` int(10) NOT NULL COMMENT '科目id',
  `add_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 316 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '多选题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of em_selection
-- ----------------------------
INSERT INTO `em_selection` VALUES (1, '在Oracle中，下面关于函数描述正确的是', 'SYSDATE函数返回Oracle服务器的日期和时间', 'ROUND数字函数按四舍五入原则返回指定十进制数最靠近的整数', 'ADD_MONTHS日期函数返回指定两个月份天数的和', 'SUBSTR函数从字符串指定的位置返回指定长度的子串', 'AD', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_selection` VALUES (2, 'BEGIN\nINSERT INTO employee(salary,last_name,first_name)\nVALUES(35000,’Wang’,\'Fred’);\nSAVEPOINT save_a;\nINSERT INTO employee(salary,last_name,first_name)\nVALUES(40000,’Woo’,\'David’);\nSAVEPOINT save_b;\nDELETE FROM employee WHERE dept_no=10;\nSAVEPOINT save_c', 'DELETE FROM employee WHERE dept_no=10;', 'INSERT INTO employee(salary,last_name,first_name)VALUES(32000,’Chung’,\'Mike’);', 'INSERT INTO employee(salary,last_name,first_name)VALUES(35000,’Wang’,\'Fred’);', 'INSERT INTO employee(salary,last_name,first_name)VALUES(40000,’Woo’,\'David’);', 'CD', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_selection` VALUES (3, 'Oracle的数据库由（）类型的文件组成', '日志文件', '控制文件', '数据文件', '配置文件', 'ABC', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_selection` VALUES (4, '在哪种情况下，会用到外连接查询？', '要连接的表具有NOT NULL列', '要连接的表只有匹配的数据', '要连接的列具有NULL值', '要连接的表具有匹配和不匹配的数据', 'CD', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_selection` VALUES (5, '关于where和having子句说法正确的有？', 'WHERE子句可用于限制行和组', 'WHERE子句只能用于限制行', 'HAVING子句可用于限制行和组', 'HAVING子句只能用于限制组', 'BD', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_selection` VALUES (6, '关于子查询下列叙述正确的有？', '单行子查询只能检索一个列和一行', '单行子查询只能检索一行，但能检索许多列', '多行子查询可以检索多行、多列', '单行子查询可以使用IN运算符', 'BCD', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_selection` VALUES (7, '我们需要在employee数据表中查出工号emp_no为29346,24323的记录，可以使用的SQL语句有？', 'SELECT * FROM employee WHERE emp_no=29346 OR emp_no=24323 ；', 'SELECT * FROM employee WHERE emp_no IN(29346,24323)', 'SELECT * FROM employee WHERE emp_no=29346 AND emp_no=24323；', 'SELECT * FROM employee WHERE emp_no  NOT IN(29346,24323)=\'dl\')；', 'AB', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_selection` VALUES (8, '下列查询姓张的学生的语句不正确的是？', 'select * from 表名 where 姓名 = \'%张%\'', 'select * from 表名 where 姓名 like \'张\'', 'select * from 表名 where 姓名 like \'张%\'', 'select * from 表名 where 姓名 = \'张\'', 'ABD', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_selection` VALUES (9, '数据库设计里，视图（View)可以使得我们为一个或多个数据表定义一个特殊的表现形式，视图在行为上与数据表没啥特别区别，可以使用基本的select,insert,update等命令修改数据，但对于update操作，也有一些限制，下面那些是受限的原因', '初始View定义的Select语句里如果包含了GROUP BY,DISTINCT,LIMIT或HAVING等命令时', '如果视图里数据来自多张字表时', '如果视图里缺少主键索引，唯一索引，外键约束条件锁涉及的全部数据列时', '当Creat View之后又使用Replace View对已存在视图做了更名操作后', 'AB', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_selection` VALUES (10, '在Oracle中，下面关于函数描述正确的是', 'SYSDATE函数返回Oracle服务器的日期和时间', 'ROUND数字函数返回指定十进制数最靠近的整数。', 'ADD_MONTHS日期函数返回指定两个月份天数的和', 'SUBSTR函数从字符串指定的位置返回指定长度的子串。', 'AD', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_selection` VALUES (11, '某查询语句运行后返回的结果集为： 1班 72 2班 75则可能的查询语句是：(  )', 'SELECT class, AVG(score) FROM test WHERE class&lt;3', 'SELECT class, AVG(score) FROM test WHERE class&lt;3 GROUP BY class', 'SELECT class, AVG(score) FROM test GROUP BY class HAVING class&lt;3', 'SELECT DISTINCT(class), AVG(score) FROM test WHERE class&lt;3', 'BC', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_selection` VALUES (12, '观察STUDENT表的表结构：\nSTD_ID     NUMBER(4)\nCOURSE_ID     VARCHAR2(10)\nSTART_DATE     DATE\nEND_DATE     DATE\n下面聚合函数的使用正确的有？()', 'SUM(start_date)', 'AVG(start_date)', 'COUNT(start_date)', 'MIN(start_date)', 'CD', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_selection` VALUES (13, '哪些字段适合建立索引?( )', '在select子句中的字段', '外键字段', '主键字段', '在where子句中的字段', 'BCD', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_selection` VALUES (14, '下列那组部件是Scratch中提供的', '动作部件', '控制部件', '外观部件 ', '数学部件', 'ABC', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (15, '想让小猫一直在舞台上移动，不应采用下列哪种程序结构?', '重复执行100次', '重复执行', '如果……那么', '如果……那么……否则', 'ACD', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (16, '想实现背景切换时，不可采用的下列哪一条指令？', '将背景切换为……', '清除所有图形特效', '当背景切换到……', '当收到消息1', 'BCD', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (17, '控制画笔移动时，下列哪一条语句不是向左移动？', '面向90°方向', '面向-90°方向', '面向0°方向', '面向180°方向', 'ACD', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (18, '在程序框图设计中下列哪种语句是基本语句？', '顺序语句', '条件语句', '循环语句', '输入输出语句', 'ABD', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (19, '在Scratch的声音设计中，“弹奏音符60”对应中央C(哆)，下列哪一条语句不是发出中音G(索)？', '弹奏音符62', '弹奏音符64', '弹奏音符65', '弹奏音符67', 'ABC', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (20, 'Scratch中的背景设计中，有下列哪种类别的命令？', '运动', '外观', '声音', '画笔', 'BCD', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (21, '要使Scratch中的角色在舞台上绘图，不应选用下列哪一条命令？', '清空并抬笔', '落笔并移动10步', '将画笔颜色设定为0', '将画笔粗细增加1', 'ACD', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (22, '下列不可以用于接收键盘输入的指令是？', '询问……并等待', '说……2秒', '连接……和……', '在……之前一致等待', 'BCD', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (23, '想使用绘制好的图画作为Scratch的背景，不应选择下列哪一项操作？', '从背景库中选择背景', '在造型区绘制新背景', '从本地文件中上传背景', '拍摄照片当作背景', 'ABD', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (24, '要使Scratch中的角色切换造型，可选用下列哪一条指令？', '将角色的大小增加10', ' 当作为克隆体启动时', '碰到边缘就反弹', '下一个造型', 'ABC', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (25, 'Scratch中角色的旋转模式，错误的选项是？', '1', '2', '3', '4', 'ABD', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (26, '舞台是创作、演示程序的场地。舞台宽( )个单位,高360个单位。舞台的中间位置为坐', '480', '240', '500', '400', 'BCD', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (27, 'Scratch以角色为编程对象,以部件——积件式编程语言为编程工具,共8种部件,其中不属于，控制人物运动的是（）', '动作', ' 控制 ', '外观 ', '数字和逻辑运算', 'BCD', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (28, '开始运行Scratch程序，不应采用下列哪一条指令？', '当红旗被点击时', '当绿旗被点击时', '当黄旗被点击时', '当蓝旗被点击时', 'ACD', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (29, '下列菜单不可以设置Scratch使用界面的语言？', '文件菜单', '编辑菜单', '地球仪菜单', '问号菜单', 'ACD', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (30, 'Scratch的文件在保存时，一般不建议的扩展名是？', 'TXT', 'EXE', 'HTML', 'SB2', 'ABD', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (31, '下列哪一种方式是Scratch角色造型的设计方式？', '对着麦克风录入声音 ', '从角色库中选取角色', '在造型区绘制新角色', '从本地文件中上传角色', 'BCD', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (32, '在Scratch中,舞台是创作和演示程序的场地，其坐标原点不位于舞台的是（）', '左上角 ', '左下角', ' 右下角', '中心', 'ABC', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (33, '在Scratch中,( )部件不是用来为角色设置不同的外观效果', '动作 ', '外观', ' 控制', ' 画笔', 'ABC', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_selection` VALUES (34, '不是C语言程序的基本单位是', '程序行', '函数', '语句', '字符', 'ACD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (35, '以下说法中不正确的是', 'C语言程序中的main()函数必须放在程序的开始部分', 'C语言程序总是从第一个函数开始执行', '在C语言程序中,要调用的函数必须在main()函数中定义', 'C语言程序总是从main()函数开始执行', 'ABC', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (36, '以下说法中不正确的是', 'C++语言程序总是从第一个函数开始执行', 'C++语言程序总是从main()函数开始执行', 'C++语言程序中的main()函数必须放在程序的开始部分', '在C++语言程序中,要调用的函数必须在main()函数中定义数据类型', 'ACD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (37, '在C语言提供的不合法关键字是', 'Case', 'swicth', 'cher', 'default', 'ABC', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (38, '请选出不可用作C语言用户标识符的选项', 'a3_b3 _123 IF', 'For -abc Case', 'void define WORD', '2a DO sizeof', 'BCD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (39, 'C语言提供的非法的数据类型关键字是', 'short', 'Char', 'Double', 'integer', 'BCD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (40, '以下为不合法的十六进制数是', '0x2A', '0x11Au', '0X0', '3A', 'BCD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (41, '在C语言中,不合法的长整型常数是', '2.1869e10', '0L', '4962710', '0.054838743', 'ACD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (42, '在C++语言中,不合法的字符常量是', '\'\\x43\'', '\'ab\'', '\'\\084\'', '&quot;\\0&quot;', 'BCD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (43, '下列正确的转义字符是', '\' \\ \'', '\'\\0\'', '\'\\\\\'', '\'074\'', 'BCD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (44, '下列运算符中,优先级相同的是', '~', '%', '/', '&gt;', 'BC', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (45, '若变量已正确定义并赋值,下面不符合C语言语法的表达式是', 'a:=b+1', 'a=b=c+2', 'int 18.5%3', 'a=a+7=c+b', 'ACD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (46, '下面的表达式中值为0的是', '3/5', '5&gt;&gt;3', '! 3', '5%3', 'ABC', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (47, '已知x,y,z是整型变量,则下列选项中正确的是', 'if (x&amp;&amp;y) cout&lt;&lt;&quot;x&amp;&amp;y&quot;;', 'if (x=y) cout&lt;&lt;&quot;x=y&quot;;', 'if (x#y) cout&lt;&lt;&quot;x#y&quot;;', 'if(x&lt;&gt;y) cout&lt;&lt;&quot;x&lt;&gt;y&quot;;', 'ABD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (48, '在下列选项中,正确的赋值语句是', 'k=i==j;', 'a=b+c=1;', 'n1=(n2=(n3=0));', '++t;', 'ACD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (49, '下列语句中不符合C语言语法的赋值语句是', 'a=7+b+c=a+7;', 'a=7+b++=a+7;', 'a=7+b,c=a+7;', 'a=7+b,b++,a+7', 'ABD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (50, '请选出不合法的C语言赋值语句', 'i++;', 'a=58,b=58', 'k=int(a+b);', 'a=b=58', 'BD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (51, '请选出不合法的C++语言赋值语句', 'i++;', 'a=a mod b', 'a=/b;', 'k=int(a+b);', 'BC', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (52, '以下程序段执行后,a的值为1的是', 'int a=0,b=1,c; b=c;b=a;c=a;', 'int a=0,b=1; a=a+b;b=a-b;a=a-b;', 'int a=0,b=1,c; c=a;a=b;b=c;', 'int a=0,b=1,c; c=a;b=a;b=c;', 'BC', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (53, 'C++语言中,下面的描述不正确的是', 'do-while语句构成的循环,当while语句中的表达式值为非零时结束循环', 'do-while语句构成的循环必须用break语句才能退出', '不能使用do-while语句构成的循环', 'do-while语句构成的循环,当while语句中的表达式值为零时结束循环数组', 'ABC', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (54, '以下不能对数组a进行正确初始化的语句是', 'int a[]={};', 'int a[3]={1, 2};', 'int a[3]={0,1,2,3};', 'int a[]={1};', 'AC', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (55, '不合法的数组定义是', 'char a[]={0,1,2,3,4,5};', 'int a[]=&quot;string&quot;;', 'int a[5]={0,1,2,3,4,5};', 'vhst s=&quot;string&quot;;', 'BCD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (56, '下列关于数组初始化的说法正确的是', '若对数组a定义:&quot;static int x[10];&quot;,则数组元素值均为0', '&quot;int x[10]={1,2,3,4,5,6,7,8,9};&quot;表示x[9]元素值为9', '对于&quot;int x[10];&quot;它的元素初值是不确定的', '&quot;int x[10]={1,2,3,4,5};&quot;是不合法的,因为数组长度为10,而初始值仅有5个', 'AC', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (57, '能把字符串:&quot;Hello!&quot;赋给数组b的语句是', 'char b[10];strcpy(b,&quot;Hello!&quot;);', 'char b[10]={\'H\',\'e\',\'l\',\'l\',\'o\',\'!\'};', 'char b[10]=&quot;Hello!&quot;;', 'char b[10];b=&quot;Hello!&quot;;', 'ABC', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (58, '若有以下的定义:&quot;int x[2][3];&quot;,能正确表示x数组元素地址的表达式是', '&amp;x[2][3]', 'x[0]', 'x[2]', 'x[1]', 'BD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (59, '以下定义中,不正确的是', 'int x[3,4];', 'int x[1+2][3];', 'int x(3,4)', 'int x[ ][4];', 'ACD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (60, '若有说明&quot;int x=3, y[3][3];&quot;,则对y数组元素的非法引用是', 'y[0][x]', 'y[x][2]', 'y[2][1+1]', 'y[1][3-x]', 'AB', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (61, '若x是整型变量,pb是基类型为整型的指针变量,则不正确的赋值表达式是', '*pb=&amp;x;', 'pb=&amp;x', 'pb=x;', '*pb=*x', 'ACD', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (62, '下面各语句行中,不能正确进行赋字符串操作的语句行是', 'char *s; scanf(&quot;%s&quot;,s);', 'char st[4][5]={&quot;ABCDE&quot;};', 'char s[5]={\'A\',\'B\',\'C\',\'D\',\'E\'};', 'char *s; s=&quot;ABCDE&quot;;', 'BC', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_selection` VALUES (63, '在css中，下面属于box模型属性的有', 'font', 'margin', 'padding', 'border', 'BCD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (64, '下列网页设计的说法中正确的是', '冷暖色调在均匀使用时不宜靠近', '纯度适宜的两种颜色事宜放在一起', '整个页面中最好有一个色调', '抽象线条的构图很容易造成重心不稳', 'ACD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (65, '关于IFrame表述正确的有', '通过IFrame，网页可以嵌入其他网页内容，并可以动态更改', '在相同域名下，内嵌的IFrame可以获取外层网页的对象', '在相同域名下，外层网页脚本可以获取IFrame网页内的对象', '可以通过脚本调整IFrame的大小', 'ABCD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (66, '关于HTML5说法错误的是', 'HTML5只是对HTML4的一个简单升级', '所有浏览器都支持HTML5', 'HTML5新增了离线缓存机制', 'HTML5书写格式要求必须按照书写规范', 'ABD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (67, '下列哪些是设置有关边框的属性', 'border-color', 'border-back', 'border-style', 'border-width', 'ACD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (68, '我们想要将页面中的文本采用项目符号的形式予以显示，\n采用哪些标记组合可以达到我们的要求？', '&lt;P&gt;', '&lt;UL&gt;', '&lt;BR&gt;', '&lt;LI&gt;', 'BD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (69, '下面选项中，( )可以设置网页中某个标签的右外边距为10像素。', 'Margin:0 10px;', 'Margin:10px 0 0 0;', 'Margin:0 10 0 0px;', 'Padding-right:10px;', 'AC', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (70, '在制作HTML页面时，页面的布局技术主要分为', '框架布局', '表格布局', 'DIV层布局', 'CSS3 布局', 'ABC', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (71, '在CSS语言下列哪些选项是背景图像的属性（）', '背景重复', '背景附件', '纵向排列', '背景位置', 'ABCD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (72, 'CSS中的选择器包括（）', '超文本标记选择器', '类选择器', '标签选择器', 'ID选择器', 'BCD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (73, 'CSS文本属性中，文本对齐属性的取值有（）', 'auto', 'justify', 'center', 'right', 'BCD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (74, 'CSS中的BOX的padding属性包括的属性有（）', '上填充', '地填充', '填充', '左填充', 'ABD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (75, 'CSS中，盒模型的属性包括（）', 'font', 'margin', 'padding', 'visible', 'BC', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (76, '下面关于CSS的说法正确的有（）', 'CSS可以控制网页背景图片', 'margin属性的属性值可以是百分比', '整个BODY可以作为一个BOX', '对于中文可以使用word-spacing', 'ABC', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (77, 'CSS中的选择器包括( )', '超文本标记选择器', '类选择器', '标签选择器', 'ID选择器', 'BCD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (78, '关于CSS基本语法说法正确的是（）', '属性必须要包含{}号之中', '属性和属性值之间用等号连接', '在有多个属性时，用“：”进行区分', '如果一个属性有几个值，则每个属性值之间用分号分隔开', 'AC', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (79, '关于样式表的优先级说法正确的是（）', '直接定义在标记上的CSS样式级别最高', '内部样式表次之', '外部样式表级别最低', '当样式中属性重复时，先设的属性起作用', 'ABC', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (80, '关于内容，结构和表现说法正确的是（）', 'CSS可以控制网页背景颜色', 'position可以实现盒子模型精确定位', '字体大小的单位可以使CM', '一个BOX只能通过float进行定位', 'ABC', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (81, '以下属于超级链接的是？', '文本链接', '锚链接', '图像链接', '卯链接', 'ABC', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (82, '以下有关按钮说法中，正确的是：', '可以作为图像作为提交按钮', '可以用图像作为重置按钮', '可以控制提交按钮的显示文字', '可以控制重置按钮的显示文字', 'ACD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (83, '创建选项菜单不应使用以下哪些标记符？', 'select和option', 'input和label', 'input', 'input和option', 'BCD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (84, '下列关于CSS的说法正确的一项是', 'CSS可以控制网页背景图片', 'margin属性的属性值可以是百分比', '整个BODY可以作为一个BOX', '对于中文可以使用word-spacing属性对字间距进行调整', 'ABC', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (85, '以下说法正确的是？', '网页的本质就是HTML源代码', '网页就是主页', '使用“记事本”编辑网页时，应将保存为.htm或者.html后缀', '本地网站通常就是一个完整的文件夹', 'ACD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (86, '以下说法错误的是？', 'p标记符和br标记符作用是一样的', '多个p标记符可以产生多个空行', '多个br标记符可以产生多个空行', 'p标记符的结束标记符通常不可以省略', 'ABD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (87, '下面关于CSS表述正确的是()', 'CSS是一种制作网页的新技术，现在已经为大多数的浏览器所支持，成为网页设计必不可少的工具之一。', '层叠样式表是HTML的辅助工具，缺点是设计者设计的网页缺少动感，网页内容的排版布局上也有很多困难', '使用CSS能够简化网页的格式代码，加快下载显示的速度，也减少了需要上传的代码数量，大大减少了重复劳动的工作量。', 'CSS是Cascading Stylesheets的缩写，中文意思是层叠样式表', 'ACD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (88, '以下有关列表的说法中,正确的是', '在创建列表时,LI 标记符的结束标记符不可省略。', '指定嵌套列表时,也可以具体指定项目符号或编号样式。', '无序列表应使用 UL 和 LI 标记符进行创建。', '有序列表和无序列表可以互相嵌套。', 'BCD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (89, '以下标记符中,没有对应的结束标记的是', 'body', 'br', 'html', 'input', 'BD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (90, '关于表格的描述不正确的一项是。', '在单元格内不能继续插入整个表格', '可以同时选定不相邻的单元格', '粘贴表格时,可以粘贴表格的内容', '在网页中,水平方向可以并排多个独立的表格', 'CD', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (91, '下面是HTML表格标记的是', '&lt;table&gt;', '&lt;tr&gt;', '&lt;td&gt;', '&lt;from&gt;', 'ABC', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_selection` VALUES (92, '在Oracle中，下面关于函数描述正确的是', 'SYSDATE函数返回Oracle服务器的日期和时间', 'ROUND数字函数按四舍五入原则返回指定十进制数最靠近的整数', 'ADD_MONTHS日期函数返回指定两个月份天数的和', 'SUBSTR函数从字符串指定的位置返回指定长度的子串', 'AD', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_selection` VALUES (93, 'BEGIN\nINSERT INTO employee(salary,last_name,first_name)\nVALUES(35000,’Wang’,\'Fred’);\nSAVEPOINT save_a;\nINSERT INTO employee(salary,last_name,first_name)\nVALUES(40000,’Woo’,\'David’);\nSAVEPOINT save_b;\nDELETE FROM employee WHERE dept_no=10;\nSAVEPOINT save_c', 'DELETE FROM employee WHERE dept_no=10;', 'INSERT INTO employee(salary,last_name,first_name)VALUES(32000,’Chung’,\'Mike’);', 'INSERT INTO employee(salary,last_name,first_name)VALUES(35000,’Wang’,\'Fred’);', 'INSERT INTO employee(salary,last_name,first_name)VALUES(40000,’Woo’,\'David’);', 'CD', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_selection` VALUES (94, 'Oracle的数据库由（）类型的文件组成', '日志文件', '控制文件', '数据文件', '配置文件', 'ABC', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_selection` VALUES (95, '在哪种情况下，会用到外连接查询？', '要连接的表具有NOT NULL列', '要连接的表只有匹配的数据', '要连接的列具有NULL值', '要连接的表具有匹配和不匹配的数据', 'CD', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_selection` VALUES (96, '关于where和having子句说法正确的有？', 'WHERE子句可用于限制行和组', 'WHERE子句只能用于限制行', 'HAVING子句可用于限制行和组', 'HAVING子句只能用于限制组', 'BD', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_selection` VALUES (97, '关于子查询下列叙述正确的有？', '单行子查询只能检索一个列和一行', '单行子查询只能检索一行，但能检索许多列', '多行子查询可以检索多行、多列', '单行子查询可以使用IN运算符', 'BCD', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_selection` VALUES (98, '我们需要在employee数据表中查出工号emp_no为29346,24323的记录，可以使用的SQL语句有？', 'SELECT * FROM employee WHERE emp_no=29346 OR emp_no=24323 ；', 'SELECT * FROM employee WHERE emp_no IN(29346,24323)', 'SELECT * FROM employee WHERE emp_no=29346 AND emp_no=24323；', 'SELECT * FROM employee WHERE emp_no  NOT IN(29346,24323)=\'dl\')；', 'AB', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_selection` VALUES (99, '下列查询姓张的学生的语句不正确的是？', 'select * from 表名 where 姓名 = \'%张%\'', 'select * from 表名 where 姓名 like \'张\'', 'select * from 表名 where 姓名 like \'张%\'', 'select * from 表名 where 姓名 = \'张\'', 'ABD', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_selection` VALUES (100, '数据库设计里，视图（View)可以使得我们为一个或多个数据表定义一个特殊的表现形式，视图在行为上与数据表没啥特别区别，可以使用基本的select,insert,update等命令修改数据，但对于update操作，也有一些限制，下面那些是受限的原因', '初始View定义的Select语句里如果包含了GROUP BY,DISTINCT,LIMIT或HAVING等命令时', '如果视图里数据来自多张字表时', '如果视图里缺少主键索引，唯一索引，外键约束条件锁涉及的全部数据列时', '当Creat View之后又使用Replace View对已存在视图做了更名操作后', 'AB', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_selection` VALUES (101, '在Oracle中，下面关于函数描述正确的是', 'SYSDATE函数返回Oracle服务器的日期和时间', 'ROUND数字函数返回指定十进制数最靠近的整数。', 'ADD_MONTHS日期函数返回指定两个月份天数的和', 'SUBSTR函数从字符串指定的位置返回指定长度的子串。', 'AD', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_selection` VALUES (102, '某查询语句运行后返回的结果集为： 1班 72 2班 75则可能的查询语句是：(  )', 'SELECT class, AVG(score) FROM test WHERE class&lt;3', 'SELECT class, AVG(score) FROM test WHERE class&lt;3 GROUP BY class', 'SELECT class, AVG(score) FROM test GROUP BY class HAVING class&lt;3', 'SELECT DISTINCT(class), AVG(score) FROM test WHERE class&lt;3', 'BC', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_selection` VALUES (103, '观察STUDENT表的表结构：\nSTD_ID     NUMBER(4)\nCOURSE_ID     VARCHAR2(10)\nSTART_DATE     DATE\nEND_DATE     DATE\n下面聚合函数的使用正确的有？()', 'SUM(start_date)', 'AVG(start_date)', 'COUNT(start_date)', 'MIN(start_date)', 'CD', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_selection` VALUES (104, '哪些字段适合建立索引?( )', '在select子句中的字段', '外键字段', '主键字段', '在where子句中的字段', 'BCD', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_selection` VALUES (105, '与进程管理有关的命令是', 'fdisk', 'kill', 'pstree', 'ps', 'BCD', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (106, '下列那一个指令可以删除目录', 'ls', 'cd', 'rm', 'rmdir', 'CD', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (107, '局域网的网络设备通常有', '交换机', '路由器', '网桥', '双绞线', 'ABCD', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (108, '下列哪些指令可以查找文件', 'find', 'grep', 'whereis', 'cat', 'ABC', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (109, '关于“GNOME”说法正确的是', '一个用户界面友好的桌面环境，能够使用户很容易地使用和配置他们的计算机', '包括一个面板（用来启动应用程序和显示状态），一个桌面（存放数据和应用程序的地方），一套标准的桌面工具和应用程序，和一套与其他人相互协同工作的协议集', '其他操作系统的用户在使用GNOME不能提供的强大的图形驱动环境', '是一个操作命令', 'AB', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (110, '如果要在一台Linux系统上配置WEB服务器，要可以支持动态页面，需要安装的软件是', 'Apache', 'httpd', 'M ySql', 'PHP', 'ACD', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (111, 'Linux的基本文件类型有哪几种', '普通文件', '目录文件', '链接文件', '特殊文件', 'ABCD', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (112, '常见的域名服务器种类有', '根（root）服务器', '主域名服务器（Primary Servers）', '辅助域名服务器（Secondary Servers）', '专用缓存域名服务器（Cache-only servers）', 'ABCD', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (113, '用来显示文件内容的命令有', 'cat', 'more', 'less', 'head', 'ABCD', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (114, 'linux中的用户类型有', '超级用户', '高级用户', '普通用户', '伪用户', 'ACD', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (115, '可以作为启动设备是', '硬盘', '光盘驱动器', '软盘', 'USB盘', 'ABCD', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (116, ' 对于pwd命令，下列哪个是错误的？', '显示当前工作目录', '显示最近一个处理的文件', '关闭系统', '显示家目录', 'BCD', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (117, '以下哪些是LINUX的文件类型', '文本文件', '目录文件', '批处理文件', '设备文件', 'ABD', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (118, '命令cp和mcopy在Linux下的功能是', 'cp具有文件拷贝的功能', 'mcopy也具有文件拷贝的功能', '软驱没有加载的情况下，可以用mcopy直接拷贝软盘中数据', '软驱没有加载的情况下，可以用cp直接拷贝软盘中数据', 'ABC', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (119, '以下哪个命令可以一次一页地显示一个大的文本文件', 'more', 'cat', 'type', 'less', 'AD', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (120, 'Linux的每类用户拥有三种权限，分别是', 'r', 'w', 'x', 'm', 'ABC', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (121, 'Linux的正常关机命令可以是', ' shutdown -h now', ' shutdown -r now ', 'halt', 'reboot', 'AC', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (122, '系统用户账号信息被储存在下面那些文件', '/etc/fstab', '/etc/shadow', '/etc/passwd', '/etc/inittab', 'BC', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (123, '假设用户当前目录是:/home/xu,现需要返回到用户主目录.则下面几种命令可以实现,', 'cd $HOME', 'CD HOME', 'CD', 'CD ~', 'AD', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (124, '以下哪几种是vi的工作模式', '命令模式', '删除模式', '编辑模式', '末行模式', 'ACD', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (125, '在Linux操作系统中/etc/passwd文件包括的基本选项有', '用户ID', '加密的密码值', '用户登录shell', '用户登录目录', 'ACD', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_selection` VALUES (126, '关于a  or  b的描述正确的是。', '若a=True  b=True  则 a or b ==True', '若a=True  b=False  则 a or b ==True', '若a=True  b=True  则 a or b ==False', '若a=False  b=False  则 a or b ==False', 'ABD', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (127, '下列哪些项是Python中对文件的读取操作：', 'read', 'readall', 'readlines', 'readline', 'ACD', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (128, '在读写文件之前，必须通过以下些方法不能创建文件对象：', 'create', 'folder', 'File', 'open', 'ABC', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (129, '下列哪些项类型数据是可变化的：', '集合', '字典', '元组', '列表', 'ABD', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (130, '以下那些选项不可以终结一个循环的执行的语句是', 'break', 'if', 'input', 'exit', 'BCD', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (131, '以下哪条语句不能定义了一个Python字典', '{1:2,2:3 }', '{1, 2, 3}', '[1, 2, 3]', '(1, 2, 3)', 'BCD', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (132, '下列运算符的使用正确的是：', '100 + \'a\'', '[1, 2, 3] + [4, 5, 6]', '3 * \'abc\'', '10 % 3', 'BCD', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (133, '下列哪个语句在Python中是正确的', 'x = y = z = 1   ', 'x = (y = z + 1) ', 'x, y = y, x  ', 'x  +=  y', 'ACD', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (134, '以下能创建一个字典的语句是 ', 'dict1 = {}  ', 'dict2 = { 3 : 5 }    ', 'dict3 = {[1,2,3]: “uestc”}   ', 'dict4 = {(1,2,3): “uestc”}', 'ABD', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (135, '下列表达式的值为False的是', '(2**=3)&lt;(2*=3) ', '3&gt;2&gt;2  ', '1==1 and 2!=1 ', 'not(1==1 and 0!=1) ', 'ABD', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (136, '对算法描述不正确的是', '数学的计算公式', '程序设计语言的语句序列', '问题的精确描述', '.解决问题的精确步骤', 'ABC', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (137, '下列哪种说法是正确的', '除字典类型外，所有标准对象均可以用于布尔测试 ', '空字符串的布尔值是False ', '空列表对象的布尔值是False ', '值为0的任何数字对象的布尔值是False', 'BCD', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (138, '以下关于循环控制语句描述正确的是哪些项？', 'Python中的for语句可以在任意序列上进行迭代访问，例如列表、字符串和元组。', '在Python中if…elif…elif…结构中必须包含else子句。', '在Python中没有switch-case的关键词，可以用if…elif…elif…来等价表达。', '循环可以嵌套使用，例如一个for语句中有另一个for语句，一个while语句中有一个for语句等。', 'ACD', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (139, '以下关于列表表述中正确的是哪些项？', '可以用“==”比较两个列表是否相同。', 'Python的列表可以嵌套，形成二维列表。', '“+”号可以用来拼接两个列表。', '列表与字符串一样都是不可变的。', 'ABC', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (140, '在Python中，以下关于函数的描述 正确的是哪些项？', '在Python中，关键字参数是让调用者通过使用参数名区分参数，在使用时不允许改变参数列表中的参数顺序。', '在Python中，默认参数的值可以修改。', '在Python中，引入了函数式编程的思想，函数本身亦为对象。', '在Python中，函数的return语句可以以元组tuple的方式返回多个值。', 'BCD', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (141, '以下关于字符串处理的描述正确的是哪些项？', 'print （\'C:\\file\\time\'），输出结果是C:\\file\\time。', 'Python 2.x中字符串是以单引号或双引号括起来的任意文本，如果字符串赋值的时候，内部有单引号或双引号时如果不想使用转义字符常常可以使用r运算符来表示。', '&quot;\\&quot;符号可以被用来表示转义符号，例如\'doesn\\\'t\'和&quot;doesn\'t&quot;都表示字符串doesn\'t。', '被单引号(\'...\')或者双引号(&quot;...&quot;)包围的都是字符串。', 'BCD', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (142, '以下关于列表表述中正确的是哪些项？', '可以用“==”比较两个列表是否相同。', 'Python的列表可以嵌套，形成二维列表。', '“+”号可以用来拼接两个列表。', '列表与字符串一样都是不可变的。', 'ABC', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (143, '以下关于Python自带数据结构的运算结果中正确的是哪些项？', 'l = [1, 2, 3, 4]; l.insert(2, -1); 则l为 [1, 2, -1, 4]。', 'l = [1, 2, 3, 4]; l.pop(1); 则l结果为[1, 3, 4]。', 'l = [1, 2, 3, 4]; l.pop(); 则l.index(3) 结果为2。', 'l = [1, 2, 3, 4]; l.rerverse(); 则l[1]为3', 'BCD', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (144, '下列是Python语言关键字的是', 'else', 'print', 'lambda', 'finally', 'BCD', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (145, '以下关于Python自带数据结构的运算结果中正确的是哪些项？', 'l = [1, 2, 3, 4]; l.rerverse(); 则l[1]为3。', 'l = [1, 2, 3, 4]; l.pop(1); 则l结果为[1, 3, 4]。', 'l = [1, 2, 3, 4]; l.pop(); 则l.index(3) 结果为2。', 'l = [1, 2, 3, 4]; l.insert(2, -1); 则l为 [1, 2, -1, 4]。', 'ABC', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_selection` VALUES (146, '下面关于Servlet的陈述正确的是：', '我们在浏览器的地址栏直接输入要请求的Servlet，该Servlet默认会使用doPost方法处理请求', 'Servlet运行在服务器端', 'Servlet的生命周期包括：实例化，初始化，服务，破坏，不可以用', 'Servlet不能向浏览器发送Html标签', 'BC', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (147, '下面说法错误的是：', 'Http协议是无状态的协议', '会话跟踪技术有：用户授权，隐藏表单域，URL重写，Cookie等', '使用request.getSession(false)可以新建会话', '使用request.addCookie()可以添加Cookie到客户端', 'CD', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (148, '可以用于发送邮件的协议有：', 'Pop3', 'SMTP', 'FTP', 'IMAP', 'BD', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (149, '下列标签使用正确的是：', '&lt;jsp:forward page=&quot;XXX.jsp&quot;&gt;\n&lt;jsp:param name=&quot;xxx&quot; value=&quot;xxx&quot;/&gt;\n&lt;/jsp:forward&gt;', '&lt;jsp:forward page=&quot;XXX.jsp&quot;&gt;\n&lt;/jsp:forward&gt;', '&lt;jsp:forward page=&quot;XXX.jsp&quot;/&gt;', '&lt;jsp:param name=&quot;xxx&quot; value=&quot;xxx&quot;/&gt;\n&lt;/jsp:forward&gt;', 'AC', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (150, '18)在input.jsp中存在如下的代码：\n&lt;input type=&quot;text&quot; name=&quot;stuid&quot; value=&quot;1001&quot;/&gt;\n则在display.jsp中可以使用可以使用哪些语句可以获取stuid的值：', '&lt;%=request.getPramater(&quot;stuid&quot;)%&gt;', '${param.stuid}', '${param[stuid]}', '${param[&quot;stuid&quot;]}', 'ABD', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (151, '关于MVC下面说法正确的是：', 'MVC表示模型，视图，控制器', '在model 1体系结构中没有使用Servlet', 'model 1体系结构适合小型项目，开发效率较高，但大型项目会有维护问题', 'JavaBean可以访问数据库', 'ABCD', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (152, '一个Web应用程序的目录由两部分组成', '一个classes目录，还有一个包含了html、Servlet、JSP等文件的目录', '一个包含公有资源的目录，还有一个私有的目录', '一个Web应用的根目录，和在根目录下的WEB-INF目录', '一个可以访问任何文件的目录，一个禁止下载其中资源的目录', 'BCD', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (153, '三层体系结构包括', '表示层', '业务层', '映射层', '数据层', 'ABD', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (154, '一个servlet的生命周期包括下列', 'init()方法', 'service()方法', 'invalidate()方法', 'destroy()方法', 'ABD', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (155, '关于ServletContext说法正确的是', '是一个Web应用程序的上下文环境', '一个Servlet在ServletContext上设置属性可以被其他Servlet所共享', '可以获取Servlet的配置信息', '可以获取整个应用程序的初始化参数', 'ABD', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (156, '除了Session以外，还有（）也是会话跟踪技术 选三项', '隐藏表单域', '超链接', 'URL重写', 'Cookie', 'ACD', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (157, 'Jsp页面由静态内容、注释、表达式、声明和（）组成 选三项', '指令', 'EL语言', 'Scriptlet', '动作', 'ACD', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (158, 'jsp指令包括（）选三项', 'page指令', 'taglib指令', 'import指令', 'include指令', 'ABD', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (159, '关于输入和输出的隐式对象有', 'application', 'request', 'response', 'out', 'BCD', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (160, '40)如果a是b的父类，b是c的父类，c是d\n的父类，他们都在包中。则以下正确的是', '&lt;jsp:usebean id=“mybean”scope=“page”\nclass=“mypackage.d”type=“b”&gt;', '&lt;jsp:usebean id=“mybean”scope=“page”\nclass=“mypackage.d” type=“Object”/&gt;', '&lt;jsp:usebean id=“mybean”scope=“page”\nclass=“mypackage.d” type=“mypackage.a”/&gt;', '&lt;jsp:usebean id=“mybean”scope=“page”\nclass=“mypackage.d”type=“a”/&gt;', 'BC', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (161, '在JSP中，下面对JSP指令的描述，错误的是', '指令以”&lt;%@开始,以”%&gt;”结束', '指令以”&lt;%开始,以%&gt;”结束', '指令以”&lt;”开始,以”&gt;”结束', '指令以”&lt;jsp:”开始,以”/&gt;”结束', 'BCD', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (162, '下列关于JSP的scriptlet的陈述正确的是', 'Scriptlet是包含在&lt;%和%&gt;之间的', 'Scriptlet可以包含 import语句', 'Scriptlet不但包含Java代码，还可以包含html代码', '整个JSP可以有多个&lt;%T和%&gt;对', 'AD', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (163, '下列选项中，（）是错位的表达式', '&lt;%! Int a=0;%&gt;', '&lt;%int a = 0;%&gt;', '&lt;%=(3+5);%&gt;', '&lt;%=(3+5)%&gt;', 'ABC', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (164, 'Servlet通信方法包括那些（AB）', 'RequestDispatcher接口的forward()方法', 'RequestDispatcher接口的include()方法', 'RequestDispatcher接口的linked ()方法', 'RequestDispatcher接口的communion ()方法', 'AB', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (165, '下列语法错误的有', '&lt;%! int num %&gt;', '&lt;!-- hello world --!&gt;', '&lt;%= 5 + 3 %&gt;', '&lt;%@ page  import=”java.io.*; java.util.*”%&gt;', 'ABD', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_selection` VALUES (166, '以下选项中，哪些属于JDK工具', 'Java编译器 ', 'Java运行工具', ' Java文档生成工具', ' Java打包工具 ', 'ABCD', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (167, 'Java属于以下哪种语言？', '机器语言', '汇编语言', '高级语言', '以上都不对', 'C', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (168, '以下选项中，哪些属于合法的标识符？', 'Hello_World ', 'class', '123username ', 'username123', 'AD', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (169, '关于方法重载的描述，以下选项中哪些是正确的？', '方法名必须一致', '返回值类型必须不同', '参数个数必须一致', '参数的个数或类型不一致', 'AD', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (170, '以下选项中,switch语句判断条件可以接收的数据类型有哪些?', 'int ', 'byte ', 'char', 'short', 'ABCD', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (171, '下列语句哪些属于循环语句', 'for语句', 'if语句 ', 'while语句 ', 'switch语句', 'AB', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (172, '关于super关键字以下说法哪些是正确的?', 'super关键字可以调用父类的构造方法 ', 'super关键字可以调用父类的普通方法', 'super与this不能同时存在于同一个构造方法中', 'super与this可以同时存在于同一个构造方法中', 'ABC', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (173, '以下说法哪些是正确的?', 'Java语言中允许一个类实现多个接口', 'java语言中不允许一个类继承多个类', 'Java语言中允许一个类同时继承一个类并实现一个接口', 'Java语言中允许一个类同时继承一个类并实现一个接口', 'ABCD', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (174, '类中的一个成员方法被下面哪个修饰符修饰,该方法只能在本类被访问?', 'public', 'protected ', 'private', 'default', 'ABCD', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (175, '关于抽象类的说法哪些是正确的?', '抽象类中可以有非抽象方法', '如果父类是抽象类,则子类必须重写父类所有的抽象方法。', '不能用抽象类去创建对象', '接口和抽象类是同一个概念。', 'AC', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (176, '关于线程的创建过程,下面四种说法正确的有哪些?', '定义Thread类的子类,重写Thread类的run()方法,创建该子类的实例对象,调用对象的start方法', '定义Thread类的子类,重写Thread类的run()方法,创建该子类的实例对象,调用对象的run方法', '定义一个实现Runnable 接口的类并实现run()方法,创建该类实例对象,将其作为参数传递给Thread类的构造方法来创建Thread对象,调用Thread对象的start()方法', '定义一个实现Runnable 接口的类并实现run()方法,创建该类对象,然后调用run()方法', 'AC', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (177, '对于通过实现Runnable接口创建线程,下面说法正确的有哪些?', '适合多个相同程序代码的线程去处理同一个资源的情况', '适合多个相同程序代码的线程去处理同一个资源的情况', '可以避免由于Java的单继承带来的局限性', '编写简单,可以不通过Thread类直接创建线程', 'ABC', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (178, '对于线程的生命周期,下面四种说法正确的有哪些?', '调用了线程的start()方法,该线程就进入运行状态 (就绪,还要获得CPU使用权)', '线程的run()方法运行结束或被未catch的InterruptedException等异常终结,那么该线程进入死亡状态', '线程进入死亡状态,但是该线程对象仍然是一个Thread对象,在没有被垃圾回收器回收之前仍可以像引用其它对象一样引用它', '线程进入死亡状态后,调用它的start()方法仍然可以重新启动', 'BC', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (179, '对于死锁的描述,下面四种说法正确有哪些?', '当两个线程互相等待对方释放同步锁时会发生死锁', 'Java虚拟机没有检测和处理死锁的措施 ', '一旦出现死锁,程序会发生异常', '处于死锁状态的线程处于阻塞状态,无法继续运行', 'ABD', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (180, '下面四个选项中,哪些是线程进入阻塞状态的原因?', '线程试图获取某个对象的同步锁,而该锁被其它线程持有', '线程调用了另一个线程的join()方法', ' 当线程调用了一个阻塞式的IO方法', '线程调用了setDaemon(boolean b)方法', 'ABC', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (181, '下面四个选项中,对线程同步的目的描述正确的有哪些?', '锁定资源,使同一时刻只有一个线程去访问它,防止多个线程操作同一个资源引发错误', '提高线程的执行效率 ', '让线程独占一个资源', '让多个线程同时使用一个资源', 'AB', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (182, '关于foreach循环的特点,以下说法哪些是正确的?', 'foreach循环的语法格式为:for(容器中元素类型 临时变量 :容器变量)。', 'foreach循环在遍历集合时,无需获得容器的长度', 'foreach循环在遍历集合时,无需循环条件,也无需迭代语句', 'foreach循环在遍历集合时非常繁琐', 'BCD', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (183, '下列哪些说法是正确的?', 'LinkedList集合在增删元素时效率较高 ', 'ArrayList集合在查询元素时效率较高', 'HashMap不允许出现一对null键null值', 'HashSet集合中元素可重复并且无序', 'AB', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (184, '以下哪些方法是LinkedList集合中定义的?', 'getLast()  ', 'getFirst()  ', 'remove (int index)   ', 'next()', 'ABC', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (185, '下面选项中,哪些是标准输入输出流?', 'System. In ', 'System. Out ', 'InputStream ', 'OutputStream', 'AB', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_selection` VALUES (186, '关于a  or  b的描述正确的是。', '若a=True  b=True  则 a or b ==True', '若a=True  b=False  则 a or b ==True', '若a=True  b=True  则 a or b ==False', '若a=False  b=False  则 a or b ==False', 'ABD', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (187, '下列哪些项是Python中对文件的读取操作：', 'read', 'readall', 'readlines', 'readline', 'ACD', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (188, '在读写文件之前，必须通过以下些方法不能创建文件对象：', 'create', 'folder', 'File', 'open', 'ABC', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (189, '下列哪些项类型数据是可变化的：', '集合', '字典', '元组', '列表', 'ABD', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (190, '以下那些选项不可以终结一个循环的执行的语句是', 'break', 'if', 'input', 'exit', 'BCD', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (191, '以下哪条语句不能定义了一个Python字典', '{1:2,2:3 }', '{1, 2, 3}', '[1, 2, 3]', '(1, 2, 3)', 'BCD', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (192, '下列运算符的使用正确的是：', '100 + \'a\'', '[1, 2, 3] + [4, 5, 6]', '3 * \'abc\'', '10 % 3', 'BCD', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (193, '下列哪个语句在Python中是正确的', 'x = y = z = 1   ', 'x = (y = z + 1) ', 'x, y = y, x  ', 'x  +=  y', 'ACD', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (194, '以下能创建一个字典的语句是 ', 'dict1 = {}  ', 'dict2 = { 3 : 5 }    ', 'dict3 = {[1,2,3]: “uestc”}   ', 'dict4 = {(1,2,3): “uestc”}', 'ABD', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (195, '下列表达式的值为False的是', '(2**=3)&lt;(2*=3) ', '3&gt;2&gt;2  ', '1==1 and 2!=1 ', 'not(1==1 and 0!=1) ', 'ABD', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (196, '对算法描述不正确的是', '数学的计算公式', '程序设计语言的语句序列', '问题的精确描述', '.解决问题的精确步骤', 'ABC', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (197, '下列哪种说法是正确的', '除字典类型外，所有标准对象均可以用于布尔测试 ', '空字符串的布尔值是False ', '空列表对象的布尔值是False ', '值为0的任何数字对象的布尔值是False', 'BCD', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (198, '以下关于循环控制语句描述正确的是哪些项？', 'Python中的for语句可以在任意序列上进行迭代访问，例如列表、字符串和元组。', '在Python中if…elif…elif…结构中必须包含else子句。', '在Python中没有switch-case的关键词，可以用if…elif…elif…来等价表达。', '循环可以嵌套使用，例如一个for语句中有另一个for语句，一个while语句中有一个for语句等。', 'ACD', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (199, '以下关于列表表述中正确的是哪些项？', '可以用“==”比较两个列表是否相同。', 'Python的列表可以嵌套，形成二维列表。', '“+”号可以用来拼接两个列表。', '列表与字符串一样都是不可变的。', 'ABC', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (200, '在Python中，以下关于函数的描述 正确的是哪些项？', '在Python中，关键字参数是让调用者通过使用参数名区分参数，在使用时不允许改变参数列表中的参数顺序。', '在Python中，默认参数的值可以修改。', '在Python中，引入了函数式编程的思想，函数本身亦为对象。', '在Python中，函数的return语句可以以元组tuple的方式返回多个值。', 'BCD', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (201, '以下关于字符串处理的描述正确的是哪些项？', 'print （\'C:\\file\\time\'），输出结果是C:\\file\\time。', 'Python 2.x中字符串是以单引号或双引号括起来的任意文本，如果字符串赋值的时候，内部有单引号或双引号时如果不想使用转义字符常常可以使用r运算符来表示。', '&quot;\\&quot;符号可以被用来表示转义符号，例如\'doesn\\\'t\'和&quot;doesn\'t&quot;都表示字符串doesn\'t。', '被单引号(\'...\')或者双引号(&quot;...&quot;)包围的都是字符串。', 'BCD', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (202, '以下关于列表表述中正确的是哪些项？', '可以用“==”比较两个列表是否相同。', 'Python的列表可以嵌套，形成二维列表。', '“+”号可以用来拼接两个列表。', '列表与字符串一样都是不可变的。', 'ABC', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (203, '以下关于Python自带数据结构的运算结果中正确的是哪些项？', 'l = [1, 2, 3, 4]; l.insert(2, -1); 则l为 [1, 2, -1, 4]。', 'l = [1, 2, 3, 4]; l.pop(1); 则l结果为[1, 3, 4]。', 'l = [1, 2, 3, 4]; l.pop(); 则l.index(3) 结果为2。', 'l = [1, 2, 3, 4]; l.rerverse(); 则l[1]为3', 'BCD', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (204, '下列是Python语言关键字的是', 'else', 'print', 'lambda', 'finally', 'BCD', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (205, '以下关于Python自带数据结构的运算结果中正确的是哪些项？', 'l = [1, 2, 3, 4]; l.rerverse(); 则l[1]为3。', 'l = [1, 2, 3, 4]; l.pop(1); 则l结果为[1, 3, 4]。', 'l = [1, 2, 3, 4]; l.pop(); 则l.index(3) 结果为2。', 'l = [1, 2, 3, 4]; l.insert(2, -1); 则l为 [1, 2, -1, 4]。', 'ABC', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_selection` VALUES (206, '下面哪几种是jquery中表单的对象属性？', ':checked ', ': enabled', ':hidden', ':selected', 'ABD', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (207, '下面哪几个不是属于jquery的事件处理?', 'bind(type)', 'click() ', 'change()', 'one(type) ', 'BC', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (208, '下面哪几种是属于jquery文档处理的？', '包裹', '替换', ' 删除', '内部和外部插入 ', 'ABCD', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (209, '在DOM对象模型中，下列选项中的（）对象位于DOM对象模型的第二层。', 'history', 'document', 'button', 'text ', 'AB', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (210, '在Javascript中，对于浏览器对象的层次关系理解正确的是', 'window对象是所有页面内容的根对象', 'document对象包含location对象和history对象', 'location对象包含history', 'document对象包含form对象', 'AD', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (211, '下列选项中，（）段HTML代码所表示的“返回”链接能够正确实现IE工具栏中“后退”按钮的功能。 ', '&lt;a href=”javascript:history.go(-1)”&gt;返回&lt;/a&gt; ', '&lt;a href=”javascript:location.back()”&gt;返回&lt;/a&gt;', '&lt;a href=”javascript: location go(-1)”&gt;返回&lt;/a&gt; ', '&lt;a href=”javascript:history.back()”&gt;返回&lt;/a&gt; ', 'AD', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (212, '在HTML页面中，定义了如下所示的Javascript函数，则正确调用该函数的HTML代码是function compute(op){ alert(op); } ', '&lt;input name=”a” type=”button” onclick=”compute(this.value)” value=”+”&gt;', '&lt;input name=”b” type=”button” onclick=”compute(„-„)” value=”-”&gt;', '&lt;input name=”c” type=”button” onclick=”compute(“*”)” value=”*”&gt;', '&lt;input name=”d” type=”button” onclick=”compute(/ )” value=”/”&gt;', 'AB', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (213, '关于bind( )方法与unbind( )方法说法正确的是', 'bind( )方法可用来移除单个或多个事件', 'unbind( )方法可以移除所有的或被选的事件处理程序', '使用bind( )方法可绑定单个或多个事件', 'unbind( )方法是与bind( )方法对应的方法', 'BCD', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (214, '在jQuery中，通过jQuery对象.css( )可实现样式控制，以下说法正确的是', 'css( )方法会去除原有样式而设置新样式', '正确语法：css(“属性”,”值”)', 'css( )方法不会去除原有样式', '正确语法：css(“属性”)', 'AB', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (215, '在Jquery中，下列关于DOM操作的说法错误的是', '$(A).append(B)表示将A追加到B中', '$(A).appendTo(B)表示把A追加到B中', '$(A).after(B)表示将A插入到B以后', '$(A).insertAfter(B)表示将A插入到B以后', 'AC', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (216, '以下()选项能够正确地得到这个标签:&lt;input id=&quot;btnGo&quot;type=”buttom” value=”点击”class=”btn”&gt;', '$(“#btnGo”)', '$(“.btnGo”)', '$(“.btn”)', '$(“input[type=’button’]”)', 'ACD', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (217, '在jQuery中，返回元素内容宽高下列描述正确的是：1,Width()--width   \n\n2,innerwidth-- width + padding  \n\n3,outerwidth---width + padding + border  \n\n4,outerwidth(true)---width + padding + border + margin', 'width()方法设置或返回元素的宽度（不包括内边距、边框或外边距）', 'height()方法设置或返回元素的高度（包括内边距、边框或外边距）', 'innerwidth() 方法设置或返回元素的宽度（包括内边距）', 'innerheight() 方法设置或返回元素的高度（不包括内边距、边框或外边距）', 'AC', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (218, 'jQuery中遍历节点的方法，错误的是', 'next() 取得匹配元素后面紧邻的同辈元素', 'prev() 取得匹配元素前面紧邻的同辈元素取得匹配元素的所有同辈元素', 'siblings() 取得匹配元素前的所有同辈元素', 'closest() 取得元素紧邻的后一个元素匹配\n\nclosest(‘div’) 方法获得匹配选择器的第\n\n一个祖先元素,从当前元素开始沿DOM树向上', 'CD', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (219, '以下关于Array数组对象的说法不正确的是', '对数组里数据的排序可以用sort函数，如果排序效果非预期，可以给sort函数加\n一个排序函数的参数', 'reverse用于对数组数据的倒序排列', '向数组的最后位置加一个新元素，可以用pop方法', 'unshift方法用于向数组删除第一个元素', 'CD', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (220, '点击页面的按钮，使之打开一个新窗口，加载一个网页，以下JavaScript代码中可行\n的是', '&lt;input type=&quot;button&quot; value=&quot;new&quot; \nonclick=&quot;open(\'new.html\', \'_blank\') &quot;/&gt;', '&lt;input type=&quot;button&quot; value=&quot;new&quot; \nonclick=&quot;window.location=\'new.html\';&quot;/&gt;', '&lt;input type=&quot;button&quot; value=&quot;new&quot; \nonclick=&quot; location.assign(\'new.html\');&quot;/&gt;', '&lt;form target=&quot;_blank&quot; action=&quot;new.html&quot;&gt; \n&lt;input type=&quot;submit&quot; value=&quot;new&quot;/&gt; &lt;/form&gt;', 'AD', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (221, '使用JavaScript向网页中输出&lt;h1&gt;hello&lt;/h1&gt;，以下代码中可行的是', '&lt;script type=&quot;text/javascript&quot;&gt; \ndocument.write(&lt;h1&gt;hello&lt;/h1&gt;); &lt;/script&gt; ', '&lt;script type=&quot;text/javascript&quot;&gt; \ndocument.write(&quot;&lt;h1&gt;hello&lt;/h1&gt;&quot;); &lt;/script&gt;', '&lt;script type=&quot;text/javascript&quot;&gt; \n&lt;h1&gt;hello&lt;/h1&gt; &lt;/script&gt;', ' &lt;h1&gt; &lt;script type=&quot;text/javascript&quot;&gt;   document.write(&quot;hello&quot;); &lt;/script&gt; &lt;/h1&gt; ', 'BD', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (222, '关于JavaScript里的xml处理，以下说明正确的是', 'Xml是种可扩展标记语言，格式更规范，是作为未来html的替代', 'Xml一般用于传输和存储数据，是对html的补充，两者的目的不同', '在JavaScript里解析和处理xml数据时，因为浏览器的不同，其做法也不同', '在IE浏览器里处理xml，首先需要创建ActiveXObject对象', 'BCD', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (223, 'JavaScript数据类型包括原始类型和引用类型，以下属于原始类型的有?', 'Number（数值）Boolean（布尔）', 'String（字符串）', 'Object（对象）', 'Null（空） Undefined（未定义）', 'ABD', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (224, '面向对象的三大特征', '封装', '属性', '继承', '多态', 'ACD', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (225, '元素的type属性的取值可以是', 'image', 'checkbox', 'select', 'button', 'ABD', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_selection` VALUES (226, '以下选项中，哪些属于JDK工具', 'Java编译器 ', 'Java运行工具', ' Java文档生成工具', ' Java打包工具 ', 'ABCD', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (227, 'Java属于以下哪种语言？', '机器语言', '汇编语言', '高级语言', '以上都不对', 'C', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (228, '以下选项中，哪些属于合法的标识符？', 'Hello_World ', 'class', '123username ', 'username123', 'AD', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (229, '关于方法重载的描述，以下选项中哪些是正确的？', '方法名必须一致', '返回值类型必须不同', '参数个数必须一致', '参数的个数或类型不一致', 'AD', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (230, '以下选项中,switch语句判断条件可以接收的数据类型有哪些?', 'int ', 'byte ', 'char', 'short', 'ABCD', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (231, '下列语句哪些属于循环语句', 'for语句', 'if语句 ', 'while语句 ', 'switch语句', 'AB', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (232, '关于super关键字以下说法哪些是正确的?', 'super关键字可以调用父类的构造方法 ', 'super关键字可以调用父类的普通方法', 'super与this不能同时存在于同一个构造方法中', 'super与this可以同时存在于同一个构造方法中', 'ABC', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (233, '以下说法哪些是正确的?', 'Java语言中允许一个类实现多个接口', 'java语言中不允许一个类继承多个类', 'Java语言中允许一个类同时继承一个类并实现一个接口', 'Java语言中允许一个类同时继承一个类并实现一个接口', 'ABCD', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (234, '类中的一个成员方法被下面哪个修饰符修饰,该方法只能在本类被访问?', 'public', 'protected ', 'private', 'default', 'ABCD', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (235, '关于抽象类的说法哪些是正确的?', '抽象类中可以有非抽象方法', '如果父类是抽象类,则子类必须重写父类所有的抽象方法。', '不能用抽象类去创建对象', '接口和抽象类是同一个概念。', 'AC', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (236, '关于线程的创建过程,下面四种说法正确的有哪些?', '定义Thread类的子类,重写Thread类的run()方法,创建该子类的实例对象,调用对象的start方法', '定义Thread类的子类,重写Thread类的run()方法,创建该子类的实例对象,调用对象的run方法', '定义一个实现Runnable 接口的类并实现run()方法,创建该类实例对象,将其作为参数传递给Thread类的构造方法来创建Thread对象,调用Thread对象的start()方法', '定义一个实现Runnable 接口的类并实现run()方法,创建该类对象,然后调用run()方法', 'AC', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (237, '对于通过实现Runnable接口创建线程,下面说法正确的有哪些?', '适合多个相同程序代码的线程去处理同一个资源的情况', '适合多个相同程序代码的线程去处理同一个资源的情况', '可以避免由于Java的单继承带来的局限性', '编写简单,可以不通过Thread类直接创建线程', 'ABC', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (238, '对于线程的生命周期,下面四种说法正确的有哪些?', '调用了线程的start()方法,该线程就进入运行状态 (就绪,还要获得CPU使用权)', '线程的run()方法运行结束或被未catch的InterruptedException等异常终结,那么该线程进入死亡状态', '线程进入死亡状态,但是该线程对象仍然是一个Thread对象,在没有被垃圾回收器回收之前仍可以像引用其它对象一样引用它', '线程进入死亡状态后,调用它的start()方法仍然可以重新启动', 'BC', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (239, '对于死锁的描述,下面四种说法正确有哪些?', '当两个线程互相等待对方释放同步锁时会发生死锁', 'Java虚拟机没有检测和处理死锁的措施 ', '一旦出现死锁,程序会发生异常', '处于死锁状态的线程处于阻塞状态,无法继续运行', 'ABD', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (240, '下面四个选项中,哪些是线程进入阻塞状态的原因?', '线程试图获取某个对象的同步锁,而该锁被其它线程持有', '线程调用了另一个线程的join()方法', ' 当线程调用了一个阻塞式的IO方法', '线程调用了setDaemon(boolean b)方法', 'ABC', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (241, '下面四个选项中,对线程同步的目的描述正确的有哪些?', '锁定资源,使同一时刻只有一个线程去访问它,防止多个线程操作同一个资源引发错误', '提高线程的执行效率 ', '让线程独占一个资源', '让多个线程同时使用一个资源', 'AB', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (242, '关于foreach循环的特点,以下说法哪些是正确的?', 'foreach循环的语法格式为:for(容器中元素类型 临时变量 :容器变量)。', 'foreach循环在遍历集合时,无需获得容器的长度', 'foreach循环在遍历集合时,无需循环条件,也无需迭代语句', 'foreach循环在遍历集合时非常繁琐', 'BCD', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (243, '下列哪些说法是正确的?', 'LinkedList集合在增删元素时效率较高 ', 'ArrayList集合在查询元素时效率较高', 'HashMap不允许出现一对null键null值', 'HashSet集合中元素可重复并且无序', 'AB', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (244, '以下哪些方法是LinkedList集合中定义的?', 'getLast()  ', 'getFirst()  ', 'remove (int index)   ', 'next()', 'ABC', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (245, '下面选项中,哪些是标准输入输出流?', 'System. In ', 'System. Out ', 'InputStream ', 'OutputStream', 'AB', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_selection` VALUES (246, '在css中，下面属于box模型属性的有', 'font', 'margin', 'padding', 'border', 'BCD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (247, '下列网页设计的说法中正确的是', '冷暖色调在均匀使用时不宜靠近', '纯度适宜的两种颜色事宜放在一起', '整个页面中最好有一个色调', '抽象线条的构图很容易造成重心不稳', 'ACD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (248, '关于IFrame表述正确的有', '通过IFrame，网页可以嵌入其他网页内容，并可以动态更改', '在相同域名下，内嵌的IFrame可以获取外层网页的对象', '在相同域名下，外层网页脚本可以获取IFrame网页内的对象', '可以通过脚本调整IFrame的大小', 'ABCD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (249, '关于HTML5说法错误的是', 'HTML5只是对HTML4的一个简单升级', '所有浏览器都支持HTML5', 'HTML5新增了离线缓存机制', 'HTML5书写格式要求必须按照书写规范', 'ABD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (250, '下列哪些是设置有关边框的属性', 'border-color', 'border-back', 'border-style', 'border-width', 'ACD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (251, '下列选项中关于浏览器对象说法正确的是', 'history对象记录了用户在一个浏览器中已经访问过的urls', 'location对象相当于IE浏览器中的地址栏', 'location对象是history对象的父对象', 'location对象是window对象的子对象', 'ABD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (252, '我们想要将页面中的文本采用项目符号的形式予以显示，\n采用哪些标记组合可以达到我们的要求？', '&lt;P&gt;', '&lt;UL&gt;', '&lt;BR&gt;', '&lt;LI&gt;', 'BD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (253, '下面选项中，( )可以设置网页中某个标签的右外边距为10像素。', 'Margin:0 10px;', 'Margin:10px 0 0 0;', 'Margin:0 10 0 0px;', 'Padding-right:10px;', 'AC', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (254, '在制作HTML页面时，页面的布局技术主要分为', '框架布局', '表格布局', 'DIV层布局', 'CSS3 布局', 'ABC', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (255, '在CSS语言下列哪些选项是背景图像的属性（）', '背景重复', '背景附件', '纵向排列', '背景位置', 'ABCD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (256, 'CSS中的选择器包括（）', '超文本标记选择器', '类选择器', '标签选择器', 'ID选择器', 'BCD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (257, 'CSS文本属性中，文本对齐属性的取值有（）', 'auto', 'justify', 'center', 'right', 'BCD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (258, 'CSS中的BOX的padding属性包括的属性有（）', '上填充', '地填充', '填充', '左填充', 'ABD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (259, 'CSS中，盒模型的属性包括（）', 'font', 'margin', 'padding', 'visible', 'BC', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (260, '下面关于CSS的说法正确的有（）', 'CSS可以控制网页背景图片', 'margin属性的属性值可以是百分比', '整个BODY可以作为一个BOX', '对于中文可以使用word-spacing', 'ABC', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (261, 'CSS中的选择器包括( )', '超文本标记选择器', '类选择器', '标签选择器', 'ID选择器', 'BCD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (262, '关于CSS基本语法说法正确的是（）', '属性必须要包含{}号之中', '属性和属性值之间用等号连接', '在有多个属性时，用“：”进行区分', '如果一个属性有几个值，则每个属性值之间用分号分隔开', 'AC', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (263, '关于样式表的优先级说法正确的是（）', '直接定义在标记上的CSS样式级别最高', '内部样式表次之', '外部样式表级别最低', '当样式中属性重复时，先设的属性起作用', 'ABC', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (264, '关于内容，结构和表现说法正确的是（）', 'CSS可以控制网页背景颜色', 'position可以实现盒子模型精确定位', '字体大小的单位可以使CM', '一个BOX只能通过float进行定位', 'ABC', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (265, '以下属于超级链接的是？', '文本链接', '锚链接', '图像链接', '卯链接', 'ABC', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (266, '以下有关按钮说法中，正确的是：', '可以作为图像作为提交按钮', '可以用图像作为重置按钮', '可以控制提交按钮的显示文字', '可以控制重置按钮的显示文字', 'ACD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (267, '创建选项菜单不应使用以下哪些标记符？', 'select和option', 'input和label', 'input', 'input和option', 'BCD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (268, '下列关于CSS的说法正确的一项是', 'CSS可以控制网页背景图片', 'margin属性的属性值可以是百分比', '整个BODY可以作为一个BOX', '对于中文可以使用word-spacing属性对字间距进行调整', 'ABC', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (269, '以下说法正确的是？', '网页的本质就是HTML源代码', '网页就是主页', '使用“记事本”编辑网页时，应将保存为.htm或者.html后缀', '本地网站通常就是一个完整的文件夹', 'ACD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (270, '以下说法错误的是？', 'p标记符和br标记符作用是一样的', '多个p标记符可以产生多个空行', '多个br标记符可以产生多个空行', 'p标记符的结束标记符通常不可以省略', 'ABD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (271, '下面关于CSS表述正确的是()', 'CSS是一种制作网页的新技术，现在已经为大多数的浏览器所支持，成为网页设计必不可少的工具之一。', '层叠样式表是HTML的辅助工具，缺点是设计者设计的网页缺少动感，网页内容的排版布局上也有很多困难', '使用CSS能够简化网页的格式代码，加快下载显示的速度，也减少了需要上传的代码数量，大大减少了重复劳动的工作量。', 'CSS是Cascading Stylesheets的缩写，中文意思是层叠样式表', 'ACD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (272, '以下有关列表的说法中,正确的是', '在创建列表时,LI 标记符的结束标记符不可省略。', '指定嵌套列表时,也可以具体指定项目符号或编号样式。', '无序列表应使用 UL 和 LI 标记符进行创建。', '有序列表和无序列表可以互相嵌套。', 'BCD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (273, '以下标记符中,没有对应的结束标记的是', 'body', 'br', 'html', 'input', 'BD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (274, '关于表格的描述不正确的一项是。', '在单元格内不能继续插入整个表格', '可以同时选定不相邻的单元格', '粘贴表格时,可以粘贴表格的内容', '在网页中,水平方向可以并排多个独立的表格', 'CD', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (275, '下面是HTML表格标记的是', '&lt;table&gt;', '&lt;tr&gt;', '&lt;td&gt;', '&lt;from&gt;', 'ABC', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_selection` VALUES (276, '以下选项中，哪些属于JDK工具', 'Java编译器 ', 'Java运行工具', ' Java文档生成工具', ' Java打包工具 ', 'ABCD', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (277, 'Java属于以下哪种语言？', '机器语言', '汇编语言', '高级语言', '以上都不对', 'C', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (278, '以下选项中，哪些属于合法的标识符？', 'Hello_World ', 'class', '123username ', 'username123', 'AD', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (279, '关于方法重载的描述，以下选项中哪些是正确的？', '方法名必须一致', '返回值类型必须不同', '参数个数必须一致', '参数的个数或类型不一致', 'AD', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (280, '以下选项中,switch语句判断条件可以接收的数据类型有哪些?', 'int ', 'byte ', 'char', 'short', 'ABCD', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (281, '下列语句哪些属于循环语句', 'for语句', 'if语句 ', 'while语句 ', 'switch语句', 'AB', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (282, '关于super关键字以下说法哪些是正确的?', 'super关键字可以调用父类的构造方法 ', 'super关键字可以调用父类的普通方法', 'super与this不能同时存在于同一个构造方法中', 'super与this可以同时存在于同一个构造方法中', 'ABC', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (283, '以下说法哪些是正确的?', 'Java语言中允许一个类实现多个接口', 'java语言中不允许一个类继承多个类', 'Java语言中允许一个类同时继承一个类并实现一个接口', 'Java语言中允许一个类同时继承一个类并实现一个接口', 'ABCD', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (284, '类中的一个成员方法被下面哪个修饰符修饰,该方法只能在本类被访问?', 'public', 'protected ', 'private', 'default', 'ABCD', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (285, '关于抽象类的说法哪些是正确的?', '抽象类中可以有非抽象方法', '如果父类是抽象类,则子类必须重写父类所有的抽象方法。', '不能用抽象类去创建对象', '接口和抽象类是同一个概念。', 'AC', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (286, '关于线程的创建过程,下面四种说法正确的有哪些?', '定义Thread类的子类,重写Thread类的run()方法,创建该子类的实例对象,调用对象的start方法', '定义Thread类的子类,重写Thread类的run()方法,创建该子类的实例对象,调用对象的run方法', '定义一个实现Runnable 接口的类并实现run()方法,创建该类实例对象,将其作为参数传递给Thread类的构造方法来创建Thread对象,调用Thread对象的start()方法', '定义一个实现Runnable 接口的类并实现run()方法,创建该类对象,然后调用run()方法', 'AC', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (287, '对于通过实现Runnable接口创建线程,下面说法正确的有哪些?', '适合多个相同程序代码的线程去处理同一个资源的情况', '适合多个相同程序代码的线程去处理同一个资源的情况', '可以避免由于Java的单继承带来的局限性', '编写简单,可以不通过Thread类直接创建线程', 'ABC', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (288, '对于线程的生命周期,下面四种说法正确的有哪些?', '调用了线程的start()方法,该线程就进入运行状态 (就绪,还要获得CPU使用权)', '线程的run()方法运行结束或被未catch的InterruptedException等异常终结,那么该线程进入死亡状态', '线程进入死亡状态,但是该线程对象仍然是一个Thread对象,在没有被垃圾回收器回收之前仍可以像引用其它对象一样引用它', '线程进入死亡状态后,调用它的start()方法仍然可以重新启动', 'BC', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (289, '对于死锁的描述,下面四种说法正确有哪些?', '当两个线程互相等待对方释放同步锁时会发生死锁', 'Java虚拟机没有检测和处理死锁的措施 ', '一旦出现死锁,程序会发生异常', '处于死锁状态的线程处于阻塞状态,无法继续运行', 'ABD', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (290, '下面四个选项中,哪些是线程进入阻塞状态的原因?', '线程试图获取某个对象的同步锁,而该锁被其它线程持有', '线程调用了另一个线程的join()方法', ' 当线程调用了一个阻塞式的IO方法', '线程调用了setDaemon(boolean b)方法', 'ABC', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (291, '下面四个选项中,对线程同步的目的描述正确的有哪些?', '锁定资源,使同一时刻只有一个线程去访问它,防止多个线程操作同一个资源引发错误', '提高线程的执行效率 ', '让线程独占一个资源', '让多个线程同时使用一个资源', 'AB', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (292, '关于foreach循环的特点,以下说法哪些是正确的?', 'foreach循环的语法格式为:for(容器中元素类型 临时变量 :容器变量)。', 'foreach循环在遍历集合时,无需获得容器的长度', 'foreach循环在遍历集合时,无需循环条件,也无需迭代语句', 'foreach循环在遍历集合时非常繁琐', 'BCD', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (293, '下列哪些说法是正确的?', 'LinkedList集合在增删元素时效率较高 ', 'ArrayList集合在查询元素时效率较高', 'HashMap不允许出现一对null键null值', 'HashSet集合中元素可重复并且无序', 'AB', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (294, '以下哪些方法是LinkedList集合中定义的?', 'getLast()  ', 'getFirst()  ', 'remove (int index)   ', 'next()', 'ABC', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (295, '下面选项中,哪些是标准输入输出流?', 'System. In ', 'System. Out ', 'InputStream ', 'OutputStream', 'AB', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_selection` VALUES (296, '下面哪几种是jquery中表单的对象属性？', ':checked ', ': enabled', ':hidden', ':selected', 'ABD', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (297, '下面哪几个不是属于jquery的事件处理?', 'bind(type)', 'click() ', 'change()', 'one(type) ', 'BC', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (298, '下面哪几种是属于jquery文档处理的？', '包裹', '替换', ' 删除', '内部和外部插入 ', 'ABCD', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (299, '在DOM对象模型中，下列选项中的（）对象位于DOM对象模型的第二层。', 'history', 'document', 'button', 'text ', 'AB', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (300, '在Javascript中，对于浏览器对象的层次关系理解正确的是', 'window对象是所有页面内容的根对象', 'document对象包含location对象和history对象', 'location对象包含history', 'document对象包含form对象', 'AD', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (301, '下列选项中，（）段HTML代码所表示的“返回”链接能够正确实现IE工具栏中“后退”按钮的功能。 ', '&lt;a href=”javascript:history.go(-1)”&gt;返回&lt;/a&gt; ', '&lt;a href=”javascript:location.back()”&gt;返回&lt;/a&gt;', '&lt;a href=”javascript: location go(-1)”&gt;返回&lt;/a&gt; ', '&lt;a href=”javascript:history.back()”&gt;返回&lt;/a&gt; ', 'AD', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (302, '在HTML页面中，定义了如下所示的Javascript函数，则正确调用该函数的HTML代码是function compute(op){ alert(op); } ', '&lt;input name=”a” type=”button” onclick=”compute(this.value)” value=”+”&gt;', '&lt;input name=”b” type=”button” onclick=”compute(„-„)” value=”-”&gt;', '&lt;input name=”c” type=”button” onclick=”compute(“*”)” value=”*”&gt;', '&lt;input name=”d” type=”button” onclick=”compute(/ )” value=”/”&gt;', 'AB', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (303, '关于bind( )方法与unbind( )方法说法正确的是', 'bind( )方法可用来移除单个或多个事件', 'unbind( )方法可以移除所有的或被选的事件处理程序', '使用bind( )方法可绑定单个或多个事件', 'unbind( )方法是与bind( )方法对应的方法', 'BCD', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (304, '在jQuery中，通过jQuery对象.css( )可实现样式控制，以下说法正确的是', 'css( )方法会去除原有样式而设置新样式', '正确语法：css(“属性”,”值”)', 'css( )方法不会去除原有样式', '正确语法：css(“属性”)', 'AB', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (305, '在Jquery中，下列关于DOM操作的说法错误的是', '$(A).append(B)表示将A追加到B中', '$(A).appendTo(B)表示把A追加到B中', '$(A).after(B)表示将A插入到B以后', '$(A).insertAfter(B)表示将A插入到B以后', 'AC', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (306, '以下()选项能够正确地得到这个标签:&lt;input id=&quot;btnGo&quot;type=”buttom” value=”点击”class=”btn”&gt;', '$(“#btnGo”)', '$(“.btnGo”)', '$(“.btn”)', '$(“input[type=’button’]”)', 'ACD', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (307, '在jQuery中，返回元素内容宽高下列描述正确的是：1,Width()--width   \n\n2,innerwidth-- width + padding  \n\n3,outerwidth---width + padding + border  \n\n4,outerwidth(true)---width + padding + border + margin', 'width()方法设置或返回元素的宽度（不包括内边距、边框或外边距）', 'height()方法设置或返回元素的高度（包括内边距、边框或外边距）', 'innerwidth() 方法设置或返回元素的宽度（包括内边距）', 'innerheight() 方法设置或返回元素的高度（不包括内边距、边框或外边距）', 'AC', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (308, 'jQuery中遍历节点的方法，错误的是', 'next() 取得匹配元素后面紧邻的同辈元素', 'prev() 取得匹配元素前面紧邻的同辈元素取得匹配元素的所有同辈元素', 'siblings() 取得匹配元素前的所有同辈元素', 'closest() 取得元素紧邻的后一个元素匹配\n\nclosest(‘div’) 方法获得匹配选择器的第\n\n一个祖先元素,从当前元素开始沿DOM树向上', 'CD', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (309, '以下关于Array数组对象的说法不正确的是', '对数组里数据的排序可以用sort函数，如果排序效果非预期，可以给sort函数加\n一个排序函数的参数', 'reverse用于对数组数据的倒序排列', '向数组的最后位置加一个新元素，可以用pop方法', 'unshift方法用于向数组删除第一个元素', 'CD', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (310, '点击页面的按钮，使之打开一个新窗口，加载一个网页，以下JavaScript代码中可行\n的是', '&lt;input type=&quot;button&quot; value=&quot;new&quot; \nonclick=&quot;open(\'new.html\', \'_blank\') &quot;/&gt;', '&lt;input type=&quot;button&quot; value=&quot;new&quot; \nonclick=&quot;window.location=\'new.html\';&quot;/&gt;', '&lt;input type=&quot;button&quot; value=&quot;new&quot; \nonclick=&quot; location.assign(\'new.html\');&quot;/&gt;', '&lt;form target=&quot;_blank&quot; action=&quot;new.html&quot;&gt; \n&lt;input type=&quot;submit&quot; value=&quot;new&quot;/&gt; &lt;/form&gt;', 'AD', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (311, '使用JavaScript向网页中输出&lt;h1&gt;hello&lt;/h1&gt;，以下代码中可行的是', '&lt;script type=&quot;text/javascript&quot;&gt; \ndocument.write(&lt;h1&gt;hello&lt;/h1&gt;); &lt;/script&gt; ', '&lt;script type=&quot;text/javascript&quot;&gt; \ndocument.write(&quot;&lt;h1&gt;hello&lt;/h1&gt;&quot;); &lt;/script&gt;', '&lt;script type=&quot;text/javascript&quot;&gt; \n&lt;h1&gt;hello&lt;/h1&gt; &lt;/script&gt;', ' &lt;h1&gt; &lt;script type=&quot;text/javascript&quot;&gt;   document.write(&quot;hello&quot;); &lt;/script&gt; &lt;/h1&gt; ', 'BD', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (312, '关于JavaScript里的xml处理，以下说明正确的是', 'Xml是种可扩展标记语言，格式更规范，是作为未来html的替代', 'Xml一般用于传输和存储数据，是对html的补充，两者的目的不同', '在JavaScript里解析和处理xml数据时，因为浏览器的不同，其做法也不同', '在IE浏览器里处理xml，首先需要创建ActiveXObject对象', 'BCD', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (313, 'JavaScript数据类型包括原始类型和引用类型，以下属于原始类型的有?', 'Number（数值）Boolean（布尔）', 'String（字符串）', 'Object（对象）', 'Null（空） Undefined（未定义）', 'ABD', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (314, '面向对象的三大特征', '封装', '属性', '继承', '多态', 'ACD', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_selection` VALUES (315, '元素的type属性的取值可以是', 'image', 'checkbox', 'select', 'button', 'ABD', 1, 3, 15, '2019-10-30 11:06:06');

-- ----------------------------
-- Table structure for em_single
-- ----------------------------
DROP TABLE IF EXISTS `em_single`;
CREATE TABLE `em_single`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id编号',
  `single_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '题目',
  `A` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'A选项',
  `B` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'B选项',
  `C` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'C选项',
  `D` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'D选项',
  `right_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '正确答案',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态:1是,0否',
  `major_id` int(10) NOT NULL COMMENT '专业id',
  `subject_id` int(10) NOT NULL COMMENT '科目id',
  `add_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 315 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '单选题' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of em_single
-- ----------------------------
INSERT INTO `em_single` VALUES (1, '下列不属于ORACLE的逻辑结构的是', '区', '段', ' 数据文件', '表空间', 'C', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (2, '下面哪个用户不是ORACLE缺省安装后就存在的用户', 'SYSDBA', 'SYSTEM', 'SCOTT', 'SYS', 'A', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (3, '在Oracle中，你以SYSDBA登录，CUSTOMER表位于Mary用户方案中，下面哪条语句为数据库中的所有用户创建CUSTOMER表的同义词', 'CREATE PUBLIC SYNONYM cust ON mary.customer;', 'CREATE PUBLIC SYNONYM cust FOR mary.customer;', 'CREATE SYNONYM cust ON mary.customer FOR PUBLIC;', '不能创建CUSTOMER的公用同义词', 'B', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (4, '在Oracle中，当FETCH语句从游标获得数据时，下面叙述正确的是', '游标打开', '游标关闭', '当前记录的数据加载到变量中', '创建变量保存当前记录的数据', 'C', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (5, '在Oracle中，以下不属于集合操作符的是', 'UNION', 'SUM', 'MINUS', 'INTERSECT', 'B', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (6, '在Oracle中，在以下情形建立位图索引可以获得较好的性能', '在列值唯一的列上建立', '在列值相差很小的列上建立', '在列值频繁重复的列上建立', '在用于保存位图的列上建立', 'C', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (7, '在Oracle中，关于PL/SQL下列描述正确的是', 'PL/SQL代表Power Language/SQL', 'PL/SQL不支持面向对象编程', 'PL/SQL块包括声明部分、可执行部分和异常处理部分', 'PL/SQL提供的四种内置数据类型是character,integer,float,boolean', 'C', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (8, '在Oracle中，关于触发器的描述正确的是', '触发器可以删除，但不能禁用', '触发器只能用于表', '触发器可以分为行级和语句级两种', '触发器是一个对关联表发出insert、update、delete或select … for update语句时触发的存储过程', 'D', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (9, '在Oracle中，不属于游标属性的是', '%NOTFOUND', '%FOUND', '%ISCLOSE', '%ISOPEN', 'C', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (10, '在Oracle中，用下列语句定义了一个过程：\nCREATE OR REPLACE PROCEDURE test(a IN VARCHAR2,\nb IN OUT NUMBER,\nc OUT VARCHAR2) IS\nBEGIN\n……\nEND;\n/\n假定使用的变量都已定义，下面对过程test的调用语法正确的是', 'test(‘String1’,50,v_str2)', 'test(v_str1,v_num1,’String2’)', 'test(‘String1’,v_num1,v_str2)', 'test(v_str1,20,v_str2)', 'C', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (11, '在Oracle中，关于程序包的描述不正确的是', '程序包是一种数据库对象，它是对相关PL/SQL类型、子程序、游标、异常、变量和常量的封装', '程序包中私有对象是通过PRIVATE关键字来标识的  程序包体可以包括没有在程序包说明中列出的对象，这些是私有对象，程序包的用户不能使用', 'PL/SQL允许两个或多个打包的子程序具有同一名称，只要子程序接受的参数数据类型不同', '程序包具有模块化、信息隐藏、新增功能及性能更佳等优点', 'B', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (12, '在Oracle中，用户（）拥有所有内置的程序包', 'SYS', 'SYSTEM', 'PUBLIC', 'DEFAULT', 'A', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (13, 'ORACLE中，执行语句：SELECT address1||’,\'||address2||’,\'||address2   ”Address” FROM employ；将会返回（）列', '0', '1', '2', '3', 'B', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (14, '在Oracle中，INSTEAD OF触发器主要用于', '表', '表和视图', '基于单个表的视图', '基于多个表的视图', 'D', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (15, 'Oracle数据库中，下面（）可以作为有效的列名', 'Column', '123_NUM', 'NUM_#123', '#NUM123', 'C', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (16, 'Oracle数据库中，通过（）访问能够以最快的方式访问表中的一行。', '主键', 'Rowid', '唯一索引', '整表扫描', 'B', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (17, 'Oralce数据库中，以下（）函数可以针对任意数据类型进行操作。', 'TO_CHAR', 'LOWER', 'MAX', 'CEIL', 'A', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (18, '以下语句中可以正确查看服务器时间的sql语句是', 'select sysdate from dual;', 'select systemdate from dual;', 'select current_date from dual;', '以上说法均不正确。', 'A', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (19, '有一产品表(编号，名称，价格，数量，所属分类)，下列语法不正确的是', 'select * from 产品表 where 价格&gt;1000', 'select * from 产品表 where 编号，名称', 'select所属分类,价格*数量 from 产品表 where 价格&gt;1000', 'select所属分类, 价格*数量，名称 from 产品表', 'B', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (20, '下面的语句是不可以显示（）Select ename,sal,deptno from emp;', '雇员名字', '雇员职位类型', '工资', '部门编号', 'B', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (21, '在查询语句中用来去重的关键字是', 'distinct', 'distin', 'union', 'union all', 'A', 1, 2, 3, '2019-10-30 11:00:45');
INSERT INTO `em_single` VALUES (22, '下列那组部件不是Scratch中提供的', '动作部件', '控制部件', '外观部件 ', '数学部件', 'D', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (23, '在Scratch中,舞台是创作和演示程序的场地,其坐标原点位于舞台的', '左上角 ', '左下角', ' 右下角', '中心', 'D', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (24, '在Scratch中,( )部件用来为角色设置不同的外观效果', '动作 ', '外观', ' 控制', ' 画笔', 'C', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (25, '舞台是创作、演示程序的场地。舞台宽( )个单位,高360个单位。舞台的中间位置为坐', '480', '240', '500', '400', 'A', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (26, 'Scratch以角色为编程对象,以部件——积件式编程语言为编程工具,共8种部件,其中( ),控制人物运动', '动作', ' 控制 ', '外观 ', '数字和逻辑运算', 'B', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (27, '开始运行Scratch程序，应采用下列哪一条指令？', '当红旗被点击时', '当绿旗被点击时', '当黄旗被点击时', '当蓝旗被点击时', 'B', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (28, '下列哪个菜单可以设置Scratch使用界面的语言？', '文件菜单', '编辑菜单', '地球仪菜单', '问号菜单', 'C', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (29, 'Scratch的文件在保存时，一般建议扩展名为下列哪一项？', 'TXT', 'EXE', 'HTML', 'SB2', 'D', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (30, '下列哪一种方式不是Scratch角色造型的设计方式？', '对着麦克风录入声音 ', '从角色库中选取角色', '在造型区绘制新角色', '从本地文件中上传角色', 'A', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (31, '想使用绘制好的图画作为Scratch的背景，应选择下列哪一项操作？', '从背景库中选择背景', '在造型区绘制新背景', '从本地文件中上传背景', '拍摄照片当作背景', 'C', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (32, '要使Scratch中的角色切换造型，可选用下列哪一条指令？', '将角色的大小增加10', ' 当作为克隆体启动时', '碰到边缘就反弹', '下一个造型', 'D', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (33, 'Scratch中角色的旋转模式有几种？', '1', '2', '3', '4', 'C', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (34, 'Scratch中的背景设计中，没有下列哪种类别的命令？', '运动', '外观', '声音', '画笔', 'A', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (35, '要使Scratch中的角色在舞台上绘图，应选用下列哪一条命令？', '清空并抬笔', '落笔并移动10步', '将画笔颜色设定为0', '将画笔粗细增加1', 'B', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (36, '下列哪一条指令可以用于接收键盘输入？', '询问……并等待', '说……2秒', '连接……和……', '在……之前一致等待', 'A', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (37, '在程序框图设计中下列哪种语句不是基本语句？', '顺序语句', '条件语句', '循环语句', '输入输出语句', 'C', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (38, '在Scratch的声音设计中，“弹奏音符60”对应中央C(哆)，下列哪一条语句是发出中音G(索)？', '弹奏音符62', '弹奏音符64', '弹奏音符65', '弹奏音符67', 'D', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (39, '控制画笔移动时，下列哪一条语句是向左移动？', '面向90°方向', '面向-90°方向', '面向0°方向', '面向180°方向', 'B', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (40, '想实现背景切换时，可采用下列哪一条指令？', '将背景切换为……', '清除所有图形特效', '当背景切换到……', '当收到消息1', 'A', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (41, '想让小猫一直在舞台上移动，应采用下列哪种程序结构?', '重复执行100次', '重复执行', '如果……那么', '如果……那么……否则', 'B', 1, 2, 6, '2019-10-30 11:01:11');
INSERT INTO `em_single` VALUES (42, '下列类的定义中正确的是（    ）', 'class a{int x=0;int y=1;} ', 'class b{intx=0;int y=1;};', 'class c{int x;inty;}', 'class d{int x;inty;};', 'D', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (43, '在类定义的外部，可以被访问的成员有（    ）', '所有类成员  ', 'private或protected的类成员', 'public的类成员 ', 'public或private的类成员', 'C', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (44, '下列关于类和对象的说法中，正确的是（    ）', '编译器为每个类和类的对象分配内存  ', '类的对象具有成员函数的副本', '类的成员函数由类来调用                 ', '编译器为每个对象的数据成员分配内存', 'D', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (45, '关于this指针的说法正确的是（   ）', 'this指针必须显式说明 ', '定义一个类后，this指针就指向该类', '成员函数拥有this指针        ', '静态成员函数拥有this指针', 'C', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (46, '在面向对象方法中，不属于“对象”基本特点的是(  )', '一致性', '分类性', '多态性', '标识唯一性', 'A', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (47, '对类的构造函数和析构函数描述正确的是', '构造函数可以重载，析构函数不能重载', '构造函数不能重载，析构函数可以重载', '构造函数可以重载，析构函数也可以重载', '构造函数不能重载，析构函数也不能重裁', 'A', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (48, 'C++系统预定义了4个用于标准数据流的对象，下列选项中不属于此类对象的是', 'cout', 'cin', 'cerr', 'cset', 'D', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (49, '下列情况中，不会调用拷贝构造函数的是', '用一个对象去初始化同一类的另一个新对象时', '将类的一个对象赋值给该类的另一个对象时', '函数的形参是类的对象，调用函数进行形参和实参结合时', '函数的返回值是类的对象，函数执行返回调用时', 'B', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (50, 'C++语言对C语言做了很多改进，C++语言相对于C语言的最根本的变化是( )', '增加了一些新的运算符', '允许函数重载，并允许设置默认参数', '规定函数说明符必须用原型', '引进了类和对象的概念', 'D', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (51, '下列( )是C++语言的有效标识符', 'Nol', 'N0.1', '12345', 'int', 'A', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (52, '没有定义int x;float Y;，则10+x+y值的数据类型是( )', 'int', 'double', 'float', '不确定', 'C', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (53, '下面有关for循环的正确描述是( )', 'for循环只能用于循环次数已经确定的情况', 'for循环是先执行循环体语句，后判断表达式', '在for循环中，不能用break语句跳出循环体', '在for循环的循环体语句中，可以包含多条语句，但必须用花括号括起来', 'D', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (54, '假定int类型变量占用两个字节，其有定义int x[10]={0，2，4};，则数组x在内存中所占字节数是( )', '3', '6', '10', '20', 'D', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (55, '下面关于数组的初始化正确的是( )', 'char str[]={’a’，’b’，’C’}', 'char str[2]={’a’，’b’，’c’}', 'char str[2][3]={{’a’，’b’}，{’C’，’d’}，{’e’，’f’}}', 'char str()={～a，～b，～C}', 'A', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (56, '下列关于栈叙述正确的是', '栈顶元素最先能被删除', '栈顶元素最后才能被删除', '栈底元素永远不能被删除', '栈底元素最先被删除', 'A', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (57, '下列叙述中正确的是', '在栈中，栈中元素随栈底指针与栈顶指针的变化而动态变化', '在栈中，栈顶指针不变，栈中元素随栈底指针的变化而动态变化', '在栈中，栈底指针不变，栈中元素随栈顶指针的变化而动态变化', '以上说法都不正确', 'C', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (58, '某二叉树共有7个结点，其中叶子结点只有l个，则该二叉树的深度为(假设根结点在第1层)( )', '3', '4', '6', '7', 'D', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (59, '结构化程序所要求的基本结构不包括', '顺序结构', 'GOT0跳转', '选择(分支)结构', '重复(循环)结构', 'B', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (60, '要求打开文件&quot;d:\\file.dat&quot;，可写入数据，正确的语句是', 'ifstream infile(&quot;d:\\file.dat&quot;,  ios::in)；', 'ifstream infile(&quot;d:\\file.dat&quot;,  ios::in)；', 'ofstream infile(&quot;d:\\file.dat&quot;,  ios::out)； ', 'fstream  infile(&quot;d:\\\\file.dat&quot;, ios::in|ios::out)；', 'B', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (61, '关于类和对象不正确的说法是', '类是一种类型，它封装了数据和操作', '对象是类的实例', '一个类的对象只有一个', '一个对象必属于某个类', 'C', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (62, '下列字符串中可以用作C++标识符的是', '_123', 'foo~bar', 'case', '3var', 'A', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (63, '字符串&quot;student&quot;占用几个字节的空间', '7', '6', '5', '8', 'D', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (64, '在int a[][3]={{1},{3,2},{4,5,6},{0}}中，a[2][2]的值是', '3', '2', '6', '4', 'C', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (65, '在C++语言中，对函数参数默认值描述正确的是', '函数参数的默认值只能设定一个', '一个函数的参数若有多个，则参数默认值的设定可以不连续', '函数参数必须设定默认值', '在设定了参数的默认值后，该参数后面定义的所有参数都必须设定默认值', 'D', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (66, '声明类Test的拷贝构造函数的正确形式是', 'int Test', 'void Test', 'Test(void)', 'Test(Test &amp;)', 'D', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (67, '下列关于构造函数的描述中，错误的是', '构造函数可以设置默认参数', '构造函数在声明对象时自动执行', '构造函数可以对静态数据成员进行初始化', '构造函数可以重载', 'C', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (68, '循环语句whlie(int i=0 )i--;的循环次数是', '0', '1', '5', '无限', 'A', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (69, '一个函数无返回值时，应选择的说明符是', 'static', 'extern', 'void', '无说明符', 'C', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (70, '若数组名作实参而指针变量作形参，函数调用时实参传给形参的是', '数组的长度', '数组第一个元素的值', '数组所有元素的值', '数组第一个元素的地址', 'D', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (71, '能够释放对象所占资源的是', '析构函数', '数据成员', '构造函数', '静态成员函数', 'A', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (72, '下列关于C++函数的叙述中，正确的是', '每个函数至少要具有一个参数', '每个函数都必须返回一个值', '函数在被调用之前必须先声明', '函数不能自己调用自己', 'C', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (73, '下列关于类和对象的叙述中，错误的是', '一个类只能有一个对象', '对象是类的具体实例', '类是对某一类对象的抽象', '类和对象的关系是一种数据类型与变量的关系', 'A', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (74, '将两个字符串连接起来组成一个字符串时，应选用的函数是', 'strlen()', 'strcpy()', 'strcat()', 'strcmp()', 'C', 1, 3, 2, '2019-10-30 11:01:26');
INSERT INTO `em_single` VALUES (75, '在HTML页面中，我们通常在（）标签内书写显示在页面中的内容。', '&lt;head&gt;', '&lt;body&gt;', '&lt;style&gt;', '&lt;script&gt;', 'B', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (76, '在html代码中，&lt;!DOCTYPE html&gt;元素的作用是（）?', '该元素用来声明命名空间。', '该元素用来定义文档类型。', '该元素用来向搜索引擎声明关键字。', '该元素用来声明网页标题', 'B', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (77, '在网页浮动布局中，如果对浮动后面的元素产生了影响，那么下列操作可以清除浮动影响的是（）？', '浮动元素结尾处书写一个空元素加入clear:botn；属性', '给后面的元素加入float:none;', '设定受影响元素的边框', '浮动元素结尾处书写一个空元素并加入float：right属性', 'A', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (78, '在超链接标签&lt;a&gt;标签中，（）不是超链接标签的target属性', '_self', '_top', '_blank', '_int', 'D', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (79, '下面几个标签中，哪一个是可以实现换行效果的标签（）', '&lt;hr&gt;', '&lt;div&gt;', '&lt;font&gt;', '&lt;br&gt;', 'D', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (80, '在页面中内嵌一个css效果时，下面哪种方法不能实现效果变化（）', '引入css样式文件', '在页面head处添加style标签并将效果写入style标签内', '对着网页大喊样式变换', '在元素内部加入style属性', 'C', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (81, '下列元素中，为行内元素的是', 'div', 'span', 'p', 'h2', 'B', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (82, 'HTML指的是什么语言？', '超文本标记语言（Hyper Text Markup Language）', '面向对象编程语言（Object-Oriented Language）', '超链接和文本标记语言（Hyperlinks and Text Markup Language）', '家庭工具标记语言（Home Tool Markup Language）', 'A', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (83, '下列属性能够实现层的隐藏的是?', 'display:fals', 'display:hidden', 'display:” ”', 'display:none', 'D', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (84, '需要在 html 页面上引用脚本文件xinhua.js，下列语句中，正确的是', '&lt;script   language=&quot;javascript&quot; href=&quot;xinhua.js&quot; type=&quot;text/javascript&quot; /&gt;', '&lt;script language=&quot;javascript&quot; src=&quot;xinhua.js&quot; type=&quot;text/javascript&quot; /&gt;', '&lt;script language=&quot;javascript&quot; href=&quot;xinhua.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;', '&lt;script language=&quot;javascript&quot; src=&quot;xinhua.js&quot; type=&quot;text/javascript&quot;&gt;&lt;/script&gt;', 'D', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (85, '下列HTML代码中，能在新窗口中打开百度首页的是', '&lt;a src=&quot;http://www.baidu.com&quot;&gt;百度&lt;/a&gt;', '&lt;a src=&quot; http://www.baidu.com &quot; target=&quot;_blank&quot;&gt;百度&lt;/a&gt;', '&lt;a href=&quot; http://www.baidu.com&quot; target=&quot;_blank&quot;&gt;百度&lt;/a&gt;', '&lt;a href=&quot; http://www.baidu.com &quot;&gt;百度&lt;/a&gt;', 'C', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (86, '阅读以下代码，此代码在网页中显示的效果是？\n\n&lt;div style=&quot;float:left;&quot;&gt;DIV&lt;/div&gt;\n&lt;p style=&quot;color:red;&quot;&gt;正文&lt;/p&gt;', '&lt;div&gt; 中的文本和 &lt;p&gt; 中的文本分两行显示，且文本红色', '&lt;div&gt; 中的文本和 &lt;p&gt; 中的文本在一行上显示，且文本绿色', '&lt;div&gt; 中的文本和 &lt;p&gt; 中的文本分两行显示，且文本绿色', '&lt;div&gt; 中的文本和 &lt;p&gt; 中的文本在一行上显示，且文本红色', 'D', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (87, '下列引用外部样式表 style1.css 的语句中，正确的是', '&lt;link src=&quot;style1.css&quot; type=&quot;text/css&quot;  /&gt;', '&lt;link src=&quot;style1.css&quot; type=&quot;text/css&quot; rel=&quot;stylesheet&quot; /&gt;', '&lt;link href=&quot;style1.css&quot; type=&quot;text/css&quot; rel=&quot;stylesheet&quot; /&gt;', '&lt;link href=&quot;style1.css&quot; type=&quot;css&quot;  /&gt;', 'C', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (88, 'Display属性值的常用值不包括哪一个', 'inline ', 'hidden', 'block', 'none', 'B', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (89, '下列说法错误的是', 'ID选择器的优先级高于class选择器', 'ID选择器应用具有唯一性', 'Class选择器可以重复应用于多个网页元素', '伪类选择器只能应用于超链接状态', 'D', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (90, '下列关于div与span的说法 ，正确的是', 'span标签在浏览器中占满一行', 'span标签只能用于文本内容', 'div标签显示时独占一行', '多个div在页面内会同行显示', 'C', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (91, '下面选项中，哪个使用了行内样式', '&lt;p class=&quot;style&quot;&gt;', '&lt;p style=&quot;color:red;&quot;&gt;', '&lt;p style=red&gt;', '&lt;p id=&quot;content&quot;&gt;', 'B', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (92, '创建选项下拉菜单时，使用的标签是', 'select和option', 'input和lable', 'input', 'input和span', 'A', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (93, '下列有关按钮的说法错误的是', '可以用图片作为提交按钮', '可以用图片作为重置按钮', '可以控制提交按钮的显示文字', '可以控制重置按钮的显示文字', 'B', 1, 1, 1, '2019-10-30 11:02:06');
INSERT INTO `em_single` VALUES (94, '下列不属于ORACLE的逻辑结构的是', '区', '段', ' 数据文件', '表空间', 'C', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (95, '下面哪个用户不是ORACLE缺省安装后就存在的用户', 'SYSDBA', 'SYSTEM', 'SCOTT', 'SYS', 'A', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (96, '在Oracle中，你以SYSDBA登录，CUSTOMER表位于Mary用户方案中，下面哪条语句为数据库中的所有用户创建CUSTOMER表的同义词', 'CREATE PUBLIC SYNONYM cust ON mary.customer;', 'CREATE PUBLIC SYNONYM cust FOR mary.customer;', 'CREATE SYNONYM cust ON mary.customer FOR PUBLIC;', '不能创建CUSTOMER的公用同义词', 'B', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (97, '在Oracle中，当FETCH语句从游标获得数据时，下面叙述正确的是', '游标打开', '游标关闭', '当前记录的数据加载到变量中', '创建变量保存当前记录的数据', 'C', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (98, '在Oracle中，以下不属于集合操作符的是', 'UNION', 'SUM', 'MINUS', 'INTERSECT', 'B', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (99, '在Oracle中，在以下情形建立位图索引可以获得较好的性能', '在列值唯一的列上建立', '在列值相差很小的列上建立', '在列值频繁重复的列上建立', '在用于保存位图的列上建立', 'C', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (100, '在Oracle中，关于PL/SQL下列描述正确的是', 'PL/SQL代表Power Language/SQL', 'PL/SQL不支持面向对象编程', 'PL/SQL块包括声明部分、可执行部分和异常处理部分', 'PL/SQL提供的四种内置数据类型是character,integer,float,boolean', 'C', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (101, '在Oracle中，关于触发器的描述正确的是', '触发器可以删除，但不能禁用', '触发器只能用于表', '触发器可以分为行级和语句级两种', '触发器是一个对关联表发出insert、update、delete或select … for update语句时触发的存储过程', 'D', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (102, '在Oracle中，不属于游标属性的是', '%NOTFOUND', '%FOUND', '%ISCLOSE', '%ISOPEN', 'C', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (103, '在Oracle中，用下列语句定义了一个过程：\nCREATE OR REPLACE PROCEDURE test(a IN VARCHAR2,\nb IN OUT NUMBER,\nc OUT VARCHAR2) IS\nBEGIN\n……\nEND;\n/\n假定使用的变量都已定义，下面对过程test的调用语法正确的是', 'test(‘String1’,50,v_str2)', 'test(v_str1,v_num1,’String2’)', 'test(‘String1’,v_num1,v_str2)', 'test(v_str1,20,v_str2)', 'C', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (104, '在Oracle中，关于程序包的描述不正确的是', '程序包是一种数据库对象，它是对相关PL/SQL类型、子程序、游标、异常、变量和常量的封装', '程序包中私有对象是通过PRIVATE关键字来标识的  程序包体可以包括没有在程序包说明中列出的对象，这些是私有对象，程序包的用户不能使用', 'PL/SQL允许两个或多个打包的子程序具有同一名称，只要子程序接受的参数数据类型不同', '程序包具有模块化、信息隐藏、新增功能及性能更佳等优点', 'B', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (105, '在Oracle中，用户（）拥有所有内置的程序包', 'SYS', 'SYSTEM', 'PUBLIC', 'DEFAULT', 'A', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (106, 'ORACLE中，执行语句：SELECT address1||’,\'||address2||’,\'||address2   ”Address” FROM employ；将会返回（）列', '0', '1', '2', '3', 'B', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (107, '在Oracle中，INSTEAD OF触发器主要用于', '表', '表和视图', '基于单个表的视图', '基于多个表的视图', 'D', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (108, 'Oracle数据库中，下面（）可以作为有效的列名', 'Column', '123_NUM', 'NUM_#123', '#NUM123', 'C', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (109, 'Oracle数据库中，通过（）访问能够以最快的方式访问表中的一行。', '主键', 'Rowid', '唯一索引', '整表扫描', 'B', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (110, 'Oralce数据库中，以下（）函数可以针对任意数据类型进行操作。', 'TO_CHAR', 'LOWER', 'MAX', 'CEIL', 'A', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (111, '以下语句中可以正确查看服务器时间的sql语句是', 'select sysdate from dual;', 'select systemdate from dual;', 'select current_date from dual;', '以上说法均不正确。', 'A', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (112, '有一产品表(编号，名称，价格，数量，所属分类)，下列语法不正确的是', 'select * from 产品表 where 价格&gt;1000', 'select * from 产品表 where 编号，名称', 'select所属分类,价格*数量 from 产品表 where 价格&gt;1000', 'select所属分类, 价格*数量，名称 from 产品表', 'B', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (113, '下面的语句是不可以显示（）Select ename,sal,deptno from emp;', '雇员名字', '雇员职位类型', '工资', '部门编号', 'B', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (114, '在查询语句中用来去重的关键字是', 'distinct', 'distin', 'union', 'union all', 'A', 1, 1, 4, '2019-10-30 11:02:21');
INSERT INTO `em_single` VALUES (115, '在Ubuntu Linux中，系统默认的（）用户对整个系统拥有完全的控制权', 'root', 'guest', 'administrator ', 'supervistor', 'A', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (116, 'Linux的发展始于（    ）年，它是有（    ）的一名大学生开发的。(  )', ' 1990、芬兰', '1991、芬兰', '1992、芬兰', '1991、波兰 ', 'B', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (117, 'Linux 中权限最大的账户是', 'admin', 'root', 'guest', 'super', 'B', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (118, '在通常情况下，登录Linux 桌面环境，需要（   ）', '任意一个帐户', '有效合法的账号密码', '任意一个密码登录', '本机IP地址', 'B', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (119, '下面哪个命令不是用来查看网络故障的？', 'ping', 'init', 'telnet', 'netstat', 'B', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (120, 'etc/hosts文件中至少包含一行，它是（）', '127.1.1.1localhost  ', '127.0.0.1localhost', '127.0.0.155hostname', '202.38.126.12dns', 'B', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (121, '除非特别指定，cp假定要拷贝的文件在下面哪个目录下', '用户目录', 'home目录', 'root目录', '当前目录', 'D', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (122, '大部分主要的Linux系统文件是存放在下面的哪个目录之中的', '/lib', '/tmp', '/bin', '/root', 'C', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (123, ' KDE是UNIX操作系统下', '桌面环境', '系统环境', '操作环境', '应用环境', 'A', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (124, '在以下的文件中，属于Apache主配置文件的是', '／etc／httpd/httpD.conf', '／etc／Apache2／Apache2.conf', '／etc／Apache2／ports.conf', '／etc／Apache2/httpD.conf', 'A', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (125, '对于文件扩展名为tar的源代码发布的软件安装包解压和解压缩，正确的tar命令参数是', 'tar Zxvf文件名', 'tar xvf文件名', 'tar zxvf文件名', 'tar jxvf文件名', 'B', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (126, '怎样显示当前目录', 'pwd', 'cd', 'who', 'ls', 'A', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (127, '下列那一个指令可以显示目前的路径', 'show', 'cd', 'pwd', 'more', 'C', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (128, '建立一个新文件可以使用的命令为', 'chmod', 'more', 'cp', 'touch（指令改变档案的时间记录。）', 'D', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (129, 'm命令可删除文件或目录，其主要差别就是是否使用递归开关', '-r或-R', '-r或-A', '-R或-a', '-a或-A', 'A', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (130, '为了修改文件test的许可模式，使其文件属主具有读、写、和运行的权限，组和其它用户可以读和运行，可以采用（）方法。', 'chmod 755 test', 'chmod 700 test', 'chmod ux+rwx test', 'chmod g-w test', 'A', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (131, '我们可以修改默认的启动级别为（），使得系统重启后自动采用XWindow方式登录。', '3', '5', '2', '1', 'B', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (132, '用户可以在文件管理器中按鼠标右键选择“新建”来创建新的文件', '只可创建文本格式文件（.TXT）', '可创建除目录以外的多种格式文件', '创建的文件中已含有默认模板信息', '创建的只是相关格式的空文件', 'D', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (133, '下列那一个指令可以变更系统时间？', 'time', 'date', 'clock', 'settime', 'B', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (134, '下列那一个指令可以开设空目录', 'mk', 'Dir', 'Rmdir', 'mkdir', 'D', 1, 4, 5, '2019-10-30 11:02:23');
INSERT INTO `em_single` VALUES (135, '下列哪个语句在Python中是非法的？', 'x = y = z =1 ', 'x = (y = z + 1)', 'x, y = y, x', 'x  +=  y', 'B', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (136, '关于Python内存管理，下列说法错误的是', '变量不必事先声明 ', '变量无须先创建和赋值而直接使用 ', '变量无须指定类型', '可以使用del释放资源', 'B', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (137, '下面哪个不是Python合法的标识符', 'int32 ', '40XL', 'self   ', 'name', 'B', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (138, '下列哪种说法是错误的', '除字典类型外，所有标准对象均可以用于布尔测试', '空字符串的布尔值是False', '空列表对象的布尔值是False', '值为0的任何数字对象的布尔值是False', 'D', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (139, 'Python不支持的数据类型有', 'char', 'int', 'float', 'list', 'A', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (140, '关于字符串下列说法错误的是', '字符应该视为长度为1的字符串', '字符串以\\0标志字符串的结束', '既可以用单引号，也可以用双引号创建字符串 ', '在三引号字符串中可以包含换行回车等特殊字符', 'B', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (141, '以下不能创建一个字典的语句是', 'dict1 = {}', 'dict2 = { 3 : 5 }', 'dict3 ={[1,2,3]: “uestc”}    ', 'dict4 = {(1,2,3): “uestc”}', 'C', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (142, '下列Python语句正确的是：', 'min = x if x&lt; y = y', 'max = x &gt; y ?x:y', 'if (x &gt;y)        print x      ', 'while True :pass', 'D', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (143, '下列哪种不是Python元组的定义方式?', '（1）', '(1, )', '(1, 2)', '(1, 2, (3, 4))', 'A', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (144, 'Python脚本文件的扩展名为', '.python', '.py', '.pt', '.pg', 'B', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (145, '当需要在字符串中使用特殊字符时，python使用（   ）作为转义字符。', '\\', '/', '#', '%', 'A', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (146, '使用（  ）关键字来创建python自定义函数。', 'function', 'func', 'procedure', 'def', 'D', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (147, 'Python定义私有变量的方法为（   ）。', '使用__private 关键字', '使用public关键字', '使用__xxx__定义变量名', '使用__xxx定义变量名', 'D', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (148, '(   )不是用于处理中文的字符编码。', 'gb2312', 'gbk', 'big5', 'ascii', 'D', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (149, '可以返回x的整数部分', 'math.ceil()', 'math.fabs()', 'math.pow(x,y)', 'math.trunc(x)', 'D', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (150, '（ ）函数是指直接或间接调用函数本身的函数', '递归', '闭包', 'lambda', '匿名', 'A', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (151, '与x &gt; y and y &gt; z 语句等价的是', 'x &gt; y &gt; z', 'not x &lt; y or not y &lt; z', 'not x &lt; y or y &lt; z', 'x &gt; y or not y &lt; z', 'A', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (152, 'for i in range(0,2):\n       print (i)\n上述程序的输出结果是：', '0 1 2', '1 2', '0 1', '1', 'C', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (153, '下列程序共输出_______个值：\nage = 23\nstart = 2\nif age % 2 != 0:\nstart = 1\n for x in range(start, age + 2, 2):\n   print(x)', '10', '16', '12', '14', 'C', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (154, '对于字典d={\'abc\':1, \'qwe\':2, \'zxc\':3}，len(d)的结果为：', '6', '3', '12', '9', 'B', 1, 4, 9, '2019-10-30 11:02:38');
INSERT INTO `em_single` VALUES (155, '下面对Http请求消息使用GET和POST方法陈述正确的是：', 'POST方法提交信息可以保存为书签，而GET则不行', '可以使用GET方法提交敏感数据', '使用POST提交数据量没有限制', '使用POST方法提交数据比GET方法快', 'C', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (156, 'Web应用程序打包后的扩展名是：', 'EAR', 'WAR', 'JAR', 'RAR', 'B', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (157, '在Web应用程序中web.xml配置了Servlet的信息，如果你的项目为LoginDemo，那么web.xml最可能位于哪个目录下', 'LoginDemo/', 'LoginDemo/src/', 'LoginDemo/logindemo/WEB-INF/bin/', 'LoginDemo/logindemo/WEB-INF/', 'D', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (158, '6)在login.html中存在如下代码\n&lt;form action=”/logindemo/login”&gt;\nusername:&lt;input type=’text’ name=’userName’ id=’myName’  value=’your name’&gt;\n&lt;/form&gt;\n在login servlet中获得文本框的值正确的是：', '无法获取，因为代码在Html中', 'request.getAttribute（“userName”）', 'request.getParameter（“myName”）', 'request.getParameter（“userName”）', 'D', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (159, 'Jsp在转译阶段生成文件的扩展名是', 'class', 'java', 'exe', 'bin', 'B', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (160, '下面的说法错误的是：', 'Jsp可以处理动态内容和静态内容', '在Jsp最终会编译成字节码后执行', '在jsp中可以使用脚本控制Html的标签生成', 'Jsp中不能使用//注释Java脚本中的代码', 'D', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (161, '关于下面这段代码说法正确的是：&lt;%!   \nString temp;\nString convertMoney(String money){\ntemp = money+”.00”\nout.println(temp);\nretrun temp;\n}\n%&gt;', '这里不能调用temp，超出temp的生命周期', '这里不能使用out', '程序通过编译', '不能在这里定义方法', 'B', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (162, '在myjsp.jsp中，关于下面的代码说法错误的是：\n&lt;%@ page language=&quot;java&quot; import=&quot;java.util.*&quot; errorPage=&quot;error.jsp&quot; isErrorPage=&quot;false&quot; %&gt;', '该页面可以使用exception对象', '该页面发生异常会转向error.jsp', '存在errorPage属性时，isErrorPage是必须的属性值且一定为false', 'error.jsp页面一定要有isErrorPage属性且值为true；', 'A', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (163, '下面不属于Jsp隐式对象的是：', 'session', 'config', 'pageScope', 'exception', 'B', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (164, '在jsp中作用域由小到大的组合是：', 'request page session application', 'page request session application', 'pageContext request session application', 'pageScope request sessionScope applicationScope', 'C', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (165, '${empty &quot;&quot;}的结果是：', 'not null', 'null', '1', '', 'C', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (166, '在标签处理类中返回值EVAL_PAGE的含义是：', '重复执行标签', '继续处理页面内容', '跳过标签体内容', '跳过页面内容', 'B', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (167, '标签文件的扩展名是：', 'tld', 'tag', 'dtd', 'xml', 'A', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (168, 'FilterConfig的哪个方法可以返回init参数的名称', 'getServletContext()', 'getInitParameter(String name)', 'getFilterName()', 'getInitParameterNames()', 'D', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (169, '下面关于JSP自定义标记的描述正确的是', 'JSP自定义标记是用于添加新动作标记的扩展机制', '标记库通常被打包成.jar文件，该文件包含实现库标记的Java文件', 'web.xml文件的&lt;taglib-location&gt;表示类文件的位置', '标记的属性名在web.xml文件中描述', 'A', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (170, '在JSP中，在JSP中想要使用JavaBean:mypackage.mybean,则以下写法正确的是', '&lt;jsp:usebean id=”mybean” scope=”pageContext” class=”mypackage.mybean”/&gt;', '&lt; jsp:useBean class=” mypackage.mybean.class”/&gt;', '&lt;jsp:usebean id=”mybean” class=” mypackage.mybean.java”&gt;', '&lt;jsp:useBean id=”mybean” class=” mypackage.mybean”/&gt;', 'D', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (171, '', '', '', '', '', '', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (172, '29)在JSP中，如果使用标记：\n    &lt;jsp:getProperty name=”bean Name” property=” property Name”/&gt;准备取出bean的属性的值，但property Name属性在beanName中不存在，也就是说在beanName中没有这样的属性名：property Nam，也没有getPropertyName()方法，那么会在浏览器中显示', '错误页面', 'null', '0', '什么也没有', 'D', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (173, 'http协议默认使用', '8080端口', '7001端口', '80端口', '25端口', 'C', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (174, 'http响应状态行中的状态码200表示', '处理请求成功', '资源找不到', '内部错误', '未知状态', 'A', 1, 1, 8, '2019-10-30 11:02:40');
INSERT INTO `em_single` VALUES (175, '在java中， 如果父类中的某些方法不包含任何逻辑， 并且需要有子类重写，应该使用（ ）关键字来申明父类的这些方法。', ' final', 'static', 'abstract', 'void', 'C', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (176, '2、给定两个java程序，如下：\npublic interface Face{\n  int counter = 40;\n}\npublic class Test implements Face{\n private static int counter;\n public static void main(String[] args) {\n  System.out.println(++counter);\n }\n}\nTest.java的运行结果是（ ）', '40', '41', '0', '1', 'B', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (177, '给定java代码，如下：\n public class Test{\n static int i;\n public int aMethod(){\n  i++;\n  return i;\n }\n public static void main(String[] args) {\n  Test test = new Test();\n  test.aMethod();\n  System.out.println(test.aMethod());\n }\n}编译运行后，输出结果是（ ）', '0', '1', '2', '3', 'C', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (178, '给定java代码，如下：\n public abstract class Shape{\n  abstract void draw();\n}要创建Shape类的子类Circle,以下代码正确的是（ ）', 'class Circle extends Shape{\nint draw(){}', 'abstract class Circle extends Shape{}', 'class Circle extends Shape{\nvoid draw();\n}', 'class Circle extends Shape{\nvoid draw(){}\n}', 'A', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (179, '给定java代码，如下：\npublic class Parent{\n public void count(){\n  System.out.println(10%3);\n }\n}\npublic class Test extends Parent{\n public void count(int i){\n  System.out.println(10%i);\n }\n public static void main(String[] args) {\n  Parent p = new Test();\n  p.cou', '1', '3', '3.33333335', '编译错误', 'D', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (180, '给定java程序，如下：\n public class Test {\n  private static final int counter = 10;\n  public static void main(String[] args) {\n   System.out.println(++counter);\n  }\n}编译运行Test.java，结果是（ ）', '10', '11', '编译错误', '运行时异常', 'C', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (181, '在java中， 以定义了两个接口B和C，要定义一个实现这两个接口的类， 以下语句正确的是（ ）', 'interface A extends B,C', 'interface A implements B,C', 'class A implements B,C', 'class A implements B,implements C', 'C', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (182, '此方法返回值是多少（ ）\npublic static int divide(){\n        int i = 3;\n        try {\n            int a = 10/0;\n            return i;\n        } catch (Exception e) {\n            i = 4;\n            return i;\n        }finally{\n            i = 5;\n        }\n    }', '3', '4', '5', '报异常错误', 'B', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (183, '定义字符串：String s1 =“hello”;对下面程序描述正确的是：\n  if(s1 == “hello”){\n   System.out.println(“s1 = “hello””);\n  }else{\n   System.out.println(“s1  != “hello””);\n  \n}', 'A、 输出s1  != “hello”', '编译正确，运行错误', '产生编译错误', '输出s1 = “hello”', 'D', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (184, '以下代码段将创建几个对象？\n String s1 = “bc”;\n String s2 = “bc”;', '2', '3', '0', '1', 'D', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (185, '类的实例方法表示的是什么？（ ）', '父类对象的行为', '类的属性', '类的对象的行为', '类的行为', 'C', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (186, '在面向对象数据模型中， 子类不但可以从其超类中继承所有的属性和方法，而且还可以定义自己的的属性和方法， 这有利于实现（ ）', '可移植性', '可扩充性', '可靠性', '安全性', 'B', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (187, '要创建一个新目录，可以用下面（ ）类实现。', 'FileInputStream', 'FileOutputStream', 'RandomAccessFile', 'File', 'D', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (188, '下列不可作为java语言标识符的是', 'a1', '1', '_1', '11', 'D', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (189, 'Java 类可以作为', '类型定义机制', '数据封装机制', '类型定义机制和数据封装机制', '以上都不对', 'C', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (190, '在创建对象时必须()', '先声明对象,然后才能使用对象', '先声明对象,为对象分配内存空间,然后才能使用对象', '先声明对象,为对象分配内存空间,对对象初始化,然后才能使用对象', '上述说法都对', 'C', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (191, '类Test1定义如下: \n1.public class Test1{ \n2.  public float aMethod(float a,float b){}\n 3.\n4.}', 'public float aMethod(float a, float b,float c){ }', 'public float aMethod(float c,float d){ }', 'public float aMethod(float c,float d){ }', 'public float aMethod(float c,float d){ }', 'B', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (192, 'java中（）', '一个子类可以有多个父类,一个父类也可以有多个子类', '一个子类可以有多个父类,但一个父类只可以有一个子类', '一个子类可以有一个父类,但一个父类可以有多个子类', '上述说法都不对', 'C', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (193, '以下关于变量的说法错误的是', '变量名必须是一个有效的标识符 ', '变量在定义时可以没有初始值', '变量一旦被定义,在程序中的任何位置都可以被访问', '在程序中,可以将一个byte类型的值赋给一个int类型的变量,不需要特殊声明', 'C', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (194, '在Java中,要想让一个类继承另一个类,可以使用以下哪个关键字?', 'inherits ', 'implements ', 'extends ', 'modifies', 'C', 1, 8, 10, '2019-10-30 11:02:57');
INSERT INTO `em_single` VALUES (195, '下列哪个语句在Python中是非法的？', 'x = y = z =1 ', 'x = (y = z + 1)', 'x, y = y, x', 'x  +=  y', 'B', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (196, '关于Python内存管理，下列说法错误的是', '变量不必事先声明 ', '变量无须先创建和赋值而直接使用 ', '变量无须指定类型', '可以使用del释放资源', 'B', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (197, '下面哪个不是Python合法的标识符', 'int32 ', '40XL', 'self   ', 'name', 'B', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (198, '下列哪种说法是错误的', '除字典类型外，所有标准对象均可以用于布尔测试', '空字符串的布尔值是False', '空列表对象的布尔值是False', '值为0的任何数字对象的布尔值是False', 'D', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (199, 'Python不支持的数据类型有', 'char', 'int', 'float', 'list', 'A', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (200, '关于字符串下列说法错误的是', '字符应该视为长度为1的字符串', '字符串以\\0标志字符串的结束', '既可以用单引号，也可以用双引号创建字符串 ', '在三引号字符串中可以包含换行回车等特殊字符', 'B', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (201, '以下不能创建一个字典的语句是', 'dict1 = {}', 'dict2 = { 3 : 5 }', 'dict3 ={[1,2,3]: “uestc”}    ', 'dict4 = {(1,2,3): “uestc”}', 'C', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (202, '下列Python语句正确的是：', 'min = x if x&lt; y = y', 'max = x &gt; y ?x:y', 'if (x &gt;y)        print x      ', 'while True :pass', 'D', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (203, '下列哪种不是Python元组的定义方式?', '（1）', '(1, )', '(1, 2)', '(1, 2, (3, 4))', 'A', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (204, 'Python脚本文件的扩展名为', '.python', '.py', '.pt', '.pg', 'B', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (205, '当需要在字符串中使用特殊字符时，python使用（   ）作为转义字符。', '\\', '/', '#', '%', 'A', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (206, '使用（  ）关键字来创建python自定义函数。', 'function', 'func', 'procedure', 'def', 'D', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (207, 'Python定义私有变量的方法为（   ）。', '使用__private 关键字', '使用public关键字', '使用__xxx__定义变量名', '使用__xxx定义变量名', 'D', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (208, '(   )不是用于处理中文的字符编码。', 'gb2312', 'gbk', 'big5', 'ascii', 'D', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (209, '可以返回x的整数部分', 'math.ceil()', 'math.fabs()', 'math.pow(x,y)', 'math.trunc(x)', 'D', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (210, '（ ）函数是指直接或间接调用函数本身的函数', '递归', '闭包', 'lambda', '匿名', 'A', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (211, '与x &gt; y and y &gt; z 语句等价的是', 'x &gt; y &gt; z', 'not x &lt; y or not y &lt; z', 'not x &lt; y or y &lt; z', 'x &gt; y or not y &lt; z', 'A', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (212, 'for i in range(0,2):\n       print (i)\n上述程序的输出结果是：', '0 1 2', '1 2', '0 1', '1', 'C', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (213, '下列程序共输出_______个值：\nage = 23\nstart = 2\nif age % 2 != 0:\nstart = 1\n for x in range(start, age + 2, 2):\n   print(x)', '10', '16', '12', '14', 'C', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (214, '对于字典d={\'abc\':1, \'qwe\':2, \'zxc\':3}，len(d)的结果为：', '6', '3', '12', '9', 'B', 1, 8, 14, '2019-10-30 11:03:30');
INSERT INTO `em_single` VALUES (215, '以下哪条语句会产生运行错误', 'var    obj    =    (    );', 'var    obj    =    [    ]', 'var    obj    =    {    };', 'var    obj    =    /    /; ', 'A', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (216, '以下哪个单词不属于javascript保留字：', 'with ', 'parent', 'class', 'void ', 'B', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (217, '请选择结果为真的表达式', 'null instance of Object', 'null===undefied', 'null==undefied', 'NaN==NaN', 'C', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (218, 'HTTP服务的默认端口号是', '20', '80', '25', '21', 'B', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (219, '写“Hello World”的正确javascript语法是？', 'document.write(&quot;Hello World&quot;)', '&quot;Hello World&quot; ', 'response.write(&quot;Hello World&quot;)', '(&quot;Hello World&quot;) ', 'A', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (220, '下列JS的判断语句中( )是正确的 （A）', 'if(i==0) ', 'if(i=0) ', 'if(i==0)  then', 'if i=0 then', 'A', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (221, '下列JavaScript的循环语句中( )是正确的 ', 'if(i&lt;10;i++)', 'for(i=0;i&lt;10)', 'for i=1 to 10', 'for(i=0;i&lt;=10;i++)', 'D', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (222, '下列的哪一个表达式将返回假 ', '!(3&lt;=1) ', '(4&gt;=4)&amp;&amp;(5&lt;=2) ', '(“a”==”a”)&amp;&amp;(“c”!=”d”) ', '(2&lt;3)||(3&lt;2) ', 'B', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (223, '下列选项中,( )不是网页中的事件 ', 'onclick', 'onmouseover', 'onsubmit ', 'onpressbutton', 'D', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (224, '有语句“var x=0;while(____) x+=2;”，要使while循环体执行10次，空白处的循环判定式应写为：', 'x&lt;10', 'x&lt;=10 ', 'x&lt;20 ', 'x&lt;=20', 'C', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (225, '将字串s中的所有字母变为小写字母的方法是', 's.toSmallCase() ', 's.toLowerCase()   ', 's.toUpperCase() ', 's.toUpperChars()', 'B', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (226, '以下( )表达式产生一个0~7之间(含0,7)的随机整数. ', 'Math.floor(Math.random()*6) ', 'Math.floor(Math.random()*7) ', 'Math. floor(Math.random()*8) ', 'Math.ceil(Math.random()*8) ', 'C', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (227, '在使用Javascript实现省市级联菜单功能时，在添加城市列表前清空原来的下拉选项的代码是', 'document.myform.selCity.options.clear() ', 'document.myform.selCity.options.deleteAll() ', 'document.myform.selCity.options.length=0 ', 'document.myform.selCity.options.size=0 ', 'C', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (228, '分析下面的Javascript代码段，输出结果是\nvar mystring=”I am a student”; var a=mystring.substring(9,13); document.write(a); ', 'stud', 'tuden', 'uden', 'udent ', 'C', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (229, '下面哪一个是用来追加到指定元素的末尾的？', 'insertAfter()', 'append()', 'appendTo()', ' after() ', 'C', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (230, '如果想要找到一个表格的指定行数的元素，用下面哪个方法可以快速找到指定元素？', 'text() ', 'get() ', 'eq()', 'contents（）', 'C', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (231, '在jquery中，如果想要获取当前窗口的宽度值，下面哪个是实现该功能的？', 'width() ', 'width(val)', 'width', 'innerWidth() ', 'A', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (232, '为每一个指定元素的指定事件（像click）绑定一个事件处理器函数，下面哪个是用来实现该功能的？ ', 'trigger (type) ', 'bind(type) ', 'one(type) ', 'bind ', 'B', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (233, '在一个表单中，如果想要给输入框添加一个输入验证，可以用下面的哪个事件实现？', 'hover(over ,out)', 'keypress（fn）', 'change()', 'change(fn) ', 'D', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (234, '如果需要匹配包含文本的元素，用下面哪种来实现？', 'text() ', 'contains()', 'input()', 'attr(name) ', 'B', 1, 7, 7, '2019-10-30 11:03:34');
INSERT INTO `em_single` VALUES (235, '在java中， 如果父类中的某些方法不包含任何逻辑， 并且需要有子类重写，应该使用（ ）关键字来申明父类的这些方法。', ' final', 'static', 'abstract', 'void', 'C', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (236, '2、给定两个java程序，如下：\npublic interface Face{\n  int counter = 40;\n}\npublic class Test implements Face{\n private static int counter;\n public static void main(String[] args) {\n  System.out.println(++counter);\n }\n}\nTest.java的运行结果是（ ）', '40', '41', '0', '1', 'B', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (237, '给定java代码，如下：\n public class Test{\n static int i;\n public int aMethod(){\n  i++;\n  return i;\n }\n public static void main(String[] args) {\n  Test test = new Test();\n  test.aMethod();\n  System.out.println(test.aMethod());\n }\n}编译运行后，输出结果是（ ）', '0', '1', '2', '3', 'C', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (238, '给定java代码，如下：\n public abstract class Shape{\n  abstract void draw();\n}要创建Shape类的子类Circle,以下代码正确的是（ ）', 'class Circle extends Shape{\nint draw(){}', 'abstract class Circle extends Shape{}', 'class Circle extends Shape{\nvoid draw();\n}', 'class Circle extends Shape{\nvoid draw(){}\n}', 'A', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (239, '给定java代码，如下：\npublic class Parent{\n public void count(){\n  System.out.println(10%3);\n }\n}\npublic class Test extends Parent{\n public void count(int i){\n  System.out.println(10%i);\n }\n public static void main(String[] args) {\n  Parent p = new Test();\n  p.cou', '1', '3', '3.33333335', '编译错误', 'D', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (240, '给定java程序，如下：\n public class Test {\n  private static final int counter = 10;\n  public static void main(String[] args) {\n   System.out.println(++counter);\n  }\n}编译运行Test.java，结果是（ ）', '10', '11', '编译错误', '运行时异常', 'C', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (241, '在java中， 以定义了两个接口B和C，要定义一个实现这两个接口的类， 以下语句正确的是（ ）', 'interface A extends B,C', 'interface A implements B,C', 'class A implements B,C', 'class A implements B,implements C', 'C', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (242, '此方法返回值是多少（ ）\npublic static int divide(){\n        int i = 3;\n        try {\n            int a = 10/0;\n            return i;\n        } catch (Exception e) {\n            i = 4;\n            return i;\n        }finally{\n            i = 5;\n        }\n    }', '3', '4', '5', '报异常错误', 'B', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (243, '定义字符串：String s1 =“hello”;对下面程序描述正确的是：\n  if(s1 == “hello”){\n   System.out.println(“s1 = “hello””);\n  }else{\n   System.out.println(“s1  != “hello””);\n  \n}', 'A、 输出s1  != “hello”', '编译正确，运行错误', '产生编译错误', '输出s1 = “hello”', 'D', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (244, '以下代码段将创建几个对象？\n String s1 = “bc”;\n String s2 = “bc”;', '2', '3', '0', '1', 'D', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (245, '类的实例方法表示的是什么？（ ）', '父类对象的行为', '类的属性', '类的对象的行为', '类的行为', 'C', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (246, '在面向对象数据模型中， 子类不但可以从其超类中继承所有的属性和方法，而且还可以定义自己的的属性和方法， 这有利于实现（ ）', '可移植性', '可扩充性', '可靠性', '安全性', 'B', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (247, '要创建一个新目录，可以用下面（ ）类实现。', 'FileInputStream', 'FileOutputStream', 'RandomAccessFile', 'File', 'D', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (248, '下列不可作为java语言标识符的是', 'a1', '1', '_1', '11', 'D', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (249, 'Java 类可以作为', '类型定义机制', '数据封装机制', '类型定义机制和数据封装机制', '以上都不对', 'C', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (250, '在创建对象时必须()', '先声明对象,然后才能使用对象', '先声明对象,为对象分配内存空间,然后才能使用对象', '先声明对象,为对象分配内存空间,对对象初始化,然后才能使用对象', '上述说法都对', 'C', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (251, '类Test1定义如下: \n1.public class Test1{ \n2.  public float aMethod(float a,float b){}\n 3.\n4.}', 'public float aMethod(float a, float b,float c){ }', 'public float aMethod(float c,float d){ }', 'public float aMethod(float c,float d){ }', 'public float aMethod(float c,float d){ }', 'B', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (252, 'java中（）', '一个子类可以有多个父类,一个父类也可以有多个子类', '一个子类可以有多个父类,但一个父类只可以有一个子类', '一个子类可以有一个父类,但一个父类可以有多个子类', '上述说法都不对', 'C', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (253, '以下关于变量的说法错误的是', '变量名必须是一个有效的标识符 ', '变量在定义时可以没有初始值', '变量一旦被定义,在程序中的任何位置都可以被访问', '在程序中,可以将一个byte类型的值赋给一个int类型的变量,不需要特殊声明', 'C', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (254, '在Java中,要想让一个类继承另一个类,可以使用以下哪个关键字?', 'inherits ', 'implements ', 'extends ', 'modifies', 'C', 1, 7, 13, '2019-10-30 11:03:55');
INSERT INTO `em_single` VALUES (255, '在HTML页面中，我们通常在（）标签内书写显示在页面中的内容。', '&lt;head&gt;', '&lt;body&gt;', '&lt;style&gt;', '&lt;script&gt;', 'B', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (256, '在html代码中，&lt;!DOCTYPE html&gt;元素的作用是（）?', '该元素用来声明命名空间。', '该元素用来定义文档类型。', '该元素用来向搜索引擎声明关键字。', '该元素用来声明网页标题', 'B', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (257, '在网页浮动布局中，如果对浮动后面的元素产生了影响，那么下列操作可以清除浮动影响的是（）？', '浮动元素结尾处书写一个空元素加入clear:botn；属性', '给后面的元素加入float:none;', '设定受影响元素的边框', '浮动元素结尾处书写一个空元素并加入float：right属性', 'A', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (258, '在超链接标签&lt;a&gt;标签中，（）不是超链接标签的target属性', '_self', '_top', '_blank', '_int', 'D', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (259, '下面几个标签中，哪一个是可以实现换行效果的标签（）', '&lt;hr&gt;', '&lt;div&gt;', '&lt;font&gt;', '&lt;br&gt;', 'D', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (260, '在页面中内嵌一个css效果时，下面哪种方法不能实现效果变化（）', '引入css样式文件', '在页面head处添加style标签并将效果写入style标签内', '对着网页大喊样式变换', '在元素内部加入style属性', 'C', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (261, '下列元素中，为行内元素的是', 'div', 'span', 'p', 'h2', 'B', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (262, 'HTML指的是什么语言？', '超文本标记语言（Hyper Text Markup Language）', '面向对象编程语言（Object-Oriented Language）', '超链接和文本标记语言（Hyperlinks and Text Markup Language）', '家庭工具标记语言（Home Tool Markup Language）', 'A', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (263, '下列属性能够实现层的隐藏的是?', 'display:fals', 'display:hidden', 'display:” ”', 'display:none', 'D', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (264, '下列有关按钮的说法错误的是', '可以用图片作为提交按钮', '可以用图片作为重置按钮', '可以控制提交按钮的显示文字', '可以控制重置按钮的显示文字', '', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (265, '下列HTML代码中，能在新窗口中打开百度首页的是', '&lt;a src=&quot;http://www.baidu.com&quot;&gt;百度&lt;/a&gt;', '&lt;a src=&quot; http://www.baidu.com &quot; target=&quot;_blank&quot;&gt;百度&lt;/a&gt;', '&lt;a href=&quot; http://www.baidu.com&quot; target=&quot;_blank&quot;&gt;百度&lt;/a&gt;', '&lt;a href=&quot; http://www.baidu.com &quot;&gt;百度&lt;/a&gt;', 'C', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (266, '阅读以下代码，此代码在网页中显示的效果是？\n\n&lt;div style=&quot;float:left;&quot;&gt;DIV&lt;/div&gt;\n&lt;p style=&quot;color:red;&quot;&gt;正文&lt;/p&gt;', '&lt;div&gt; 中的文本和 &lt;p&gt; 中的文本分两行显示，且文本红色', '&lt;div&gt; 中的文本和 &lt;p&gt; 中的文本在一行上显示，且文本绿色', '&lt;div&gt; 中的文本和 &lt;p&gt; 中的文本分两行显示，且文本绿色', '&lt;div&gt; 中的文本和 &lt;p&gt; 中的文本在一行上显示，且文本红色', 'D', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (267, '下列引用外部样式表 style1.css 的语句中，正确的是', '&lt;link src=&quot;style1.css&quot; type=&quot;text/css&quot;  /&gt;', '&lt;link src=&quot;style1.css&quot; type=&quot;text/css&quot; rel=&quot;stylesheet&quot; /&gt;', '&lt;link href=&quot;style1.css&quot; type=&quot;text/css&quot; rel=&quot;stylesheet&quot; /&gt;', '&lt;link href=&quot;style1.css&quot; type=&quot;css&quot;  /&gt;', 'C', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (268, 'Display属性值的常用值不包括哪一个', 'inline ', 'hidden', 'block', 'none', 'B', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (269, '进行表单验证的目的是', '把用户的正确信息提交给服务器', '检查提交的数据必须符合实际', '使得页面变得美观、大方', '减轻服务器端的压力', 'B', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (270, '下列说法错误的是', 'ID选择器的优先级高于class选择器', 'ID选择器应用具有唯一性', 'Class选择器可以重复应用于多个网页元素', '伪类选择器只能应用于超链接状态', 'D', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (271, '下列关于div与span的说法 ，正确的是', 'span标签在浏览器中占满一行', 'span标签只能用于文本内容', 'div标签显示时独占一行', '多个div在页面内会同行显示', 'C', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (272, '下面选项中，哪个使用了行内样式', '&lt;p class=&quot;style&quot;&gt;', '&lt;p style=&quot;color:red;&quot;&gt;', '&lt;p style=red&gt;', '&lt;p id=&quot;content&quot;&gt;', 'B', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (273, '创建选项下拉菜单时，使用的标签是', 'select和option', 'input和lable', 'input', 'input和span', 'A', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (274, '', '', '', '', '', 'B', 1, 9, 11, '2019-10-30 11:04:02');
INSERT INTO `em_single` VALUES (275, '在java中， 如果父类中的某些方法不包含任何逻辑， 并且需要有子类重写，应该使用（ ）关键字来申明父类的这些方法。', ' final', 'static', 'abstract', 'void', 'C', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (276, '2、给定两个java程序，如下：\npublic interface Face{\n  int counter = 40;\n}\npublic class Test implements Face{\n private static int counter;\n public static void main(String[] args) {\n  System.out.println(++counter);\n }\n}\nTest.java的运行结果是（ ）', '40', '41', '0', '1', 'B', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (277, '给定java代码，如下：\n public class Test{\n static int i;\n public int aMethod(){\n  i++;\n  return i;\n }\n public static void main(String[] args) {\n  Test test = new Test();\n  test.aMethod();\n  System.out.println(test.aMethod());\n }\n}编译运行后，输出结果是（ ）', '0', '1', '2', '3', 'C', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (278, '给定java代码，如下：\n public abstract class Shape{\n  abstract void draw();\n}要创建Shape类的子类Circle,以下代码正确的是（ ）', 'class Circle extends Shape{\nint draw(){}', 'abstract class Circle extends Shape{}', 'class Circle extends Shape{\nvoid draw();\n}', 'class Circle extends Shape{\nvoid draw(){}\n}', 'A', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (279, '给定java代码，如下：\npublic class Parent{\n public void count(){\n  System.out.println(10%3);\n }\n}\npublic class Test extends Parent{\n public void count(int i){\n  System.out.println(10%i);\n }\n public static void main(String[] args) {\n  Parent p = new Test();\n  p.cou', '1', '3', '3.33333335', '编译错误', 'D', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (280, '给定java程序，如下：\n public class Test {\n  private static final int counter = 10;\n  public static void main(String[] args) {\n   System.out.println(++counter);\n  }\n}编译运行Test.java，结果是（ ）', '10', '11', '编译错误', '运行时异常', 'C', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (281, '在java中， 以定义了两个接口B和C，要定义一个实现这两个接口的类， 以下语句正确的是（ ）', 'interface A extends B,C', 'interface A implements B,C', 'class A implements B,C', 'class A implements B,implements C', 'C', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (282, '此方法返回值是多少（ ）\npublic static int divide(){\n        int i = 3;\n        try {\n            int a = 10/0;\n            return i;\n        } catch (Exception e) {\n            i = 4;\n            return i;\n        }finally{\n            i = 5;\n        }\n    }', '3', '4', '5', '报异常错误', 'B', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (283, '定义字符串：String s1 =“hello”;对下面程序描述正确的是：\n  if(s1 == “hello”){\n   System.out.println(“s1 = “hello””);\n  }else{\n   System.out.println(“s1  != “hello””);\n  \n}', 'A、 输出s1  != “hello”', '编译正确，运行错误', '产生编译错误', '输出s1 = “hello”', 'D', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (284, '以下代码段将创建几个对象？\n String s1 = “bc”;\n String s2 = “bc”;', '2', '3', '0', '1', 'D', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (285, '类的实例方法表示的是什么？（ ）', '父类对象的行为', '类的属性', '类的对象的行为', '类的行为', 'C', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (286, '在面向对象数据模型中， 子类不但可以从其超类中继承所有的属性和方法，而且还可以定义自己的的属性和方法， 这有利于实现（ ）', '可移植性', '可扩充性', '可靠性', '安全性', 'B', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (287, '要创建一个新目录，可以用下面（ ）类实现。', 'FileInputStream', 'FileOutputStream', 'RandomAccessFile', 'File', 'D', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (288, '下列不可作为java语言标识符的是', 'a1', '1', '_1', '11', 'D', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (289, 'Java 类可以作为', '类型定义机制', '数据封装机制', '类型定义机制和数据封装机制', '以上都不对', 'C', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (290, '在创建对象时必须()', '先声明对象,然后才能使用对象', '先声明对象,为对象分配内存空间,然后才能使用对象', '先声明对象,为对象分配内存空间,对对象初始化,然后才能使用对象', '上述说法都对', 'C', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (291, '类Test1定义如下: \n1.public class Test1{ \n2.  public float aMethod(float a,float b){}\n 3.\n4.}', 'public float aMethod(float a, float b,float c){ }', 'public float aMethod(float c,float d){ }', 'public float aMethod(float c,float d){ }', 'public float aMethod(float c,float d){ }', 'B', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (292, 'java中（）', '一个子类可以有多个父类,一个父类也可以有多个子类', '一个子类可以有多个父类,但一个父类只可以有一个子类', '一个子类可以有一个父类,但一个父类可以有多个子类', '上述说法都不对', 'C', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (293, '以下关于变量的说法错误的是', '变量名必须是一个有效的标识符 ', '变量在定义时可以没有初始值', '变量一旦被定义,在程序中的任何位置都可以被访问', '在程序中,可以将一个byte类型的值赋给一个int类型的变量,不需要特殊声明', 'C', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (294, '在Java中,要想让一个类继承另一个类,可以使用以下哪个关键字?', 'inherits ', 'implements ', 'extends ', 'modifies', 'C', 1, 9, 12, '2019-10-30 11:04:11');
INSERT INTO `em_single` VALUES (295, '以下哪条语句会产生运行错误', 'var    obj    =    (    );', 'var    obj    =    [    ]', 'var    obj    =    {    };', 'var    obj    =    /    /; ', 'A', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (296, '以下哪个单词不属于javascript保留字：', 'with ', 'parent', 'class', 'void ', 'B', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (297, '请选择结果为真的表达式', 'null instance of Object', 'null===undefied', 'null==undefied', 'NaN==NaN', 'C', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (298, 'HTTP服务的默认端口号是', '20', '80', '25', '21', 'B', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (299, '写“Hello World”的正确javascript语法是？', 'document.write(&quot;Hello World&quot;)', '&quot;Hello World&quot; ', 'response.write(&quot;Hello World&quot;)', '(&quot;Hello World&quot;) ', 'A', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (300, '下列JS的判断语句中( )是正确的 （A）', 'if(i==0) ', 'if(i=0) ', 'if(i==0)  then', 'if i=0 then', 'A', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (301, '下列JavaScript的循环语句中( )是正确的 ', 'if(i&lt;10;i++)', 'for(i=0;i&lt;10)', 'for i=1 to 10', 'for(i=0;i&lt;=10;i++)', 'D', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (302, '下列的哪一个表达式将返回假 ', '!(3&lt;=1) ', '(4&gt;=4)&amp;&amp;(5&lt;=2) ', '(“a”==”a”)&amp;&amp;(“c”!=”d”) ', '(2&lt;3)||(3&lt;2) ', 'B', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (303, '下列选项中,( )不是网页中的事件 ', 'onclick', 'onmouseover', 'onsubmit ', 'onpressbutton', 'D', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (304, '有语句“var x=0;while(____) x+=2;”，要使while循环体执行10次，空白处的循环判定式应写为：', 'x&lt;10', 'x&lt;=10 ', 'x&lt;20 ', 'x&lt;=20', 'C', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (305, '将字串s中的所有字母变为小写字母的方法是', 's.toSmallCase() ', 's.toLowerCase()   ', 's.toUpperCase() ', 's.toUpperChars()', 'B', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (306, '以下( )表达式产生一个0~7之间(含0,7)的随机整数. ', 'Math.floor(Math.random()*6) ', 'Math.floor(Math.random()*7) ', 'Math. floor(Math.random()*8) ', 'Math.ceil(Math.random()*8) ', 'C', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (307, '在使用Javascript实现省市级联菜单功能时，在添加城市列表前清空原来的下拉选项的代码是', 'document.myform.selCity.options.clear() ', 'document.myform.selCity.options.deleteAll() ', 'document.myform.selCity.options.length=0 ', 'document.myform.selCity.options.size=0 ', 'C', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (308, '分析下面的Javascript代码段，输出结果是\nvar mystring=”I am a student”; var a=mystring.substring(9,13); document.write(a); ', 'stud', 'tuden', 'uden', 'udent ', 'C', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (309, '下面哪一个是用来追加到指定元素的末尾的？', 'insertAfter()', 'append()', 'appendTo()', ' after() ', 'C', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (310, '如果想要找到一个表格的指定行数的元素，用下面哪个方法可以快速找到指定元素？', 'text() ', 'get() ', 'eq()', 'contents（）', 'C', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (311, '在jquery中，如果想要获取当前窗口的宽度值，下面哪个是实现该功能的？', 'width() ', 'width(val)', 'width', 'innerWidth() ', 'A', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (312, '为每一个指定元素的指定事件（像click）绑定一个事件处理器函数，下面哪个是用来实现该功能的？ ', 'trigger (type) ', 'bind(type) ', 'one(type) ', 'bind ', 'B', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (313, '在一个表单中，如果想要给输入框添加一个输入验证，可以用下面的哪个事件实现？', 'hover(over ,out)', 'keypress（fn）', 'change()', 'change(fn) ', 'D', 1, 3, 15, '2019-10-30 11:06:06');
INSERT INTO `em_single` VALUES (314, '如果需要匹配包含文本的元素，用下面哪种来实现？', 'text() ', 'contains()', 'input()', 'attr(name) ', 'B', 1, 3, 15, '2019-10-30 11:06:06');

-- ----------------------------
-- Table structure for em_students
-- ----------------------------
DROP TABLE IF EXISTS `em_students`;
CREATE TABLE `em_students`  (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id编号',
  `username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `id_card` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生身份证',
  `sex` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `class_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级',
  `class_teacher` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班主任',
  `tel` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电话号码',
  `major_id` int(10) NOT NULL COMMENT '专业id',
  `status` smallint(4) NOT NULL DEFAULT 1 COMMENT '状态:1是,0否',
  `add_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 253 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of em_students
-- ----------------------------
INSERT INTO `em_students` VALUES (1, '杨绍坤', '513701200011125217', '男', '125217', '17三年软件2', '李隆斌', '13684481202', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (2, '王三才', '513722200011245413', '男', '245413', '17三年软件2', '李隆斌', '18200476159', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (3, '马裕', '140202200012190018', '男', '190018', '17三年软件2', '李隆斌', '17882454544', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (4, '廖俊杰', '513922200010104917', '男', '104917', '17三年软件2', '李隆斌', '17695263713', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (5, '鲜先禄', '511322200101272577', '男', '272577', '17三年软件2', '李隆斌', '13419124790', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (6, '陈柏为', '510683200101136311', '男', '136311', '17三年软件2', '李隆斌', '18728032932', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (7, '杨杰', '510722200101151557', '男', '151557', '17三年软件2', '李隆斌', '15884477042', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (8, '柴炜淇', '610722200105152219', '男', '152219', '17三年软件2', '李隆斌', '17358662140', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (9, '黄子健', '510106200105174817', '男', '174817', '17三年软件2', '李隆斌', '13980444671', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (10, '唐涛', '511722200106272551', '男', '272551', '17三年软件2', '李隆斌', '18228696461', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (11, '贾川', '511722200108272838', '男', '272838', '17三年软件2', '李隆斌', '15181870143', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (12, '吴宇恒', '510321200109236450', '男', '236450', '17三年软件2', '李隆斌', '13990044778', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (13, '刘宝升', '511721200109086619', '男', '086619', '17三年软件2', '李隆斌', '18282914264', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (14, '王罗欢', '510121200109051017', '男', '051017', '17三年软件2', '李隆斌', '18084824098', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (15, '夏姚伟', '511102200110215711', '男', '215711', '17三年软件2', '李隆斌', '15283369773', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (16, '谭显杰', '511011200110087095', '男', '087095', '17三年软件2', '李隆斌', '13088228085', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (17, '温昌义', '511002200111066417', '男', '066417', '17三年软件2', '李隆斌', '18283250620', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (18, '曾宇', '511028200111060836', '男', '060836', '17三年软件2', '李隆斌', '13880529325', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (19, '刘茂坪', '511521200111241015', '男', '241015', '17三年软件2', '李隆斌', '15680394230', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (20, '肖杰', '510524200111015673', '男', '015673', '17三年软件2', '李隆斌', '15183079153', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (21, '张红城', '513723200112050013', '男', '050013', '17三年软件2', '李隆斌', '17338980095', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (22, '罗宏伟', '511528200112163631', '男', '163631', '17三年软件2', '李隆斌', '17628255812', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (23, '江宏伟', '510311200112311332', '男', '311332', '17三年软件2', '李隆斌', '15281323799', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (24, '何超', '510121200112266676', '男', '266676', '17三年软件2', '李隆斌', '18780085089', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (25, '欧亚东', '511025200112111114', '男', '111114', '17三年软件2', '李隆斌', '13990505173', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (26, '蒋波', '510623199910059019', '男', '059019', '17三年软件2', '李隆斌', '18781026570', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (27, '徐江林', '511923200009056950', '男', '056950', '17三年软件2', '李隆斌', '15775720866', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (28, '曾必文', '511521200204120554', '男', '120554', '17三年软件2', '李隆斌', '17321968720', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (29, '孙光骜', '211281200207174039', '男', '174039', '17三年软件2', '李隆斌', '15228899246', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (30, '曾育新', '511725200204236318', '男', '236318', '17三年软件2', '李隆斌', '15882706749', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (31, '张宇', '513902200208165455', '男', '165455', '17三年软件2', '李隆斌', '18398023991', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (32, '余雨昂', '510402200204092615', '男', '092615', '17三年软件2', '李隆斌', '18980355052', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (33, '李郑杰', '510724200204123711', '男', '123711', '17三年软件2', '李隆斌', '17628060873', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (34, '邱祯昊', '512021200211265077', '男', '265077', '17三年软件2', '李隆斌', '15883223120', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (35, '曹琪', '511324200211213394', '男', '213394', '17三年软件2', '李隆斌', '15882023674', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (36, '刘洋', '511011200205101777', '男', '101777', '17三年软件2', '李隆斌', '13890591489', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (37, '薛承峰', '500238200209193515', '男', '193515', '17三年软件2', '李隆斌', '17783517397', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (38, '刘俊翔', '510107200210110010', '男', '110010', '17三年软件2', '李隆斌', '15982050227', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (39, '袁理想', '510525200207233014', '男', '233014', '17三年软件2', '李隆斌', '18349126179', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (40, '黄祎程', '513931200209136911', '男', '136911', '17三年软件2', '李隆斌', '18628873925', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (41, '王高', '511025200211043559', '男', '043559', '17三年软件2', '李隆斌', '15902867008', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (42, '敖睿麒', '510104200202100059', '男', '100059', '17三年软件2', '李隆斌', '18981787101', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (43, '曹洋帆', '360202200207190019', '男', '190019', '17三年软件2', '李隆斌', '18382271603', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (44, '钱戌', '510322200201191132', '男', '191132', '17三年软件2', '李隆斌', '18382038092', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (45, '任茂华', '511381200204249353', '男', '249353', '17三年软件2', '李隆斌', '18882301263', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (46, '张羽', '530628200209040239', '女', '040239', '17三年软件2', '李隆斌', '15208173260', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (47, '张羽', '530628200209040239', '女', '040239', '17三年软件2', '李隆斌', '15208173260', 1, 1, '2019-10-24 19:26:29', '四号实训');
INSERT INTO `em_students` VALUES (48, '杜俊杰', '510722199804257416', '男', '123456', '18大数据2班', '王宇航', '15883794585', 2, 1, '2019-10-24 19:27:03', '四川省绵阳市');
INSERT INTO `em_students` VALUES (49, '罗智文', '513901199811264819', '男', '123456', '18大数据2班', '王宇航', '13194997530', 2, 1, '2019-10-24 19:27:03', '四川省资阳市');
INSERT INTO `em_students` VALUES (50, '杨才瑞', '513822200103199317', '男', '123456', '18大数据2班', '王宇航', '15182244797', 2, 1, '2019-10-24 19:27:03', '四川省眉山市');
INSERT INTO `em_students` VALUES (51, '郭钟', '510322200003092117', '男', '123456', '18大数据2班', '王宇航', '18281381649', 2, 1, '2019-10-24 19:27:03', '四川省自贡市');
INSERT INTO `em_students` VALUES (52, '李兴洋', '513902200003265057', '男', '123456', '18大数据2班', '王宇航', '18708272133', 2, 1, '2019-10-24 19:27:03', '四川省简阳市');
INSERT INTO `em_students` VALUES (53, '刘玮', '510722199710027433', '男', '123456', '18大数据2班', '王宇航', '13662991375', 2, 1, '2019-10-24 19:27:03', '四川省绵阳市');
INSERT INTO `em_students` VALUES (54, '熊晓杰', '51382419990821151X', '男', '123456', '18大数据2班', '王宇航', '19982637175', 2, 1, '2019-10-24 19:27:03', '四川省眉山市');
INSERT INTO `em_students` VALUES (55, '周继帆', '513902200009087191', '男', '123456', '18大数据2班', '王宇航', '17608296742', 2, 1, '2019-10-24 19:27:03', '四川省成都市');
INSERT INTO `em_students` VALUES (56, '李万', '513021200001138476', '男', '123456', '18大数据2班', '王宇航', '13548276291', 2, 1, '2019-10-24 19:27:03', '四川省达州市');
INSERT INTO `em_students` VALUES (57, '李昆霖', '513021199608100655', '男', '123456', '18大数据2班', '王宇航', '18982820884', 2, 1, '2019-10-24 19:27:03', '四川省达州市');
INSERT INTO `em_students` VALUES (58, '余西', '511322199908075413', '男', '123456', '18大数据2班', '王宇航', '17620406659', 2, 1, '2019-10-24 19:27:03', '四川省南充市');
INSERT INTO `em_students` VALUES (59, '薛井山', '513030199901135618', '男', '123456', '18大数据2班', '王宇航', '15086770479', 2, 1, '2019-10-24 19:27:03', '四川省达州市');
INSERT INTO `em_students` VALUES (60, '刘雷', '511024200109300372', '男', '123456', '18大数据2班', '王宇航', '18581520663', 2, 1, '2019-10-24 19:27:03', '四川省成都市');
INSERT INTO `em_students` VALUES (61, '王彩莉', '513822200109248706', '女', '123456', '18大数据2班', '王宇航', '18628988176', 2, 1, '2019-10-24 19:27:03', '四川省成都市');
INSERT INTO `em_students` VALUES (62, '熊锐华', '511526200001140311', '男', '123456', '18大数据2班', '王宇航', '13547717827', 2, 1, '2019-10-24 19:27:03', '四川省宜宾市');
INSERT INTO `em_students` VALUES (63, '杨帅', '513902200106085091', '男', '123456', '18大数据2班', '王宇航', '15282258394', 2, 1, '2019-10-24 19:27:03', '四川省简阳市');
INSERT INTO `em_students` VALUES (64, '罗璇', '511011200107087633', '男', '123456', '18大数据2班', '王宇航', '18384120783', 2, 1, '2019-10-24 19:27:03', '四川省成都市');
INSERT INTO `em_students` VALUES (65, '周子敬', '513021199701126673', '男', '123456', '18大数据2班', '王宇航', '13632364183', 2, 1, '2019-10-24 19:27:03', '四川省达州市');
INSERT INTO `em_students` VALUES (66, '陈力', '511302200008311417', '男', '123456', '18大数据2班', '王宇航', '17711411383', 2, 1, '2019-10-24 19:27:03', '四川省南充市');
INSERT INTO `em_students` VALUES (67, '袁豪', '513722200106122694', '男', '123456', '18大数据2班', '王宇航', '18228869131', 2, 1, '2019-10-24 19:27:03', '四川省巴中市');
INSERT INTO `em_students` VALUES (68, '汪洋', '510124200205105715', '男', '123456', '18大数据2班', '王宇航', '18483635709', 2, 1, '2019-10-24 19:27:03', '四川省成都市');
INSERT INTO `em_students` VALUES (69, '詹惠麟', '510183199712240019', '男', '123456', '18大数据2班', '王宇航', '13547935281', 2, 1, '2019-10-24 19:27:03', '四川省成都市');
INSERT INTO `em_students` VALUES (70, '杨航', '511621199802154295', '男', '123456', '18大数据2班', '王宇航', '13825242971', 2, 1, '2019-10-24 19:27:03', '四川省成都市');
INSERT INTO `em_students` VALUES (71, '邹涛', '511011199502286573', '男', '123456', '18大数据2班', '王宇航', '19180452874', 2, 1, '2019-10-24 19:27:03', '');
INSERT INTO `em_students` VALUES (72, '李俊杰', '510821200208159152', '男', '123456', '18大数据2班', '王宇航', '18583438134', 2, 1, '2019-10-24 19:27:03', '');
INSERT INTO `em_students` VALUES (73, '苏敬凯', '659001199912100036', '男', '123456', '18大数据2班', '王宇航', '18364294810', 2, 1, '2019-10-24 19:27:03', '新疆省石河子市');
INSERT INTO `em_students` VALUES (74, '周海涛', '510322199710128435', '男', '123456', '18大数据2班', '王宇航', '18723303424', 2, 1, '2019-10-24 19:27:03', '四川省自贡市');
INSERT INTO `em_students` VALUES (75, '李嘉欣', '513823199911074812', '男', '123456', '18大数据2班', '王宇航', '13688004814', 2, 1, '2019-10-24 19:27:03', '四川省眉山市');
INSERT INTO `em_students` VALUES (76, '乔童', '640103200104141212', '男', '123456', '18大数据2班', '王宇航', '19982015486', 2, 1, '2019-10-24 19:27:03', '宁夏银川');
INSERT INTO `em_students` VALUES (77, '杜成鹏', '510723199902171276', '男', '123456', '18大数据2班', '王宇航', '16608164948', 2, 1, '2019-10-24 19:27:03', '四川绵阳');
INSERT INTO `em_students` VALUES (78, '刘子汉', '511023199902188118', '男', '123456', '18大数据2班', '王宇航', '15082146867', 2, 1, '2019-10-24 19:27:03', '四川资阳');
INSERT INTO `em_students` VALUES (79, '蓝亚', '511602199607246195', '男', '123456', '18大数据2班', '王宇航', '18161147790', 2, 1, '2019-10-24 19:27:03', '四川广安');
INSERT INTO `em_students` VALUES (80, '孙瑞琦', '510121200106238812', '男', '123456', '18大数据2班', '王宇航', '18380187655', 2, 1, '2019-10-24 19:27:03', '四川省成都市金堂县');
INSERT INTO `em_students` VALUES (81, '卿力文', '511621200008208335', '男', '123456', '18大数据2班', '王宇航', '18582044483', 2, 1, '2019-10-24 19:27:03', '四川广安');
INSERT INTO `em_students` VALUES (82, '柯云路', '513226199804242012', '男', '123456', '18大数据2班', '王宇航', '16608377662', 2, 1, '2019-10-24 19:27:03', '');
INSERT INTO `em_students` VALUES (83, '李嘉鑫', '510121200202086476', '男', '123456', '18大数据2班', '王宇航', '15882050094', 2, 1, '2019-10-24 19:27:03', '四川省成都市金堂县');
INSERT INTO `em_students` VALUES (84, '张文亮', '511126200112180015', '男', '123456', '18大数据2班', '王宇航', '18090355503', 2, 1, '2019-10-24 19:27:03', '四川乐山');
INSERT INTO `em_students` VALUES (85, '涂丰', '513701200105273931', '男', '123456', '18大数据2班', '王宇航', '18382733131', 2, 1, '2019-10-24 19:27:03', '四川省巴中市');
INSERT INTO `em_students` VALUES (86, '张申兰', '510723199803174000', '女', '123456', '18大数据2班', '王宇航', '18398415916', 2, 1, '2019-10-24 19:27:03', '四川省绵阳市盐亭县');
INSERT INTO `em_students` VALUES (87, '邱思豪', '510821199912030015', '男', '123456', '18大数据2班', '王宇航', '18111352895', 2, 1, '2019-10-24 19:27:03', '四川省广元市旺苍县');
INSERT INTO `em_students` VALUES (88, '许蒙', '513921200112085310', '男', '123456', '18大数据2班', '王宇航', '17608015045', 2, 1, '2019-10-24 19:27:03', '四川省资阳市安岳县');
INSERT INTO `em_students` VALUES (89, '曾华江', '513030200002120856', '男', '123456', '18大数据2班', '王宇航', '15892994953', 2, 1, '2019-10-24 19:27:03', '四川达州');
INSERT INTO `em_students` VALUES (90, '曾华江', '513030200002120856', '男', '123456', '18大数据2班', '王宇航', '15892994953', 2, 1, '2019-10-24 19:27:03', '四川达州');
INSERT INTO `em_students` VALUES (91, '陈佳龙', '510781200006040031', '男', '123456', '19智慧城市1', '张兴强', '18048601621', 3, 1, '2019-10-24 19:27:20', '');
INSERT INTO `em_students` VALUES (92, '吴种愿', '513821200011214579', '男', '123456', '19智慧城市1', '张兴强', '17628033294', 3, 1, '2019-10-24 19:27:20', '');
INSERT INTO `em_students` VALUES (93, '吴全程', '510107200001152177', '男', '123456', '19智慧城市1', '张兴强', '18781973928', 3, 1, '2019-10-24 19:27:20', '');
INSERT INTO `em_students` VALUES (94, '代毅', '510524200003151811', '男', '123456', '19智慧城市1', '张兴强', '18380924397', 3, 1, '2019-10-24 19:27:20', '');
INSERT INTO `em_students` VALUES (95, '刘方浩', '513901200004050414', '男', '123456', '19智慧城市1', '张兴强', '17780782007', 3, 1, '2019-10-24 19:27:20', '');
INSERT INTO `em_students` VALUES (96, '黎子龙', '510521200008125357', '男', '123456', '19智慧城市1', '张兴强', '18180512605', 3, 1, '2019-10-24 19:27:20', '');
INSERT INTO `em_students` VALUES (97, '牟云江', '532130200103042138', '男', '123456', '19智慧城市1', '张兴强', '18788997020', 3, 1, '2019-10-24 19:27:20', '');
INSERT INTO `em_students` VALUES (98, '刘浪', '511723200102082116', '男', '123456', '19智慧城市1', '张兴强', '18123196818', 3, 1, '2019-10-24 19:27:20', '');
INSERT INTO `em_students` VALUES (99, '熊信豪', '510521199810294371', '男', '123456', '19智慧城市1', '张兴强', '17360511679', 3, 1, '2019-10-24 19:27:20', '');
INSERT INTO `em_students` VALUES (100, '袁辰', '513002200108282751', '男', '123456', '19智慧城市1', '张兴强', '13388200073', 3, 1, '2019-10-24 19:27:20', '');
INSERT INTO `em_students` VALUES (101, '袁辰', '513002200108282751', '男', '123456', '19智慧城市1', '张兴强', '13388200073', 3, 1, '2019-10-24 19:27:20', '');
INSERT INTO `em_students` VALUES (102, '杨思涵', '510302200304161010', '男', '123456', '17三年软件四', '王智', '13094438014', 1, 1, '2019-10-24 19:27:37', '四川省自贡市');
INSERT INTO `em_students` VALUES (103, '刘帮君', '511521200109070835', '男', '123456', '17三年软件四', '王智', '15828403191', 1, 1, '2019-10-24 19:27:37', '四川宜宾');
INSERT INTO `em_students` VALUES (104, '邓粤', '513021200004180151', '男', '123456', '17三年软件四', '王智', '18628051287', 1, 1, '2019-10-24 19:27:37', '四川达州');
INSERT INTO `em_students` VALUES (105, '王鹏程', '513701200101160219', '男', '123456', '17三年软件四', '王智', '18282134453', 1, 1, '2019-10-24 19:27:37', '四川巴中');
INSERT INTO `em_students` VALUES (106, '王思远', '510623200107111119', '男', '123456', '17三年软件四', '王智', '18728082216', 1, 1, '2019-10-24 19:27:37', '四川德阳');
INSERT INTO `em_students` VALUES (107, '陈云浩', '512021200311126218', '男', '123456', '17三年软件四', '王智', '17628589752', 1, 1, '2019-10-24 19:27:37', '四川资阳');
INSERT INTO `em_students` VALUES (108, '吴杰汶', '51032120010831519x', '男', '123456', '17三年软件四', '王智', '18512897167', 1, 1, '2019-10-24 19:27:37', '四川自贡');
INSERT INTO `em_students` VALUES (109, '李宇', '511324200210097432', '男', '123456', '17三年软件四', '王智', '18584871153', 1, 1, '2019-10-24 19:27:37', '四川南充');
INSERT INTO `em_students` VALUES (110, '禹长生', '500382200206055011', '男', '123456', '17三年软件四', '王智', '15708412099', 1, 1, '2019-10-24 19:27:37', '重庆市');
INSERT INTO `em_students` VALUES (111, '张培森', '513901200108120659', '男', '123456', '17三年软件四', '王智', '18228433020', 1, 1, '2019-10-24 19:27:37', '四川资阳');
INSERT INTO `em_students` VALUES (112, '宋鹏程', '421126199905150310', '男', '123456', '17三年软件四', '王智', '18581540515', 1, 1, '2019-10-24 19:27:37', '新疆阿克苏');
INSERT INTO `em_students` VALUES (113, '杨洪权', '513822200210047634', '男', '123456', '17三年软件四', '王智', '18284557383', 1, 1, '2019-10-24 19:27:37', '四川眉山');
INSERT INTO `em_students` VALUES (114, '李钰源', '533221200007240011', '男', '123456', '17三年软件四', '王智', '18582389475', 1, 1, '2019-10-24 19:27:37', '云南省昆明市官渡区');
INSERT INTO `em_students` VALUES (115, '胡兴罗', '511723200205203312', '男', '123456', '17三年软件四', '王智', '15775621792', 1, 1, '2019-10-24 19:27:37', '四川省达州市开江县');
INSERT INTO `em_students` VALUES (116, '杨仲欣', '622201200206126014', '男', '123456', '17三年软件四', '王智', '18884117828', 1, 1, '2019-10-24 19:27:37', '甘肃');
INSERT INTO `em_students` VALUES (117, '王雷', '51132420001105355X', '男', '123456', '17三年软件四', '王智', '17781129615', 1, 1, '2019-10-24 19:27:37', '四川省南充市仪陇县老木乡');
INSERT INTO `em_students` VALUES (118, '俞文彪', '510184200206040016', '男', '123456', '17三年软件四', '王智', '13518117858', 1, 1, '2019-10-24 19:27:37', '四川省崇州市');
INSERT INTO `em_students` VALUES (119, '陶毅', '51160220001127529X', '男', '123456', '17三年软件四', '王智', '18108134941', 1, 1, '2019-10-24 19:27:37', '成都');
INSERT INTO `em_students` VALUES (120, '邓鸿飞', '510123200203250314', '男', '123456', '17三年软件四', '王智', '18000594319', 1, 1, '2019-10-24 19:27:37', '成都');
INSERT INTO `em_students` VALUES (121, '林志豪', '513723200109194198', '男', '123456', '17三年软件四', '王智', '18584818461', 1, 1, '2019-10-24 19:27:37', '四川巴中');
INSERT INTO `em_students` VALUES (122, '栾国庆', '511723200208010516', '男', '123456', '17三年软件四', '王智', '13668383877', 1, 1, '2019-10-24 19:27:37', '四川达州');
INSERT INTO `em_students` VALUES (123, '谢子良', '513902200105086711', '男', '123456', '17三年软件四', '王智', '18884133970', 1, 1, '2019-10-24 19:27:37', '四川省简阳市养马镇');
INSERT INTO `em_students` VALUES (124, '邓川', '512021200204236112', '男', '123456', '17三年软件四', '王智', '13550397870', 1, 1, '2019-10-24 19:27:37', '四川省成都市');
INSERT INTO `em_students` VALUES (125, '何文杰', '513822200108148711', '男', '123456', '17三年软件四', '王智', '18144204144', 1, 1, '2019-10-24 19:27:37', '四川成都');
INSERT INTO `em_students` VALUES (126, '岳长春', '511922200101100516', '男', '123456', '17三年软件四', '王智', '15082730141', 1, 1, '2019-10-24 19:27:37', '四川巴中');
INSERT INTO `em_students` VALUES (127, '邓超耀', '51090220020203673X', '男', '123456', '17三年软件四', '王智', '17345457913', 1, 1, '2019-10-24 19:27:37', '四川遂宁');
INSERT INTO `em_students` VALUES (128, '马冲', '513701200107016330', '男', '123456', '17三年软件四', '王智', '17364792883', 1, 1, '2019-10-24 19:27:37', '四川巴中');
INSERT INTO `em_students` VALUES (129, '钟伟杰', '51032220030401821x', '男', '123456', '17三年软件四', '王智', '18581560742', 1, 1, '2019-10-24 19:27:37', '四川自贡');
INSERT INTO `em_students` VALUES (130, '钟伟杰', '51032220030401821x', '男', '123456', '17三年软件四', '王智', '18581560742', 1, 1, '2019-10-24 19:27:37', '四川自贡');
INSERT INTO `em_students` VALUES (131, '赖瑞鹏', '513822200110017657', '男', '1001', '17三年软件三班', '周鹏', '13548240496', 1, 1, '2019-10-24 19:27:54', '四川省眉山市仁寿县禾加镇');
INSERT INTO `em_students` VALUES (132, '赵佳洋', '140311200201073015', '男', '0123456', '17三年软件三班', '周鹏', '15719437701', 1, 1, '2019-10-24 19:27:54', '四川省成都市金堂县赵镇');
INSERT INTO `em_students` VALUES (133, '罗超', '51390120011124453x', '男', '12345', '17三年软件三班', '周鹏', '18512864324', 1, 1, '2019-10-24 19:27:54', '四川省资阳市雁江区伍隍镇');
INSERT INTO `em_students` VALUES (134, '罗茂伟', '51322320030227001X', '男', '123456', '17三年软件三班', '周鹏', '18328098949', 1, 1, '2019-10-24 19:27:54', '成都');
INSERT INTO `em_students` VALUES (135, '谭芸', '513023200004047118', '男', '47118', '17三年软件三班', '周鹏', '17687474714', 1, 1, '2019-10-24 19:27:54', '四川省达州市开江县任市镇');
INSERT INTO `em_students` VALUES (136, '何沁峰', '510525200108118854', '男', '159357', '17三年软件三班', '周鹏', '18428013720', 1, 1, '2019-10-24 19:27:54', '成都市新都区三河场马鞍路');
INSERT INTO `em_students` VALUES (137, '廖启意', '51178120010926475X', '男', '926475X', '17三年软件三班', '周鹏', '18584874946', 1, 1, '2019-10-24 19:27:54', '四川省万源市玉带乡');
INSERT INTO `em_students` VALUES (138, '陈鑫', '510107200201146011', '男', '202001', '17三年软件三班', '周鹏', '18190738993', 1, 1, '2019-10-24 19:27:54', '四川省成都市高新区');
INSERT INTO `em_students` VALUES (139, '卢志林', '513721199801250274', '男', '990601', '17三年软件三班', '周鹏', '17683153934', 1, 1, '2019-10-24 19:27:54', '四川省巴中市通江县');
INSERT INTO `em_students` VALUES (140, '陈龙', '511722200104303975', '男', '123456', '17三年软件三班', '周鹏', '18508396769', 1, 1, '2019-10-24 19:27:54', '成都');
INSERT INTO `em_students` VALUES (141, '李强锋', '511322200210113399', '男', '3137696005', '17三年软件三班', '周鹏', '17683221970', 1, 1, '2019-10-24 19:27:54', '四川省南充市营山县老林镇');
INSERT INTO `em_students` VALUES (142, ' 张旭东', '510311200012282917', '男', '123456', '17三年软件三班', '周鹏', '15328356316', 1, 1, '2019-10-24 19:27:54', '四川新华电脑学校');
INSERT INTO `em_students` VALUES (143, '刘涛', '511423200112011518', '男', '123456', '17三年软件三班', '周鹏', '18628168601', 1, 1, '2019-10-24 19:27:54', '眉山市洪雅县三宝镇');
INSERT INTO `em_students` VALUES (144, '樊彬', '51102520010706865X', '男', '123456', '17三年软件三班', '周鹏', '15687879639', 1, 1, '2019-10-24 19:27:54', '四川省内江市资中县孟塘镇');
INSERT INTO `em_students` VALUES (145, '吴圣祥', '500234199912183537', '男', '123456', '17三年软件三班', '周鹏', '15528434367', 1, 1, '2019-10-24 19:27:54', '重庆市开州');
INSERT INTO `em_students` VALUES (146, '卢仁杰', '511621200109128350', '男', '213389', '17三年软件三班', '周鹏', '18582365650', 1, 1, '2019-10-24 19:27:54', '四川省广安市岳池县中和镇');
INSERT INTO `em_students` VALUES (147, '吴圣祥', '500234199912183537', '男', '123456', '17三年软件三班', '周鹏', '15528434367', 1, 1, '2019-10-24 19:27:54', '重庆市开州');
INSERT INTO `em_students` VALUES (148, '张强', '513432200302052319', '男', '123456', '17三年软件三班', '周鹏', '18581544660', 1, 1, '2019-10-24 19:27:54', '四川凉山');
INSERT INTO `em_students` VALUES (149, '饶秋红', '511324200209196791', '男', '769800', '17三年软件三班', '周鹏', '18582579420', 1, 1, '2019-10-24 19:27:54', '四川成都');
INSERT INTO `em_students` VALUES (150, '刘友刚 ', '513821200105278856', '男', '123456', '17三年软件三班', '周鹏', '17713789496', 1, 1, '2019-10-24 19:27:54', '四川眉山');
INSERT INTO `em_students` VALUES (151, '王腾田曦', '530128200301141512', '男', '123456', '17三年软件三班', '周鹏', '18996901732', 1, 1, '2019-10-24 19:27:54', '昆明盘龙区葡萄街区天宇花园');
INSERT INTO `em_students` VALUES (152, '杨嘉成', '500382200302016418', '男', '123456', '17三年软件三班', '周鹏', '18628955396', 1, 1, '2019-10-24 19:27:54', '四川攀枝花市东区五十四');
INSERT INTO `em_students` VALUES (153, '彭浩然', '513231200203270014', '男', '123456', '17三年软件三班', '周鹏', '18908189967', 1, 1, '2019-10-24 19:27:54', '成都市青羊区浣花北路');
INSERT INTO `em_students` VALUES (154, '彭浩然', '513231200203270014', '男', '123456', '17三年软件三班', '周鹏', '18908189967', 1, 1, '2019-10-24 19:27:54', '成都市青羊区浣花北路');
INSERT INTO `em_students` VALUES (155, '查星宇', '513822200112251797', '男', '000000', '18人工智能三', '母浩', '18328193619', 8, 1, '2019-10-24 19:28:19', '宇宙');
INSERT INTO `em_students` VALUES (156, '汪鑫', '511402200209017658', '男', '000000', '18人工智能三', '母浩', '18215545183', 8, 1, '2019-10-24 19:28:19', '中国');
INSERT INTO `em_students` VALUES (157, '刘建', '510724200404175815', '男', '000001', '18人工智能三', '母浩', '15228371568', 8, 1, '2019-10-24 19:28:19', '地球');
INSERT INTO `em_students` VALUES (158, '张瑶卿', '510403200208100316', '男', '013579', '18人工智能三', '母浩', '18328983584', 8, 1, '2019-10-24 19:28:19', '西昌');
INSERT INTO `em_students` VALUES (159, '廖洋', '510904200108134117', '男', '060606', '18人工智能三', '母浩', '15882154227', 8, 1, '2019-10-24 19:28:19', '成都');
INSERT INTO `em_students` VALUES (160, '何万里', '511324200107223031', '男', '223031', '18人工智能三', '母浩', '17581710551', 8, 1, '2019-10-24 19:28:19', '成都');
INSERT INTO `em_students` VALUES (161, '王元松', '511527200009226714', '男', 'qweasd', '18人工智能三', '母浩', '18882400201', 8, 1, '2019-10-24 19:28:19', '银河系');
INSERT INTO `em_students` VALUES (162, '曾广涛', '511529200203224635', '男', '000000', '18人工智能三', '母浩', '15183126771', 8, 1, '2019-10-24 19:28:19', '宜宾');
INSERT INTO `em_students` VALUES (163, '陆泰龙', '510106200402250070', '男', '444444', '18人工智能三', '母浩', '15881063525', 8, 1, '2019-10-24 19:28:19', '中国');
INSERT INTO `em_students` VALUES (164, '徐天豪', '510122200204082010', '男', '123456', '18人工智能三', '母浩', '18208106238', 8, 1, '2019-10-24 19:28:19', '成都');
INSERT INTO `em_students` VALUES (165, '万一超', '510121200208297813', '男', '000000', '18人工智能三', '母浩', '18583793981', 8, 1, '2019-10-24 19:28:19', '成都');
INSERT INTO `em_students` VALUES (166, '加纳尔', '652927200302052155', '男', '0302551', '18人工智能三', '母浩', '13096388845', 8, 1, '2019-10-24 19:28:19', '成都');
INSERT INTO `em_students` VALUES (167, '刘石', '511323200107061953', '男', '020324', '18人工智能三', '母浩', '17361378009', 8, 1, '2019-10-24 19:28:19', '南充');
INSERT INTO `em_students` VALUES (168, '张瑶', '511025200201035037', '男', '020106', '18人工智能三', '母浩', '15992406133', 8, 1, '2019-10-24 19:28:19', '');
INSERT INTO `em_students` VALUES (169, '沈伟伦', '511724200304046275', '男', '654321', '18人工智能三', '母浩', '17318433342', 8, 1, '2019-10-24 19:28:19', '达州');
INSERT INTO `em_students` VALUES (170, '李杨', '510502200302241915', '男', '131452', '18人工智能三', '母浩', '15928173635', 8, 1, '2019-10-24 19:28:19', '泸州');
INSERT INTO `em_students` VALUES (171, '谭右林', '511323200302231815', '男', '202303tyl', '18人工智能三', '母浩', '18728494007', 8, 1, '2019-10-24 19:28:19', '');
INSERT INTO `em_students` VALUES (172, '姜豪', '36068120011218051X', '男', 'lbwNB', '18人工智能三', '母浩', '18583510945', 8, 1, '2019-10-24 19:28:19', '江西');
INSERT INTO `em_students` VALUES (173, '蒋全成', '510422200309126215', '男', '258025', '18人工智能三', '母浩', '18782341879', 8, 1, '2019-10-24 19:28:19', '攀枝花');
INSERT INTO `em_students` VALUES (174, '任怡飞', '510703200310242413', '男', '242413', '18人工智能三', '母浩', '17381657030', 8, 1, '2019-10-24 19:28:19', '你心里');
INSERT INTO `em_students` VALUES (175, '王志君', '511921200210025918', '男', '025918', '18人工智能三', '母浩', '13208373197', 8, 1, '2019-10-24 19:28:19', '中国');
INSERT INTO `em_students` VALUES (176, '傅金巾', '511621200009228338', '男', '200092', '18人工智能三', '母浩', '17688425286', 8, 1, '2019-10-24 19:28:19', '广安');
INSERT INTO `em_students` VALUES (177, '张正', '51100200204086011', '男', '2532952', '18人工智能三', '母浩', '15282163768', 8, 1, '2019-10-24 19:28:19', '四川');
INSERT INTO `em_students` VALUES (178, '石鑫', '522131200302090014', '男', '2864305', '18人工智能三', '母浩', '19915646249', 8, 1, '2019-10-24 19:28:19', '贵州');
INSERT INTO `em_students` VALUES (179, '王尹辰', '511724200302207098', '男', '123456', '18人工智能三', '母浩', '13258340640', 8, 1, '2019-10-24 19:28:19', '四川');
INSERT INTO `em_students` VALUES (180, '覃晨', '511902200303038110', '男', '123456', '18人工智能三', '母浩', '18200483007', 8, 1, '2019-10-24 19:28:19', '四川');
INSERT INTO `em_students` VALUES (181, '董大凛', '511902200106085000', '男', '383838', '18人工智能 三', '母浩', '17883678115', 8, 1, '2019-10-24 19:28:19', '四川');
INSERT INTO `em_students` VALUES (182, '李浩洋', '152632200305220317', '男', '123456', '18人工智能三', '母浩', '13115931976', 8, 1, '2019-10-24 19:28:19', '内蒙古');
INSERT INTO `em_students` VALUES (183, '李天蛟', '532130200312152317', '男', '123456', '18人工智能 三', '母浩', '15528375735', 8, 1, '2019-10-24 19:28:19', '云南');
INSERT INTO `em_students` VALUES (184, '刘成', '512023200207222373', '男', '131420', '18人工智能 三', '母浩', '15308086890', 8, 1, '2019-10-24 19:28:19', '四川');
INSERT INTO `em_students` VALUES (185, '李文超', '51102520011115485X', '男', '3197026911', '18人工智能三', '母浩', '18584160198', 8, 1, '2019-10-24 19:28:19', '四川');
INSERT INTO `em_students` VALUES (186, '邓材东', '511621200206298730', '男', '987654321', '18人工智能三', '母浩', '15680572092', 8, 1, '2019-10-24 19:28:19', '四川');
INSERT INTO `em_students` VALUES (187, '胡涛', '511303200307160000', '男', '131452', '18人工智能 三', '母浩', '18581742527', 8, 1, '2019-10-24 19:28:19', '四川');
INSERT INTO `em_students` VALUES (188, '黄加劲', '511724200203155878', '男', '202124', '18人工智能 三', '母浩', '18781885753', 8, 1, '2019-10-24 19:28:19', '四川');
INSERT INTO `em_students` VALUES (189, '李新团', '513022199805193332', '男', '121300', '18人工智能三', '母浩', '13183507725', 8, 1, '2019-10-24 19:28:19', '四川');
INSERT INTO `em_students` VALUES (190, '李新团', '513022199805193332', '男', '121300', '18人工智能三', '母浩', '13183507725', 8, 1, '2019-10-24 19:28:19', '四川');
INSERT INTO `em_students` VALUES (191, '杨云兮', '510402200112120957', '男', '123456', '17三年dt1,2', '刘斯大', '13060071263', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (192, '吕昱霖', '512022200309025297', '男', '123456', '17三年dt1,2', '刘斯大', '17311324160', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (193, '苏杭', '511723200211230034', '男', '123456', '17三年dt1,2', '刘斯大', '18583990385', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (194, '蔡兴旺', '511321200205022453', '男', '123456', '17三年dt1,2', '刘斯大', '18582151185', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (195, '邓源鑫', '510902200206039014', '男', '123456', '17三年dt1,2', '刘斯大', '18584195301', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (196, '蒲俊中', '510302200004291518', '男', '123456', '17三年dt1,2', '刘斯大', '18581950235', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (197, '潘岳', '510522200108087294', '男', '123456', '17三年dt1,2', '刘斯大', '18982494890', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (198, '郑乾', '510402200207246317', '男', '123456', '17三年dt1,2', '刘斯大', '18508389572', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (199, '杨朝浪', '511781200108010037', '男', '123456', '17三年dt1,2', '刘斯大', '16698597848', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (200, '张成晨', '511324200107030299', '男', '123456', '17三年dt1,2', '刘斯大', '18512809907', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (201, '罗智屏', '511123200201283359', '男', '123456', '17三年dt1,2', '刘斯大', '18582310389', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (202, '刘国梁', '429004200104291155', '男', '123456', '17三年dt1,2', '刘斯大', '17764982756', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (203, '邓书恒', '510402200208070915', '男', '123456', '17三年dt1,2', '刘斯大', '17616241289', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (204, '王星雨', '513433200111222721', '女', '123456', '17三年dt1,2', '刘斯大', '17360068725', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (205, '彭天笑', '51343320010704271x', '男', '123456', '17三年dt1,2', '刘斯大', '15390470036', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (206, '廖宇杰', '51382220020122319x', '男', '123456', '17三年dt1,2', '刘斯大', '18084862002', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (207, '王洋', '511321200002010671', '男', '123456', '17三年dt1,2', '刘斯大', '15208363190', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (208, '刘凯', '513221200207090317', '男', '123456', '17三年dt1,2', '刘斯大', '15756595017', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (209, '谭家乐', '511011200202053554', '男', '123456', '17三年dt1,2', '刘斯大', '17628006381', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (210, '张宏铭', '511123200107262914', '男', '123456', '17三年dt1,2', '刘斯大', '15528332873', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (211, '王鑫', '511325200206282113', '男', '123456', '17三年dt1,2', '刘斯大', '18584896282', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (212, '谢虹宇', '510822200112070010', '男', '123456', '17三年dt1,2', '刘斯大', '17381987667', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (213, '李小宝', '513433200010186012', '男', '123456', '17三年dt1,2', '刘斯大', '17343660684', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (214, '李小宝', '513433200010186012', '男', '123456', '17三年dt1,2', '刘斯大', '17343660684', 9, 1, '2019-10-24 19:28:30', '');
INSERT INTO `em_students` VALUES (215, '郭航', '510922200103268274', '男', '123456', '18大数据3班', '潘涛', '13547740223', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (216, '郭林', '510722199201297590', '男', '123456', '18大数据3班', '潘涛', '18659801148', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (217, '张超', '500238200101095112', '男', '123456', '18大数据3班', '潘涛', '17623535129', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (218, '冯泽民', '513701199808131512', '男', '123456', '18大数据3班', '潘涛', '13109937793', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (219, '余海浪', '511721200012270890', '男', '123456', '18大数据3班', '潘涛', '17628484147', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (220, '黄正红', '511523199811022873', '男', '123456', '18大数据3班', '潘涛', '13605091093', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (221, '李波', '51152420010418551X', '男', '123456', '18大数据3班', '潘涛', '15351359592', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (222, '杨振宇', '510802200005220532', '男', '123456', '18大数据3班', '潘涛', '18980492726', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (223, '闵杰权', '511324199912147531', '男', '123456', '18大数据3班', '潘涛', '15281743262', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (224, '陈春祥', '510304199802065811', '男', '123456', '18大数据3班', '潘涛', '15108320760', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (225, '雷月酉', '510107200006223413', '男', '123456', '18大数据3班', '潘涛', '13408548961', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (226, '付国贤', '510311200105045814', '男', '123456', '18大数据3班', '潘涛', '15708298339', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (227, '羊军', '510722199910142612', '男', '123456', '18大数据3班', '潘涛', '18780362232', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (228, '唐林', '51160219981109853X', '男', '123456', '18大数据3班', '潘涛', '13350915793', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (229, '苏智鹏', '511023199801187415', '男', '123456', '18大数据3班', '潘涛', '17521584998', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (230, '王艺博', '620402200103253438', '男', '123456', '18大数据3班', '潘涛', '18089430261', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (231, '马牛牛', '511322199611241038', '男', '123456', '18大数据3班', '潘涛', '17628190775', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (232, '佘志成', '510821200102238530', '男', '123456', '18大数据3班', '潘涛', '17683095521', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (233, '杨巧俊', '511025200002162121', '女', '123456', '18大数据3班', '潘涛', '15244897329', 7, 1, '2019-10-31 10:44:59', '');
INSERT INTO `em_students` VALUES (234, '杨超', '622626200203253017', '男', '123456', '18移动APP1', '李隆斌', '18628380212', 4, 1, '2019-10-31 10:47:01', '甘肃省陇南市文县');
INSERT INTO `em_students` VALUES (235, '兰浚峰', '513125200304212216', '男', '123456', '18移动APP1', '李隆斌', '18080093974', 4, 1, '2019-10-31 10:47:01', '四川省雅安市石棉县');
INSERT INTO `em_students` VALUES (236, '陈辉', '532625200209161318', '男', '123456', '18移动APP1', '李隆斌', '17882576466', 4, 1, '2019-10-31 10:47:01', '四川');
INSERT INTO `em_students` VALUES (237, '曾泓锦', '511702200307040014', '男`', '123456', '18移动APP1', '李隆斌', '17790310257', 4, 1, '2019-10-31 10:47:01', '达州');
INSERT INTO `em_students` VALUES (238, '岳伦超', '510682200308110016', '男', '123456', '18移动APP1', '李隆斌', '18113626876', 4, 1, '2019-10-31 10:47:01', '四川省德阳市');
INSERT INTO `em_students` VALUES (239, '夏嵬', '511922200310271071', '男', '123456', '18移动APP1', '李隆斌', '13541286075', 4, 1, '2019-10-31 10:47:01', '四川巴中市南江县');
INSERT INTO `em_students` VALUES (240, '黄敏', '512021200309187628', '女', '123456', '18移动APP1', '李隆斌', '18581757613', 4, 1, '2019-10-31 10:47:01', '资阳');
INSERT INTO `em_students` VALUES (241, '陈永祥', '513125200205103815', '男', '123456', '18移动APP1', '李隆斌', '15281276579', 4, 1, '2019-10-31 10:47:01', '四川省雅安市石棉县');
INSERT INTO `em_students` VALUES (242, '方健宾', '511529200302265811', '男', '123456', '18移动APP1', '李隆斌', '15982820891', 4, 1, '2019-10-31 10:47:01', '成都');
INSERT INTO `em_students` VALUES (243, '康昊', '440281200202260431', '男', '123456', '18移动APP1', '李隆斌', '13541581664', 4, 1, '2019-10-31 10:47:01', '成都');
INSERT INTO `em_students` VALUES (244, '周效屿', '510104200209090017', '男', '123456', '18移动APP1', '李隆斌', '17318961370', 4, 1, '2019-10-31 10:47:01', '成都');
INSERT INTO `em_students` VALUES (245, '罗耀辉', '510182200211253818', '男', '123456', '18移动APP1', '李隆斌', '19828639828', 4, 1, '2019-10-31 10:47:01', '成都');
INSERT INTO `em_students` VALUES (246, '王杰', '510921200110280814', '男', '123456', '18移动APP1', '李隆斌', '15982555297', 4, 1, '2019-10-31 10:47:01', '四川省遂宁市蓬溪县');
INSERT INTO `em_students` VALUES (247, '徐海顺', '513322200102033537', '男', '123456', '18移动APP1', '李隆斌', '18584846871', 4, 1, '2019-10-31 10:47:01', '成都');
INSERT INTO `em_students` VALUES (248, '黄建军', '510623200209066013', '男', '123456', '18移动APP1', '李隆斌', '13541764978', 4, 1, '2019-10-31 10:47:01', '四川省德阳市中江县');
INSERT INTO `em_students` VALUES (249, '廖鑫苹', '511923200304027773', '男', '123456', '18移动APP1', '李隆斌', '19940721356', 4, 1, '2019-10-31 10:47:01', '四川省巴中市平昌县');
INSERT INTO `em_students` VALUES (250, '严宏论', '510125200308191819', '男', '123456', '18移动APP1', '李隆斌', '18980625668', 4, 1, '2019-10-31 10:47:01', '四川省成都市新都区');
INSERT INTO `em_students` VALUES (251, '吴玉龙', '511025200208078814', '男', '123456', '18移动APP1', '李隆斌', '15828445430', 4, 1, '2019-10-31 10:47:01', '成都');
INSERT INTO `em_students` VALUES (252, '扎巴', '542301200210080536', '男', '123456', '18移动app1', '李隆斌', '18584907554', 4, 1, '2019-10-31 10:47:01', '四川省遂宁市射洪县');

-- ----------------------------
-- Table structure for em_subject
-- ----------------------------
DROP TABLE IF EXISTS `em_subject`;
CREATE TABLE `em_subject`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id编号',
  `subject_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科目名称',
  `status` smallint(4) NOT NULL DEFAULT 1 COMMENT '状态:1是,0否',
  `major_id` int(10) NOT NULL COMMENT '关联专业表id',
  `add_time` datetime NOT NULL COMMENT '添加时间',
  `on_off` tinyint(4) NOT NULL DEFAULT 1 COMMENT '开关状态 1开启 0关闭',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '科目表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of em_subject
-- ----------------------------
INSERT INTO `em_subject` VALUES (1, 'html5+ccs', 1, 1, '2019-09-29 08:55:16', 1);
INSERT INTO `em_subject` VALUES (2, 'c++', 1, 3, '2019-09-29 09:49:59', 1);
INSERT INTO `em_subject` VALUES (3, 'mysql', 1, 2, '2019-09-29 09:54:46', 1);
INSERT INTO `em_subject` VALUES (4, 'oracle', 1, 1, '2019-10-09 15:06:39', 1);
INSERT INTO `em_subject` VALUES (5, 'linux', 1, 4, '2019-10-09 15:59:11', 1);
INSERT INTO `em_subject` VALUES (6, 'scratch', 1, 2, '2019-10-09 16:04:21', 1);
INSERT INTO `em_subject` VALUES (7, 'jquery', 1, 7, '2019-10-24 09:42:45', 1);
INSERT INTO `em_subject` VALUES (8, 'jsp', 1, 1, '2019-10-24 10:18:43', 1);
INSERT INTO `em_subject` VALUES (9, 'python', 1, 4, '2019-10-24 10:18:56', 1);
INSERT INTO `em_subject` VALUES (10, 'java', 1, 8, '2019-10-24 18:56:38', 1);
INSERT INTO `em_subject` VALUES (11, 'web前端', 1, 9, '2019-10-24 18:59:41', 1);
INSERT INTO `em_subject` VALUES (12, 'java', 1, 9, '2019-10-24 19:00:29', 1);
INSERT INTO `em_subject` VALUES (13, 'java', 1, 7, '2019-10-24 19:00:39', 1);
INSERT INTO `em_subject` VALUES (14, 'python', 1, 8, '2019-10-24 19:00:52', 1);
INSERT INTO `em_subject` VALUES (15, 'jquery', 1, 3, '2019-10-30 11:05:36', 1);

-- ----------------------------
-- Table structure for em_topic
-- ----------------------------
DROP TABLE IF EXISTS `em_topic`;
CREATE TABLE `em_topic`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '编号',
  `single` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '单选题',
  `selection` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '多选题',
  `judge` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '判断题',
  `operation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作题',
  `id_card` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生身份证',
  `username` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生名字',
  `class_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '班级',
  `major_id` int(10) NOT NULL COMMENT '专业id',
  `subject_id` int(10) NOT NULL COMMENT '科目id',
  `add_time` datetime NOT NULL COMMENT '添加时间',
  `scroe` int(10) NOT NULL COMMENT '总分数',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态 0已删除的成绩 1未删除的成绩',
  `not_read` tinyint(4) NOT NULL COMMENT '1 为已经阅卷 0为未阅卷  2为已阅卷等待教务处审核 ',
  `single_scroe` int(10) NOT NULL COMMENT '单选题分数',
  `selection_scroe` int(10) NOT NULL COMMENT '多选题分数',
  `judge_scroe` int(10) NOT NULL COMMENT '判断题分数',
  `operation_scroe` int(10) NOT NULL COMMENT '操作题分数',
  `pathinfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '操作题上传路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '提交试卷分数题库' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
