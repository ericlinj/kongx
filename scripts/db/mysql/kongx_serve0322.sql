
CREATE TABLE `kongx_operation_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `userId` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `profile` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operation_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` json NULL,
  `target` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `remark` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_target_hash`(`target`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 495 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kongx_operation_log
-- ----------------------------
INSERT INTO `kongx_operation_log` VALUES (335, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615948160355, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 10:29:20', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (336, 'admin', 'betaa', 'admin', 'add', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380330, \"modify_at\": 1615948380330, \"userGroupList\": []}', 'user_info', '0:0:0:0:0:0:0:1', '2021-03-17 10:33:00', 'admin 新增 用户信息');
INSERT INTO `kongx_operation_log` VALUES (337, 'admin', 'betaa', 'admin', 'add', '{\"id\": 0, \"name\": \"bu2\", \"page\": 0, \"email\": \"bu2@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"1399999999\", \"status\": \"activate\", \"userId\": \"bu2\", \"creator\": \"admin\", \"password\": \"033378f0b2a18e374b9302bc20720185a7bb3f54\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948395798, \"modify_at\": 1615948395798, \"userGroupList\": []}', 'user_info', '0:0:0:0:0:0:0:1', '2021-03-17 10:33:16', 'admin 新增 用户信息');
INSERT INTO `kongx_operation_log` VALUES (338, 'admin', 'betaa', 'admin', 'update', '{\"id\": 0, \"name\": \"bu1admin\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1admin\", \"creator\": \"admin\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615948395845, \"userGroupList\": []}', 'user_info', '0:0:0:0:0:0:0:1', '2021-03-17 10:33:49', 'admin 修改 用户信息');
INSERT INTO `kongx_operation_log` VALUES (339, 'admin', 'betaa', 'admin', 'update', '{\"id\": 0, \"name\": \"bu2admin\", \"page\": 0, \"email\": \"bu2@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"1399999999\", \"status\": \"activate\", \"userId\": \"bu2admin\", \"creator\": \"admin\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948396000, \"modify_at\": 1615948428664, \"userGroupList\": []}', 'user_info', '0:0:0:0:0:0:0:1', '2021-03-17 10:34:00', 'admin 修改 用户信息');
INSERT INTO `kongx_operation_log` VALUES (340, 'admin', 'betaa', 'admin', 'update', '{\"id\": 0, \"name\": \"bu1admin\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1admin\", \"creator\": \"admin\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615948448321, \"userGroupList\": []}', 'user_info', '0:0:0:0:0:0:0:1', '2021-03-17 10:34:23', 'admin 修改 用户信息');
INSERT INTO `kongx_operation_log` VALUES (341, 'admin', 'betaa', 'admin', 'add', '{\"id\": 0, \"code\": \"bu1role\", \"name\": \"bu1role\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"bu1role\", \"creator\": \"admin\", \"roleType\": \"menu\", \"create_at\": 1615948489090, \"modify_at\": 1615948489088}', 'system_role', '0:0:0:0:0:0:0:1', '2021-03-17 10:34:49', 'admin 新增 系统角色');
INSERT INTO `kongx_operation_log` VALUES (342, 'admin', 'betaa', 'admin', 'add', '{\"id\": 0, \"code\": \"bu2role\", \"name\": \"bu2role\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"\", \"creator\": \"admin\", \"roleType\": \"menu\", \"create_at\": 1615948498669, \"modify_at\": 1615948498669}', 'system_role', '0:0:0:0:0:0:0:1', '2021-03-17 10:34:59', 'admin 新增 系统角色');
INSERT INTO `kongx_operation_log` VALUES (343, 'admin', 'betaa', 'admin', 'add', '{\"id\": 0, \"name\": \"bu1Group\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"\", \"creator\": \"admin\", \"userList\": [], \"create_at\": 1615948512116, \"modify_at\": 1615948512115, \"profileRoles\": []}', 'user_group', '0:0:0:0:0:0:0:1', '2021-03-17 10:35:12', 'admin 新增 用户组');
INSERT INTO `kongx_operation_log` VALUES (344, 'admin', 'betaa', 'admin', 'add', '{\"id\": 0, \"name\": \"bu2Group\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"\", \"creator\": \"admin\", \"userList\": [], \"create_at\": 1615948517424, \"modify_at\": 1615948517423, \"profileRoles\": []}', 'user_group', '0:0:0:0:0:0:0:1', '2021-03-17 10:35:17', 'admin 新增 用户组');
INSERT INTO `kongx_operation_log` VALUES (345, 'admin', 'betaa', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615948598180, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 10:36:38', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (346, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615948642168, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 10:37:22', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (347, 'admin', 'betaa', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615948718643, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 10:38:39', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (348, 'bu1', 'betaa', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615948900052, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 10:41:40', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (349, 'bu1', 'betaa', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615949266357, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 10:47:46', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (350, 'bu1', 'betaa', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615949864249, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 10:57:44', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (351, 'bu1', 'betaa', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615950032906, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 11:00:33', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (352, 'bu1', 'betaa', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615950092730, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 11:01:33', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (353, 'bu1', 'betaa', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615950313257, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 11:05:13', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (354, 'bu1', 'betaa', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615950642230, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 11:10:42', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (355, 'admin', 'betaa', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615950656887, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 11:10:57', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (356, 'admin', 'betaa', 'admin', '修改', '\"envs\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:17:20', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (357, 'admin', 'betaa', 'admin', '修改', '\"envs\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:19:07', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (358, 'admin', 'betaa', 'admin', '修改', '\"envs\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:25:33', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (359, 'admin', 'betaa', 'admin', '修改', '\"envs\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:28:42', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (360, 'admin', 'betaa', 'admin', '修改', '\"envs\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:31:40', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (361, 'admin', 'betaa', 'admin', '修改', '\"envs\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:32:23', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (362, 'admin', 'betaa', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615952106597, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 11:35:07', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (363, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615952574513, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 11:42:55', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (364, 'admin', NULL, 'admin', '修改', '\"devall\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:44:22', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (365, 'admin', NULL, 'admin', '修改', '\"testc\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:44:31', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (366, 'admin', NULL, 'admin', '修改', '\"testb\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:44:38', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (367, 'admin', NULL, 'admin', '修改', '\"testb-pri\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:44:50', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (368, 'admin', NULL, 'admin', '修改', '\"testvehicle\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:44:57', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (369, 'admin', NULL, 'admin', '修改', '\"testpromotion\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:45:03', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (370, 'admin', NULL, 'admin', '修改', '\"testmetrics\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:45:08', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (371, 'admin', NULL, 'admin', '修改', '\"testmetrics\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:45:11', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (372, 'admin', NULL, 'admin', '修改', '\"testmetrics\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:45:19', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (373, 'admin', NULL, 'admin', '修改', '\"testb\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:46:38', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (374, 'admin', NULL, 'admin', '修改', '\"testb-pri\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:46:44', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (375, 'admin', NULL, 'admin', '修改', '\"testvehicle\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:46:49', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (376, 'admin', NULL, 'admin', '修改', '\"testpromotion\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:46:54', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (377, 'admin', NULL, 'admin', '修改', '\"testmetrics\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:46:59', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (378, 'admin', NULL, 'admin', '修改', '\"testb\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 11:48:15', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (379, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615956396544, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 12:46:37', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (380, 'admin', 'testc', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615956422156, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 12:47:02', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (381, 'admin', 'testc', 'admin', '修改', '\"devall\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:51:16', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (382, 'admin', 'testc', 'admin', '修改', '\"devall\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:51:44', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (383, 'admin', 'testc', 'admin', '修改', '\"testc\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:52:03', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (384, 'admin', 'testc', 'admin', '修改', '\"testb\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:52:13', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (385, 'admin', 'testc', 'admin', '修改', '\"testb-pri\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:52:32', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (386, 'admin', 'testc', 'admin', '修改', '\"testvehicle\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:52:45', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (387, 'admin', 'testc', 'admin', '修改', '\"testpromotion\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:52:58', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (388, 'admin', 'testc', 'admin', '修改', '\"testmetrics\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:53:21', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (389, 'admin', 'testc', 'admin', '修改', '\"testmetrics\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:53:34', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (390, 'admin', 'testc', 'admin', '修改', '\"testvehicle\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:53:39', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (391, 'admin', 'testc', 'admin', '修改', '\"testpromotion\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:53:50', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (392, 'admin', 'testc', 'admin', '修改', '\"testvehicle\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:53:59', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (393, 'admin', 'testc', 'admin', '修改', '\"testb\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:54:23', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (394, 'admin', 'testc', 'admin', '修改', '\"testc\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:54:25', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (395, 'admin', 'testc', 'admin', '修改', '\"testb-pri\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:54:27', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (396, 'admin', 'testc', 'admin', '修改', '\"testvehicle\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:54:28', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (397, 'admin', 'testc', 'admin', '修改', '\"testpromotion\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:54:30', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (398, 'admin', 'testc', 'admin', '修改', '\"devall\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 12:54:45', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (399, 'admin', 'devall', 'admin', '修改', '\"envs\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 13:28:08', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (400, 'admin', 'devall', 'admin', '修改', '\"envs\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 13:28:59', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (401, 'admin', 'devall', 'admin', '修改', '\"envs\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 13:35:41', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (402, 'admin', 'devall', 'admin', '修改', '\"envs\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 13:38:16', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (403, 'admin', 'devall', 'admin', '修改', '\"envs\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 13:38:46', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (404, 'admin', 'devall', 'admin', '修改', '\"envs\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 13:38:58', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (405, 'admin', 'devall', 'admin', '修改', '\"envs\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 13:39:39', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (406, 'admin', 'devall', 'admin', '修改', '\"devall\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 13:39:57', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (407, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615959758273, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 13:42:38', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (408, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615960106700, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 13:48:27', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (409, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615960226512, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 13:50:27', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (410, 'bu1', 'devall', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615960264586, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 13:51:05', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (411, 'admin', 'devall', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615960550366, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 13:55:50', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (412, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615960675576, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 13:57:56', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (413, 'admin', NULL, 'admin', '修改', '\"envs\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 14:01:27', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (414, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615960962188, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:02:42', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (415, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615961090711, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:04:51', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (416, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615961144262, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:05:44', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (417, 'bu1', 'devdev_all', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615961501753, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:11:42', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (418, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615961704599, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:15:05', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (419, 'bu1', 'devdev_all', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615961704599, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:15:05', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (420, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615961704599, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:15:05', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (421, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615961706874, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:15:07', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (422, 'admin', NULL, 'admin', '修改', '\"envs\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 14:27:22', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (423, 'bu1', 'devdev_all', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615962681197, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:31:21', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (424, 'admin', 'devb', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615962747104, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:32:27', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (425, 'bu1', 'devdev_all', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615962767935, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:32:48', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (426, 'bu1', 'devdev_all', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615962842361, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:34:02', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (427, 'bu1', 'devdev_all', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615962864602, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:34:25', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (428, 'bu1', 'devdev_all', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615962889591, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:34:50', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (429, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615962930077, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-17 14:35:30', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (430, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615963145434, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:39:06', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (431, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615963151544, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:39:12', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (432, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615963164866, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:39:25', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (433, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615963167236, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:39:27', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (434, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615963168242, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:39:28', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (435, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615963169169, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:39:29', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (436, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615963184201, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:39:44', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (437, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615963194190, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:39:54', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (438, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615963279709, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:41:20', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (439, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615963282199, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:41:22', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (440, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615963283064, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:41:23', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (441, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615963299548, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:41:40', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (442, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615963301571, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:41:42', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (443, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615963322921, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:42:03', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (444, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615963330744, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:42:11', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (445, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615963332978, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:42:13', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (446, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615963333842, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:42:14', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (447, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615963343249, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:42:23', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (448, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615963397588, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:43:20', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (449, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615963455117, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-17 14:44:15', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (450, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615963778048, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 14:49:38', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (451, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615964777500, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 15:06:18', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (452, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615964804549, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 15:06:45', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (453, 'bu1', 'devb', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615964838733, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 15:07:19', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (454, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615964902700, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 15:08:23', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (455, 'admin', NULL, 'admin', '修改', '\"devb\"', '系统配置', '0:0:0:0:0:0:0:1', '2021-03-17 15:09:49', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (456, 'bu1', 'devb', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615965027884, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 15:10:28', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (457, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615965078535, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 15:11:19', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (458, 'admin', 'testc', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615967225001, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 15:47:05', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (459, 'bu1', 'devb', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615967246605, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 15:47:27', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (460, 'admin', 'testc', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615967291194, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 15:48:11', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (461, 'bu1', 'testmetrics', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615967341608, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 15:49:02', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (462, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615967479960, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 15:51:20', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (463, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615967511738, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 15:51:52', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (464, 'admin', NULL, 'admin', '修改', '\"envs\"', '系统配置', '127.0.0.1', '2021-03-17 15:52:58', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (465, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615967637094, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-17 15:53:57', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (466, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615967752375, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 15:55:52', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (467, 'bu1', 'testvehicle', 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615967888589, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-17 15:58:09', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (468, 'bu1', 'devall', 'bu1', '新增', '{\"name\": \"testRoute111\", \"paths\": [\"/testRoute111\"], \"service\": {\"id\": \"718bf803-9b49-441b-bf75-919cd9e2cd3a\"}, \"strip_path\": false, \"path_handling\": \"v1\", \"preserve_host\": false, \"regex_priority\": 0, \"https_redirect_status_code\": 426}', '路由', '127.0.0.1', '2021-03-17 16:02:16', 'bu1 新增 路由');
INSERT INTO `kongx_operation_log` VALUES (469, 'bu1', 'devall', 'bu1', '新增', '{\"name\": \"t3-rate-limiting-new\", \"config\": {\"path\": \"[\\\"/asdfasdfa\\\"]\", \"policy\": \"local\", \"limit_by\": \"path\", \"redis_port\": 6379, \"redis_timeout\": 2000, \"hide_client_headers\": true}, \"enabled\": true, \"service\": {\"id\": \"718bf803-9b49-441b-bf75-919cd9e2cd3a\"}}', '插件', '127.0.0.1', '2021-03-17 16:02:46', 'bu1 新增 插件');
INSERT INTO `kongx_operation_log` VALUES (470, 'bu1', 'devall', 'bu1', '新增', '{\"name\": \"t3-rate-limiting-new\", \"config\": {\"path\": \"[\\\"/asdfasdfa\\\"]\", \"minute\": 2, \"policy\": \"local\", \"limit_by\": \"path\", \"redis_port\": 6379, \"redis_timeout\": 2000, \"hide_client_headers\": true}, \"enabled\": true, \"service\": {\"id\": \"718bf803-9b49-441b-bf75-919cd9e2cd3a\"}}', '插件', '127.0.0.1', '2021-03-17 16:02:52', 'bu1 新增 插件');
INSERT INTO `kongx_operation_log` VALUES (471, 'admin', NULL, 'admin', 'add', '{\"id\": 0, \"code\": \"Bu1ServiceAdmin\", \"name\": \"Bu1ServiceAdmin\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"\", \"creator\": \"admin\", \"roleType\": \"data\", \"create_at\": 1615968364055, \"modify_at\": 1615968364054}', 'system_role', '0:0:0:0:0:0:0:1', '2021-03-17 16:06:04', 'admin 新增 系统角色');
INSERT INTO `kongx_operation_log` VALUES (472, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615971543819, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-17 16:59:04', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (473, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615971543819, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-17 16:59:04', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (474, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615973030690, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 17:23:51', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (475, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615974960706, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-17 17:56:01', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (476, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615975012840, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-17 17:56:53', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (477, 'admin', 'devall', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1615975103082, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-17 17:58:23', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (478, 'bu1', NULL, 'bu1', 'login', '{\"id\": 0, \"name\": \"bu1\", \"page\": 0, \"email\": \"bu1@t3go.cn\", \"limit\": 10, \"start\": 0, \"mobile\": \"13888888888\", \"status\": \"activate\", \"userId\": \"bu1\", \"creator\": \"admin\", \"password\": \"a25330d37f9ad70b4fec48e65a8f07c026436f34\", \"roleName\": \"domestic_consumer\", \"create_at\": 1615948380000, \"modify_at\": 1615975392291, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-17 18:03:12', 'bu1 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (479, 'admin', 'devall', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616029874125, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-18 09:11:14', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (480, 'admin', 'devall', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616029876395, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-18 09:11:16', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (481, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616031107818, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-18 09:31:48', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (482, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616031110805, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-18 09:31:51', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (483, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616033676296, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-18 10:14:36', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (484, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616036279448, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-18 10:57:59', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (485, 'admin', 'devall', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616045740710, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-18 13:35:41', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (486, 'admin', 'devall', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616045762759, \"userGroupList\": []}', 'system', '192.168.44.214', '2021-03-18 13:36:03', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (487, 'admin', 'devall', 'admin', 'update', '{\"id\": 4, \"name\": \"运营管理BU\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"运营管理BU\", \"creator\": \"admin\", \"modifier\": \"admin\", \"userList\": [], \"create_at\": 1615948517000, \"modify_at\": 1616046030279, \"profileRoles\": []}', 'user_group', '192.168.44.214', '2021-03-18 13:40:30', 'admin 修改 用户组');
INSERT INTO `kongx_operation_log` VALUES (488, 'admin', 'devall', 'admin', 'update', '{\"id\": 3, \"name\": \"支付结算BU\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"支付结算BU\", \"creator\": \"admin\", \"modifier\": \"admin\", \"userList\": [], \"create_at\": 1615948512000, \"modify_at\": 1616046043523, \"profileRoles\": [{\"profile\": \"devall\", \"roleList\": [{\"id\": 3, \"code\": \"bu1role\", \"name\": \"bu1role\", \"page\": 0, \"limit\": 10, \"start\": 0, \"remark\": \"bu1role\", \"creator\": \"admin\", \"create_at\": 1615948489000, \"modify_at\": 1615948489000}, {\"id\": 5, \"code\": \"Bu1ServiceAdmin\", \"name\": \"Bu1ServiceAdmin\", \"page\": 0, \"limit\": 10, \"start\": 0, \"remark\": \"\", \"creator\": \"admin\", \"create_at\": 1615968364000, \"modify_at\": 1615968364000}]}, {\"profile\": \"testc\", \"roleList\": [{\"id\": 3, \"code\": \"bu1role\", \"name\": \"bu1role\", \"page\": 0, \"limit\": 10, \"start\": 0, \"remark\": \"bu1role\", \"creator\": \"admin\", \"create_at\": 1615948489000, \"modify_at\": 1615948489000}]}, {\"profile\": \"testb\", \"roleList\": [{\"id\": 3, \"code\": \"bu1role\", \"name\": \"bu1role\", \"page\": 0, \"limit\": 10, \"start\": 0, \"remark\": \"bu1role\", \"creator\": \"admin\", \"create_at\": 1615948489000, \"modify_at\": 1615948489000}]}, {\"profile\": \"devall\", \"roleList\": [{\"id\": 3, \"code\": \"bu1role\", \"name\": \"bu1role\", \"page\": 0, \"limit\": 10, \"start\": 0, \"remark\": \"bu1role\", \"creator\": \"admin\", \"create_at\": 1615948489000, \"modify_at\": 1615948489000}, {\"id\": 5, \"code\": \"Bu1ServiceAdmin\", \"name\": \"Bu1ServiceAdmin\", \"page\": 0, \"limit\": 10, \"start\": 0, \"remark\": \"\", \"creator\": \"admin\", \"create_at\": 1615968364000, \"modify_at\": 1615968364000}]}]}', 'user_group', '192.168.44.214', '2021-03-18 13:40:44', 'admin 修改 用户组');
INSERT INTO `kongx_operation_log` VALUES (489, 'admin', 'devall', 'admin', 'add', '{\"id\": 0, \"name\": \"GIS平台BU\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"\", \"creator\": \"admin\", \"userList\": [], \"create_at\": 1616046052297, \"modify_at\": 1616046052297, \"profileRoles\": []}', 'user_group', '192.168.44.214', '2021-03-18 13:40:52', 'admin 新增 用户组');
INSERT INTO `kongx_operation_log` VALUES (490, 'admin', 'devall', 'admin', 'add', '{\"id\": 0, \"name\": \"营销BU\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"\", \"creator\": \"admin\", \"userList\": [], \"create_at\": 1616046058787, \"modify_at\": 1616046058787, \"profileRoles\": []}', 'user_group', '192.168.44.214', '2021-03-18 13:40:59', 'admin 新增 用户组');
INSERT INTO `kongx_operation_log` VALUES (491, 'admin', 'devall', 'admin', 'add', '{\"id\": 0, \"name\": \"开放平台BU\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"\", \"creator\": \"admin\", \"userList\": [], \"create_at\": 1616046069454, \"modify_at\": 1616046069453, \"profileRoles\": []}', 'user_group', '192.168.44.214', '2021-03-18 13:41:09', 'admin 新增 用户组');
INSERT INTO `kongx_operation_log` VALUES (492, 'admin', 'devall', 'admin', 'add', '{\"id\": 0, \"name\": \"会员三户BU\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"\", \"creator\": \"admin\", \"userList\": [], \"create_at\": 1616046076404, \"modify_at\": 1616046076404, \"profileRoles\": []}', 'user_group', '192.168.44.214', '2021-03-18 13:41:16', 'admin 新增 用户组');
INSERT INTO `kongx_operation_log` VALUES (493, 'admin', 'devall', 'admin', 'add', '{\"id\": 0, \"name\": \"出行交易BU\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"\", \"creator\": \"admin\", \"userList\": [], \"create_at\": 1616046084768, \"modify_at\": 1616046084768, \"profileRoles\": []}', 'user_group', '192.168.44.214', '2021-03-18 13:41:25', 'admin 新增 用户组');
INSERT INTO `kongx_operation_log` VALUES (494, 'admin', 'devall', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616046085336, \"userGroupList\": []}', 'system', '192.168.58.36', '2021-03-18 13:41:25', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (495, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616046368931, \"userGroupList\": []}', 'system', '192.168.44.214', '2021-03-18 13:46:09', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (496, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616046437101, \"userGroupList\": []}', 'system', '192.168.58.36', '2021-03-18 13:47:17', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (497, 'admin', NULL, 'admin', 'add', '{\"id\": 0, \"code\": \"buMenuAdminRule\", \"name\": \"buMenuAdminRule\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"BU菜单管理权限，可以仅仅提供service菜单\", \"creator\": \"admin\", \"roleType\": \"menu\", \"create_at\": 1616046565518, \"modify_at\": 1616046565517}', 'system_role', '192.168.44.214', '2021-03-18 13:49:26', 'admin 新增 系统角色');
INSERT INTO `kongx_operation_log` VALUES (498, 'admin', NULL, 'admin', 'add', '{\"id\": 0, \"code\": \"cua_service_admin_rule\", \"name\": \"cua_service_admin_rule\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"会员三户的service数据管理权限\", \"creator\": \"admin\", \"roleType\": \"data\", \"create_at\": 1616046647104, \"modify_at\": 1616046647104}', 'system_role', '192.168.44.214', '2021-03-18 13:50:47', 'admin 新增 系统角色');
INSERT INTO `kongx_operation_log` VALUES (499, 'admin', NULL, 'admin', 'add', '{\"id\": 0, \"name\": \"会员三户管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"cuaAdmin\", \"creator\": \"admin\", \"password\": \"eb414ba73b3a43747fd58f69e213e06587d1f6d3\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616046676178, \"modify_at\": 1616046676178, \"userGroupList\": []}', 'user_info', '192.168.44.214', '2021-03-18 13:51:16', 'admin 新增 用户信息');
INSERT INTO `kongx_operation_log` VALUES (500, 'cuaAdmin', NULL, '会员三户管理员', 'login', '{\"id\": 0, \"name\": \"会员三户管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"cuaAdmin\", \"creator\": \"admin\", \"password\": \"eb414ba73b3a43747fd58f69e213e06587d1f6d3\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616046676000, \"modify_at\": 1616046874459, \"userGroupList\": []}', 'system', '192.168.44.214', '2021-03-18 13:54:34', '会员三户管理员 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (501, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616046904932, \"userGroupList\": []}', 'system', '192.168.44.214', '2021-03-18 13:55:05', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (502, 'cuaAdmin', 'devall', '会员三户管理员', 'login', '{\"id\": 0, \"name\": \"会员三户管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"cuaAdmin\", \"creator\": \"admin\", \"password\": \"eb414ba73b3a43747fd58f69e213e06587d1f6d3\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616046676000, \"modify_at\": 1616047168478, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-18 13:59:28', '会员三户管理员 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (503, 'admin', NULL, 'admin', 'add', '{\"id\": 0, \"code\": \"_service_admin_rule\", \"name\": \"pay_service_admin_rule\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"\", \"creator\": \"admin\", \"roleType\": \"data\", \"create_at\": 1616047543407, \"modify_at\": 1616047543406}', 'system_role', '192.168.44.214', '2021-03-18 14:05:43', 'admin 新增 系统角色');
INSERT INTO `kongx_operation_log` VALUES (504, 'admin', NULL, 'admin', 'add', '{\"id\": 0, \"name\": \"支付会员管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"payAdmin\", \"creator\": \"admin\", \"password\": \"157168a78ce871016bf9ad102be840dac293353e\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616047928333, \"modify_at\": 1616047928333, \"userGroupList\": []}', 'user_info', '192.168.44.214', '2021-03-18 14:12:08', 'admin 新增 用户信息');
INSERT INTO `kongx_operation_log` VALUES (505, 'admin', NULL, 'admin', 'add', '{\"id\": 0, \"name\": \"出行交易管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"routeAdmin\", \"creator\": \"admin\", \"password\": \"485bfa2dccef03e50d8f1f27326bfd265f603705\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616047952664, \"modify_at\": 1616047952664, \"userGroupList\": []}', 'user_info', '192.168.44.214', '2021-03-18 14:12:33', 'admin 新增 用户信息');
INSERT INTO `kongx_operation_log` VALUES (506, 'admin', NULL, 'admin', 'add', '{\"id\": 0, \"name\": \"开放平台管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"operationAdmin\", \"creator\": \"admin\", \"password\": \"adae3d40d2a59df6376113232739d8620f361a7e\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616047988418, \"modify_at\": 1616047988418, \"userGroupList\": []}', 'user_info', '192.168.44.214', '2021-03-18 14:13:08', 'admin 新增 用户信息');
INSERT INTO `kongx_operation_log` VALUES (507, 'admin', NULL, 'admin', 'update', '{\"id\": 0, \"name\": \"开放平台管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"openApiAdmin\", \"creator\": \"admin\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616047988000, \"modify_at\": 1616047996225, \"userGroupList\": [{\"id\": 7, \"name\": \"openApiBU\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"\", \"creator\": \"admin\", \"modifier\": \"admin\", \"userList\": [], \"create_at\": 1616046069000, \"modify_at\": 1616047250000, \"profileRoles\": []}]}', 'user_info', '192.168.44.214', '2021-03-18 14:13:23', 'admin 修改 用户信息');
INSERT INTO `kongx_operation_log` VALUES (508, 'admin', NULL, 'admin', 'add', '{\"id\": 0, \"name\": \"营销管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"maketingAdmin\", \"creator\": \"admin\", \"password\": \"802b7b8f9e08921b23e55d9db0930f147facee46\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616048018895, \"modify_at\": 1616048018895, \"userGroupList\": []}', 'user_info', '192.168.44.214', '2021-03-18 14:13:39', 'admin 新增 用户信息');
INSERT INTO `kongx_operation_log` VALUES (509, 'admin', NULL, 'admin', 'add', '{\"id\": 0, \"name\": \"gis管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"gisAdmin\", \"creator\": \"admin\", \"password\": \"b2b9ceb1bbc00b584fc90caf85f61f70767b6415\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616048043001, \"modify_at\": 1616048043001, \"userGroupList\": []}', 'user_info', '192.168.44.214', '2021-03-18 14:14:03', 'admin 新增 用户信息');
INSERT INTO `kongx_operation_log` VALUES (510, 'admin', NULL, 'admin', 'update', '{\"id\": 0, \"name\": \"开放平台管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"openApiAdmin\", \"creator\": \"admin\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616047988000, \"modify_at\": 1616048046531, \"userGroupList\": [{\"id\": 7, \"name\": \"openApiBU\", \"page\": 0, \"limit\": 10, \"start\": 0, \"useYn\": \"y\", \"remark\": \"\", \"creator\": \"admin\", \"modifier\": \"admin\", \"userList\": [], \"create_at\": 1616046069000, \"modify_at\": 1616047250000, \"profileRoles\": []}]}', 'user_info', '192.168.44.214', '2021-03-18 14:14:51', 'admin 修改 用户信息');
INSERT INTO `kongx_operation_log` VALUES (511, 'admin', NULL, 'admin', 'add', '{\"id\": 0, \"name\": \"运营系统管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"operationAdmin\", \"creator\": \"admin\", \"password\": \"adae3d40d2a59df6376113232739d8620f361a7e\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616048233189, \"modify_at\": 1616048233189, \"userGroupList\": []}', 'user_info', '192.168.44.214', '2021-03-18 14:17:13', 'admin 新增 用户信息');
INSERT INTO `kongx_operation_log` VALUES (512, 'admin', NULL, 'admin', '修改', '\"envs\"', '系统配置', '192.168.44.214', '2021-03-18 14:29:51', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (513, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616049364113, \"userGroupList\": []}', 'system', '192.168.44.214', '2021-03-18 14:36:04', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (514, 'admin', NULL, 'admin', '修改', '\"envs\"', '系统配置', '192.168.44.214', '2021-03-18 14:40:34', 'admin 修改 系统配置');
INSERT INTO `kongx_operation_log` VALUES (515, 'cuaAdmin', NULL, '会员三户管理员', 'login', '{\"id\": 0, \"name\": \"会员三户管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"cuaAdmin\", \"creator\": \"admin\", \"password\": \"eb414ba73b3a43747fd58f69e213e06587d1f6d3\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616046676000, \"modify_at\": 1616050292690, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-18 14:51:33', '会员三户管理员 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (516, 'cuaAdmin', 'devall', '会员三户管理员', '新增', '{\"name\": \"t3-rate-limiting-new\", \"config\": {\"path\": \"[\\\"todo\\\"]\", \"policy\": \"local\", \"second\": 1, \"limit_by\": \"path\", \"redis_port\": 6379, \"redis_timeout\": 2000, \"hide_client_headers\": true}, \"enabled\": true, \"service\": {\"id\": \"842b7963-94f3-4153-a256-e5268fc2f0f0\"}}', '插件', '127.0.0.1', '2021-03-18 14:52:25', '会员三户管理员 新增 插件');
INSERT INTO `kongx_operation_log` VALUES (517, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616051323743, \"userGroupList\": []}', 'system', '192.168.44.214', '2021-03-18 15:08:44', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (518, 'admin', 'devall', 'admin', '修改', '{\"id\": \"836af711-e441-4249-afbc-597f7b32f264\", \"name\": \"t3-rate-limiting-new\", \"config\": {\"path\": \"[\\\"todo\\\"]\", \"policy\": \"local\", \"second\": 1, \"limit_by\": \"path\", \"redis_port\": 6379, \"redis_timeout\": 2000, \"fault_tolerant\": false, \"redis_database\": 0, \"hide_client_headers\": true}, \"enabled\": false, \"service\": {\"id\": \"842b7963-94f3-4153-a256-e5268fc2f0f0\"}, \"protocols\": [\"grpc\", \"grpcs\", \"http\", \"https\"], \"created_at\": 1616050345}', '路由插件', '192.168.44.214', '2021-03-18 15:09:06', 'admin 修改 路由插件');
INSERT INTO `kongx_operation_log` VALUES (519, 'admin', 'devall', 'admin', '修改', '{\"id\": \"836af711-e441-4249-afbc-597f7b32f264\", \"name\": \"t3-rate-limiting-new\", \"config\": {\"path\": \"[\\\"todo\\\"]\", \"policy\": \"local\", \"second\": 1, \"limit_by\": \"path\", \"redis_port\": 6379, \"redis_timeout\": 2000, \"fault_tolerant\": false, \"redis_database\": 0, \"hide_client_headers\": true}, \"enabled\": true, \"service\": {\"id\": \"842b7963-94f3-4153-a256-e5268fc2f0f0\"}, \"protocols\": [\"grpc\", \"grpcs\", \"http\", \"https\"], \"created_at\": 1616050345}', '路由插件', '192.168.44.214', '2021-03-18 15:09:08', 'admin 修改 路由插件');
INSERT INTO `kongx_operation_log` VALUES (520, 'admin', 'devall', 'admin', '修改', '{\"id\": \"836af711-e441-4249-afbc-597f7b32f264\", \"name\": \"t3-rate-limiting-new\", \"config\": {\"path\": \"[\\\"todo\\\"]\", \"policy\": \"local\", \"second\": 1, \"limit_by\": \"path\", \"redis_port\": 6379, \"redis_timeout\": 2000, \"fault_tolerant\": false, \"redis_database\": 0, \"hide_client_headers\": true}, \"enabled\": true, \"service\": {\"id\": \"842b7963-94f3-4153-a256-e5268fc2f0f0\"}, \"protocols\": [\"grpc\", \"grpcs\", \"http\", \"https\"], \"created_at\": 1616050345}', '路由插件', '192.168.44.214', '2021-03-18 15:14:26', 'admin 修改 路由插件');
INSERT INTO `kongx_operation_log` VALUES (521, 'admin', 'devall', 'admin', '修改', '{\"id\": \"836af711-e441-4249-afbc-597f7b32f264\", \"name\": \"t3-rate-limiting-new\", \"config\": {\"path\": \"[\\\"todo\\\"]\", \"policy\": \"local\", \"second\": 1, \"limit_by\": \"path\", \"redis_port\": 6379, \"redis_timeout\": 2000, \"fault_tolerant\": false, \"redis_database\": 0, \"hide_client_headers\": true}, \"enabled\": false, \"service\": {\"id\": \"842b7963-94f3-4153-a256-e5268fc2f0f0\"}, \"protocols\": [\"grpc\", \"grpcs\", \"http\", \"https\"], \"created_at\": 1616050345}', '路由插件', '192.168.44.214', '2021-03-18 15:14:31', 'admin 修改 路由插件');
INSERT INTO `kongx_operation_log` VALUES (522, 'admin', 'devall', 'admin', '修改', '{\"id\": \"836af711-e441-4249-afbc-597f7b32f264\", \"name\": \"t3-rate-limiting-new\", \"config\": {\"path\": \"[\\\"todo\\\"]\", \"policy\": \"local\", \"second\": 1, \"limit_by\": \"path\", \"redis_port\": 6379, \"redis_timeout\": 2000, \"fault_tolerant\": false, \"redis_database\": 0, \"hide_client_headers\": true}, \"enabled\": true, \"service\": {\"id\": \"842b7963-94f3-4153-a256-e5268fc2f0f0\"}, \"protocols\": [\"grpc\", \"grpcs\", \"http\", \"https\"], \"created_at\": 1616050345}', '路由插件', '192.168.44.214', '2021-03-18 15:16:01', 'admin 修改 路由插件');
INSERT INTO `kongx_operation_log` VALUES (523, 'admin', 'devall', 'admin', '修改', '{\"id\": \"836af711-e441-4249-afbc-597f7b32f264\", \"name\": \"t3-rate-limiting-new\", \"config\": {\"path\": \"[\\\"todo\\\"]\", \"policy\": \"local\", \"second\": 1, \"limit_by\": \"path\", \"redis_port\": 6379, \"redis_timeout\": 2000, \"fault_tolerant\": false, \"redis_database\": 0, \"hide_client_headers\": true}, \"enabled\": false, \"service\": {\"id\": \"842b7963-94f3-4153-a256-e5268fc2f0f0\"}, \"protocols\": [\"grpc\", \"grpcs\", \"http\", \"https\"], \"created_at\": 1616050345}', '路由插件', '192.168.44.214', '2021-03-18 15:17:06', 'admin 修改 路由插件');
INSERT INTO `kongx_operation_log` VALUES (524, 'admin', 'devall', 'admin', '修改', '{\"id\": \"836af711-e441-4249-afbc-597f7b32f264\", \"name\": \"t3-rate-limiting-new\", \"config\": {\"path\": \"[\\\"todo\\\"]\", \"policy\": \"local\", \"second\": 1, \"limit_by\": \"path\", \"redis_port\": 6379, \"redis_timeout\": 2000, \"fault_tolerant\": false, \"redis_database\": 0, \"hide_client_headers\": true}, \"enabled\": true, \"service\": {\"id\": \"842b7963-94f3-4153-a256-e5268fc2f0f0\"}, \"protocols\": [\"grpc\", \"grpcs\", \"http\", \"https\"], \"created_at\": 1616050345}', '路由插件', '192.168.44.214', '2021-03-18 15:17:15', 'admin 修改 路由插件');
INSERT INTO `kongx_operation_log` VALUES (525, 'cuaAdmin', NULL, '会员三户管理员', 'login', '{\"id\": 0, \"name\": \"会员三户管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"cuaAdmin\", \"creator\": \"admin\", \"password\": \"eb414ba73b3a43747fd58f69e213e06587d1f6d3\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616046676000, \"modify_at\": 1616052189069, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-18 15:23:09', '会员三户管理员 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (526, 'cuaAdmin', 'devall', '会员三户管理员', 'login', '{\"id\": 0, \"name\": \"会员三户管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"cuaAdmin\", \"creator\": \"admin\", \"password\": \"eb414ba73b3a43747fd58f69e213e06587d1f6d3\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616046676000, \"modify_at\": 1616052525626, \"userGroupList\": []}', 'system', '192.168.58.36', '2021-03-18 15:28:46', '会员三户管理员 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (527, 'admin', 'devall', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616056175578, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-18 16:29:36', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (528, 'cuaAdmin', 'devall', '会员三户管理员', 'login', '{\"id\": 0, \"name\": \"会员三户管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"cuaAdmin\", \"creator\": \"admin\", \"password\": \"eb414ba73b3a43747fd58f69e213e06587d1f6d3\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616046676000, \"modify_at\": 1616056193939, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-18 16:29:54', '会员三户管理员 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (529, 'cuaAdmin', 'devall', '会员三户管理员', '新增', '{\"host\": \"testapi\", \"name\": \"testapi\", \"path\": \"/\", \"port\": 80, \"retries\": 5, \"protocol\": \"http\", \"updated_at\": 0, \"read_timeout\": 60000, \"write_timeout\": 60000, \"connect_timeout\": 60000}', '服务', '0:0:0:0:0:0:0:1', '2021-03-18 16:30:08', '会员三户管理员 新增 服务');
INSERT INTO `kongx_operation_log` VALUES (530, 'admin', 'devall', 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616056240088, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-18 16:30:40', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (531, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616056321290, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-18 16:32:01', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (532, 'cuaAdmin', NULL, '会员三户管理员', 'login', '{\"id\": 0, \"name\": \"会员三户管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"cuaAdmin\", \"creator\": \"admin\", \"password\": \"eb414ba73b3a43747fd58f69e213e06587d1f6d3\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616046676000, \"modify_at\": 1616057571601, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-18 16:52:52', '会员三户管理员 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (533, 'cuaAdmin', NULL, '会员三户管理员', 'login', '{\"id\": 0, \"name\": \"会员三户管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"cuaAdmin\", \"creator\": \"admin\", \"password\": \"eb414ba73b3a43747fd58f69e213e06587d1f6d3\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616046676000, \"modify_at\": 1616057571601, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-18 16:52:52', '会员三户管理员 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (534, 'cuaAdmin', 'devall', '会员三户管理员', '新增', '{\"host\": \"testService222\", \"name\": \"testService222\", \"path\": \"/\", \"port\": 80, \"retries\": 5, \"protocol\": \"http\", \"updated_at\": 0, \"read_timeout\": 60000, \"write_timeout\": 60000, \"connect_timeout\": 60000}', '服务', '127.0.0.1', '2021-03-18 16:53:12', '会员三户管理员 新增 服务');
INSERT INTO `kongx_operation_log` VALUES (535, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616057696739, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-18 16:54:57', 'admin 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (536, 'cuaAdmin', NULL, '会员三户管理员', 'login', '{\"id\": 0, \"name\": \"会员三户管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"cuaAdmin\", \"creator\": \"admin\", \"password\": \"eb414ba73b3a43747fd58f69e213e06587d1f6d3\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616046676000, \"modify_at\": 1616058415560, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-18 17:06:56', '会员三户管理员 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (537, 'cuaAdmin', 'devall', '会员三户管理员', '新增', '{\"host\": \"testService333\", \"name\": \"testService333\", \"path\": \"/\", \"port\": 80, \"retries\": 5, \"protocol\": \"http\", \"updated_at\": 0, \"read_timeout\": 60000, \"write_timeout\": 60000, \"connect_timeout\": 60000}', '服务', '127.0.0.1', '2021-03-18 17:07:15', '会员三户管理员 新增 服务');
INSERT INTO `kongx_operation_log` VALUES (538, 'cuaAdmin', 'devall', '会员三户管理员', '删除', '\"95f68dce-fbe1-4cb0-8f09-ad9ab280df12\"', '服务', '127.0.0.1', '2021-03-18 17:07:34', '会员三户管理员 删除 服务');
INSERT INTO `kongx_operation_log` VALUES (539, 'cuaAdmin', 'devall', '会员三户管理员', '删除', '\"60ec8e0e-9d33-4dfb-bc03-c33786e0fa98\"', '服务', '127.0.0.1', '2021-03-18 17:07:57', '会员三户管理员 删除 服务');
INSERT INTO `kongx_operation_log` VALUES (540, 'cuaAdmin', NULL, '会员三户管理员', 'login', '{\"id\": 0, \"name\": \"会员三户管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"cuaAdmin\", \"creator\": \"admin\", \"password\": \"eb414ba73b3a43747fd58f69e213e06587d1f6d3\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616046676000, \"modify_at\": 1616058690832, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-18 17:11:31', '会员三户管理员 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (541, 'cuaAdmin', 'devall', '会员三户管理员', '新增', '{\"host\": \"a\", \"name\": \"aaa\", \"path\": \"/\", \"port\": 80, \"retries\": 5, \"protocol\": \"http\", \"updated_at\": 0, \"read_timeout\": 60000, \"write_timeout\": 60000, \"connect_timeout\": 60000}', '服务', '127.0.0.1', '2021-03-18 17:11:41', '会员三户管理员 新增 服务');
INSERT INTO `kongx_operation_log` VALUES (542, 'cuaAdmin', 'devall', '会员三户管理员', '修改', '{\"id\": \"4cd495f4-4a18-4942-818a-c861c8695687\", \"host\": \"a\", \"name\": \"aaabbbb\", \"path\": \"/\", \"port\": 80, \"retries\": 5, \"protocol\": \"http\", \"created_at\": 1616058700, \"updated_at\": 1616058700, \"read_timeout\": 60000, \"write_timeout\": 60000, \"connect_timeout\": 60000}', '服务', '127.0.0.1', '2021-03-18 17:11:52', '会员三户管理员 修改 服务');
INSERT INTO `kongx_operation_log` VALUES (543, 'cuaAdmin', NULL, '会员三户管理员', 'login', '{\"id\": 0, \"name\": \"会员三户管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"cuaAdmin\", \"creator\": \"admin\", \"password\": \"eb414ba73b3a43747fd58f69e213e06587d1f6d3\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616046676000, \"modify_at\": 1616058939849, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-18 17:15:40', '会员三户管理员 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (544, 'cuaAdmin', NULL, '会员三户管理员', 'login', '{\"id\": 0, \"name\": \"会员三户管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"cuaAdmin\", \"creator\": \"admin\", \"password\": \"eb414ba73b3a43747fd58f69e213e06587d1f6d3\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616046676000, \"modify_at\": 1616058939849, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-18 17:15:40', '会员三户管理员 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (545, 'cuaAdmin', 'devall', '会员三户管理员', '新增', '{\"host\": \"aaaa\", \"name\": \"aaaa\", \"path\": \"/\", \"port\": 80, \"retries\": 5, \"protocol\": \"http\", \"updated_at\": 0, \"read_timeout\": 60000, \"write_timeout\": 60000, \"connect_timeout\": 60000}', '服务', '127.0.0.1', '2021-03-18 17:15:53', '会员三户管理员 新增 服务');
INSERT INTO `kongx_operation_log` VALUES (546, 'cuaAdmin', 'devall', '会员三户管理员', '删除', '\"d153c47a-a531-4921-93b6-f0dffabf6c45\"', '服务', '127.0.0.1', '2021-03-18 17:16:02', '会员三户管理员 删除 服务');
INSERT INTO `kongx_operation_log` VALUES (547, 'cuaAdmin', 'devall', '会员三户管理员', '新增', '{\"host\": \"bbbb\", \"name\": \"bbbb\", \"path\": \"/\", \"port\": 80, \"retries\": 5, \"protocol\": \"http\", \"updated_at\": 0, \"read_timeout\": 60000, \"write_timeout\": 60000, \"connect_timeout\": 60000}', '服务', '127.0.0.1', '2021-03-18 17:16:12', '会员三户管理员 新增 服务');
INSERT INTO `kongx_operation_log` VALUES (548, 'cuaAdmin', 'devall', '会员三户管理员', '修改', '{\"id\": \"343c6f16-42a1-4d47-89cf-51455c20fced\", \"host\": \"bbbb111\", \"name\": \"bbbb1111\", \"path\": \"/\", \"port\": 80, \"retries\": 5, \"protocol\": \"http\", \"created_at\": 1616058971, \"updated_at\": 1616058971, \"read_timeout\": 60000, \"write_timeout\": 60000, \"connect_timeout\": 60000}', '服务', '127.0.0.1', '2021-03-18 17:16:29', '会员三户管理员 修改 服务');
INSERT INTO `kongx_operation_log` VALUES (549, 'cuaAdmin', 'devall', '会员三户管理员', '新增', '{\"name\": \"t3-rate-limiting-new\", \"config\": {\"path\": \"[\\\"aaa\\\"]\", \"policy\": \"local\", \"second\": 1, \"limit_by\": \"path\", \"redis_port\": 6379, \"redis_timeout\": 2000, \"hide_client_headers\": true}, \"enabled\": true, \"service\": {\"id\": \"343c6f16-42a1-4d47-89cf-51455c20fced\"}}', '插件', '127.0.0.1', '2021-03-18 17:17:03', '会员三户管理员 新增 插件');
INSERT INTO `kongx_operation_log` VALUES (550, 'cuaAdmin', NULL, '会员三户管理员', 'login', '{\"id\": 0, \"name\": \"会员三户管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"cuaAdmin\", \"creator\": \"admin\", \"password\": \"eb414ba73b3a43747fd58f69e213e06587d1f6d3\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616046676000, \"modify_at\": 1616059192679, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-18 17:19:53', '会员三户管理员 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (551, 'cuaAdmin', 'devall', '会员三户管理员', '修改', '{\"id\": \"343c6f16-42a1-4d47-89cf-51455c20fced\", \"host\": \"bbbb111222\", \"name\": \"bbbb1111222\", \"path\": \"/\", \"port\": 80, \"retries\": 5, \"protocol\": \"http\", \"created_at\": 1616058971, \"updated_at\": 1616058989, \"read_timeout\": 60000, \"write_timeout\": 60000, \"connect_timeout\": 60000}', '服务', '127.0.0.1', '2021-03-18 17:20:09', '会员三户管理员 修改 服务');
INSERT INTO `kongx_operation_log` VALUES (552, 'cuaAdmin', 'devall', '会员三户管理员', '删除', '\"343c6f16-42a1-4d47-89cf-51455c20fced\"', '服务', '127.0.0.1', '2021-03-18 17:20:19', '会员三户管理员 删除 服务');
INSERT INTO `kongx_operation_log` VALUES (553, 'cuaAdmin', NULL, '会员三户管理员', 'login', '{\"id\": 0, \"name\": \"会员三户管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"cuaAdmin\", \"creator\": \"admin\", \"password\": \"eb414ba73b3a43747fd58f69e213e06587d1f6d3\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616046676000, \"modify_at\": 1616060415307, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-18 17:40:15', '会员三户管理员 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (554, 'cuaAdmin', NULL, '会员三户管理员', 'login', '{\"id\": 0, \"name\": \"会员三户管理员\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"cuaAdmin\", \"creator\": \"admin\", \"password\": \"eb414ba73b3a43747fd58f69e213e06587d1f6d3\", \"roleName\": \"domestic_consumer\", \"create_at\": 1616046676000, \"modify_at\": 1616060415307, \"userGroupList\": []}', 'system', '127.0.0.1', '2021-03-18 17:40:15', '会员三户管理员 登录 系统');
INSERT INTO `kongx_operation_log` VALUES (555, 'cuaAdmin', 'devall', '会员三户管理员', '新增', '{\"host\": \"aaaa\", \"name\": \"aaaaa\", \"path\": \"/\", \"port\": 80, \"retries\": 5, \"protocol\": \"http\", \"updated_at\": 0, \"read_timeout\": 60000, \"write_timeout\": 60000, \"connect_timeout\": 60000}', '服务', '127.0.0.1', '2021-03-18 17:40:28', '会员三户管理员 新增 服务');
INSERT INTO `kongx_operation_log` VALUES (556, 'cuaAdmin', 'devall', '会员三户管理员', '修改', '{\"id\": \"62cf57bb-2f21-470b-8b24-13c3ab82baba\", \"host\": \"aaaa1111\", \"name\": \"aaaaa111\", \"path\": \"/\", \"port\": 80, \"retries\": 5, \"protocol\": \"http\", \"created_at\": 1616060428, \"updated_at\": 1616060428, \"read_timeout\": 60000, \"write_timeout\": 60000, \"connect_timeout\": 60000}', '服务', '127.0.0.1', '2021-03-18 17:40:40', '会员三户管理员 修改 服务');
INSERT INTO `kongx_operation_log` VALUES (557, 'cuaAdmin', 'devall', '会员三户管理员', '删除', '\"62cf57bb-2f21-470b-8b24-13c3ab82baba\"', '服务', '127.0.0.1', '2021-03-18 17:40:45', '会员三户管理员 删除 服务');
INSERT INTO `kongx_operation_log` VALUES (558, 'admin', NULL, 'admin', 'login', '{\"id\": 0, \"name\": \"admin\", \"page\": 0, \"email\": \"\", \"limit\": 10, \"start\": 0, \"mobile\": \"\", \"status\": \"activate\", \"userId\": \"admin\", \"creator\": \"admin\", \"password\": \"60029c3f5fdb5f1291362f52f7251702507ebc5b\", \"roleName\": \"domestic_consumer\", \"create_at\": 1599733298000, \"modify_at\": 1616061956772, \"userGroupList\": []}', 'system', '0:0:0:0:0:0:0:1', '2021-03-18 18:05:57', 'admin 登录 系统');

-- ----------------------------
-- Table structure for kongx_server_config
-- ----------------------------
DROP TABLE IF EXISTS `kongx_server_config`;
CREATE TABLE `kongx_server_config`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `config_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `config_value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `config_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数类型',
  `comment` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` timestamp(0) NULL DEFAULT NULL,
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modify_at` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_config_key`(`config_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kongx_server_config
-- ----------------------------
INSERT INTO `kongx_server_config` VALUES (1, 'super_admin', 'admin,zhangshan', 'system', '超级管理员', '2019-12-12 16:34:07', 'admin', NULL, '2019-12-12 16:33:58.156');
INSERT INTO `kongx_server_config` VALUES (6, 'envs', '[\n  {\n    \"name\": \"开发环境all\",\n    \"code\": \"dev\",\n    \"deployType\": \"dev\",\n    \"profiles\": [\n      {\n        \"profile\": \"all\",\n        \"code\": \"dev_all\"\n      }\n    ]\n  },\n  {\n    \"name\": \"测试环境\",\n    \"code\": \"test\",\n    \"deployType\": \"test\",\n    \"profiles\": [\n      {\n        \"profile\": \"c\",\n        \"code\": \"test_c\"\n      },\n      {\n        \"profile\": \"b\",\n        \"code\": \"test_b\"\n      },\n      {\n        \"profile\": \"b-pri\",\n        \"code\": \"test_b-pri\"\n      },\n      {\n        \"profile\": \"vehicle\",\n        \"code\": \"test_vehicle\"\n      },\n      {\n        \"profile\": \"promotion\",\n        \"code\": \"test_promotion\"\n      },\n      {\n        \"profile\": \"metrics\",\n        \"code\": \"test_metrics\"\n      }\n    ]\n  },\n  {\n    \"name\": \"私有云压测\",\n    \"code\": \"cqpst\",\n    \"deployType\": \"cqpst\",\n    \"profiles\": [\n      {\n        \"profile\": \"c\",\n        \"code\": \"cqpst_c\"\n      },\n      {\n        \"profile\": \"b\",\n        \"code\": \"cqpst_b\"\n      },\n      {\n        \"profile\": \"b-pri\",\n        \"code\": \"cqpst_b-pri\"\n      },\n      {\n        \"profile\": \"vehicle\",\n        \"code\": \"cqpst_vehicle\"\n      },\n      {\n        \"profile\": \"promotion\",\n        \"code\": \"cqpst_promotion\"\n      },\n      {\n        \"profile\": \"metrics\",\n        \"code\": \"cqpst_metrics\"\n      }\n    ]\n  },\n  {\n    \"name\": \"公有云压测\",\n    \"code\": \"pst\",\n    \"deployType\": \"pst\",\n    \"profiles\": [\n      {\n        \"profile\": \"c\",\n        \"code\": \"pst_c\"\n      },\n      {\n        \"profile\": \"b\",\n        \"code\": \"pst_b\"\n      },\n      {\n        \"profile\": \"b-pri\",\n        \"code\": \"pst_b-pri\"\n      },\n      {\n        \"profile\": \"vehicle\",\n        \"code\": \"pst_vehicle\"\n      },\n      {\n        \"profile\": \"promotion\",\n        \"code\": \"pst_promotion\"\n      },\n      {\n        \"profile\": \"metrics\",\n        \"code\": \"pst_metrics\"\n      }\n    ]\n  },\n  {\n    \"name\": \"预生产\",\n    \"code\": \"pre\",\n    \"deployType\": \"pre\",\n    \"profiles\": [\n      {\n        \"profile\": \"c\",\n        \"code\": \"pre_c\"\n      },\n      {\n        \"profile\": \"b\",\n        \"code\": \"pre_b\"\n      },\n      {\n        \"profile\": \"b-pri\",\n        \"code\": \"pre_b-pri\"\n      },\n      {\n        \"profile\": \"vehicle\",\n        \"code\": \"pre_vehicle\"\n      },\n      {\n        \"profile\": \"promotion\",\n        \"code\": \"pre_promotion\"\n      },\n      {\n        \"profile\": \"metrics\",\n        \"code\": \"pre_metrics\"\n      }\n    ]\n  },\n  {\n    \"name\": \"生产\",\n    \"code\": \"gray\",\n    \"deployType\": \"gray\",\n    \"profiles\": [\n      {\n        \"profile\": \"c\",\n        \"code\": \"gray_c\"\n      },\n      {\n        \"profile\": \"b\",\n        \"code\": \"gray_b\"\n      },\n      {\n        \"profile\": \"b-pri\",\n        \"code\": \"gray_b-pri\"\n      },\n      {\n        \"profile\": \"vehicle\",\n        \"code\": \"gray_vehicle\"\n      },\n      {\n        \"profile\": \"promotion\",\n        \"code\": \"gray_promotion\"\n      },\n      {\n        \"profile\": \"metrics\",\n        \"code\": \"gray_metrics\"\n      }\n    ]\n  }\n]\n', 'system', '环境列表，默认支持', '2019-12-16 17:06:27', NULL, NULL, '2019-12-16 16:37:53.122');
INSERT INTO `kongx_server_config` VALUES (7, 'envs_extension', '[]', 'extension', '环境列表的扩展配置', '2019-12-16 16:09:21', NULL, NULL, '2019-12-16 16:08:59.814');
INSERT INTO `kongx_server_config` VALUES (13, 'default_domains', '[\"examples.com\",\"a.examples.com\"]', NULL, '默认的网关域名列表', '2020-01-19 11:43:34', NULL, NULL, '2020-01-19 11:43:45.75');
INSERT INTO `kongx_server_config` VALUES (20, 'config_type', '[{\"label\":\"内置参数\",\"value\":\"system\"},{\"label\":\"扩展参数\",\"value\":\"extension\"}]', 'system', '系统内置参数', '2020-04-09 16:36:52', NULL, NULL, '2020-04-09 19:19:56.202');
INSERT INTO `kongx_server_config` VALUES (21, 'config_type_extension', '[]', 'extension', '扩展参数类型', '2020-04-09 19:31:05', NULL, NULL, '2020-04-09 19:31:05.433');

