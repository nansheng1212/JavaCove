/*
 Navicat Premium Dump SQL

 Source Server         : 192.168.223.102
 Source Server Type    : MySQL
 Source Server Version : 80028 (8.0.28)
 Source Host           : 192.168.223.102:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80028 (8.0.28)
 File Encoding         : 65001

 Date: 21/02/2025 11:44:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `blob_data` blob NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `calendar` blob NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `fired_time` bigint NULL DEFAULT NULL,
  `sched_time` bigint NULL DEFAULT NULL,
  `priority` int NULL DEFAULT NULL,
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_data` blob NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `last_checkin_time` bigint NULL DEFAULT NULL,
  `checkin_interval` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `repeat_count` bigint NULL DEFAULT NULL,
  `repeat_interval` bigint NULL DEFAULT NULL,
  `times_triggered` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `int_prop_1` int NULL DEFAULT NULL,
  `int_prop_2` int NULL DEFAULT NULL,
  `long_prop_1` bigint NULL DEFAULT NULL,
  `long_prop_2` bigint NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `next_fire_time` bigint NULL DEFAULT NULL,
  `prev_fire_time` bigint NULL DEFAULT NULL,
  `priority` int NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `start_time` bigint NULL DEFAULT NULL,
  `end_time` bigint NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `misfire_instr` smallint NULL DEFAULT NULL,
  `job_data` blob NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NULL DEFAULT NULL,
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-08-06 09:49:23', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-08-06 09:49:23', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-08-06 09:49:23', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-08-06 09:49:23', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-08-06 09:49:23', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-08-06 09:49:23', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NULL DEFAULT NULL,
  `parent_id` bigint NULL DEFAULT NULL,
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `order_num` int NULL DEFAULT NULL,
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-08-06 09:49:15', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-08-06 09:49:15', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-08-06 09:49:15', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-08-06 09:49:15', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-08-06 09:49:15', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-08-06 09:49:15', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-08-06 09:49:15', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-08-06 09:49:15', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-08-06 09:49:15', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-08-06 09:49:16', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NULL DEFAULT NULL,
  `dict_sort` int NULL DEFAULT NULL,
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-08-06 09:49:23', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-08-06 09:49:23', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-08-06 09:49:23', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-08-06 09:49:23', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NULL DEFAULT NULL,
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-08-06 09:49:22', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NULL DEFAULT NULL,
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-08-06 09:49:23', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-08-06 09:49:23', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-08-06 09:49:23', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NULL DEFAULT NULL,
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NULL DEFAULT NULL,
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `login_time` datetime NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-08-06 09:50:43');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-06 09:50:48');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-06 11:32:35');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-06 14:07:51');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-06 18:38:10');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-08-07 09:13:47');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-07 09:13:51');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-07 09:20:27');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码已失效', '2024-08-07 16:17:53');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-07 16:17:57');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-08 17:25:12');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '退出成功', '2024-08-08 17:39:16');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-08 17:39:20');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-09 09:08:25');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-08-09 10:58:42');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '验证码错误', '2024-08-09 10:58:50');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-09 10:58:55');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-09 13:25:17');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-08-09 13:31:01');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NULL DEFAULT NULL,
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `parent_id` bigint NULL DEFAULT NULL,
  `order_num` int NULL DEFAULT NULL,
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `route_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_frame` int NULL DEFAULT NULL,
  `is_cache` int NULL DEFAULT NULL,
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 3, 'system', NULL, '', '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2024-08-06 09:49:17', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 4, 'monitor', NULL, '', '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2024-08-06 09:49:17', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 5, 'tool', NULL, '', '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2024-08-06 09:49:17', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2024-08-06 09:49:17', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2024-08-06 09:49:17', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2024-08-06 09:49:17', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2024-08-06 09:49:17', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2024-08-06 09:49:17', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2024-08-06 09:49:17', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2024-08-06 09:49:17', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2024-08-06 09:49:17', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2024-08-06 09:49:17', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2024-08-06 09:49:17', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2024-08-06 09:49:17', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2024-08-06 09:49:17', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2024-08-06 09:49:17', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2024-08-06 09:49:17', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2024-08-06 09:49:17', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2024-08-06 09:49:17', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2024-08-06 09:49:17', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2024-08-06 09:49:17', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2024-08-06 09:49:17', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-08-06 09:49:17', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2024-08-06 09:49:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2024-08-06 09:49:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2024-08-06 09:49:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2024-08-06 09:49:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2024-08-06 09:49:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2024-08-06 09:49:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2024-08-06 09:49:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '价格生成', 0, 1, 'genprice', 'genprice/index', NULL, '', 1, 0, 'C', '0', '0', '', 'money', 'admin', '2024-08-06 09:49:17', '', NULL, '价格生成');
INSERT INTO `sys_menu` VALUES (2001, '信息管理', 0, 2, 'information', NULL, '', '', 1, 0, 'M', '0', '0', '', 'documentation', 'admin', '2024-08-06 09:49:17', '', NULL, '叉车信息管理目录');
INSERT INTO `sys_menu` VALUES (2002, '叉车信息', 2001, 1, 'forklift', 'information/forklift/index', NULL, '', 1, 0, 'C', '0', '0', 'information:forklift:list', 'documentation', 'admin', '2024-08-06 14:12:37', '', NULL, '叉车菜单');
INSERT INTO `sys_menu` VALUES (2003, '叉车查询', 2002, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'information:forklift:query', '#', 'admin', '2024-08-06 14:12:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '叉车新增', 2002, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'information:forklift:add', '#', 'admin', '2024-08-06 14:12:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '叉车修改', 2002, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'information:forklift:edit', '#', 'admin', '2024-08-06 14:12:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '叉车删除', 2002, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'information:forklift:remove', '#', 'admin', '2024-08-06 14:12:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '叉车导出', 2002, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'information:forklift:export', '#', 'admin', '2024-08-06 14:12:37', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '配置种类信息', 2001, 1, 'type', 'information/type/index', NULL, '', 1, 0, 'C', '0', '0', 'information:type:list', 'documentation', 'admin', '2024-08-06 14:43:04', '', NULL, '配置种类菜单');
INSERT INTO `sys_menu` VALUES (2009, '配置种类查询', 2008, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'information:type:query', '#', 'admin', '2024-08-06 14:43:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '配置种类新增', 2008, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'information:type:add', '#', 'admin', '2024-08-06 14:43:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '配置种类修改', 2008, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'information:type:edit', '#', 'admin', '2024-08-06 14:43:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '配置种类删除', 2008, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'information:type:remove', '#', 'admin', '2024-08-06 14:43:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '配置种类导出', 2008, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'information:type:export', '#', 'admin', '2024-08-06 14:43:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2014, '配置加价信息', 2001, 1, 'configsurcharge', 'information/configsurcharge/index', NULL, '', 1, 0, 'C', '0', '0', 'information:configsurcharge:list', 'documentation', 'admin', '2024-08-06 14:43:55', '', NULL, '配置加价菜单');
INSERT INTO `sys_menu` VALUES (2015, '配置加价查询', 2014, 1, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'information:configsurcharge:query', '#', 'admin', '2024-08-06 14:43:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '配置加价新增', 2014, 2, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'information:configsurcharge:add', '#', 'admin', '2024-08-06 14:43:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '配置加价修改', 2014, 3, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'information:configsurcharge:edit', '#', 'admin', '2024-08-06 14:43:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '配置加价删除', 2014, 4, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'information:configsurcharge:remove', '#', 'admin', '2024-08-06 14:43:55', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '配置加价导出', 2014, 5, '#', '', NULL, '', 1, 0, 'F', '0', '0', 'information:configsurcharge:export', '#', 'admin', '2024-08-06 14:43:55', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NULL DEFAULT NULL,
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `notice_content` longblob NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2024-08-06 09:49:23', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2024-08-06 09:49:23', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NULL DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `business_type` int NULL DEFAULT NULL,
  `method` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `operator_type` int NULL DEFAULT NULL,
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` int NULL DEFAULT NULL,
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `oper_time` datetime NULL DEFAULT NULL,
  `cost_time` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"configsurcharge,config_type,forklift\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 14:09:20', 478);
INSERT INTO `sys_oper_log` VALUES (101, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"config_type\"}', NULL, 0, NULL, '2024-08-06 14:10:12', 269);
INSERT INTO `sys_oper_log` VALUES (102, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"configsurcharge\"}', NULL, 0, NULL, '2024-08-06 14:10:33', 45);
INSERT INTO `sys_oper_log` VALUES (103, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"forklift\"}', NULL, 0, NULL, '2024-08-06 14:10:36', 35);
INSERT INTO `sys_oper_log` VALUES (104, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 14:37:23', 83);
INSERT INTO `sys_oper_log` VALUES (105, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"configsurcharge\",\"className\":\"Configsurcharge\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":4,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ModelNumber\",\"columnComment\":\"型号\",\"columnId\":5,\"columnName\":\"model_number\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"modelNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnId\":6,\"columnName\":\"name\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"AddPrice\",\"columnId\":7,\"columnName\":\"add_price\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"addPrice\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 14:39:39', 53);
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"configsurcharge\"}', NULL, 0, NULL, '2024-08-06 14:39:51', 209);
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"configsurcharge\",\"className\":\"Configsurcharge\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":4,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-06 14:39:39\",\"usableColumn\":false},{\"capJavaField\":\"ModelNumber\",\"columnComment\":\"型号\",\"columnId\":5,\"columnName\":\"model_number\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"modelNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-06 14:39:39\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnId\":6,\"columnName\":\"name\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-06 14:39:39\",\"usableColumn\":false},{\"capJavaField\":\"AddPrice\",\"columnId\":7,\"columnName\":\"add_price\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"addPrice\",\"ja', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 14:40:47', 30);
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"type\",\"className\":\"ConfigType\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"名称\",\"columnId\":2,\"columnName\":\"name\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Code\",\"columnComment\":\"编码\",\"columnId\":3,\"columnName\":\"code\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"code\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"guo\",\"functionName\":\"配置种类\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"information\",\"options\":\"{\\\"parentMenuId\\\":2001}\",\"packageName\":\"com.ruoyi.guo\",\"params\":{\"parentMenuId\":2001},\"parentMenuId\":\"2001\",\"sub\":false,\"tableComment\":\"配置种类\",\"tableId\":1,\"tableName\":\"config_type\",\"tplCategory\":\"crud\",\"tree\":false}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 14:41:19', 20);
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"config_type,configsurcharge\"}', NULL, 0, NULL, '2024-08-06 14:41:40', 92);
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/config_type', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 14:54:31', 133);
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/configsurcharge', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 14:54:32', 41);
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"configsurcharge\",\"className\":\"Configsurcharge\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"id\",\"columnId\":4,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-06 14:54:32\",\"usableColumn\":false},{\"capJavaField\":\"ModelNumber\",\"columnComment\":\"型号\",\"columnId\":5,\"columnName\":\"model_number\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"modelNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-06 14:54:32\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"名称\",\"columnId\":6,\"columnName\":\"name\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-06 14:54:32\",\"usableColumn\":false},{\"capJavaField\":\"AddPrice\",\"columnComment\":\"加价\",\"columnId\":7,\"columnName\":\"add_price\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 15:22:59', 150);
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', '研发部门', '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"configsurcharge\",\"className\":\"Configsurcharge\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"id\",\"columnId\":4,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-06 15:22:59\",\"usableColumn\":false},{\"capJavaField\":\"ModelNumber\",\"columnComment\":\"型号\",\"columnId\":5,\"columnName\":\"model_number\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"modelNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-06 15:22:59\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"名称\",\"columnId\":6,\"columnName\":\"name\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-06 15:22:59\",\"usableColumn\":false},{\"capJavaField\":\"AddPrice\",\"columnComment\":\"加价\",\"columnId\":7,\"columnName\":\"add_price\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 15:24:03', 39);
INSERT INTO `sys_oper_log` VALUES (114, '叉车', 1, 'com.ruoyi.guo.controller.ForkliftController.add()', 'POST', 1, 'admin', NULL, '/information/forklift', '127.0.0.1', '内网IP', '{\"id\":3,\"modelNumber\":\"32\",\"name\":\"12\",\"params\":{},\"price\":\"1472\",\"standardConfiguration\":\"是否大多数\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 15:35:52', 28);
INSERT INTO `sys_oper_log` VALUES (115, '叉车', 3, 'com.ruoyi.guo.controller.ForkliftController.remove()', 'DELETE', 1, 'admin', NULL, '/information/forklift/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 15:36:08', 318);
INSERT INTO `sys_oper_log` VALUES (116, '叉车', 1, 'com.ruoyi.guo.controller.ForkliftController.add()', 'POST', 1, 'admin', NULL, '/information/forklift', '127.0.0.1', '内网IP', '{\"id\":4,\"modelNumber\":\"241\",\"name\":\"72\",\"params\":{},\"price\":\"141\",\"remark\":\"规范\",\"standardConfiguration\":\"7727\",\"type\":\"个\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 15:39:01', 14);
INSERT INTO `sys_oper_log` VALUES (117, '叉车', 3, 'com.ruoyi.guo.controller.ForkliftController.remove()', 'DELETE', 1, 'admin', NULL, '/information/forklift/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 15:39:05', 8);
INSERT INTO `sys_oper_log` VALUES (118, '配置种类', 1, 'com.ruoyi.guo.controller.ConfigTypeController.add()', 'POST', 1, 'admin', NULL, '/information/type', '127.0.0.1', '内网IP', '{\"code\":\"t\",\"id\":17,\"name\":\"发的第三方\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 15:39:17', 5);
INSERT INTO `sys_oper_log` VALUES (119, '配置种类', 3, 'com.ruoyi.guo.controller.ConfigTypeController.remove()', 'DELETE', 1, 'admin', NULL, '/information/type/17', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 15:39:24', 11);
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"configsurcharge\",\"className\":\"Configsurcharge\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"id\",\"columnId\":4,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-06 15:24:03\",\"usableColumn\":false},{\"capJavaField\":\"ModelNumber\",\"columnComment\":\"型号\",\"columnId\":5,\"columnName\":\"model_number\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"modelNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-06 15:24:03\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"名称\",\"columnId\":6,\"columnName\":\"name\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2024-08-06 15:24:03\",\"usableColumn\":false},{\"capJavaField\":\"AddPrice\",\"columnComment\":\"加价\",\"columnId\":7,\"columnName\":\"add_price\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 14:09:20\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 15:40:29', 61);
INSERT INTO `sys_oper_log` VALUES (121, '配置加价', 2, 'com.ruoyi.guo.controller.ConfigsurchargeController.edit()', 'PUT', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"1710\",\"configTypeList\":[],\"id\":1,\"modelNumber\":\"3-3.8t\",\"name\":\"潍柴WP3.2(国三498）\",\"params\":{},\"type\":\"B\"}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'A\'\r\n### The error may exist in file [C:\\Users\\86151\\Desktop\\项目\\ok项目\\RuoYi-Vue-master\\ruoyi-admin\\target\\classes\\mapper\\ConfigsurchargeMapper.xml]\r\n### The error may involve com.ruoyi.guo.mapper.ConfigsurchargeMapper.deleteConfigTypeByCode-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from config_type where code = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'A\'\n; Data truncation: Truncated incorrect DOUBLE value: \'A\'; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'A\'', '2024-08-06 15:43:45', 142);
INSERT INTO `sys_oper_log` VALUES (122, '配置加价', 2, 'com.ruoyi.guo.controller.ConfigsurchargeController.edit()', 'PUT', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"1710\",\"configTypeList\":[],\"id\":1,\"modelNumber\":\"3-3.8t\",\"name\":\"潍柴WP3.2(国三498）\",\"params\":{},\"type\":\"B\"}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'A\'\r\n### The error may exist in file [C:\\Users\\86151\\Desktop\\项目\\ok项目\\RuoYi-Vue-master\\ruoyi-admin\\target\\classes\\mapper\\ConfigsurchargeMapper.xml]\r\n### The error may involve com.ruoyi.guo.mapper.ConfigsurchargeMapper.deleteConfigTypeByCode-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from config_type where code = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'A\'\n; Data truncation: Truncated incorrect DOUBLE value: \'A\'; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'A\'', '2024-08-06 15:43:58', 5);
INSERT INTO `sys_oper_log` VALUES (123, '配置加价', 2, 'com.ruoyi.guo.controller.ConfigsurchargeController.edit()', 'PUT', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"1710\",\"configTypeList\":[],\"id\":1,\"modelNumber\":\"3-3.8t\",\"name\":\"潍柴WP3.2(国三498）\",\"params\":{},\"type\":\"B\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 15:47:49', 33);
INSERT INTO `sys_oper_log` VALUES (124, '配置加价', 2, 'com.ruoyi.guo.controller.ConfigsurchargeController.edit()', 'PUT', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"1710\",\"configTypeList\":[],\"id\":1,\"modelNumber\":\"3-3.8t\",\"name\":\"潍柴WP3.2(国三498）\",\"params\":{},\"type\":\"A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 15:47:54', 9);
INSERT INTO `sys_oper_log` VALUES (125, '配置加价', 1, 'com.ruoyi.guo.controller.ConfigsurchargeController.add()', 'POST', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"432432\",\"configTypeList\":[],\"id\":2,\"modelNumber\":\"23\",\"name\":\"而额外\",\"params\":{},\"type\":\"A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 15:48:09', 15);
INSERT INTO `sys_oper_log` VALUES (126, '配置加价', 3, 'com.ruoyi.guo.controller.ConfigsurchargeController.remove()', 'DELETE', 1, 'admin', NULL, '/information/configsurcharge/2', '127.0.0.1', '内网IP', '{}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'A\'\r\n### The error may exist in file [C:\\Users\\86151\\Desktop\\项目\\ok项目\\RuoYi-Vue-master\\ruoyi-admin\\target\\classes\\mapper\\ConfigsurchargeMapper.xml]\r\n### The error may involve com.ruoyi.guo.mapper.ConfigsurchargeMapper.deleteConfigTypeByCodes-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from config_type where code in           (               ?          )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'A\'\n; Data truncation: Truncated incorrect DOUBLE value: \'A\'; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'A\'', '2024-08-06 15:48:12', 74);
INSERT INTO `sys_oper_log` VALUES (127, '配置加价', 3, 'com.ruoyi.guo.controller.ConfigsurchargeController.remove()', 'DELETE', 1, 'admin', NULL, '/information/configsurcharge/2', '127.0.0.1', '内网IP', '{}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'A\'\r\n### The error may exist in file [C:\\Users\\86151\\Desktop\\项目\\ok项目\\RuoYi-Vue-master\\ruoyi-admin\\target\\classes\\mapper\\ConfigsurchargeMapper.xml]\r\n### The error may involve com.ruoyi.guo.mapper.ConfigsurchargeMapper.deleteConfigTypeByCodes-Inline\r\n### The error occurred while setting parameters\r\n### SQL: delete from config_type where code in           (               ?          )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'A\'\n; Data truncation: Truncated incorrect DOUBLE value: \'A\'; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Truncated incorrect DOUBLE value: \'A\'', '2024-08-06 15:48:45', 6);
INSERT INTO `sys_oper_log` VALUES (128, '叉车', 5, 'com.ruoyi.guo.controller.ForkliftController.export()', 'POST', 1, 'admin', NULL, '/information/forklift/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-06 15:50:25', 1186);
INSERT INTO `sys_oper_log` VALUES (129, '叉车', 5, 'com.ruoyi.guo.controller.ForkliftController.export()', 'POST', 1, 'admin', NULL, '/information/forklift/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-06 15:50:56', 52);
INSERT INTO `sys_oper_log` VALUES (130, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"forklift\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 15:51:47', 117);
INSERT INTO `sys_oper_log` VALUES (131, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/forklift', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-06 15:52:34', 54);
INSERT INTO `sys_oper_log` VALUES (132, '叉车', 5, 'com.ruoyi.guo.controller.ForkliftController.export()', 'POST', 1, 'admin', NULL, '/information/forklift/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-06 15:56:16', 103093);
INSERT INTO `sys_oper_log` VALUES (133, '叉车', 5, 'com.ruoyi.guo.controller.ForkliftController.export()', 'POST', 1, 'admin', NULL, '/information/forklift/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-06 15:56:26', 52);
INSERT INTO `sys_oper_log` VALUES (134, '叉车', 5, 'com.ruoyi.guo.controller.ForkliftController.export()', 'POST', 1, 'admin', NULL, '/information/forklift/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-06 16:01:49', 772);
INSERT INTO `sys_oper_log` VALUES (135, '叉车', 5, 'com.ruoyi.guo.controller.ForkliftController.export()', 'POST', 1, 'admin', NULL, '/information/forklift/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-06 16:07:11', 155304);
INSERT INTO `sys_oper_log` VALUES (136, '叉车', 5, 'com.ruoyi.guo.controller.ForkliftController.export()', 'POST', 1, 'admin', NULL, '/information/forklift/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-07 09:14:02', 1005);
INSERT INTO `sys_oper_log` VALUES (137, '配置加价', 5, 'com.ruoyi.guo.controller.ConfigsurchargeController.export()', 'POST', 1, 'admin', NULL, '/information/configsurcharge/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-07 09:14:21', 67);
INSERT INTO `sys_oper_log` VALUES (138, '配置种类', 5, 'com.ruoyi.guo.controller.ConfigTypeController.export()', 'POST', 1, 'admin', NULL, '/information/type/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-07 09:16:15', 28);
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"forklift\",\"className\":\"Forklift\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"id\",\"columnId\":17,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 15:51:47\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-08-06 15:52:34\",\"usableColumn\":false},{\"capJavaField\":\"Name\",\"columnComment\":\"名称\",\"columnId\":18,\"columnName\":\"name\",\"columnType\":\"varchar(200)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 15:51:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"name\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-08-06 15:52:34\",\"usableColumn\":false},{\"capJavaField\":\"ModelNumber\",\"columnComment\":\"型号\",\"columnId\":19,\"columnName\":\"model_number\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 15:51:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"modelNumber\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2024-08-06 15:52:34\",\"usableColumn\":false},{\"capJavaField\":\"StandardConfiguration\",\"columnComment\":\"标准配置（2节3米门架，1070mm货叉，充气轮胎（朝阳、正新、前进），铜水箱）\",\"columnId\":20,\"columnName\":\"standard_configuration\",\"columnType\":\"varchar(500)\",\"createBy\":\"admin\",\"createTime\":\"2024-08-06 15:51:47\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"textarea\",\"increment\":false,\"insert\":tr', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-07 09:21:45', 83);
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"forklift\"}', NULL, 0, NULL, '2024-08-07 09:21:49', 53);
INSERT INTO `sys_oper_log` VALUES (141, '叉车信息', 5, 'com.ruoyi.guo.controller.ForkliftController.export()', 'POST', 1, 'admin', NULL, '/information/forklift/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-07 09:26:30', 777);
INSERT INTO `sys_oper_log` VALUES (142, '叉车信息', 5, 'com.ruoyi.guo.controller.ForkliftController.export()', 'POST', 1, 'admin', NULL, '/information/forklift/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-07 09:38:44', 677);
INSERT INTO `sys_oper_log` VALUES (143, '配置种类', 5, 'com.ruoyi.guo.controller.ConfigTypeController.export()', 'POST', 1, 'admin', NULL, '/information/type/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-07 09:38:59', 49);
INSERT INTO `sys_oper_log` VALUES (144, '配置加价', 5, 'com.ruoyi.guo.controller.ConfigsurchargeController.export()', 'POST', 1, 'admin', NULL, '/information/configsurcharge/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-07 09:39:15', 42);
INSERT INTO `sys_oper_log` VALUES (145, '叉车信息', 5, 'com.ruoyi.guo.controller.ForkliftController.export()', 'POST', 1, 'admin', NULL, '/information/forklift/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-07 09:42:21', 37);
INSERT INTO `sys_oper_log` VALUES (146, '叉车信息', 5, 'com.ruoyi.guo.controller.ForkliftController.export()', 'POST', 1, 'admin', NULL, '/information/forklift/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-07 09:44:20', 707);
INSERT INTO `sys_oper_log` VALUES (147, '配置加价', 1, 'com.ruoyi.guo.controller.ConfigsurchargeController.add()', 'POST', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"2132\",\"id\":3,\"modelNumber\":\"dfgfd\",\"name\":\"啥的\",\"params\":{},\"remark\":\"fdg\",\"type\":\"G\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-07 09:45:57', 26);
INSERT INTO `sys_oper_log` VALUES (148, '配置加价', 3, 'com.ruoyi.guo.controller.ConfigsurchargeController.remove()', 'DELETE', 1, 'admin', NULL, '/information/configsurcharge/3', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-07 09:46:04', 72);
INSERT INTO `sys_oper_log` VALUES (149, '配置加价', 3, 'com.ruoyi.guo.controller.ConfigsurchargeController.remove()', 'DELETE', 1, 'admin', NULL, '/information/configsurcharge/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-09 13:48:05', 219);
INSERT INTO `sys_oper_log` VALUES (150, '配置加价', 1, 'com.ruoyi.guo.controller.ConfigsurchargeController.add()', 'POST', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"1140\",\"id\":4,\"modelNumber\":\"3-3.5t\",\"name\":\"全柴4C3/新柴4D30G31(国三495)\",\"params\":{},\"type\":\"A\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-09 13:50:11', 97);
INSERT INTO `sys_oper_log` VALUES (151, '配置加价', 2, 'com.ruoyi.guo.controller.ConfigsurchargeController.edit()', 'PUT', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"2850\",\"modelNumber\":\"3-3.5t\",\"name\":\"新柴4D32G31(国三498） ￥2,850\",\"params\":{},\"remark\":\"\",\"type\":\"A\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-08-09 13:57:36', 5);
INSERT INTO `sys_oper_log` VALUES (152, '配置加价', 2, 'com.ruoyi.guo.controller.ConfigsurchargeController.edit()', 'PUT', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"2850\",\"modelNumber\":\"3-3.5t\",\"name\":\"新柴4D32G31(国三498） ￥2,850\",\"params\":{},\"remark\":\"\",\"type\":\"A\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-08-09 13:57:47', 6);
INSERT INTO `sys_oper_log` VALUES (153, '配置加价', 2, 'com.ruoyi.guo.controller.ConfigsurchargeController.edit()', 'PUT', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"32424\",\"modelNumber\":\"水电费\",\"name\":\"水电费\",\"params\":{},\"remark\":\"\",\"type\":\"B\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-08-09 13:58:47', 6);
INSERT INTO `sys_oper_log` VALUES (154, '配置加价', 2, 'com.ruoyi.guo.controller.ConfigsurchargeController.edit()', 'PUT', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"12312\",\"modelNumber\":\"圣诞树\",\"name\":\"水电费\",\"params\":{},\"remark\":\"\",\"type\":\"B\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-08-09 14:00:21', 11);
INSERT INTO `sys_oper_log` VALUES (155, '配置加价', 2, 'com.ruoyi.guo.controller.ConfigsurchargeController.edit()', 'PUT', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"12312\",\"modelNumber\":\"圣诞树\",\"name\":\"水电费\",\"params\":{},\"remark\":\"\",\"type\":\"A\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-08-09 14:00:36', 6);
INSERT INTO `sys_oper_log` VALUES (156, '配置加价', 2, 'com.ruoyi.guo.controller.ConfigsurchargeController.edit()', 'PUT', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"12312\",\"modelNumber\":\"圣诞树\",\"name\":\"水电费\",\"params\":{},\"remark\":\"\",\"type\":\"A\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-08-09 14:02:29', 105);
INSERT INTO `sys_oper_log` VALUES (157, '配置加价', 2, 'com.ruoyi.guo.controller.ConfigsurchargeController.edit()', 'PUT', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"12312\",\"modelNumber\":\"圣诞树\",\"name\":\"水电费\",\"params\":{},\"remark\":\"\",\"type\":\"A\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-08-09 14:03:16', 28168);
INSERT INTO `sys_oper_log` VALUES (158, '配置加价', 2, 'com.ruoyi.guo.controller.ConfigsurchargeController.edit()', 'PUT', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"12312\",\"modelNumber\":\"圣诞树\",\"name\":\"水电费\",\"params\":{},\"remark\":\"\",\"type\":\"A\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-08-09 14:04:40', 2053);
INSERT INTO `sys_oper_log` VALUES (159, '配置加价', 2, 'com.ruoyi.guo.controller.ConfigsurchargeController.edit()', 'PUT', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"12312\",\"modelNumber\":\"圣诞树\",\"name\":\"水电费\",\"params\":{},\"remark\":\"\",\"type\":\"A\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-08-09 14:05:04', 2892);
INSERT INTO `sys_oper_log` VALUES (160, '配置加价', 2, 'com.ruoyi.guo.controller.ConfigsurchargeController.edit()', 'PUT', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"12312\",\"modelNumber\":\"圣诞树\",\"name\":\"水电费\",\"params\":{},\"remark\":\"\",\"type\":\"A\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-08-09 14:06:28', 6696);
INSERT INTO `sys_oper_log` VALUES (161, '配置加价', 2, 'com.ruoyi.guo.controller.ConfigsurchargeController.edit()', 'PUT', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"12312\",\"modelNumber\":\"圣诞树\",\"name\":\"水电费\",\"params\":{},\"remark\":\"\",\"type\":\"A\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-08-09 14:07:41', 2055);
INSERT INTO `sys_oper_log` VALUES (162, '配置加价', 2, 'com.ruoyi.guo.controller.ConfigsurchargeController.edit()', 'PUT', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"12312\",\"modelNumber\":\"圣诞树\",\"name\":\"水电费\",\"params\":{},\"remark\":\"\",\"type\":\"A\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2024-08-09 14:08:13', 7920);
INSERT INTO `sys_oper_log` VALUES (163, '配置加价', 1, 'com.ruoyi.guo.controller.ConfigsurchargeController.add()', 'POST', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"12312\",\"id\":5,\"modelNumber\":\"阿萨德\",\"name\":\"啥的\",\"params\":{},\"remark\":\"\",\"type\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-09 14:08:32', 7301);
INSERT INTO `sys_oper_log` VALUES (164, '配置加价', 3, 'com.ruoyi.guo.controller.ConfigsurchargeController.remove()', 'DELETE', 1, 'admin', NULL, '/information/configsurcharge/5', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-09 14:08:36', 17);
INSERT INTO `sys_oper_log` VALUES (165, '配置加价', 1, 'com.ruoyi.guo.controller.ConfigsurchargeController.add()', 'POST', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"2280\",\"id\":6,\"modelNumber\":\"2-3.5t\",\"name\":\"国产外挂侧移器\",\"params\":{},\"remark\":\"\",\"type\":\"B\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-09 14:09:09', 9);
INSERT INTO `sys_oper_log` VALUES (166, '配置加价', 1, 'com.ruoyi.guo.controller.ConfigsurchargeController.add()', 'POST', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"2850\",\"id\":7,\"modelNumber\":\"2-3.5t\",\"name\":\"卡斯卡特外挂侧移器\",\"params\":{},\"remark\":\"\",\"type\":\"B\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-09 14:11:48', 15);
INSERT INTO `sys_oper_log` VALUES (167, '配置加价', 1, 'com.ruoyi.guo.controller.ConfigsurchargeController.add()', 'POST', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"1710\",\"id\":8,\"modelNumber\":\"2t-2.5t\",\"name\":\"实芯胎\",\"params\":{},\"remark\":\"普通品牌\\n如配正新、朝阳、前进实心胎\\n1:1.5吨-小4吨加2500元\\n2: 4.5吨-小5吨加5500元\\n3:5吨-8吨加10000元\\n4: 10吨加16000元\",\"type\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-09 14:14:14', 10);
INSERT INTO `sys_oper_log` VALUES (168, '配置加价', 1, 'com.ruoyi.guo.controller.ConfigsurchargeController.add()', 'POST', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"1710\",\"id\":9,\"modelNumber\":\"3t-3.5t\",\"name\":\"实芯胎\",\"params\":{},\"remark\":\"普通品牌\\n如配正新、朝阳、前进实心胎\\n1:1.5吨-小4吨加2500元\\n2: 4.5吨-小5吨加5500元\\n3:5吨-8吨加10000元\\n4: 10吨加16000元\",\"type\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-09 14:14:57', 11);
INSERT INTO `sys_oper_log` VALUES (169, '配置加价', 1, 'com.ruoyi.guo.controller.ConfigsurchargeController.add()', 'POST', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"1140\",\"id\":10,\"modelNumber\":\"M330\",\"name\":\"二节3.3米门架\",\"params\":{},\"remark\":\"2-2.5t\",\"type\":\"D\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-09 14:19:38', 12);
INSERT INTO `sys_oper_log` VALUES (170, '配置加价', 1, 'com.ruoyi.guo.controller.ConfigsurchargeController.add()', 'POST', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"4560\",\"id\":11,\"modelNumber\":\"ZM300\",\"name\":\"2-小4t全自由3米门架\",\"params\":{},\"remark\":\"\",\"type\":\"E\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-09 14:20:17', 11);
INSERT INTO `sys_oper_log` VALUES (171, '配置加价', 1, 'com.ruoyi.guo.controller.ConfigsurchargeController.add()', 'POST', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"8550\",\"id\":12,\"modelNumber\":\"ZSM435\",\"name\":\"三节435门架\",\"params\":{},\"remark\":\"2-小4t\",\"type\":\"F\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-09 14:20:53', 13);
INSERT INTO `sys_oper_log` VALUES (172, '配置加价', 1, 'com.ruoyi.guo.controller.ConfigsurchargeController.add()', 'POST', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"741\",\"id\":13,\"modelNumber\":\"3SV\",\"name\":\"三片阀\",\"params\":{},\"remark\":\"2-小4t\",\"type\":\"G\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-09 14:21:40', 16);
INSERT INTO `sys_oper_log` VALUES (173, '配置加价', 1, 'com.ruoyi.guo.controller.ConfigsurchargeController.add()', 'POST', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"1026\",\"id\":14,\"modelNumber\":\"LF107\",\"name\":\"1070mm\",\"params\":{},\"remark\":\"2-3.5吨\",\"type\":\"H\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-09 14:25:56', 11);
INSERT INTO `sys_oper_log` VALUES (174, '配置加价', 1, 'com.ruoyi.guo.controller.ConfigsurchargeController.add()', 'POST', 1, 'admin', NULL, '/information/configsurcharge', '127.0.0.1', '内网IP', '{\"addPrice\":\"7980\",\"id\":15,\"modelNumber\":\"2-4t\",\"name\":\"驾驶室\",\"params\":{},\"remark\":\"暖风机+570\",\"type\":\"I\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-09 14:26:43', 10);
INSERT INTO `sys_oper_log` VALUES (175, '配置种类', 1, 'com.ruoyi.guo.controller.ConfigTypeController.add()', 'POST', 1, 'admin', NULL, '/information/type', '127.0.0.1', '内网IP', '{\"code\":\"2343\",\"id\":18,\"name\":\"啥的\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-09 15:05:47', 81);
INSERT INTO `sys_oper_log` VALUES (176, '配置加价', 5, 'com.ruoyi.guo.controller.ConfigsurchargeController.export()', 'POST', 1, 'admin', NULL, '/information/configsurcharge/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-09 16:35:48', 8411);
INSERT INTO `sys_oper_log` VALUES (177, '配置加价', 5, 'com.ruoyi.guo.controller.ConfigsurchargeController.export()', 'POST', 1, 'admin', NULL, '/information/configsurcharge/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2024-08-09 16:38:05', 6644);
INSERT INTO `sys_oper_log` VALUES (178, '配置种类', 3, 'com.ruoyi.guo.controller.ConfigTypeController.remove()', 'DELETE', 1, 'admin', NULL, '/information/type/18', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2024-08-09 17:18:48', 63);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NULL DEFAULT NULL,
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `post_sort` int NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-08-06 09:49:16', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-08-06 09:49:16', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-08-06 09:49:16', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-08-06 09:49:16', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NULL DEFAULT NULL,
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role_sort` int NULL DEFAULT NULL,
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `menu_check_strictly` tinyint NULL DEFAULT NULL,
  `dept_check_strictly` tinyint NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2024-08-06 09:49:16', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2024-08-06 09:49:16', '', NULL, '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NULL DEFAULT NULL,
  `dept_id` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NULL DEFAULT NULL,
  `menu_id` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NULL DEFAULT NULL,
  `dept_id` bigint NULL DEFAULT NULL,
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `login_date` datetime NULL DEFAULT NULL,
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `create_time` datetime NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `update_time` datetime NULL DEFAULT NULL,
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-08-09 13:31:02', 'admin', '2024-08-06 09:49:16', '', '2024-08-09 13:31:01', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2024-08-06 09:49:16', 'admin', '2024-08-06 09:49:16', '', NULL, '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NULL DEFAULT NULL,
  `post_id` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NULL DEFAULT NULL,
  `role_id` bigint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

-- ----------------------------
-- Table structure for t_album
-- ----------------------------
DROP TABLE IF EXISTS `t_album`;
CREATE TABLE `t_album`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '相册id',
  `album_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '相册名',
  `album_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '相册封面',
  `album_desc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '相册描述',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态 (1公开 2私密)',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_album
-- ----------------------------
INSERT INTO `t_album` VALUES (1, '精选壁纸', 'https://junlty.top/photo/1d4c28602df625239b0e78bd23fd13eb.png', '壁纸', 1, '2023-01-02 16:24:56', '2024-06-17 00:37:38');
INSERT INTO `t_album` VALUES (3, '琐碎', 'https://junlty.top/photo/ccd9935e491b22a6aca54520df12d182.jpg', '记录', 1, '2023-11-24 13:08:22', '2024-06-20 11:51:18');
INSERT INTO `t_album` VALUES (4, '旅行日记-杭州', 'https://junlty.top/photo/bd587443963f5fa416dc8eabd086224a.jpg', '旅行日记-杭州', 2, '2024-06-20 11:53:44', '2024-06-20 20:54:45');
INSERT INTO `t_album` VALUES (5, '头像', 'https://junlty.top/photo/51939ae397cdbf71a1108fe2886b350b.jpg', '头像', 1, '2024-06-24 01:10:21', NULL);
INSERT INTO `t_album` VALUES (6, '风景', 'https://junlty.top/photo/b3228b8791cf2b6b9c8fd9c2e194c155.jpg', '风景', 1, '2024-06-26 16:20:50', NULL);
INSERT INTO `t_album` VALUES (7, '旅行日记-洛阳', 'https://junlty.top/photo/5497b1d0d7af485a5f1a159d1d2237fb.jpg', '旅行日记-洛阳', 2, '2024-07-08 14:07:19', NULL);

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '文章id',
  `user_id` int NOT NULL COMMENT '作者id',
  `category_id` int NOT NULL COMMENT '分类id',
  `article_cover` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '缩略图',
  `article_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文章标题',
  `article_desc` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '文章摘要',
  `article_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文章内容',
  `article_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '类型 (1原创 2转载 3翻译)',
  `is_top` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否置顶 (0否 1是）',
  `is_delete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否删除 (0否 1是)',
  `is_recommend` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否推荐 (0否 1是)',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态 (1公开 2私密 3评论可见)',
  `create_time` datetime NOT NULL COMMENT '发表时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES (61, 1, 50, 'https://junlty.top/article/17dc1702dd6a1a77735609551d1a1d01.jpg', '创作提示', '# 字符效果\n- ~~删除线~~ <s>删除线（开启识别 HTML 标签时）</s>\n- _斜体字_ _斜体字_\n- **粗体** **粗体**\n- **_粗斜体_** **_粗斜体_**', '# 字符效果\n\n- ~~删除线~~ <s>删除线（开启识别 HTML 标签时）</s>\n\n- _斜体字_ _斜体字_\n- **粗体** **粗体**\n- **_粗斜体_** **_粗斜体_**\n\n- 上标：X<sub>2</sub>，下标：O<sup>2</sup>\n\n- ==高亮==\n\n- `Inline Code`\n\n> 引用：如果想要插入空白换行（即 `<br>` 标签），在插入处先键入两个以上的空格然后回车即可\n\n# 超链接\n\n- [普通链接](https://www.ttkwsd.top)\n- [_斜体链接_](https://www.ttkwsd.top)\n- [**粗体链接**](https://www.ttkwsd.top)\n\n# 脚注\n\n这是一个简单的脚注 [^1] 而这是一个更长的脚注 [^bignote].\n\n[^1]: 这是第一个脚注.\n[^bignote]: 这是一个非常长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长长的脚注.\n\n# 图像\n\n下面是一张我家硝子的壁纸?:\n![硝子1](https://i.niupic.com/images/2022/03/11/9Wl7.jpg)\n再来一张好了?：\n![硝子2](https://i.niupic.com/images/2022/03/12/9Wme.jpg)\n\n# 代码\n\n## 行内代码\n\n在 VS Code 中按下 <kbd>Alt</kbd> + <kbd>T</kbd> + <kbd>R</kbd> 执行命令：`npm install marked`\n\n## 代码片\n\n### Python 代码\n\n```python\nclass Animal:\n    \"\"\" 动物类 \"\"\"\n\n    def __init__(self, age: int, name: str):\n        self.age = age\n        self.name = name\n\n    def getInfo(self) -> str:\n        \"\"\" 返回信息 \"\"\"\n        return f\'age: {self.age}; name: {self.name}\'\n\n\nclass Dog(Animal):\n    \"\"\" 狗狗类 \"\"\"\n\n    def __init__(self, age: int, name: str, gender=\'female\', color=\'white\'):\n        super().__init__(age, name)\n        self.gender = gender\n        self.__color = color\n\n    def bark(self):\n        \"\"\" 狗叫 \"\"\"\n        print(\'lololo\')\n\n    @property\n    def color(self):\n        return self.__color\n\n    @color.setter\n    def color(self, color: str):\n        if color not in [\'red\', \'white\', \'black\']:\n            raise ValueError(\'颜色不符合要求\')\n        self.__color = color\n\n\nif __name__ == \'__main__\':\n    dog = Dog(16, \'啸天\', gender=\'male\')\n    # 狗叫\n    dog.bark()\n    # 设置狗狗毛色\n    dog.color = \'blue\'\n```\n\n### HTML 代码\n\n```html\n<!DOCTYPE html>\n<html>\n    <head>\n        <mate charest=\"utf-8\" />\n        <title>Hello world!</title>\n    </head>\n    <body>\n        <h1>Hello world!</h1>\n    </body>\n</html>\n```\n\n# 列表\n\n## 无序列表\n\n- 福建\n  - 厦门\n  - 福州\n- 浙江\n- 江苏\n\n## 有序列表\n\n1. 动物\n   1. 人类\n   2. 犬类\n2. 植物\n3. 微生物\n\n## 任务列表\n\n- [x] 预习计算机网络\n- [ ] 复习现代控制理论\n- [ ] 刷现代控制理论历年卷\n  - [ ] 2019 年期末试卷\n  - [ ] 2020 年期末试卷\n\n# 表格\n\n| 项目   |  价格 | 数量 |\n| ------ | ----: | :--: |\n| 计算机 | $1600 |  5   |\n| 手机   |   $12 |  12  |\n| 管线   |    $1 | 234  |\n\n---\n\n# 特殊符号\n\n&copy; & &uml; &trade; &iexcl; &pound;\n&amp; &lt; &gt; &yen; &euro; &reg; &plusmn; &para; &sect; &brvbar; &macr; &laquo; &middot;\n\nX&sup2; Y&sup3; &frac34; &frac14; &times; &divide; &raquo;\n\n18&ordm;C &quot; &apos;\n\n# Emoji 表情 🎉\n\n- 马：🐎\n- 星星：✨\n- 笑脸：😀\n- 跑步：🏃‍\n\n# 数学公式\n\n行间公式：\n$\\sin(\\alpha)^{\\theta}=\\sum_{i=0}^{n}(x^i + \\cos(f))$\n行内公式 $E=mc^2$\n\n# Tip提示\n\n::: tip\n  在此输入内容\n:::\n::: warning\n  在此输入内容\n:::\n::: danger\n  在此输入内容\n:::\n::: details\n  内容\n:::', 1, 0, 0, 0, 1, '2023-02-22 12:10:21', '2024-07-11 10:19:37');
INSERT INTO `t_article` VALUES (71, 1, 50, 'https://junlty.top/article/704936388b13bcc43f288bfe9c4c633d.jpg', 'SpringSecurity-从入门到精通', 'test', '# SpringSecurity\n\n### 简介a\n\n**Spring Security** 是 Spring 家族中的一个安全管理框架。相比与另外一个安全框架Shiro，它提供了更丰富的功能，社区资源也比Shiro丰富。\n\n 一般来说中大型的项目都是使用**SpringSecurity** 来做安全框架。小项目有Shiro的比较多，因为相比与SpringSecurity，Shiro的上手更加的简单。\n\n 一般Web应用的需要进行**认证**和**授权**。\n\n **认证：验证当前访问系统的是不是本系统的用户，并且要确认具体是哪个用户**\n\n **授权：经过认证后判断当前用户是否有权限进行某个操作**\n\n 而认证和授权也是SpringSecurity作为安全框架的核心功能。\n\n### 1.快速入门\n\n#### 1.1 准备工作\n\n我们先要搭建一个简单的SpringBoot工程\n\n① 设置父工程 添加依赖\n\n```xml\n    <parent>\n        <groupId>org.springframework.boot</groupId>\n        <artifactId>spring-boot-starter-parent</artifactId>\n        <version>2.5.0</version>\n    </parent>\n    <dependencies>\n        <dependency>\n            <groupId>org.springframework.boot</groupId>\n            <artifactId>spring-boot-starter-web</artifactId>\n        </dependency>\n        <dependency>\n            <groupId>org.projectlombok</groupId>\n            <artifactId>lombok</artifactId>\n            <optional>true</optional>\n        </dependency>\n    </dependencies>\n```\n\n② 创建启动类\n\n```java\n@SpringBootApplication\npublic class SecurityApplication {\n\n    public static void main(String[] args) {\n        SpringApplication.run(SecurityApplication.class,args);\n    }\n}\n```\n\n③ 创建Controller\n\n```java\n@RestController\npublic class HelloController {\n\n    @RequestMapping(\"/hello\")\n    public String hello(){\n        return \"hello\";\n    }\n}\n```\n\n#### 1.2 引入SpringSecurity\n\n在SpringBoot项目中使用SpringSecurity我们只需要引入依赖即可实现入门案例。\n\n```xml\n<dependency>\n            <groupId>org.springframework.boot</groupId>\n            <artifactId>spring-boot-starter-security</artifactId>\n        </dependency>\n\n```\n\n引入依赖后我们在尝试去访问之前的接口就会自动跳转到一个SpringSecurity的默认登陆页面，默认用户名是user,密码会输出在控制台。\n\n 必须登陆之后才能对接口进行访问。\n\n### 2. 认证\n\n#### 2.1 登陆校验流程\n\n![img](https://img-blog.csdnimg.cn/0dfb32b0cb144e26bf6a674fb112af9d.png)\n\n#### 2.2 原理初探\n\n 想要知道如何实现自己的登陆流程就必须要先知道入门案例中SpringSecurity的流程。\n\n##### 2.2.1 SpringSecurity完整流程\n\n SpringSecurity的原理其实就是一个过滤器链，内部包含了提供各种功能的过滤器。这里我们可以看看入门案例中的过滤器。\n\n![img](https://img-blog.csdnimg.cn/1177c85d5a384b41bc6840d3880f47dc.png)\n\n图中只展示了核心过滤器，其它的非核心过滤器并没有在图中展示。\n\n**UsernamePasswordAuthenticationFilter**:负责处理我们在登陆页面填写了用户名密码后的登陆请求。入门案例的认证工作主要有它负责。\n\n**ExceptionTranslationFilter：**处理过滤器链中抛出的任何**AccessDeniedException**和**AuthenticationException 。**\n\n**FilterSecurityInterceptor：**负责权限校验的过滤器。\n\n 我们可以通过Debug查看当前系统中SpringSecurity过滤器链中有哪些过滤器及它们的顺序。\n\n##### 2.2.2 认证流程详解\n\n![img](https://img-blog.csdnimg.cn/ee29840985ea4802b01df57324e61924.png)\n\n概念速查:\n\n**Authentication**接口: 它的实现类，表示当前访问系统的用户，封装了用户相关信息。\n\n**AuthenticationManager**接口：定义了认证Authentication的方法\n\n**UserDetailsService**接口：加载用户特定数据的核心接口。里面定义了一个根据用户名查询用户信息的方法。\n\n**UserDetails**接口：提供核心用户信息。通过**UserDetailsService**根据用户名获取处理的用户信息要封装成**UserDetails**对象返回。然后将这些信息封装到Authentication对象中。\n\n#### 2.3 解决问题\n\n##### 2.3.1 思路分析\n\n登录\n\n ①自定义登录接口\n\n 调用**ProviderManager**的方法进行认证 如果认证通过生成**jwt**\n\n 把用户信息存入redis中\n\n ②自定义**UserDetailsService**\n\n 在这个实现类中去查询数据库\n\n校验：\n\n ①定义**Jwt**认证过滤器\n\n 获取token\n\n 解析token获取其中的userid\n\n 从redis中获取用户信息\n\n 存入**SecurityContextHolder**\n\n##### 2.3.2 准备工作\n\n①添加依赖\n\n```xml\n        <!--redis依赖-->\n        <dependency>\n            <groupId>org.springframework.boot</groupId>\n            <artifactId>spring-boot-starter-data-redis</artifactId>\n        </dependency>\n        <!--fastjson依赖-->\n        <dependency>\n            <groupId>com.alibaba</groupId>\n            <artifactId>fastjson</artifactId>\n            <version>1.2.33</version>\n        </dependency>\n        <!--jwt依赖-->\n        <dependency>\n            <groupId>io.jsonwebtoken</groupId>\n            <artifactId>jjwt</artifactId>\n            <version>0.9.0</version>\n        </dependency>\n\n```\n\n② 添加Redis相关配置\n\n```java\nimport com.alibaba.fastjson.JSON;\nimport com.alibaba.fastjson.serializer.SerializerFeature;\nimport com.fasterxml.jackson.databind.JavaType;\nimport com.fasterxml.jackson.databind.ObjectMapper;\nimport com.fasterxml.jackson.databind.type.TypeFactory;\nimport org.springframework.data.redis.serializer.RedisSerializer;\nimport org.springframework.data.redis.serializer.SerializationException;\nimport com.alibaba.fastjson.parser.ParserConfig;\nimport org.springframework.util.Assert;\nimport java.nio.charset.Charset;\n\n/**\n * Redis使用FastJson序列化\n * \n * @author sg\n */\npublic class FastJsonRedisSerializer<T> implements RedisSerializer<T>\n{\n\n    public static final Charset DEFAULT_CHARSET = Charset.forName(\"UTF-8\");\n\n    private Class<T> clazz;\n\n    static\n    {\n        ParserConfig.getGlobalInstance().setAutoTypeSupport(true);\n    }\n\n    public FastJsonRedisSerializer(Class<T> clazz)\n    {\n        super();\n        this.clazz = clazz;\n    }\n\n    @Override\n    public byte[] serialize(T t) throws SerializationException\n    {\n        if (t == null)\n        {\n            return new byte[0];\n        }\n        return JSON.toJSONString(t, SerializerFeature.WriteClassName).getBytes(DEFAULT_CHARSET);\n    }\n\n    @Override\n    public T deserialize(byte[] bytes) throws SerializationException\n    {\n        if (bytes == null || bytes.length <= 0)\n        {\n            return null;\n        }\n        String str = new String(bytes, DEFAULT_CHARSET);\n\n        return JSON.parseObject(str, clazz);\n    }\n\n\n    protected JavaType getJavaType(Class<?> clazz)\n    {\n        return TypeFactory.defaultInstance().constructType(clazz);\n    }\n}\n\n```\n\n```java\nimport org.springframework.context.annotation.Bean;\nimport org.springframework.context.annotation.Configuration;\nimport org.springframework.data.redis.connection.RedisConnectionFactory;\nimport org.springframework.data.redis.core.RedisTemplate;\nimport org.springframework.data.redis.serializer.StringRedisSerializer;\n\n@Configuration\npublic class RedisConfig {\n\n    @Bean\n    @SuppressWarnings(value = { \"unchecked\", \"rawtypes\" })\n    public RedisTemplate<Object, Object> redisTemplate(RedisConnectionFactory connectionFactory)\n    {\n        RedisTemplate<Object, Object> template = new RedisTemplate<>();\n        template.setConnectionFactory(connectionFactory);\n\n        FastJsonRedisSerializer serializer = new FastJsonRedisSerializer(Object.class);\n\n        // 使用StringRedisSerializer来序列化和反序列化redis的key值\n        template.setKeySerializer(new StringRedisSerializer());\n        template.setValueSerializer(serializer);\n\n        // Hash的key也采用StringRedisSerializer的序列化方式\n        template.setHashKeySerializer(new StringRedisSerializer());\n        template.setHashValueSerializer(serializer);\n\n        template.afterPropertiesSet();\n        return template;\n    }\n}\n```\n\n③ 响应类\n\n```java\nimport com.fasterxml.jackson.annotation.JsonInclude;\n\n@JsonInclude(JsonInclude.Include.NON_NULL)\npublic class ResponseResult<T> {\n    /**\n     * 状态码\n     */\n    private Integer code;\n    /**\n     * 提示信息，如果有错误时，前端可以获取该字段进行提示\n     */\n    private String msg;\n    /**\n     * 查询到的结果数据，\n     */\n    private T data;\n\n    public ResponseResult(Integer code, String msg) {\n        this.code = code;\n        this.msg = msg;\n    }\n\n    public ResponseResult(Integer code, T data) {\n        this.code = code;\n        this.data = data;\n    }\n\n    public Integer getCode() {\n        return code;\n    }\n\n    public void setCode(Integer code) {\n        this.code = code;\n    }\n\n    public String getMsg() {\n        return msg;\n    }\n\n    public void setMsg(String msg) {\n        this.msg = msg;\n    }\n\n    public T getData() {\n        return data;\n    }\n\n    public void setData(T data) {\n        this.data = data;\n    }\n\n    public ResponseResult(Integer code, String msg, T data) {\n        this.code = code;\n        this.msg = msg;\n        this.data = data;\n    }\n}\n\n```\n\n④工具类\n\n```java\nimport io.jsonwebtoken.Claims;\nimport io.jsonwebtoken.JwtBuilder;\nimport io.jsonwebtoken.Jwts;\nimport io.jsonwebtoken.SignatureAlgorithm;\n\nimport javax.crypto.SecretKey;\nimport javax.crypto.spec.SecretKeySpec;\nimport java.util.Base64;\nimport java.util.Date;\nimport java.util.UUID;\n\n/**\n * JWT工具类\n */\npublic class JwtUtil {\n\n    //有效期为\n    public static final Long JWT_TTL = 60 * 60 *1000L;// 60 * 60 *1000  一个小时\n    //设置秘钥明文\n    public static final String JWT_KEY = \"sangeng\";\n\n    public static String getUUID(){\n        String token = UUID.randomUUID().toString().replaceAll(\"-\", \"\");\n        return token;\n    }\n    \n    /**\n     * 生成jtw\n     * @param subject token中要存放的数据（json格式）\n     * @return\n     */\n    public static String createJWT(String subject) {\n        JwtBuilder builder = getJwtBuilder(subject, null, getUUID());// 设置过期时间\n        return builder.compact();\n    }\n\n    /**\n     * 生成jtw\n     * @param subject token中要存放的数据（json格式）\n     * @param ttlMillis token超时时间\n     * @return\n     */\n    public static String createJWT(String subject, Long ttlMillis) {\n        JwtBuilder builder = getJwtBuilder(subject, ttlMillis, getUUID());// 设置过期时间\n        return builder.compact();\n    }\n\n    private static JwtBuilder getJwtBuilder(String subject, Long ttlMillis, String uuid) {\n        SignatureAlgorithm signatureAlgorithm = SignatureAlgorithm.HS256;\n        SecretKey secretKey = generalKey();\n        long nowMillis = System.currentTimeMillis();\n        Date now = new Date(nowMillis);\n        if(ttlMillis==null){\n            ttlMillis=JwtUtil.JWT_TTL;\n        }\n        long expMillis = nowMillis + ttlMillis;\n        Date expDate = new Date(expMillis);\n        return Jwts.builder()\n                .setId(uuid)              //唯一的ID\n                .setSubject(subject)   // 主题  可以是JSON数据\n                .setIssuer(\"sg\")     // 签发者\n                .setIssuedAt(now)      // 签发时间\n                .signWith(signatureAlgorithm, secretKey) //使用HS256对称加密算法签名, 第二个参数为秘钥\n                .setExpiration(expDate);\n    }\n\n    /**\n     * 创建token\n     * @param id\n     * @param subject\n     * @param ttlMillis\n     * @return\n     */\n    public static String createJWT(String id, String subject, Long ttlMillis) {\n        JwtBuilder builder = getJwtBuilder(subject, ttlMillis, id);// 设置过期时间\n        return builder.compact();\n    }\n\n    public static void main(String[] args) throws Exception {\n        String token = \"eyJhbGciOiJIUzI1NiJ9.eyJqdGkiOiJjYWM2ZDVhZi1mNjVlLTQ0MDAtYjcxMi0zYWEwOGIyOTIwYjQiLCJzdWIiOiJzZyIsImlzcyI6InNnIiwiaWF0IjoxNjM4MTA2NzEyLCJleHAiOjE2MzgxMTAzMTJ9.JVsSbkP94wuczb4QryQbAke3ysBDIL5ou8fWsbt_ebg\";\n        Claims claims = parseJWT(token);\n        System.out.println(claims);\n    }\n\n    /**\n     * 生成加密后的秘钥 secretKey\n     * @return\n     */\n    public static SecretKey generalKey() {\n        byte[] encodedKey = Base64.getDecoder().decode(JwtUtil.JWT_KEY);\n        SecretKey key = new SecretKeySpec(encodedKey, 0, encodedKey.length, \"AES\");\n        return key;\n    }\n    \n    /**\n     * 解析\n     *\n     * @param jwt\n     * @return\n     * @throws Exception\n     */\n    public static Claims parseJWT(String jwt) throws Exception {\n        SecretKey secretKey = generalKey();\n        return Jwts.parser()\n                .setSigningKey(secretKey)\n                .parseClaimsJws(jwt)\n                .getBody();\n    }\n\n\n}\n```\n\n```java\nimport java.util.*;\nimport java.util.concurrent.TimeUnit;\n\n@SuppressWarnings(value = { \"unchecked\", \"rawtypes\" })\n@Component\npublic class RedisCache\n{\n    @Autowired\n    public RedisTemplate redisTemplate;\n\n    /**\n     * 缓存基本的对象，Integer、String、实体类等\n     *\n     * @param key 缓存的键值\n     * @param value 缓存的值\n     */\n    public <T> void setCacheObject(final String key, final T value)\n    {\n        redisTemplate.opsForValue().set(key, value);\n    }\n\n    /**\n     * 缓存基本的对象，Integer、String、实体类等\n     *\n     * @param key 缓存的键值\n     * @param value 缓存的值\n     * @param timeout 时间\n     * @param timeUnit 时间颗粒度\n     */\n    public <T> void setCacheObject(final String key, final T value, final Integer timeout, final TimeUnit timeUnit)\n    {\n        redisTemplate.opsForValue().set(key, value, timeout, timeUnit);\n    }\n\n    /**\n     * 设置有效时间\n     *\n     * @param key Redis键\n     * @param timeout 超时时间\n     * @return true=设置成功；false=设置失败\n     */\n    public boolean expire(final String key, final long timeout)\n    {\n        return expire(key, timeout, TimeUnit.SECONDS);\n    }\n\n    /**\n     * 设置有效时间\n     *\n     * @param key Redis键\n     * @param timeout 超时时间\n     * @param unit 时间单位\n     * @return true=设置成功；false=设置失败\n     */\n    public boolean expire(final String key, final long timeout, final TimeUnit unit)\n    {\n        return redisTemplate.expire(key, timeout, unit);\n    }\n\n    /**\n     * 获得缓存的基本对象。\n     *\n     * @param key 缓存键值\n     * @return 缓存键值对应的数据\n     */\n    public <T> T getCacheObject(final String key)\n    {\n        ValueOperations<String, T> operation = redisTemplate.opsForValue();\n        return operation.get(key);\n    }\n\n    /**\n     * 删除单个对象\n     *\n     * @param key\n     */\n    public boolean deleteObject(final String key)\n    {\n        return redisTemplate.delete(key);\n    }\n\n    /**\n     * 删除集合对象\n     *\n     * @param collection 多个对象\n     * @return\n     */\n    public long deleteObject(final Collection collection)\n    {\n        return redisTemplate.delete(collection);\n    }\n\n    /**\n     * 缓存List数据\n     *\n     * @param key 缓存的键值\n     * @param dataList 待缓存的List数据\n     * @return 缓存的对象\n     */\n    public <T> long setCacheList(final String key, final List<T> dataList)\n    {\n        Long count = redisTemplate.opsForList().rightPushAll(key, dataList);\n        return count == null ? 0 : count;\n    }\n\n    /**\n     * 获得缓存的list对象\n     *\n     * @param key 缓存的键值\n     * @return 缓存键值对应的数据\n     */\n    public <T> List<T> getCacheList(final String key)\n    {\n        return redisTemplate.opsForList().range(key, 0, -1);\n    }\n\n    /**\n     * 缓存Set\n     *\n     * @param key 缓存键值\n     * @param dataSet 缓存的数据\n     * @return 缓存数据的对象\n     */\n    public <T> BoundSetOperations<String, T> setCacheSet(final String key, final Set<T> dataSet)\n    {\n        BoundSetOperations<String, T> setOperation = redisTemplate.boundSetOps(key);\n        Iterator<T> it = dataSet.iterator();\n        while (it.hasNext())\n        {\n            setOperation.add(it.next());\n        }\n        return setOperation;\n    }\n\n    /**\n     * 获得缓存的set\n     *\n     * @param key\n     * @return\n     */\n    public <T> Set<T> getCacheSet(final String key)\n    {\n        return redisTemplate.opsForSet().members(key);\n    }\n\n    /**\n     * 缓存Map\n     *\n     * @param key\n     * @param dataMap\n     */\n    public <T> void setCacheMap(final String key, final Map<String, T> dataMap)\n    {\n        if (dataMap != null) {\n            redisTemplate.opsForHash().putAll(key, dataMap);\n        }\n    }\n\n    /**\n     * 获得缓存的Map\n     *\n     * @param key\n     * @return\n     */\n    public <T> Map<String, T> getCacheMap(final String key)\n    {\n        return redisTemplate.opsForHash().entries(key);\n    }\n\n    /**\n     * 往Hash中存入数据\n     *\n     * @param key Redis键\n     * @param hKey Hash键\n     * @param value 值\n     */\n    public <T> void setCacheMapValue(final String key, final String hKey, final T value)\n    {\n        redisTemplate.opsForHash().put(key, hKey, value);\n    }\n\n    /**\n     * 获取Hash中的数据\n     *\n     * @param key Redis键\n     * @param hKey Hash键\n     * @return Hash中的对象\n     */\n    public <T> T getCacheMapValue(final String key, final String hKey)\n    {\n        HashOperations<String, String, T> opsForHash = redisTemplate.opsForHash();\n        return opsForHash.get(key, hKey);\n    }\n\n    /**\n     * 删除Hash中的数据\n     * \n     * @param key\n     * @param hkey\n     */\n    public void delCacheMapValue(final String key, final String hkey)\n    {\n        HashOperations hashOperations = redisTemplate.opsForHash();\n        hashOperations.delete(key, hkey);\n    }\n\n    /**\n     * 获取多个Hash中的数据\n     *\n     * @param key Redis键\n     * @param hKeys Hash键集合\n     * @return Hash对象集合\n     */\n    public <T> List<T> getMultiCacheMapValue(final String key, final Collection<Object> hKeys)\n    {\n        return redisTemplate.opsForHash().multiGet(key, hKeys);\n    }\n\n    /**\n     * 获得缓存的基本对象列表\n     *\n     * @param pattern 字符串前缀\n     * @return 对象列表\n     */\n    public Collection<String> keys(final String pattern)\n    {\n        return redisTemplate.keys(pattern);\n    }\n}\n\n```\n\n```java\nimport javax.servlet.http.HttpServletResponse;\nimport java.io.IOException;\n\npublic class WebUtils\n{\n    /**\n     * 将字符串渲染到客户端\n     * \n     * @param response 渲染对象\n     * @param string 待渲染的字符串\n     * @return null\n     */\n    public static String renderString(HttpServletResponse response, String string) {\n        try\n        {\n            response.setStatus(200);\n            response.setContentType(\"application/json\");\n            response.setCharacterEncoding(\"utf-8\");\n            response.getWriter().print(string);\n        }\n        catch (IOException e)\n        {\n            e.printStackTrace();\n        }\n        return null;\n    }\n}\n\n```\n\n⑤实体类\n\n```java\nimport java.io.Serializable;\nimport java.util.Date;\n\n\n/**\n * 用户表(User)实体类\n *\n * @author 三更\n */\n@Data\n@AllArgsConstructor\n@NoArgsConstructor\npublic class User implements Serializable {\n    private static final long serialVersionUID = -40356785423868312L;\n    \n    /**\n    * 主键\n    */\n    private Long id;\n    /**\n    * 用户名\n    */\n    private String userName;\n    /**\n    * 昵称\n    */\n    private String nickName;\n    /**\n    * 密码\n    */\n    private String password;\n    /**\n    * 账号状态（0正常 1停用）\n    */\n    private String status;\n    /**\n    * 邮箱\n    */\n    private String email;\n    /**\n    * 手机号\n    */\n    private String phonenumber;\n    /**\n    * 用户性别（0男，1女，2未知）\n    */\n    private String sex;\n    /**\n    * 头像\n    */\n    private String avatar;\n    /**\n    * 用户类型（0管理员，1普通用户）\n    */\n    private String userType;\n    /**\n    * 创建人的用户id\n    */\n    private Long createBy;\n    /**\n    * 创建时间\n    */\n    private Date createTime;\n    /**\n    * 更新人\n    */\n    private Long updateBy;\n    /**\n    * 更新时间\n    */\n    private Date updateTime;\n    /**\n    * 删除标志（0代表未删除，1代表已删除）\n    */\n    private Integer delFlag;\n}\n```\n\n##### 2.3.3 实现\n\n###### 2.3.3.1 数据库校验用户\n\n 从之前的分析我们可以知道，我们可以自定义一个UserDetailsService,让SpringSecurity使用我们的UserDetailsService。我们自己的UserDetailsService可以从数据库中查询用户名和密码。\n\n我们先创建一个用户表， 建表语句如下：\n\n```sql\nCREATE TABLE `sys_user` (\n  `id` BIGINT(20) NOT NULL AUTO_INCREMENT COMMENT \'主键\',\n  `user_name` VARCHAR(64) NOT NULL DEFAULT \'NULL\' COMMENT \'用户名\',\n  `nick_name` VARCHAR(64) NOT NULL DEFAULT \'NULL\' COMMENT \'昵称\',\n  `password` VARCHAR(64) NOT NULL DEFAULT \'NULL\' COMMENT \'密码\',\n  `status` CHAR(1) DEFAULT \'0\' COMMENT \'账号状态（0正常 1停用）\',\n  `email` VARCHAR(64) DEFAULT NULL COMMENT \'邮箱\',\n  `phonenumber` VARCHAR(32) DEFAULT NULL COMMENT \'手机号\',\n  `sex` CHAR(1) DEFAULT NULL COMMENT \'用户性别（0男，1女，2未知）\',\n  `avatar` VARCHAR(128) DEFAULT NULL COMMENT \'头像\',\n  `user_type` CHAR(1) NOT NULL DEFAULT \'1\' COMMENT \'用户类型（0管理员，1普通用户）\',\n  `create_by` BIGINT(20) DEFAULT NULL COMMENT \'创建人的用户id\',\n  `create_time` DATETIME DEFAULT NULL COMMENT \'创建时间\',\n  `update_by` BIGINT(20) DEFAULT NULL COMMENT \'更新人\',\n  `update_time` DATETIME DEFAULT NULL COMMENT \'更新时间\',\n  `del_flag` INT(11) DEFAULT \'0\' COMMENT \'删除标志（0代表未删除，1代表已删除）\',\n  PRIMARY KEY (`id`)\n) ENGINE=INNODB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT=\'用户表\'\n\n```\n\n引入MybatisPuls和mysql驱动的依赖\n\n```xml\n        <dependency>\n            <groupId>com.baomidou</groupId>\n            <artifactId>mybatis-plus-boot-starter</artifactId>\n            <version>3.4.3</version>\n        </dependency>\n        <dependency>\n            <groupId>mysql</groupId>\n            <artifactId>mysql-connector-java</artifactId>\n        </dependency>\n```\n\n配置数据库信息\n\n```yaml\nspring:\n  datasource:\n    url: jdbc:mysql://localhost:3306/sg_security?characterEncoding=utf-8&serverTimezone=UTC\n    username: root\n    password: root\n    driver-class-name: com.mysql.cj.jdbc.Driver\n```\n\n定义Mapper接口\n\n```java\npublic interface UserMapper extends BaseMapper<User> {\n}\n```\n\n 修改User实体类\n\n```java\n类名上加@TableName(value = \"sys_user\") ,id字段上加 @TableId\n```\n\n 配置Mapper扫描\n\n```jav\n@SpringBootApplication\n@MapperScan(\"com.sangeng.mapper\")\npublic class SimpleSecurityApplication {\n    public static void main(String[] args) {\n        ConfigurableApplicationContext run = SpringApplication.run(SimpleSecurityApplication.class);\n        System.out.println(run);\n    }\n}\n```\n\n添加junit依赖\n\n```xml\n        <dependency>\n            <groupId>org.springframework.boot</groupId>\n            <artifactId>spring-boot-starter-test</artifactId>\n        </dependency>\n```\n\n测试MP是否能正常使用\n\n```java\n@SpringBootTest\npublic class MapperTest {\n\n    @Autowired\n    private UserMapper userMapper;\n\n    @Test\n    public void testUserMapper(){\n        List<User> users = userMapper.selectList(null);\n        System.out.println(users);\n    }\n}\n```\n\n###### 核心代码实现\n\n创建一个类实现UserDetailsService接口，重写其中的方法。更加用户名从数据库中查询用户信息\n\n```java\n@Service\npublic class UserDetailsServiceImpl implements UserDetailsService {\n\n    @Autowired\n    private UserMapper userMapper;\n\n    @Override\n    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {\n        //根据用户名查询用户信息\n        LambdaQueryWrapper<User> wrapper = new LambdaQueryWrapper<>();\n        wrapper.eq(User::getUserName,username);\n        User user = userMapper.selectOne(wrapper);\n        //如果查询不到数据就通过抛出异常来给出提示\n        if(Objects.isNull(user)){\n            throw new RuntimeException(\"用户名或密码错误\");\n        }\n        //TODO 根据用户查询权限信息 添加到LoginUser中\n        \n        //封装成UserDetails对象返回 \n        return new LoginUser(user);\n    }\n}\n```\n\n因为UserDetailsService方法的返回值是UserDetails类型，所以需要定义一个类，实现该接口，把用户信息封装在其中。\n\n```java\n@Data\n@NoArgsConstructor\n@AllArgsConstructor\npublic class LoginUser implements UserDetails {\n\n    private User user;\n\n\n    @Override\n    public Collection<? extends GrantedAuthority> getAuthorities() {\n        return null;\n    }\n\n    @Override\n    public String getPassword() {\n        return user.getPassword();\n    }\n\n    @Override\n    public String getUsername() {\n        return user.getUserName();\n    }\n\n    @Override\n    public boolean isAccountNonExpired() {\n        return true;\n    }\n\n    @Override\n    public boolean isAccountNonLocked() {\n        return true;\n    }\n\n    @Override\n    public boolean isCredentialsNonExpired() {\n        return true;\n    }\n\n    @Override\n    public boolean isEnabled() {\n        return true;\n    }\n}\n```\n\n注意：如果要测试，需要往用户表中写入用户数据，并且如果你想让用户的密码是明文存储，需要在密码前加{noop}\n\n###### 2.3.3.2 [密码加密](https://so.csdn.net/so/search?q=密码加密&spm=1001.2101.3001.7020)存储\n\n实际项目中我们不会把密码明文存储在数据库中。\n\n 默认使用的PasswordEncoder要求数据库中的密码格式为：{id}password 。它会根据id去判断密码的加密方式。但是我们一般不会采用这种方式。所以就需要替换PasswordEncoder。\n\n 我们一般使用SpringSecurity为我们提供的BCryptPasswordEncoder。\n\n 我们只需要使用把BCryptPasswordEncoder对象注入Spring容器中，SpringSecurity就会使用该PasswordEncoder来进行密码校验。\n\n 我们可以定义一个SpringSecurity的配置类，SpringSecurity要求这个配置类要继承WebSecurityConfigurerAdapter。\n\n```java\n@Configuration\npublic class SecurityConfig extends WebSecurityConfigurerAdapter {\n\n\n    @Bean\n    public PasswordEncoder passwordEncoder(){\n        return new BCryptPasswordEncoder();\n    }\n\n}\n```\n\n###### 2.3.3.3 登陆接口\n\n 接下我们需要自定义登陆接口，然后让SpringSecurity对这个接口放行,让用户访问这个接口的时候不用登录也能访问。\n\n 在接口中我们通过AuthenticationManager的authenticate方法来进行用户认证,所以需要在SecurityConfig中配置把AuthenticationManager注入容器。\n\n 认证成功的话要生成一个jwt，放入响应中返回。并且为了让用户下回请求时能通过jwt识别出具体的是哪个用户，我们需要把用户信息存入redis，可以把用户id作为key。\n\n```java\n@RestController\npublic class LoginController {\n\n    @Autowired\n    private LoginServcie loginServcie;\n\n    @PostMapping(\"/user/login\")\n    public ResponseResult login(@RequestBody User user){\n        return loginServcie.login(user);\n    }\n}\n```\n\n```java\n@Configuration\npublic class SecurityConfig extends WebSecurityConfigurerAdapter {\n\n\n    @Bean\n    public PasswordEncoder passwordEncoder(){\n        return new BCryptPasswordEncoder();\n    }\n\n    @Override\n    protected void configure(HttpSecurity http) throws Exception {\n        http\n                //关闭csrf\n                .csrf().disable()\n                //不通过Session获取SecurityContext\n                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)\n                .and()\n                .authorizeRequests()\n                // 对于登录接口 允许匿名访问\n                .antMatchers(\"/user/login\").anonymous()\n                // 除上面外的所有请求全部需要鉴权认证\n                .anyRequest().authenticated();\n    }\n\n    @Bean\n    @Override\n    public AuthenticationManager authenticationManagerBean() throws Exception {\n        return super.authenticationManagerBean();\n    }\n}\n```\n\n```java\n@Service\npublic class LoginServiceImpl implements LoginServcie {\n\n    @Autowired\n    private AuthenticationManager authenticationManager;\n    @Autowired\n    private RedisCache redisCache;\n\n    @Override\n    public ResponseResult login(User user) {\n        UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(user.getUserName(),user.getPassword());\n        Authentication authenticate = authenticationManager.authenticate(authenticationToken);\n        if(Objects.isNull(authenticate)){\n            throw new RuntimeException(\"用户名或密码错误\");\n        }\n        //使用userid生成token\n        LoginUser loginUser = (LoginUser) authenticate.getPrincipal();\n        String userId = loginUser.getUser().getId().toString();\n        String jwt = JwtUtil.createJWT(userId);\n        //authenticate存入redis\n        redisCache.setCacheObject(\"login:\"+userId,loginUser);\n        //把token响应给前端\n        HashMap<String,String> map = new HashMap<>();\n        map.put(\"token\",jwt);\n        return new ResponseResult(200,\"登陆成功\",map);\n    }\n}\n```\n\n###### 2.3.3.4 认证过滤器\n\n我们需要自定义一个过滤器，这个过滤器会去获取请求头中的token，对token进行解析取出其中的userid。\n\n 使用userid去redis中获取对应的LoginUser对象。\n\n 然后封装Authentication对象存入SecurityContextHolder\n\n```java\n@Component\npublic class JwtAuthenticationTokenFilter extends OncePerRequestFilter {\n\n    @Autowired\n    private RedisCache redisCache;\n\n    @Override\n    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {\n        //获取token\n        String token = request.getHeader(\"token\");\n        if (!StringUtils.hasText(token)) {\n            //放行\n            filterChain.doFilter(request, response);\n            return;\n        }\n        //解析token\n        String userid;\n        try {\n            Claims claims = JwtUtil.parseJWT(token);\n            userid = claims.getSubject();\n        } catch (Exception e) {\n            e.printStackTrace();\n            throw new RuntimeException(\"token非法\");\n        }\n        //从redis中获取用户信息\n        String redisKey = \"login:\" + userid;\n        LoginUser loginUser = redisCache.getCacheObject(redisKey);\n        if(Objects.isNull(loginUser)){\n            throw new RuntimeException(\"用户未登录\");\n        }\n        //存入SecurityContextHolder\n        //TODO 获取权限信息封装到Authentication中\n        UsernamePasswordAuthenticationToken authenticationToken =\n                new UsernamePasswordAuthenticationToken(loginUser,null,null);\n        SecurityContextHolder.getContext().setAuthentication(authenticationToken);\n        //放行\n        filterChain.doFilter(request, response);\n    }\n}\n```\n\n```java\n@Configuration\npublic class SecurityConfig extends WebSecurityConfigurerAdapter {\n\n\n    @Bean\n    public PasswordEncoder passwordEncoder(){\n        return new BCryptPasswordEncoder();\n    }\n\n\n    @Autowired\n    JwtAuthenticationTokenFilter jwtAuthenticationTokenFilter;\n\n    @Override\n    protected void configure(HttpSecurity http) throws Exception {\n        http\n                //关闭csrf\n                .csrf().disable()\n                //不通过Session获取SecurityContext\n                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)\n                .and()\n                .authorizeRequests()\n                // 对于登录接口 允许匿名访问\n                .antMatchers(\"/user/login\").anonymous()\n                // 除上面外的所有请求全部需要鉴权认证\n                .anyRequest().authenticated();\n\n        //把token校验过滤器添加到过滤器链中\n        http.addFilterBefore(jwtAuthenticationTokenFilter, UsernamePasswordAuthenticationFilter.class);\n    }\n\n    @Bean\n    @Override\n    public AuthenticationManager authenticationManagerBean() throws Exception {\n        return super.authenticationManagerBean();\n    }\n}\n```\n\n###### 2.3.3.5 退出登陆\n\n我们只需要定义一个登陆接口，然后获取SecurityContextHolder中的认证信息，删除redis中对应的数据即可。\n\n```java\n@Service\npublic class LoginServiceImpl implements LoginServcie {\n\n    @Autowired\n    private AuthenticationManager authenticationManager;\n    @Autowired\n    private RedisCache redisCache;\n\n    @Override\n    public ResponseResult login(User user) {\n        UsernamePasswordAuthenticationToken authenticationToken = new UsernamePasswordAuthenticationToken(user.getUserName(),user.getPassword());\n        Authentication authenticate = authenticationManager.authenticate(authenticationToken);\n        if(Objects.isNull(authenticate)){\n            throw new RuntimeException(\"用户名或密码错误\");\n        }\n        //使用userid生成token\n        LoginUser loginUser = (LoginUser) authenticate.getPrincipal();\n        String userId = loginUser.getUser().getId().toString();\n        String jwt = JwtUtil.createJWT(userId);\n        //authenticate存入redis\n        redisCache.setCacheObject(\"login:\"+userId,loginUser);\n        //把token响应给前端\n        HashMap<String,String> map = new HashMap<>();\n        map.put(\"token\",jwt);\n        return new ResponseResult(200,\"登陆成功\",map);\n    }\n\n    @Override\n    public ResponseResult logout() {\n        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();\n        LoginUser loginUser = (LoginUser) authentication.getPrincipal();\n        Long userid = loginUser.getUser().getId();\n        redisCache.deleteObject(\"login:\"+userid);\n        return new ResponseResult(200,\"退出成功\");\n    }\n}\n```\n\n#### 3. 授权\n\n##### 3.0 权限系统的作用\n\n 例如一个学校图书馆的管理系统，如果是普通学生登录就能看到借书还书相关的功能，不可能让他看到并且去使用添加书籍信息，删除书籍信息等功能。但是如果是一个图书馆管理员的账号登录了，应该就能看到并使用添加书籍信息，删除书籍信息等功能。\n\n 总结起来就是不同的用户可以使用不同的功能。这就是权限系统要去实现的效果。\n\n 我们不能只依赖前端去判断用户的权限来选择显示哪些菜单哪些按钮。因为如果只是这样，如果有人知道了对应功能的接口地址就可以不通过前端，直接去发送请求来实现相关功能操作。\n\n 所以我们还需要在后台进行用户权限的判断，判断当前用户是否有相应的权限，必须具有所需权限才能进行相应的操作。\n\n##### 3.1 授权基本流程\n\n 在SpringSecurity中，会使用默认的FilterSecurityInterceptor来进行权限校验。在FilterSecurityInterceptor中会从SecurityContextHolder获取其中的Authentication，然后获取其中的权限信息。当前用户是否拥有访问当前资源所需的权限。\n\n 所以我们在项目中只需要把当前登录用户的权限信息也存入Authentication。\n\n 然后设置我们的资源所需要的权限即可。\n\n##### 3.2 授权实现\n\n###### 3.2.1 限制访问资源所需权限\n\n SpringSecurity为我们提供了基于注解的权限控制方案，这也是我们项目中主要采用的方式。我们可以使用注解去指定访问对应的资源所需的权限。\n\n 但是要使用它我们需要先开启相关配置。\n\n```java\n@EnableGlobalMethodSecurity(prePostEnabled = true)\n```\n\n然后就可以使用对应的注解。@PreAuthorize\n\n```java\n@RestController\npublic class HelloController {\n\n    @RequestMapping(\"/hello\")\n    @PreAuthorize(\"hasAuthority(\'test\')\")\n    public String hello(){\n        return \"hello\";\n    }\n}\n```\n\n###### 3.2.2 封装权限信息\n\n 我们前面在写UserDetailsServiceImpl的时候说过，在查询出用户后还要获取对应的权限信息，封装到UserDetails中返回。\n\n 我们先直接把权限信息写死封装到UserDetails中进行测试。\n\n 我们之前定义了UserDetails的实现类LoginUser，想要让其能封装权限信息就要对其进行修改。\n\n```java\npackage com.sangeng.domain;\n\nimport com.alibaba.fastjson.annotation.JSONField;\nimport lombok.AllArgsConstructor;\nimport lombok.Data;\nimport lombok.NoArgsConstructor;\nimport org.springframework.security.core.GrantedAuthority;\nimport org.springframework.security.core.authority.SimpleGrantedAuthority;\nimport org.springframework.security.core.userdetails.UserDetails;\n\nimport java.util.Collection;\nimport java.util.List;\nimport java.util.stream.Collectors;\n\n@Data\n@NoArgsConstructor\npublic class LoginUser implements UserDetails {\n\n    private User user;\n        \n    //存储权限信息\n    private List<String> permissions;\n    \n    \n    public LoginUser(User user,List<String> permissions) {\n        this.user = user;\n        this.permissions = permissions;\n    }\n\n\n    //存储SpringSecurity所需要的权限信息的集合\n    @JSONField(serialize = false)\n    private List<GrantedAuthority> authorities;\n\n    @Override\n    public  Collection<? extends GrantedAuthority> getAuthorities() {\n        if(authorities!=null){\n            return authorities;\n        }\n        //把permissions中字符串类型的权限信息转换成GrantedAuthority对象存入authorities中\n        authorities = permissions.stream().\n                map(SimpleGrantedAuthority::new)\n                .collect(Collectors.toList());\n        return authorities;\n    }\n\n    @Override\n    public String getPassword() {\n        return user.getPassword();\n    }\n\n    @Override\n    public String getUsername() {\n        return user.getUserName();\n    }\n\n    @Override\n    public boolean isAccountNonExpired() {\n        return true;\n    }\n\n    @Override\n    public boolean isAccountNonLocked() {\n        return true;\n    }\n\n    @Override\n    public boolean isCredentialsNonExpired() {\n        return true;\n    }\n\n    @Override\n    public boolean isEnabled() {\n        return true;\n    }\n}\n```\n\nLoginUser修改完后我们就可以在UserDetailsServiceImpl中去把权限信息封装到LoginUser中了。我们写死权限进行测试，后面我们再从数据库中查询权限信息。\n\n```java\npackage com.sangeng.service.impl;\n\nimport com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;\nimport com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;\nimport com.baomidou.mybatisplus.extension.conditions.query.LambdaQueryChainWrapper;\nimport com.sangeng.domain.LoginUser;\nimport com.sangeng.domain.User;\nimport com.sangeng.mapper.UserMapper;\nimport org.springframework.beans.factory.annotation.Autowired;\nimport org.springframework.security.core.userdetails.UserDetails;\nimport org.springframework.security.core.userdetails.UserDetailsService;\nimport org.springframework.security.core.userdetails.UsernameNotFoundException;\nimport org.springframework.stereotype.Service;\n\nimport java.util.ArrayList;\nimport java.util.Arrays;\nimport java.util.List;\nimport java.util.Objects;\n\n@Service\npublic class UserDetailsServiceImpl implements UserDetailsService {\n\n    @Autowired\n    private UserMapper userMapper;\n\n    @Override\n    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {\n        LambdaQueryWrapper<User> wrapper = new LambdaQueryWrapper<>();\n        wrapper.eq(User::getUserName,username);\n        User user = userMapper.selectOne(wrapper);\n        if(Objects.isNull(user)){\n            throw new RuntimeException(\"用户名或密码错误\");\n        }\n        //TODO 根据用户查询权限信息 添加到LoginUser中\n        List<String> list = new ArrayList<>(Arrays.asList(\"test\"));\n        return new LoginUser(user,list);\n    }\n}\n```\n\n###### 3.2.3 从数据库查询权限信息\n\n###### 3.2.3.1 [RBAC](https://so.csdn.net/so/search?q=RBAC&spm=1001.2101.3001.7020)权限模型\n\nRBAC权限模型（Role-Based Access Control）即：基于角色的权限控制。这是目前最常被开发者使用也是相对易用、通用权限模型。\n\n![在这里插入图片描述](https://img-blog.csdnimg.cn/3a9360982735425589f594e98bf04a1f.png)\n\n###### 3.2.3.2 准备工作\n\n```sql\nCREATE DATABASE /*!32312 IF NOT EXISTS*/`sg_security` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;\n\nUSE `sg_security`;\n\n/*Table structure for table `sys_menu` */\n\nDROP TABLE IF EXISTS `sys_menu`;\n\nCREATE TABLE `sys_menu` (\n  `id` bigint(20) NOT NULL AUTO_INCREMENT,\n  `menu_name` varchar(64) NOT NULL DEFAULT \'NULL\' COMMENT \'菜单名\',\n  `path` varchar(200) DEFAULT NULL COMMENT \'路由地址\',\n  `component` varchar(255) DEFAULT NULL COMMENT \'组件路径\',\n  `visible` char(1) DEFAULT \'0\' COMMENT \'菜单状态（0显示 1隐藏）\',\n  `status` char(1) DEFAULT \'0\' COMMENT \'菜单状态（0正常 1停用）\',\n  `perms` varchar(100) DEFAULT NULL COMMENT \'权限标识\',\n  `icon` varchar(100) DEFAULT \'#\' COMMENT \'菜单图标\',\n  `create_by` bigint(20) DEFAULT NULL,\n  `create_time` datetime DEFAULT NULL,\n  `update_by` bigint(20) DEFAULT NULL,\n  `update_time` datetime DEFAULT NULL,\n  `del_flag` int(11) DEFAULT \'0\' COMMENT \'是否删除（0未删除 1已删除）\',\n  `remark` varchar(500) DEFAULT NULL COMMENT \'备注\',\n  PRIMARY KEY (`id`)\n) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT=\'菜单表\';\n\n/*Table structure for table `sys_role` */\n\nDROP TABLE IF EXISTS `sys_role`;\n\nCREATE TABLE `sys_role` (\n  `id` bigint(20) NOT NULL AUTO_INCREMENT,\n  `name` varchar(128) DEFAULT NULL,\n  `role_key` varchar(100) DEFAULT NULL COMMENT \'角色权限字符串\',\n  `status` char(1) DEFAULT \'0\' COMMENT \'角色状态（0正常 1停用）\',\n  `del_flag` int(1) DEFAULT \'0\' COMMENT \'del_flag\',\n  `create_by` bigint(200) DEFAULT NULL,\n  `create_time` datetime DEFAULT NULL,\n  `update_by` bigint(200) DEFAULT NULL,\n  `update_time` datetime DEFAULT NULL,\n  `remark` varchar(500) DEFAULT NULL COMMENT \'备注\',\n  PRIMARY KEY (`id`)\n) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT=\'角色表\';\n\n/*Table structure for table `sys_role_menu` */\n\nDROP TABLE IF EXISTS `sys_role_menu`;\n\nCREATE TABLE `sys_role_menu` (\n  `role_id` bigint(200) NOT NULL AUTO_INCREMENT COMMENT \'角色ID\',\n  `menu_id` bigint(200) NOT NULL DEFAULT \'0\' COMMENT \'菜单id\',\n  PRIMARY KEY (`role_id`,`menu_id`)\n) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;\n\n/*Table structure for table `sys_user` */\n\nDROP TABLE IF EXISTS `sys_user`;\n\nCREATE TABLE `sys_user` (\n  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT \'主键\',\n  `user_name` varchar(64) NOT NULL DEFAULT \'NULL\' COMMENT \'用户名\',\n  `nick_name` varchar(64) NOT NULL DEFAULT \'NULL\' COMMENT \'昵称\',\n  `password` varchar(64) NOT NULL DEFAULT \'NULL\' COMMENT \'密码\',\n  `status` char(1) DEFAULT \'0\' COMMENT \'账号状态（0正常 1停用）\',\n  `email` varchar(64) DEFAULT NULL COMMENT \'邮箱\',\n  `phonenumber` varchar(32) DEFAULT NULL COMMENT \'手机号\',\n  `sex` char(1) DEFAULT NULL COMMENT \'用户性别（0男，1女，2未知）\',\n  `avatar` varchar(128) DEFAULT NULL COMMENT \'头像\',\n  `user_type` char(1) NOT NULL DEFAULT \'1\' COMMENT \'用户类型（0管理员，1普通用户）\',\n  `create_by` bigint(20) DEFAULT NULL COMMENT \'创建人的用户id\',\n  `create_time` datetime DEFAULT NULL COMMENT \'创建时间\',\n  `update_by` bigint(20) DEFAULT NULL COMMENT \'更新人\',\n  `update_time` datetime DEFAULT NULL COMMENT \'更新时间\',\n  `del_flag` int(11) DEFAULT \'0\' COMMENT \'删除标志（0代表未删除，1代表已删除）\',\n  PRIMARY KEY (`id`)\n) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT=\'用户表\';\n\n/*Table structure for table `sys_user_role` */\n\nDROP TABLE IF EXISTS `sys_user_role`;\n\nCREATE TABLE `sys_user_role` (\n  `user_id` bigint(200) NOT NULL AUTO_INCREMENT COMMENT \'用户id\',\n  `role_id` bigint(200) NOT NULL DEFAULT \'0\' COMMENT \'角色id\',\n  PRIMARY KEY (`user_id`,`role_id`)\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n```\n\n```sql\nSELECT \n	DISTINCT m.`perms`\nFROM\n	sys_user_role ur\n	LEFT JOIN `sys_role` r ON ur.`role_id` = r.`id`\n	LEFT JOIN `sys_role_menu` rm ON ur.`role_id` = rm.`role_id`\n	LEFT JOIN `sys_menu` m ON m.`id` = rm.`menu_id`\nWHERE\n	user_id = 2\n	AND r.`status` = 0\n	AND m.`status` = 0\n```\n\n```java\npackage com.sangeng.domain;\n\nimport com.baomidou.mybatisplus.annotation.TableId;\nimport com.baomidou.mybatisplus.annotation.TableName;\nimport com.fasterxml.jackson.annotation.JsonInclude;\nimport lombok.AllArgsConstructor;\nimport lombok.Data;\nimport lombok.NoArgsConstructor;\n\nimport java.io.Serializable;\nimport java.util.Date;\n\n/**\n * 菜单表(Menu)实体类\n *\n * @author makejava\n * @since 2021-11-24 15:30:08\n */\n@TableName(value=\"sys_menu\")\n@Data\n@AllArgsConstructor\n@NoArgsConstructor\n@JsonInclude(JsonInclude.Include.NON_NULL)\npublic class Menu implements Serializable {\n    private static final long serialVersionUID = -54979041104113736L;\n    \n        @TableId\n    private Long id;\n    /**\n    * 菜单名\n    */\n    private String menuName;\n    /**\n    * 路由地址\n    */\n    private String path;\n    /**\n    * 组件路径\n    */\n    private String component;\n    /**\n    * 菜单状态（0显示 1隐藏）\n    */\n    private String visible;\n    /**\n    * 菜单状态（0正常 1停用）\n    */\n    private String status;\n    /**\n    * 权限标识\n    */\n    private String perms;\n    /**\n    * 菜单图标\n    */\n    private String icon;\n    \n    private Long createBy;\n    \n    private Date createTime;\n    \n    private Long updateBy;\n    \n    private Date updateTime;\n    /**\n    * 是否删除（0未删除 1已删除）\n    */\n    private Integer delFlag;\n    /**\n    * 备注\n    */\n    private String remark;\n}\n```\n\n###### 3.2.3.3 代码实现\n\n 我们只需要根据用户id去查询到其所对应的权限信息即可。\n\n 所以我们可以先定义个mapper，其中提供一个方法可以根据userid查询权限信息。\n\n```java\nimport com.baomidou.mybatisplus.core.mapper.BaseMapper;\nimport com.sangeng.domain.Menu;\n\nimport java.util.List;\n\npublic interface MenuMapper extends BaseMapper<Menu> {\n    List<String> selectPermsByUserId(Long id);\n}\n```\n\n尤其是自定义方法，所以需要创建对应的mapper文件，定义对应的sql语句\n\n```xml\n<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n<!DOCTYPE mapper PUBLIC \"-//mybatis.org//DTD Mapper 3.0//EN\" \"http://mybatis.org/dtd/mybatis-3-mapper.dtd\" >\n<mapper namespace=\"com.sangeng.mapper.MenuMapper\">\n\n\n    <select id=\"selectPermsByUserId\" resultType=\"java.lang.String\">\n        SELECT\n            DISTINCT m.`perms`\n        FROM\n            sys_user_role ur\n            LEFT JOIN `sys_role` r ON ur.`role_id` = r.`id`\n            LEFT JOIN `sys_role_menu` rm ON ur.`role_id` = rm.`role_id`\n            LEFT JOIN `sys_menu` m ON m.`id` = rm.`menu_id`\n        WHERE\n            user_id = #{userid}\n            AND r.`status` = 0\n            AND m.`status` = 0\n    </select>\n</mapper>\n```\n\n在application.yml中配置mapperXML文件的位置\n\n```yaml\nspring:\n  datasource:\n    url: jdbc:mysql://localhost:3306/sg_security?characterEncoding=utf-8&serverTimezone=UTC\n    username: root\n    password: root\n    driver-class-name: com.mysql.cj.jdbc.Driver\n  redis:\n    host: localhost\n    port: 6379\nmybatis-plus:\n  mapper-locations: classpath*:/mapper/**/*.xml \n```\n\n然后我们可以在UserDetailsServiceImpl中去调用该mapper的方法查询权限信息封装到LoginUser对象中即可。\n\n```java\n@Service\npublic class UserDetailsServiceImpl implements UserDetailsService {\n\n    @Autowired\n    private UserMapper userMapper;\n\n    @Autowired\n    private MenuMapper menuMapper;\n\n    @Override\n    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {\n        LambdaQueryWrapper<User> wrapper = new LambdaQueryWrapper<>();\n        wrapper.eq(User::getUserName,username);\n        User user = userMapper.selectOne(wrapper);\n        if(Objects.isNull(user)){\n            throw new RuntimeException(\"用户名或密码错误\");\n        }\n        List<String> permissionKeyList =  menuMapper.selectPermsByUserId(user.getId());\n//        //测试写法\n//        List<String> list = new ArrayList<>(Arrays.asList(\"test\"));\n        return new LoginUser(user,permissionKeyList);\n    }\n}\n```\n\n#### 4.自定义失败处理\n\n我们还希望在认证失败或者是授权失败的情况下也能和我们的接口一样返回相同结构的json，这样可以让前端能对响应进行统一的处理。要实现这个功能我们需要知道SpringSecurity的异常处理机制。\n\n 在SpringSecurity中，如果我们在认证或者授权的过程中出现了异常会被ExceptionTranslationFilter捕获到。在ExceptionTranslationFilter中会去判断是认证失败还是授权失败出现的异常。\n\n 如果是认证过程中出现的异常会被封装成AuthenticationException然后调用AuthenticationEntryPoint对象的方法去进行异常处理。\n\n 如果是授权过程中出现的异常会被封装成AccessDeniedException然后调用AccessDeniedHandler对象的方法去进行异常处理。\n\n 所以如果我们需要自定义异常处理，我们只需要自定义AuthenticationEntryPoint和AccessDeniedHandler然后配置给SpringSecurity即可。\n\n①自定义实现类\n\n```java\n@Component\npublic class AccessDeniedHandlerImpl implements AccessDeniedHandler {\n    @Override\n    public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException accessDeniedException) throws IOException, ServletException {\n        ResponseResult result = new ResponseResult(HttpStatus.FORBIDDEN.value(), \"权限不足\");\n        String json = JSON.toJSONString(result);\n        WebUtils.renderString(response,json);\n\n    }\n}\n```\n\n```java\n@Component\npublic class AuthenticationEntryPointImpl implements AuthenticationEntryPoint {\n    @Override\n    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException authException) throws IOException, ServletException {\n        ResponseResult result = new ResponseResult(HttpStatus.UNAUTHORIZED.value(), \"认证失败请重新登录\");\n        String json = JSON.toJSONString(result);\n        WebUtils.renderString(response,json);\n    }\n}\n```\n\n②配置给SpringSecurity\n\n 先注入对应的处理器\n\n```java\n    @Autowired\n    private AuthenticationEntryPoint authenticationEntryPoint;\n\n    @Autowired\n    private AccessDeniedHandler accessDeniedHandler;\n```\n\n然后我们可以使用HttpSecurity对象的方法去配置。\n\n```java\nhttp.exceptionHandling().authenticationEntryPoint(authenticationEntryPoint).\n                accessDeniedHandler(accessDeniedHandler);\n```\n\n#### 5. 跨域\n\n浏览器出于安全的考虑，使用 XMLHttpRequest对象发起 HTTP请求时必须遵守同源策略，否则就是跨域的HTTP请求，默认情况下是被禁止的。 同源策略要求源相同才能正常进行通信，即协议、域名、端口号都完全一致。\n\n 前后端分离项目，前端项目和后端项目一般都不是同源的，所以肯定会存在跨域请求的问题。\n\n 所以我们就要处理一下，让前端能进行跨域请求。\n\n①先对SpringBoot配置，运行跨域请求\n\n```java\n@Configuration\npublic class CorsConfig implements WebMvcConfigurer {\n\n    @Override\n    public void addCorsMappings(CorsRegistry registry) {\n      // 设置允许跨域的路径\n        registry.addMapping(\"/**\")\n                // 设置允许跨域请求的域名\n                .allowedOriginPatterns(\"*\")\n                // 是否允许cookie\n                .allowCredentials(true)\n                // 设置允许的请求方式\n                .allowedMethods(\"GET\", \"POST\", \"DELETE\", \"PUT\")\n                // 设置允许的header属性\n                .allowedHeaders(\"*\")\n                // 跨域允许时间\n                .maxAge(3600);\n    }\n}\n```\n\n②开启SpringSecurity的跨域访问\n\n由于我们的资源都会收到SpringSecurity的保护，所以想要跨域访问还要让SpringSecurity运行跨域访问。\n\n```java\n    @Override\n    protected void configure(HttpSecurity http) throws Exception {\n        http\n                //关闭csrf\n                .csrf().disable()\n                //不通过Session获取SecurityContext\n                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)\n                .and()\n                .authorizeRequests()\n                // 对于登录接口 允许匿名访问\n                .antMatchers(\"/user/login\").anonymous()\n                // 除上面外的所有请求全部需要鉴权认证\n                .anyRequest().authenticated();\n\n        //添加过滤器\n        http.addFilterBefore(jwtAuthenticationTokenFilter, UsernamePasswordAuthenticationFilter.class);\n\n        //配置异常处理器\n        http.exceptionHandling()\n                //配置认证失败处理器\n                .authenticationEntryPoint(authenticationEntryPoint)\n                .accessDeniedHandler(accessDeniedHandler);\n\n        //允许跨域\n        http.cors();\n    }\n```\n', 1, 0, 0, 0, 1, '2023-09-12 18:22:31', '2024-07-11 10:19:55');
INSERT INTO `t_article` VALUES (73, 1, 54, 'https://junlty.top/config/868192a0205153cfe795737f4e9b2e74.png', '测试', '现在是北京时间12点42分', '现在是北京时间12点42分', 1, 0, 1, 0, 1, '2023-11-24 14:18:46', '2024-10-16 10:24:48');
INSERT INTO `t_article` VALUES (75, 1, 54, 'https://junlty.top/article/6995383b37b2d3b859ae480e698b8f1b.png', '2023-12-01', '“长大\"两个写起来轻松容易的字，却不是一撇一捺就能说清楚的过程。', '“长大\"两个写起来轻松容易的字，却不是一撇一捺就能说清楚的过程。\n小时候我们盼着长大，长大后我们又说小时候真好。\n有人说成长是一路拥有一路丢失的过程，但对很多人来说，很难准确地说出自己这几年到底拥有了什么，但一定能说出自己失去了什么。\n一直觉得\"长大\"是一个很抽象的词，你无法确定你是在哪一时刻突然长大的，就是在不断遇到新问题和不断解决新问题的过程中，你不再是那莽莽撞撞的小孩儿，带着自己形成内化的分寸感，真的像个大人一样，去更好地体验人生。\n苦日子只能熬过来，有些磕绊是成长的必修课，有些经历看似伤透了你的心，却也给了你升级人生的最佳机会。\n不要停止往前走，不要放弃坚持的念头，累坏了就歇一歇，不开心就好吃好喝，每一个孩子都是哭着哭着长大的，大人也一样。', 1, 0, 1, 0, 1, '2023-12-01 22:27:13', '2024-10-16 10:25:04');
INSERT INTO `t_article` VALUES (77, 1, 54, 'https://junlty.top/article/8b2909d67d16692421d9b80bbf91de3c.jpg', 'Lua脚本解决redis实现的分布式锁多条命令原子性问题', '线程1现在持有锁之后，在执行业务逻辑过程中，他正准备删除锁，而且已经走到了条件判断的过程中，比如他已经拿到了当前这把锁确实是属于他自己的，正准备删除锁，但是此时他的锁到期了，那么此时线程2进来，但是线', '线程1现在持有锁之后，在执行业务逻辑过程中，他正准备删除锁，而且已经走到了条件判断的过程中，比如他已经拿到了当前这把锁确实是属于他自己的，正准备删除锁，但是此时他的锁到期了，那么此时线程2进来，但是线程1他会接着往后执行，当他卡顿结束后，他直接就会执行删除锁那行代码，相当于条件判断并没有起到作用，这就是删锁时的原子性问题，之所以有这个问题，是因为线程1的拿锁，比锁，删锁，实际上并不是原子性的，我们要防止刚才的情况发生\n![](https://myblogoss2.oss-cn-beijing.aliyuncs.com/article/3323310bace970f2afccc7d4f518d469.png)\nRedis提供了Lua脚本功能，在一个脚本中编写多条Redis命令，确保多条命令执行时的原子性。Lua是一种编程语言，它的基本语法大家可以参考网站：https://www.runoob.com/lua/lua-tutorial.html，这里重点介绍Redis提供的调用函数，我们可以使用lua去操作redis，又能保证他的原子性，这样就可以实现拿锁比锁删锁是一个原子性动作了，作为Java程序员这一块并不作一个简单要求，并不需要大家过于精通，只需要知道他有什么作用即可。\n接下来就是我们之前释放锁的逻辑：\n释放锁的业务流程是这样的\n\n​	1、获取锁中的线程标示\n\n​	2、判断是否与指定的标示（当前线程标示）一致\n\n​	3、如果一致则释放锁（删除）\n\n​	4、如果不一致则什么都不做\n\n如果用Lua脚本来表示则是这样的：\n\n最终我们操作redis的拿锁比锁删锁的lua脚本就会变成这样\n\n```lua\n-- 这里的 KEYS[1] 就是锁的key，这里的ARGV[1] 就是当前线程标示\n-- 获取锁中的标示，判断是否与当前线程标示一致\nif (redis.call(\'GET\', KEYS[1]) == ARGV[1]) then\n  -- 一致，则删除锁\n  return redis.call(\'DEL\', KEYS[1])\nend\n-- 不一致，则直接返回\nreturn 0\n```\n下面就是在java中如何调用，我们的RedisTemplate中，可以利用execute方法去执行lua脚本。\n**Java代码**\n~~~java\nprivate static final DefaultRedisScript<Long> UNLOCK_SCRIPT;\n    static {\n        UNLOCK_SCRIPT = new DefaultRedisScript<>();\n        UNLOCK_SCRIPT.setLocation(new ClassPathResource(\"unlock.lua\"));\n        UNLOCK_SCRIPT.setResultType(Long.class);\n    }\n    @Override\n    public void unLock() {\n        // 调用lua脚本\n        stringRedisTemplate.execute(\n                UNLOCK_SCRIPT,\n                Collections.singletonList(KEY_PREFIX + name),\n                Collections.singletonList(ID_PREFIX + Thread.currentThread().getId())\n                );\n    }\n ~~~\n 小总结：\n\n基于Redis的分布式锁实现思路：\n\n* 利用set nx ex获取锁，并设置过期时间，保存线程标示\n* 释放锁时先判断线程标示是否与自己一致，一致则删除锁\n  * 特性：\n    * 利用set nx满足互斥性\n    * 利用set ex保证故障时锁依然能释放，避免死锁，提高安全性\n    * 利用Redis集群保证高可用和高并发特性\n   \n**测试逻辑：**\n第一个线程进来，得到了锁，手动删除锁，模拟锁超时了，其他线程会执行lua来抢锁，当第一天线程利用lua删除锁时，lua能保证他不能删除他的锁，第二个线程删除锁时，利用lua同样可以保证不会删除别人的锁，同时还能保证原子性。', 1, 0, 0, 0, 1, '2023-12-07 16:55:30', '2024-06-29 02:03:57');
INSERT INTO `t_article` VALUES (78, 1, 52, 'https://junlty.top/article/f6f30f5f1933b4a66e66be6ef8db5667.jpg', 'synchronized实现双重检查锁避免Redis缓存击穿', '缓存击穿：\n对于某一个缓存，在高并发情况下若其访问量特别巨大，当该缓存的有效时限\n到达时，可能会出现大量的访问都要重建该缓存，即这些访问请求发现缓存中\n没有该数据，则立即到DBMS中进行查询，那么这就', '缓存击穿：\n对于某一个缓存，在高并发情况下若其访问量特别巨大，当该缓存的有效时限\n到达时，可能会出现大量的访问都要重建该缓存，即这些访问请求发现缓存中\n没有该数据，则立即到DBMS中进行查询，那么这就有可能会引发对DBMS的\n高并发查询，从而接导致DBMS的崩溃。这种情况称为缓存击穿，而该缓存数\n据称为热点数据。\n​\n步骤如下：\n- 先查 reids 中是否有数据\n- 如果 redis 中没有数据，使用 synchronized 进行加锁\n- 再次查询 reids 中是否有数据\n- 如果第3步查询还是没有数据，此时再查数据库\n- 查询到数据库中的数据后，将数据写入到redis中\n```Java\npublic Double findTurnover() {\n        // 获取Redis操作对象\n        BoundValueOperations<Object, Object> ops = template.boundValueOps(\"turnover\");\n        // 从缓存获取turnover\n        Object turnover = ops.get();\n        //取不到加锁\n        if (turnover == null) {\n            synchronized (this) {\n                turnover = ops.get();\n                // 若缓存中没有，则从DB中查询\n                if (turnover == null) {\n                    Date date = new Date();\n                    //根据当前时间获取交易额\n                    SimpleDateFormat sdf = new SimpleDateFormat(\"yyyy-MM-dd\");\n                    turnover = dao.selectTurnover(sdf.format(date));\n                    // 将从DB中查询的结果写入到缓存，并指定过期时间\n                    ops.set(turnover, 10, TimeUnit.SECONDS);\n                }\n            }\n        }\n        return (Double) turnover;\n    }\n```\n\n使用双重检查锁的方法，可以避免高并发情况下，所有请求直接到数据库上', 1, 0, 0, 0, 1, '2023-12-07 17:05:14', '2024-06-29 02:04:37');
INSERT INTO `t_article` VALUES (79, 1, 53, 'https://junlty.top/config/868192a0205153cfe795737f4e9b2e74.png', '清风在线教育项目总结', '育服务 [10902]', '本项目是采用B2C模式的在线教育微服务系统，提供管理员与会员两端，会员端向用户开放，用户可以根据自己的学习需求搜索、选择、购买并点播网课；后台面向教育机构，主要功能为教师管理、课程管理（上传网课视频）、权限管理等。\n实现功能：\n- 实现单点登录和权限控制 \n- 多个服务之间使用远程调用，降低代码的耦合度 \n- 结合Nacos和GateWay实现网关路由\n- 采用前后端分离的模式，微服务版本前端（RuoYi-Vue）\n- 后端采用Spring Boot、Spring Cloud & Alibaba\n- 注册中心、配置中心选型Nacos，权限认证使用Redis。\n- 流量控制框架选型Sentinel，分布式事务选型Seata。\n- 异步事务调度选型rabbitMQ。\n##### 架构图\n![](https://myblogoss2.oss-cn-beijing.aliyuncs.com/article/5f7571b8ffd674a6f3810104fe719f9b.png)\n##### 系统模块\ncom.qingfeng     \n├── qingfeng-ui              // 前端框架 [80]\n├── qingfeng-gateway         // 网关模块 [8080]\n├── qingfeng-auth            // 认证中心 [9200]\n├── qingfeng-api             // 接口模块\n│       └── qingfeng-api-system                          // 系统接口\n├── qingfeng-common          // 通用模块\n│       └── qingfeng-common-core                         // 核心模块\n│       └── qingfeng-common-datascope                    // 权限范围\n│       └── qingfeng-common-datasource                   // 多数据源\n│       └── qingfeng-common-log                          // 日志记录\n│       └── qingfeng-common-redis                        // 缓存服务\n│       └── qingfeng-common-seata                        // 分布式事务\n│       └── qingfeng-common-security                     // 安全模块\n│       └── qingfeng-common-swagger                      // 系统接口\n├── qingfeng-modules         // 业务模块\n│       └── qingfeng-system                              // 系统模块 [9201]\n│       └── qingfeng-gen                                 // 代码生成 [9202]\n│       └── qingfeng-job                                 // 定时任务 [9203]\n│       └── qingfeng-file                                // 文件服务 [9300]\n|       └── qingfeng-edu                                 // 教育服务 [10902]\n|       └── qingfeng-order                               // 订单服务 [10502]\n|       └── qingfeng-user                                // 会员服务 [11500]\n|       └── qingfeng-edu                                 // 视频服务 [10702]\n├── qingfeng-visual          // 图形化管理模块\n│       └── qingfeng-visual-monitor                      // 监控中心 [9100]\n├──pom.xml                // 公共依赖', 1, 0, 1, 0, 2, '2023-12-12 13:46:57', '2024-06-29 02:04:20');
INSERT INTO `t_article` VALUES (80, 1, 53, 'https://junlty.top/config/868192a0205153cfe795737f4e9b2e74.png', '网络自监管系统项目收获', 'ctExecutorService 类并实现了 Executor 接口，可以用于执行一系列的异步任务。', '#### 多线程相关\n\n1. @EnableAsync是Spring框架中的一个注解，用于开启异步支持。通过使用@EnableAsync注解，可以将一些耗时的任务异步执行，以避免阻塞线程，提高应用程序的性能。 使用@EnableAsync注解时，会自动创建一个异步任务执行器（AsyncTaskExecutor），并将该执行器注入到应用程序中所有的异步方法中。异步方法是使用@Async注解的方法，这些方法将被异步执行。\n\n2. 定义线程池，例如定时任务给定线程池\n\n   newScheduledThreadPool方法创建了一个最多能同时执行10个任务的线程池\n\n   使用newFixedThreadPool方法生成一个固定大小的线程池，newSingleThreadExecutor方法生成一个单线程化的线程池，以及newCachedThreadPool方法生成一个可缓存的线程池。\n\n3. 线程池\n\n   1. ExecutorService：这是一个接口，定义了线程池的一些基本操作，例如提交任务、.shutdown() 等。它提供了不同类型的线程池实现，例如 ThreadPoolExecutor、ScheduledThreadPool 等。  \n   2. ScheduledExecutorService：这是一个继承自 ExecutorService 的类，除了基本的线程池操作外，还提供了定时和周期性执行任务的功能。  \n   3. ScheduledThreadPoolExecutor：这是一个实现了 ScheduledExecutorService 的类，它是一个有界线程池，可以用于定时和周期性执行任务。  \n   4. SingleThreadExecutor：这是一个单线程的线程池，所有的任务都是在同一个线程中执行，按照先入先出的顺序执行。\n   5. CachedThreadPool：这是一个缓存线程池，可以创建大量的线程，用于处理一些I/O密集型的任务。\n   6. ThreadPoolTaskExecutor 是一个在 Spring 中用于创建线程池的工具类。它扩展了 AbstractExecutorService 类并实现了 Executor 接口，可以用于执行一系列的异步任务。\n   7. Executors容易资源耗尽', 1, 0, 1, 0, 2, '2023-12-12 14:01:52', '2024-06-29 02:04:18');
INSERT INTO `t_article` VALUES (81, 1, 55, 'https://junlty.top/article/d176b62a793b527fe3e106a0489f7cac.jpg', '利用逻辑过期解决缓存击穿问题', '思路分析：当用户开始查询redis时，判断是否命中，如果没有命中则直接返回空数据，不查询数据库，而一旦命中后，将value取出，判断value中的设置的逻辑过期时间是否满足，如果没有过期，则直接返回r', '需求：修改根据id查询商铺的业务，基于逻辑过期方式来解决缓存击穿问题\n\n思路分析：当用户开始查询redis时，判断是否命中，如果没有命中则直接返回空数据，不查询数据库，而一旦命中后，将value取出，判断value中的设置的逻辑过期时间是否满足，如果没有过期，则直接返回redis中的数据，如果过期，则在开启独立线程后直接返回之前的数据，独立线程去重构数据，重构完成后释放互斥锁。\n![](https://myblogoss2.oss-cn-beijing.aliyuncs.com/article/a1de78b75d7a50ded7bf2f636f64fa4c.png)\n如果封装数据：因为现在redis中存储的数据的value需要带上过期时间，此时要么你去修改原来的实体类，要么你增加一个实体类，进行封装。\n\n步骤一、\n\n新建一个实体类，我们采用第二个方案，这个方案，对原来代码没有侵入性。\n\n```java\n@Data\npublic class RedisData {\n    private LocalDateTime expireTime;\n    private Object data;\n}\n```\n 步骤二、\n在ShopServiceImpl 新增此方法，利用单元测试进行缓存预热\n![](https://myblogoss2.oss-cn-beijing.aliyuncs.com/article/818f76da7e40c1f3a1b9bd77bec4c1f0.png)\n在测试类中\n![](https://myblogoss2.oss-cn-beijing.aliyuncs.com/article/4e91220ba44341755fdf0b934e70999e.png)\nShopServiceImpl\n```java\nprivate static final ExecutorService CACHE_REBUILD_EXECUTOR = Executors.newFixedThreadPool(10);\npublic Shop queryWithLogicalExpire( Long id ) {\n    String key = CACHE_SHOP_KEY + id;\n    // 1.从redis查询商铺缓存\n    String json = stringRedisTemplate.opsForValue().get(key);\n    // 2.判断是否存在\n    if (StrUtil.isBlank(json)) {\n        // 3.存在，直接返回\n        return null;\n    }\n    // 4.命中，需要先把json反序列化为对象\n    RedisData redisData = JSONUtil.toBean(json, RedisData.class);\n    Shop shop = JSONUtil.toBean((JSONObject) redisData.getData(), Shop.class);\n    LocalDateTime expireTime = redisData.getExpireTime();\n    // 5.判断是否过期\n    if(expireTime.isAfter(LocalDateTime.now())) {\n        // 5.1.未过期，直接返回店铺信息\n        return shop;\n    }\n    // 5.2.已过期，需要缓存重建\n    // 6.缓存重建\n    // 6.1.获取互斥锁\n    String lockKey = LOCK_SHOP_KEY + id;\n    boolean isLock = tryLock(lockKey);\n    // 6.2.判断是否获取锁成功\n    if (isLock){\n        CACHE_REBUILD_EXECUTOR.submit( ()->{\n \n            try{\n                //重建缓存\n                this.saveShop2Redis(id,20L);\n            }catch (Exception e){\n                throw new RuntimeException(e);\n            }finally {\n                unlock(lockKey);\n            }\n        });\n    }\n    // 6.4.返回过期的商铺信息\n    return shop;\n}\n```', 1, 0, 0, 0, 1, '2024-01-05 11:03:32', '2024-06-29 02:03:39');
INSERT INTO `t_article` VALUES (82, 1, 54, 'https://junlty.top/article/9e1adeadf249f44d1b30edc8787facd0.jpg', 'redis实现分布式锁', '实现分布式锁时需要实现的两个基本方法：获取锁：互斥：确保只能有一个线程获取锁。非阻塞：尝试一次，成功返回true，失败返回false。释放锁：手动释放、超时释放：获取锁时添加一个超时时间', '实现分布式锁时需要实现的两个基本方法：\n\n获取锁：\n\n互斥：确保只能有一个线程获取锁\n非阻塞：尝试一次，成功返回true，失败返回false\n释放锁：\n\n手动释放\n超时释放：获取锁时添加一个超时时间\n核心思路：\n我们利用redis 的setNx 方法，当有多个线程进入时，我们就利用该方法，第一个线程进入时，redis 中就有这个key 了，返回了1，如果结果是1，则表示他抢到了锁，那么他去执行业务，然后再删除锁，退出锁逻辑，没有抢到锁的哥们，等待一定时间后重试即可\n![](https://myblogoss2.oss-cn-beijing.aliyuncs.com/article/b57a7db7cd0d89a5d24706780799aebc.png)\n实现分布式锁版本一\n加锁逻辑\n锁的基本接口\n![](https://myblogoss2.oss-cn-beijing.aliyuncs.com/article/c5bcd845e68bf21b5403245c948a730c.png)\nSimpleRedisLock\n\n利用setnx方法进行加锁，同时增加过期时间，防止死锁，此方法可以保证加锁和增加过期时间具有原子性\n```java\nprivate static final String KEY_PREFIX=\"lock:\"\n@Override\npublic boolean tryLock(long timeoutSec) {\n    // 获取线程标示\n    String threadId = Thread.currentThread().getId()\n    // 获取锁\n    Boolean success = stringRedisTemplate.opsForValue()\n            .setIfAbsent(KEY_PREFIX + name, threadId + \"\", timeoutSec, TimeUnit.SECONDS);\n    return Boolean.TRUE.equals(success);\n}\n```\n释放锁逻辑\nSimpleRedisLock\n\n释放锁，防止删除别人的锁\n```java\npublic void unlock() {\n    	// 获取线程标示\n        String threadId = ID_PREFIX + Thread.currentThread().getId();\n        // 获取锁中的标示\n        String id = stringRedisTemplate.opsForValue().get(KEY_PREFIX + name);\n        // 判断标示是否一致\n        if (threadId.equals(id)) {\n            // 释放锁\n            stringRedisTemplate.delete(KEY_PREFIX + name);\n        }\n}\n```', 1, 0, 0, 0, 1, '2024-01-05 11:13:14', '2024-07-11 10:20:57');
INSERT INTO `t_article` VALUES (83, 1, 54, 'https://junlty.top/config/868192a0205153cfe795737f4e9b2e74.png', 'windows-nvm安装', '1.下载链接https://github.com/coreybutler/nvm-windows/releases\n2.配置路径和下载源', '### 1、nvm是什么  ：\nnvm全英文也叫node.js version management，是一个nodejs的版本管理工具。nvm和npm都是node.js版本管理工具，为了解决node.js各种版本存在不兼容现象可以通过它可以安装和切换不同版本的node.js\n### 2、卸载之前安装的node:\n### 3、nvm下载\n1、下载链接https://github.com/coreybutler/nvm-windows/releases\nnvm 1.1.7-setup.zip：安装版\n![](https://junlty.top/article/3c60be96c72cd5ed207e8068f76a1560.png)\n2、配置路径和下载源\n在安装目录，找到 settings.txt 文件 -> 添加下载源\n```Java\nnode_mirror: https://npmmirror.com/mirrors/node/\nnpm_mirror: https://npmmirror.com/mirrors/npm/\n```\n![](https://junlty.top/article/317b756b40835241be7e2e4f1f5370c4.png)\n3、使用管理员打开cmd切换node\n```Java\nnvm list 查看node\nnvm install 16.15.0  安装node\nnvm use 16.15.0  使用node\n```', 1, 0, 0, 0, 1, '2024-03-07 08:49:20', '2025-01-23 10:11:18');
INSERT INTO `t_article` VALUES (85, 1, 55, 'https://junlty.top/config/868192a0205153cfe795737f4e9b2e74.png', '2024-06-06', 'test', '#### 计划\n\n##### 6月11日 \n\n##### 上午\n\n9点：给小刘炖好排骨汤\n\n10点左右：去车站接小刘\n\n12点左右：放行李，吃饭\n\n##### 下午\n\n1/2点：骑电瓶车载小刘去地铁站，蒋村-->黄龙体育中心B口\n\n![image-20240606091250375](image/image-20240606091250375.png)\n\n\n\n门口买票去灵隐寺（先去灵隐寺再去飞来峰）\n\n灵隐寺打卡点：\n\n\n\n\n\n出来灵隐寺飞来峰大门右侧观光车去法喜寺\n\n法喜寺打卡点：\n\n\n\n\n\n法喜寺出来坐专线回黄龙体育中心\n\n\n\n', 1, 0, 1, 0, 1, '2024-06-06 12:32:03', '2024-06-06 12:33:26');
INSERT INTO `t_article` VALUES (89, 1, 51, 'https://junlty.top/article/d0ccb3a543fe13ab56eb1ae6330426dd.jpg', 'mysql一主一从配置', '# 一、环境说明（使用Docker启动两个mysql）\n| 名称 | Ip | Port|\n| - | - | - |\n| mysql| 123.57.1.39| 3306|\n| mysql_slav', '# 一、环境说明（使用Docker启动两个mysql）\n| 名称 | Ip | Port|\n| - | - | - |\n| mysql| 123.57.1.39| 3306|\n| mysql_slave| 120.27.140.210| 3306|\n\n```java\ndocker run --name mysql_slave -p 3306:3306 -v /mydata/mysql/log:/var/log/mysql -v /mydata/mysql/data:/var/lib/mysql -v /mydata/mysql/conf:/etc/mysql -v /mydata/mysql-files:/var/lib/mysql-files -e MYSQL_ROOT_PASSWORD=123456 -d mysql:8.0.28\n\n```\n```java\ndocker run --name mysql_slave -p 3306:3306 -v /mydata/mysql/log:/var/log/mysql -v /mydata/mysql/data:/var/lib/mysql -v /mydata/mysql/conf:/etc/mysql -v /mydata/mysql-files:/var/lib/mysql-files -e MYSQL_ROOT_PASSWORD=123456 -d mysql:8.0.28\n```\n# 二、修改配置文件\n- 提前直接运行docker复制/etc/mysql/conf.d下的文件到/mydata/mysql/conf下\n```\ndocker cp mysql:/etc/mysql/conf.d /mydata/mysql/conf\ndocker cp mysql_slave:/etc/mysql/conf.d /mydata/mysql/conf\n```\nmysql.cnf\n```\nserver-id=1\nlog-bin=master.bin\n```\nmysql_slave.cnf\n```\nserver-id=2\n```\n重启两个容器\n```\ndocker restart mysql mysql_slave\n```\n进入主机里面执行相关配置\n```\ndocker exec -it mysql bash\nmysql -uroot -p123456\n```\n创建用户：\n```sql\nCREATE USER \'slave\'@\'%\' IDENTIFIED WITH mysql_native_password BY \'123456\';\n```\n- 给该用户授予权限：\n```sql\nGRANT ALL PRIVILEGES ON *.* TO \'slave\'@\'%\' WITH GRANT OPTION;\n```\n刷新权限：\n```sql\nflush privileges;\n```\n进入从机里面执行相关配置\n```\ndocker exec -it mysql_slave bash\nmysql -uroot -p123456\n```\n```\nchange master to master_host=\"123.57.1.39\",master_port=3306,master_user=\"slave\",master_password=\"gj001212\",master_log_file=\"master.000002\",master_log_pos=157;\n```\n其中，master_log_file：该文件具体叫什么名称，需要从主机里面去看看。进入M1 里面使用root 用户登录M1，执行下面的SQL：\n```sql\nshow master status\n```\n![](https://myblogoss2.oss-cn-beijing.aliyuncs.com/article/b9d60009b2a228863e06261baf16178a.png)\n启动主从：（在M1S1里面执行）：start slave ;\n查询主从的状态（M1S1）：show slave status \\G;\n成功的标志：\n![](https://myblogoss2.oss-cn-beijing.aliyuncs.com/article/3b1edd5a973b33fc7260462e1e254017.png)\n\n', 1, 0, 0, 0, 1, '2024-06-20 10:25:23', '2024-06-29 23:27:35');
INSERT INTO `t_article` VALUES (91, 1, 60, 'https://junlty.top/article/b2b466fa65bb01163fbe8fe5daf2298b.jpg', 'Java开发工程师岗位要求', '岗位要求\n1.本科以上学历，3年以上java开发经验；\n2.扎实的Java基础；熟悉Java常见的技术框架(Spring, Spring Boot, Spring Cloud )等', '岗位要求\n1. 本科以上学历；\n2. 扎实的Java基础；熟悉Java常见的技术框架(Spring, Spring Boot, Spring Cloud )等；\n3. 熟悉 MYSQL/ Oracle数据库，熟悉关系数据库应用设计开发；\n4. 熟悉 Linux平台，熟悉 Internet基本协议(如TCP/IP、HTTP等)内容及相关应用；\n5. 对数据结构、基本算法熟练掌握，并具备基本的算法设计能力；\n6. 具有扎实的 Java 基础，熟练掌握 Lambda 表达式、集合、多线程，反射等基础框架。\n7. 对 JVM 有初步的理解，包括内存模型，垃圾收集原理，常见的垃圾回收器，了解基本调优技巧。\n8. 熟练使用 IDEA，WebStorm，VScode，Postman，Xshell，Axure，Git，Stack Overflow 等工具。\n9. 熟练 Spring、SpringMVC、MyBatis、MyBatis-Plus、Spring Boot 等框架的使用和原理。\n10. 熟悉 Spring Cloud、Spring Cloud Alibaba 微服务架构如：Nacos、OpenFeign、Gateway、Sentinel、Seata 等相关组件以及 SkyWalking 的部署。\n11. 熟练掌握 Redis 缓存中间件，如数据持久化机制、主从集群（容灾冷处理，哨兵机制）、分布式系统、高并发下缓存失效问题(如缓存雪崩、缓存穿透、缓存击穿等)。\n12. 熟练掌握 MySQL 数据库，如索引、MVCC 机制、事务、锁、SQL 优化。\n13. 熟练掌握 RabbitMQ 消息中间件，了解常见问题解决方案（如消息不丢失、消息补偿、幂等性、有序、堆积等)。\n14. 熟练掌握 Linux，有独自开发并使用 Docker 部署 Springboot+Vue 的项目经验。\n15. 了解常用的设计模式：单例模式、责任链模式、策略模式。\n16. 了解 HTML，CSS，JavaScript，Vue，ElementUl 并可以使用前端技术完成后台管理系统的编写。', 1, 1, 0, 0, 1, '2024-06-26 00:54:51', '2024-07-11 10:30:19');
INSERT INTO `t_article` VALUES (93, 1, 58, 'https://junlty.top/article/0a5f585f1d5db3ba087c0f5795b25cb1.jpg', '前端开发工程师岗位要求', '-具备跨终端的前端开发能力，在Web（PC+Mobile）/Node.js/HybridApp/NativeApp三个方向上至少精通一个方向，-至少能熟练使用一款前端框架，熟悉源码和框架原理-对ES6', '- 具备跨终端的前端开发能力，在Web（PC+Mobile）/Node.js/Hybrid App/Native App三个方向上至少精通一个方向，\n- 至少能熟练使用一款 (Vue.js/React/Angular) 前端框架，熟悉源码和框架原理\n- 对ES6来说，可以熟练的使用(Promise、迭代器、let/const、解构赋值、扩展运算...、class创建类等语法特性要了解如何使用)', 1, 0, 0, 0, 1, '2024-07-10 15:41:24', '2024-07-11 10:26:53');
INSERT INTO `t_article` VALUES (94, 1, 60, 'https://junlty.top/article/868192a0205153cfe795737f4e9b2e74.png', '全国计算机技术与软件专业技术资格（水平）考试', '全国计算机技术与软件专业技术资格（水平）考试', '### 报名要求：相关证明材料仅限于以下三项中任意一项：\n- 浙江省内的居住证明：有效期内浙江省内身份证或户口簿（含户口簿首页和本人页）或由浙江省内公安机关签发的“浙江省居住证”。\n- 浙江省内的工作证明：2023 年 6 月至 2024 年 2 月期间连续六个月的浙江省内社保证明（登录支付宝“浙里办”-社保服务- 社保证明打印进行下载，以 PDF 格式上传）。\n- 浙江省内的上学证明（仅限在读学生）：有效期内的教育部学籍在线验证报告（登录学信网-学籍查询栏进行下载）\n![](https://junlex.com/article/e96e8914abf013e48e5125ddbbf93cb2.png)\n### 系统集成项目管理工程师\n![](https://junlex.com/article/4b20e123c11456cd0d2d5ca658b0d0d3.png)\n![](https://junlex.com/article/b457957af3ab96b7496381adf12e773b.png)\n### 软件设计师\n视频：【软件设计师教程（仅供社区学习与参考，附历年真题）】https://www.bilibili.com/video/BV17K4y1w7wH?vd_source=2390696cfc0e76dfeaee4128192e596c\n真题：【「软件设计师」 2023年下半年下午真题解析】https://www.bilibili.com/video/BV13i421X73e?vd_source=2390696cfc0e76dfeaee4128192e596c\n刷题：天若长久时:\n刷题：软考通app、希赛网\n', 1, 1, 0, 1, 1, '2024-07-11 10:15:57', '2024-08-27 12:15:55');
INSERT INTO `t_article` VALUES (97, 1, 53, 'https://junlty.top/article/cec55cfa4d6deef59d9f0165c8b8dc37.jpg', '软件破解集锦', 'IDEA破解版地址`https://www.quanxiaoha.com/idea-pojie/idea-pojie-202424.html`Navicat16破解版地址`https://www.qu', '### IDEA破解版地址\n`https://www.quanxiaoha.com/idea-pojie/idea-pojie-202424.html`\n### Navicat 16破解版地址\n`https://www.quanxiaoha.com/article/navicat16-pojie.html`\n### nvm安装教程\n`https://www.junlty.top/article/83`\n### maven安装教程\n`https://blog.csdn.net/m0_73804764/article/details/139898041`', 1, 0, 0, 0, 1, '2025-01-23 09:58:11', '2025-01-23 10:03:45');

-- ----------------------------
-- Table structure for t_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_article_tag`;
CREATE TABLE `t_article_tag`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `article_id` int NOT NULL COMMENT '文章id',
  `tag_id` int NOT NULL COMMENT '标签id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 309 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_article_tag
-- ----------------------------
INSERT INTO `t_article_tag` VALUES (125, 73, 15);
INSERT INTO `t_article_tag` VALUES (134, 79, 15);
INSERT INTO `t_article_tag` VALUES (136, 80, 15);
INSERT INTO `t_article_tag` VALUES (142, 85, 15);
INSERT INTO `t_article_tag` VALUES (232, 71, 15);
INSERT INTO `t_article_tag` VALUES (248, 61, 15);
INSERT INTO `t_article_tag` VALUES (249, 82, 15);
INSERT INTO `t_article_tag` VALUES (257, 81, 15);
INSERT INTO `t_article_tag` VALUES (258, 77, 15);
INSERT INTO `t_article_tag` VALUES (259, 78, 23);
INSERT INTO `t_article_tag` VALUES (260, 75, 15);
INSERT INTO `t_article_tag` VALUES (263, 89, 17);
INSERT INTO `t_article_tag` VALUES (273, 93, 28);
INSERT INTO `t_article_tag` VALUES (275, 91, 30);
INSERT INTO `t_article_tag` VALUES (276, 91, 31);
INSERT INTO `t_article_tag` VALUES (287, 94, 31);
INSERT INTO `t_article_tag` VALUES (306, 97, 32);
INSERT INTO `t_article_tag` VALUES (307, 83, 15);

-- ----------------------------
-- Table structure for t_blog_file
-- ----------------------------
DROP TABLE IF EXISTS `t_blog_file`;
CREATE TABLE `t_blog_file`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '文件id',
  `file_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件url',
  `file_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文件名',
  `file_size` int NOT NULL DEFAULT 0 COMMENT '文件大小',
  `extend_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '文件类型',
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文件路径',
  `is_dir` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否为目录 (0否 1是)',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 567 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_blog_file
-- ----------------------------
INSERT INTO `t_blog_file` VALUES (3, '', 'config', 0, '', '/', 1, '2023-03-08 12:17:10', NULL);
INSERT INTO `t_blog_file` VALUES (107, NULL, 'article', 0, '', '/', 1, '2023-03-10 22:33:33', NULL);
INSERT INTO `t_blog_file` VALUES (140, NULL, 'photo', 0, '', '/', 1, '2023-09-15 10:41:43', NULL);
INSERT INTO `t_blog_file` VALUES (141, NULL, 'articles', 0, '', '/', 1, '2023-09-15 10:42:25', NULL);
INSERT INTO `t_blog_file` VALUES (142, NULL, 'emoji', 0, '', '/', 1, '2023-09-15 10:42:53', NULL);
INSERT INTO `t_blog_file` VALUES (152, 'https://junlty.top/photo/819db15baa537a62df5914cf9c41af11.jpg', '819db15baa537a62df5914cf9c41af11', 155422, 'jpg', '/photo', 0, '2023-11-24 13:08:57', NULL);
INSERT INTO `t_blog_file` VALUES (154, 'https://junlty.top/article/7ee6f104979814d2bf420461e3872475.jpg', '7ee6f104979814d2bf420461e3872475', 126160, 'jpg', '/article', 0, '2023-11-24 14:10:58', NULL);
INSERT INTO `t_blog_file` VALUES (155, 'https://junlty.top/article/2f34b0a602ad0079e60c6dbef2a0851e.png', '2f34b0a602ad0079e60c6dbef2a0851e', 861657, 'png', '/article', 0, '2023-11-24 21:03:46', NULL);
INSERT INTO `t_blog_file` VALUES (156, 'https://junlty.top/photo/525823a33e75d7e9f1dada918847e8f2.jpg', '525823a33e75d7e9f1dada918847e8f2', 212129, 'jpg', '/photo', 0, '2023-11-26 18:42:51', NULL);
INSERT INTO `t_blog_file` VALUES (157, 'https://junlty.top/photo/e1e9965814f66fced54bb7aafceece0c.jpg', 'e1e9965814f66fced54bb7aafceece0c', 127109, 'jpg', '/photo', 0, '2023-11-26 18:48:39', NULL);
INSERT INTO `t_blog_file` VALUES (158, 'https://junlty.top/photo/61dbfd829cbe7d595dff560f403c1cc3.jpg', '61dbfd829cbe7d595dff560f403c1cc3', 182277, 'jpg', '/photo', 0, '2023-11-26 18:48:39', NULL);
INSERT INTO `t_blog_file` VALUES (159, 'https://junlty.top/photo/b121b0273250f01336ff45b2d7d8434a.jpg', 'b121b0273250f01336ff45b2d7d8434a', 214283, 'jpg', '/photo', 0, '2023-11-26 18:48:40', NULL);
INSERT INTO `t_blog_file` VALUES (160, 'https://junlty.top/photo/cf7a0ff7e502f2ecd80c38f5e26d3354.jpg', 'cf7a0ff7e502f2ecd80c38f5e26d3354', 211892, 'jpg', '/photo', 0, '2023-11-26 18:48:42', NULL);
INSERT INTO `t_blog_file` VALUES (161, 'https://junlty.top/photo/45eb42f7c2d5bc5dcab6f474b267df4c.jpg', '45eb42f7c2d5bc5dcab6f474b267df4c', 204607, 'jpg', '/photo', 0, '2023-11-26 18:48:42', NULL);
INSERT INTO `t_blog_file` VALUES (162, 'https://junlty.top/photo/33254cdff5c4d607c19f1475a68351db.jpg', '33254cdff5c4d607c19f1475a68351db', 202516, 'jpg', '/photo', 0, '2023-11-26 18:48:42', NULL);
INSERT INTO `t_blog_file` VALUES (163, 'https://junlty.top/photo/24f34bc90ca8a470acef6f94328505aa.jpg', '24f34bc90ca8a470acef6f94328505aa', 212892, 'jpg', '/photo', 0, '2023-11-26 18:48:43', NULL);
INSERT INTO `t_blog_file` VALUES (165, 'https://junlty.top/config/7ee6f104979814d2bf420461e3872475.jpg', '7ee6f104979814d2bf420461e3872475', 126160, 'jpg', '/config', 0, '2023-11-27 15:26:11', NULL);
INSERT INTO `t_blog_file` VALUES (166, 'https://junlty.top/config/d77a597f09e00285b4399a774a2df04b.jpg', 'd77a597f09e00285b4399a774a2df04b', 206352, 'jpg', '/config', 0, '2023-11-27 15:29:52', NULL);
INSERT INTO `t_blog_file` VALUES (167, 'https://junlty.top/config/1d4c28602df625239b0e78bd23fd13eb.png', '1d4c28602df625239b0e78bd23fd13eb', 73798, 'png', '/config', 0, '2023-11-27 15:34:21', NULL);
INSERT INTO `t_blog_file` VALUES (168, 'https://junlty.top/talk/2bb26ac3ee49668d3aab5901cc2df6b8.jpg', '2bb26ac3ee49668d3aab5901cc2df6b8', 207826, 'jpg', '/talk', 0, '2023-11-27 15:39:23', NULL);
INSERT INTO `t_blog_file` VALUES (170, 'https://junlty.top/article/8b2909d67d16692421d9b80bbf91de3c.jpg', '8b2909d67d16692421d9b80bbf91de3c', 128607, 'jpg', '/article', 0, '2023-12-07 16:55:22', NULL);
INSERT INTO `t_blog_file` VALUES (171, 'https://junlty.top/article/3323310bace970f2afccc7d4f518d469.png', '3323310bace970f2afccc7d4f518d469', 103650, 'png', '/article', 0, '2023-12-07 16:56:07', NULL);
INSERT INTO `t_blog_file` VALUES (172, 'https://junlty.top/article/6995383b37b2d3b859ae480e698b8f1b.png', '6995383b37b2d3b859ae480e698b8f1b', 53738, 'png', '/article', 0, '2023-12-07 17:00:14', NULL);
INSERT INTO `t_blog_file` VALUES (173, 'https://junlty.top/article/f6f30f5f1933b4a66e66be6ef8db5667.jpg', 'f6f30f5f1933b4a66e66be6ef8db5667', 175777, 'jpg', '/article', 0, '2023-12-07 17:04:46', NULL);
INSERT INTO `t_blog_file` VALUES (174, 'https://junlty.top/config/9688045c3512712fa673b88af9ae64aa.jpg', '9688045c3512712fa673b88af9ae64aa', 67230, 'jpg', '/config', 0, '2023-12-07 17:13:54', NULL);
INSERT INTO `t_blog_file` VALUES (175, 'https://junlty.top/config/a77ad2ce62e873b730b1a5467ec2eddf.jpg', 'a77ad2ce62e873b730b1a5467ec2eddf', 98782, 'jpg', '/config', 0, '2023-12-07 17:14:38', NULL);
INSERT INTO `t_blog_file` VALUES (176, 'https://junlty.top/article/5f7571b8ffd674a6f3810104fe719f9b.png', '5f7571b8ffd674a6f3810104fe719f9b', 747533, 'png', '/article', 0, '2023-12-12 13:35:47', NULL);
INSERT INTO `t_blog_file` VALUES (177, 'https://junlty.top/article/a1de78b75d7a50ded7bf2f636f64fa4c.png', 'a1de78b75d7a50ded7bf2f636f64fa4c', 240062, 'png', '/article', 0, '2024-01-05 10:55:54', NULL);
INSERT INTO `t_blog_file` VALUES (178, 'https://junlty.top/article/818f76da7e40c1f3a1b9bd77bec4c1f0.png', '818f76da7e40c1f3a1b9bd77bec4c1f0', 41310, 'png', '/article', 0, '2024-01-05 11:00:00', NULL);
INSERT INTO `t_blog_file` VALUES (179, 'https://junlty.top/article/4e91220ba44341755fdf0b934e70999e.png', '4e91220ba44341755fdf0b934e70999e', 90891, 'png', '/article', 0, '2024-01-05 11:00:20', NULL);
INSERT INTO `t_blog_file` VALUES (180, 'https://junlty.top/article/d176b62a793b527fe3e106a0489f7cac.jpg', 'd176b62a793b527fe3e106a0489f7cac', 41526, 'jpg', '/article', 0, '2024-01-05 11:03:31', NULL);
INSERT INTO `t_blog_file` VALUES (181, 'https://junlty.top/article/b57a7db7cd0d89a5d24706780799aebc.png', 'b57a7db7cd0d89a5d24706780799aebc', 44983, 'png', '/article', 0, '2024-01-05 11:11:23', NULL);
INSERT INTO `t_blog_file` VALUES (182, 'https://junlty.top/article/c5bcd845e68bf21b5403245c948a730c.png', 'c5bcd845e68bf21b5403245c948a730c', 22372, 'png', '/article', 0, '2024-01-05 11:11:42', NULL);
INSERT INTO `t_blog_file` VALUES (183, 'https://junlty.top/article/89e5a199b8fe0f22e76dc804ac6a61c0.jpg', '89e5a199b8fe0f22e76dc804ac6a61c0', 131050, 'jpg', '/article', 0, '2024-01-05 11:13:12', NULL);
INSERT INTO `t_blog_file` VALUES (184, 'https://junlty.top/config/27b10971c963e55455b09474399460cf.jpg', '27b10971c963e55455b09474399460cf', 186701, 'jpg', '/config', 0, '2024-05-27 14:39:24', NULL);
INSERT INTO `t_blog_file` VALUES (185, 'https://junlty.top/config/ada85b5e5aabd6a6c55683df96ce98d4.jpg', 'ada85b5e5aabd6a6c55683df96ce98d4', 30257, 'jpg', '/config', 0, '2024-05-27 14:41:36', NULL);
INSERT INTO `t_blog_file` VALUES (186, 'https://junlty.top/article/7041a642e671efcff6d9d014e6cbe01c.jpg', '7041a642e671efcff6d9d014e6cbe01c', 217955, 'jpg', '/article', 0, '2024-06-06 12:34:16', NULL);
INSERT INTO `t_blog_file` VALUES (187, 'https://junlty.top/article/5873ceb9e3ee6bbbd3ea79ded7e2c257.png', '5873ceb9e3ee6bbbd3ea79ded7e2c257', 631134, 'png', '/article', 0, '2024-06-06 12:46:14', NULL);
INSERT INTO `t_blog_file` VALUES (188, 'https://junlty.top/article/c26e2015df3483f9fbb630c28ec682bf.png', 'c26e2015df3483f9fbb630c28ec682bf', 340891, 'png', '/article', 0, '2024-06-06 12:48:41', NULL);
INSERT INTO `t_blog_file` VALUES (189, 'https://junlty.top/article/3b01d74815a8b4377f90473de82b3f75.png', '3b01d74815a8b4377f90473de82b3f75', 495514, 'png', '/article', 0, '2024-06-06 12:49:22', NULL);
INSERT INTO `t_blog_file` VALUES (190, 'https://junlty.top/article/dcfeb686711cbe8e88aaacf72d517347.png', 'dcfeb686711cbe8e88aaacf72d517347', 348862, 'png', '/article', 0, '2024-06-06 12:50:47', NULL);
INSERT INTO `t_blog_file` VALUES (191, 'https://junlty.top/article/6709f91d58f773519509befb59c60add.png', '6709f91d58f773519509befb59c60add', 234849, 'png', '/article', 0, '2024-06-06 12:51:01', NULL);
INSERT INTO `t_blog_file` VALUES (192, 'https://junlty.top/article/d9a5dcaa5c366e9a7ca08a8335b99264.png', 'd9a5dcaa5c366e9a7ca08a8335b99264', 338954, 'png', '/article', 0, '2024-06-06 12:51:14', NULL);
INSERT INTO `t_blog_file` VALUES (193, 'https://junlty.top/article/95e73534247cf197e606aeb667254e37.png', '95e73534247cf197e606aeb667254e37', 287354, 'png', '/article', 0, '2024-06-06 12:51:28', NULL);
INSERT INTO `t_blog_file` VALUES (194, 'https://junlty.top/article/b4b2fd4ef15536a2f01d4c727185948d.png', 'b4b2fd4ef15536a2f01d4c727185948d', 340872, 'png', '/article', 0, '2024-06-06 12:52:13', NULL);
INSERT INTO `t_blog_file` VALUES (195, 'https://junlty.top/article/ec204efaf353d02390b6ac2d8342721d.png', 'ec204efaf353d02390b6ac2d8342721d', 305579, 'png', '/article', 0, '2024-06-06 12:52:22', NULL);
INSERT INTO `t_blog_file` VALUES (196, 'https://junlty.top/article/13477bcc042ecdff91470a590c4bcc5d.png', '13477bcc042ecdff91470a590c4bcc5d', 342536, 'png', '/article', 0, '2024-06-06 12:52:33', NULL);
INSERT INTO `t_blog_file` VALUES (197, 'https://junlty.top/article/9f6c1b470e59129d7cede0a9bd722064.png', '9f6c1b470e59129d7cede0a9bd722064', 335628, 'png', '/article', 0, '2024-06-06 12:52:43', NULL);
INSERT INTO `t_blog_file` VALUES (198, 'https://junlty.top/article/74ee38ed5b5463a1f72d5322e6d6f95e.png', '74ee38ed5b5463a1f72d5322e6d6f95e', 306332, 'png', '/article', 0, '2024-06-06 12:52:59', NULL);
INSERT INTO `t_blog_file` VALUES (199, 'https://junlty.top/article/a6aa652941e24fc2565d156ba2648ea5.png', 'a6aa652941e24fc2565d156ba2648ea5', 246460, 'png', '/article', 0, '2024-06-06 12:53:28', NULL);
INSERT INTO `t_blog_file` VALUES (200, 'https://junlty.top/article/f6b0ef0473953b9f96ec8751375b2d75.png', 'f6b0ef0473953b9f96ec8751375b2d75', 337598, 'png', '/article', 0, '2024-06-06 12:53:38', NULL);
INSERT INTO `t_blog_file` VALUES (201, 'https://junlty.top/article/5246e126d10a7ab44eb11855710368d1.png', '5246e126d10a7ab44eb11855710368d1', 2996, 'png', '/article', 0, '2024-06-06 12:56:15', NULL);
INSERT INTO `t_blog_file` VALUES (202, 'https://junlty.top/article/c9998cea9de6f2b9a2b9f7307c664c2a.png', 'c9998cea9de6f2b9a2b9f7307c664c2a', 375338, 'png', '/article', 0, '2024-06-06 13:03:13', NULL);
INSERT INTO `t_blog_file` VALUES (203, 'https://junlty.top/article/6b38a5d93e9e15d0cff26dbe45114051.png', '6b38a5d93e9e15d0cff26dbe45114051', 319675, 'png', '/article', 0, '2024-06-06 13:03:36', NULL);
INSERT INTO `t_blog_file` VALUES (204, 'https://junlty.top/article/e7e021f01917a0bb13bedf848a5e6f28.png', 'e7e021f01917a0bb13bedf848a5e6f28', 320500, 'png', '/article', 0, '2024-06-06 13:03:48', NULL);
INSERT INTO `t_blog_file` VALUES (205, 'https://junlty.top/article/30d3ef137f902846c2a1e6052a6cc8cd.jpg', '30d3ef137f902846c2a1e6052a6cc8cd', 452602, 'jpg', '/article', 0, '2024-06-16 19:32:08', NULL);
INSERT INTO `t_blog_file` VALUES (206, 'https://junlty.top/article/1a4ace3963c57d988c556c0b052e066e.jpg', '1a4ace3963c57d988c556c0b052e066e', 190741, 'jpg', '/article', 0, '2024-06-16 19:45:05', NULL);
INSERT INTO `t_blog_file` VALUES (207, 'https://junlty.top/article/47c23c0037f612abba680441180d42a4.jpg', '47c23c0037f612abba680441180d42a4', 190058, 'jpg', '/article', 0, '2024-06-16 19:45:55', NULL);
INSERT INTO `t_blog_file` VALUES (208, 'https://junlty.top/article/ef4e29a968d452358aa9d642130575c4.jpg', 'ef4e29a968d452358aa9d642130575c4', 225517, 'jpg', '/article', 0, '2024-06-16 19:47:02', NULL);
INSERT INTO `t_blog_file` VALUES (209, 'https://junlty.top/article/1ff9237778d12f131da1483c7d44e6e0.jpg', '1ff9237778d12f131da1483c7d44e6e0', 189906, 'jpg', '/article', 0, '2024-06-16 19:48:36', NULL);
INSERT INTO `t_blog_file` VALUES (210, 'https://junlty.top/article/7d409131217bd6546752f19c37cd93a8.jpg', '7d409131217bd6546752f19c37cd93a8', 189194, 'jpg', '/article', 0, '2024-06-16 19:53:21', NULL);
INSERT INTO `t_blog_file` VALUES (211, 'https://junlty.top/article/7602b3e826ed33d1cd5cc027dd60a0bd.jpg', '7602b3e826ed33d1cd5cc027dd60a0bd', 207761, 'jpg', '/article', 0, '2024-06-16 23:09:13', NULL);
INSERT INTO `t_blog_file` VALUES (212, 'https://junlty.top/article/6e74df3e6cef8a547d66d6994f5b0b41.jpg', '6e74df3e6cef8a547d66d6994f5b0b41', 194783, 'jpg', '/article', 0, '2024-06-16 23:10:03', NULL);
INSERT INTO `t_blog_file` VALUES (213, 'https://junlty.top/article/ca851c94f25e448fb1b5f69e616fc0f8.jpg', 'ca851c94f25e448fb1b5f69e616fc0f8', 202869, 'jpg', '/article', 0, '2024-06-16 23:18:15', NULL);
INSERT INTO `t_blog_file` VALUES (214, 'https://junlty.top/article/12919eb39791024f818e141f16c59cf5.jpg', '12919eb39791024f818e141f16c59cf5', 199122, 'jpg', '/article', 0, '2024-06-16 23:18:23', NULL);
INSERT INTO `t_blog_file` VALUES (215, 'https://junlty.top/article/9f32edd921411de29de22f7196586a43.jpg', '9f32edd921411de29de22f7196586a43', 87129, 'jpg', '/article', 0, '2024-06-16 23:18:35', NULL);
INSERT INTO `t_blog_file` VALUES (216, 'https://junlty.top/article/aa70728c93d199bb9a91e6d647109abc.jpg', 'aa70728c93d199bb9a91e6d647109abc', 143708, 'jpg', '/article', 0, '2024-06-16 23:18:43', NULL);
INSERT INTO `t_blog_file` VALUES (217, 'https://junlty.top/photo/1d4c28602df625239b0e78bd23fd13eb.png', '1d4c28602df625239b0e78bd23fd13eb', 73798, 'png', '/photo', 0, '2024-06-17 00:37:36', NULL);
INSERT INTO `t_blog_file` VALUES (218, 'https://junlty.top/article/2ce1129fceee7f14cb4cf554ed167534.jpg', '2ce1129fceee7f14cb4cf554ed167534', 140645, 'jpg', '/article', 0, '2024-06-17 00:43:00', NULL);
INSERT INTO `t_blog_file` VALUES (219, 'https://junlty.top/article/293cee0acb7bac0c16744790fdbb92cf.jpg', '293cee0acb7bac0c16744790fdbb92cf', 206560, 'jpg', '/article', 0, '2024-06-17 00:43:07', NULL);
INSERT INTO `t_blog_file` VALUES (220, 'https://junlty.top/article/379ce4b2ddf4b087441c196fbffa2f3b.jpg', '379ce4b2ddf4b087441c196fbffa2f3b', 116647, 'jpg', '/article', 0, '2024-06-17 00:43:14', NULL);
INSERT INTO `t_blog_file` VALUES (221, 'https://junlty.top/article/00cbf315c4152c445e64917e2d9ccb30.jpg', '00cbf315c4152c445e64917e2d9ccb30', 200215, 'jpg', '/article', 0, '2024-06-17 18:17:51', NULL);
INSERT INTO `t_blog_file` VALUES (222, 'https://junlty.top/article/5e11525d0e400ed5d6d1e23793468105.png', '5e11525d0e400ed5d6d1e23793468105', 37985, 'png', '/article', 0, '2024-06-18 19:21:11', NULL);
INSERT INTO `t_blog_file` VALUES (223, 'https://junlty.top/article/c2e5f8f17489268254342a1bfffa1e3c.png', 'c2e5f8f17489268254342a1bfffa1e3c', 31177, 'png', '/article', 0, '2024-06-18 19:27:10', NULL);
INSERT INTO `t_blog_file` VALUES (224, 'https://junlty.top/article/f9595dc2b70aebbe37974cb68a196ec9.png', 'f9595dc2b70aebbe37974cb68a196ec9', 27692, 'png', '/article', 0, '2024-06-18 19:28:58', NULL);
INSERT INTO `t_blog_file` VALUES (225, 'https://junlty.top/article/fe72c90dd7488006f9ca9584d8751766.png', 'fe72c90dd7488006f9ca9584d8751766', 29311, 'png', '/article', 0, '2024-06-18 19:30:33', NULL);
INSERT INTO `t_blog_file` VALUES (226, 'https://junlty.top/article/ef2b703adcf70ae9d87176123f4077a6.png', 'ef2b703adcf70ae9d87176123f4077a6', 95035, 'png', '/article', 0, '2024-06-18 19:45:45', NULL);
INSERT INTO `t_blog_file` VALUES (227, 'https://junlty.top/article/2d03ca9b300d5b79258cce7f6b3bd4cb.png', '2d03ca9b300d5b79258cce7f6b3bd4cb', 50871, 'png', '/article', 0, '2024-06-18 19:51:20', NULL);
INSERT INTO `t_blog_file` VALUES (228, 'https://junlty.top/article/adecc8d4bb0d9cadcc70720a66804f6c.png', 'adecc8d4bb0d9cadcc70720a66804f6c', 275118, 'png', '/article', 0, '2024-06-18 19:59:19', NULL);
INSERT INTO `t_blog_file` VALUES (229, 'https://junlty.top/article/f2a92782ee8d0f0cdb39c5971ffdb193.jpg', 'f2a92782ee8d0f0cdb39c5971ffdb193', 200349, 'jpg', '/article', 0, '2024-06-18 20:04:54', NULL);
INSERT INTO `t_blog_file` VALUES (230, 'https://junlty.top/article/533c4d5526138d4ae60cda67502fd7ca.png', '533c4d5526138d4ae60cda67502fd7ca', 76266, 'png', '/article', 0, '2024-06-18 20:22:56', NULL);
INSERT INTO `t_blog_file` VALUES (231, 'https://junlty.top/article/c4a8cce54eb2c5fcbacad18a100619c7.png', 'c4a8cce54eb2c5fcbacad18a100619c7', 116915, 'png', '/article', 0, '2024-06-18 20:24:50', NULL);
INSERT INTO `t_blog_file` VALUES (232, 'https://junlty.top/article/29d491bab802c4894b038209a539989e.png', '29d491bab802c4894b038209a539989e', 30855, 'png', '/article', 0, '2024-06-18 21:56:09', NULL);
INSERT INTO `t_blog_file` VALUES (233, 'https://junlty.top/article/c1436086cbc8071b95339e78f571088f.jpg', 'c1436086cbc8071b95339e78f571088f', 826360, 'jpg', '/article', 0, '2024-06-18 22:29:10', NULL);
INSERT INTO `t_blog_file` VALUES (234, 'https://junlty.top/article/8cb43d41bec6d4b18c75e17b75e8125c.jpg', '8cb43d41bec6d4b18c75e17b75e8125c', 448334, 'jpg', '/article', 0, '2024-06-18 22:30:11', NULL);
INSERT INTO `t_blog_file` VALUES (235, 'https://junlty.top/article/9e0dc82b27fb00fcffa78f674595fc37.jpg', '9e0dc82b27fb00fcffa78f674595fc37', 774464, 'jpg', '/article', 0, '2024-06-18 22:32:16', NULL);
INSERT INTO `t_blog_file` VALUES (236, 'https://junlty.top/article/4c989fc551a40598169b4415a41abf4a.png', '4c989fc551a40598169b4415a41abf4a', 59584, 'png', '/article', 0, '2024-06-18 22:41:46', NULL);
INSERT INTO `t_blog_file` VALUES (237, 'https://junlty.top/article/d3bd22ee3433811e2731b77aad9d9327.png', 'd3bd22ee3433811e2731b77aad9d9327', 74791, 'png', '/article', 0, '2024-06-19 16:53:20', NULL);
INSERT INTO `t_blog_file` VALUES (238, 'https://junlty.top/article/e54f257a9efd48e5c1f8c9f494f5f8b0.png', 'e54f257a9efd48e5c1f8c9f494f5f8b0', 44326, 'png', '/article', 0, '2024-06-19 17:01:08', NULL);
INSERT INTO `t_blog_file` VALUES (239, 'https://junlty.top/article/db58c5551e18c6baddde811b3e9d68c0.png', 'db58c5551e18c6baddde811b3e9d68c0', 309371, 'png', '/article', 0, '2024-06-19 17:29:10', NULL);
INSERT INTO `t_blog_file` VALUES (240, 'https://junlty.top/article/dc8cb1f087e97106f1a749e10f7bf0bb.png', 'dc8cb1f087e97106f1a749e10f7bf0bb', 214858, 'png', '/article', 0, '2024-06-19 17:29:36', NULL);
INSERT INTO `t_blog_file` VALUES (241, 'https://junlty.top/article/1b71b2d2e5c6ebcad408dc7e7b935b0c.png', '1b71b2d2e5c6ebcad408dc7e7b935b0c', 429513, 'png', '/article', 0, '2024-06-19 17:29:49', NULL);
INSERT INTO `t_blog_file` VALUES (242, 'https://junlty.top/article/99d6408eb4bce37bb5b7f2fe7faf1417.png', '99d6408eb4bce37bb5b7f2fe7faf1417', 444286, 'png', '/article', 0, '2024-06-19 17:37:16', NULL);
INSERT INTO `t_blog_file` VALUES (243, 'https://junlty.top/article/fb4ebd545740dfd5b4d5372552df818c.png', 'fb4ebd545740dfd5b4d5372552df818c', 634140, 'png', '/article', 0, '2024-06-19 17:37:38', NULL);
INSERT INTO `t_blog_file` VALUES (244, 'https://junlty.top/article/c65723391981459184a56cf9be4ae01c.png', 'c65723391981459184a56cf9be4ae01c', 527769, 'png', '/article', 0, '2024-06-19 17:38:00', NULL);
INSERT INTO `t_blog_file` VALUES (245, 'https://junlty.top/article/5b9920a90ba86b683c004310426e6cd5.png', '5b9920a90ba86b683c004310426e6cd5', 542354, 'png', '/article', 0, '2024-06-19 17:38:16', NULL);
INSERT INTO `t_blog_file` VALUES (246, 'https://junlty.top/article/a29f9c815529d35ed84d74f223db91ab.png', 'a29f9c815529d35ed84d74f223db91ab', 638480, 'png', '/article', 0, '2024-06-19 17:38:40', NULL);
INSERT INTO `t_blog_file` VALUES (247, 'https://junlty.top/article/94941fc7cdba92032ff92c71796ad8a6.jpg', '94941fc7cdba92032ff92c71796ad8a6', 865161, 'jpg', '/article', 0, '2024-06-19 17:46:22', NULL);
INSERT INTO `t_blog_file` VALUES (248, 'https://junlty.top/article/785eaa462bdbbe304485a4352e0d3e14.jpg', '785eaa462bdbbe304485a4352e0d3e14', 717085, 'jpg', '/article', 0, '2024-06-19 17:46:34', NULL);
INSERT INTO `t_blog_file` VALUES (249, 'https://junlty.top/article/6c907235731c4c2c5210300ea9ac1b32.jpg', '6c907235731c4c2c5210300ea9ac1b32', 615305, 'jpg', '/article', 0, '2024-06-19 17:46:59', NULL);
INSERT INTO `t_blog_file` VALUES (250, 'https://junlty.top/article/236d078fbdd026463514edb28d0ad576.png', '236d078fbdd026463514edb28d0ad576', 189949, 'png', '/article', 0, '2024-06-19 17:55:42', NULL);
INSERT INTO `t_blog_file` VALUES (251, 'https://junlty.top/article/b9d60009b2a228863e06261baf16178a.png', 'b9d60009b2a228863e06261baf16178a', 100703, 'png', '/article', 0, '2024-06-20 10:24:39', NULL);
INSERT INTO `t_blog_file` VALUES (252, 'https://junlty.top/article/3b1edd5a973b33fc7260462e1e254017.png', '3b1edd5a973b33fc7260462e1e254017', 336940, 'png', '/article', 0, '2024-06-20 10:24:59', NULL);
INSERT INTO `t_blog_file` VALUES (253, 'https://junlty.top/photo/e4c8ada2f43cb4565a64d6aba2e189f9.jpg', 'e4c8ada2f43cb4565a64d6aba2e189f9', 202304, 'jpg', '/photo', 0, '2024-06-20 11:53:32', NULL);
INSERT INTO `t_blog_file` VALUES (254, 'https://junlty.top/photo/bd587443963f5fa416dc8eabd086224a.jpg', 'bd587443963f5fa416dc8eabd086224a', 203943, 'jpg', '/photo', 0, '2024-06-20 11:56:15', NULL);
INSERT INTO `t_blog_file` VALUES (255, 'https://junlty.top/photo/63eef55b4ac5911d8cf21e378b26e255.jpg', '63eef55b4ac5911d8cf21e378b26e255', 196387, 'jpg', '/photo', 0, '2024-06-20 20:53:45', NULL);
INSERT INTO `t_blog_file` VALUES (256, 'https://junlty.top/photo/6fe1be2688b3eee7082a77f735a0c8e8.jpg', '6fe1be2688b3eee7082a77f735a0c8e8', 204022, 'jpg', '/photo', 0, '2024-06-20 20:53:45', NULL);
INSERT INTO `t_blog_file` VALUES (257, 'https://junlty.top/photo/8c85b60aa2d679ca676c677ff04a2422.jpg', '8c85b60aa2d679ca676c677ff04a2422', 202304, 'jpg', '/photo', 0, '2024-06-20 20:53:46', NULL);
INSERT INTO `t_blog_file` VALUES (258, 'https://junlty.top/photo/b6979d2f3dd2691b7f900413b223e0c9.jpg', 'b6979d2f3dd2691b7f900413b223e0c9', 197204, 'jpg', '/photo', 0, '2024-06-20 20:53:47', NULL);
INSERT INTO `t_blog_file` VALUES (259, 'https://junlty.top/photo/112e639459c953f975ae43f7083ae6fb.jpg', '112e639459c953f975ae43f7083ae6fb', 213434, 'jpg', '/photo', 0, '2024-06-20 20:53:48', NULL);
INSERT INTO `t_blog_file` VALUES (260, 'https://junlty.top/photo/07ba9a08719db916199981501bf16d16.jpg', '07ba9a08719db916199981501bf16d16', 209886, 'jpg', '/photo', 0, '2024-06-20 20:53:49', NULL);
INSERT INTO `t_blog_file` VALUES (261, 'https://junlty.top/photo/7f898bd0a4ab5e188333ca15aa31776a.jpg', '7f898bd0a4ab5e188333ca15aa31776a', 207847, 'jpg', '/photo', 0, '2024-06-20 20:53:50', NULL);
INSERT INTO `t_blog_file` VALUES (262, 'https://junlty.top/photo/e97a8be43dbcd86f36a0fb6a3016ef2d.jpg', 'e97a8be43dbcd86f36a0fb6a3016ef2d', 206775, 'jpg', '/photo', 0, '2024-06-20 20:53:51', NULL);
INSERT INTO `t_blog_file` VALUES (263, 'https://junlty.top/photo/237cf0ca646f3a2da8afbe7be0b27aef.jpg', '237cf0ca646f3a2da8afbe7be0b27aef', 209511, 'jpg', '/photo', 0, '2024-06-20 20:53:51', NULL);
INSERT INTO `t_blog_file` VALUES (264, 'https://junlty.top/photo/560c26d5b53001363a8cd3ccfdb2ee0a.jpg', '560c26d5b53001363a8cd3ccfdb2ee0a', 196182, 'jpg', '/photo', 0, '2024-06-20 20:53:52', NULL);
INSERT INTO `t_blog_file` VALUES (265, 'https://junlty.top/photo/e73df313bd7949eb5852d5d8370a14a7.jpg', 'e73df313bd7949eb5852d5d8370a14a7', 206895, 'jpg', '/photo', 0, '2024-06-20 20:53:53', NULL);
INSERT INTO `t_blog_file` VALUES (266, 'https://junlty.top/photo/16e4e3235861458913f2b554f3a02a1c.jpg', '16e4e3235861458913f2b554f3a02a1c', 214855, 'jpg', '/photo', 0, '2024-06-20 20:53:54', NULL);
INSERT INTO `t_blog_file` VALUES (267, 'https://junlty.top/photo/de9316dfbb7b95b60e4dfcf934fece3a.jpg', 'de9316dfbb7b95b60e4dfcf934fece3a', 200451, 'jpg', '/photo', 0, '2024-06-20 20:53:56', NULL);
INSERT INTO `t_blog_file` VALUES (268, 'https://junlty.top/photo/0eda1201bae6b3c934a24b3dd7c54078.jpg', '0eda1201bae6b3c934a24b3dd7c54078', 196164, 'jpg', '/photo', 0, '2024-06-20 20:53:57', NULL);
INSERT INTO `t_blog_file` VALUES (269, 'https://junlty.top/photo/ecbfb1d41d61615a297e535da3710379.jpg', 'ecbfb1d41d61615a297e535da3710379', 212078, 'jpg', '/photo', 0, '2024-06-20 20:53:58', NULL);
INSERT INTO `t_blog_file` VALUES (270, 'https://junlty.top/photo/08ddd0069c5a7cd382e652649e494f0b.jpg', '08ddd0069c5a7cd382e652649e494f0b', 203570, 'jpg', '/photo', 0, '2024-06-20 20:53:59', NULL);
INSERT INTO `t_blog_file` VALUES (271, 'https://junlty.top/photo/a8328bb3f4c7b2bc9680394aa9bdc197.jpg', 'a8328bb3f4c7b2bc9680394aa9bdc197', 213297, 'jpg', '/photo', 0, '2024-06-20 20:54:00', NULL);
INSERT INTO `t_blog_file` VALUES (272, 'https://junlty.top/photo/fda6a1183ace83a3e74628b0d9c5bfd3.jpg', 'fda6a1183ace83a3e74628b0d9c5bfd3', 193419, 'jpg', '/photo', 0, '2024-06-20 20:54:02', NULL);
INSERT INTO `t_blog_file` VALUES (275, 'https://junlty.top/photo/1e4f249ab2ce4644bb85527fef351d0a.jpg', '1e4f249ab2ce4644bb85527fef351d0a', 200292, 'jpg', '/photo', 0, '2024-06-20 20:54:05', NULL);
INSERT INTO `t_blog_file` VALUES (276, 'https://junlty.top/photo/4289d4ae51b096950306fbc59452a993.jpg', '4289d4ae51b096950306fbc59452a993', 188426, 'jpg', '/photo', 0, '2024-06-20 20:54:07', NULL);
INSERT INTO `t_blog_file` VALUES (278, 'https://junlty.top/article/217fee0fc89a743b7daed534ae46b692.png', '217fee0fc89a743b7daed534ae46b692', 3812, 'png', '/article', 0, '2024-06-20 21:19:03', NULL);
INSERT INTO `t_blog_file` VALUES (279, 'https://junlty.top/article/5af7a097ff5633ae55f674b8945bd138.png', '5af7a097ff5633ae55f674b8945bd138', 1021212, 'png', '/article', 0, '2024-06-20 21:19:34', NULL);
INSERT INTO `t_blog_file` VALUES (280, 'https://junlty.top/article/68f3d1cb9385f1e850067e17692fe03a.png', '68f3d1cb9385f1e850067e17692fe03a', 738108, 'png', '/article', 0, '2024-06-20 21:20:30', NULL);
INSERT INTO `t_blog_file` VALUES (281, 'https://junlty.top/article/21d300a2e88d649222fab2e80071d866.png', '21d300a2e88d649222fab2e80071d866', 911340, 'png', '/article', 0, '2024-06-20 21:21:22', NULL);
INSERT INTO `t_blog_file` VALUES (282, 'https://junlty.top/article/893b5473e16c84dee01d14a58c0e74d6.png', '893b5473e16c84dee01d14a58c0e74d6', 14400, 'png', '/article', 0, '2024-06-20 21:23:31', NULL);
INSERT INTO `t_blog_file` VALUES (283, 'https://junlty.top/article/48f4a6e631d4e06da5b50cf821d665ca.png', '48f4a6e631d4e06da5b50cf821d665ca', 11196, 'png', '/article', 0, '2024-06-20 21:23:55', NULL);
INSERT INTO `t_blog_file` VALUES (284, 'https://junlty.top/article/94f404e799add8f42e43c83d1ac4c51d.png', '94f404e799add8f42e43c83d1ac4c51d', 965888, 'png', '/article', 0, '2024-06-20 21:24:11', NULL);
INSERT INTO `t_blog_file` VALUES (285, 'https://junlty.top/article/4bd10e752a58837b6dd4b0a7d05b4bea.png', '4bd10e752a58837b6dd4b0a7d05b4bea', 1016049, 'png', '/article', 0, '2024-06-20 21:24:49', NULL);
INSERT INTO `t_blog_file` VALUES (286, 'https://junlty.top/article/e904ea2c5575ac0f04414e2728244e3f.png', 'e904ea2c5575ac0f04414e2728244e3f', 450428, 'png', '/article', 0, '2024-06-20 21:47:47', NULL);
INSERT INTO `t_blog_file` VALUES (287, 'https://junlty.top/article/3ce4f23b27efdcdda679c8af8705f77a.png', '3ce4f23b27efdcdda679c8af8705f77a', 387263, 'png', '/article', 0, '2024-06-20 21:48:03', NULL);
INSERT INTO `t_blog_file` VALUES (288, 'https://junlty.top/article/47aae062ac2152ad04231b4284c839e7.png', '47aae062ac2152ad04231b4284c839e7', 396766, 'png', '/article', 0, '2024-06-20 21:48:17', NULL);
INSERT INTO `t_blog_file` VALUES (289, 'https://junlty.top/article/7472b0393bb5803cf094a8377836e9e9.png', '7472b0393bb5803cf094a8377836e9e9', 450783, 'png', '/article', 0, '2024-06-20 21:49:04', NULL);
INSERT INTO `t_blog_file` VALUES (290, 'https://junlty.top/article/1e35332760e01964bae3f067aa73b71b.jpg', '1e35332760e01964bae3f067aa73b71b', 212791, 'jpg', '/article', 0, '2024-06-20 21:50:56', NULL);
INSERT INTO `t_blog_file` VALUES (293, 'https://junlty.top/article/355a5d54f802102495403085258c100f.png', '355a5d54f802102495403085258c100f', 70914, 'png', '/article', 0, '2024-06-23 18:07:16', NULL);
INSERT INTO `t_blog_file` VALUES (294, 'https://junlty.top/article/db831388f042a8d3fe2662af29815314.png', 'db831388f042a8d3fe2662af29815314', 73059, 'png', '/article', 0, '2024-06-23 18:07:45', NULL);
INSERT INTO `t_blog_file` VALUES (295, 'https://junlty.top/article/cf79d0f908aef10b18873f7ad00a4009.png', 'cf79d0f908aef10b18873f7ad00a4009', 53998, 'png', '/article', 0, '2024-06-23 18:08:06', NULL);
INSERT INTO `t_blog_file` VALUES (296, 'https://junlty.top/article/3480e5b3f7a1f672a341ec8f44ab57e0.png', '3480e5b3f7a1f672a341ec8f44ab57e0', 73298, 'png', '/article', 0, '2024-06-23 18:10:21', NULL);
INSERT INTO `t_blog_file` VALUES (297, 'https://junlty.top/article/867a5de14df54b65fae190e89a8ed1c2.png', '867a5de14df54b65fae190e89a8ed1c2', 186584, 'png', '/article', 0, '2024-06-23 18:16:40', NULL);
INSERT INTO `t_blog_file` VALUES (298, 'https://junlty.top/article/beaf50ca7a0884292ef87f9f65ea8a5a.png', 'beaf50ca7a0884292ef87f9f65ea8a5a', 329640, 'png', '/article', 0, '2024-06-23 18:16:54', NULL);
INSERT INTO `t_blog_file` VALUES (299, 'https://junlty.top/article/d37c2fe71c430ef26139f6f18ae52930.png', 'd37c2fe71c430ef26139f6f18ae52930', 467617, 'png', '/article', 0, '2024-06-23 18:17:11', NULL);
INSERT INTO `t_blog_file` VALUES (300, 'https://junlty.top/article/a48c1c0a764f4b07de2ee8d8ca5c994b.png', 'a48c1c0a764f4b07de2ee8d8ca5c994b', 417576, 'png', '/article', 0, '2024-06-23 18:20:52', NULL);
INSERT INTO `t_blog_file` VALUES (301, 'https://junlty.top/article/1042bbf1a881c13ee838559ec6971570.png', '1042bbf1a881c13ee838559ec6971570', 605029, 'png', '/article', 0, '2024-06-23 18:21:08', NULL);
INSERT INTO `t_blog_file` VALUES (302, 'https://junlty.top/article/78b35d6a80b327496f5397209e55fb74.png', '78b35d6a80b327496f5397209e55fb74', 466389, 'png', '/article', 0, '2024-06-23 18:21:27', NULL);
INSERT INTO `t_blog_file` VALUES (303, 'https://junlty.top/article/d0ccb3a543fe13ab56eb1ae6330426dd.jpg', 'd0ccb3a543fe13ab56eb1ae6330426dd', 288589, 'jpg', '/article', 0, '2024-06-23 18:27:19', NULL);
INSERT INTO `t_blog_file` VALUES (304, 'https://junlty.top/article/a0d17664ee136628d94f5b99c4e28db0.jpg', 'a0d17664ee136628d94f5b99c4e28db0', 215795, 'jpg', '/article', 0, '2024-06-23 18:28:21', NULL);
INSERT INTO `t_blog_file` VALUES (305, 'https://junlty.top/article/3ac85de7431cf450c9bfdb1025683058.jpg', '3ac85de7431cf450c9bfdb1025683058', 197708, 'jpg', '/article', 0, '2024-06-23 18:32:33', NULL);
INSERT INTO `t_blog_file` VALUES (306, 'https://junlty.top/article/9e1adeadf249f44d1b30edc8787facd0.jpg', '9e1adeadf249f44d1b30edc8787facd0', 195082, 'jpg', '/article', 0, '2024-06-23 18:34:20', NULL);
INSERT INTO `t_blog_file` VALUES (307, 'https://junlty.top/article/528d79a02de1cffcb77bafe587aa2d09.jpg', '528d79a02de1cffcb77bafe587aa2d09', 201149, 'jpg', '/article', 0, '2024-06-23 18:37:09', NULL);
INSERT INTO `t_blog_file` VALUES (308, 'https://junlty.top/article/704936388b13bcc43f288bfe9c4c633d.jpg', '704936388b13bcc43f288bfe9c4c633d', 197160, 'jpg', '/article', 0, '2024-06-23 18:37:53', NULL);
INSERT INTO `t_blog_file` VALUES (309, 'https://junlty.top/article/bedbb01bed8636b42ce1a4adc0ba76c4.jpg', 'bedbb01bed8636b42ce1a4adc0ba76c4', 211322, 'jpg', '/article', 0, '2024-06-23 18:43:30', NULL);
INSERT INTO `t_blog_file` VALUES (310, 'https://junlty.top/article/4a5f70284d82a27f1172f2d6df6df7b3.jpg', '4a5f70284d82a27f1172f2d6df6df7b3', 200193, 'jpg', '/article', 0, '2024-06-23 18:45:22', NULL);
INSERT INTO `t_blog_file` VALUES (311, 'https://junlty.top/article/1f7ce70ec0d5a282773ea5a7d6616ad4.jpg', '1f7ce70ec0d5a282773ea5a7d6616ad4', 203707, 'jpg', '/article', 0, '2024-06-23 18:47:03', NULL);
INSERT INTO `t_blog_file` VALUES (312, 'https://junlty.top/article/7ec30d03bbd8f0b87e64a780af315846.png', '7ec30d03bbd8f0b87e64a780af315846', 446877, 'png', '/article', 0, '2024-06-23 18:56:35', NULL);
INSERT INTO `t_blog_file` VALUES (313, 'https://junlty.top/article/509200b3a0a453c487b9ab7ad6d317f5.png', '509200b3a0a453c487b9ab7ad6d317f5', 518803, 'png', '/article', 0, '2024-06-23 18:56:49', NULL);
INSERT INTO `t_blog_file` VALUES (314, 'https://junlty.top/article/cbe02cab8a78e7dc751d578335e591c9.png', 'cbe02cab8a78e7dc751d578335e591c9', 415323, 'png', '/article', 0, '2024-06-23 19:01:27', NULL);
INSERT INTO `t_blog_file` VALUES (315, 'https://junlty.top/article/c1c5c9390186a4e6b2bded61c79fd5d3.png', 'c1c5c9390186a4e6b2bded61c79fd5d3', 43419, 'png', '/article', 0, '2024-06-23 19:04:01', NULL);
INSERT INTO `t_blog_file` VALUES (316, 'https://junlty.top/photo/bedbb01bed8636b42ce1a4adc0ba76c4.jpg', 'bedbb01bed8636b42ce1a4adc0ba76c4', 211322, 'jpg', '/photo', 0, '2024-06-24 00:22:11', NULL);
INSERT INTO `t_blog_file` VALUES (318, 'https://junlty.top/photo/bab2c444554ab57e486b140091b6bd28.jpg', 'bab2c444554ab57e486b140091b6bd28', 206905, 'jpg', '/photo', 0, '2024-06-24 00:28:15', NULL);
INSERT INTO `t_blog_file` VALUES (319, 'https://junlty.top/photo/84902e0810e3e6cc577270aab01e06bd.jpg', '84902e0810e3e6cc577270aab01e06bd', 200180, 'jpg', '/photo', 0, '2024-06-24 00:32:45', NULL);
INSERT INTO `t_blog_file` VALUES (320, 'https://junlty.top/photo/709fcdcf564426c41fedf597be79021d.jpg', '709fcdcf564426c41fedf597be79021d', 203120, 'jpg', '/photo', 0, '2024-06-24 00:34:02', NULL);
INSERT INTO `t_blog_file` VALUES (321, 'https://junlty.top/photo/4ccf714c9613d3ffd8ac5c4078e324ff.jpg', '4ccf714c9613d3ffd8ac5c4078e324ff', 217103, 'jpg', '/photo', 0, '2024-06-24 00:35:49', NULL);
INSERT INTO `t_blog_file` VALUES (324, 'https://junlty.top/photo/d0095bf8d7d87374461cb9d565e21af0.jpg', 'd0095bf8d7d87374461cb9d565e21af0', 202330, 'jpg', '/photo', 0, '2024-06-24 00:50:29', NULL);
INSERT INTO `t_blog_file` VALUES (325, 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', 'e8ff32088199b1524da8135a1d2e36e3', 153325, 'jpg', '/config', 0, '2024-06-24 01:06:52', NULL);
INSERT INTO `t_blog_file` VALUES (326, 'https://junlty.top/photo/51939ae397cdbf71a1108fe2886b350b.jpg', '51939ae397cdbf71a1108fe2886b350b', 182895, 'jpg', '/photo', 0, '2024-06-24 01:10:18', NULL);
INSERT INTO `t_blog_file` VALUES (327, 'https://junlty.top/photo/8140ce1995ba0be9719a9be7c2570613.jpg', '8140ce1995ba0be9719a9be7c2570613', 90959, 'jpg', '/photo', 0, '2024-06-24 01:14:17', NULL);
INSERT INTO `t_blog_file` VALUES (328, 'https://junlty.top/photo/d3fc4af8a8e89018925f9c72a942cea7.jpg', 'd3fc4af8a8e89018925f9c72a942cea7', 203593, 'jpg', '/photo', 0, '2024-06-25 11:58:59', NULL);
INSERT INTO `t_blog_file` VALUES (329, 'https://junlty.top/photo/868192a0205153cfe795737f4e9b2e74.png', '868192a0205153cfe795737f4e9b2e74', 174374, 'png', '/photo', 0, '2024-06-25 14:31:42', NULL);
INSERT INTO `t_blog_file` VALUES (330, 'https://junlty.top/photo/56ccc60c71689b652ae45afa6b268d98.jpg', '56ccc60c71689b652ae45afa6b268d98', 6713012, 'jpg', '/photo', 0, '2024-06-25 16:32:35', NULL);
INSERT INTO `t_blog_file` VALUES (331, 'https://junlty.top/photo/d4c1167850a60adca385ab8cc0cc0202.jpg', 'd4c1167850a60adca385ab8cc0cc0202', 197204, 'jpg', '/photo', 0, '2024-06-25 19:32:51', NULL);
INSERT INTO `t_blog_file` VALUES (332, 'https://junlty.top/photo/5fa9e77273ac06125f662a6fe0121082.jpg', '5fa9e77273ac06125f662a6fe0121082', 213375, 'jpg', '/photo', 0, '2024-06-25 19:32:52', NULL);
INSERT INTO `t_blog_file` VALUES (333, 'https://junlty.top/photo/5483ce8ca593ec8945d6bcac3c9e0c0c.jpg', '5483ce8ca593ec8945d6bcac3c9e0c0c', 196426, 'jpg', '/photo', 0, '2024-06-25 19:33:37', NULL);
INSERT INTO `t_blog_file` VALUES (334, 'https://junlty.top/photo/8612fe309ef5e30823cb5412cb6a42c0.jpg', '8612fe309ef5e30823cb5412cb6a42c0', 213308, 'jpg', '/photo', 0, '2024-06-25 19:33:39', NULL);
INSERT INTO `t_blog_file` VALUES (335, 'https://junlty.top/photo/617e1d65e7731c8475f54f037bc86bd0.jpg', '617e1d65e7731c8475f54f037bc86bd0', 213093, 'jpg', '/photo', 0, '2024-06-25 19:33:40', NULL);
INSERT INTO `t_blog_file` VALUES (336, 'https://junlty.top/photo/9861c8d29d76ad6b4259ecd79644231b.jpg', '9861c8d29d76ad6b4259ecd79644231b', 209813, 'jpg', '/photo', 0, '2024-06-25 19:35:27', NULL);
INSERT INTO `t_blog_file` VALUES (337, 'https://junlty.top/photo/c6d6083e78fca482252486eec9b10554.jpg', 'c6d6083e78fca482252486eec9b10554', 206698, 'jpg', '/photo', 0, '2024-06-25 19:35:28', NULL);
INSERT INTO `t_blog_file` VALUES (338, 'https://junlty.top/photo/913953d52096f50c3068c38b5927c7c9.jpg', '913953d52096f50c3068c38b5927c7c9', 207862, 'jpg', '/photo', 0, '2024-06-25 19:35:29', NULL);
INSERT INTO `t_blog_file` VALUES (339, 'https://junlty.top/photo/e21e5cd8d3cb24249aba41e298f18005.jpg', 'e21e5cd8d3cb24249aba41e298f18005', 209438, 'jpg', '/photo', 0, '2024-06-25 19:35:29', NULL);
INSERT INTO `t_blog_file` VALUES (340, 'https://junlty.top/photo/06e813d0afba2af46d7f82d07747a542.jpg', '06e813d0afba2af46d7f82d07747a542', 196194, 'jpg', '/photo', 0, '2024-06-25 19:35:30', NULL);
INSERT INTO `t_blog_file` VALUES (341, 'https://junlty.top/photo/b3228b8791cf2b6b9c8fd9c2e194c155.jpg', 'b3228b8791cf2b6b9c8fd9c2e194c155', 206975, 'jpg', '/photo', 0, '2024-06-25 19:35:30', NULL);
INSERT INTO `t_blog_file` VALUES (342, 'https://junlty.top/photo/29c2e56b1c2e9342a258fb31d5a25488.jpg', '29c2e56b1c2e9342a258fb31d5a25488', 214844, 'jpg', '/photo', 0, '2024-06-25 19:35:31', NULL);
INSERT INTO `t_blog_file` VALUES (344, 'https://junlty.top/photo/01833cbec55df72335bf98787bdf2461.jpg', '01833cbec55df72335bf98787bdf2461', 196157, 'jpg', '/photo', 0, '2024-06-25 19:35:34', NULL);
INSERT INTO `t_blog_file` VALUES (345, 'https://junlty.top/photo/a84919fb94491499451d3400ef6a9e5b.jpg', 'a84919fb94491499451d3400ef6a9e5b', 212091, 'jpg', '/photo', 0, '2024-06-25 19:35:36', NULL);
INSERT INTO `t_blog_file` VALUES (346, 'https://junlty.top/photo/4f8f0271915ee8c33cb6ce452124d691.jpg', '4f8f0271915ee8c33cb6ce452124d691', 193465, 'jpg', '/photo', 0, '2024-06-25 19:35:37', NULL);
INSERT INTO `t_blog_file` VALUES (347, 'https://junlty.top/photo/213277659c7a5414845e0b1ebff8bfd6.jpg', '213277659c7a5414845e0b1ebff8bfd6', 206837, 'jpg', '/photo', 0, '2024-06-25 19:35:38', NULL);
INSERT INTO `t_blog_file` VALUES (348, 'https://junlty.top/photo/7b3e6eddb11c6adccfc189a4ce57b4b2.jpg', '7b3e6eddb11c6adccfc189a4ce57b4b2', 200316, 'jpg', '/photo', 0, '2024-06-25 19:35:40', NULL);
INSERT INTO `t_blog_file` VALUES (349, 'https://junlty.top/photo/b4b7d6bec431eff6e2715a7122e68a23.jpg', 'b4b7d6bec431eff6e2715a7122e68a23', 188437, 'jpg', '/photo', 0, '2024-06-25 19:35:42', NULL);
INSERT INTO `t_blog_file` VALUES (350, 'https://junlty.top/photo/47a65aaae836c9aca1d9ba181671652a.jpg', '47a65aaae836c9aca1d9ba181671652a', 213962, 'jpg', '/photo', 0, '2024-06-25 19:35:43', NULL);
INSERT INTO `t_blog_file` VALUES (351, 'https://junlty.top/photo/24b935fdea8b0fa9789017c82dfd5a4f.jpg', '24b935fdea8b0fa9789017c82dfd5a4f', 585044, 'jpg', '/photo', 0, '2024-06-25 19:45:54', NULL);
INSERT INTO `t_blog_file` VALUES (352, 'https://junlty.top/photo/daf43c1c6bef8d981b38f37c42a92e9d.jpg', 'daf43c1c6bef8d981b38f37c42a92e9d', 712368, 'jpg', '/photo', 0, '2024-06-25 19:45:58', NULL);
INSERT INTO `t_blog_file` VALUES (353, 'https://junlty.top/photo/d597cf6eae973f3d2057c52ec0b363b7.jpg', 'd597cf6eae973f3d2057c52ec0b363b7', 1759431, 'jpg', '/photo', 0, '2024-06-25 19:46:13', NULL);
INSERT INTO `t_blog_file` VALUES (354, 'https://junlty.top/photo/05f4bf3d14a10c4108cc6eb70148558a.jpg', '05f4bf3d14a10c4108cc6eb70148558a', 4377351, 'jpg', '/photo', 0, '2024-06-25 19:46:51', NULL);
INSERT INTO `t_blog_file` VALUES (355, 'https://junlty.top/photo/f1a4b740879049be1aa7ff0a36d23ff0.jpg', 'f1a4b740879049be1aa7ff0a36d23ff0', 9175121, 'jpg', '/photo', 0, '2024-06-25 19:47:09', NULL);
INSERT INTO `t_blog_file` VALUES (356, 'https://junlty.top/photo/fb9a187220cdd284ae1ba3fb49010bc0.jpg', 'fb9a187220cdd284ae1ba3fb49010bc0', 7886072, 'jpg', '/photo', 0, '2024-06-25 19:47:15', NULL);
INSERT INTO `t_blog_file` VALUES (357, 'https://junlty.top/photo/5b56b4be7822a218f6ef6bf478e40459.jpg', '5b56b4be7822a218f6ef6bf478e40459', 1681838, 'jpg', '/photo', 0, '2024-06-25 19:48:36', NULL);
INSERT INTO `t_blog_file` VALUES (358, 'https://junlty.top/photo/4a86b11b0531c935e2fcbbec2f410e91.jpg', '4a86b11b0531c935e2fcbbec2f410e91', 3620968, 'jpg', '/photo', 0, '2024-06-25 19:49:19', NULL);
INSERT INTO `t_blog_file` VALUES (359, 'https://junlty.top/photo/f2abc7d115dc3aa3b9b63acb94f75d30.jpg', 'f2abc7d115dc3aa3b9b63acb94f75d30', 4404740, 'jpg', '/photo', 0, '2024-06-25 19:49:35', NULL);
INSERT INTO `t_blog_file` VALUES (360, 'https://junlty.top/photo/fe71bb435d481d9d054d9d5c89903f64.jpg', 'fe71bb435d481d9d054d9d5c89903f64', 5910948, 'jpg', '/photo', 0, '2024-06-25 19:50:15', NULL);
INSERT INTO `t_blog_file` VALUES (361, 'https://junlty.top/photo/f92de995c390b659e7236904903e884b.jpg', 'f92de995c390b659e7236904903e884b', 7541502, 'jpg', '/photo', 0, '2024-06-25 19:50:44', NULL);
INSERT INTO `t_blog_file` VALUES (362, 'https://junlty.top/photo/371f7621b1ce896a58c85e3aa08d3ecf.jpg', '371f7621b1ce896a58c85e3aa08d3ecf', 9676120, 'jpg', '/photo', 0, '2024-06-25 19:50:45', NULL);
INSERT INTO `t_blog_file` VALUES (363, 'https://junlty.top/photo/afce70cfe3c688e9bfc2fbbdf3273f74.jpg', 'afce70cfe3c688e9bfc2fbbdf3273f74', 6973304, 'jpg', '/photo', 0, '2024-06-25 19:50:45', NULL);
INSERT INTO `t_blog_file` VALUES (364, 'https://junlty.top/photo/fd4bfcd35105e65ec8db1f8724962446.jpg', 'fd4bfcd35105e65ec8db1f8724962446', 2677774, 'jpg', '/photo', 0, '2024-06-25 19:55:05', NULL);
INSERT INTO `t_blog_file` VALUES (365, 'https://junlty.top/photo/02b3b441a59676bb523372ff62b977ab.jpg', '02b3b441a59676bb523372ff62b977ab', 3050980, 'jpg', '/photo', 0, '2024-06-25 19:55:32', NULL);
INSERT INTO `t_blog_file` VALUES (366, 'https://junlty.top/photo/b31ce85bce51c2779c6b323aa0e01503.jpg', 'b31ce85bce51c2779c6b323aa0e01503', 3621997, 'jpg', '/photo', 0, '2024-06-25 19:55:42', NULL);
INSERT INTO `t_blog_file` VALUES (367, 'https://junlty.top/photo/94b02084ce13439a74d473a98f5d7e99.jpg', '94b02084ce13439a74d473a98f5d7e99', 2957068, 'jpg', '/photo', 0, '2024-06-25 19:56:05', NULL);
INSERT INTO `t_blog_file` VALUES (368, 'https://junlty.top/photo/b8fceb92e262d8b18cab61974094bb7e.jpg', 'b8fceb92e262d8b18cab61974094bb7e', 5016514, 'jpg', '/photo', 0, '2024-06-25 19:56:06', NULL);
INSERT INTO `t_blog_file` VALUES (369, 'https://junlty.top/photo/15385c427df94c36d26fe77826b5eb21.jpg', '15385c427df94c36d26fe77826b5eb21', 3303220, 'jpg', '/photo', 0, '2024-06-25 19:56:35', NULL);
INSERT INTO `t_blog_file` VALUES (370, 'https://junlty.top/photo/adeb66b083abd8351eb34d01e94c0470.jpg', 'adeb66b083abd8351eb34d01e94c0470', 8448523, 'jpg', '/photo', 0, '2024-06-25 19:56:49', NULL);
INSERT INTO `t_blog_file` VALUES (371, 'https://junlty.top/photo/7406d555b18c40ba4a1372a911feb6a3.jpg', '7406d555b18c40ba4a1372a911feb6a3', 5417438, 'jpg', '/photo', 0, '2024-06-25 19:56:49', NULL);
INSERT INTO `t_blog_file` VALUES (372, 'https://junlty.top/photo/fa11d61530a56715c15384373f4c1199.jpg', 'fa11d61530a56715c15384373f4c1199', 9993879, 'jpg', '/photo', 0, '2024-06-25 19:57:12', NULL);
INSERT INTO `t_blog_file` VALUES (376, 'https://junlty.top/photo/05e165c224622b40bc4c0b53f1b5d09b.jpg', '05e165c224622b40bc4c0b53f1b5d09b', 201062, 'jpg', '/photo', 0, '2024-06-25 21:41:55', NULL);
INSERT INTO `t_blog_file` VALUES (378, 'https://junlty.top/talk/d754affb162ed0421962d1569ee33b08.jpeg', 'd754affb162ed0421962d1569ee33b08', 161641, 'jpeg', '/talk', 0, '2024-06-26 00:52:02', NULL);
INSERT INTO `t_blog_file` VALUES (379, 'https://junlty.top/article/8c3dd8221c83d73db26280858bb0408a.jpeg', '8c3dd8221c83d73db26280858bb0408a', 215511, 'jpeg', '/article', 0, '2024-06-26 00:54:44', NULL);
INSERT INTO `t_blog_file` VALUES (380, 'https://junlty.top/photo/662cf72ebc79d4b6b5b454f8ff5ba8ed.png', '662cf72ebc79d4b6b5b454f8ff5ba8ed', 39770, 'png', '/photo', 0, '2024-06-26 02:49:32', NULL);
INSERT INTO `t_blog_file` VALUES (381, 'https://junlty.top/talk/5fa9e77273ac06125f662a6fe0121082.jpg', '5fa9e77273ac06125f662a6fe0121082', 213375, 'jpg', '/talk', 0, '2024-06-26 16:25:38', NULL);
INSERT INTO `t_blog_file` VALUES (382, 'https://junlty.top/photo/712edcb3c3a05aa93aa0e83f49d8e8aa.jpg', '712edcb3c3a05aa93aa0e83f49d8e8aa', 45845, 'jpg', '/photo', 0, '2024-06-26 16:26:54', NULL);
INSERT INTO `t_blog_file` VALUES (387, 'https://junlty.top//photo/3d6124d857a79ce96ccc165aafacc0d3.png', '3d6124d857a79ce96ccc165aafacc0d3', 17021, 'png', '/photo', 0, '2024-06-26 16:35:57', NULL);
INSERT INTO `t_blog_file` VALUES (393, 'https://junlty.top/photo/6995383b37b2d3b859ae480e698b8f1b.png', '6995383b37b2d3b859ae480e698b8f1b', 53738, 'png', '/photo', 0, '2024-06-26 16:53:45', NULL);
INSERT INTO `t_blog_file` VALUES (396, 'https://junlty.top/article/75e91e7525c9f1cc9ad6421c678aa258.jpg', '75e91e7525c9f1cc9ad6421c678aa258', 201837, 'jpg', '/article', 0, '2024-06-26 17:17:38', NULL);
INSERT INTO `t_blog_file` VALUES (397, 'https://junlty.top/article/17dc1702dd6a1a77735609551d1a1d01.jpg', '17dc1702dd6a1a77735609551d1a1d01', 1293422, 'jpg', '/article', 0, '2024-06-26 17:27:28', NULL);
INSERT INTO `t_blog_file` VALUES (398, 'https://junlty.top/talk/05e165c224622b40bc4c0b53f1b5d09b.jpg', '05e165c224622b40bc4c0b53f1b5d09b', 201062, 'jpg', '/talk', 0, '2024-06-28 10:16:05', NULL);
INSERT INTO `t_blog_file` VALUES (399, 'https://junlty.top/article/f5bc1c7b572d78c754fc3063e2c6f4c6.png', 'f5bc1c7b572d78c754fc3063e2c6f4c6', 303728, 'png', '/article', 0, '2024-06-28 20:52:01', NULL);
INSERT INTO `t_blog_file` VALUES (400, 'https://junlty.top/article/f5a6cf131fc04d5a1cadacb7445c59f7.png', 'f5a6cf131fc04d5a1cadacb7445c59f7', 343083, 'png', '/article', 0, '2024-06-28 20:52:15', NULL);
INSERT INTO `t_blog_file` VALUES (401, 'https://junlty.top/article/cced762e2b6cc15a4a072d5ed979b5b0.png', 'cced762e2b6cc15a4a072d5ed979b5b0', 492520, 'png', '/article', 0, '2024-06-28 20:52:28', NULL);
INSERT INTO `t_blog_file` VALUES (402, 'https://junlty.top/article/ff51b28dca7daa75565af588ee146204.png', 'ff51b28dca7daa75565af588ee146204', 489191, 'png', '/article', 0, '2024-06-28 20:52:43', NULL);
INSERT INTO `t_blog_file` VALUES (403, 'https://junlty.top/article/e44471b425f7b4434398d8bef1e9a95f.png', 'e44471b425f7b4434398d8bef1e9a95f', 321135, 'png', '/article', 0, '2024-06-28 20:52:53', NULL);
INSERT INTO `t_blog_file` VALUES (404, 'https://junlty.top/article/29dbda4ca691bfd497cd26e89c0be5c8.png', '29dbda4ca691bfd497cd26e89c0be5c8', 342941, 'png', '/article', 0, '2024-06-28 20:53:06', NULL);
INSERT INTO `t_blog_file` VALUES (405, 'https://junlty.top/article/422dd4244004bd2ccc3c25f1cdd9525c.png', '422dd4244004bd2ccc3c25f1cdd9525c', 440769, 'png', '/article', 0, '2024-06-28 20:53:19', NULL);
INSERT INTO `t_blog_file` VALUES (406, 'https://junlty.top/photo/f49e7b8bcec84408b1b95f30ae84da82.jpeg', 'f49e7b8bcec84408b1b95f30ae84da82', 138506, 'jpeg', '/photo', 0, '2024-06-29 17:36:00', NULL);
INSERT INTO `t_blog_file` VALUES (407, 'https://junlty.top/config/6c6c2317050c2adfbd8f0fe2f41d2e59.jpg', '6c6c2317050c2adfbd8f0fe2f41d2e59', 864821, 'jpg', '/config', 0, '2024-07-03 16:25:08', NULL);
INSERT INTO `t_blog_file` VALUES (408, 'https://junlty.top/config/9eeabc93b8221bac0b69f3e0fb1721db.jpg', '9eeabc93b8221bac0b69f3e0fb1721db', 205387, 'jpg', '/config', 0, '2024-07-03 16:39:56', NULL);
INSERT INTO `t_blog_file` VALUES (409, 'https://junlty.top/config/0a5f585f1d5db3ba087c0f5795b25cb1.jpg', '0a5f585f1d5db3ba087c0f5795b25cb1', 125790, 'jpg', '/config', 0, '2024-07-03 16:42:37', NULL);
INSERT INTO `t_blog_file` VALUES (410, 'https://junlty.top/config/89e5a199b8fe0f22e76dc804ac6a61c0.jpg', '89e5a199b8fe0f22e76dc804ac6a61c0', 131050, 'jpg', '/config', 0, '2024-07-03 16:51:50', NULL);
INSERT INTO `t_blog_file` VALUES (411, 'https://junlty.top/config/ecf621faa68f30a682876c19cf910810.jpg', 'ecf621faa68f30a682876c19cf910810', 13994184, 'jpg', '/config', 0, '2024-07-03 16:53:41', NULL);
INSERT INTO `t_blog_file` VALUES (412, 'https://junlty.top/config/b2b466fa65bb01163fbe8fe5daf2298b.jpg', 'b2b466fa65bb01163fbe8fe5daf2298b', 618513, 'jpg', '/config', 0, '2024-07-04 11:06:47', NULL);
INSERT INTO `t_blog_file` VALUES (413, 'https://junlty.top/config/a621a9ff5d15937b01850fb0c70bb6f6.jpg', 'a621a9ff5d15937b01850fb0c70bb6f6', 838039, 'jpg', '/config', 0, '2024-07-04 18:12:52', NULL);
INSERT INTO `t_blog_file` VALUES (414, 'https://junlty.top/config/ef30f44e9d16a5988b1df68656c35171.jpg', 'ef30f44e9d16a5988b1df68656c35171', 592036, 'jpg', '/config', 0, '2024-07-04 18:15:08', NULL);
INSERT INTO `t_blog_file` VALUES (415, 'https://junlty.top/config/41086d0761868fcfc8559860338ef425.jpg', '41086d0761868fcfc8559860338ef425', 4464064, 'jpg', '/config', 0, '2024-07-04 18:18:45', NULL);
INSERT INTO `t_blog_file` VALUES (416, 'https://junlty.top/config/6b83374e643d4e2402cc4a8cddec3211.jpg', '6b83374e643d4e2402cc4a8cddec3211', 1511108, 'jpg', '/config', 0, '2024-07-04 18:19:55', NULL);
INSERT INTO `t_blog_file` VALUES (417, 'https://junlty.top/config/42866dae6f37c8dba35d0e524f5cb8e0.jpg', '42866dae6f37c8dba35d0e524f5cb8e0', 2164246, 'jpg', '/config', 0, '2024-07-04 18:21:49', NULL);
INSERT INTO `t_blog_file` VALUES (418, 'https://junlty.top/article/3b7f8d915e5cd4ef19d86a3d9eca2158.jpeg', '3b7f8d915e5cd4ef19d86a3d9eca2158', 190253, 'jpeg', '/article', 0, '2024-07-04 22:12:09', NULL);
INSERT INTO `t_blog_file` VALUES (419, 'https://junlty.top/article/ec8f104011198f0bbf673ba2107987b0.jpeg', 'ec8f104011198f0bbf673ba2107987b0', 303271, 'jpeg', '/article', 0, '2024-07-04 22:12:11', NULL);
INSERT INTO `t_blog_file` VALUES (420, 'https://junlty.top/article/7338e0255f266dfacba06e840baf4d82.jpeg', '7338e0255f266dfacba06e840baf4d82', 343091, 'jpeg', '/article', 0, '2024-07-04 22:12:12', NULL);
INSERT INTO `t_blog_file` VALUES (421, 'https://junlty.top/article/e28e9f32a2fc230318d847d548b514fc.jpeg', 'e28e9f32a2fc230318d847d548b514fc', 832191, 'jpeg', '/article', 0, '2024-07-04 22:12:16', NULL);
INSERT INTO `t_blog_file` VALUES (422, 'https://junlty.top/article/1a1c09dba03b66dda0fa672a6d6fbe58.jpeg', '1a1c09dba03b66dda0fa672a6d6fbe58', 401527, 'jpeg', '/article', 0, '2024-07-04 22:12:19', NULL);
INSERT INTO `t_blog_file` VALUES (423, 'https://junlty.top/article/9126dbd460caac536a066a589064dad7.jpeg', '9126dbd460caac536a066a589064dad7', 674058, 'jpeg', '/article', 0, '2024-07-04 22:12:20', NULL);
INSERT INTO `t_blog_file` VALUES (424, 'https://junlty.top/article/cc6fe1466a023e97b108e9e5624e7411.jpeg', 'cc6fe1466a023e97b108e9e5624e7411', 670089, 'jpeg', '/article', 0, '2024-07-04 22:12:20', NULL);
INSERT INTO `t_blog_file` VALUES (425, 'https://junlty.top/article/84dadbe43ac86b68bbb4712abcbe3dd7.jpeg', '84dadbe43ac86b68bbb4712abcbe3dd7', 331605, 'jpeg', '/article', 0, '2024-07-04 22:13:19', NULL);
INSERT INTO `t_blog_file` VALUES (426, 'https://junlty.top/article/b57e0df8ce8348922b135d28fd88f5c6.jpeg', 'b57e0df8ce8348922b135d28fd88f5c6', 747873, 'jpeg', '/article', 0, '2024-07-04 22:13:20', NULL);
INSERT INTO `t_blog_file` VALUES (427, 'https://junlty.top/article/537aa0bc81fc08d173c094ea88f65c8e.jpeg', '537aa0bc81fc08d173c094ea88f65c8e', 937608, 'jpeg', '/article', 0, '2024-07-04 22:13:22', NULL);
INSERT INTO `t_blog_file` VALUES (428, 'https://junlty.top/article/67ceaf18f904e14b7fb99eb446a4e800.jpeg', '67ceaf18f904e14b7fb99eb446a4e800', 518005, 'jpeg', '/article', 0, '2024-07-04 22:13:34', NULL);
INSERT INTO `t_blog_file` VALUES (429, 'https://junlty.top/article/e3f8585a9302223dd460944f940ff393.jpeg', 'e3f8585a9302223dd460944f940ff393', 563748, 'jpeg', '/article', 0, '2024-07-04 22:13:37', NULL);
INSERT INTO `t_blog_file` VALUES (430, 'https://junlty.top/article/2410bed0fcc0fcacad02e19645d8681b.png', '2410bed0fcc0fcacad02e19645d8681b', 5838539, 'png', '/article', 0, '2024-07-04 22:14:31', NULL);
INSERT INTO `t_blog_file` VALUES (431, 'https://junlty.top/photo/5497b1d0d7af485a5f1a159d1d2237fb.jpg', '5497b1d0d7af485a5f1a159d1d2237fb', 2315638, 'jpg', '/photo', 0, '2024-07-08 14:07:14', NULL);
INSERT INTO `t_blog_file` VALUES (432, 'https://junlty.top/photo/ee7146e69adf51cddcd5fc6d16a8f0a0.jpeg', 'ee7146e69adf51cddcd5fc6d16a8f0a0', 564618, 'jpeg', '/photo', 0, '2024-07-08 14:08:17', NULL);
INSERT INTO `t_blog_file` VALUES (433, 'https://junlty.top/photo/ee1cf69bf3017d162cebeff9cab428a8.jpeg', 'ee1cf69bf3017d162cebeff9cab428a8', 907346, 'jpeg', '/photo', 0, '2024-07-08 14:08:22', NULL);
INSERT INTO `t_blog_file` VALUES (434, 'https://junlty.top/photo/645f2fc511ff8702aeda9d1a20332054.jpeg', '645f2fc511ff8702aeda9d1a20332054', 962547, 'jpeg', '/photo', 0, '2024-07-08 14:08:23', NULL);
INSERT INTO `t_blog_file` VALUES (435, 'https://junlty.top/photo/24d31a6c23c001a0adf7afd88618e7e3.jpeg', '24d31a6c23c001a0adf7afd88618e7e3', 363980, 'jpeg', '/photo', 0, '2024-07-08 14:18:28', NULL);
INSERT INTO `t_blog_file` VALUES (436, 'https://junlty.top/photo/71305ae03cc31a2087d01911c8c89f32.jpeg', '71305ae03cc31a2087d01911c8c89f32', 452249, 'jpeg', '/photo', 0, '2024-07-08 14:18:29', NULL);
INSERT INTO `t_blog_file` VALUES (437, 'https://junlty.top/photo/1d56929020796e5c4b13c688572bce0b.jpeg', '1d56929020796e5c4b13c688572bce0b', 736223, 'jpeg', '/photo', 0, '2024-07-08 14:18:34', NULL);
INSERT INTO `t_blog_file` VALUES (438, 'https://junlty.top/photo/b73b0c130824ea39d6e16ea31bfeddbe.jpeg', 'b73b0c130824ea39d6e16ea31bfeddbe', 683487, 'jpeg', '/photo', 0, '2024-07-08 14:18:35', NULL);
INSERT INTO `t_blog_file` VALUES (439, 'https://junlty.top/photo/946d576604edaa89793c5b29978df5c5.jpeg', '946d576604edaa89793c5b29978df5c5', 3331008, 'jpeg', '/photo', 0, '2024-07-08 14:18:46', NULL);
INSERT INTO `t_blog_file` VALUES (440, 'https://junlty.top/photo/14c5c2ceed975c1edd33866b1cc5dbd2.jpeg', '14c5c2ceed975c1edd33866b1cc5dbd2', 955973, 'jpeg', '/photo', 0, '2024-07-08 14:20:31', NULL);
INSERT INTO `t_blog_file` VALUES (441, 'https://junlty.top/photo/478a2098276b1f4cf07a11f68fc63a03.jpeg', '478a2098276b1f4cf07a11f68fc63a03', 2372704, 'jpeg', '/photo', 0, '2024-07-08 14:20:46', NULL);
INSERT INTO `t_blog_file` VALUES (442, 'https://junlty.top/photo/e3317b2847e25fea3b592697a2a851ef.jpeg', 'e3317b2847e25fea3b592697a2a851ef', 3664487, 'jpeg', '/photo', 0, '2024-07-08 14:21:00', NULL);
INSERT INTO `t_blog_file` VALUES (443, 'https://junlty.top/photo/27fdc78109963158d0c5716a5f68d8e0.jpeg', '27fdc78109963158d0c5716a5f68d8e0', 2435787, 'jpeg', '/photo', 0, '2024-07-08 14:21:04', NULL);
INSERT INTO `t_blog_file` VALUES (444, 'https://junlty.top/photo/6214fd2dcc8b3b500c664f5f92f7763f.jpeg', '6214fd2dcc8b3b500c664f5f92f7763f', 4848626, 'jpeg', '/photo', 0, '2024-07-08 14:21:12', NULL);
INSERT INTO `t_blog_file` VALUES (445, 'https://junlty.top/photo/5716d732bab4b5a642856e71776b08b8.jpeg', '5716d732bab4b5a642856e71776b08b8', 1650557, 'jpeg', '/photo', 0, '2024-07-08 14:22:20', NULL);
INSERT INTO `t_blog_file` VALUES (446, 'https://junlty.top/photo/49d178bb7661237bc7992501732b03a3.jpeg', '49d178bb7661237bc7992501732b03a3', 1672053, 'jpeg', '/photo', 0, '2024-07-08 14:22:23', NULL);
INSERT INTO `t_blog_file` VALUES (447, 'https://junlty.top/photo/46f11929f7f414192ce09c50dd916f14.jpeg', '46f11929f7f414192ce09c50dd916f14', 1915206, 'jpeg', '/photo', 0, '2024-07-08 14:22:25', NULL);
INSERT INTO `t_blog_file` VALUES (448, 'https://junlty.top/photo/f12c523e4705274e1351002f6b5fb31c.jpeg', 'f12c523e4705274e1351002f6b5fb31c', 2359724, 'jpeg', '/photo', 0, '2024-07-08 14:22:28', NULL);
INSERT INTO `t_blog_file` VALUES (449, 'https://junlty.top/photo/101b45b610cb6a93dac3e4f000b29631.jpeg', '101b45b610cb6a93dac3e4f000b29631', 3048414, 'jpeg', '/photo', 0, '2024-07-08 14:24:20', NULL);
INSERT INTO `t_blog_file` VALUES (450, 'https://junlty.top/photo/4608c88726a2cee24350378c8f1203c0.jpeg', '4608c88726a2cee24350378c8f1203c0', 4098042, 'jpeg', '/photo', 0, '2024-07-08 14:24:29', NULL);
INSERT INTO `t_blog_file` VALUES (451, 'https://junlty.top/photo/1cf983bc3fe6c96e77fa2783fba18568.jpeg', '1cf983bc3fe6c96e77fa2783fba18568', 1013166, 'jpeg', '/photo', 0, '2024-07-08 14:26:30', NULL);
INSERT INTO `t_blog_file` VALUES (452, 'https://junlty.top/photo/a56f17f93257a0d2a7a6b3077a9cb82d.jpeg', 'a56f17f93257a0d2a7a6b3077a9cb82d', 2270666, 'jpeg', '/photo', 0, '2024-07-08 14:26:56', NULL);
INSERT INTO `t_blog_file` VALUES (453, 'https://junlty.top/photo/93075a7e22ee01dfe00ac440571a21d5.jpeg', '93075a7e22ee01dfe00ac440571a21d5', 2051868, 'jpeg', '/photo', 0, '2024-07-08 14:27:01', NULL);
INSERT INTO `t_blog_file` VALUES (454, 'https://junlty.top/photo/126ddc8dbef480c57fa24f08d3a95dab.jpeg', '126ddc8dbef480c57fa24f08d3a95dab', 1827453, 'jpeg', '/photo', 0, '2024-07-08 14:27:11', NULL);
INSERT INTO `t_blog_file` VALUES (455, 'https://junlty.top/photo/5c9b1f10a775a3d9e10db61b1964079b.jpeg', '5c9b1f10a775a3d9e10db61b1964079b', 1679743, 'jpeg', '/photo', 0, '2024-07-08 14:27:12', NULL);
INSERT INTO `t_blog_file` VALUES (456, 'https://junlty.top/photo/c5248cebd4a364af78ce6279fa1761a3.jpeg', 'c5248cebd4a364af78ce6279fa1761a3', 212161, 'jpeg', '/photo', 0, '2024-07-08 14:27:14', NULL);
INSERT INTO `t_blog_file` VALUES (457, 'https://junlty.top/photo/98309cc347e4aaa610a8943ad187a1e4.jpeg', '98309cc347e4aaa610a8943ad187a1e4', 2442184, 'jpeg', '/photo', 0, '2024-07-08 14:27:19', NULL);
INSERT INTO `t_blog_file` VALUES (458, 'https://junlty.top/photo/167eb7dea653c85d7a7cfabad7d1849f.jpeg', '167eb7dea653c85d7a7cfabad7d1849f', 1549027, 'jpeg', '/photo', 0, '2024-07-08 14:27:20', NULL);
INSERT INTO `t_blog_file` VALUES (459, 'https://junlty.top/photo/66a10875bc85e1a093d14994274d7a4f.jpeg', '66a10875bc85e1a093d14994274d7a4f', 2783356, 'jpeg', '/photo', 0, '2024-07-08 14:27:53', NULL);
INSERT INTO `t_blog_file` VALUES (460, 'https://junlty.top/photo/c5b58bef0ae286c04e50da32655b2104.jpeg', 'c5b58bef0ae286c04e50da32655b2104', 1329729, 'jpeg', '/photo', 0, '2024-07-08 14:27:53', NULL);
INSERT INTO `t_blog_file` VALUES (461, 'https://junlty.top/photo/1a45bb7abbad11f311bfbc78212ec18f.jpeg', '1a45bb7abbad11f311bfbc78212ec18f', 2013305, 'jpeg', '/photo', 0, '2024-07-08 14:27:54', NULL);
INSERT INTO `t_blog_file` VALUES (462, 'https://junlty.top/photo/b45bf5b5e8184004e32d3c17f4b47f9d.jpeg', 'b45bf5b5e8184004e32d3c17f4b47f9d', 2645982, 'jpeg', '/photo', 0, '2024-07-08 14:27:59', NULL);
INSERT INTO `t_blog_file` VALUES (463, 'https://junlty.top/photo/f2a1f57c531dc4b77692a45e775a631b.jpeg', 'f2a1f57c531dc4b77692a45e775a631b', 2297966, 'jpeg', '/photo', 0, '2024-07-08 14:28:07', NULL);
INSERT INTO `t_blog_file` VALUES (464, 'https://junlty.top/photo/892a298243a470f173683e9360e0190e.jpeg', '892a298243a470f173683e9360e0190e', 1773569, 'jpeg', '/photo', 0, '2024-07-08 14:28:08', NULL);
INSERT INTO `t_blog_file` VALUES (465, 'https://junlty.top/photo/1226dcddd2678cbb0646696ca99cd920.jpeg', '1226dcddd2678cbb0646696ca99cd920', 817039, 'jpeg', '/photo', 0, '2024-07-08 14:28:11', NULL);
INSERT INTO `t_blog_file` VALUES (466, 'https://junlty.top/photo/5f15c8d98955c503cc5281487478ef09.jpeg', '5f15c8d98955c503cc5281487478ef09', 845045, 'jpeg', '/photo', 0, '2024-07-08 14:28:13', NULL);
INSERT INTO `t_blog_file` VALUES (467, 'https://junlty.top/photo/4d9e7a7b0d85439af5afd433a1258893.jpeg', '4d9e7a7b0d85439af5afd433a1258893', 918532, 'jpeg', '/photo', 0, '2024-07-08 14:28:13', NULL);
INSERT INTO `t_blog_file` VALUES (468, 'https://junlty.top/photo/006062addc0583c99a3557891dc13e27.jpeg', '006062addc0583c99a3557891dc13e27', 1084151, 'jpeg', '/photo', 0, '2024-07-08 14:28:30', NULL);
INSERT INTO `t_blog_file` VALUES (469, 'https://junlty.top/photo/9fc165baebec4e7a9a9fd60465c80ab1.jpeg', '9fc165baebec4e7a9a9fd60465c80ab1', 1556915, 'jpeg', '/photo', 0, '2024-07-08 14:28:55', NULL);
INSERT INTO `t_blog_file` VALUES (470, 'https://junlty.top/photo/d057b07d00ae694f0ff5234ee82f8147.jpeg', 'd057b07d00ae694f0ff5234ee82f8147', 2403192, 'jpeg', '/photo', 0, '2024-07-08 14:28:57', NULL);
INSERT INTO `t_blog_file` VALUES (471, 'https://junlty.top/photo/b79eacea3ace3431b934385348c18922.jpeg', 'b79eacea3ace3431b934385348c18922', 2889608, 'jpeg', '/photo', 0, '2024-07-08 14:29:00', NULL);
INSERT INTO `t_blog_file` VALUES (472, 'https://junlty.top/photo/34ce8f0076a481ff1eac1538905b596b.jpeg', '34ce8f0076a481ff1eac1538905b596b', 3272447, 'jpeg', '/photo', 0, '2024-07-08 14:29:05', NULL);
INSERT INTO `t_blog_file` VALUES (473, 'https://junlty.top/photo/bff1a468565d81487ee07254334f5451.jpeg', 'bff1a468565d81487ee07254334f5451', 3676506, 'jpeg', '/photo', 0, '2024-07-08 14:29:07', NULL);
INSERT INTO `t_blog_file` VALUES (474, 'https://junlty.top/photo/4d753c0638ded0f3110ae82798aebbdc.jpeg', '4d753c0638ded0f3110ae82798aebbdc', 1683997, 'jpeg', '/photo', 0, '2024-07-08 14:34:38', NULL);
INSERT INTO `t_blog_file` VALUES (475, 'https://junlty.top/photo/b613f334866506d04161718eb07bb916.jpeg', 'b613f334866506d04161718eb07bb916', 2621892, 'jpeg', '/photo', 0, '2024-07-08 14:34:47', NULL);
INSERT INTO `t_blog_file` VALUES (476, 'https://junlty.top/photo/52445915900c1b2ad23f56e916b7d8b2.jpeg', '52445915900c1b2ad23f56e916b7d8b2', 2396349, 'jpeg', '/photo', 0, '2024-07-08 14:35:01', NULL);
INSERT INTO `t_blog_file` VALUES (477, 'https://junlty.top/photo/508d530b569b189c3ae1e282f91612c2.jpeg', '508d530b569b189c3ae1e282f91612c2', 2628250, 'jpeg', '/photo', 0, '2024-07-08 14:35:02', NULL);
INSERT INTO `t_blog_file` VALUES (478, 'https://junlty.top/photo/3a79e711c76cc01a23d034c99e1e54a6.jpeg', '3a79e711c76cc01a23d034c99e1e54a6', 1980355, 'jpeg', '/photo', 0, '2024-07-08 14:35:02', NULL);
INSERT INTO `t_blog_file` VALUES (479, 'https://junlty.top/photo/617a3486a525aefe1f4a124f94e14e90.jpeg', '617a3486a525aefe1f4a124f94e14e90', 3748345, 'jpeg', '/photo', 0, '2024-07-08 14:35:07', NULL);
INSERT INTO `t_blog_file` VALUES (480, 'https://junlty.top/photo/63a360f1aaa0b7b5e2d8a8098b333350.jpeg', '63a360f1aaa0b7b5e2d8a8098b333350', 2619519, 'jpeg', '/photo', 0, '2024-07-08 17:23:38', NULL);
INSERT INTO `t_blog_file` VALUES (481, 'https://junlty.top/photo/83946336a78393c90eba7a1dc8e7bac1.jpeg', '83946336a78393c90eba7a1dc8e7bac1', 3769492, 'jpeg', '/photo', 0, '2024-07-08 17:23:43', NULL);
INSERT INTO `t_blog_file` VALUES (482, 'https://junlty.top/photo/9424b47bfa0665cb65f3c3e08d76e3ec.jpeg', '9424b47bfa0665cb65f3c3e08d76e3ec', 1622721, 'jpeg', '/photo', 0, '2024-07-08 17:30:29', NULL);
INSERT INTO `t_blog_file` VALUES (483, 'https://junlty.top/photo/b2a2af2ce2d9baa8fd7b3a00dd059125.jpeg', 'b2a2af2ce2d9baa8fd7b3a00dd059125', 2253207, 'jpeg', '/photo', 0, '2024-07-08 17:30:47', NULL);
INSERT INTO `t_blog_file` VALUES (484, 'https://junlty.top/photo/0aeea6bca0dd37f9c770c29bd24a35cb.jpeg', '0aeea6bca0dd37f9c770c29bd24a35cb', 2608726, 'jpeg', '/photo', 0, '2024-07-08 17:30:51', NULL);
INSERT INTO `t_blog_file` VALUES (485, 'https://junlty.top/photo/ede2a85892e1531acabbba8adeb2c8b7.jpeg', 'ede2a85892e1531acabbba8adeb2c8b7', 3486956, 'jpeg', '/photo', 0, '2024-07-08 17:31:00', NULL);
INSERT INTO `t_blog_file` VALUES (486, 'https://junlty.top/photo/107067ec822c23c863147cfd2d00d42e.jpeg', '107067ec822c23c863147cfd2d00d42e', 3917050, 'jpeg', '/photo', 0, '2024-07-08 17:31:00', NULL);
INSERT INTO `t_blog_file` VALUES (487, 'https://junlty.top/photo/5ca6d041a4c28c87ad7939d2b5a42cb3.jpeg', '5ca6d041a4c28c87ad7939d2b5a42cb3', 784816, 'jpeg', '/photo', 0, '2024-07-08 23:08:34', NULL);
INSERT INTO `t_blog_file` VALUES (488, 'https://junlty.top/photo/e481944f6b6c4d8549fa8b72dcf00111.jpeg', 'e481944f6b6c4d8549fa8b72dcf00111', 821498, 'jpeg', '/photo', 0, '2024-07-08 23:08:48', NULL);
INSERT INTO `t_blog_file` VALUES (489, 'https://junlty.top/photo/140cb69234d883e1a1f06fbc98333b07.jpeg', '140cb69234d883e1a1f06fbc98333b07', 2608726, 'jpeg', '/photo', 0, '2024-07-08 23:09:06', NULL);
INSERT INTO `t_blog_file` VALUES (490, 'https://junlty.top/photo/1d080900a54d5b1087a95f28c91dd6dd.jpeg', '1d080900a54d5b1087a95f28c91dd6dd', 1644435, 'jpeg', '/photo', 0, '2024-07-08 23:09:09', NULL);
INSERT INTO `t_blog_file` VALUES (491, 'https://junlty.top/photo/b819fda5e03b2b591e6643bc645e7781.jpeg', 'b819fda5e03b2b591e6643bc645e7781', 1383979, 'jpeg', '/photo', 0, '2024-07-08 23:09:18', NULL);
INSERT INTO `t_blog_file` VALUES (492, 'https://junlty.top/photo/dfbe831cd037469358df13352395f962.jpeg', 'dfbe831cd037469358df13352395f962', 2644998, 'jpeg', '/photo', 0, '2024-07-08 23:09:18', NULL);
INSERT INTO `t_blog_file` VALUES (493, 'https://junlty.top/photo/c3f99eced578aaf735905a7454388872.jpeg', 'c3f99eced578aaf735905a7454388872', 3255984, 'jpeg', '/photo', 0, '2024-07-08 23:09:25', NULL);
INSERT INTO `t_blog_file` VALUES (494, 'https://junlty.top/photo/4f8e8769fc9b66ddf5f8904c857cbcbe.jpeg', '4f8e8769fc9b66ddf5f8904c857cbcbe', 3917050, 'jpeg', '/photo', 0, '2024-07-08 23:09:32', NULL);
INSERT INTO `t_blog_file` VALUES (495, 'https://junlty.top/photo/81a24125da44b55aa734c5868f1fccb3.jpeg', '81a24125da44b55aa734c5868f1fccb3', 1981691, 'jpeg', '/photo', 0, '2024-07-08 23:57:46', NULL);
INSERT INTO `t_blog_file` VALUES (496, 'https://junlty.top/photo/c694011aee34e54ffe1bcaf36a4c0539.jpeg', 'c694011aee34e54ffe1bcaf36a4c0539', 2157243, 'jpeg', '/photo', 0, '2024-07-08 23:58:13', NULL);
INSERT INTO `t_blog_file` VALUES (497, 'https://junlty.top/photo/29bf5fc65cb88183356946c5035f53e8.jpeg', '29bf5fc65cb88183356946c5035f53e8', 4658005, 'jpeg', '/photo', 0, '2024-07-08 23:59:03', NULL);
INSERT INTO `t_blog_file` VALUES (498, 'https://junlty.top/photo/a518dc2aebbc204cbe4432d4f613d4f8.jpeg', 'a518dc2aebbc204cbe4432d4f613d4f8', 6306032, 'jpeg', '/photo', 0, '2024-07-08 23:59:22', NULL);
INSERT INTO `t_blog_file` VALUES (499, 'https://junlty.top/photo/a933803dcf1e7d3459122e287014dce0.jpeg', 'a933803dcf1e7d3459122e287014dce0', 4600771, 'jpeg', '/photo', 0, '2024-07-08 23:59:51', NULL);
INSERT INTO `t_blog_file` VALUES (500, 'https://junlty.top/photo/5d95062eba3d1a42c42c3be92cf3e574.jpeg', '5d95062eba3d1a42c42c3be92cf3e574', 2914285, 'jpeg', '/photo', 0, '2024-07-09 00:00:01', NULL);
INSERT INTO `t_blog_file` VALUES (501, 'https://junlty.top/photo/d0fa5f3f121584d85dcd1834e46bf372.jpeg', 'd0fa5f3f121584d85dcd1834e46bf372', 8049875, 'jpeg', '/photo', 0, '2024-07-09 00:00:08', NULL);
INSERT INTO `t_blog_file` VALUES (502, 'https://junlty.top/photo/9405f6d581527ef9fa875a47fe104737.jpeg', '9405f6d581527ef9fa875a47fe104737', 2339851, 'jpeg', '/photo', 0, '2024-07-09 00:00:36', NULL);
INSERT INTO `t_blog_file` VALUES (503, 'https://junlty.top/photo/70314463c2bf4fb5fe9344b91be31236.jpeg', '70314463c2bf4fb5fe9344b91be31236', 6416410, 'jpeg', '/photo', 0, '2024-07-09 00:00:43', NULL);
INSERT INTO `t_blog_file` VALUES (504, 'https://junlty.top/photo/b5a542d899bc90fe1292bce89ce29194.jpeg', 'b5a542d899bc90fe1292bce89ce29194', 784816, 'jpeg', '/photo', 0, '2024-07-09 00:01:01', NULL);
INSERT INTO `t_blog_file` VALUES (505, 'https://junlty.top/photo/cd821f876d84219f9065a76dc840c92f.jpeg', 'cd821f876d84219f9065a76dc840c92f', 5643915, 'jpeg', '/photo', 0, '2024-07-09 00:01:07', NULL);
INSERT INTO `t_blog_file` VALUES (506, 'https://junlty.top/photo/6a5f6d1ca12c48671ea332941995d4d4.jpeg', '6a5f6d1ca12c48671ea332941995d4d4', 2036796, 'jpeg', '/photo', 0, '2024-07-09 00:01:07', NULL);
INSERT INTO `t_blog_file` VALUES (507, 'https://junlty.top/photo/cf09c5658250cf60e7aafa099ea25ed9.jpeg', 'cf09c5658250cf60e7aafa099ea25ed9', 4581715, 'jpeg', '/photo', 0, '2024-07-09 00:01:13', NULL);
INSERT INTO `t_blog_file` VALUES (508, 'https://junlty.top/photo/e50766882f613fd9e982e6f2605e7dbe.jpeg', 'e50766882f613fd9e982e6f2605e7dbe', 821498, 'jpeg', '/photo', 0, '2024-07-09 00:01:13', NULL);
INSERT INTO `t_blog_file` VALUES (509, 'https://junlty.top/photo/d28a7c41d12eaeb6388b2a3a74bdeef9.jpeg', 'd28a7c41d12eaeb6388b2a3a74bdeef9', 4007610, 'jpeg', '/photo', 0, '2024-07-09 00:01:31', NULL);
INSERT INTO `t_blog_file` VALUES (510, 'https://junlty.top/photo/4801c5cf98fe873cc7e8f0eee4bc1d3e.jpeg', '4801c5cf98fe873cc7e8f0eee4bc1d3e', 6346644, 'jpeg', '/photo', 0, '2024-07-09 00:01:41', NULL);
INSERT INTO `t_blog_file` VALUES (511, 'https://junlty.top/photo/4eb7a9c6056d9112c2008cd88b7db22b.png', '4eb7a9c6056d9112c2008cd88b7db22b', 17187590, 'png', '/photo', 0, '2024-07-09 00:02:23', NULL);
INSERT INTO `t_blog_file` VALUES (512, 'https://junlty.top/article/0a5f585f1d5db3ba087c0f5795b25cb1.jpg', '0a5f585f1d5db3ba087c0f5795b25cb1', 125790, 'jpg', '/article', 0, '2024-07-10 15:41:01', NULL);
INSERT INTO `t_blog_file` VALUES (513, 'https://junlty.top/article/b2b466fa65bb01163fbe8fe5daf2298b.jpg', 'b2b466fa65bb01163fbe8fe5daf2298b', 618513, 'jpg', '/article', 0, '2024-07-10 15:48:58', NULL);
INSERT INTO `t_blog_file` VALUES (514, 'https://junlty.top/config/05e165c224622b40bc4c0b53f1b5d09b.jpg', '05e165c224622b40bc4c0b53f1b5d09b', 201062, 'jpg', '/config', 0, '2024-07-10 17:28:01', NULL);
INSERT INTO `t_blog_file` VALUES (515, 'https://junlty.top/article/e96e8914abf013e48e5125ddbbf93cb2.png', 'e96e8914abf013e48e5125ddbbf93cb2', 123337, 'png', '/article', 0, '2024-07-11 10:15:22', NULL);
INSERT INTO `t_blog_file` VALUES (516, 'https://junlty.top/article/868192a0205153cfe795737f4e9b2e74.png', '868192a0205153cfe795737f4e9b2e74', 174374, 'png', '/article', 0, '2024-07-11 10:15:50', NULL);
INSERT INTO `t_blog_file` VALUES (517, 'https://junlty.top/article/b937e9c555bfe4f4edc29644cf3ab5ca.png', 'b937e9c555bfe4f4edc29644cf3ab5ca', 1033315, 'png', '/article', 0, '2024-07-11 10:29:03', NULL);
INSERT INTO `t_blog_file` VALUES (518, 'https://junlty.top/article/4b20e123c11456cd0d2d5ca658b0d0d3.png', '4b20e123c11456cd0d2d5ca658b0d0d3', 156467, 'png', '/article', 0, '2024-07-11 10:29:26', NULL);
INSERT INTO `t_blog_file` VALUES (519, 'https://junlty.top/article/b457957af3ab96b7496381adf12e773b.png', 'b457957af3ab96b7496381adf12e773b', 107874, 'png', '/article', 0, '2024-07-11 10:30:00', NULL);
INSERT INTO `t_blog_file` VALUES (520, 'https://junlty.top/article/5f25f77d7cbd5403ced2037e43aeb999.png', '5f25f77d7cbd5403ced2037e43aeb999', 1323203, 'png', '/article', 0, '2024-07-14 00:13:23', NULL);
INSERT INTO `t_blog_file` VALUES (521, 'https://junlty.top/article/45c48b9f2a5d44c7c96d2579f732e6d1.png', '45c48b9f2a5d44c7c96d2579f732e6d1', 67025, 'png', '/article', 0, '2024-07-14 00:14:00', NULL);
INSERT INTO `t_blog_file` VALUES (522, 'https://junlty.top/config/63a360f1aaa0b7b5e2d8a8098b333350.jpeg', '63a360f1aaa0b7b5e2d8a8098b333350', 2619519, 'jpeg', '/config', 0, '2024-07-14 22:57:49', NULL);
INSERT INTO `t_blog_file` VALUES (523, 'https://junlty.top/config/6b0f59367945e66bb92dfac212de9698.jpeg', '6b0f59367945e66bb92dfac212de9698', 27306, 'jpeg', '/config', 0, '2024-07-14 22:59:08', NULL);
INSERT INTO `t_blog_file` VALUES (524, 'https://junlty.top/article/954a1dae45c1e25e8bb8a99e8f7b7604.png', '954a1dae45c1e25e8bb8a99e8f7b7604', 2697910, 'png', '/article', 0, '2024-07-15 17:20:04', NULL);
INSERT INTO `t_blog_file` VALUES (525, 'https://junlty.top/article/3d6124d857a79ce96ccc165aafacc0d3.png', '3d6124d857a79ce96ccc165aafacc0d3', 17021, 'png', '/article', 0, '2024-07-15 17:20:15', NULL);
INSERT INTO `t_blog_file` VALUES (526, 'https://junlty.top/article/f5629ffc22306f46c6c815f82115a503.png', 'f5629ffc22306f46c6c815f82115a503', 138852, 'png', '/article', 0, '2024-07-15 17:23:42', NULL);
INSERT INTO `t_blog_file` VALUES (527, 'https://junlty.top/config/f311b976eb2f6dec7fb0acdc59006f25.jpg', 'f311b976eb2f6dec7fb0acdc59006f25', 22072, 'jpg', '/config', 0, '2024-08-01 10:39:13', NULL);
INSERT INTO `t_blog_file` VALUES (528, 'https://junlty.top/config/6ed51ef78093b0b83d4dc49e6254646d.docx', '6ed51ef78093b0b83d4dc49e6254646d', 141103, 'docx', '/config', 0, '2024-08-20 15:26:21', NULL);
INSERT INTO `t_blog_file` VALUES (529, 'https://junlty.top/article/42b5dd21fa6f191a67bfabdfd0215f28.jpg', '42b5dd21fa6f191a67bfabdfd0215f28', 513716, 'jpg', '/article', 0, '2024-08-26 20:07:22', NULL);
INSERT INTO `t_blog_file` VALUES (530, 'https://junlty.top/article/57e7f8b00865270fccf733605ff8f3e7.png', '57e7f8b00865270fccf733605ff8f3e7', 1271979, 'png', '/article', 0, '2024-08-26 21:10:28', NULL);
INSERT INTO `t_blog_file` VALUES (531, 'https://junlty.top/article/7465203673dc85ed83064a1047800197.png', '7465203673dc85ed83064a1047800197', 20941, 'png', '/article', 0, '2024-08-26 21:34:05', NULL);
INSERT INTO `t_blog_file` VALUES (532, 'https://junlty.top/article/2439377ce00bb46215af883e6bfc9ea5.jpeg', '2439377ce00bb46215af883e6bfc9ea5', 145443, 'jpeg', '/article', 0, '2024-08-27 19:07:05', NULL);
INSERT INTO `t_blog_file` VALUES (533, 'https://junlty.top/article/b84e1eec8b5620e096c2ab62fb8bc75d.png', 'b84e1eec8b5620e096c2ab62fb8bc75d', 3439021, 'png', '/article', 0, '2024-08-27 19:26:21', NULL);
INSERT INTO `t_blog_file` VALUES (534, 'https://junlty.top/article/182c51bf544db7ce0db22728f7d0afa7.png', '182c51bf544db7ce0db22728f7d0afa7', 646819, 'png', '/article', 0, '2024-09-05 18:52:20', NULL);
INSERT INTO `t_blog_file` VALUES (535, 'https://junlty.top/article/9833ce258fd40922d48cd33e0023c35e.png', '9833ce258fd40922d48cd33e0023c35e', 403307, 'png', '/article', 0, '2024-09-05 18:55:17', NULL);
INSERT INTO `t_blog_file` VALUES (536, 'https://junlty.top/article/6911da6cbbf2f20a7c69237e7917d36b.png', '6911da6cbbf2f20a7c69237e7917d36b', 587550, 'png', '/article', 0, '2024-09-05 19:07:50', NULL);
INSERT INTO `t_blog_file` VALUES (537, 'https://junlty.top/article/79870d4c157ba981d3e87958ecfa2e95.png', '79870d4c157ba981d3e87958ecfa2e95', 654329, 'png', '/article', 0, '2024-09-05 19:08:51', NULL);
INSERT INTO `t_blog_file` VALUES (538, 'https://junlty.top/article/e7e9a9491234aa52d5f13531f6fd7ad1.png', 'e7e9a9491234aa52d5f13531f6fd7ad1', 549388, 'png', '/article', 0, '2024-09-05 19:08:57', NULL);
INSERT INTO `t_blog_file` VALUES (539, 'https://junlty.top/article/a45b54e3cf7401fafd8a25692e1cd93f.png', 'a45b54e3cf7401fafd8a25692e1cd93f', 560556, 'png', '/article', 0, '2024-09-05 19:09:02', NULL);
INSERT INTO `t_blog_file` VALUES (540, 'https://junlty.top/article/cc9ae327ab6226d16c333ceb0af40d6a.png', 'cc9ae327ab6226d16c333ceb0af40d6a', 567843, 'png', '/article', 0, '2024-09-05 19:09:07', NULL);
INSERT INTO `t_blog_file` VALUES (541, 'https://junlty.top/article/024f94f5d12e1f90e5ed906b0e6316c7.png', '024f94f5d12e1f90e5ed906b0e6316c7', 698196, 'png', '/article', 0, '2024-09-05 19:19:20', NULL);
INSERT INTO `t_blog_file` VALUES (542, 'https://junlty.top/article/956c167a34912551b3d320c1fe15e60c.png', '956c167a34912551b3d320c1fe15e60c', 678313, 'png', '/article', 0, '2024-09-05 19:19:25', NULL);
INSERT INTO `t_blog_file` VALUES (543, 'https://junlty.top/article/d2ef3aadd544b91a51997035e7ee9910.png', 'd2ef3aadd544b91a51997035e7ee9910', 815623, 'png', '/article', 0, '2024-09-05 19:19:32', NULL);
INSERT INTO `t_blog_file` VALUES (544, 'https://junlty.top/article/219d5d45f58fb34e0ae3355218d0166e.png', '219d5d45f58fb34e0ae3355218d0166e', 691723, 'png', '/article', 0, '2024-09-05 19:20:01', NULL);
INSERT INTO `t_blog_file` VALUES (545, 'https://junlty.top/article/a7e8b031a4062cdd7e4c8b746002fad1.png', 'a7e8b031a4062cdd7e4c8b746002fad1', 783255, 'png', '/article', 0, '2024-09-05 19:20:09', NULL);
INSERT INTO `t_blog_file` VALUES (546, 'https://junlty.top/article/fe7e48a58b89c15e41267f0a9b7be940.png', 'fe7e48a58b89c15e41267f0a9b7be940', 448065, 'png', '/article', 0, '2024-09-05 19:20:13', NULL);
INSERT INTO `t_blog_file` VALUES (547, 'https://junlty.top/article/0665839071f9ab7a5bda292243bbc47e.png', '0665839071f9ab7a5bda292243bbc47e', 621020, 'png', '/article', 0, '2024-09-05 19:21:35', NULL);
INSERT INTO `t_blog_file` VALUES (548, 'https://junlty.top/article/2f098c2de301774eb9ff3897a6f83ed7.png', '2f098c2de301774eb9ff3897a6f83ed7', 715764, 'png', '/article', 0, '2024-09-05 19:21:41', NULL);
INSERT INTO `t_blog_file` VALUES (549, 'https://junlty.top/article/4d25d337874a573d25181c73a3cba645.png', '4d25d337874a573d25181c73a3cba645', 628852, 'png', '/article', 0, '2024-09-05 19:29:18', NULL);
INSERT INTO `t_blog_file` VALUES (550, 'https://junlty.top/article/e893c1e7243caedafc4f42a2516ebbed.png', 'e893c1e7243caedafc4f42a2516ebbed', 463377, 'png', '/article', 0, '2024-09-05 19:29:21', NULL);
INSERT INTO `t_blog_file` VALUES (551, 'https://junlty.top/article/aa43258c4b160d33fbe63a64dffea43a.png', 'aa43258c4b160d33fbe63a64dffea43a', 598506, 'png', '/article', 0, '2024-09-05 19:29:33', NULL);
INSERT INTO `t_blog_file` VALUES (552, 'https://junlty.top/article/281af4c6342d18e0ce0a1d01414d7dd3.png', '281af4c6342d18e0ce0a1d01414d7dd3', 531971, 'png', '/article', 0, '2024-09-05 19:29:46', NULL);
INSERT INTO `t_blog_file` VALUES (553, 'https://junlty.top/article/7d0999244fcbc58e173581b049fe5f47.png', '7d0999244fcbc58e173581b049fe5f47', 649800, 'png', '/article', 0, '2024-09-05 19:30:15', NULL);
INSERT INTO `t_blog_file` VALUES (554, 'https://junlty.top/article/7cf7ec05eb9beaaa9444fb2112446b03.png', '7cf7ec05eb9beaaa9444fb2112446b03', 409490, 'png', '/article', 0, '2024-09-05 19:30:24', NULL);
INSERT INTO `t_blog_file` VALUES (555, 'https://junlty.top/article/d85a39567f35aa13ab87e439467f23bf.png', 'd85a39567f35aa13ab87e439467f23bf', 824043, 'png', '/article', 0, '2024-10-15 16:03:14', NULL);
INSERT INTO `t_blog_file` VALUES (556, 'https://junlty.top/article/f7cf5a01b1288dbc6df779176de5eecb.png', 'f7cf5a01b1288dbc6df779176de5eecb', 30631, 'png', '/article', 0, '2024-10-15 16:38:11', NULL);
INSERT INTO `t_blog_file` VALUES (557, 'https://junlty.top/article/3d47bdfc9fdc0602745bdaecda826320.png', '3d47bdfc9fdc0602745bdaecda826320', 335753, 'png', '/article', 0, '2024-10-15 18:33:58', NULL);
INSERT INTO `t_blog_file` VALUES (558, 'https://junlty.top/article/cdbbd193e45985ad97cbef36a359e386.png', 'cdbbd193e45985ad97cbef36a359e386', 45825, 'png', '/article', 0, '2024-10-15 18:35:53', NULL);
INSERT INTO `t_blog_file` VALUES (559, 'https://junlty.top/article/46b1a2c406b604dd64ccab5866049533.png', '46b1a2c406b604dd64ccab5866049533', 259117, 'png', '/article', 0, '2024-10-15 18:49:44', NULL);
INSERT INTO `t_blog_file` VALUES (560, 'https://junlty.top/article/712edcb3c3a05aa93aa0e83f49d8e8aa.jpg', '712edcb3c3a05aa93aa0e83f49d8e8aa', 45845, 'jpg', '/article', 0, '2024-10-16 10:18:22', NULL);
INSERT INTO `t_blog_file` VALUES (561, 'https://junlty.top/article/cb948e59fc93fd3cd0e1a213890177ca.png', 'cb948e59fc93fd3cd0e1a213890177ca', 4171, 'png', '/article', 0, '2025-01-22 13:43:07', NULL);
INSERT INTO `t_blog_file` VALUES (562, 'https://junlty.top/article/0c2e523565932d7e5086a316e940a1fa.png', '0c2e523565932d7e5086a316e940a1fa', 4489, 'png', '/article', 0, '2025-01-23 09:21:37', NULL);
INSERT INTO `t_blog_file` VALUES (563, 'https://junlty.top/article/cec55cfa4d6deef59d9f0165c8b8dc37.jpg', 'cec55cfa4d6deef59d9f0165c8b8dc37', 186631, 'jpg', '/article', 0, '2025-01-23 09:58:08', NULL);
INSERT INTO `t_blog_file` VALUES (564, 'https://junlty.top/article/a05f384fc3c548d9299fc6441eab83ae.png', 'a05f384fc3c548d9299fc6441eab83ae', 80760, 'png', '/article', 0, '2025-01-23 10:07:23', NULL);
INSERT INTO `t_blog_file` VALUES (565, 'https://junlty.top/article/3c60be96c72cd5ed207e8068f76a1560.png', '3c60be96c72cd5ed207e8068f76a1560', 267170, 'png', '/article', 0, '2025-01-23 10:07:40', NULL);
INSERT INTO `t_blog_file` VALUES (566, 'https://junlty.top/article/317b756b40835241be7e2e4f1f5370c4.png', '317b756b40835241be7e2e4f1f5370c4', 70669, 'png', '/article', 0, '2025-01-23 10:08:57', NULL);

-- ----------------------------
-- Table structure for t_carousel
-- ----------------------------
DROP TABLE IF EXISTS `t_carousel`;
CREATE TABLE `t_carousel`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '轮播图地址',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否显示 (0否 1是)',
  `remark` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_carousel
-- ----------------------------
INSERT INTO `t_carousel` VALUES (2, 'https://junlty.top/article/379ce4b2ddf4b087441c196fbffa2f3b.jpg', 1, '', '2024-06-16 23:09:17', '2024-06-17 00:48:25');
INSERT INTO `t_carousel` VALUES (3, 'https://junlty.top/article/6e74df3e6cef8a547d66d6994f5b0b41.jpg', 0, '', '2024-06-16 23:10:34', '2024-07-10 17:15:14');
INSERT INTO `t_carousel` VALUES (4, 'https://junlty.top/article/ca851c94f25e448fb1b5f69e616fc0f8.jpg', 1, '', '2024-06-16 23:18:18', '2024-06-29 23:07:53');
INSERT INTO `t_carousel` VALUES (5, 'https://junlty.top/article/12919eb39791024f818e141f16c59cf5.jpg', 1, '', '2024-06-16 23:18:25', '2024-06-23 18:47:50');
INSERT INTO `t_carousel` VALUES (6, 'https://junlty.top/article/9f32edd921411de29de22f7196586a43.jpg', 0, '', '2024-06-16 23:18:37', '2024-06-17 00:43:21');
INSERT INTO `t_carousel` VALUES (7, 'https://junlty.top/article/aa70728c93d199bb9a91e6d647109abc.jpg', 0, '', '2024-06-16 23:18:45', '2024-06-17 00:43:19');
INSERT INTO `t_carousel` VALUES (8, 'https://junlty.top/article/2ce1129fceee7f14cb4cf554ed167534.jpg', 1, '', '2024-06-17 00:43:02', NULL);
INSERT INTO `t_carousel` VALUES (9, 'https://junlty.top/article/293cee0acb7bac0c16744790fdbb92cf.jpg', 1, '', '2024-06-17 00:43:09', NULL);
INSERT INTO `t_carousel` VALUES (10, 'https://junlty.top/article/7602b3e826ed33d1cd5cc027dd60a0bd.jpg', 0, '', '2024-06-17 00:43:15', '2024-06-29 23:07:56');

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '分类id',
  `category_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类名',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES (50, 'SpringSecurity', '2023-02-22 12:10:21', '2023-12-07 16:59:30');
INSERT INTO `t_category` VALUES (51, 'Mysql', '2023-09-13 11:44:11', NULL);
INSERT INTO `t_category` VALUES (52, 'Redis', '2023-09-13 11:44:19', NULL);
INSERT INTO `t_category` VALUES (53, '项目实战', '2023-09-13 11:44:29', NULL);
INSERT INTO `t_category` VALUES (54, 'Spring', '2023-09-13 11:44:42', NULL);
INSERT INTO `t_category` VALUES (55, 'Kafka', '2023-12-07 16:58:16', NULL);
INSERT INTO `t_category` VALUES (57, '主机', '2024-07-01 16:18:26', NULL);
INSERT INTO `t_category` VALUES (58, '前端', '2024-07-10 15:45:26', NULL);
INSERT INTO `t_category` VALUES (59, '面试', '2024-07-10 15:47:38', NULL);
INSERT INTO `t_category` VALUES (60, '就业', '2024-07-10 15:47:44', NULL);
INSERT INTO `t_category` VALUES (61, '项目部署', '2024-10-16 10:16:29', NULL);

-- ----------------------------
-- Table structure for t_chat_record
-- ----------------------------
DROP TABLE IF EXISTS `t_chat_record`;
CREATE TABLE `t_chat_record`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '聊天记录id',
  `user_id` int NULL DEFAULT NULL COMMENT '用户id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '头像',
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '聊天内容',
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'ip地址',
  `ip_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT 'ip来源',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 118 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_chat_record
-- ----------------------------
INSERT INTO `t_chat_record` VALUES (87, NULL, '223.104.160.183', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', '你在干什么', '223.104.160.183', '中国|浙江|杭州|移动', '2024-07-10 13:28:41');
INSERT INTO `t_chat_record` VALUES (88, NULL, '223.104.160.183', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', '热死我了', '223.104.160.183', '中国|浙江|杭州|移动', '2024-07-10 13:28:49');
INSERT INTO `t_chat_record` VALUES (93, 33, '天若长久时', 'https://junlty.top/avatar/ab5be2cb6053507ab5f01013d256431a.png', '<img src=\'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/xiaoku.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>', '223.104.160.183', '中国|浙江|杭州|移动', '2024-07-10 15:01:19');
INSERT INTO `t_chat_record` VALUES (95, 1, '天若长久时', 'https://junlty.top/avatar/9fdd8f27220124690c940ec1a28e7e14.png', '<img src=\'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/daku.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>', '223.104.160.156', '中国|浙江|杭州|移动', '2024-07-10 16:44:47');
INSERT INTO `t_chat_record` VALUES (102, 33, '天若长久时', 'https://junlty.top/avatar/ab5be2cb6053507ab5f01013d256431a.png', '<img src=\'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/leng.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>', '223.104.160.163', '中国|浙江|杭州|移动', '2024-07-10 17:38:05');
INSERT INTO `t_chat_record` VALUES (105, 1, '天若长久时', 'https://junlty.top/avatar/9fdd8f27220124690c940ec1a28e7e14.png', '<img src=\'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/re.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>', '183.128.187.146', '中国|浙江|杭州|电信', '2024-07-10 21:34:29');
INSERT INTO `t_chat_record` VALUES (114, NULL, '49.77.155.212', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', '<img src=\'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/re.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>', '49.77.155.212', '中国|江苏|南京|电信', '2024-10-28 13:39:00');
INSERT INTO `t_chat_record` VALUES (115, NULL, '39.144.124.162', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', '11', '39.144.124.162', '中国|浙江||移动', '2024-12-13 10:43:05');
INSERT INTO `t_chat_record` VALUES (116, NULL, '39.144.124.162', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', '11', '39.144.124.162', '中国|浙江||移动', '2024-12-13 10:46:52');
INSERT INTO `t_chat_record` VALUES (117, 65, '比泽尔🐶', 'http://thirdqq.qlogo.cn/ek_qqapp/AQJCibegE5s1O2VUyWK0Ticwq4grLqQURPEWsHXSwG2nwiakvgeaTn4VwlQsz4hoxicT6cRicQmRb2W6qNtK440ibB45ibibMmYIhTWZeUiamibbrvw99ooqW2aeI/40', 'Hello?', '183.92.210.215', '中国|湖北|黄石|联通', '2024-12-30 14:43:36');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `comment_type` tinyint(1) NOT NULL COMMENT '类型 (1文章 2友链 3说说)',
  `type_id` int NULL DEFAULT NULL COMMENT '类型id (类型为友链则没有值)',
  `parent_id` int NULL DEFAULT NULL COMMENT '父评论id',
  `reply_id` int NULL DEFAULT NULL COMMENT '回复评论id',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '评论内容',
  `from_uid` int NOT NULL COMMENT '评论用户id',
  `to_uid` int NULL DEFAULT NULL COMMENT '回复用户id',
  `is_check` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否通过 (0否 1是)',
  `ip_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'ip地址',
  `ip_source` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'ip归属地',
  `create_time` datetime NOT NULL COMMENT '评论时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_comment
-- ----------------------------

-- ----------------------------
-- Table structure for t_exception_log
-- ----------------------------
DROP TABLE IF EXISTS `t_exception_log`;
CREATE TABLE `t_exception_log`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '异常id',
  `module` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '异常模块',
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '异常uri',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '异常名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作描述',
  `error_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '异常方法',
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '异常信息',
  `params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求参数',
  `request_method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求方式',
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作ip',
  `ip_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作地址',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作系统',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '浏览器',
  `create_time` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1030 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_exception_log
-- ----------------------------
INSERT INTO `t_exception_log` VALUES (1029, '登录模块', '/login', 'java.lang.IllegalArgumentException', '用户登录', 'com.ican.controller.LoginController.login', 'java.lang.IllegalArgumentException:用户不存在或密码错误\ncn.hutool.core.lang.Assert.lambda$notNull$3(Assert.java:217)\ncn.hutool.core.lang.Assert.notNull(Assert.java:197)\ncn.hutool.core.lang.Assert.notNull(Assert.java:217)\ncom.ican.service.impl.LoginServiceImpl.login(LoginServiceImpl.java:65)\ncom.ican.service.impl.LoginServiceImpl$$FastClassBySpringCGLIB$$b577d1a7.invoke(<generated>)\norg.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\norg.springframework.aop.framework.CglibAopProxy.invokeMethod(CglibAopProxy.java:386)\norg.springframework.aop.framework.CglibAopProxy.access$000(CglibAopProxy.java:85)\norg.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:704)\ncom.ican.service.impl.LoginServiceImpl$$EnhancerBySpringCGLIB$$469b71b.login(<generated>)\ncom.ican.controller.LoginController.login(LoginController.java:57)\ncom.ican.controller.LoginController$$FastClassBySpringCGLIB$$b48ffc8d.invoke(<generated>)\norg.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\norg.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:793)\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\norg.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:763)\norg.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:64)\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\norg.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:763)\norg.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\norg.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:763)\norg.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:708)\ncom.ican.controller.LoginController$$EnhancerBySpringCGLIB$$cec623f.login(<generated>)\njava.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\njava.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\njava.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\njava.base/java.lang.reflect.Method.invoke(Method.java:566)\norg.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)\norg.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150)\norg.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117)\norg.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\norg.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808)\norg.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\norg.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1071)\norg.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:964)\norg.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)\norg.springframework.web.servlet.FrameworkServlet.doPost(FrameworkServlet.java:909)\njavax.servlet.http.HttpServlet.service(HttpServlet.java:696)\norg.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)\njavax.servlet.http.HttpServlet.service(HttpServlet.java:779)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:227)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\norg.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\ncn.dev33.satoken.filter.SaServletFilter.doFilter(SaServletFilter.java:179)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\norg.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:100)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\norg.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:93)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\norg.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\norg.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:177)\norg.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97)\norg.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:541)\norg.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:135)\norg.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\norg.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78)\norg.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:360)\norg.apache.coyote.http11.Http11Processor.service(Http11Processor.java:399)\norg.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65)\norg.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:891)\norg.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1784)\norg.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\norg.apache.tomcat.util.threads.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1191)\norg.apache.tomcat.util.threads.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:659)\norg.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\njava.base/java.lang.Thread.run(Thread.java:829)\n', '[{\"password\":\"gj001212\",\"username\":\"15188287153\"}]', 'POST', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 10:53:52');

-- ----------------------------
-- Table structure for t_friend
-- ----------------------------
DROP TABLE IF EXISTS `t_friend`;
CREATE TABLE `t_friend`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '友链id',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '友链名称',
  `color` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '友链颜色',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '友链头像',
  `url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '友链地址',
  `introduction` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '友链介绍',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `friend_user`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_friend
-- ----------------------------
INSERT INTO `t_friend` VALUES (1, '测试友链', '#409EFF', 'https://junlty.top/config/27b10971c963e55455b09474399460cf.jpg', 'www.junlex.com', '我的道路有自己选择。', '2024-05-30 10:10:02', NULL);

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` int NOT NULL DEFAULT 0 COMMENT '父菜单id (paren_id为0且type为M则是一级菜单)',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '权限类型 (M目录 C菜单 B按钮)',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '名称',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由地址',
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `component` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜单组件',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '权限标识',
  `is_hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否隐藏 (0否 1是)',
  `is_disable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否禁用 (0否 1是)',
  `order_num` int NOT NULL DEFAULT 1 COMMENT '排序',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 133 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, 0, 'M', '文章管理', 'article', 'archives', '', '', 0, 0, 1, '2022-12-04 09:13:31', '2023-02-21 15:36:45');
INSERT INTO `t_menu` VALUES (3, 1, 'C', '分类管理', 'category', 'category', '/blog/category/index', 'blog:category:list', 0, 0, 3, '2022-12-04 09:22:20', '2023-02-21 15:21:19');
INSERT INTO `t_menu` VALUES (4, 1, 'C', '标签管理', 'tag', 'tag', '/blog/tag/index', 'blog:tag:list', 0, 0, 4, '2022-12-04 09:23:01', '2023-02-21 15:21:23');
INSERT INTO `t_menu` VALUES (5, 3, 'B', '添加分类', NULL, NULL, NULL, 'blog:category:add', 0, 0, 1, '2022-12-04 09:30:55', NULL);
INSERT INTO `t_menu` VALUES (6, 3, 'B', '删除分类', NULL, NULL, NULL, 'blog:category:delete', 0, 0, 2, '2022-12-04 09:32:15', '2022-12-26 15:39:20');
INSERT INTO `t_menu` VALUES (7, 3, 'B', '修改分类', NULL, NULL, NULL, 'blog:category:update', 0, 0, 3, '2022-12-04 09:33:52', NULL);
INSERT INTO `t_menu` VALUES (8, 4, 'B', '添加标签', NULL, NULL, '', 'blog:tag:add', 0, 0, 1, '2022-12-04 10:19:51', NULL);
INSERT INTO `t_menu` VALUES (9, 4, 'B', '删除标签', NULL, NULL, NULL, 'blog:tag:delete', 0, 0, 2, '2022-12-04 10:20:41', NULL);
INSERT INTO `t_menu` VALUES (10, 4, 'B', '修改标签', NULL, NULL, NULL, 'blog:tag:update', 0, 0, 3, '2022-12-04 10:21:32', NULL);
INSERT INTO `t_menu` VALUES (11, 0, 'M', '系统管理', 'system', 'system', '', '', 0, 0, 3, '2022-12-06 10:58:50', '2023-01-03 18:47:19');
INSERT INTO `t_menu` VALUES (12, 11, 'C', '菜单管理', 'menu', 'tree-table', '/system/menu/index', 'system:menu:list', 0, 0, 1, '2022-12-06 16:33:56', NULL);
INSERT INTO `t_menu` VALUES (13, 11, 'C', '角色管理', 'role', 'peoples', '/system/role/index', 'system:role:list', 0, 0, 2, '2022-12-06 17:09:55', NULL);
INSERT INTO `t_menu` VALUES (14, 11, 'C', '用户管理', 'user', 'user', '/system/user/index', 'system:user:list', 0, 0, 3, '2022-12-06 17:10:28', NULL);
INSERT INTO `t_menu` VALUES (15, 12, 'B', '添加菜单', NULL, '', NULL, 'system:menu:add', 0, 0, 1, '2022-12-07 10:50:22', NULL);
INSERT INTO `t_menu` VALUES (16, 12, 'B', '删除菜单', NULL, '', NULL, 'system:menu:delete', 0, 0, 2, '2022-12-07 10:50:54', NULL);
INSERT INTO `t_menu` VALUES (17, 12, 'B', '修改菜单', NULL, '', NULL, 'system:menu:update', 0, 0, 3, '2022-12-07 10:55:21', NULL);
INSERT INTO `t_menu` VALUES (18, 13, 'B', '添加角色', NULL, NULL, NULL, 'system:role:add', 0, 0, 1, '2022-12-07 10:56:24', NULL);
INSERT INTO `t_menu` VALUES (19, 13, 'B', '删除角色', NULL, NULL, NULL, 'system:role:delete', 0, 0, 2, '2022-12-07 10:56:50', NULL);
INSERT INTO `t_menu` VALUES (20, 13, 'B', '修改角色', NULL, NULL, NULL, 'system:role:update', 0, 0, 3, '2022-12-07 10:57:15', NULL);
INSERT INTO `t_menu` VALUES (21, 0, 'M', '日志管理', 'log', 'log', '', '', 0, 0, 4, '2022-12-21 17:36:39', '2023-02-21 15:20:13');
INSERT INTO `t_menu` VALUES (22, 21, 'C', '操作日志', 'operation', 'form', '/system/log/operation', 'log:operation:list', 0, 0, 1, '2022-12-21 20:14:01', NULL);
INSERT INTO `t_menu` VALUES (23, 21, 'C', '异常日志', 'exception', 'bug', '/system/log/exception', 'log:exception:list', 0, 0, 2, '2022-12-21 20:48:25', NULL);
INSERT INTO `t_menu` VALUES (24, 22, 'B', '删除操作日志', NULL, NULL, NULL, 'log:operation:delete', 0, 0, 1, '2022-12-26 16:43:00', NULL);
INSERT INTO `t_menu` VALUES (25, 23, 'B', '删除异常日志', NULL, NULL, NULL, 'log:exception:delete', 0, 0, 1, '2022-12-27 13:21:50', NULL);
INSERT INTO `t_menu` VALUES (26, 0, 'M', '系统监控', 'monitor', 'monitor', NULL, '', 0, 0, 5, '2022-12-27 13:23:29', '2023-01-03 18:47:27');
INSERT INTO `t_menu` VALUES (27, 26, 'C', '定时任务', 'task', 'job', '/monitor/task/index', 'monitor:task:list', 0, 0, 2, '2022-12-27 13:26:29', '2023-01-01 21:08:35');
INSERT INTO `t_menu` VALUES (28, 27, 'B', '添加任务', NULL, NULL, NULL, 'monitor:task:add', 0, 0, 1, '2022-12-27 13:32:42', NULL);
INSERT INTO `t_menu` VALUES (29, 27, 'B', '修改任务', NULL, NULL, NULL, 'monitor:task:update', 0, 0, 2, '2022-12-27 13:33:45', NULL);
INSERT INTO `t_menu` VALUES (30, 27, 'B', '删除任务', NULL, NULL, NULL, 'monitor:task:delete', 0, 0, 3, '2022-12-27 13:34:29', NULL);
INSERT INTO `t_menu` VALUES (31, 27, 'B', '修改任务状态', NULL, NULL, NULL, 'monitor:task:status', 0, 0, 4, '2022-12-27 13:43:24', NULL);
INSERT INTO `t_menu` VALUES (32, 27, 'B', '运行任务', NULL, NULL, NULL, 'monitor:task:run', 0, 0, 5, '2022-12-27 13:45:34', NULL);
INSERT INTO `t_menu` VALUES (33, 13, 'B', '修改角色状态', NULL, NULL, NULL, 'system:role:status', 0, 0, 4, '2022-12-27 13:46:39', NULL);
INSERT INTO `t_menu` VALUES (34, 0, 'M', '网站管理', 'web', 'international', NULL, 'international', 0, 0, 6, '2022-12-30 17:22:33', '2023-02-14 09:46:29');
INSERT INTO `t_menu` VALUES (35, 34, 'C', '友链管理', 'friend', 'friend', '/web/friend/index', 'web:friend:list', 0, 0, 1, '2022-12-30 17:33:15', NULL);
INSERT INTO `t_menu` VALUES (36, 0, 'M', '消息管理', 'news', 'email', NULL, '', 0, 0, 2, '2022-12-30 17:50:06', '2022-12-30 18:02:12');
INSERT INTO `t_menu` VALUES (37, 36, 'C', '留言管理', 'message', 'form', '/news/message/index', 'news:message:list', 0, 0, 2, '2022-12-30 17:58:25', '2022-12-30 18:01:47');
INSERT INTO `t_menu` VALUES (38, 36, 'C', '评论管理', 'comment', 'comment', '/news/comment/index', 'news:comment:list', 0, 0, 1, '2022-12-30 17:59:37', '2022-12-30 18:03:35');
INSERT INTO `t_menu` VALUES (39, 35, 'B', '添加友链', NULL, NULL, NULL, 'web:friend:add', 0, 0, 1, '2022-12-30 18:56:22', NULL);
INSERT INTO `t_menu` VALUES (40, 35, 'B', '删除友链', NULL, NULL, NULL, 'web:friend:delete', 0, 0, 2, '2022-12-30 18:56:42', NULL);
INSERT INTO `t_menu` VALUES (41, 35, 'B', '修改友链', NULL, NULL, NULL, 'web:friend:update', 0, 0, 3, '2022-12-30 18:57:08', NULL);
INSERT INTO `t_menu` VALUES (42, 37, 'B', '删除留言', NULL, NULL, NULL, 'news:message:delete', 0, 0, 1, '2022-12-30 22:05:53', NULL);
INSERT INTO `t_menu` VALUES (45, 37, 'B', '审核留言', NULL, NULL, NULL, 'news:message:pass', 0, 0, 2, '2022-12-30 22:29:24', NULL);
INSERT INTO `t_menu` VALUES (46, 34, 'C', '网站配置', 'site', 'example', '/web/site/index', 'web:site:list', 0, 0, 5, '2022-12-31 11:50:45', '2023-01-03 18:49:17');
INSERT INTO `t_menu` VALUES (51, 34, 'C', '相册管理', 'album', 'album', '/web/album/index', 'web:album:list', 0, 0, 3, '2023-01-01 18:16:40', '2023-01-03 18:49:06');
INSERT INTO `t_menu` VALUES (52, 34, 'C', '照片管理', 'photo/:albumId', 'photo', '/web/photo/index', 'web:photo:list', 1, 0, 4, '2023-01-01 18:18:11', '2023-01-01 18:39:22');
INSERT INTO `t_menu` VALUES (53, 26, 'C', '在线用户', 'online', 'online', '/monitor/online/index', 'monitor:online:list', 0, 0, 1, '2023-01-01 21:07:48', '2023-01-01 21:08:29');
INSERT INTO `t_menu` VALUES (54, 51, 'B', '添加相册', NULL, NULL, NULL, 'web:album:add', 0, 0, 1, '2023-01-02 19:01:33', NULL);
INSERT INTO `t_menu` VALUES (55, 51, 'B', '删除相册', NULL, NULL, NULL, 'web:album:delete', 0, 0, 2, '2023-01-02 19:02:03', NULL);
INSERT INTO `t_menu` VALUES (56, 51, 'B', '修改相册', NULL, NULL, NULL, 'web:album:update', 0, 0, 3, '2023-01-02 19:02:50', NULL);
INSERT INTO `t_menu` VALUES (57, 51, 'B', '编辑相册', NULL, NULL, NULL, 'web:album:edit', 0, 0, 4, '2023-01-02 19:03:40', NULL);
INSERT INTO `t_menu` VALUES (58, 51, 'B', '上传相册封面', NULL, NULL, NULL, 'web:album:upload', 0, 0, 5, '2023-01-02 19:04:38', NULL);
INSERT INTO `t_menu` VALUES (60, 12, 'B', '编辑菜单', NULL, NULL, NULL, 'system:menu:edit', 0, 0, 4, '2023-01-03 18:29:57', NULL);
INSERT INTO `t_menu` VALUES (61, 34, 'C', '说说管理', 'talk', 'talk', '/web/talk/index', 'web:talk:list', 0, 0, 2, '2023-01-03 18:48:28', '2023-01-03 18:48:41');
INSERT INTO `t_menu` VALUES (62, 61, 'B', '添加说说', NULL, NULL, NULL, 'web:talk:add', 0, 0, 1, '2023-01-05 19:16:42', NULL);
INSERT INTO `t_menu` VALUES (63, 61, 'B', '删除说说', NULL, NULL, NULL, 'web:talk:delete', 0, 0, 2, '2023-01-05 19:17:07', NULL);
INSERT INTO `t_menu` VALUES (64, 61, 'B', '修改说说', NULL, NULL, NULL, 'web:talk:update', 0, 0, 3, '2023-01-05 19:17:36', NULL);
INSERT INTO `t_menu` VALUES (65, 61, 'B', '编辑说说', NULL, NULL, NULL, 'web:talk:edit', 0, 0, 4, '2023-01-05 19:18:27', NULL);
INSERT INTO `t_menu` VALUES (66, 61, 'B', '上传说说图片', NULL, NULL, NULL, 'web:talk:upload', 0, 0, 5, '2023-01-05 19:18:52', NULL);
INSERT INTO `t_menu` VALUES (67, 46, 'B', '修改网站配置', NULL, NULL, NULL, 'web:site:update', 0, 0, 1, '2023-01-08 09:15:56', NULL);
INSERT INTO `t_menu` VALUES (68, 46, 'B', '上传网站配置图片', NULL, NULL, NULL, 'web:site:upload', 0, 0, 2, '2023-01-08 14:53:16', NULL);
INSERT INTO `t_menu` VALUES (69, 14, 'B', '修改用户', NULL, NULL, NULL, 'system:user:update', 0, 0, 1, '2023-01-09 17:03:18', NULL);
INSERT INTO `t_menu` VALUES (70, 14, 'B', '修改用户状态', NULL, NULL, NULL, 'system:user:status', 0, 0, 2, '2023-01-09 17:03:51', NULL);
INSERT INTO `t_menu` VALUES (71, 53, 'B', '下线用户', NULL, NULL, NULL, 'monitor:online:kick', 0, 0, 1, '2023-01-09 19:18:33', NULL);
INSERT INTO `t_menu` VALUES (73, 1, 'C', '文章列表', 'list', 'chart', '/blog/article/list', 'blog:article:list', 0, 0, 2, '2023-01-10 17:37:29', '2023-02-21 15:36:09');
INSERT INTO `t_menu` VALUES (76, 52, 'B', '添加照片', NULL, NULL, NULL, 'web:photo:add', 0, 0, 1, '2023-01-11 18:45:28', NULL);
INSERT INTO `t_menu` VALUES (77, 52, 'B', '删除照片', NULL, NULL, NULL, 'web:photo:delete', 0, 0, 2, '2023-01-11 18:45:51', NULL);
INSERT INTO `t_menu` VALUES (78, 52, 'B', '修改照片', NULL, NULL, NULL, 'web:photo:update', 0, 0, 3, '2023-01-11 18:46:12', NULL);
INSERT INTO `t_menu` VALUES (79, 52, 'B', '上传照片', NULL, NULL, NULL, 'web:photo:upload', 0, 0, 3, '2023-01-11 18:46:48', NULL);
INSERT INTO `t_menu` VALUES (80, 73, 'B', '添加文章', NULL, NULL, NULL, 'blog:article:add', 0, 0, 1, '2023-01-14 15:25:29', NULL);
INSERT INTO `t_menu` VALUES (81, 73, 'B', '物理删除文章', NULL, NULL, NULL, 'blog:article:delete', 0, 0, 2, '2023-01-14 15:26:44', NULL);
INSERT INTO `t_menu` VALUES (82, 73, 'B', '逻辑删除文章', NULL, NULL, NULL, 'blog:article:recycle', 0, 0, 3, '2023-01-14 15:28:32', NULL);
INSERT INTO `t_menu` VALUES (83, 73, 'B', '更新文章', NULL, NULL, NULL, 'blog:article:update', 0, 0, 4, '2023-01-14 15:30:11', NULL);
INSERT INTO `t_menu` VALUES (84, 73, 'B', '编辑文章', NULL, NULL, NULL, 'blog:article:edit', 0, 0, 5, '2023-01-14 15:32:34', '2023-01-14 15:32:54');
INSERT INTO `t_menu` VALUES (85, 73, 'B', '上传文章图片', NULL, NULL, NULL, 'blog:article:upload', 0, 0, 6, '2023-01-14 15:34:05', '2023-01-15 11:19:13');
INSERT INTO `t_menu` VALUES (86, 73, 'B', '置顶文章', NULL, NULL, NULL, 'blog:article:top', 0, 0, 7, '2023-01-14 15:35:33', NULL);
INSERT INTO `t_menu` VALUES (87, 73, 'B', '推荐文章', NULL, NULL, NULL, 'blog:article:recommend', 0, 0, 8, '2023-01-14 15:36:08', NULL);
INSERT INTO `t_menu` VALUES (88, 73, 'B', '点赞文章', NULL, NULL, NULL, 'blog:article:like', 0, 0, 9, '2023-01-14 15:36:39', NULL);
INSERT INTO `t_menu` VALUES (93, 21, 'C', '访问日志', 'visit', 'logininfor', '/system/log/visit', 'log:visit:list', 0, 0, 3, '2023-01-28 19:04:09', '2023-01-28 19:06:52');
INSERT INTO `t_menu` VALUES (94, 93, 'B', '删除访问日志', NULL, NULL, NULL, 'log:visit:delete', 0, 0, 1, '2023-01-28 19:05:31', NULL);
INSERT INTO `t_menu` VALUES (95, 14, 'B', '修改用户邮箱', NULL, NULL, NULL, 'user:phone:update', 0, 0, 3, '2023-01-31 09:26:22', NULL);
INSERT INTO `t_menu` VALUES (96, 14, 'B', '修改用户头像', NULL, NULL, NULL, 'user:avatar:update', 0, 0, 4, '2023-01-31 09:27:03', NULL);
INSERT INTO `t_menu` VALUES (97, 14, 'B', '修改用户信息', NULL, NULL, NULL, 'user:info:update', 0, 0, 5, '2023-01-31 09:27:37', NULL);
INSERT INTO `t_menu` VALUES (98, 14, 'B', '修改用户密码', NULL, NULL, NULL, 'user:password:update', 0, 0, 6, '2023-01-31 09:28:10', NULL);
INSERT INTO `t_menu` VALUES (99, 38, 'B', '添加评论', NULL, NULL, NULL, 'news:comment:add', 0, 0, 1, '2023-02-08 19:09:25', NULL);
INSERT INTO `t_menu` VALUES (100, 38, 'B', '删除评论', NULL, NULL, NULL, 'news:comment:delete', 0, 0, 2, '2023-02-08 19:09:57', NULL);
INSERT INTO `t_menu` VALUES (101, 38, 'B', '审核评论', NULL, NULL, NULL, 'news:comment:pass', 0, 0, 3, '2023-02-08 19:10:26', NULL);
INSERT INTO `t_menu` VALUES (102, 38, 'B', '点赞评论', NULL, NULL, NULL, 'news:comment:like', 0, 0, 4, '2023-02-08 19:10:45', NULL);
INSERT INTO `t_menu` VALUES (103, 61, 'B', '点赞说说', NULL, NULL, NULL, 'web:talk:like', 0, 0, 6, '2023-02-10 11:16:23', NULL);
INSERT INTO `t_menu` VALUES (104, 21, 'C', '任务日志', 'task', 'job', '/system/log/task', 'log:task:list', 0, 0, 3, '2023-02-14 10:28:28', '2023-02-14 10:28:41');
INSERT INTO `t_menu` VALUES (105, 104, 'B', '删除任务日志', NULL, NULL, NULL, 'log:task:delete', 0, 0, 1, '2023-02-14 11:21:06', NULL);
INSERT INTO `t_menu` VALUES (106, 104, 'B', '清空任务日志', NULL, NULL, NULL, 'log:task:clear', 0, 0, 2, '2023-02-14 11:21:28', NULL);
INSERT INTO `t_menu` VALUES (108, 1, 'C', '发布文章', 'write', 'edit', '/blog/article/write', 'blog:article:list', 0, 0, 1, '2023-02-21 13:32:22', '2023-02-21 15:36:04');
INSERT INTO `t_menu` VALUES (111, 1, 'C', '修改文章', 'write/:articleId', 'edit', '/blog/article/write', 'blog:article:list', 1, 0, 5, '2023-02-21 15:40:11', '2023-02-21 15:41:07');
INSERT INTO `t_menu` VALUES (123, 11, 'C', '文件管理', 'file', 'file', '/system/file/index', 'system:file:list', 0, 0, 4, '2023-03-09 10:57:29', NULL);
INSERT INTO `t_menu` VALUES (124, 123, 'B', '上传文件', NULL, NULL, NULL, 'system:file:upload', 0, 0, 1, '2023-03-10 23:11:33', NULL);
INSERT INTO `t_menu` VALUES (125, 123, 'B', '新建文件夹', NULL, NULL, NULL, 'system:file:createFolder', 0, 0, 2, '2023-03-10 23:12:11', NULL);
INSERT INTO `t_menu` VALUES (126, 123, 'B', '删除文件', NULL, NULL, NULL, 'system:file:delete', 0, 0, 3, '2023-03-10 23:12:45', NULL);
INSERT INTO `t_menu` VALUES (127, 34, 'C', '轮播管理', 'carousel', 'carousel', '/web/carousel/index', 'web:carousel:list', 0, 0, 6, '2024-06-16 21:33:00', NULL);
INSERT INTO `t_menu` VALUES (128, 127, 'B', '添加轮播图', NULL, NULL, NULL, 'web:carousel:add', 0, 0, 1, '2024-06-16 21:33:55', NULL);
INSERT INTO `t_menu` VALUES (129, 127, 'B', '修改轮播图', NULL, NULL, NULL, 'web:carousel:update', 0, 0, 2, '2024-06-16 21:35:25', NULL);
INSERT INTO `t_menu` VALUES (130, 127, 'B', '上传轮播图', NULL, NULL, NULL, 'web:carousel:upload', 0, 0, 3, '2024-06-16 21:40:17', NULL);
INSERT INTO `t_menu` VALUES (131, 127, 'B', '删除轮播图', NULL, NULL, NULL, 'web:carousel:delete', 0, 0, 4, '2024-06-16 21:40:45', NULL);
INSERT INTO `t_menu` VALUES (132, 127, 'B', '修改轮播图状态', NULL, NULL, NULL, 'web:carousel:status', 0, 0, 5, '2024-06-16 21:41:24', NULL);

-- ----------------------------
-- Table structure for t_message
-- ----------------------------
DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '留言id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '头像',
  `message_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '留言内容',
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户ip',
  `ip_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户地址',
  `is_check` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否通过 (0否 1是)',
  `create_time` datetime NOT NULL COMMENT '留言时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 99 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_message
-- ----------------------------

-- ----------------------------
-- Table structure for t_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `t_operation_log`;
CREATE TABLE `t_operation_log`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '操作id',
  `module` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作模块',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作类型',
  `uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作uri',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '方法名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作描述',
  `params` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求参数',
  `method` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '请求方式',
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '返回数据',
  `user_id` int NOT NULL COMMENT '用户id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作ip',
  `ip_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '操作地址',
  `times` int NOT NULL COMMENT '操作耗时 (毫秒)',
  `create_time` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2399 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_operation_log
-- ----------------------------
INSERT INTO `t_operation_log` VALUES (2394, '网站配置模块', '修改', '/admin/site/update', 'com.ican.controller.SiteConfigController.updateSiteConfig', '更新网站配置', '[{\"aboutBackgroundImage\":\"http://junlty.top/config/b2b466fa65bb01163fbe8fe5daf2298b.jpg\",\"aboutMe\":\"``` java\\n/**\\n * 个人简介：\\n * \\n * @author guojun\\n * @date 2000/12/12 12:12\\n */\\nSystem.out.println(\\\"道阻且长 行则将至\\\") ；\\n```\",\"aliCode\":\"https://static.ttkwsd.top/config/f0be9dc73e230d8821179b9303a9ff49.jpg\",\"archiveBackgroundImage\":\"http://junlty.top/config/ef30f44e9d16a5988b1df68656c35171.jpg\",\"articleCover\":\"http://junlty.top/config/6c6c2317050c2adfbd8f0fe2f41d2e59.jpg\",\"authorAvatar\":\"https://junlty.top/config/27b10971c963e55455b09474399460cf.jpg\",\"bilibili\":\"\",\"categoryBackgroundImage\":\"http://junlty.top/config/41086d0761868fcfc8559860338ef425.jpg\",\"commentCheck\":0,\"createSiteTime\":\"2023-08-25\",\"friendBackgroundImage\":\"http://junlty.top/photo/84902e0810e3e6cc577270aab01e06bd.jpg\",\"gitee\":\"https://gitee.com/guo-_jun\",\"github\":\"https://github.com/nansheng1212\",\"id\":1,\"isChat\":1,\"isMusic\":0,\"isReward\":0,\"loginList\":\",gitee,github,qq\",\"messageBackgroundImage\":\"http://junlty.top/config/42866dae6f37c8dba35d0e524f5cb8e0.jpg\",\"messageCheck\":0,\"musicId\":\"10135781464\",\"photoBackgroundImage\":\"http://junlty.top/config/v2-7ee6f104979814d2bf420461e3872475_r.jpg\",\"pictureBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"qq\":\"1517233142\",\"recordNumber\":\"豫ICP备202300\",\"siteAddress\":\"localhost\",\"siteAuthor\":\"天若长久时\",\"siteIntro\":\"我的道路有自己选择。\",\"siteName\":\"Java Cove\",\"siteNotice\":\"网站恢复！\",\"socialList\":\"qq,gitee,github\",\"tagBackgroundImage\":\"http://junlty.top/config/a621a9ff5d15937b01850fb0c70bb6f6.jpg\",\"talkBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"touristAvatar\":\"https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg\",\"userAvatar\":\"https://junlty.top/config/05e165c224622b40bc4c0b53f1b5d09b.jpg\",\"userBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"websocketUrl\":\"https://ws.junlty.top/websocket\",\"weiXinCode\":\"https://static.ttkwsd.top/config/994a286571b002e93281899cb402bd15.png\"}]', 'PUT', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 4, '阿俊', '127.0.0.1', '局域网|局域网||', 462, '2025-02-21 10:51:41');
INSERT INTO `t_operation_log` VALUES (2395, '网站配置模块', '修改', '/admin/site/update', 'com.ican.controller.SiteConfigController.updateSiteConfig', '更新网站配置', '[{\"aboutBackgroundImage\":\"http://junlty.top/config/b2b466fa65bb01163fbe8fe5daf2298b.jpg\",\"aboutMe\":\"``` java\\n/**\\n * 个人简介：\\n * \\n * @author \\n * @date 2000/12/12 12:12\\n */\\nSystem.out.println(\\\"道阻且长 行则将至\\\") ；\\n```\",\"aliCode\":\"https://static.ttkwsd.top/config/f0be9dc73e230d8821179b9303a9ff49.jpg\",\"archiveBackgroundImage\":\"http://junlty.top/config/ef30f44e9d16a5988b1df68656c35171.jpg\",\"articleCover\":\"http://junlty.top/config/6c6c2317050c2adfbd8f0fe2f41d2e59.jpg\",\"authorAvatar\":\"https://junlty.top/config/27b10971c963e55455b09474399460cf.jpg\",\"bilibili\":\"\",\"categoryBackgroundImage\":\"http://junlty.top/config/41086d0761868fcfc8559860338ef425.jpg\",\"commentCheck\":0,\"createSiteTime\":\"2023-08-25\",\"friendBackgroundImage\":\"http://junlty.top/photo/84902e0810e3e6cc577270aab01e06bd.jpg\",\"gitee\":\"https://gitee.com/guo-_jun\",\"github\":\"https://github.com/nansheng1212\",\"id\":1,\"isChat\":1,\"isMusic\":0,\"isReward\":0,\"loginList\":\",gitee,github,qq\",\"messageBackgroundImage\":\"http://junlty.top/config/42866dae6f37c8dba35d0e524f5cb8e0.jpg\",\"messageCheck\":0,\"musicId\":\"10135781464\",\"photoBackgroundImage\":\"http://junlty.top/config/v2-7ee6f104979814d2bf420461e3872475_r.jpg\",\"pictureBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"qq\":\"1517233142\",\"recordNumber\":\"豫ICP备202300\",\"siteAddress\":\"localhost\",\"siteAuthor\":\"天若长久时\",\"siteIntro\":\"我的道路有自己选择。\",\"siteName\":\"Java Cove\",\"siteNotice\":\"网站恢复！\",\"socialList\":\"qq,gitee,github\",\"tagBackgroundImage\":\"http://junlty.top/config/a621a9ff5d15937b01850fb0c70bb6f6.jpg\",\"talkBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"touristAvatar\":\"https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg\",\"userAvatar\":\"https://junlty.top/config/05e165c224622b40bc4c0b53f1b5d09b.jpg\",\"userBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"websocketUrl\":\"https://ws.junlty.top/websocket\",\"weiXinCode\":\"https://static.ttkwsd.top/config/994a286571b002e93281899cb402bd15.png\"}]', 'PUT', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 4, '阿俊', '127.0.0.1', '局域网|局域网||', 287, '2025-02-21 10:51:53');
INSERT INTO `t_operation_log` VALUES (2396, '网站配置模块', '修改', '/admin/site/update', 'com.ican.controller.SiteConfigController.updateSiteConfig', '更新网站配置', '[{\"aboutBackgroundImage\":\"http://junlty.top/config/b2b466fa65bb01163fbe8fe5daf2298b.jpg\",\"aboutMe\":\"``` java\\n/**\\n * 个人简介：\\n * \\n * @author \\n * @date 2000/12/12 12:12\\n */\\nSystem.out.println(\\\"道阻且长 行则将至\\\") ；\\n```\",\"aliCode\":\"https://static.ttkwsd.top/config/f0be9dc73e230d8821179b9303a9ff49.jpg\",\"archiveBackgroundImage\":\"http://junlty.top/config/ef30f44e9d16a5988b1df68656c35171.jpg\",\"articleCover\":\"http://junlty.top/config/6c6c2317050c2adfbd8f0fe2f41d2e59.jpg\",\"authorAvatar\":\"https://junlty.top/config/27b10971c963e55455b09474399460cf.jpg\",\"bilibili\":\"\",\"categoryBackgroundImage\":\"http://junlty.top/config/41086d0761868fcfc8559860338ef425.jpg\",\"commentCheck\":0,\"createSiteTime\":\"2023-08-25\",\"friendBackgroundImage\":\"http://junlty.top/photo/84902e0810e3e6cc577270aab01e06bd.jpg\",\"gitee\":\"\",\"github\":\"\",\"id\":1,\"isChat\":1,\"isMusic\":0,\"isReward\":0,\"loginList\":\",gitee,github,qq\",\"messageBackgroundImage\":\"http://junlty.top/config/42866dae6f37c8dba35d0e524f5cb8e0.jpg\",\"messageCheck\":0,\"musicId\":\"10135781464\",\"photoBackgroundImage\":\"http://junlty.top/config/v2-7ee6f104979814d2bf420461e3872475_r.jpg\",\"pictureBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"qq\":\"\",\"recordNumber\":\"豫ICP备202300\",\"siteAddress\":\"localhost\",\"siteAuthor\":\"天若长久时\",\"siteIntro\":\"我的道路有自己选择。\",\"siteName\":\"Java Cove\",\"siteNotice\":\"网站恢复！\",\"socialList\":\"\",\"tagBackgroundImage\":\"http://junlty.top/config/a621a9ff5d15937b01850fb0c70bb6f6.jpg\",\"talkBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"touristAvatar\":\"https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg\",\"userAvatar\":\"https://junlty.top/config/05e165c224622b40bc4c0b53f1b5d09b.jpg\",\"userBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"websocketUrl\":\"http://localhost/websocket\",\"weiXinCode\":\"https://static.ttkwsd.top/config/994a286571b002e93281899cb402bd15.png\"}]', 'PUT', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 4, '阿俊', '127.0.0.1', '局域网|局域网||', 236, '2025-02-21 10:52:30');
INSERT INTO `t_operation_log` VALUES (2397, '网站配置模块', '修改', '/admin/site/update', 'com.ican.controller.SiteConfigController.updateSiteConfig', '更新网站配置', '[{\"aboutBackgroundImage\":\"http://junlty.top/config/b2b466fa65bb01163fbe8fe5daf2298b.jpg\",\"aboutMe\":\"``` java\\n/**\\n * 个人简介：\\n * \\n * @author \\n * @date 2000/12/12 12:12\\n */\\nSystem.out.println(\\\"道阻且长 行则将至\\\") ；\\n```\",\"aliCode\":\"https://static.ttkwsd.top/config/f0be9dc73e230d8821179b9303a9ff49.jpg\",\"archiveBackgroundImage\":\"http://junlty.top/config/ef30f44e9d16a5988b1df68656c35171.jpg\",\"articleCover\":\"http://junlty.top/config/6c6c2317050c2adfbd8f0fe2f41d2e59.jpg\",\"authorAvatar\":\"https://junlty.top/config/27b10971c963e55455b09474399460cf.jpg\",\"bilibili\":\"\",\"categoryBackgroundImage\":\"http://junlty.top/config/41086d0761868fcfc8559860338ef425.jpg\",\"commentCheck\":0,\"createSiteTime\":\"2023-08-25\",\"friendBackgroundImage\":\"http://junlty.top/photo/84902e0810e3e6cc577270aab01e06bd.jpg\",\"gitee\":\"\",\"github\":\"\",\"id\":1,\"isChat\":1,\"isMusic\":0,\"isReward\":0,\"loginList\":\"\",\"messageBackgroundImage\":\"http://junlty.top/config/42866dae6f37c8dba35d0e524f5cb8e0.jpg\",\"messageCheck\":0,\"musicId\":\"10135781464\",\"photoBackgroundImage\":\"http://junlty.top/config/v2-7ee6f104979814d2bf420461e3872475_r.jpg\",\"pictureBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"qq\":\"\",\"recordNumber\":\"豫ICP备202300\",\"siteAddress\":\"localhost\",\"siteAuthor\":\"天若长久时\",\"siteIntro\":\"我的道路有自己选择。\",\"siteName\":\"Java Cove\",\"siteNotice\":\"网站恢复！\",\"socialList\":\"\",\"tagBackgroundImage\":\"http://junlty.top/config/a621a9ff5d15937b01850fb0c70bb6f6.jpg\",\"talkBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"touristAvatar\":\"https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg\",\"userAvatar\":\"https://junlty.top/config/05e165c224622b40bc4c0b53f1b5d09b.jpg\",\"userBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"websocketUrl\":\"http://localhost/websocket\",\"weiXinCode\":\"https://static.ttkwsd.top/config/994a286571b002e93281899cb402bd15.png\"}]', 'PUT', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 4, '阿俊', '127.0.0.1', '局域网|局域网||', 344, '2025-02-21 10:52:33');
INSERT INTO `t_operation_log` VALUES (2398, '网站配置模块', '修改', '/admin/site/update', 'com.ican.controller.SiteConfigController.updateSiteConfig', '更新网站配置', '[{\"aboutBackgroundImage\":\"http://junlty.top/config/b2b466fa65bb01163fbe8fe5daf2298b.jpg\",\"aboutMe\":\"``` java\\n/**\\n * 个人简介：\\n * \\n * @author \\n * @date 2000/12/12 12:12\\n */\\nSystem.out.println(\\\"道阻且长 行则将至\\\") ；\\n```\",\"aliCode\":\"https://static.ttkwsd.top/config/f0be9dc73e230d8821179b9303a9ff49.jpg\",\"archiveBackgroundImage\":\"http://junlty.top/config/ef30f44e9d16a5988b1df68656c35171.jpg\",\"articleCover\":\"http://junlty.top/config/6c6c2317050c2adfbd8f0fe2f41d2e59.jpg\",\"authorAvatar\":\"https://junlty.top/config/27b10971c963e55455b09474399460cf.jpg\",\"bilibili\":\"\",\"categoryBackgroundImage\":\"http://junlty.top/config/41086d0761868fcfc8559860338ef425.jpg\",\"commentCheck\":0,\"createSiteTime\":\"2023-08-25\",\"friendBackgroundImage\":\"http://junlty.top/photo/84902e0810e3e6cc577270aab01e06bd.jpg\",\"gitee\":\"\",\"github\":\"\",\"id\":1,\"isChat\":1,\"isMusic\":0,\"isReward\":0,\"loginList\":\"\",\"messageBackgroundImage\":\"http://junlty.top/config/42866dae6f37c8dba35d0e524f5cb8e0.jpg\",\"messageCheck\":0,\"musicId\":\"10135781464\",\"photoBackgroundImage\":\"http://junlty.top/config/v2-7ee6f104979814d2bf420461e3872475_r.jpg\",\"pictureBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"qq\":\"\",\"recordNumber\":\"豫ICP备202300\",\"siteAddress\":\"localhost\",\"siteAuthor\":\"天若长久时\",\"siteIntro\":\"我的道路有自己选择。\",\"siteName\":\"Java Cove\",\"siteNotice\":\"网站恢复！\",\"socialList\":\"\",\"tagBackgroundImage\":\"http://junlty.top/config/a621a9ff5d15937b01850fb0c70bb6f6.jpg\",\"talkBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"touristAvatar\":\"https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg\",\"userAvatar\":\"https://junlty.top/config/05e165c224622b40bc4c0b53f1b5d09b.jpg\",\"userBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"websocketUrl\":\"http://localhost:8080/websocket\",\"weiXinCode\":\"https://static.ttkwsd.top/config/994a286571b002e93281899cb402bd15.png\"}]', 'PUT', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 4, '阿俊', '127.0.0.1', '局域网|局域网||', 314, '2025-02-21 10:53:31');

-- ----------------------------
-- Table structure for t_photo
-- ----------------------------
DROP TABLE IF EXISTS `t_photo`;
CREATE TABLE `t_photo`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '照片id',
  `album_id` int NOT NULL COMMENT '相册id',
  `photo_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '照片名',
  `photo_desc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '照片描述',
  `photo_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '照片链接',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 204 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_photo
-- ----------------------------
INSERT INTO `t_photo` VALUES (19, 3, '1728726004207833090', NULL, 'https://junlty.top/photo/525823a33e75d7e9f1dada918847e8f2.jpg', '2023-11-26 18:42:52', NULL);
INSERT INTO `t_photo` VALUES (20, 3, '1728727492351086593', NULL, 'https://junlty.top/photo/61dbfd829cbe7d595dff560f403c1cc3.jpg', '2023-11-26 18:48:47', NULL);
INSERT INTO `t_photo` VALUES (21, 3, '1728727492351086594', NULL, 'https://junlty.top/photo/e1e9965814f66fced54bb7aafceece0c.jpg', '2023-11-26 18:48:47', NULL);
INSERT INTO `t_photo` VALUES (23, 3, '1728727492351086596', NULL, 'https://junlty.top/photo/cf7a0ff7e502f2ecd80c38f5e26d3354.jpg', '2023-11-26 18:48:47', NULL);
INSERT INTO `t_photo` VALUES (24, 3, '1728727492351086597', NULL, 'https://junlty.top/photo/45eb42f7c2d5bc5dcab6f474b267df4c.jpg', '2023-11-26 18:48:47', NULL);
INSERT INTO `t_photo` VALUES (25, 3, '1728727492351086598', NULL, 'https://junlty.top/photo/33254cdff5c4d607c19f1475a68351db.jpg', '2023-11-26 18:48:47', NULL);
INSERT INTO `t_photo` VALUES (26, 3, '1728727492351086599', NULL, 'https://junlty.top/photo/24f34bc90ca8a470acef6f94328505aa.jpg', '2023-11-26 18:48:47', NULL);
INSERT INTO `t_photo` VALUES (54, 1, '1804914379285061634', NULL, 'https://junlty.top/photo/bab2c444554ab57e486b140091b6bd28.jpg', '2024-06-24 00:28:16', NULL);
INSERT INTO `t_photo` VALUES (55, 1, '1804915990325616642', NULL, 'https://junlty.top/photo/84902e0810e3e6cc577270aab01e06bd.jpg', '2024-06-24 00:34:40', NULL);
INSERT INTO `t_photo` VALUES (60, 1, '1804919971953238017', NULL, 'https://junlty.top/photo/d0095bf8d7d87374461cb9d565e21af0.jpg', '2024-06-24 00:50:30', NULL);
INSERT INTO `t_photo` VALUES (61, 5, '1804925967807275010', NULL, 'https://junlty.top/photo/8140ce1995ba0be9719a9be7c2570613.jpg', '2024-06-24 01:14:19', NULL);
INSERT INTO `t_photo` VALUES (89, 4, '1805568011210842113', NULL, 'https://junlty.top/photo/56ccc60c71689b652ae45afa6b268d98.jpg', '2024-06-25 19:45:34', NULL);
INSERT INTO `t_photo` VALUES (90, 4, '1805568260184727553', NULL, 'https://junlty.top/photo/24b935fdea8b0fa9789017c82dfd5a4f.jpg', '2024-06-25 19:46:34', NULL);
INSERT INTO `t_photo` VALUES (91, 4, '1805568260184727554', NULL, 'https://junlty.top/photo/daf43c1c6bef8d981b38f37c42a92e9d.jpg', '2024-06-25 19:46:34', NULL);
INSERT INTO `t_photo` VALUES (92, 4, '1805568260184727555', NULL, 'https://junlty.top/photo/d597cf6eae973f3d2057c52ec0b363b7.jpg', '2024-06-25 19:46:34', NULL);
INSERT INTO `t_photo` VALUES (93, 4, '1805568573713145857', NULL, 'https://junlty.top/photo/05f4bf3d14a10c4108cc6eb70148558a.jpg', '2024-06-25 19:47:48', NULL);
INSERT INTO `t_photo` VALUES (94, 4, '1805568573713145858', NULL, 'https://junlty.top/photo/f1a4b740879049be1aa7ff0a36d23ff0.jpg', '2024-06-25 19:47:48', NULL);
INSERT INTO `t_photo` VALUES (95, 4, '1805568573713145859', NULL, 'https://junlty.top/photo/fb9a187220cdd284ae1ba3fb49010bc0.jpg', '2024-06-25 19:47:48', NULL);
INSERT INTO `t_photo` VALUES (97, 4, '1805570167225704450', NULL, 'https://junlty.top/photo/4a86b11b0531c935e2fcbbec2f410e91.jpg', '2024-06-25 19:54:08', NULL);
INSERT INTO `t_photo` VALUES (98, 4, '1805570167225704451', NULL, 'https://junlty.top/photo/5b56b4be7822a218f6ef6bf478e40459.jpg', '2024-06-25 19:54:08', NULL);
INSERT INTO `t_photo` VALUES (99, 4, '1805570167225704452', NULL, 'https://junlty.top/photo/f2abc7d115dc3aa3b9b63acb94f75d30.jpg', '2024-06-25 19:54:08', NULL);
INSERT INTO `t_photo` VALUES (100, 4, '1805570167225704453', NULL, 'https://junlty.top/photo/afce70cfe3c688e9bfc2fbbdf3273f74.jpg', '2024-06-25 19:54:08', NULL);
INSERT INTO `t_photo` VALUES (101, 4, '1805570167225704454', NULL, 'https://junlty.top/photo/fe71bb435d481d9d054d9d5c89903f64.jpg', '2024-06-25 19:54:08', NULL);
INSERT INTO `t_photo` VALUES (102, 4, '1805570167225704455', NULL, 'https://junlty.top/photo/f92de995c390b659e7236904903e884b.jpg', '2024-06-25 19:54:08', NULL);
INSERT INTO `t_photo` VALUES (103, 4, '1805570167225704456', NULL, 'https://junlty.top/photo/371f7621b1ce896a58c85e3aa08d3ecf.jpg', '2024-06-25 19:54:08', NULL);
INSERT INTO `t_photo` VALUES (104, 4, '1805572017182203906', NULL, 'https://junlty.top/photo/fd4bfcd35105e65ec8db1f8724962446.jpg', '2024-06-25 20:01:29', NULL);
INSERT INTO `t_photo` VALUES (105, 4, '1805572017182203907', NULL, 'https://junlty.top/photo/02b3b441a59676bb523372ff62b977ab.jpg', '2024-06-25 20:01:29', NULL);
INSERT INTO `t_photo` VALUES (106, 4, '1805572017182203908', NULL, 'https://junlty.top/photo/b31ce85bce51c2779c6b323aa0e01503.jpg', '2024-06-25 20:01:29', NULL);
INSERT INTO `t_photo` VALUES (107, 4, '1805572017182203909', NULL, 'https://junlty.top/photo/94b02084ce13439a74d473a98f5d7e99.jpg', '2024-06-25 20:01:29', NULL);
INSERT INTO `t_photo` VALUES (108, 4, '1805572017182203910', NULL, 'https://junlty.top/photo/b8fceb92e262d8b18cab61974094bb7e.jpg', '2024-06-25 20:01:29', NULL);
INSERT INTO `t_photo` VALUES (109, 4, '1805572017182203911', NULL, 'https://junlty.top/photo/15385c427df94c36d26fe77826b5eb21.jpg', '2024-06-25 20:01:29', NULL);
INSERT INTO `t_photo` VALUES (110, 4, '1805572017182203912', NULL, 'https://junlty.top/photo/adeb66b083abd8351eb34d01e94c0470.jpg', '2024-06-25 20:01:29', NULL);
INSERT INTO `t_photo` VALUES (111, 4, '1805572017182203913', NULL, 'https://junlty.top/photo/fa11d61530a56715c15384373f4c1199.jpg', '2024-06-25 20:01:29', NULL);
INSERT INTO `t_photo` VALUES (114, 5, '1805597296623820801', NULL, 'https://junlty.top/photo/05e165c224622b40bc4c0b53f1b5d09b.jpg', '2024-06-25 21:41:57', NULL);
INSERT INTO `t_photo` VALUES (116, 6, '1805879209793474561', NULL, 'https://junlty.top/photo/05f4bf3d14a10c4108cc6eb70148558a.jpg', '2024-06-26 16:22:10', NULL);
INSERT INTO `t_photo` VALUES (117, 4, '1805880410282971138', NULL, 'https://junlty.top/photo/712edcb3c3a05aa93aa0e83f49d8e8aa.jpg', '2024-06-26 16:26:56', NULL);
INSERT INTO `t_photo` VALUES (118, 6, '1805886158849245186', NULL, 'https://junlty.top/photo/fb9a187220cdd284ae1ba3fb49010bc0.jpg', '2024-06-26 16:49:47', NULL);
INSERT INTO `t_photo` VALUES (119, 6, '1805886928046850050', NULL, 'https://junlty.top/photo/05f4bf3d14a10c4108cc6eb70148558a.jpg', '2024-06-26 16:52:50', NULL);
INSERT INTO `t_photo` VALUES (120, 6, '1805887174940360705', NULL, 'https://junlty.top/photo/6995383b37b2d3b859ae480e698b8f1b.png', '2024-06-26 16:53:49', NULL);
INSERT INTO `t_photo` VALUES (121, 6, '1806524742240493569', NULL, 'https://junlty.top/photo/1d4c28602df625239b0e78bd23fd13eb.png', '2024-06-28 11:07:17', NULL);
INSERT INTO `t_photo` VALUES (122, 6, '1806984977482743809', NULL, 'https://junlty.top/photo/f49e7b8bcec84408b1b95f30ae84da82.jpeg', '2024-06-29 17:36:05', NULL);
INSERT INTO `t_photo` VALUES (123, 7, '1810194218205888514', NULL, 'https://junlty.top/photo/ee7146e69adf51cddcd5fc6d16a8f0a0.jpeg', '2024-07-08 14:08:28', NULL);
INSERT INTO `t_photo` VALUES (124, 7, '1810194218205888515', NULL, 'https://junlty.top/photo/ee1cf69bf3017d162cebeff9cab428a8.jpeg', '2024-07-08 14:08:28', NULL);
INSERT INTO `t_photo` VALUES (125, 7, '1810194218205888516', NULL, 'https://junlty.top/photo/645f2fc511ff8702aeda9d1a20332054.jpeg', '2024-07-08 14:08:28', NULL);
INSERT INTO `t_photo` VALUES (126, 7, '1810197004276514817', NULL, 'https://junlty.top/photo/24d31a6c23c001a0adf7afd88618e7e3.jpeg', '2024-07-08 14:19:32', NULL);
INSERT INTO `t_photo` VALUES (127, 7, '1810197004276514818', NULL, 'https://junlty.top/photo/71305ae03cc31a2087d01911c8c89f32.jpeg', '2024-07-08 14:19:32', NULL);
INSERT INTO `t_photo` VALUES (128, 7, '1810197004276514819', NULL, 'https://junlty.top/photo/1d56929020796e5c4b13c688572bce0b.jpeg', '2024-07-08 14:19:32', NULL);
INSERT INTO `t_photo` VALUES (129, 7, '1810197004276514820', NULL, 'https://junlty.top/photo/b73b0c130824ea39d6e16ea31bfeddbe.jpeg', '2024-07-08 14:19:32', NULL);
INSERT INTO `t_photo` VALUES (130, 7, '1810197004276514821', NULL, 'https://junlty.top/photo/946d576604edaa89793c5b29978df5c5.jpeg', '2024-07-08 14:19:32', NULL);
INSERT INTO `t_photo` VALUES (131, 7, '1810197478669074433', NULL, 'https://junlty.top/photo/14c5c2ceed975c1edd33866b1cc5dbd2.jpeg', '2024-07-08 14:21:25', NULL);
INSERT INTO `t_photo` VALUES (132, 7, '1810197478669074434', NULL, 'https://junlty.top/photo/478a2098276b1f4cf07a11f68fc63a03.jpeg', '2024-07-08 14:21:25', NULL);
INSERT INTO `t_photo` VALUES (133, 7, '1810197478669074435', NULL, 'https://junlty.top/photo/e3317b2847e25fea3b592697a2a851ef.jpeg', '2024-07-08 14:21:25', NULL);
INSERT INTO `t_photo` VALUES (134, 7, '1810197478669074436', NULL, 'https://junlty.top/photo/27fdc78109963158d0c5716a5f68d8e0.jpeg', '2024-07-08 14:21:25', NULL);
INSERT INTO `t_photo` VALUES (135, 7, '1810197478669074437', NULL, 'https://junlty.top/photo/6214fd2dcc8b3b500c664f5f92f7763f.jpeg', '2024-07-08 14:21:25', NULL);
INSERT INTO `t_photo` VALUES (136, 7, '1810197791652233217', NULL, 'https://junlty.top/photo/5716d732bab4b5a642856e71776b08b8.jpeg', '2024-07-08 14:22:40', NULL);
INSERT INTO `t_photo` VALUES (137, 7, '1810197791652233218', NULL, 'https://junlty.top/photo/49d178bb7661237bc7992501732b03a3.jpeg', '2024-07-08 14:22:40', NULL);
INSERT INTO `t_photo` VALUES (138, 7, '1810197791652233219', NULL, 'https://junlty.top/photo/46f11929f7f414192ce09c50dd916f14.jpeg', '2024-07-08 14:22:40', NULL);
INSERT INTO `t_photo` VALUES (139, 7, '1810197791652233220', NULL, 'https://junlty.top/photo/f12c523e4705274e1351002f6b5fb31c.jpeg', '2024-07-08 14:22:40', NULL);
INSERT INTO `t_photo` VALUES (140, 7, '1810198344599912450', NULL, 'https://junlty.top/photo/101b45b610cb6a93dac3e4f000b29631.jpeg', '2024-07-08 14:24:52', NULL);
INSERT INTO `t_photo` VALUES (141, 7, '1810198344599912451', NULL, 'https://junlty.top/photo/4608c88726a2cee24350378c8f1203c0.jpeg', '2024-07-08 14:24:52', NULL);
INSERT INTO `t_photo` VALUES (142, 7, '1810199641738756097', NULL, 'https://junlty.top/photo/1cf983bc3fe6c96e77fa2783fba18568.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (143, 7, '1810199641738756098', NULL, 'https://junlty.top/photo/a56f17f93257a0d2a7a6b3077a9cb82d.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (144, 7, '1810199641738756099', NULL, 'https://junlty.top/photo/93075a7e22ee01dfe00ac440571a21d5.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (145, 7, '1810199641738756100', NULL, 'https://junlty.top/photo/126ddc8dbef480c57fa24f08d3a95dab.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (146, 7, '1810199641738756101', NULL, 'https://junlty.top/photo/5c9b1f10a775a3d9e10db61b1964079b.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (147, 7, '1810199641738756102', NULL, 'https://junlty.top/photo/c5248cebd4a364af78ce6279fa1761a3.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (148, 7, '1810199641738756103', NULL, 'https://junlty.top/photo/98309cc347e4aaa610a8943ad187a1e4.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (149, 7, '1810199641738756104', NULL, 'https://junlty.top/photo/167eb7dea653c85d7a7cfabad7d1849f.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (150, 7, '1810199641738756105', NULL, 'https://junlty.top/photo/66a10875bc85e1a093d14994274d7a4f.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (151, 7, '1810199641738756106', NULL, 'https://junlty.top/photo/c5b58bef0ae286c04e50da32655b2104.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (152, 7, '1810199641738756107', NULL, 'https://junlty.top/photo/1a45bb7abbad11f311bfbc78212ec18f.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (153, 7, '1810199641738756108', NULL, 'https://junlty.top/photo/b45bf5b5e8184004e32d3c17f4b47f9d.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (154, 7, '1810199641738756109', NULL, 'https://junlty.top/photo/f2a1f57c531dc4b77692a45e775a631b.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (155, 7, '1810199641738756110', NULL, 'https://junlty.top/photo/892a298243a470f173683e9360e0190e.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (156, 7, '1810199641738756111', NULL, 'https://junlty.top/photo/1226dcddd2678cbb0646696ca99cd920.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (157, 7, '1810199641738756112', NULL, 'https://junlty.top/photo/5f15c8d98955c503cc5281487478ef09.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (158, 7, '1810199641738756113', NULL, 'https://junlty.top/photo/4d9e7a7b0d85439af5afd433a1258893.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (159, 7, '1810199641738756114', NULL, 'https://junlty.top/photo/006062addc0583c99a3557891dc13e27.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (160, 7, '1810199641738756115', NULL, 'https://junlty.top/photo/9fc165baebec4e7a9a9fd60465c80ab1.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (161, 7, '1810199641738756116', NULL, 'https://junlty.top/photo/d057b07d00ae694f0ff5234ee82f8147.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (162, 7, '1810199641738756117', NULL, 'https://junlty.top/photo/b79eacea3ace3431b934385348c18922.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (163, 7, '1810199641738756118', NULL, 'https://junlty.top/photo/34ce8f0076a481ff1eac1538905b596b.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (164, 7, '1810199641738756119', NULL, 'https://junlty.top/photo/bff1a468565d81487ee07254334f5451.jpeg', '2024-07-08 14:30:01', NULL);
INSERT INTO `t_photo` VALUES (165, 7, '1810201142892740610', NULL, 'https://junlty.top/photo/4d753c0638ded0f3110ae82798aebbdc.jpeg', '2024-07-08 14:35:59', NULL);
INSERT INTO `t_photo` VALUES (166, 7, '1810201142892740611', NULL, 'https://junlty.top/photo/b613f334866506d04161718eb07bb916.jpeg', '2024-07-08 14:35:59', NULL);
INSERT INTO `t_photo` VALUES (167, 7, '1810201142892740612', NULL, 'https://junlty.top/photo/52445915900c1b2ad23f56e916b7d8b2.jpeg', '2024-07-08 14:35:59', NULL);
INSERT INTO `t_photo` VALUES (168, 7, '1810201142892740613', NULL, 'https://junlty.top/photo/3a79e711c76cc01a23d034c99e1e54a6.jpeg', '2024-07-08 14:35:59', NULL);
INSERT INTO `t_photo` VALUES (169, 7, '1810201142892740614', NULL, 'https://junlty.top/photo/508d530b569b189c3ae1e282f91612c2.jpeg', '2024-07-08 14:35:59', NULL);
INSERT INTO `t_photo` VALUES (170, 7, '1810201142892740615', NULL, 'https://junlty.top/photo/617a3486a525aefe1f4a124f94e14e90.jpeg', '2024-07-08 14:35:59', NULL);
INSERT INTO `t_photo` VALUES (171, 7, '1810243566700642305', NULL, 'https://junlty.top/photo/63a360f1aaa0b7b5e2d8a8098b333350.jpeg', '2024-07-08 17:24:34', NULL);
INSERT INTO `t_photo` VALUES (172, 7, '1810243566700642306', NULL, 'https://junlty.top/photo/83946336a78393c90eba7a1dc8e7bac1.jpeg', '2024-07-08 17:24:34', NULL);
INSERT INTO `t_photo` VALUES (173, 7, '1810245699885907970', NULL, 'https://junlty.top/photo/9424b47bfa0665cb65f3c3e08d76e3ec.jpeg', '2024-07-08 17:33:02', NULL);
INSERT INTO `t_photo` VALUES (174, 7, '1810245699885907971', NULL, 'https://junlty.top/photo/b2a2af2ce2d9baa8fd7b3a00dd059125.jpeg', '2024-07-08 17:33:02', NULL);
INSERT INTO `t_photo` VALUES (176, 7, '1810245699885907973', NULL, 'https://junlty.top/photo/ede2a85892e1531acabbba8adeb2c8b7.jpeg', '2024-07-08 17:33:02', NULL);
INSERT INTO `t_photo` VALUES (177, 7, '1810245699885907974', NULL, 'https://junlty.top/photo/107067ec822c23c863147cfd2d00d42e.jpeg', '2024-07-08 17:33:02', NULL);
INSERT INTO `t_photo` VALUES (178, 7, '1810330646537617410', NULL, 'https://junlty.top/photo/5ca6d041a4c28c87ad7939d2b5a42cb3.jpeg', '2024-07-08 23:10:35', NULL);
INSERT INTO `t_photo` VALUES (179, 7, '1810330646537617411', NULL, 'https://junlty.top/photo/e481944f6b6c4d8549fa8b72dcf00111.jpeg', '2024-07-08 23:10:35', NULL);
INSERT INTO `t_photo` VALUES (181, 7, '1810330646537617413', NULL, 'https://junlty.top/photo/1d080900a54d5b1087a95f28c91dd6dd.jpeg', '2024-07-08 23:10:35', NULL);
INSERT INTO `t_photo` VALUES (182, 7, '1810330646537617414', NULL, 'https://junlty.top/photo/b819fda5e03b2b591e6643bc645e7781.jpeg', '2024-07-08 23:10:35', NULL);
INSERT INTO `t_photo` VALUES (183, 7, '1810330646537617415', NULL, 'https://junlty.top/photo/dfbe831cd037469358df13352395f962.jpeg', '2024-07-08 23:10:35', NULL);
INSERT INTO `t_photo` VALUES (184, 7, '1810330646537617416', NULL, 'https://junlty.top/photo/c3f99eced578aaf735905a7454388872.jpeg', '2024-07-08 23:10:35', NULL);
INSERT INTO `t_photo` VALUES (185, 7, '1810330646537617417', NULL, 'https://junlty.top/photo/4f8e8769fc9b66ddf5f8904c857cbcbe.jpeg', '2024-07-08 23:10:35', NULL);
INSERT INTO `t_photo` VALUES (186, 7, '1810344080851386369', NULL, 'https://junlty.top/photo/81a24125da44b55aa734c5868f1fccb3.jpeg', '2024-07-09 00:03:58', NULL);
INSERT INTO `t_photo` VALUES (187, 7, '1810344080851386370', NULL, 'https://junlty.top/photo/c694011aee34e54ffe1bcaf36a4c0539.jpeg', '2024-07-09 00:03:58', NULL);
INSERT INTO `t_photo` VALUES (188, 7, '1810344080851386371', NULL, 'https://junlty.top/photo/29bf5fc65cb88183356946c5035f53e8.jpeg', '2024-07-09 00:03:58', NULL);
INSERT INTO `t_photo` VALUES (189, 7, '1810344080851386372', NULL, 'https://junlty.top/photo/a518dc2aebbc204cbe4432d4f613d4f8.jpeg', '2024-07-09 00:03:58', NULL);
INSERT INTO `t_photo` VALUES (190, 7, '1810344080851386373', NULL, 'https://junlty.top/photo/5d95062eba3d1a42c42c3be92cf3e574.jpeg', '2024-07-09 00:03:58', NULL);
INSERT INTO `t_photo` VALUES (191, 7, '1810344080851386374', NULL, 'https://junlty.top/photo/d0fa5f3f121584d85dcd1834e46bf372.jpeg', '2024-07-09 00:03:58', NULL);
INSERT INTO `t_photo` VALUES (192, 7, '1810344080851386375', NULL, 'https://junlty.top/photo/9405f6d581527ef9fa875a47fe104737.jpeg', '2024-07-09 00:03:58', NULL);
INSERT INTO `t_photo` VALUES (193, 7, '1810344080851386376', NULL, 'https://junlty.top/photo/b5a542d899bc90fe1292bce89ce29194.jpeg', '2024-07-09 00:03:58', NULL);
INSERT INTO `t_photo` VALUES (194, 7, '1810344080851386377', NULL, 'https://junlty.top/photo/6a5f6d1ca12c48671ea332941995d4d4.jpeg', '2024-07-09 00:03:58', NULL);
INSERT INTO `t_photo` VALUES (195, 7, '1810344080851386378', NULL, 'https://junlty.top/photo/e50766882f613fd9e982e6f2605e7dbe.jpeg', '2024-07-09 00:03:58', NULL);
INSERT INTO `t_photo` VALUES (196, 7, '1810344080851386379', NULL, 'https://junlty.top/photo/cf09c5658250cf60e7aafa099ea25ed9.jpeg', '2024-07-09 00:03:58', NULL);
INSERT INTO `t_photo` VALUES (197, 7, '1810344080851386380', NULL, 'https://junlty.top/photo/d28a7c41d12eaeb6388b2a3a74bdeef9.jpeg', '2024-07-09 00:03:58', NULL);
INSERT INTO `t_photo` VALUES (198, 7, '1810344080851386381', NULL, 'https://junlty.top/photo/4801c5cf98fe873cc7e8f0eee4bc1d3e.jpeg', '2024-07-09 00:03:58', NULL);
INSERT INTO `t_photo` VALUES (199, 7, '1810344080851386382', NULL, 'https://junlty.top/photo/4eb7a9c6056d9112c2008cd88b7db22b.png', '2024-07-09 00:03:58', NULL);
INSERT INTO `t_photo` VALUES (200, 7, '1810345102072135682', NULL, 'https://junlty.top/photo/70314463c2bf4fb5fe9344b91be31236.jpeg', '2024-07-09 00:08:02', NULL);
INSERT INTO `t_photo` VALUES (201, 7, '1810345435464777730', NULL, 'https://junlty.top/photo/a933803dcf1e7d3459122e287014dce0.jpeg', '2024-07-09 00:09:21', NULL);
INSERT INTO `t_photo` VALUES (202, 7, '1810345714239193089', NULL, 'https://junlty.top/photo/cd821f876d84219f9065a76dc840c92f.jpeg', '2024-07-09 00:10:28', NULL);
INSERT INTO `t_photo` VALUES (203, 6, '1810863987244048385', NULL, 'https://junlty.top/photo/3d6124d857a79ce96ccc165aafacc0d3.png', '2024-07-10 10:29:53', NULL);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键id',
  `role_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_desc` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色描述',
  `is_disable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否禁用 (0否 1是)',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', 'admin', '管理员', 0, '2022-11-03 17:41:57', '2024-06-16 22:10:51');
INSERT INTO `t_role` VALUES ('2', 'user', '普通用户', 0, '2022-11-03 17:42:17', '2024-10-12 14:50:22');
INSERT INTO `t_role` VALUES ('3', 'test', '测试账号', 0, '2022-11-03 17:42:31', '2024-09-11 14:38:22');

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  `menu_id` int NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6595 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES (6252, '1', 1);
INSERT INTO `t_role_menu` VALUES (6253, '1', 108);
INSERT INTO `t_role_menu` VALUES (6254, '1', 73);
INSERT INTO `t_role_menu` VALUES (6255, '1', 80);
INSERT INTO `t_role_menu` VALUES (6256, '1', 81);
INSERT INTO `t_role_menu` VALUES (6257, '1', 82);
INSERT INTO `t_role_menu` VALUES (6258, '1', 83);
INSERT INTO `t_role_menu` VALUES (6259, '1', 84);
INSERT INTO `t_role_menu` VALUES (6260, '1', 85);
INSERT INTO `t_role_menu` VALUES (6261, '1', 86);
INSERT INTO `t_role_menu` VALUES (6262, '1', 87);
INSERT INTO `t_role_menu` VALUES (6263, '1', 88);
INSERT INTO `t_role_menu` VALUES (6264, '1', 3);
INSERT INTO `t_role_menu` VALUES (6265, '1', 5);
INSERT INTO `t_role_menu` VALUES (6266, '1', 6);
INSERT INTO `t_role_menu` VALUES (6267, '1', 7);
INSERT INTO `t_role_menu` VALUES (6268, '1', 4);
INSERT INTO `t_role_menu` VALUES (6269, '1', 8);
INSERT INTO `t_role_menu` VALUES (6270, '1', 9);
INSERT INTO `t_role_menu` VALUES (6271, '1', 10);
INSERT INTO `t_role_menu` VALUES (6272, '1', 111);
INSERT INTO `t_role_menu` VALUES (6273, '1', 36);
INSERT INTO `t_role_menu` VALUES (6274, '1', 38);
INSERT INTO `t_role_menu` VALUES (6275, '1', 99);
INSERT INTO `t_role_menu` VALUES (6276, '1', 100);
INSERT INTO `t_role_menu` VALUES (6277, '1', 101);
INSERT INTO `t_role_menu` VALUES (6278, '1', 102);
INSERT INTO `t_role_menu` VALUES (6279, '1', 37);
INSERT INTO `t_role_menu` VALUES (6280, '1', 42);
INSERT INTO `t_role_menu` VALUES (6281, '1', 45);
INSERT INTO `t_role_menu` VALUES (6282, '1', 11);
INSERT INTO `t_role_menu` VALUES (6283, '1', 12);
INSERT INTO `t_role_menu` VALUES (6284, '1', 15);
INSERT INTO `t_role_menu` VALUES (6285, '1', 16);
INSERT INTO `t_role_menu` VALUES (6286, '1', 17);
INSERT INTO `t_role_menu` VALUES (6287, '1', 60);
INSERT INTO `t_role_menu` VALUES (6288, '1', 13);
INSERT INTO `t_role_menu` VALUES (6289, '1', 18);
INSERT INTO `t_role_menu` VALUES (6290, '1', 19);
INSERT INTO `t_role_menu` VALUES (6291, '1', 20);
INSERT INTO `t_role_menu` VALUES (6292, '1', 33);
INSERT INTO `t_role_menu` VALUES (6293, '1', 14);
INSERT INTO `t_role_menu` VALUES (6294, '1', 69);
INSERT INTO `t_role_menu` VALUES (6295, '1', 70);
INSERT INTO `t_role_menu` VALUES (6296, '1', 95);
INSERT INTO `t_role_menu` VALUES (6297, '1', 96);
INSERT INTO `t_role_menu` VALUES (6298, '1', 97);
INSERT INTO `t_role_menu` VALUES (6299, '1', 98);
INSERT INTO `t_role_menu` VALUES (6300, '1', 123);
INSERT INTO `t_role_menu` VALUES (6301, '1', 124);
INSERT INTO `t_role_menu` VALUES (6302, '1', 125);
INSERT INTO `t_role_menu` VALUES (6303, '1', 126);
INSERT INTO `t_role_menu` VALUES (6304, '1', 21);
INSERT INTO `t_role_menu` VALUES (6305, '1', 22);
INSERT INTO `t_role_menu` VALUES (6306, '1', 24);
INSERT INTO `t_role_menu` VALUES (6307, '1', 23);
INSERT INTO `t_role_menu` VALUES (6308, '1', 25);
INSERT INTO `t_role_menu` VALUES (6309, '1', 93);
INSERT INTO `t_role_menu` VALUES (6310, '1', 94);
INSERT INTO `t_role_menu` VALUES (6311, '1', 104);
INSERT INTO `t_role_menu` VALUES (6312, '1', 105);
INSERT INTO `t_role_menu` VALUES (6313, '1', 106);
INSERT INTO `t_role_menu` VALUES (6314, '1', 26);
INSERT INTO `t_role_menu` VALUES (6315, '1', 53);
INSERT INTO `t_role_menu` VALUES (6316, '1', 71);
INSERT INTO `t_role_menu` VALUES (6317, '1', 27);
INSERT INTO `t_role_menu` VALUES (6318, '1', 28);
INSERT INTO `t_role_menu` VALUES (6319, '1', 29);
INSERT INTO `t_role_menu` VALUES (6320, '1', 30);
INSERT INTO `t_role_menu` VALUES (6321, '1', 31);
INSERT INTO `t_role_menu` VALUES (6322, '1', 32);
INSERT INTO `t_role_menu` VALUES (6323, '1', 34);
INSERT INTO `t_role_menu` VALUES (6324, '1', 35);
INSERT INTO `t_role_menu` VALUES (6325, '1', 39);
INSERT INTO `t_role_menu` VALUES (6326, '1', 40);
INSERT INTO `t_role_menu` VALUES (6327, '1', 41);
INSERT INTO `t_role_menu` VALUES (6328, '1', 61);
INSERT INTO `t_role_menu` VALUES (6329, '1', 62);
INSERT INTO `t_role_menu` VALUES (6330, '1', 63);
INSERT INTO `t_role_menu` VALUES (6331, '1', 64);
INSERT INTO `t_role_menu` VALUES (6332, '1', 65);
INSERT INTO `t_role_menu` VALUES (6333, '1', 66);
INSERT INTO `t_role_menu` VALUES (6334, '1', 103);
INSERT INTO `t_role_menu` VALUES (6335, '1', 51);
INSERT INTO `t_role_menu` VALUES (6336, '1', 54);
INSERT INTO `t_role_menu` VALUES (6337, '1', 55);
INSERT INTO `t_role_menu` VALUES (6338, '1', 56);
INSERT INTO `t_role_menu` VALUES (6339, '1', 57);
INSERT INTO `t_role_menu` VALUES (6340, '1', 58);
INSERT INTO `t_role_menu` VALUES (6341, '1', 52);
INSERT INTO `t_role_menu` VALUES (6342, '1', 76);
INSERT INTO `t_role_menu` VALUES (6343, '1', 77);
INSERT INTO `t_role_menu` VALUES (6344, '1', 78);
INSERT INTO `t_role_menu` VALUES (6345, '1', 79);
INSERT INTO `t_role_menu` VALUES (6346, '1', 46);
INSERT INTO `t_role_menu` VALUES (6347, '1', 67);
INSERT INTO `t_role_menu` VALUES (6348, '1', 68);
INSERT INTO `t_role_menu` VALUES (6349, '1', 127);
INSERT INTO `t_role_menu` VALUES (6350, '1', 128);
INSERT INTO `t_role_menu` VALUES (6351, '1', 129);
INSERT INTO `t_role_menu` VALUES (6352, '1', 130);
INSERT INTO `t_role_menu` VALUES (6353, '1', 131);
INSERT INTO `t_role_menu` VALUES (6354, '1', 132);
INSERT INTO `t_role_menu` VALUES (6449, '3', 1);
INSERT INTO `t_role_menu` VALUES (6450, '3', 108);
INSERT INTO `t_role_menu` VALUES (6451, '3', 73);
INSERT INTO `t_role_menu` VALUES (6452, '3', 3);
INSERT INTO `t_role_menu` VALUES (6453, '3', 4);
INSERT INTO `t_role_menu` VALUES (6454, '3', 111);
INSERT INTO `t_role_menu` VALUES (6455, '3', 36);
INSERT INTO `t_role_menu` VALUES (6456, '3', 38);
INSERT INTO `t_role_menu` VALUES (6457, '3', 37);
INSERT INTO `t_role_menu` VALUES (6458, '3', 11);
INSERT INTO `t_role_menu` VALUES (6459, '3', 12);
INSERT INTO `t_role_menu` VALUES (6460, '3', 60);
INSERT INTO `t_role_menu` VALUES (6461, '3', 13);
INSERT INTO `t_role_menu` VALUES (6462, '3', 14);
INSERT INTO `t_role_menu` VALUES (6463, '3', 21);
INSERT INTO `t_role_menu` VALUES (6464, '3', 22);
INSERT INTO `t_role_menu` VALUES (6465, '3', 23);
INSERT INTO `t_role_menu` VALUES (6466, '3', 93);
INSERT INTO `t_role_menu` VALUES (6467, '3', 104);
INSERT INTO `t_role_menu` VALUES (6468, '3', 26);
INSERT INTO `t_role_menu` VALUES (6469, '3', 53);
INSERT INTO `t_role_menu` VALUES (6470, '3', 27);
INSERT INTO `t_role_menu` VALUES (6471, '3', 34);
INSERT INTO `t_role_menu` VALUES (6472, '3', 35);
INSERT INTO `t_role_menu` VALUES (6473, '3', 61);
INSERT INTO `t_role_menu` VALUES (6474, '3', 52);
INSERT INTO `t_role_menu` VALUES (6475, '3', 46);
INSERT INTO `t_role_menu` VALUES (6556, '2', 1);
INSERT INTO `t_role_menu` VALUES (6557, '2', 108);
INSERT INTO `t_role_menu` VALUES (6558, '2', 73);
INSERT INTO `t_role_menu` VALUES (6559, '2', 80);
INSERT INTO `t_role_menu` VALUES (6560, '2', 84);
INSERT INTO `t_role_menu` VALUES (6561, '2', 88);
INSERT INTO `t_role_menu` VALUES (6562, '2', 3);
INSERT INTO `t_role_menu` VALUES (6563, '2', 4);
INSERT INTO `t_role_menu` VALUES (6564, '2', 111);
INSERT INTO `t_role_menu` VALUES (6565, '2', 36);
INSERT INTO `t_role_menu` VALUES (6566, '2', 38);
INSERT INTO `t_role_menu` VALUES (6567, '2', 99);
INSERT INTO `t_role_menu` VALUES (6568, '2', 102);
INSERT INTO `t_role_menu` VALUES (6569, '2', 37);
INSERT INTO `t_role_menu` VALUES (6570, '2', 11);
INSERT INTO `t_role_menu` VALUES (6571, '2', 12);
INSERT INTO `t_role_menu` VALUES (6572, '2', 13);
INSERT INTO `t_role_menu` VALUES (6573, '2', 14);
INSERT INTO `t_role_menu` VALUES (6574, '2', 95);
INSERT INTO `t_role_menu` VALUES (6575, '2', 96);
INSERT INTO `t_role_menu` VALUES (6576, '2', 97);
INSERT INTO `t_role_menu` VALUES (6577, '2', 98);
INSERT INTO `t_role_menu` VALUES (6578, '2', 123);
INSERT INTO `t_role_menu` VALUES (6579, '2', 21);
INSERT INTO `t_role_menu` VALUES (6580, '2', 22);
INSERT INTO `t_role_menu` VALUES (6581, '2', 23);
INSERT INTO `t_role_menu` VALUES (6582, '2', 93);
INSERT INTO `t_role_menu` VALUES (6583, '2', 104);
INSERT INTO `t_role_menu` VALUES (6584, '2', 26);
INSERT INTO `t_role_menu` VALUES (6585, '2', 53);
INSERT INTO `t_role_menu` VALUES (6586, '2', 27);
INSERT INTO `t_role_menu` VALUES (6587, '2', 34);
INSERT INTO `t_role_menu` VALUES (6588, '2', 35);
INSERT INTO `t_role_menu` VALUES (6589, '2', 61);
INSERT INTO `t_role_menu` VALUES (6590, '2', 65);
INSERT INTO `t_role_menu` VALUES (6591, '2', 103);
INSERT INTO `t_role_menu` VALUES (6592, '2', 57);
INSERT INTO `t_role_menu` VALUES (6593, '2', 46);
INSERT INTO `t_role_menu` VALUES (6594, '2', 127);

-- ----------------------------
-- Table structure for t_site_config
-- ----------------------------
DROP TABLE IF EXISTS `t_site_config`;
CREATE TABLE `t_site_config`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户头像',
  `tourist_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '游客头像',
  `site_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站名称',
  `site_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站地址',
  `site_intro` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站简介',
  `site_notice` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站公告',
  `create_site_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '建站日期',
  `record_number` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '备案号',
  `author_avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '作者头像',
  `site_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '网站作者',
  `article_cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '文章默认封面',
  `about_me` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '关于我',
  `github` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'Github',
  `gitee` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'Gitee',
  `bilibili` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '哔哩哔哩',
  `qq` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'QQ',
  `comment_check` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否评论审核 (0否 1是)',
  `message_check` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否留言审核 (0否 1是)',
  `is_reward` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否开启打赏 (0否 1是)',
  `wei_xin_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '微信二维码',
  `ali_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '支付宝二维码',
  `social_list` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '社交列表',
  `login_list` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录方式',
  `is_music` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否开启音乐播放器 (0否 1是)',
  `music_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '网易云歌单id',
  `is_chat` tinyint(1) NOT NULL DEFAULT 1 COMMENT '是否开启聊天室 (0否 1是)',
  `websocket_url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'websocket链接',
  `archive_background_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文章归档页背景图片',
  `category_background_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文章分类页背景图片',
  `tag_background_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文章标签页背景图片',
  `talk_background_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '娱乐说说页背景图片',
  `photo_background_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '娱乐相册页背景图片',
  `picture_background_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '娱乐图床页背景图片',
  `friend_background_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '友链页背景图片',
  `message_background_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '留言板页背景图片',
  `about_background_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关于页背景图片',
  `user_background_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户个人中心背景图',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_site_config
-- ----------------------------
INSERT INTO `t_site_config` VALUES (1, 'https://junlty.top/config/05e165c224622b40bc4c0b53f1b5d09b.jpg', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', 'Java Cove', 'localhost', '我的道路有自己选择。', '网站恢复！', '2023-08-25', '豫ICP备202300', 'https://junlty.top/config/27b10971c963e55455b09474399460cf.jpg', '天若长久时', 'http://junlty.top/config/6c6c2317050c2adfbd8f0fe2f41d2e59.jpg', '``` java\n/**\n * 个人简介：\n * \n * @author \n * @date 2000/12/12 12:12\n */\nSystem.out.println(\"道阻且长 行则将至\") ；\n```', '', '', '', '', 0, 0, 0, 'https://static.ttkwsd.top/config/994a286571b002e93281899cb402bd15.png', 'https://static.ttkwsd.top/config/f0be9dc73e230d8821179b9303a9ff49.jpg', '', '', 0, '10135781464', 1, 'http://localhost:8080/websocket', 'http://junlty.top/config/ef30f44e9d16a5988b1df68656c35171.jpg', 'http://junlty.top/config/41086d0761868fcfc8559860338ef425.jpg', 'http://junlty.top/config/a621a9ff5d15937b01850fb0c70bb6f6.jpg', 'https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg', 'http://junlty.top/config/v2-7ee6f104979814d2bf420461e3872475_r.jpg', 'https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg', 'http://junlty.top/photo/84902e0810e3e6cc577270aab01e06bd.jpg', 'http://junlty.top/config/42866dae6f37c8dba35d0e524f5cb8e0.jpg', 'http://junlty.top/config/b2b466fa65bb01163fbe8fe5daf2298b.jpg', 'https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg', '2023-01-07 19:31:33', '2025-02-21 10:53:31');

-- ----------------------------
-- Table structure for t_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '标签id',
  `tag_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '标签名',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_tag
-- ----------------------------
INSERT INTO `t_tag` VALUES (15, 'Spring', '2023-02-22 12:10:21', '2023-12-07 16:58:31');
INSERT INTO `t_tag` VALUES (16, 'Redis', '2023-12-07 16:57:14', '2023-12-07 16:57:35');
INSERT INTO `t_tag` VALUES (17, 'Mysql', '2023-12-07 16:57:28', NULL);
INSERT INTO `t_tag` VALUES (18, 'SpringSecurity', '2023-12-07 16:57:41', NULL);
INSERT INTO `t_tag` VALUES (19, 'Springboot', '2023-12-07 16:57:47', NULL);
INSERT INTO `t_tag` VALUES (20, 'Springcloud', '2023-12-07 16:57:53', NULL);
INSERT INTO `t_tag` VALUES (21, 'RabbitMQ', '2023-12-07 16:58:00', NULL);
INSERT INTO `t_tag` VALUES (22, 'Kafka', '2023-12-07 16:58:05', NULL);
INSERT INTO `t_tag` VALUES (23, '锁', '2023-12-07 17:05:58', NULL);
INSERT INTO `t_tag` VALUES (24, '分布式', '2024-01-05 11:09:56', NULL);
INSERT INTO `t_tag` VALUES (25, '数据库', '2024-01-05 11:10:02', NULL);
INSERT INTO `t_tag` VALUES (27, '主机配置', '2024-07-01 16:18:32', NULL);
INSERT INTO `t_tag` VALUES (28, '前端', '2024-07-10 15:45:32', NULL);
INSERT INTO `t_tag` VALUES (29, 'Vue', '2024-07-10 15:45:44', NULL);
INSERT INTO `t_tag` VALUES (30, '面试', '2024-07-10 15:48:01', NULL);
INSERT INTO `t_tag` VALUES (31, '就业', '2024-07-10 15:48:06', NULL);
INSERT INTO `t_tag` VALUES (32, '部署', '2024-10-16 10:16:39', NULL);

-- ----------------------------
-- Table structure for t_talk
-- ----------------------------
DROP TABLE IF EXISTS `t_talk`;
CREATE TABLE `t_talk`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '说说id',
  `user_id` int NOT NULL COMMENT '用户id',
  `talk_content` varchar(10000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '说说内容',
  `images` varchar(2500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '说说图片',
  `is_top` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否置顶 (0否 1是)',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态 (1公开  2私密)',
  `create_time` datetime NOT NULL COMMENT '发表时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_talk
-- ----------------------------
INSERT INTO `t_talk` VALUES (37, 1, '请在自己热爱的世界里闪闪发光<img src=\"https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/shengli.png\" width=\"24\" height=\"24\" alt=\"[胜利]\" style=\"margin: 0 1px;vertical-align: text-bottom\"><img src=\"https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/shengli.png\" width=\"24\" height=\"24\" alt=\"[胜利]\" style=\"margin: 0 1px;vertical-align: text-bottom\"><img src=\"https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/shengli.png\" width=\"24\" height=\"24\" alt=\"[胜利]\" style=\"margin: 0 1px;vertical-align: text-bottom\">', '[\"https://junlty.top/talk/2bb26ac3ee49668d3aab5901cc2df6b8.jpg\"]', 0, 1, '2023-02-22 12:04:47', '2024-06-29 22:12:06');
INSERT INTO `t_talk` VALUES (38, 1, '念旧也许不是一个好习惯，但却使回忆更珍贵。', '', 0, 1, '2023-12-01 22:21:17', NULL);
INSERT INTO `t_talk` VALUES (42, 1, '路的尽头还是路 但是路边有山川湖海 有绿树繁花 所以人生的真正意义永远都不是结局而是我们用心度过的每一天', '[\"https://junlty.top/talk/05e165c224622b40bc4c0b53f1b5d09b.jpg\"]', 0, 1, '2024-06-26 00:52:16', '2024-06-29 22:12:01');
INSERT INTO `t_talk` VALUES (43, 1, '希望一直如少年，干净纯粹心安✨', '[\"https://junlty.top/talk/05e165c224622b40bc4c0b53f1b5d09b.jpg\"]', 0, 1, '2024-06-26 16:25:43', NULL);
INSERT INTO `t_talk` VALUES (44, 1, 'QQ登录修复了，快去试试QQ登录吧<img src=\"https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/kgz.png\" width=\"24\" height=\"24\" alt=\"[嗑瓜子]\" style=\"margin: 0 1px;vertical-align: text-bottom\"><img src=\"https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/kgz.png\" width=\"24\" height=\"24\" alt=\"[嗑瓜子]\" style=\"margin: 0 1px;vertical-align: text-bottom\"><img src=\"https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/kgz.png\" width=\"24\" height=\"24\" alt=\"[嗑瓜子]\" style=\"margin: 0 1px;vertical-align: text-bottom\">', '', 0, 1, '2024-06-29 22:11:45', '2024-07-01 01:59:03');
INSERT INTO `t_talk` VALUES (45, 1, '“能拍就拍能照就照，想炫的时候就炫，想做什么就去做什么，因为十年后肯定拍不出如今般的模样，大胆的记录生活，因为你出现的每一天，都是值得被收藏的一天”@不予', '', 1, 1, '2024-07-01 02:00:32', NULL);
INSERT INTO `t_talk` VALUES (46, 1, '记住 摆烂太久是会被收走天赋的', '', 0, 1, '2024-07-10 23:04:09', NULL);

-- ----------------------------
-- Table structure for t_task
-- ----------------------------
DROP TABLE IF EXISTS `t_task`;
CREATE TABLE `t_task`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `task_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `task_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'cron执行表达式',
  `misfire_policy` tinyint(1) NOT NULL DEFAULT 3 COMMENT '计划执行错误策略 (1立即执行 2执行一次 3放弃执行)',
  `concurrent` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否并发执行 (0否 1是)',
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '任务状态 (0运行 1暂停)',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务备注信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_task
-- ----------------------------
INSERT INTO `t_task` VALUES (1, '清除全部异常日志', 'SYSTEM', 'timedTask.clearException', '0 0 0 1/1 * ?', 3, 0, 1, '清除全部异常日志', '2023-12-08 13:57:31', '2024-07-16 12:25:51');
INSERT INTO `t_task` VALUES (2, '清除一周前异常日志', 'SYSTEM', 'timedTask.clearExceptionLog', '0 0 0 1/1 * ?', 3, 0, 1, '清除一周前异常日志', '2023-12-08 13:57:31', '2024-07-16 12:25:50');
INSERT INTO `t_task` VALUES (4, '清除每日游客访问记录', 'SYSTEM', 'timedTask.clear', '0 0 0 * * ?', 3, 0, 1, '清除redis中的游客记录', '2023-02-14 09:49:39', '2024-01-29 15:08:17');
INSERT INTO `t_task` VALUES (6, '清除访问日志', 'SYSTEM', 'timedTask.clearVistiLog', '0 0 2 * * ?', 3, 0, 1, '清除一周前的访问日志', '2023-02-22 15:56:32', '2024-01-29 15:08:19');
INSERT INTO `t_task` VALUES (7, '更新网站浏览量', 'SYSTEM', 'timedTask.updateVisit', '0 0 0 1/1 * ?', 3, 0, 0, '更新网站浏览量', '2023-12-08 13:57:31', '2023-12-08 14:07:40');

-- ----------------------------
-- Table structure for t_task_log
-- ----------------------------
DROP TABLE IF EXISTS `t_task_log`;
CREATE TABLE `t_task_log`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `task_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `task_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `task_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '日志信息',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '执行状态 (0失败 1正常)',
  `error_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '错误信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 739 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_task_log
-- ----------------------------
INSERT INTO `t_task_log` VALUES (738, '更新网站浏览量', 'SYSTEM', 'timedTask.updateVisit', '更新网站浏览量 总共耗时：11毫秒', 1, NULL, '2025-02-20 00:00:00');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户密码',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '头像',
  `web_site` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '个人网站',
  `intro` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '个人简介',
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号',
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录ip',
  `ip_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地址',
  `login_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '登录方式 (1手机号 2QQ 3Gitee 4Github)',
  `is_disable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否禁用 (0否 1是)',
  `login_time` datetime NULL DEFAULT NULL COMMENT '登录时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (3, '测试账号', 'test', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'https://junlty.top/91dc6c88cfff62096242e.jpg', '', '个人简介', 'test@qq.com', '127.0.0.1', '局域网|局域网||', 1, 0, '2025-02-14 15:09:09', '2022-11-30 21:34:26', '2025-02-14 15:09:09');
INSERT INTO `t_user` VALUES (4, '管理员', 'admin', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'https://junlty.top/91dc6c88cfff62096242e.jpg', '', '个人简介', 'test@qq.com', '127.0.0.1', '局域网|局域网||', 1, 0, '2025-02-21 10:53:59', '2022-11-30 21:34:26', '2025-02-21 10:53:59');
INSERT INTO `t_user` VALUES (66, '用户1892770624607457282', '15188287153', '3a374582c968fef0c10d434df17e79ef8454ef6d0e10b62b75a2f94b6a6ab2ba', 'https://junlty.top/config/05e165c224622b40bc4c0b53f1b5d09b.jpg', '', '', '15188287153', '127.0.0.1', '局域网|局域网||', 1, 0, '2025-02-21 11:24:28', '2025-02-21 10:57:38', '2025-02-21 11:24:28');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int NOT NULL COMMENT '用户id',
  `role_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (50, 3, '3');
INSERT INTO `t_user_role` VALUES (58, 16, '2');
INSERT INTO `t_user_role` VALUES (59, 17, '2');
INSERT INTO `t_user_role` VALUES (60, 18, '2');
INSERT INTO `t_user_role` VALUES (61, 19, '2');
INSERT INTO `t_user_role` VALUES (62, 20, '2');
INSERT INTO `t_user_role` VALUES (63, 21, '2');
INSERT INTO `t_user_role` VALUES (64, 22, '2');
INSERT INTO `t_user_role` VALUES (65, 1, '1');
INSERT INTO `t_user_role` VALUES (66, 23, '2');
INSERT INTO `t_user_role` VALUES (67, 24, '2');
INSERT INTO `t_user_role` VALUES (68, 25, '2');
INSERT INTO `t_user_role` VALUES (69, 26, '2');
INSERT INTO `t_user_role` VALUES (70, 27, '2');
INSERT INTO `t_user_role` VALUES (71, 28, '2');
INSERT INTO `t_user_role` VALUES (72, 29, '2');
INSERT INTO `t_user_role` VALUES (73, 30, '2');
INSERT INTO `t_user_role` VALUES (78, 31, '1');
INSERT INTO `t_user_role` VALUES (79, 32, '2');
INSERT INTO `t_user_role` VALUES (82, 34, '1');
INSERT INTO `t_user_role` VALUES (85, 35, '2');
INSERT INTO `t_user_role` VALUES (86, 36, '2');
INSERT INTO `t_user_role` VALUES (87, 56, '2');
INSERT INTO `t_user_role` VALUES (88, 33, '2');
INSERT INTO `t_user_role` VALUES (89, 57, '2');
INSERT INTO `t_user_role` VALUES (90, 58, '2');
INSERT INTO `t_user_role` VALUES (91, 59, '2');
INSERT INTO `t_user_role` VALUES (92, 60, '2');
INSERT INTO `t_user_role` VALUES (93, 61, '2');
INSERT INTO `t_user_role` VALUES (94, 62, '2');
INSERT INTO `t_user_role` VALUES (95, 63, '2');
INSERT INTO `t_user_role` VALUES (96, 64, '2');
INSERT INTO `t_user_role` VALUES (97, 65, '2');
INSERT INTO `t_user_role` VALUES (98, 4, '1');
INSERT INTO `t_user_role` VALUES (99, 66, '2');

-- ----------------------------
-- Table structure for t_visit_log
-- ----------------------------
DROP TABLE IF EXISTS `t_visit_log`;
CREATE TABLE `t_visit_log`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `page` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '访问页面',
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '访问ip',
  `ip_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '访问地址',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '操作系统',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '浏览器',
  `create_time` datetime NOT NULL COMMENT '访问时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10016 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_visit_log
-- ----------------------------
INSERT INTO `t_visit_log` VALUES (9986, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 10:52:46');
INSERT INTO `t_visit_log` VALUES (9987, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 10:53:01');
INSERT INTO `t_visit_log` VALUES (9988, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 10:53:33');
INSERT INTO `t_visit_log` VALUES (9989, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 10:53:39');
INSERT INTO `t_visit_log` VALUES (9990, '留言', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:00:01');
INSERT INTO `t_visit_log` VALUES (9991, '友链', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:00:03');
INSERT INTO `t_visit_log` VALUES (9992, '归档', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:00:05');
INSERT INTO `t_visit_log` VALUES (9993, '相册', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:00:06');
INSERT INTO `t_visit_log` VALUES (9994, '留言', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:00:09');
INSERT INTO `t_visit_log` VALUES (9995, '留言', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:06:25');
INSERT INTO `t_visit_log` VALUES (9996, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:06:37');
INSERT INTO `t_visit_log` VALUES (9997, '留言', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:06:37');
INSERT INTO `t_visit_log` VALUES (9998, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:10:38');
INSERT INTO `t_visit_log` VALUES (9999, '留言', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:10:39');
INSERT INTO `t_visit_log` VALUES (10000, '友链', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:10:41');
INSERT INTO `t_visit_log` VALUES (10001, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:10:42');
INSERT INTO `t_visit_log` VALUES (10002, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:13:41');
INSERT INTO `t_visit_log` VALUES (10003, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:13:53');
INSERT INTO `t_visit_log` VALUES (10004, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:14:13');
INSERT INTO `t_visit_log` VALUES (10005, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:15:00');
INSERT INTO `t_visit_log` VALUES (10006, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:15:12');
INSERT INTO `t_visit_log` VALUES (10007, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:20:12');
INSERT INTO `t_visit_log` VALUES (10008, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:20:55');
INSERT INTO `t_visit_log` VALUES (10009, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:20:58');
INSERT INTO `t_visit_log` VALUES (10010, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:21:24');
INSERT INTO `t_visit_log` VALUES (10011, '文章', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:21:28');
INSERT INTO `t_visit_log` VALUES (10012, '留言', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:21:35');
INSERT INTO `t_visit_log` VALUES (10013, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:24:41');
INSERT INTO `t_visit_log` VALUES (10014, '留言', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:24:42');
INSERT INTO `t_visit_log` VALUES (10015, '首页', '127.0.0.1', '局域网|局域网||', 'Windows NT ??', 'Edge 133', '2025-02-21 11:44:04');

-- ----------------------------
-- Table structure for t_website_visits
-- ----------------------------
DROP TABLE IF EXISTS `t_website_visits`;
CREATE TABLE `t_website_visits`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '访问量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_website_visits
-- ----------------------------
INSERT INTO `t_website_visits` VALUES (1, '3877');

SET FOREIGN_KEY_CHECKS = 1;
