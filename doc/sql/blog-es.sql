/*
 Navicat Premium Dump SQL

 Source Server         : 192.168.229.130
 Source Server Type    : MySQL
 Source Server Version : 80028 (8.0.28)
 Source Host           : 192.168.229.130:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 80028 (8.0.28)
 File Encoding         : 65001

 Date: 10/08/2025 19:29:19
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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `t_album` VALUES (5, '头像', 'https://junlty.top/photo/51939ae397cdbf71a1108fe2886b350b.jpg', '头像', 1, '2024-06-24 01:10:21', NULL);
INSERT INTO `t_album` VALUES (6, '风景', 'https://junlty.top/photo/b3228b8791cf2b6b9c8fd9c2e194c155.jpg', '风景', 1, '2024-06-26 16:20:50', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 190 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES (83, 1, 54, 'https://junlty.top/config/868192a0205153cfe795737f4e9b2e74.png', 'windows-nvm安装', '1.下载链接https://github.com/coreybutler/nvm-windows/releases\n2.配置路径和下载源', '### 1、nvm是什么  ：\nnvm全英文也叫node.js version management，是一个nodejs的版本管理工具。nvm和npm都是node.js版本管理工具，为了解决node.js各种版本存在不兼容现象可以通过它可以安装和切换不同版本的node.js\n### 2、卸载之前安装的node:\n### 3、nvm下载\n1、下载链接https://github.com/coreybutler/nvm-windows/releases\nnvm 1.1.7-setup.zip：安装版\n![](https://junlty.top/article/3c60be96c72cd5ed207e8068f76a1560.png)\n2、配置路径和下载源\n在安装目录，找到 settings.txt 文件 -> 添加下载源\n```Java\nnode_mirror: https://npmmirror.com/mirrors/node/\nnpm_mirror: https://npmmirror.com/mirrors/npm/\n```\n![](https://junlty.top/article/317b756b40835241be7e2e4f1f5370c4.png)\n3、使用管理员打开cmd切换node\n```Java\nnvm list 查看node\nnvm install 16.15.0  安装node\nnvm use 16.15.0  使用node\n```', 1, 0, 0, 0, 1, '2024-03-07 08:49:20', '2025-01-23 10:11:18');
INSERT INTO `t_article` VALUES (96, 1, 61, 'https://junlty.top/config/6c6c2317050c2adfbd8f0fe2f41d2e59.jpg', 'JavaCove部署文档', '1.基础配置1.1服务器：2核2G1.2一个域2.CentOS安装Docker官方网站上有各种环境下的安装指南，', '## 1. 基础配置\n### 1.1 服务器： 2 核 2G\n### 1.2 一个域名\n\n## 2. CentOS 安装 Docker\n\n官方网站上有各种环境下的 [安装指南](https://docs.docker.com/install/)，这里主要介绍 Docker CE 在 CentOS 上的安装。\n\n### 2.1 卸载（可选）\n\n如果之前安装过旧版本的 Docker，可以使用下面命令卸载：\n\n```shell\nyum remove docker \\\n                  docker-client \\\n                  docker-client-latest \\\n                  docker-common \\\n                  docker-latest \\\n                  docker-latest-logrotate \\\n                  docker-logrotate \\\n                  docker-engine\n```\n\n### 2.2 安装 Docker\n将yum源更换为阿里\n```\nsudo wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo\n```\n1. 安装 yum 工具\n\n   ```shell\n   yum install -y yum-utils\n   ```\n\n2. 设置镜像仓库\n\n   ```shell\n   yum-config-manager --add-repo https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo\n   ```\n\n3. 更新 yum 软件包索引\n\n   ```shell\n   yum makecache fast\n   ```\n\n4. 安装 Docker CE\n\n   ```shell\n   yum install docker-ce docker-ce-cli containerd.io\n   ```\n\n### 2.3 启动 Docker\n\n1. 启动 Docker\n\n   ```shell\n   systemctl start docker\n   ```\n\n2. 查看 Docker 版本\n\n   ```shell\n   docker version\n   ```\n3. 设置docker开机自启\n   ```shell\n   systemctl enable docker.service\n   ```\n## 3. CentOS 安装 DockerCompose\n\n### 3.1 安装 DockerCompose\n\n```shell\ncurl -L \"https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)\" -o /usr/local/bin/docker-compose\n```\n\n> 如果下载速度较慢或者下载失败，去[Release 1.29.2 · docker/compose (github.com)](https://github.com/docker/compose/releases/tag/1.29.2)选择相应版本，下载 docker-compose-Linux-x86_64 到本地，更名为`docker-compose`，上传到服务器的`/usr/local/bin`目录下\n\n### 3.2 修改文件权限\n\n```shell\nchmod +x /usr/local/bin/docker-compose\n```\n\n## 4. nginx 配置 https\n\n1. 先去腾讯云或者阿里云申请免费 SSL 证书，然后选择 Nginx 服务器类型下载\n\n   ![](https://junlex.com/article/d85a39567f35aa13ab87e439467f23bf.png)\n\n2. 证书下载之后上传到`/etc/ssl/certs`目录下\n\n3. 在`/usr/local`目录下新建`nginx`文件夹\n\n   ```shell\n   cd /usr/local\n   mkdir nginx\n   ```\n\n4. 创建目录`/usr/local/upload`作为本地文件存储路径\n\n5. 将以下的`nginx.conf`改好后上传到`/usr/local/nginx`下，我的直接贴进来了，仅供参考\n\n   ```shell\n   events {\n   worker_connections  1024;\n   }\n   \n   http {\n   \n       include       mime.types;\n       default_type  application/octet-stream;\n       sendfile        on;\n       keepalive_timeout  65;\n   \n       client_max_body_size     50m;\n       client_body_buffer_size  10m;\n       client_header_timeout    1m;\n       client_body_timeout      1m;\n   \n       gzip on;\n       gzip_min_length  1k;\n       gzip_buffers     4 16k;\n       gzip_comp_level  4;\n       gzip_types text/plain application/javascript application/x-javascript text/css application/xml text/javascript application/x-httpd-php image/jpeg image/gif image/png;\n       gzip_vary on;\n   \n   server {\n   listen  443 ssl;\n   server_name  www.junlty.top;\n   \n           ssl_certificate    /etc/ssl/certs/www.junlty.top.pem;\n           ssl_certificate_key  /etc/ssl/certs/www.junlty.top.key;\n           ssl_session_timeout 5m;\n           ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:ECDHE:ECDH:AES:HIGH:!NULL:!aNULL:!MD5:!ADH:!RC4;\n           ssl_protocols TLSv1 TLSv1.1 TLSv1.2;\n           ssl_prefer_server_ciphers on;\n   \n          location / {\n               root   /usr/local/vue/blog;\n               index  index.html index.htm;\n               try_files $uri $uri/ /index.html;\n           }\n   \n           location ^~ /api/ {\n               proxy_pass http://121.40.246.82:8080/;\n               proxy_set_header   Host             $host;\n               proxy_set_header   X-Real-IP        $remote_addr;\n               proxy_set_header   X-Forwarded-For  $proxy_add_x_forwarded_for;\n           }\n   \n       }\n   \n   server {\n   listen  443 ssl;\n   server_name  admin.junlty.top;\n   \n           ssl_certificate    /etc/ssl/certs/admin.junlty.top.pem;\n           ssl_certificate_key  /etc/ssl/certs/admin.junlty.top.key;\n           ssl_session_timeout 5m;\n           ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:ECDHE:ECDH:AES:HIGH:!NULL:!aNULL:!MD5:!ADH:!RC4;\n           ssl_protocols TLSv1 TLSv1.1 TLSv1.2;\n           ssl_prefer_server_ciphers on;\n   \n          location / {\n               root   /usr/local/vue/admin;\n               index  index.html index.htm;\n               try_files $uri $uri/ /index.html;\n           }\n   \n           location ^~ /api/ {\n               proxy_pass http://121.40.246.82:8080/;\n               proxy_set_header   Host             $host;\n               proxy_set_header   X-Real-IP        $remote_addr;\n               proxy_set_header   X-Forwarded-For  $proxy_add_x_forwarded_for;\n           }\n   \n       }\n   \n   server {\n   listen       80;\n   server_name  www.junlty.top;\n   \n           rewrite ^(.*)$	https://$host$1	permanent;\n   \n       }\n   \n   server {\n   listen       80;\n   server_name  admin.junlty.top;\n   \n           rewrite ^(.*)$	https://$host$1	permanent;\n   \n       }\n   \n   }\n   ```\n\n## 5. 打包前端\n\n1. `npm install`\n\n2. 修改`shoka-admin`和`shoka-blog`的 utils 文件下的 token.ts，将 domain 改成自己的所在域\n\n3. 接着修改前端的`vite.config.ts`代理地址，改成自己的 ip\n\n4. 申请了 Gitee 和 Github 的第三方登录，记得修改前端的应用 id 和回调地址\n\n![](https://junlex.com/article/cdbbd193e45985ad97cbef36a359e386.png)\n\n5. `npm run build`\n\n6. 打包之后将博客前台和后台的`dist`分别重命名为`blog`和`admin`，然后上传到服务器的`/usr/local/vue`目录下（没有就创建）\n\n![](https://junlex.com/article/46b1a2c406b604dd64ccab5866049533.png)\n\n## 6. 打包后端\n\n1. 修改`application.yml`信息后，执行 maven 的 package 命令选择 jar 方式打包\n\n![](https://junlex.com/article/f7cf5a01b1288dbc6df779176de5eecb.png)\n\n2. 在服务器创建`/usr/local/docker`目录，并将`target`中的 jar 包上传到该目录\n3. 修改`doc`文件夹中的`.env`配置文件中的信息，一定确认`docker-compose.yml`中挂载的目录和文件是否存在\n4. 将`doc`文件夹中的文件上传到`/usr/local/docker`目录中\n![](https://junlex.com/article/3d47bdfc9fdc0602745bdaecda826320.png)\n\n## 7. 执行 sh 脚本\n\n**服务器的防火墙端口一定要放开**\n\n```shell\ncd /usr/local/docker\nsh blog-start.sh\n```\n项目就部署完成了，用`docker ps`查看正在运行的容器。\n\n## 8. 最后\n\n有什么问题的话，可以在下方评论区评论。不方便评论的话，可以加我联系方式私聊。写的不对的地方欢迎大家在评论区指出', 1, 0, 0, 0, 1, '2024-10-16 10:18:29', '2025-06-27 14:55:37');

-- ----------------------------
-- Table structure for t_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `t_article_tag`;
CREATE TABLE `t_article_tag`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `article_id` int NOT NULL COMMENT '文章id',
  `tag_id` int NOT NULL COMMENT '标签id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 420 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_article_tag
-- ----------------------------
INSERT INTO `t_article_tag` VALUES (307, 83, 15);
INSERT INTO `t_article_tag` VALUES (374, 96, 32);

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
) ENGINE = InnoDB AUTO_INCREMENT = 581 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_blog_file
-- ----------------------------
INSERT INTO `t_blog_file` VALUES (3, '', 'config', 0, '', '/', 1, '2023-03-08 12:17:10', NULL);
INSERT INTO `t_blog_file` VALUES (107, NULL, 'article', 0, '', '/', 1, '2023-03-10 22:33:33', NULL);
INSERT INTO `t_blog_file` VALUES (140, NULL, 'photo', 0, '', '/', 1, '2023-09-15 10:41:43', NULL);
INSERT INTO `t_blog_file` VALUES (141, NULL, 'articles', 0, '', '/', 1, '2023-09-15 10:42:25', NULL);
INSERT INTO `t_blog_file` VALUES (142, NULL, 'emoji', 0, '', '/', 1, '2023-09-15 10:42:53', NULL);
INSERT INTO `t_blog_file` VALUES (154, 'https://junlty.top/article/7ee6f104979814d2bf420461e3872475.jpg', '7ee6f104979814d2bf420461e3872475', 126160, 'jpg', '/article', 0, '2023-11-24 14:10:58', NULL);
INSERT INTO `t_blog_file` VALUES (155, 'https://junlty.top/article/2f34b0a602ad0079e60c6dbef2a0851e.png', '2f34b0a602ad0079e60c6dbef2a0851e', 861657, 'png', '/article', 0, '2023-11-24 21:03:46', NULL);
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
INSERT INTO `t_blog_file` VALUES (325, 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', 'e8ff32088199b1524da8135a1d2e36e3', 153325, 'jpg', '/config', 0, '2024-06-24 01:06:52', NULL);
INSERT INTO `t_blog_file` VALUES (378, 'https://junlty.top/talk/d754affb162ed0421962d1569ee33b08.jpeg', 'd754affb162ed0421962d1569ee33b08', 161641, 'jpeg', '/talk', 0, '2024-06-26 00:52:02', NULL);
INSERT INTO `t_blog_file` VALUES (379, 'https://junlty.top/article/8c3dd8221c83d73db26280858bb0408a.jpeg', '8c3dd8221c83d73db26280858bb0408a', 215511, 'jpeg', '/article', 0, '2024-06-26 00:54:44', NULL);
INSERT INTO `t_blog_file` VALUES (381, 'https://junlty.top/talk/5fa9e77273ac06125f662a6fe0121082.jpg', '5fa9e77273ac06125f662a6fe0121082', 213375, 'jpg', '/talk', 0, '2024-06-26 16:25:38', NULL);
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
INSERT INTO `t_blog_file` VALUES (567, 'https://junlty.top/article/891b89c2d9d17af8b7ff2010c499fc61.png', '891b89c2d9d17af8b7ff2010c499fc61', 13141, 'png', '/article', 0, '2025-03-13 22:22:04', NULL);
INSERT INTO `t_blog_file` VALUES (568, 'https://junlty.top/article/bdb965c1ab906b15565b92ca322eac94.JPG', 'bdb965c1ab906b15565b92ca322eac94', 1326487, 'JPG', '/article', 0, '2025-03-19 14:30:23', NULL);
INSERT INTO `t_blog_file` VALUES (569, 'https://junlty.top/article/221e33103fbd82febbb47f8c7ed32663.jpg', '221e33103fbd82febbb47f8c7ed32663', 856153, 'jpg', '/article', 0, '2025-03-19 14:31:29', NULL);
INSERT INTO `t_blog_file` VALUES (570, 'https://junlty.top/article/339fd3ad230996e0004c18b78255c485.png', '339fd3ad230996e0004c18b78255c485', 57265, 'png', '/article', 0, '2025-03-19 14:32:17', NULL);
INSERT INTO `t_blog_file` VALUES (571, 'https://junlty.top/article/5d75764d023a1f9e03fc7b3c5fc57374.png', '5d75764d023a1f9e03fc7b3c5fc57374', 15805, 'png', '/article', 0, '2025-03-19 14:32:47', NULL);
INSERT INTO `t_blog_file` VALUES (572, 'https://junlty.top/article/61ac0e6a7af23dc52eb67beee14bb4c7.png', '61ac0e6a7af23dc52eb67beee14bb4c7', 21165, 'png', '/article', 0, '2025-03-19 14:32:57', NULL);
INSERT INTO `t_blog_file` VALUES (573, 'https://junlty.top/article/5cae003689e16e1e5de9f1c789925f75.png', '5cae003689e16e1e5de9f1c789925f75', 7204, 'png', '/article', 0, '2025-03-19 16:49:33', NULL);
INSERT INTO `t_blog_file` VALUES (574, 'https://junlty.top/article/68b451776d02ece0b8b9cbc530406aef.png', '68b451776d02ece0b8b9cbc530406aef', 19915, 'png', '/article', 0, '2025-03-19 16:49:53', NULL);
INSERT INTO `t_blog_file` VALUES (575, 'https://junlty.top/article/fe22d928dc3d5ec20d44582e6f7d1fda.png', 'fe22d928dc3d5ec20d44582e6f7d1fda', 22180, 'png', '/article', 0, '2025-03-19 16:50:03', NULL);
INSERT INTO `t_blog_file` VALUES (576, 'https://junlty.top/article/1e25682f730af3be0ae2133a06f0129a.png', '1e25682f730af3be0ae2133a06f0129a', 37737, 'png', '/article', 0, '2025-03-19 16:50:14', NULL);
INSERT INTO `t_blog_file` VALUES (577, 'https://junlty.top/article/86078fa443927fb62b0d12adf914e96c.jpg', '86078fa443927fb62b0d12adf914e96c', 1721931, 'jpg', '/article', 0, '2025-03-23 10:35:30', NULL);
INSERT INTO `t_blog_file` VALUES (578, 'https://junlty.top/article/9d0be93fade267878b75d0d5f319401f.jpg', '9d0be93fade267878b75d0d5f319401f', 5813383, 'jpg', '/article', 0, '2025-03-23 10:36:07', NULL);
INSERT INTO `t_blog_file` VALUES (579, 'https://junlty.top/config/ed48b9f4cf1b733bba5f5829c733ad10.jpg', 'ed48b9f4cf1b733bba5f5829c733ad10', 252544, 'jpg', '/config', 0, '2025-06-14 21:46:01', NULL);
INSERT INTO `t_blog_file` VALUES (580, 'https://junlty.top/article/ed48b9f4cf1b733bba5f5829c733ad10.jpg', 'ed48b9f4cf1b733bba5f5829c733ad10', 252544, 'jpg', '/article', 0, '2025-06-14 21:46:35', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_carousel
-- ----------------------------
INSERT INTO `t_carousel` VALUES (1, 'https://junlty.top/article/ed48b9f4cf1b733bba5f5829c733ad10.jpg', 1, '', '2025-06-14 21:46:38', NULL);
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
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES (50, 'SpringSecurity', '2023-02-22 12:10:21', '2023-12-07 16:59:30');
INSERT INTO `t_category` VALUES (51, 'Mysql', '2023-09-13 11:44:11', NULL);
INSERT INTO `t_category` VALUES (52, 'Redis', '2023-09-13 11:44:19', NULL);
INSERT INTO `t_category` VALUES (53, '项目实战', '2023-09-13 11:44:29', NULL);
INSERT INTO `t_category` VALUES (54, 'Spring', '2023-09-13 11:44:42', NULL);
INSERT INTO `t_category` VALUES (55, 'Kafka', '2023-12-07 16:58:16', NULL);
INSERT INTO `t_category` VALUES (56, '旅行', '2024-06-17 18:12:54', NULL);
INSERT INTO `t_category` VALUES (57, '主机', '2024-07-01 16:18:26', NULL);
INSERT INTO `t_category` VALUES (58, '前端', '2024-07-10 15:45:26', NULL);
INSERT INTO `t_category` VALUES (59, '面试', '2024-07-10 15:47:38', NULL);
INSERT INTO `t_category` VALUES (60, '就业', '2024-07-10 15:47:44', NULL);
INSERT INTO `t_category` VALUES (61, '项目部署', '2024-10-16 10:16:29', NULL);
INSERT INTO `t_category` VALUES (62, '四年', '2025-05-28 11:00:23', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `t_chat_record` VALUES (118, NULL, '39.144.124.37', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', 'as', '39.144.124.37', '中国|浙江||移动', '2025-02-21 11:26:11');
INSERT INTO `t_chat_record` VALUES (119, NULL, '117.136.111.96', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', '嗷嗷', '117.136.111.96', '中国|浙江|杭州|移动', '2025-03-14 08:53:08');
INSERT INTO `t_chat_record` VALUES (120, NULL, '180.164.0.106', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', '<img src=\'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/aojiao.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>', '180.164.0.106', '中国|上海|上海|电信', '2025-04-19 23:23:12');
INSERT INTO `t_chat_record` VALUES (121, NULL, '115.195.53.74', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', '111', '115.195.53.74', '中国|浙江|杭州|电信', '2025-04-20 11:23:04');
INSERT INTO `t_chat_record` VALUES (122, NULL, '115.195.53.74', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', '<img src=\'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/geixx.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>', '115.195.53.74', '中国|浙江|杭州|电信', '2025-04-20 11:23:15');
INSERT INTO `t_chat_record` VALUES (123, NULL, '115.195.53.74', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', '11', '115.195.53.74', '中国|浙江|杭州|电信', '2025-04-20 11:24:07');
INSERT INTO `t_chat_record` VALUES (124, NULL, '220.191.109.16', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', '111', '220.191.109.16', '中国|浙江|杭州|电信', '2025-05-23 19:19:45');
INSERT INTO `t_chat_record` VALUES (125, NULL, '220.191.109.16', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', '123123', '220.191.109.16', '中国|浙江|杭州|电信', '2025-05-23 19:19:47');
INSERT INTO `t_chat_record` VALUES (126, 1, '天若长久时', 'https://junlty.top/avatar/9fdd8f27220124690c940ec1a28e7e14.png', '123213', '115.206.57.41', '中国|浙江|杭州|电信', '2025-06-14 22:12:11');
INSERT INTO `t_chat_record` VALUES (127, 1, '天若长久时', 'https://junlty.top/avatar/9fdd8f27220124690c940ec1a28e7e14.png', '123213', '115.206.57.41', '中国|浙江|杭州|电信', '2025-06-14 22:12:14');
INSERT INTO `t_chat_record` VALUES (128, 1, '天若长久时', 'https://junlty.top/avatar/9fdd8f27220124690c940ec1a28e7e14.png', '<img src=\'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/touxiao.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>', '115.206.57.41', '中国|浙江|杭州|电信', '2025-06-14 22:12:17');

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
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (2, 1, 71, NULL, NULL, '<img src= \'http://junlty.top/emoji/leng.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>东*我了', 1, NULL, 1, NULL, '杭州', '2023-11-24 14:11:52', NULL);
INSERT INTO `t_comment` VALUES (3, 3, 37, NULL, NULL, '你好', 1, NULL, 1, NULL, '杭州', '2023-11-24 22:21:50', NULL);
INSERT INTO `t_comment` VALUES (6, 2, NULL, NULL, NULL, '<img src= \'http://junlty.top/emoji/tvdoge.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>', 1, NULL, 1, NULL, '杭州', '2023-12-08 00:08:02', NULL);
INSERT INTO `t_comment` VALUES (13, 1, 82, NULL, NULL, '666', 1, NULL, 1, NULL, '杭州', '2024-06-24 01:20:59', NULL);
INSERT INTO `t_comment` VALUES (14, 1, 87, NULL, NULL, '<img src= \'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/re.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/><img src= \'https://myblogoss2.oss-cn-beijing.aliyuncs.com/emoji/re.png\' width=\'21\' height=\'21\' style=\'margin: 0 1px;vertical-align: text-bottom\'/>', 1, NULL, 1, NULL, '杭州', '2024-06-26 15:48:05', NULL);
INSERT INTO `t_comment` VALUES (15, 1, 87, NULL, NULL, '测试获取ip', 1, NULL, 1, NULL, '杭州', '2024-07-01 17:03:29', NULL);
INSERT INTO `t_comment` VALUES (16, 1, 87, NULL, NULL, '测试获取ip', 1, NULL, 1, '127.0.0.1', '杭州', '2024-07-01 17:05:04', NULL);
INSERT INTO `t_comment` VALUES (17, 1, 87, NULL, NULL, '测试获取ip', 1, NULL, 1, '127.0.0.1', '杭州', '2024-07-01 17:08:15', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_exception_log
-- ----------------------------
INSERT INTO `t_exception_log` VALUES (1, '相册模块', '/admin/album/delete/4', 'java.lang.IllegalArgumentException', '删除相册', 'com.ican.controller.AlbumController.deleteAlbum', 'java.lang.IllegalArgumentException:相册下存在照片\ncn.hutool.core.lang.Assert.lambda$isFalse$1(Assert.java:106)\ncn.hutool.core.lang.Assert.isFalse(Assert.java:89)\ncn.hutool.core.lang.Assert.isFalse(Assert.java:106)\ncom.ican.service.impl.AlbumServiceImpl.deleteAlbum(AlbumServiceImpl.java:98)\ncom.ican.service.impl.AlbumServiceImpl$$FastClassBySpringCGLIB$$b3bec2e1.invoke(<generated>)\norg.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\norg.springframework.aop.framework.CglibAopProxy.invokeMethod(CglibAopProxy.java:386)\norg.springframework.aop.framework.CglibAopProxy.access$000(CglibAopProxy.java:85)\norg.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:704)\ncom.ican.service.impl.AlbumServiceImpl$$EnhancerBySpringCGLIB$$f84ce5d.deleteAlbum(<generated>)\ncom.ican.controller.AlbumController.deleteAlbum(AlbumController.java:92)\ncom.ican.controller.AlbumController$$FastClassBySpringCGLIB$$5168fc13.invoke(<generated>)\norg.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\norg.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:793)\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\norg.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:763)\norg.springframework.aop.framework.adapter.AfterReturningAdviceInterceptor.invoke(AfterReturningAdviceInterceptor.java:57)\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\norg.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:763)\norg.springframework.aop.framework.adapter.MethodBeforeAdviceInterceptor.invoke(MethodBeforeAdviceInterceptor.java:58)\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\norg.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:763)\norg.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:64)\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\norg.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:763)\norg.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:97)\norg.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\norg.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:763)\norg.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:708)\ncom.ican.controller.AlbumController$$EnhancerBySpringCGLIB$$78178535.deleteAlbum(<generated>)\njava.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\njava.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\njava.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\njava.base/java.lang.reflect.Method.invoke(Method.java:566)\norg.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:205)\norg.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:150)\norg.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:117)\norg.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:895)\norg.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:808)\norg.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\norg.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1071)\norg.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:964)\norg.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)\norg.springframework.web.servlet.FrameworkServlet.doDelete(FrameworkServlet.java:931)\njavax.servlet.http.HttpServlet.service(HttpServlet.java:702)\norg.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)\njavax.servlet.http.HttpServlet.service(HttpServlet.java:779)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:227)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\norg.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\ncn.dev33.satoken.filter.SaServletFilter.doFilter(SaServletFilter.java:179)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\norg.springframework.web.filter.RequestContextFilter.doFilterInternal(RequestContextFilter.java:100)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\norg.springframework.web.filter.FormContentFilter.doFilterInternal(FormContentFilter.java:93)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\norg.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201)\norg.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:117)\norg.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:189)\norg.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:162)\norg.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:177)\norg.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97)\norg.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:541)\norg.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:135)\norg.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\norg.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78)\norg.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:360)\norg.apache.coyote.http11.Http11Processor.service(Http11Processor.java:399)\norg.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65)\norg.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:891)\norg.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1784)\norg.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\norg.apache.tomcat.util.threads.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1191)\norg.apache.tomcat.util.threads.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:659)\norg.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\njava.base/java.lang.Thread.run(Thread.java:834)\n', '[4]', 'DELETE', '0:0:0:0:0:0:0:1', '局域网|局域网||', 'Windows NT ??', 'Edge 139', '2025-08-10 19:27:07');

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
INSERT INTO `t_friend` VALUES (1, '测试友链', '#409EFF', 'https://junlty.top/config/27b10971c963e55455b09474399460cf.jpg', 'www.junlty.top', '我的道路有自己选择。', '2024-05-30 10:10:02', '2025-08-10 19:13:44');

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
) ENGINE = InnoDB AUTO_INCREMENT = 134 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `t_menu` VALUES (111, 1, 'C', '修改文章', 'write/:articleId', 'edit', '/blog/article/write', 'blog:article:list', 1, 0, 5, '2023-02-21 15:40:11', '2025-07-23 22:07:52');
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
INSERT INTO `t_menu` VALUES (133, 1, 'C', '索引管理', 'index', 'documentation', '/blog/index/list', 'blog:index:list', 0, 0, 6, '2022-12-04 09:23:01', '2025-07-22 22:07:28');

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
) ENGINE = InnoDB AUTO_INCREMENT = 104 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_message
-- ----------------------------
INSERT INTO `t_message` VALUES (98, '游客', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', '你哈', '39.71.140.53', '中国|山东|济南|联通', 1, '2024-12-27 08:51:12', NULL);
INSERT INTO `t_message` VALUES (99, '游客', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', '你好', '58.250.181.111', '中国|广东|深圳|联通', 1, '2025-04-21 10:37:52', NULL);
INSERT INTO `t_message` VALUES (103, '游客', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', '你', '182.103.11.210', '中国|江西|南昌|电信', 1, '2025-05-23 23:57:37', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2710 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_operation_log
-- ----------------------------
INSERT INTO `t_operation_log` VALUES (2677, '评论模块', '删除', '/admin/comment/delete', 'com.ican.controller.CommentController.deleteComment', '删除评论', '[[45,39,24,22,23,21,19]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 130, '2025-08-10 19:11:03');
INSERT INTO `t_operation_log` VALUES (2678, '评论模块', '删除', '/admin/comment/delete', 'com.ican.controller.CommentController.deleteComment', '删除评论', '[[8,9,7,5]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 279, '2025-08-10 19:11:40');
INSERT INTO `t_operation_log` VALUES (2679, '评论模块', '删除', '/admin/comment/delete', 'com.ican.controller.CommentController.deleteComment', '删除评论', '[[4]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 233, '2025-08-10 19:11:47');
INSERT INTO `t_operation_log` VALUES (2680, '文章模块', '删除', '/admin/article/delete', 'com.ican.controller.ArticleController.deleteArticle', '删除文章', '[[94,98,156,100,99,97,95,93,92]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 56, '2025-08-10 19:12:05');
INSERT INTO `t_operation_log` VALUES (2681, '文章模块', '删除', '/admin/article/delete', 'com.ican.controller.ArticleController.deleteArticle', '删除文章', '[[91,90,89,88,87,84,82,81]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 324, '2025-08-10 19:12:18');
INSERT INTO `t_operation_log` VALUES (2682, '文章模块', '删除', '/admin/article/delete', 'com.ican.controller.ArticleController.deleteArticle', '删除文章', '[[61]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 222, '2025-08-10 19:12:29');
INSERT INTO `t_operation_log` VALUES (2683, '文章模块', '删除', '/admin/article/delete', 'com.ican.controller.ArticleController.deleteArticle', '删除文章', '[[80,79]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 232, '2025-08-10 19:12:35');
INSERT INTO `t_operation_log` VALUES (2684, '文章模块', '删除', '/admin/article/delete', 'com.ican.controller.ArticleController.deleteArticle', '删除文章', '[[77,78,71]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 262, '2025-08-10 19:12:45');
INSERT INTO `t_operation_log` VALUES (2685, '留言模块', '删除', '/admin/message/delete', 'com.ican.controller.MessageController.deleteMessage', '删除留言', '[[93,92,91,90,89]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 251, '2025-08-10 19:13:01');
INSERT INTO `t_operation_log` VALUES (2686, '留言模块', '删除', '/admin/message/delete', 'com.ican.controller.MessageController.deleteMessage', '删除留言', '[[102,101,100,97,96,95,94]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 45, '2025-08-10 19:13:12');
INSERT INTO `t_operation_log` VALUES (2687, '友链模块', '修改', '/admin/friend/update', 'com.ican.controller.FriendController.updateFriend', '修改友链', '[{\"avatar\":\"https://junlty.top/config/27b10971c963e55455b09474399460cf.jpg\",\"color\":\"#409EFF\",\"id\":1,\"introduction\":\"我的道路有自己选择。\",\"name\":\"测试友链\",\"url\":\"www.junlty.top\"}]', 'PUT', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 231, '2025-08-10 19:13:45');
INSERT INTO `t_operation_log` VALUES (2688, '网站配置模块', '修改', '/admin/site/update', 'com.ican.controller.SiteConfigController.updateSiteConfig', '更新网站配置', '[{\"aboutBackgroundImage\":\"http://junlty.top/config/b2b466fa65bb01163fbe8fe5daf2298b.jpg\",\"aboutMe\":\"``` java\\n/**\\n * 个人简介：\\n * \\n * @author guojun\\n * @date 2000/12/12 12:12\\n */\\nSystem.out.println(\\\"道阻且长 行则将至\\\") ；\\n```\",\"aliCode\":\"https://static.ttkwsd.top/config/f0be9dc73e230d8821179b9303a9ff49.jpg\",\"archiveBackgroundImage\":\"http://junlty.top/config/ef30f44e9d16a5988b1df68656c35171.jpg\",\"articleCover\":\"http://junlty.top/config/6c6c2317050c2adfbd8f0fe2f41d2e59.jpg\",\"authorAvatar\":\"https://junlty.top/config/27b10971c963e55455b09474399460cf.jpg\",\"bilibili\":\"\",\"categoryBackgroundImage\":\"http://junlty.top/config/41086d0761868fcfc8559860338ef425.jpg\",\"commentCheck\":0,\"createSiteTime\":\"2023-08-25\",\"friendBackgroundImage\":\"https://junlty.top/config/ed48b9f4cf1b733bba5f5829c733ad10.jpg\",\"gitee\":\"https://gitee.com/guo-_jun\",\"github\":\"https://github.com/nansheng1212\",\"id\":1,\"isChat\":1,\"isMusic\":0,\"isReward\":0,\"loginList\":\",gitee,github,qq\",\"messageBackgroundImage\":\"http://junlty.top/config/42866dae6f37c8dba35d0e524f5cb8e0.jpg\",\"messageCheck\":0,\"musicId\":\"10135781464\",\"photoBackgroundImage\":\"http://junlty.top/config/v2-7ee6f104979814d2bf420461e3872475_r.jpg\",\"pictureBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"qq\":\"1517233142\",\"recordNumber\":\"豫ICP备\",\"siteAddress\":\"www.junlty.top\",\"siteAuthor\":\"天若长久时\",\"siteIntro\":\"我的道路有自己选择。\",\"siteName\":\"Java Cove\",\"siteNotice\":\"前段时间写毕设，服务器跑服务了，现在答辩过啦！！！网站恢复！<a href=\\\"https://blog.csdn.net/qq_52183856?spm=1000.2115.3001.5343\\\" style=\\\"color: #49b1f5;\\\">CSDN</a>\\n有技术问题请在gitee提交Issue！！！！\",\"socialList\":\"qq,gitee,github\",\"tagBackgroundImage\":\"http://junlty.top/config/a621a9ff5d15937b01850fb0c70bb6f6.jpg\",\"talkBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"touristAvatar\":\"https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg\",\"userAvatar\":\"https://junlty.top/config/05e165c224622b40bc4c0b53f1b5d09b.jpg\",\"userBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"websocketUrl\":\"https://ws.junlty.top/websocket\",\"weiXinCode\":\"https://static.ttkwsd.top/config/994a286571b002e93281899cb402bd15.png\"}]', 'PUT', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 170, '2025-08-10 19:18:37');
INSERT INTO `t_operation_log` VALUES (2689, '网站配置模块', '修改', '/admin/site/update', 'com.ican.controller.SiteConfigController.updateSiteConfig', '更新网站配置', '[{\"aboutBackgroundImage\":\"http://junlty.top/config/b2b466fa65bb01163fbe8fe5daf2298b.jpg\",\"aboutMe\":\"``` java\\n/**\\n * 个人简介：\\n * \\n */\\nSystem.out.println(\\\"道阻且长 行则将至\\\") ；\\n```\",\"aliCode\":\"https://static.ttkwsd.top/config/f0be9dc73e230d8821179b9303a9ff49.jpg\",\"archiveBackgroundImage\":\"http://junlty.top/config/ef30f44e9d16a5988b1df68656c35171.jpg\",\"articleCover\":\"http://junlty.top/config/6c6c2317050c2adfbd8f0fe2f41d2e59.jpg\",\"authorAvatar\":\"https://junlty.top/config/27b10971c963e55455b09474399460cf.jpg\",\"bilibili\":\"\",\"categoryBackgroundImage\":\"http://junlty.top/config/41086d0761868fcfc8559860338ef425.jpg\",\"commentCheck\":0,\"createSiteTime\":\"2023-08-25\",\"friendBackgroundImage\":\"https://junlty.top/config/ed48b9f4cf1b733bba5f5829c733ad10.jpg\",\"gitee\":\"https://gitee.com/guo-_jun\",\"github\":\"https://github.com/nansheng1212\",\"id\":1,\"isChat\":1,\"isMusic\":0,\"isReward\":0,\"loginList\":\",gitee,github,qq\",\"messageBackgroundImage\":\"http://junlty.top/config/42866dae6f37c8dba35d0e524f5cb8e0.jpg\",\"messageCheck\":0,\"musicId\":\"10135781464\",\"photoBackgroundImage\":\"http://junlty.top/config/v2-7ee6f104979814d2bf420461e3872475_r.jpg\",\"pictureBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"qq\":\"1517233142\",\"recordNumber\":\"豫ICP备\",\"siteAddress\":\"www.junlty.top\",\"siteAuthor\":\"天若长久时\",\"siteIntro\":\"我的道路有自己选择。\",\"siteName\":\"Java Cove\",\"siteNotice\":\"前段时间写毕设，服务器跑服务了，现在答辩过啦！！！网站恢复！<a href=\\\"https://blog.csdn.net/qq_52183856?spm=1000.2115.3001.5343\\\" style=\\\"color: #49b1f5;\\\">CSDN</a>\\n有技术问题请在gitee提交Issue！！！！\",\"socialList\":\"qq,gitee,github\",\"tagBackgroundImage\":\"http://junlty.top/config/a621a9ff5d15937b01850fb0c70bb6f6.jpg\",\"talkBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"touristAvatar\":\"https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg\",\"userAvatar\":\"https://junlty.top/config/05e165c224622b40bc4c0b53f1b5d09b.jpg\",\"userBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"websocketUrl\":\"https://ws.junlty.top/websocket\",\"weiXinCode\":\"https://static.ttkwsd.top/config/994a286571b002e93281899cb402bd15.png\"}]', 'PUT', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 109, '2025-08-10 19:18:49');
INSERT INTO `t_operation_log` VALUES (2690, '网站配置模块', '修改', '/admin/site/update', 'com.ican.controller.SiteConfigController.updateSiteConfig', '更新网站配置', '[{\"aboutBackgroundImage\":\"http://junlty.top/config/b2b466fa65bb01163fbe8fe5daf2298b.jpg\",\"aboutMe\":\"``` java\\n/**\\n * 个人简介：\\n * \\n */\\nSystem.out.println(\\\"道阻且长 行则将至\\\") ；\\n```\",\"aliCode\":\"https://static.ttkwsd.top/config/f0be9dc73e230d8821179b9303a9ff49.jpg\",\"archiveBackgroundImage\":\"http://junlty.top/config/ef30f44e9d16a5988b1df68656c35171.jpg\",\"articleCover\":\"http://junlty.top/config/6c6c2317050c2adfbd8f0fe2f41d2e59.jpg\",\"authorAvatar\":\"https://junlty.top/config/27b10971c963e55455b09474399460cf.jpg\",\"bilibili\":\"\",\"categoryBackgroundImage\":\"http://junlty.top/config/41086d0761868fcfc8559860338ef425.jpg\",\"commentCheck\":0,\"createSiteTime\":\"2023-08-25\",\"friendBackgroundImage\":\"https://junlty.top/config/ed48b9f4cf1b733bba5f5829c733ad10.jpg\",\"gitee\":\"https://gitee.com/guo-_jun\",\"github\":\"https://github.com/nansheng1212\",\"id\":1,\"isChat\":1,\"isMusic\":0,\"isReward\":0,\"loginList\":\",gitee,github,qq\",\"messageBackgroundImage\":\"http://junlty.top/config/42866dae6f37c8dba35d0e524f5cb8e0.jpg\",\"messageCheck\":0,\"musicId\":\"10135781464\",\"photoBackgroundImage\":\"http://junlty.top/config/v2-7ee6f104979814d2bf420461e3872475_r.jpg\",\"pictureBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"qq\":\"1517233142\",\"recordNumber\":\"豫ICP备\",\"siteAddress\":\"www.junlty.top\",\"siteAuthor\":\"天若长久时\",\"siteIntro\":\"我的道路有自己选择。\",\"siteName\":\"Java Cove\",\"siteNotice\":\"前段时间写毕设，服务器跑服务了，现在答辩过啦！！！网站恢复！<a href=\\\"https://blog.csdn.net/qq_52183856?spm=1000.2115.3001.5343\\\" style=\\\"color: #49b1f5;\\\">CSDN</a>\\n有技术问题请在gitee提交Issue！！！！\",\"socialList\":\"qq,gitee,github\",\"tagBackgroundImage\":\"http://junlty.top/config/a621a9ff5d15937b01850fb0c70bb6f6.jpg\",\"talkBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"touristAvatar\":\"https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg\",\"userAvatar\":\"https://junlty.top/config/05e165c224622b40bc4c0b53f1b5d09b.jpg\",\"userBackgroundImage\":\"https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg\",\"websocketUrl\":\"http://localhost:8080/websocket\",\"weiXinCode\":\"https://static.ttkwsd.top/config/994a286571b002e93281899cb402bd15.png\"}]', 'PUT', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 1433, '2025-08-10 19:23:07');
INSERT INTO `t_operation_log` VALUES (2691, '照片模块', '删除', '/admin/photo/delete', 'com.ican.controller.PhotoController.deletePhoto', '删除照片', '[[89,90,91,92,93,94,95,97,98,99,100,101,102,103,104,105,106,107]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 249, '2025-08-10 19:27:13');
INSERT INTO `t_operation_log` VALUES (2692, '照片模块', '删除', '/admin/photo/delete', 'com.ican.controller.PhotoController.deletePhoto', '删除照片', '[[108]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 52, '2025-08-10 19:27:17');
INSERT INTO `t_operation_log` VALUES (2693, '照片模块', '删除', '/admin/photo/delete', 'com.ican.controller.PhotoController.deletePhoto', '删除照片', '[[109]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 89, '2025-08-10 19:27:24');
INSERT INTO `t_operation_log` VALUES (2694, '照片模块', '删除', '/admin/photo/delete', 'com.ican.controller.PhotoController.deletePhoto', '删除照片', '[[111]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 57, '2025-08-10 19:27:27');
INSERT INTO `t_operation_log` VALUES (2695, '照片模块', '删除', '/admin/photo/delete', 'com.ican.controller.PhotoController.deletePhoto', '删除照片', '[[110]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 212, '2025-08-10 19:27:29');
INSERT INTO `t_operation_log` VALUES (2696, '照片模块', '删除', '/admin/photo/delete', 'com.ican.controller.PhotoController.deletePhoto', '删除照片', '[[117]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 342, '2025-08-10 19:27:31');
INSERT INTO `t_operation_log` VALUES (2697, '照片模块', '删除', '/admin/photo/delete', 'com.ican.controller.PhotoController.deletePhoto', '删除照片', '[[117]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 238, '2025-08-10 19:27:35');
INSERT INTO `t_operation_log` VALUES (2698, '相册模块', '删除', '/admin/album/delete/4', 'com.ican.controller.AlbumController.deleteAlbum', '删除相册', '[4]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 104, '2025-08-10 19:27:46');
INSERT INTO `t_operation_log` VALUES (2699, '照片模块', '删除', '/admin/photo/delete', 'com.ican.controller.PhotoController.deletePhoto', '删除照片', '[[123]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 331, '2025-08-10 19:27:54');
INSERT INTO `t_operation_log` VALUES (2700, '照片模块', '删除', '/admin/photo/delete', 'com.ican.controller.PhotoController.deletePhoto', '删除照片', '[[124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 55, '2025-08-10 19:27:56');
INSERT INTO `t_operation_log` VALUES (2701, '照片模块', '删除', '/admin/photo/delete', 'com.ican.controller.PhotoController.deletePhoto', '删除照片', '[[142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 70, '2025-08-10 19:28:00');
INSERT INTO `t_operation_log` VALUES (2702, '照片模块', '删除', '/admin/photo/delete', 'com.ican.controller.PhotoController.deletePhoto', '删除照片', '[[160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,176,177,178]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 286, '2025-08-10 19:28:02');
INSERT INTO `t_operation_log` VALUES (2703, '照片模块', '删除', '/admin/photo/delete', 'com.ican.controller.PhotoController.deletePhoto', '删除照片', '[[179,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 259, '2025-08-10 19:28:06');
INSERT INTO `t_operation_log` VALUES (2704, '照片模块', '删除', '/admin/photo/delete', 'com.ican.controller.PhotoController.deletePhoto', '删除照片', '[[198,199,200,201,202]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 276, '2025-08-10 19:28:09');
INSERT INTO `t_operation_log` VALUES (2705, '照片模块', '删除', '/admin/photo/delete', 'com.ican.controller.PhotoController.deletePhoto', '删除照片', '[[198,199,200,201]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 368, '2025-08-10 19:28:14');
INSERT INTO `t_operation_log` VALUES (2706, '照片模块', '删除', '/admin/photo/delete', 'com.ican.controller.PhotoController.deletePhoto', '删除照片', '[[201]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 37, '2025-08-10 19:28:17');
INSERT INTO `t_operation_log` VALUES (2707, '相册模块', '删除', '/admin/album/delete/7', 'com.ican.controller.AlbumController.deleteAlbum', '删除相册', '[7]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 73, '2025-08-10 19:28:23');
INSERT INTO `t_operation_log` VALUES (2708, '照片模块', '删除', '/admin/photo/delete', 'com.ican.controller.PhotoController.deletePhoto', '删除照片', '[[19,20,21,23,24,25,26]]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 250, '2025-08-10 19:28:29');
INSERT INTO `t_operation_log` VALUES (2709, '相册模块', '删除', '/admin/album/delete/3', 'com.ican.controller.AlbumController.deleteAlbum', '删除相册', '[3]', 'DELETE', '{\"code\":200,\"flag\":true,\"msg\":\"操作成功\"}', 1, '阿俊', '0:0:0:0:0:0:0:1', '局域网|局域网||', 97, '2025-08-10 19:29:02');

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
INSERT INTO `t_photo` VALUES (54, 1, '1804914379285061634', NULL, 'https://junlty.top/photo/bab2c444554ab57e486b140091b6bd28.jpg', '2024-06-24 00:28:16', NULL);
INSERT INTO `t_photo` VALUES (55, 1, '1804915990325616642', NULL, 'https://junlty.top/photo/84902e0810e3e6cc577270aab01e06bd.jpg', '2024-06-24 00:34:40', NULL);
INSERT INTO `t_photo` VALUES (60, 1, '1804919971953238017', NULL, 'https://junlty.top/photo/d0095bf8d7d87374461cb9d565e21af0.jpg', '2024-06-24 00:50:30', NULL);
INSERT INTO `t_photo` VALUES (61, 5, '1804925967807275010', NULL, 'https://junlty.top/photo/8140ce1995ba0be9719a9be7c2570613.jpg', '2024-06-24 01:14:19', NULL);
INSERT INTO `t_photo` VALUES (114, 5, '1805597296623820801', NULL, 'https://junlty.top/photo/05e165c224622b40bc4c0b53f1b5d09b.jpg', '2024-06-25 21:41:57', NULL);
INSERT INTO `t_photo` VALUES (116, 6, '1805879209793474561', NULL, 'https://junlty.top/photo/05f4bf3d14a10c4108cc6eb70148558a.jpg', '2024-06-26 16:22:10', NULL);
INSERT INTO `t_photo` VALUES (118, 6, '1805886158849245186', NULL, 'https://junlty.top/photo/fb9a187220cdd284ae1ba3fb49010bc0.jpg', '2024-06-26 16:49:47', NULL);
INSERT INTO `t_photo` VALUES (119, 6, '1805886928046850050', NULL, 'https://junlty.top/photo/05f4bf3d14a10c4108cc6eb70148558a.jpg', '2024-06-26 16:52:50', NULL);
INSERT INTO `t_photo` VALUES (120, 6, '1805887174940360705', NULL, 'https://junlty.top/photo/6995383b37b2d3b859ae480e698b8f1b.png', '2024-06-26 16:53:49', NULL);
INSERT INTO `t_photo` VALUES (121, 6, '1806524742240493569', NULL, 'https://junlty.top/photo/1d4c28602df625239b0e78bd23fd13eb.png', '2024-06-28 11:07:17', NULL);
INSERT INTO `t_photo` VALUES (122, 6, '1806984977482743809', NULL, 'https://junlty.top/photo/f49e7b8bcec84408b1b95f30ae84da82.jpeg', '2024-06-29 17:36:05', NULL);
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
INSERT INTO `t_role` VALUES ('1', 'admin', '管理员', 0, '2022-11-03 17:41:57', '2025-07-22 22:07:04');
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
) ENGINE = InnoDB AUTO_INCREMENT = 6699 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
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
INSERT INTO `t_role_menu` VALUES (6595, '1', 1);
INSERT INTO `t_role_menu` VALUES (6596, '1', 108);
INSERT INTO `t_role_menu` VALUES (6597, '1', 73);
INSERT INTO `t_role_menu` VALUES (6598, '1', 80);
INSERT INTO `t_role_menu` VALUES (6599, '1', 81);
INSERT INTO `t_role_menu` VALUES (6600, '1', 82);
INSERT INTO `t_role_menu` VALUES (6601, '1', 83);
INSERT INTO `t_role_menu` VALUES (6602, '1', 84);
INSERT INTO `t_role_menu` VALUES (6603, '1', 85);
INSERT INTO `t_role_menu` VALUES (6604, '1', 86);
INSERT INTO `t_role_menu` VALUES (6605, '1', 87);
INSERT INTO `t_role_menu` VALUES (6606, '1', 88);
INSERT INTO `t_role_menu` VALUES (6607, '1', 3);
INSERT INTO `t_role_menu` VALUES (6608, '1', 5);
INSERT INTO `t_role_menu` VALUES (6609, '1', 6);
INSERT INTO `t_role_menu` VALUES (6610, '1', 7);
INSERT INTO `t_role_menu` VALUES (6611, '1', 4);
INSERT INTO `t_role_menu` VALUES (6612, '1', 8);
INSERT INTO `t_role_menu` VALUES (6613, '1', 9);
INSERT INTO `t_role_menu` VALUES (6614, '1', 10);
INSERT INTO `t_role_menu` VALUES (6615, '1', 111);
INSERT INTO `t_role_menu` VALUES (6616, '1', 133);
INSERT INTO `t_role_menu` VALUES (6617, '1', 36);
INSERT INTO `t_role_menu` VALUES (6618, '1', 38);
INSERT INTO `t_role_menu` VALUES (6619, '1', 99);
INSERT INTO `t_role_menu` VALUES (6620, '1', 100);
INSERT INTO `t_role_menu` VALUES (6621, '1', 101);
INSERT INTO `t_role_menu` VALUES (6622, '1', 102);
INSERT INTO `t_role_menu` VALUES (6623, '1', 37);
INSERT INTO `t_role_menu` VALUES (6624, '1', 42);
INSERT INTO `t_role_menu` VALUES (6625, '1', 45);
INSERT INTO `t_role_menu` VALUES (6626, '1', 11);
INSERT INTO `t_role_menu` VALUES (6627, '1', 12);
INSERT INTO `t_role_menu` VALUES (6628, '1', 15);
INSERT INTO `t_role_menu` VALUES (6629, '1', 16);
INSERT INTO `t_role_menu` VALUES (6630, '1', 17);
INSERT INTO `t_role_menu` VALUES (6631, '1', 60);
INSERT INTO `t_role_menu` VALUES (6632, '1', 13);
INSERT INTO `t_role_menu` VALUES (6633, '1', 18);
INSERT INTO `t_role_menu` VALUES (6634, '1', 19);
INSERT INTO `t_role_menu` VALUES (6635, '1', 20);
INSERT INTO `t_role_menu` VALUES (6636, '1', 33);
INSERT INTO `t_role_menu` VALUES (6637, '1', 14);
INSERT INTO `t_role_menu` VALUES (6638, '1', 69);
INSERT INTO `t_role_menu` VALUES (6639, '1', 70);
INSERT INTO `t_role_menu` VALUES (6640, '1', 95);
INSERT INTO `t_role_menu` VALUES (6641, '1', 96);
INSERT INTO `t_role_menu` VALUES (6642, '1', 97);
INSERT INTO `t_role_menu` VALUES (6643, '1', 98);
INSERT INTO `t_role_menu` VALUES (6644, '1', 123);
INSERT INTO `t_role_menu` VALUES (6645, '1', 124);
INSERT INTO `t_role_menu` VALUES (6646, '1', 125);
INSERT INTO `t_role_menu` VALUES (6647, '1', 126);
INSERT INTO `t_role_menu` VALUES (6648, '1', 21);
INSERT INTO `t_role_menu` VALUES (6649, '1', 22);
INSERT INTO `t_role_menu` VALUES (6650, '1', 24);
INSERT INTO `t_role_menu` VALUES (6651, '1', 23);
INSERT INTO `t_role_menu` VALUES (6652, '1', 25);
INSERT INTO `t_role_menu` VALUES (6653, '1', 93);
INSERT INTO `t_role_menu` VALUES (6654, '1', 94);
INSERT INTO `t_role_menu` VALUES (6655, '1', 104);
INSERT INTO `t_role_menu` VALUES (6656, '1', 105);
INSERT INTO `t_role_menu` VALUES (6657, '1', 106);
INSERT INTO `t_role_menu` VALUES (6658, '1', 26);
INSERT INTO `t_role_menu` VALUES (6659, '1', 53);
INSERT INTO `t_role_menu` VALUES (6660, '1', 71);
INSERT INTO `t_role_menu` VALUES (6661, '1', 27);
INSERT INTO `t_role_menu` VALUES (6662, '1', 28);
INSERT INTO `t_role_menu` VALUES (6663, '1', 29);
INSERT INTO `t_role_menu` VALUES (6664, '1', 30);
INSERT INTO `t_role_menu` VALUES (6665, '1', 31);
INSERT INTO `t_role_menu` VALUES (6666, '1', 32);
INSERT INTO `t_role_menu` VALUES (6667, '1', 34);
INSERT INTO `t_role_menu` VALUES (6668, '1', 35);
INSERT INTO `t_role_menu` VALUES (6669, '1', 39);
INSERT INTO `t_role_menu` VALUES (6670, '1', 40);
INSERT INTO `t_role_menu` VALUES (6671, '1', 41);
INSERT INTO `t_role_menu` VALUES (6672, '1', 61);
INSERT INTO `t_role_menu` VALUES (6673, '1', 62);
INSERT INTO `t_role_menu` VALUES (6674, '1', 63);
INSERT INTO `t_role_menu` VALUES (6675, '1', 64);
INSERT INTO `t_role_menu` VALUES (6676, '1', 65);
INSERT INTO `t_role_menu` VALUES (6677, '1', 66);
INSERT INTO `t_role_menu` VALUES (6678, '1', 103);
INSERT INTO `t_role_menu` VALUES (6679, '1', 51);
INSERT INTO `t_role_menu` VALUES (6680, '1', 54);
INSERT INTO `t_role_menu` VALUES (6681, '1', 55);
INSERT INTO `t_role_menu` VALUES (6682, '1', 56);
INSERT INTO `t_role_menu` VALUES (6683, '1', 57);
INSERT INTO `t_role_menu` VALUES (6684, '1', 58);
INSERT INTO `t_role_menu` VALUES (6685, '1', 52);
INSERT INTO `t_role_menu` VALUES (6686, '1', 76);
INSERT INTO `t_role_menu` VALUES (6687, '1', 77);
INSERT INTO `t_role_menu` VALUES (6688, '1', 78);
INSERT INTO `t_role_menu` VALUES (6689, '1', 79);
INSERT INTO `t_role_menu` VALUES (6690, '1', 46);
INSERT INTO `t_role_menu` VALUES (6691, '1', 67);
INSERT INTO `t_role_menu` VALUES (6692, '1', 68);
INSERT INTO `t_role_menu` VALUES (6693, '1', 127);
INSERT INTO `t_role_menu` VALUES (6694, '1', 128);
INSERT INTO `t_role_menu` VALUES (6695, '1', 129);
INSERT INTO `t_role_menu` VALUES (6696, '1', 130);
INSERT INTO `t_role_menu` VALUES (6697, '1', 131);
INSERT INTO `t_role_menu` VALUES (6698, '1', 132);

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
INSERT INTO `t_site_config` VALUES (1, 'https://junlty.top/config/05e165c224622b40bc4c0b53f1b5d09b.jpg', 'https://junlty.top/config/e8ff32088199b1524da8135a1d2e36e3.jpg', 'Java Cove', 'www.junlty.top', '我的道路有自己选择。', '前段时间写毕设，服务器跑服务了，现在答辩过啦！！！网站恢复！<a href=\"https://blog.csdn.net/qq_52183856?spm=1000.2115.3001.5343\" style=\"color: #49b1f5;\">CSDN</a>\n有技术问题请在gitee提交Issue！！！！', '2023-08-25', '豫ICP备', 'https://junlty.top/config/27b10971c963e55455b09474399460cf.jpg', '天若长久时', 'http://junlty.top/config/6c6c2317050c2adfbd8f0fe2f41d2e59.jpg', '``` java\n/**\n * 个人简介：\n * \n */\nSystem.out.println(\"道阻且长 行则将至\") ；\n```', 'https://github.com/nansheng1212', 'https://gitee.com/guo-_jun', '', '1517233142', 0, 0, 0, 'https://static.ttkwsd.top/config/994a286571b002e93281899cb402bd15.png', 'https://static.ttkwsd.top/config/f0be9dc73e230d8821179b9303a9ff49.jpg', 'qq,gitee,github', ',gitee,github,qq', 0, '10135781464', 1, 'http://localhost:8080/websocket', 'http://junlty.top/config/ef30f44e9d16a5988b1df68656c35171.jpg', 'http://junlty.top/config/41086d0761868fcfc8559860338ef425.jpg', 'http://junlty.top/config/a621a9ff5d15937b01850fb0c70bb6f6.jpg', 'https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg', 'http://junlty.top/config/v2-7ee6f104979814d2bf420461e3872475_r.jpg', 'https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg', 'https://junlty.top/config/ed48b9f4cf1b733bba5f5829c733ad10.jpg', 'http://junlty.top/config/42866dae6f37c8dba35d0e524f5cb8e0.jpg', 'http://junlty.top/config/b2b466fa65bb01163fbe8fe5daf2298b.jpg', 'https://ik.imagekit.io/nicexl/Wallpaper/ba41a32b219e4b40ad055bbb52935896_Y0819msuI.jpg', '2023-01-07 19:31:33', '2025-08-10 19:23:05');

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
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `t_tag` VALUES (26, '攻略', '2024-06-17 18:13:10', NULL);
INSERT INTO `t_tag` VALUES (27, '主机配置', '2024-07-01 16:18:32', NULL);
INSERT INTO `t_tag` VALUES (28, '前端', '2024-07-10 15:45:32', NULL);
INSERT INTO `t_tag` VALUES (29, 'Vue', '2024-07-10 15:45:44', NULL);
INSERT INTO `t_tag` VALUES (30, '面试', '2024-07-10 15:48:01', NULL);
INSERT INTO `t_tag` VALUES (31, '就业', '2024-07-10 15:48:06', NULL);
INSERT INTO `t_tag` VALUES (32, '部署', '2024-10-16 10:16:39', NULL);
INSERT INTO `t_tag` VALUES (34, '旅游', '2025-05-22 20:19:10', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 871 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_task_log
-- ----------------------------

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
) ENGINE = InnoDB AUTO_INCREMENT = 77 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, '天若长久时', 'admin', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'https://junlty.top/avatar/9fdd8f27220124690c940ec1a28e7e14.png', 'www.junlty.top', '你好', '15188287153', '0:0:0:0:0:0:0:1', '局域网|局域网||', 1, 0, '2025-08-10 19:02:57', '2022-11-29 21:45:48', '2025-08-10 19:26:24');
INSERT INTO `t_user` VALUES (3, '测试账号', 'test', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'https://junlty.top/91dc6c88cfff62096242e.jpg', '', '个人简介', 'test@qq.com', '223.84.234.161', '中国|江西|新余|移动', 1, 0, '2025-06-09 21:45:57', '2022-11-30 21:34:26', '2025-06-09 21:45:57');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int NOT NULL COMMENT '用户id',
  `role_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

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
INSERT INTO `t_user_role` VALUES (98, 66, '2');
INSERT INTO `t_user_role` VALUES (99, 67, '2');
INSERT INTO `t_user_role` VALUES (100, 68, '2');
INSERT INTO `t_user_role` VALUES (101, 69, '2');
INSERT INTO `t_user_role` VALUES (102, 70, '2');
INSERT INTO `t_user_role` VALUES (103, 71, '2');
INSERT INTO `t_user_role` VALUES (104, 72, '2');
INSERT INTO `t_user_role` VALUES (105, 73, '2');
INSERT INTO `t_user_role` VALUES (106, 74, '2');
INSERT INTO `t_user_role` VALUES (107, 75, '2');
INSERT INTO `t_user_role` VALUES (108, 76, '2');

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
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_visit_log
-- ----------------------------
INSERT INTO `t_visit_log` VALUES (1, '首页', '0:0:0:0:0:0:0:1', '局域网|局域网||', 'Windows NT ??', 'Edge 139', '2025-08-10 19:24:27');
INSERT INTO `t_visit_log` VALUES (2, '归档', '0:0:0:0:0:0:0:1', '局域网|局域网||', 'Windows NT ??', 'Edge 139', '2025-08-10 19:24:45');
INSERT INTO `t_visit_log` VALUES (3, '文章分类', '0:0:0:0:0:0:0:1', '局域网|局域网||', 'Windows NT ??', 'Edge 139', '2025-08-10 19:24:46');
INSERT INTO `t_visit_log` VALUES (4, '文章标签', '0:0:0:0:0:0:0:1', '局域网|局域网||', 'Windows NT ??', 'Edge 139', '2025-08-10 19:24:49');
INSERT INTO `t_visit_log` VALUES (5, '说说列表', '0:0:0:0:0:0:0:1', '局域网|局域网||', 'Windows NT ??', 'Edge 139', '2025-08-10 19:24:49');
INSERT INTO `t_visit_log` VALUES (6, '相册', '0:0:0:0:0:0:0:1', '局域网|局域网||', 'Windows NT ??', 'Edge 139', '2025-08-10 19:24:51');
INSERT INTO `t_visit_log` VALUES (7, '友链', '0:0:0:0:0:0:0:1', '局域网|局域网||', 'Windows NT ??', 'Edge 139', '2025-08-10 19:24:52');
INSERT INTO `t_visit_log` VALUES (8, '留言', '0:0:0:0:0:0:0:1', '局域网|局域网||', 'Windows NT ??', 'Edge 139', '2025-08-10 19:24:53');
INSERT INTO `t_visit_log` VALUES (9, '友链', '0:0:0:0:0:0:0:1', '局域网|局域网||', 'Windows NT ??', 'Edge 139', '2025-08-10 19:26:47');
INSERT INTO `t_visit_log` VALUES (10, '留言', '0:0:0:0:0:0:0:1', '局域网|局域网||', 'Windows NT ??', 'Edge 139', '2025-08-10 19:26:49');

-- ----------------------------
-- Table structure for t_website_visits
-- ----------------------------
DROP TABLE IF EXISTS `t_website_visits`;
CREATE TABLE `t_website_visits`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '访问量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_website_visits
-- ----------------------------
INSERT INTO `t_website_visits` VALUES (1, '3877');

SET FOREIGN_KEY_CHECKS = 1;