-- ----------------------------
-- Table structure for kongx_service_pipeline
-- ----------------------------
DROP TABLE IF EXISTS `kongx_service_pipeline`;
CREATE TABLE `kongx_service_pipeline`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户组名称',
  `create_at` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `modifier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `modify_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `link_list` json NULL,
  `node_list` json NULL,
  `origin` json NULL,
  `profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属环境',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kongx_sync_config
-- ----------------------------
DROP TABLE IF EXISTS `kongx_sync_config`;
CREATE TABLE `kongx_sync_config`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `sync_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `services` json NULL,
  `dest_clients` json NULL,
  `comment` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `data_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `policy` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `src_client` json NULL,
  `log_type` int(0) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kongx_sync_log
-- ----------------------------
DROP TABLE IF EXISTS `kongx_sync_log`;
CREATE TABLE `kongx_sync_log`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `sync_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `service` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `src_client` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dest_client` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` json NULL,
  `comment` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for kongx_system_function
-- ----------------------------
DROP TABLE IF EXISTS `kongx_system_function`;
CREATE TABLE `kongx_system_function`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(0) NULL DEFAULT NULL COMMENT '父ID',
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `menu_icon` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标icon',
  `visit_view` varchar(2048) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问视图',
  `visit_path` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问路径',
  `use_yn` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'y' COMMENT '是否可用n-不可用，y-可用',
  `menu_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'menu' COMMENT '菜单类型(menu=菜单,point=功能点)',
  `application_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'kongx' COMMENT '所属系统code',
  `sort_order` int(0) NULL DEFAULT 0 COMMENT '排序，小的在前面',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `nh_parentid`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 76 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kongx_system_function
-- ----------------------------
INSERT INTO `kongx_system_function` VALUES (1, -1, '', '首页', 'icon-shouye', 'page/wel', '/home', 'y', 'menu', 'kongx', 1);
INSERT INTO `kongx_system_function` VALUES (4, 5, '', 'Kong Shell', 'icon-shell', 'views/gateway/shell/index', 'shell', 'y', 'menu', 'kongx', 9);
INSERT INTO `kongx_system_function` VALUES (5, -1, NULL, 'Gateway', 'icon-gateway', '', '/gateway', 'y', 'menu', 'kongx', 4);
INSERT INTO `kongx_system_function` VALUES (6, 5, '', 'Upstreams', 'icon-gateway', 'views/gateway/upstream/index', 'upstream', 'y', 'menu', 'kongx', 2);
INSERT INTO `kongx_system_function` VALUES (7, 5, NULL, 'Services', 'icon-services', 'views/gateway/service/index', 'service', 'y', 'menu', 'kongx', 3);
INSERT INTO `kongx_system_function` VALUES (8, 5, '', 'Routes', 'icon-route', 'views/gateway/routing/index', 'routing', 'y', 'menu', 'kongx', 4);
INSERT INTO `kongx_system_function` VALUES (9, 5, '', 'Plugins', 'icon-plugin', 'views/gateway/plugin/index', 'plugin', 'y', 'menu', 'kongx', 5);
INSERT INTO `kongx_system_function` VALUES (10, -1, '', '系统管理', 'icon-system', '', '/system', 'y', 'menu', 'kongx', 6);
INSERT INTO `kongx_system_function` VALUES (11, 10, NULL, '用户管理', 'icon-yonghuguanli', 'views/admin/user/index', 'user', 'y', 'menu', 'kongx', 1);
INSERT INTO `kongx_system_function` VALUES (12, 10, NULL, '角色管理', 'icon-quanxianguanli', 'views/admin/role/index', 'role', 'y', 'menu', 'kongx', 2);
INSERT INTO `kongx_system_function` VALUES (13, 10, NULL, '菜单管理', 'icon-caidanguanli', 'views/admin/menu/index', 'menu', 'y', 'menu', 'kongx', 4);
INSERT INTO `kongx_system_function` VALUES (14, -1, NULL, '参数管理', 'icon-canshuguanli', '', '/operating', 'y', 'menu', 'kongx', 7);
INSERT INTO `kongx_system_function` VALUES (15, 14, NULL, '环境管理', 'icon-huanjingguanli', 'views/operating/env/index', 'envs', 'y', 'menu', 'kongx', 1);
INSERT INTO `kongx_system_function` VALUES (16, 14, NULL, '系统参数', 'icon-xitongcanshu', 'views/operating/params/index', 'params', 'y', 'menu', 'kongx', 2);
INSERT INTO `kongx_system_function` VALUES (17, -1, NULL, '日志管理', 'icon-rizhiguanli1', '', '/audit', 'y', 'menu', 'kongx', 8);
INSERT INTO `kongx_system_function` VALUES (18, 17, '', '同步日志', 'icon-sync', 'views/operating/synclog/index', 'synclog', 'y', 'menu', 'kongx', 3);
INSERT INTO `kongx_system_function` VALUES (19, 17, NULL, '操作日志', 'icon-log', 'views/operating/log/index', 'operationlog', 'y', 'menu', 'kongx', 1);
INSERT INTO `kongx_system_function` VALUES (20, 6, 'upstream_add', '新增上游代理', '', '', '', 'y', 'point', 'kongx', 1);
INSERT INTO `kongx_system_function` VALUES (21, 6, 'upstream_update', '修改上游代理', '', '', '', 'y', 'point', 'kongx', 2);
INSERT INTO `kongx_system_function` VALUES (22, 6, 'upstream_delete', '删除上游代理', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (23, 7, 'service_add', '新增服务', '', '', '', 'y', 'point', 'kongx', 1);
INSERT INTO `kongx_system_function` VALUES (24, 7, 'service_update', '修改服务', '', '', '', 'y', 'point', 'kongx', 2);
INSERT INTO `kongx_system_function` VALUES (25, 7, 'service_delete', '删除服务', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (26, 7, 'service_sync', '同步服务', '', '', '', 'y', 'point', 'kongx', 4);
INSERT INTO `kongx_system_function` VALUES (27, 8, 'route_update', '更新路由', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (28, 8, 'route_delete', '删除路由', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (29, 9, 'plugin_update', '更新插件', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (30, 9, 'plugin_delete', '删除插件', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (31, 9, 'plugin_add', '新增插件', '', '', '', 'y', 'point', 'kongx', 1);
INSERT INTO `kongx_system_function` VALUES (32, 11, 'user_authority', '用户授权', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (33, 13, 'menu_add', '新建菜单', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (34, 13, 'menu_delete', '删除菜单', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (35, 13, 'menu_update', '修改菜单', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (36, 12, 'role_add', '新建角色', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (37, 12, 'role_update', '修改角色', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (38, 12, 'role_config', '配置权限', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (39, 7, 'service_view', '查看服务', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (40, 6, 'upstream_view', '查看上游代理', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (41, 8, 'route_view', '查看路由', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (42, 9, 'plugin_view', '查看插件', '', '', '', 'y', 'point', 'kongx', 1);
INSERT INTO `kongx_system_function` VALUES (43, 11, 'user_view', '查看用户列表', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (44, 13, 'menu_view', '查看菜单', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (45, 12, 'role_view', '查看角色', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (46, 16, 'params_view', '查看系统参数', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (47, 10, NULL, '用户组管理', 'icon-yonghuzuguanli', 'views/admin/usergroup/index', 'group', 'y', 'menu', 'kongx', 3);
INSERT INTO `kongx_system_function` VALUES (48, 47, 'usergroup_add', '新增用户组', '', '', '', 'y', 'point', 'kongx', 2);
INSERT INTO `kongx_system_function` VALUES (49, 47, 'usergroup_update', '修改用户组', '', '', '', 'y', 'point', 'kongx', 2);
INSERT INTO `kongx_system_function` VALUES (50, 47, 'usergroup_delete', '删除用户组', '', '', '', 'y', 'point', 'kongx', 3);
INSERT INTO `kongx_system_function` VALUES (51, 47, 'usergroup_view', '查看用户组', '', '', '', 'y', 'point', 'kongx', 1);
INSERT INTO `kongx_system_function` VALUES (52, 47, 'usergroup_config', '用户组配置', '', '', '', 'y', 'point', 'kongx', 4);
INSERT INTO `kongx_system_function` VALUES (53, 5, '', 'Consumers', 'icon-consumer', 'views/gateway/consumer/index', '', 'y', 'menu', 'kongx', 6);
INSERT INTO `kongx_system_function` VALUES (54, 53, 'consumer_view', '查看consumer', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (55, 16, 'params_add', '新增参数', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (56, 16, 'params_update', '修改参数', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (58, 15, 'manage_env', '环境维护', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (59, 5, '', 'Snis', 'icon-sni', 'views/gateway/sni/index', 'snis', 'y', 'menu', 'kongx', 7);
INSERT INTO `kongx_system_function` VALUES (60, 5, '', 'Certificates', 'icon-certificate', 'views/gateway/certificate/index', 'certificate', 'y', 'menu', 'kongx', 8);
INSERT INTO `kongx_system_function` VALUES (61, 53, 'consumer_add', '新增consumer', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (62, 53, 'consumer_update', '更新consumer', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (63, 53, 'consumer_delete', '删除consumer', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (64, 60, 'certificate_view', '查看certificate', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (65, 60, 'certificate_add', '新增certificate', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (66, 60, 'certificate_update', '修改certificate', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (67, 60, 'certificate_delete', '删除certificate', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (68, -1, 'gateway-pipeline', '网关流水线', 'icon-pipeline', '', '', 'y', 'menu', 'kongx', 2);
INSERT INTO `kongx_system_function` VALUES (69, 68, 'pipeline', 'Pipeline', 'icon-pipeline', 'views/gateway/flow/index', 'pipeline', 'y', 'menu', 'kongx', 1);
INSERT INTO `kongx_system_function` VALUES (70, 69, 'add_pipeline', '新增流水线', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (71, 69, 'update_pipeline', '更新流水线', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (72, 69, 'remove_pipeline', '删除流水线', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (73, 69, 'config_pipeline', '配置流水线', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (74, 69, 'view_pipeline', '查看流水线', '', '', '', 'y', 'point', 'kongx', 999);
INSERT INTO `kongx_system_function` VALUES (75, 69, 'view_config_pipeline', '查看流水线配置', '', '', '', 'y', 'point', 'kongx', 999);

-- ----------------------------
-- Table structure for kongx_system_profile
-- ----------------------------
DROP TABLE IF EXISTS `kongx_system_profile`;
CREATE TABLE `kongx_system_profile`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `profile_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '环境编码(部署+业务端)',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `env` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属环境',
  `deploy_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部署类型',
  `ab` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简称',
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'kong版本号',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extensions` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_at` timestamp(0) NULL DEFAULT NULL,
  `profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uh_profile_code`(`profile_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kongx_system_profile
-- ----------------------------
INSERT INTO `kongx_system_profile` VALUES (36, 'test_b', 'test_b', 'test', 'test', 'testb', '2.0.4', 'http://10.3.111.164:8001/', '[]', '2021-03-17 14:27:23', 'testb', NULL, NULL);
INSERT INTO `kongx_system_profile` VALUES (37, 'test_c', 'test_c', 'test', 'test', 'testc', '2.0.4', 'http://10.3.111.168:8001/', '[]', '2021-03-17 15:11:47', 'testc', NULL, NULL);
INSERT INTO `kongx_system_profile` VALUES (38, 'test_vehicle', 'test_vehicle', 'test', 'test', 'testvehicle', '2.0.4', 'http://10.3.111.170:8001/', '[]', '2021-03-17 15:11:47', 'testvehicle', NULL, NULL);
INSERT INTO `kongx_system_profile` VALUES (39, 'test_promotion', 'test_promotion', 'test', 'test', 'testpromotion', '2.0.4', 'http://10.3.111.171:8001/', '[]', '2021-03-17 15:11:47', 'testpromotion', NULL, NULL);
INSERT INTO `kongx_system_profile` VALUES (40, 'test_metrics', 'test_metrics', 'test', 'test', 'testmetrics', '2.0.4', 'http://10.3.111.172:8001/', '[]', '2021-03-17 15:11:47', 'testmetrics', NULL, NULL);
INSERT INTO `kongx_system_profile` VALUES (41, 'test_b-pri', 'test_b-pri', 'test', 'test', 'testb-pri', '2.0.4', 'http://10.3.111.165:8001/', '[]', '2021-03-17 15:11:47', 'testb-pri', NULL, NULL);
INSERT INTO `kongx_system_profile` VALUES (43, 'dev_all', 'dev_all', 'dev', 'dev', 'devall', '2.0.4', 'http://10.3.68.108:8001', '[]', '2021-03-17 15:53:00', 'devall', NULL, NULL);
INSERT INTO `kongx_system_profile` VALUES (44, 'cqpst_c', 'cqpst_c', 'cqpst', 'cqpst', 'cqpstc', '2.0.4', 'http://10.3.206.137:8001/', '[]', '2021-03-18 14:29:54', 'cqpstc', NULL, NULL);
INSERT INTO `kongx_system_profile` VALUES (45, 'cqpst_b', 'cqpst_b', 'cqpst', 'cqpst', 'cqpstb', '2.0.4', 'http://10.3.206.135:8001/', '[]', '2021-03-18 14:29:54', 'cqpstb', NULL, NULL);
INSERT INTO `kongx_system_profile` VALUES (46, 'cqpst_b-pri', 'cqpst_b-pri', 'cqpst', 'cqpst', 'cqpstb-pri', '2.0.4', 'http://10.3.206.136:8001/', '[]', '2021-03-18 14:29:54', 'cqpstb-pri', NULL, NULL);
INSERT INTO `kongx_system_profile` VALUES (47, 'cqpst_vehicle', 'cqpst_vehicle', 'cqpst', 'cqpst', 'cqpstvehicle', '2.0.4', 'http://10.3.206.138:8001/', '[]', '2021-03-18 14:29:54', 'cqpstvehicle', NULL, NULL);
INSERT INTO `kongx_system_profile` VALUES (48, 'cqpst_promotion', 'cqpst_promotion', 'cqpst', 'cqpst', 'cqpstpromotion', '2.0.4', 'http://10.3.206.139:8001/', '[]', '2021-03-18 14:29:54', 'cqpstpromotion', NULL, NULL);
INSERT INTO `kongx_system_profile` VALUES (49, 'cqpst_metrics', 'cqpst_metrics', 'cqpst', 'cqpst', 'cqpstmetrics', '2.0.4', 'http://10.3.206.140:8001/', '[]', '2021-03-18 14:29:54', 'cqpstmetrics', NULL, NULL);

-- ----------------------------
-- Table structure for kongx_system_role
-- ----------------------------
DROP TABLE IF EXISTS `kongx_system_role`;
CREATE TABLE `kongx_system_role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色编码',
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色类型: roleType 菜单角色，数据权限角色',
  `sort_order` bigint(0) NULL DEFAULT NULL COMMENT '排序',
  `use_yn` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否可用n-不可用，y-可用',
  `remark` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_at` timestamp(0) NULL DEFAULT NULL,
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `modifier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `modify_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kongx_system_role
-- ----------------------------
INSERT INTO `kongx_system_role` VALUES (1, 'super_admin', '超级管理员', 'menu', NULL, 'y', NULL, '2020-05-11 16:00:00', 'admin', 'admin', '2020-09-28 15:05:49');
INSERT INTO `kongx_system_role` VALUES (2, 'domestic_consumer', '普通用户', 'menu', NULL, 'y', NULL, '2020-05-09 16:42:53', 'admin', 'admin', '2020-09-28 15:05:51');
INSERT INTO `kongx_system_role` VALUES (6, 'buMenuAdminRule', 'buMenuAdminRule', 'menu', NULL, 'y', 'BU菜单管理权限，可以仅仅提供service菜单', '2021-03-18 13:49:26', 'admin', NULL, '2021-03-18 13:49:25');
INSERT INTO `kongx_system_role` VALUES (7, 'cua_service_admin_rule', '会员三户数据角色', 'data', NULL, 'y', '会员三户的service数据管理权限', '2021-03-18 13:50:47', 'admin', NULL, '2021-03-18 14:06:38');
INSERT INTO `kongx_system_role` VALUES (9, 'pay_service_admin_rule', '支付bu数据角色', 'data', NULL, 'y', '支付bu的service数据管理权限', '2021-03-18 13:50:47', 'admin', NULL, '2021-03-18 14:06:38');
INSERT INTO `kongx_system_role` VALUES (10, 'route_service_admin_rule', '出行交易bu数据角色', 'data', NULL, 'y', '出行交易bu的service数据管理权限', '2021-03-18 13:50:47', 'admin', NULL, '2021-03-18 14:06:38');
INSERT INTO `kongx_system_role` VALUES (11, 'openApi_service_admin_rule', '开放平台bu数据角色', 'data', NULL, 'y', '开放平台bu的service数据管理权限', '2021-03-18 13:50:47', 'admin', NULL, '2021-03-18 14:06:38');
INSERT INTO `kongx_system_role` VALUES (12, 'marketing_service_admin_rule', '营销bu数据角色', 'data', NULL, 'y', '营销bu的service数据管理权限', '2021-03-18 13:50:47', 'admin', NULL, '2021-03-18 14:06:38');
INSERT INTO `kongx_system_role` VALUES (13, 'gis_service_admin_rule', 'GIS bu数据角色', 'data', NULL, 'y', 'GIS bu的service数据管理权限', '2021-03-18 13:50:47', 'admin', NULL, '2021-03-18 14:06:38');
INSERT INTO `kongx_system_role` VALUES (14, 'operation_service_admin_rule', '运营管理bu数据角色', 'data', NULL, 'y', '运营管理bu的service数据管理权限', '2021-03-18 13:50:47', 'admin', NULL, '2021-03-18 14:06:38');

-- ----------------------------
-- Table structure for kongx_system_role_function
-- ----------------------------
DROP TABLE IF EXISTS `kongx_system_role_function`;
CREATE TABLE `kongx_system_role_function`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(0) NULL DEFAULT NULL COMMENT '角色Id',
  `half_checked` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'y' COMMENT '是否半选中',
  `function_id` bigint(0) NULL DEFAULT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1094 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统角色与菜单关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kongx_system_role_function
-- ----------------------------
INSERT INTO `kongx_system_role_function` VALUES (1094, 6, 'n', 23);
INSERT INTO `kongx_system_role_function` VALUES (1095, 6, 'n', 24);
INSERT INTO `kongx_system_role_function` VALUES (1096, 6, 'n', 25);
INSERT INTO `kongx_system_role_function` VALUES (1097, 6, 'n', 39);
INSERT INTO `kongx_system_role_function` VALUES (1098, 6, 'y', -1);
INSERT INTO `kongx_system_role_function` VALUES (1099, 6, 'y', 5);
INSERT INTO `kongx_system_role_function` VALUES (1100, 6, 'y', 7);
INSERT INTO `kongx_system_role_function` VALUES (1108, 2, 'n', 39);
INSERT INTO `kongx_system_role_function` VALUES (1109, 2, 'y', -1);
INSERT INTO `kongx_system_role_function` VALUES (1110, 2, 'y', 5);
INSERT INTO `kongx_system_role_function` VALUES (1111, 2, 'y', 7);
INSERT INTO `kongx_system_role_function` VALUES (1112, 1, 'n', 1);
INSERT INTO `kongx_system_role_function` VALUES (1113, 1, 'n', 6);
INSERT INTO `kongx_system_role_function` VALUES (1114, 1, 'n', 20);
INSERT INTO `kongx_system_role_function` VALUES (1115, 1, 'n', 21);
INSERT INTO `kongx_system_role_function` VALUES (1116, 1, 'n', 40);
INSERT INTO `kongx_system_role_function` VALUES (1117, 1, 'n', 22);
INSERT INTO `kongx_system_role_function` VALUES (1118, 1, 'n', 7);
INSERT INTO `kongx_system_role_function` VALUES (1119, 1, 'n', 23);
INSERT INTO `kongx_system_role_function` VALUES (1120, 1, 'n', 24);
INSERT INTO `kongx_system_role_function` VALUES (1121, 1, 'n', 26);
INSERT INTO `kongx_system_role_function` VALUES (1122, 1, 'n', 25);
INSERT INTO `kongx_system_role_function` VALUES (1123, 1, 'n', 39);
INSERT INTO `kongx_system_role_function` VALUES (1124, 1, 'n', 8);
INSERT INTO `kongx_system_role_function` VALUES (1125, 1, 'n', 41);
INSERT INTO `kongx_system_role_function` VALUES (1126, 1, 'n', 27);
INSERT INTO `kongx_system_role_function` VALUES (1127, 1, 'n', 28);
INSERT INTO `kongx_system_role_function` VALUES (1128, 1, 'n', 9);
INSERT INTO `kongx_system_role_function` VALUES (1129, 1, 'n', 31);
INSERT INTO `kongx_system_role_function` VALUES (1130, 1, 'n', 42);
INSERT INTO `kongx_system_role_function` VALUES (1131, 1, 'n', 30);
INSERT INTO `kongx_system_role_function` VALUES (1132, 1, 'n', 29);
INSERT INTO `kongx_system_role_function` VALUES (1133, 1, 'n', 53);
INSERT INTO `kongx_system_role_function` VALUES (1134, 1, 'n', 54);
INSERT INTO `kongx_system_role_function` VALUES (1135, 1, 'n', 61);
INSERT INTO `kongx_system_role_function` VALUES (1136, 1, 'n', 62);
INSERT INTO `kongx_system_role_function` VALUES (1137, 1, 'n', 63);
INSERT INTO `kongx_system_role_function` VALUES (1138, 1, 'n', 59);
INSERT INTO `kongx_system_role_function` VALUES (1139, 1, 'n', 60);
INSERT INTO `kongx_system_role_function` VALUES (1140, 1, 'n', 64);
INSERT INTO `kongx_system_role_function` VALUES (1141, 1, 'n', 65);
INSERT INTO `kongx_system_role_function` VALUES (1142, 1, 'n', 66);
INSERT INTO `kongx_system_role_function` VALUES (1143, 1, 'n', 67);
INSERT INTO `kongx_system_role_function` VALUES (1144, 1, 'n', 10);
INSERT INTO `kongx_system_role_function` VALUES (1145, 1, 'n', 11);
INSERT INTO `kongx_system_role_function` VALUES (1146, 1, 'n', 43);
INSERT INTO `kongx_system_role_function` VALUES (1147, 1, 'n', 32);
INSERT INTO `kongx_system_role_function` VALUES (1148, 1, 'n', 12);
INSERT INTO `kongx_system_role_function` VALUES (1149, 1, 'n', 38);
INSERT INTO `kongx_system_role_function` VALUES (1150, 1, 'n', 45);
INSERT INTO `kongx_system_role_function` VALUES (1151, 1, 'n', 36);
INSERT INTO `kongx_system_role_function` VALUES (1152, 1, 'n', 37);
INSERT INTO `kongx_system_role_function` VALUES (1153, 1, 'n', 47);
INSERT INTO `kongx_system_role_function` VALUES (1154, 1, 'n', 51);
INSERT INTO `kongx_system_role_function` VALUES (1155, 1, 'n', 49);
INSERT INTO `kongx_system_role_function` VALUES (1156, 1, 'n', 48);
INSERT INTO `kongx_system_role_function` VALUES (1157, 1, 'n', 50);
INSERT INTO `kongx_system_role_function` VALUES (1158, 1, 'n', 52);
INSERT INTO `kongx_system_role_function` VALUES (1159, 1, 'n', 13);
INSERT INTO `kongx_system_role_function` VALUES (1160, 1, 'n', 44);
INSERT INTO `kongx_system_role_function` VALUES (1161, 1, 'n', 33);
INSERT INTO `kongx_system_role_function` VALUES (1162, 1, 'n', 34);
INSERT INTO `kongx_system_role_function` VALUES (1163, 1, 'n', 35);
INSERT INTO `kongx_system_role_function` VALUES (1164, 1, 'n', 14);
INSERT INTO `kongx_system_role_function` VALUES (1165, 1, 'n', 15);
INSERT INTO `kongx_system_role_function` VALUES (1166, 1, 'n', 58);
INSERT INTO `kongx_system_role_function` VALUES (1167, 1, 'n', 16);
INSERT INTO `kongx_system_role_function` VALUES (1168, 1, 'n', 46);
INSERT INTO `kongx_system_role_function` VALUES (1169, 1, 'n', 55);
INSERT INTO `kongx_system_role_function` VALUES (1170, 1, 'n', 56);
INSERT INTO `kongx_system_role_function` VALUES (1171, 1, 'n', 17);
INSERT INTO `kongx_system_role_function` VALUES (1172, 1, 'n', 19);
INSERT INTO `kongx_system_role_function` VALUES (1173, 1, 'n', 18);
INSERT INTO `kongx_system_role_function` VALUES (1174, 1, 'y', -1);
INSERT INTO `kongx_system_role_function` VALUES (1175, 1, 'y', 5);

-- ----------------------------
-- Table structure for kongx_system_role_service
-- ----------------------------
DROP TABLE IF EXISTS `kongx_system_role_service`;
CREATE TABLE `kongx_system_role_service`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(0) NOT NULL COMMENT '角色Id',
  `service` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'y' COMMENT 'service名称',
  `profile` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'kong集群环境标识',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_roleId_profile`(`role_id`, `profile`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1134 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统角色与servcie关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kongx_system_role_service
-- ----------------------------
INSERT INTO `kongx_system_role_service` VALUES (1132, 7, 'mall-app-api', 'testc');
INSERT INTO `kongx_system_role_service` VALUES (1133, 7, 'mall-app-api', 'devall');

-- ----------------------------
-- Table structure for kongx_user_group
-- ----------------------------
DROP TABLE IF EXISTS `kongx_user_group`;
CREATE TABLE `kongx_user_group`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(1024) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户组名称',
  `use_yn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否可用',
  `create_at` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `modifier` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `modify_at` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户组' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kongx_user_group
-- ----------------------------
INSERT INTO `kongx_user_group` VALUES (3, 'payBU', 'y', '2021-03-17 10:35:12', 'admin', 'admin', '2021-03-18 14:00:29', '');
INSERT INTO `kongx_user_group` VALUES (4, 'operationBU', 'y', '2021-03-17 10:35:17', 'admin', 'admin', '2021-03-18 14:00:34', '');
INSERT INTO `kongx_user_group` VALUES (5, 'gisBU', 'y', '2021-03-18 13:40:52', 'admin', 'admin', '2021-03-18 14:00:39', '');
INSERT INTO `kongx_user_group` VALUES (6, 'marketingBU', 'y', '2021-03-18 13:40:59', 'admin', 'admin', '2021-03-18 14:00:43', '');
INSERT INTO `kongx_user_group` VALUES (7, 'openApiBU', 'y', '2021-03-18 13:41:09', 'admin', 'admin', '2021-03-18 14:00:50', '');
INSERT INTO `kongx_user_group` VALUES (8, 'cuaBU', 'y', '2021-03-18 13:41:16', 'admin', 'admin', '2021-03-18 14:00:53', '');
INSERT INTO `kongx_user_group` VALUES (9, 'routeBU', 'y', '2021-03-18 13:41:25', 'admin', 'admin', '2021-03-18 14:01:02', '');

-- ----------------------------
-- Table structure for kongx_user_group_role
-- ----------------------------
DROP TABLE IF EXISTS `kongx_user_group_role`;
CREATE TABLE `kongx_user_group_role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL COMMENT '用户组ID',
  `role_id` int(0) NOT NULL COMMENT '角色ID',
  `profile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '所属环境',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户组与角色关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kongx_user_group_role
-- ----------------------------
INSERT INTO `kongx_user_group_role` VALUES (37, 8, 6, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (38, 8, 7, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (39, 8, 7, 'testc');
INSERT INTO `kongx_user_group_role` VALUES (40, 8, 6, 'testc');
INSERT INTO `kongx_user_group_role` VALUES (41, 9, 6, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (42, 9, 6, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (43, 9, 10, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (44, 9, 6, 'testc');
INSERT INTO `kongx_user_group_role` VALUES (45, 9, 10, 'testc');
INSERT INTO `kongx_user_group_role` VALUES (46, 8, 6, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (47, 8, 7, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (48, 8, 6, 'testc');
INSERT INTO `kongx_user_group_role` VALUES (49, 8, 7, 'testc');
INSERT INTO `kongx_user_group_role` VALUES (50, 7, 6, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (51, 7, 11, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (52, 7, 6, 'testc');
INSERT INTO `kongx_user_group_role` VALUES (53, 7, 11, 'testc');
INSERT INTO `kongx_user_group_role` VALUES (54, 6, 6, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (55, 6, 12, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (56, 6, 6, 'testc');
INSERT INTO `kongx_user_group_role` VALUES (57, 6, 12, 'testc');
INSERT INTO `kongx_user_group_role` VALUES (58, 5, 6, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (59, 5, 13, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (60, 5, 6, 'testc');
INSERT INTO `kongx_user_group_role` VALUES (61, 5, 13, 'testc');
INSERT INTO `kongx_user_group_role` VALUES (62, 4, 6, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (63, 4, 14, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (64, 4, 6, 'testc');
INSERT INTO `kongx_user_group_role` VALUES (65, 4, 14, 'testc');
INSERT INTO `kongx_user_group_role` VALUES (66, 3, 6, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (67, 3, 9, 'devall');
INSERT INTO `kongx_user_group_role` VALUES (68, 3, 6, 'testc');
INSERT INTO `kongx_user_group_role` VALUES (69, 3, 9, 'testc');

-- ----------------------------
-- Table structure for kongx_user_group_user
-- ----------------------------
DROP TABLE IF EXISTS `kongx_user_group_user`;
CREATE TABLE `kongx_user_group_user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `group_id` int(0) NOT NULL COMMENT '用户组ID',
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户组与用户的关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kongx_user_group_user
-- ----------------------------
INSERT INTO `kongx_user_group_user` VALUES (3, 8, 'cuaAdmin');
INSERT INTO `kongx_user_group_user` VALUES (4, 3, 'payAdmin');
INSERT INTO `kongx_user_group_user` VALUES (5, 9, 'routeAdmin');
INSERT INTO `kongx_user_group_user` VALUES (7, 6, 'maketingAdmin');
INSERT INTO `kongx_user_group_user` VALUES (8, 5, 'gisAdmin');
INSERT INTO `kongx_user_group_user` VALUES (9, 7, 'openAdmin');
INSERT INTO `kongx_user_group_user` VALUES (10, 4, 'operationAdmin');

-- ----------------------------
-- Table structure for kongx_user_info
-- ----------------------------
DROP TABLE IF EXISTS `kongx_user_info`;
CREATE TABLE `kongx_user_info`  (
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户Id',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '邮箱',
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `creator` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_at` timestamp(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  INDEX `mobile`(`mobile`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kongx_user_info
-- ----------------------------
INSERT INTO `kongx_user_info` VALUES ('admin', 'admin', '', '', '60029c3f5fdb5f1291362f52f7251702507ebc5b', 'activate', 'admin', '2020-09-10 18:21:38');
INSERT INTO `kongx_user_info` VALUES ('cuaAdmin', '会员三户管理员', '', '', 'eb414ba73b3a43747fd58f69e213e06587d1f6d3', 'activate', 'admin', '2021-03-18 13:51:16');
INSERT INTO `kongx_user_info` VALUES ('gisAdmin', 'gis管理员', '', '', 'b2b9ceb1bbc00b584fc90caf85f61f70767b6415', 'activate', 'admin', '2021-03-18 14:14:03');
INSERT INTO `kongx_user_info` VALUES ('maketingAdmin', '营销管理员', '', '', '802b7b8f9e08921b23e55d9db0930f147facee46', 'activate', 'admin', '2021-03-18 14:13:39');
INSERT INTO `kongx_user_info` VALUES ('openAdmin', '开放平台管理员', '', '', 'adae3d40d2a59df6376113232739d8620f361a7e', 'activate', 'admin', '2021-03-18 14:13:08');
INSERT INTO `kongx_user_info` VALUES ('operationAdmin', '运营系统管理员', '', '', 'adae3d40d2a59df6376113232739d8620f361a7e', 'activate', 'admin', '2021-03-18 14:17:13');
INSERT INTO `kongx_user_info` VALUES ('payAdmin', '支付会员管理员', '', '', '157168a78ce871016bf9ad102be840dac293353e', 'activate', 'admin', '2021-03-18 14:12:08');
INSERT INTO `kongx_user_info` VALUES ('routeAdmin', '出行交易管理员', '', '', '485bfa2dccef03e50d8f1f27326bfd265f603705', 'activate', 'admin', '2021-03-18 14:12:33');


