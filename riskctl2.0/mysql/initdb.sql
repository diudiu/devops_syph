/*
Navicat MySQL Data Transfer

Source Server         : 198Mysql
Source Server Version : 50628
Source Host           : 192.168.1.198:3306
Source Database       : featurefactory

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2017-04-06 14:48:49
*/

USE featurefactory;
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_23962d04_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_58c48ba9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`),
  CONSTRAINT `auth_permissi_content_type_id_51277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add task state', '7', 'add_taskmeta');
INSERT INTO `auth_permission` VALUES ('20', 'Can change task state', '7', 'change_taskmeta');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete task state', '7', 'delete_taskmeta');
INSERT INTO `auth_permission` VALUES ('22', 'Can add saved group result', '8', 'add_tasksetmeta');
INSERT INTO `auth_permission` VALUES ('23', 'Can change saved group result', '8', 'change_tasksetmeta');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete saved group result', '8', 'delete_tasksetmeta');
INSERT INTO `auth_permission` VALUES ('25', 'Can add interval', '9', 'add_intervalschedule');
INSERT INTO `auth_permission` VALUES ('26', 'Can change interval', '9', 'change_intervalschedule');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete interval', '9', 'delete_intervalschedule');
INSERT INTO `auth_permission` VALUES ('28', 'Can add crontab', '10', 'add_crontabschedule');
INSERT INTO `auth_permission` VALUES ('29', 'Can change crontab', '10', 'change_crontabschedule');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete crontab', '10', 'delete_crontabschedule');
INSERT INTO `auth_permission` VALUES ('31', 'Can add periodic tasks', '11', 'add_periodictasks');
INSERT INTO `auth_permission` VALUES ('32', 'Can change periodic tasks', '11', 'change_periodictasks');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete periodic tasks', '11', 'delete_periodictasks');
INSERT INTO `auth_permission` VALUES ('34', 'Can add periodic task', '12', 'add_periodictask');
INSERT INTO `auth_permission` VALUES ('35', 'Can change periodic task', '12', 'change_periodictask');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete periodic task', '12', 'delete_periodictask');
INSERT INTO `auth_permission` VALUES ('37', 'Can add worker', '13', 'add_workerstate');
INSERT INTO `auth_permission` VALUES ('38', 'Can change worker', '13', 'change_workerstate');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete worker', '13', 'delete_workerstate');
INSERT INTO `auth_permission` VALUES ('40', 'Can add task', '14', 'add_taskstate');
INSERT INTO `auth_permission` VALUES ('41', 'Can change task', '14', 'change_taskstate');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete task', '14', 'delete_taskstate');
INSERT INTO `auth_permission` VALUES ('43', 'Can add ', '15', 'add_clientoverview');
INSERT INTO `auth_permission` VALUES ('44', 'Can change ', '15', 'change_clientoverview');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete ', '15', 'delete_clientoverview');
INSERT INTO `auth_permission` VALUES ('46', 'Can add ', '16', 'add_citycodefield');
INSERT INTO `auth_permission` VALUES ('47', 'Can change ', '16', 'change_citycodefield');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete ', '16', 'delete_citycodefield');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 特征码值对应表', '17', 'add_featurecodemapping');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 特征码值对应表', '17', 'change_featurecodemapping');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 特征码值对应表', '17', 'delete_featurecodemapping');
INSERT INTO `auth_permission` VALUES ('52', 'Can add 数据源基本信息表', '18', 'add_datasourceinfo');
INSERT INTO `auth_permission` VALUES ('53', 'Can change 数据源基本信息表', '18', 'change_datasourceinfo');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete 数据源基本信息表', '18', 'delete_datasourceinfo');
INSERT INTO `auth_permission` VALUES ('55', 'Can add 接口表', '19', 'add_dsinterfaceinfo');
INSERT INTO `auth_permission` VALUES ('56', 'Can change 接口表', '19', 'change_dsinterfaceinfo');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete 接口表', '19', 'delete_dsinterfaceinfo');
INSERT INTO `auth_permission` VALUES ('58', 'Can add 分流处理逻辑配置表', '20', 'add_featureconf');
INSERT INTO `auth_permission` VALUES ('59', 'Can change 分流处理逻辑配置表', '20', 'change_featureconf');
INSERT INTO `auth_permission` VALUES ('60', 'Can delete 分流处理逻辑配置表', '20', 'delete_featureconf');
INSERT INTO `auth_permission` VALUES ('61', 'Can add 分流处理逻辑配置表', '21', 'add_featureshuntconf');
INSERT INTO `auth_permission` VALUES ('62', 'Can change 分流处理逻辑配置表', '21', 'change_featureshuntconf');
INSERT INTO `auth_permission` VALUES ('63', 'Can delete 分流处理逻辑配置表', '21', 'delete_featureshuntconf');
INSERT INTO `auth_permission` VALUES ('64', 'Can add 依赖关系处理逻辑配置表', '22', 'add_featurerelevanceconf');
INSERT INTO `auth_permission` VALUES ('65', 'Can change 依赖关系处理逻辑配置表', '22', 'change_featurerelevanceconf');
INSERT INTO `auth_permission` VALUES ('66', 'Can delete 依赖关系处理逻辑配置表', '22', 'delete_featurerelevanceconf');
INSERT INTO `auth_permission` VALUES ('67', 'Can add 授信模型系数配置表', '23', 'add_modelcoefficientconf');
INSERT INTO `auth_permission` VALUES ('68', 'Can change 授信模型系数配置表', '23', 'change_modelcoefficientconf');
INSERT INTO `auth_permission` VALUES ('69', 'Can delete 授信模型系数配置表', '23', 'delete_modelcoefficientconf');
INSERT INTO `auth_permission` VALUES ('70', 'Can add 授信模型字段权重表', '24', 'add_modelfieldoptionweight');
INSERT INTO `auth_permission` VALUES ('71', 'Can change 授信模型字段权重表', '24', 'change_modelfieldoptionweight');
INSERT INTO `auth_permission` VALUES ('72', 'Can delete 授信模型字段权重表', '24', 'delete_modelfieldoptionweight');
INSERT INTO `auth_permission` VALUES ('73', 'Can add 预处理字段表', '25', 'add_prefieldinfo');
INSERT INTO `auth_permission` VALUES ('74', 'Can change 预处理字段表', '25', 'change_prefieldinfo');
INSERT INTO `auth_permission` VALUES ('75', 'Can delete 预处理字段表', '25', 'delete_prefieldinfo');
INSERT INTO `auth_permission` VALUES ('76', 'Can add 特征计算方式配置表', '26', 'add_featureprocess');
INSERT INTO `auth_permission` VALUES ('77', 'Can change 特征计算方式配置表', '26', 'change_featureprocess');
INSERT INTO `auth_permission` VALUES ('78', 'Can delete 特征计算方式配置表', '26', 'delete_featureprocess');
INSERT INTO `auth_permission` VALUES ('79', 'Can add 特征类型配置表', '27', 'add_featuretype');
INSERT INTO `auth_permission` VALUES ('80', 'Can change 特征类型配置表', '27', 'change_featuretype');
INSERT INTO `auth_permission` VALUES ('81', 'Can delete 特征类型配置表', '27', 'delete_featuretype');
INSERT INTO `auth_permission` VALUES ('82', 'Can add 特征评分卡类型配置表', '28', 'add_featurecardtype');
INSERT INTO `auth_permission` VALUES ('83', 'Can change 特征评分卡类型配置表', '28', 'change_featurecardtype');
INSERT INTO `auth_permission` VALUES ('84', 'Can delete 特征评分卡类型配置表', '28', 'delete_featurecardtype');
INSERT INTO `auth_permission` VALUES ('85', 'Can add 特征规则类型配置表', '29', 'add_featureruletype');
INSERT INTO `auth_permission` VALUES ('86', 'Can change 特征规则类型配置表', '29', 'change_featureruletype');
INSERT INTO `auth_permission` VALUES ('87', 'Can delete 特征规则类型配置表', '29', 'delete_featureruletype');
INSERT INTO `auth_permission` VALUES ('88', 'Can add 函数库配置表', '30', 'add_funclibsource');
INSERT INTO `auth_permission` VALUES ('89', 'Can change 函数库配置表', '30', 'change_funclibsource');
INSERT INTO `auth_permission` VALUES ('90', 'Can delete 函数库配置表', '30', 'delete_funclibsource');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_30a071c9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_24702650_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_3d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_7cd7acb6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `celery_taskmeta`
-- ----------------------------
DROP TABLE IF EXISTS `celery_taskmeta`;
CREATE TABLE `celery_taskmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  `result` longtext,
  `date_done` datetime NOT NULL,
  `traceback` longtext,
  `hidden` tinyint(1) NOT NULL,
  `meta` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `celery_taskmeta_662f707d` (`hidden`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of celery_taskmeta
-- ----------------------------
INSERT INTO `celery_taskmeta` VALUES ('1', '745083ec-3b1d-442e-ac9c-26244abeaa5a', 'FAILURE', 'gAJjZXhjZXB0aW9ucwpVbmJvdW5kTG9jYWxFcnJvcgpxAVU6bG9jYWwgdmFyaWFibGUgJ2NhbGxiYWNrX3VybCcgcmVmZXJlbmNlZCBiZWZvcmUgYXNzaWdubWVudHEChXEDUnEELg==', '2017-03-08 16:09:50', 'Traceback (most recent call last):\n  File \"/usr/local/lib/python2.7/dist-packages/celery/app/trace.py\", line 240, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"/usr/local/lib/python2.7/dist-packages/celery/app/trace.py\", line 438, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"/home/spider/www/featurefactory/apps/async/tasks.py\", line 58, in audit_task\n    logger.info(\'Result call back url : %s\' % callback_url)\nUnboundLocalError: local variable \'callback_url\' referenced before assignment\n', '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('2', '93e3dc58-d227-40a6-bfb9-7aa2f887aa9a', 'SUCCESS', null, '2017-03-08 16:09:56', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('3', 'b866d2f5-024b-4720-b35b-4a90549a26b8', 'FAILURE', 'gAJjZXhjZXB0aW9ucwpVbmJvdW5kTG9jYWxFcnJvcgpxAVU6bG9jYWwgdmFyaWFibGUgJ2NhbGxiYWNrX3VybCcgcmVmZXJlbmNlZCBiZWZvcmUgYXNzaWdubWVudHEChXEDUnEELg==', '2017-03-08 16:14:07', 'Traceback (most recent call last):\n  File \"/usr/local/lib/python2.7/dist-packages/celery/app/trace.py\", line 240, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"/usr/local/lib/python2.7/dist-packages/celery/app/trace.py\", line 438, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"/home/spider/www/featurefactory/apps/async/tasks.py\", line 58, in audit_task\n    logger.info(\'Result call back url : %s\' % callback_url)\nUnboundLocalError: local variable \'callback_url\' referenced before assignment\n', '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('4', '9983d878-4899-4ad8-a663-5614764fc0e8', 'FAILURE', 'gAJjZXhjZXB0aW9ucwpVbmJvdW5kTG9jYWxFcnJvcgpxAVU6bG9jYWwgdmFyaWFibGUgJ2NhbGxiYWNrX3VybCcgcmVmZXJlbmNlZCBiZWZvcmUgYXNzaWdubWVudHEChXEDUnEELg==', '2017-03-08 16:18:27', 'Traceback (most recent call last):\n  File \"/usr/local/lib/python2.7/dist-packages/celery/app/trace.py\", line 240, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"/usr/local/lib/python2.7/dist-packages/celery/app/trace.py\", line 438, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"/home/spider/www/featurefactory/apps/async/tasks.py\", line 58, in audit_task\n    logger.info(\'Result call back url : %s\' % callback_url)\nUnboundLocalError: local variable \'callback_url\' referenced before assignment\n', '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('5', '7142457d-4a78-4337-b4b7-f58150345010', 'FAILURE', 'gAJjZXhjZXB0aW9ucwpVbmJvdW5kTG9jYWxFcnJvcgpxAVU6bG9jYWwgdmFyaWFibGUgJ2NhbGxiYWNrX3VybCcgcmVmZXJlbmNlZCBiZWZvcmUgYXNzaWdubWVudHEChXEDUnEELg==', '2017-03-08 16:18:43', 'Traceback (most recent call last):\n  File \"/usr/local/lib/python2.7/dist-packages/celery/app/trace.py\", line 240, in trace_task\n    R = retval = fun(*args, **kwargs)\n  File \"/usr/local/lib/python2.7/dist-packages/celery/app/trace.py\", line 438, in __protected_call__\n    return self.run(*args, **kwargs)\n  File \"/home/spider/www/featurefactory/apps/async/tasks.py\", line 58, in audit_task\n    logger.info(\'Result call back url : %s\' % callback_url)\nUnboundLocalError: local variable \'callback_url\' referenced before assignment\n', '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('6', 'a1c1dcae-f8d4-4fe4-8c9a-46f3f81de8a3', 'SUCCESS', null, '2017-03-08 16:25:23', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('7', '26422aff-4e3f-4d44-9c10-375fe623b458', 'SUCCESS', null, '2017-03-08 16:30:46', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('8', '484c981f-a9f7-4972-926c-c22ee6753d4a', 'SUCCESS', null, '2017-03-08 16:40:55', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('9', 'eaa85b0c-d367-4437-a5c7-eb7b81749763', 'SUCCESS', null, '2017-03-08 17:09:02', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('10', 'cb672840-c0c3-4d3e-b428-c85d1f3402a4', 'SUCCESS', null, '2017-03-08 17:09:05', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('11', '008861dd-b9d3-440c-9227-c9776d62725f', 'SUCCESS', null, '2017-03-08 17:23:10', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('12', 'bd7c8123-da81-42bc-9327-dcf5259025e6', 'SUCCESS', null, '2017-03-08 17:23:13', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('13', '07379283-1296-43a3-b3b1-98895f9b2082', 'SUCCESS', null, '2017-03-08 17:34:38', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('14', 'a846115e-6736-4171-ac3d-ebd6078386d3', 'SUCCESS', null, '2017-03-08 17:34:41', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('15', '684791ff-10be-4586-95e4-82601459162d', 'SUCCESS', null, '2017-03-08 17:45:06', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('16', 'b99766cb-bd0a-46a8-a180-36be100ade4e', 'SUCCESS', null, '2017-03-08 17:45:08', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('17', '3707417b-09db-4705-9033-1325d8567914', 'SUCCESS', null, '2017-03-08 17:45:12', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('18', 'fc0cdf25-1b1e-406a-a05e-2bbd694f75ce', 'SUCCESS', null, '2017-03-08 18:05:18', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('19', 'a63f471f-e354-455f-9316-d9c9a44be79c', 'SUCCESS', null, '2017-03-08 18:05:21', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('20', '221c04f5-2a82-42e8-b95c-4baf267afc41', 'SUCCESS', null, '2017-03-08 18:05:24', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('21', '956f0361-f078-49b8-ba26-46e446cc4962', 'SUCCESS', null, '2017-03-08 18:09:14', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('22', 'bf563b0d-5ccd-4663-a711-892b0ea543c3', 'SUCCESS', null, '2017-03-08 18:09:16', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('23', '1eb15694-eb4f-40c4-88f2-7609002ec36b', 'SUCCESS', null, '2017-03-08 18:09:20', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('24', 'd901a3cc-43b6-4146-9c5d-746f70073b4b', 'SUCCESS', null, '2017-03-08 18:16:01', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('25', '59eb6921-bb34-46ad-99a5-59aa9cdd63f1', 'SUCCESS', null, '2017-03-08 18:16:03', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('26', 'd3f69414-5910-4bb0-8888-989dca222a8c', 'SUCCESS', null, '2017-03-08 18:16:07', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('27', '2209e7cb-a647-401c-8846-7bc7b719a321', 'SUCCESS', null, '2017-03-08 18:24:21', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('28', '05b8e54b-c348-4e51-b243-023b91e059ed', 'SUCCESS', null, '2017-03-08 18:24:24', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('29', '859d05d7-c8bb-4c15-8cbe-9d3f97a0167d', 'SUCCESS', null, '2017-03-08 18:24:27', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('30', '66394d24-e4d1-439b-9ec0-b6e8c774aae0', 'SUCCESS', null, '2017-03-09 10:42:04', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('31', 'a628bab7-f995-47e6-88cd-167f17913df6', 'SUCCESS', null, '2017-03-09 10:42:06', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('32', '01a56c94-4bca-4a27-89e9-0bf486eb21e5', 'SUCCESS', null, '2017-03-09 10:42:10', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('33', 'cc85d09a-e33e-40cc-9be5-d35903d81b3e', 'SUCCESS', null, '2017-03-09 10:47:11', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('34', '55463919-9302-4993-83e3-dd31b29f6206', 'SUCCESS', null, '2017-03-09 10:47:13', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('35', '0615d5d9-2adc-4d76-96bb-a1e77624b389', 'SUCCESS', null, '2017-03-09 10:47:17', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('36', 'ab107244-bb48-4b29-b0a6-b43aa5e6e5d4', 'SUCCESS', null, '2017-03-09 18:27:41', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('37', '6c472414-2315-4c10-be79-3f7be2ca9202', 'SUCCESS', null, '2017-03-09 18:27:43', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');
INSERT INTO `celery_taskmeta` VALUES ('38', '3970f2d7-d004-4d01-84a1-56e0ffd1b8ec', 'SUCCESS', null, '2017-03-09 18:27:46', null, '0', 'eJxrYKotZIzgYGBgSM7IzEkpSs0rZIotZC7WAwBWuwcA');

-- ----------------------------
-- Table structure for `celery_tasksetmeta`
-- ----------------------------
DROP TABLE IF EXISTS `celery_tasksetmeta`;
CREATE TABLE `celery_tasksetmeta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taskset_id` varchar(255) NOT NULL,
  `result` longtext NOT NULL,
  `date_done` datetime NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taskset_id` (`taskset_id`),
  KEY `celery_tasksetmeta_662f707d` (`hidden`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of celery_tasksetmeta
-- ----------------------------

-- ----------------------------
-- Table structure for `credit_card_config`
-- ----------------------------
DROP TABLE IF EXISTS `credit_card_config`;
CREATE TABLE `credit_card_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delete_status` int(11) DEFAULT NULL,
  `feature_name` varchar(255) DEFAULT NULL,
  `feature_name_cn` varchar(255) DEFAULT NULL,
  `feature_weight` int(11) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `model_name_cn` varchar(255) DEFAULT NULL,
  `model_weight` int(11) DEFAULT NULL,
  `option_value` varchar(255) DEFAULT NULL,
  `option_weight` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `credit_card_drl` longtext,
  `package_uuid` varchar(255) DEFAULT NULL,
  `policy_set_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKf5981gigq8lbkw24iev11cmje` (`policy_set_id`),
  CONSTRAINT `FKf5981gigq8lbkw24iev11cmje` FOREIGN KEY (`policy_set_id`) REFERENCES `policy_set` (`policy_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of credit_card_config
-- ----------------------------

-- ----------------------------
-- Table structure for `customer_drl`
-- ----------------------------
DROP TABLE IF EXISTS `customer_drl`;
CREATE TABLE `customer_drl` (
  `customer_drl_id` int(11) NOT NULL AUTO_INCREMENT,
  `drl_value` longtext,
  `fearture_type` varchar(255) DEFAULT NULL,
  `policy_set_id` int(11) DEFAULT NULL,
  `rule_set_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_drl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_drl
-- ----------------------------
INSERT INTO `customer_drl` VALUES ('1', 'rule \"年龄判别44\"\r\nruleflow-group \"1\"\r\nwhen\r\n	$applicant: Applicant(((age > 11)&&(age < 66)), accountStatus == Applicant.Status.PASS)\r\nthen\r\n	System.out.println( \"=========================================44444444444444444444444444444444\" );\r\n	insert(new Rejection($applicant, \"非主流\"));\r\n	modify($applicant){setAccountStatus(Applicant.Status.REJECT)};\r\nend', 'age', '2', '1');

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_5151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_1c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_3ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'log entry', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('2', 'permission', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('3', 'group', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('4', 'user', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'content type', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('6', 'session', 'sessions', 'session');
INSERT INTO `django_content_type` VALUES ('7', 'task state', 'djcelery', 'taskmeta');
INSERT INTO `django_content_type` VALUES ('8', 'saved group result', 'djcelery', 'tasksetmeta');
INSERT INTO `django_content_type` VALUES ('9', 'interval', 'djcelery', 'intervalschedule');
INSERT INTO `django_content_type` VALUES ('10', 'crontab', 'djcelery', 'crontabschedule');
INSERT INTO `django_content_type` VALUES ('11', 'periodic tasks', 'djcelery', 'periodictasks');
INSERT INTO `django_content_type` VALUES ('12', 'periodic task', 'djcelery', 'periodictask');
INSERT INTO `django_content_type` VALUES ('13', 'worker', 'djcelery', 'workerstate');
INSERT INTO `django_content_type` VALUES ('14', 'task', 'djcelery', 'taskstate');
INSERT INTO `django_content_type` VALUES ('15', '', 'featureapi', 'clientoverview');
INSERT INTO `django_content_type` VALUES ('16', '', 'common', 'citycodefield');
INSERT INTO `django_content_type` VALUES ('17', '特征码值对应表', 'common', 'featurecodemapping');
INSERT INTO `django_content_type` VALUES ('18', '数据源基本信息表', 'datasource', 'datasourceinfo');
INSERT INTO `django_content_type` VALUES ('19', '接口表', 'datasource', 'dsinterfaceinfo');
INSERT INTO `django_content_type` VALUES ('20', '分流处理逻辑配置表', 'etl', 'featureconf');
INSERT INTO `django_content_type` VALUES ('21', '分流处理逻辑配置表', 'etl', 'featureshuntconf');
INSERT INTO `django_content_type` VALUES ('22', '依赖关系处理逻辑配置表', 'etl', 'featurerelevanceconf');
INSERT INTO `django_content_type` VALUES ('23', '授信模型系数配置表', 'pregranting', 'modelcoefficientconf');
INSERT INTO `django_content_type` VALUES ('24', '授信模型字段权重表', 'pregranting', 'modelfieldoptionweight');
INSERT INTO `django_content_type` VALUES ('25', '预处理字段表', 'etl', 'prefieldinfo');
INSERT INTO `django_content_type` VALUES ('26', '特征计算方式配置表', 'etl', 'featureprocess');
INSERT INTO `django_content_type` VALUES ('27', '特征类型配置表', 'etl', 'featuretype');
INSERT INTO `django_content_type` VALUES ('28', '特征评分卡类型配置表', 'etl', 'featurecardtype');
INSERT INTO `django_content_type` VALUES ('29', '特征规则类型配置表', 'etl', 'featureruletype');
INSERT INTO `django_content_type` VALUES ('30', '函数库配置表', 'etl', 'funclibsource');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2017-02-22 11:42:27');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2017-02-22 11:42:33');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2017-02-22 11:42:34');
INSERT INTO `django_migrations` VALUES ('4', 'djcelery', '0001_initial', '2017-02-22 11:42:41');
INSERT INTO `django_migrations` VALUES ('5', 'sessions', '0001_initial', '2017-02-22 11:42:41');
INSERT INTO `django_migrations` VALUES ('6', 'common', '0001_initial', '2017-02-22 17:34:46');
INSERT INTO `django_migrations` VALUES ('7', 'datasource', '0001_initial', '2017-02-22 17:34:46');
INSERT INTO `django_migrations` VALUES ('9', 'featureapi', '0001_initial', '2017-02-22 17:34:46');
INSERT INTO `django_migrations` VALUES ('13', 'datasource', '0002_dsinterfaceinfo_data_origin_type', '2017-02-23 10:30:23');
INSERT INTO `django_migrations` VALUES ('16', 'common', '0002_auto_20170301_1455', '2017-03-01 14:56:08');
INSERT INTO `django_migrations` VALUES ('17', 'common', '0003_auto_20170301_1605', '2017-03-01 16:05:55');
INSERT INTO `django_migrations` VALUES ('18', 'common', '0004_auto_20170301_1608', '2017-03-01 16:08:09');
INSERT INTO `django_migrations` VALUES ('19', 'etl', '0001_initial', '2017-03-13 11:39:48');
INSERT INTO `django_migrations` VALUES ('20', 'etl', '0002_auto_20170313_1140', '2017-03-13 11:40:06');
INSERT INTO `django_migrations` VALUES ('21', 'etl', '0003_auto_20170320_1107', '2017-03-20 11:07:14');
INSERT INTO `django_migrations` VALUES ('22', 'etl', '0004_auto_20170324_1106', '2017-03-24 11:06:25');
INSERT INTO `django_migrations` VALUES ('23', 'etl', '0005_auto_20170324_1110', '2017-03-24 11:11:35');
INSERT INTO `django_migrations` VALUES ('24', 'etl', '0006_remove_featureconf_data_identity', '2017-03-24 11:14:59');
INSERT INTO `django_migrations` VALUES ('25', 'etl', '0007_auto_20170324_1115', '2017-03-24 11:15:29');
INSERT INTO `django_migrations` VALUES ('26', 'etl', '0008_funclibsource', '2017-03-28 15:02:01');
INSERT INTO `django_migrations` VALUES ('27', 'etl', '0009_auto_20170324_1521', '2017-03-28 15:02:02');
INSERT INTO `django_migrations` VALUES ('28', 'etl', '0010_auto_20170324_1526', '2017-03-28 15:02:02');
INSERT INTO `django_migrations` VALUES ('29', 'etl', '0011_remove_funclibsource_func_type', '2017-03-28 15:02:02');
INSERT INTO `django_migrations` VALUES ('30', 'etl', '0012_funclibsource_func_type', '2017-03-28 15:02:03');
INSERT INTO `django_migrations` VALUES ('31', 'etl', '0013_auto_20170324_1537', '2017-03-28 15:02:03');
INSERT INTO `django_migrations` VALUES ('32', 'etl', '0014_auto_20170324_1701', '2017-03-28 15:02:04');
INSERT INTO `django_migrations` VALUES ('33', 'etl', '0015_auto_20170327_1012', '2017-03-28 15:02:04');
INSERT INTO `django_migrations` VALUES ('34', 'etl', '0016_remove_featurerelevanceconf_depend_di', '2017-03-28 15:02:05');
INSERT INTO `django_migrations` VALUES ('35', 'etl', '0017_auto_20170328_1501', '2017-03-28 15:02:06');
INSERT INTO `django_migrations` VALUES ('36', 'etl', '0018_auto_20170328_1508', '2017-03-28 15:08:30');
INSERT INTO `django_migrations` VALUES ('37', 'etl', '0019_auto_20170328_1519', '2017-03-28 15:19:42');
INSERT INTO `django_migrations` VALUES ('38', 'etl', '0020_auto_20170328_1521', '2017-03-28 15:21:18');
INSERT INTO `django_migrations` VALUES ('39', 'etl', '0021_auto_20170328_1542', '2017-03-28 15:42:34');
INSERT INTO `django_migrations` VALUES ('40', 'datasource', '0003_auto_20170328_1742', '2017-03-28 18:00:35');
INSERT INTO `django_migrations` VALUES ('43', 'etl', '0022_auto_20170329_1419', '2017-03-29 14:19:53');
INSERT INTO `django_migrations` VALUES ('44', 'etl', '0023_auto_20170329_1610', '2017-03-29 16:10:38');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------

-- ----------------------------
-- Table structure for `djcelery_crontabschedule`
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_crontabschedule`;
CREATE TABLE `djcelery_crontabschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `minute` varchar(64) NOT NULL,
  `hour` varchar(64) NOT NULL,
  `day_of_week` varchar(64) NOT NULL,
  `day_of_month` varchar(64) NOT NULL,
  `month_of_year` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_crontabschedule
-- ----------------------------

-- ----------------------------
-- Table structure for `djcelery_intervalschedule`
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_intervalschedule`;
CREATE TABLE `djcelery_intervalschedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `every` int(11) NOT NULL,
  `period` varchar(24) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_intervalschedule
-- ----------------------------

-- ----------------------------
-- Table structure for `djcelery_periodictask`
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_periodictask`;
CREATE TABLE `djcelery_periodictask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `task` varchar(200) NOT NULL,
  `args` longtext NOT NULL,
  `kwargs` longtext NOT NULL,
  `queue` varchar(200) DEFAULT NULL,
  `exchange` varchar(200) DEFAULT NULL,
  `routing_key` varchar(200) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `last_run_at` datetime DEFAULT NULL,
  `total_run_count` int(10) unsigned NOT NULL,
  `date_changed` datetime NOT NULL,
  `description` longtext NOT NULL,
  `crontab_id` int(11) DEFAULT NULL,
  `interval_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `djcelery_periodictask_f3f0d72a` (`crontab_id`),
  KEY `djcelery_periodictask_1dcd7040` (`interval_id`),
  CONSTRAINT `djcelery_pe_interval_id_2f9f2053_fk_djcelery_intervalschedule_id` FOREIGN KEY (`interval_id`) REFERENCES `djcelery_intervalschedule` (`id`),
  CONSTRAINT `djcelery_peri_crontab_id_4bb497f6_fk_djcelery_crontabschedule_id` FOREIGN KEY (`crontab_id`) REFERENCES `djcelery_crontabschedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_periodictask
-- ----------------------------

-- ----------------------------
-- Table structure for `djcelery_periodictasks`
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_periodictasks`;
CREATE TABLE `djcelery_periodictasks` (
  `ident` smallint(6) NOT NULL,
  `last_update` datetime NOT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_periodictasks
-- ----------------------------

-- ----------------------------
-- Table structure for `djcelery_taskstate`
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_taskstate`;
CREATE TABLE `djcelery_taskstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(64) NOT NULL,
  `task_id` varchar(36) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `tstamp` datetime NOT NULL,
  `args` longtext,
  `kwargs` longtext,
  `eta` datetime DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `result` longtext,
  `traceback` longtext,
  `runtime` double DEFAULT NULL,
  `retries` int(11) NOT NULL,
  `hidden` tinyint(1) NOT NULL,
  `worker_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `task_id` (`task_id`),
  KEY `djcelery_taskstate_9ed39e2e` (`state`),
  KEY `djcelery_taskstate_b068931c` (`name`),
  KEY `djcelery_taskstate_863bb2ee` (`tstamp`),
  KEY `djcelery_taskstate_662f707d` (`hidden`),
  KEY `djcelery_taskstate_ce77e6ef` (`worker_id`),
  CONSTRAINT `djcelery_taskstate_worker_id_4e3c2c27_fk_djcelery_workerstate_id` FOREIGN KEY (`worker_id`) REFERENCES `djcelery_workerstate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_taskstate
-- ----------------------------

-- ----------------------------
-- Table structure for `djcelery_workerstate`
-- ----------------------------
DROP TABLE IF EXISTS `djcelery_workerstate`;
CREATE TABLE `djcelery_workerstate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hostname` varchar(255) NOT NULL,
  `last_heartbeat` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostname` (`hostname`),
  KEY `djcelery_workerstate_f129901a` (`last_heartbeat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of djcelery_workerstate
-- ----------------------------

-- ----------------------------
-- Table structure for `fic_city_code_field`
-- ----------------------------
DROP TABLE IF EXISTS `fic_city_code_field`;
CREATE TABLE `fic_city_code_field` (
  `is_delete` tinyint(1) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name_cn` varchar(256) NOT NULL,
  `city_name_en` varchar(256) NOT NULL,
  `father_tip` varchar(256) NOT NULL,
  `father_code` varchar(256) DEFAULT NULL,
  `city_code` varchar(256) NOT NULL,
  `seouri` varchar(256) NOT NULL,
  `abbreviation` varchar(256) DEFAULT NULL,
  `city_level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1610 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fic_city_code_field
-- ----------------------------
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:20', '2017-02-17 09:30:20', '1', '不限', ' Open ', '0', '', '0', '  ', '不限', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:20', '2017-02-17 09:30:20', '2', '北京', ' BeiJing ', '0', '', '10', ' beijing ', '北京', '1');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:20', '2017-02-17 09:30:20', '3', '东城区', ' DongChengQu ', '1', '10', '10010010', ' dongcheng ', '东城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:20', '2017-02-17 09:30:20', '4', '西城区', ' XiChengQu ', '1', '10', '10010020', ' xicheng ', '西城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:20', '2017-02-17 09:30:20', '5', '朝阳区', ' ChaoYangQu ', '1', '10', '10010030', ' chaoyang ', '朝阳区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:20', '2017-02-17 09:30:20', '6', '海淀区', ' HaiDianQu ', '1', '10', '10010050', ' haidian ', '海淀区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:20', '2017-02-17 09:30:20', '7', '石景山', ' ShiJingShan ', '1', '10', '10010070', ' shijingshan ', '石景山', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:21', '2017-02-17 09:30:21', '8', '门头沟', ' MenTouGou ', '1', '10', '10010080', ' mentougou ', '门头沟', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:21', '2017-02-17 09:30:21', '9', '丰台区', ' FengTaiQu ', '1', '10', '10010090', ' fengtai ', '丰台区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:21', '2017-02-17 09:30:21', '10', '房山区', ' FangShanQu ', '1', '10', '10010100', ' fangshan ', '房山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:21', '2017-02-17 09:30:21', '11', '大兴区', ' DaXingQu ', '1', '10', '10010110', ' daxing ', '大兴区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:21', '2017-02-17 09:30:21', '12', '通州区', ' TongZhouQu ', '1', '10', '10010120', ' tongzhou ', '通州区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:21', '2017-02-17 09:30:21', '13', '顺义区', ' ShunYiQu ', '1', '10', '10010130', ' shunyi ', '顺义区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:21', '2017-02-17 09:30:21', '14', '平谷区', ' PingGuQu ', '1', '10', '10010140', ' pinggu ', '平谷区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:21', '2017-02-17 09:30:21', '15', '昌平区', ' ChangPingQu ', '1', '10', '10010150', ' changping ', '昌平区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:21', '2017-02-17 09:30:21', '16', '怀柔区', ' HuaiRouQu ', '1', '10', '10010160', ' huairou ', '怀柔区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:21', '2017-02-17 09:30:21', '17', '延庆县', ' YanQingXian ', '1', '10', '10010170', ' yanqing ', '延庆县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:21', '2017-02-17 09:30:21', '18', '密云县', ' MiYunXian ', '1', '10', '10010180', ' miyun ', '密云县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:21', '2017-02-17 09:30:21', '19', '上海', ' ShangHai ', '0', '', '20', ' shanghai ', '上海', '1');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:21', '2017-02-17 09:30:21', '20', '浦东区', ' PuDongXinQu ', '1', '20', '20010010', ' pudong ', '浦东区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:22', '2017-02-17 09:30:22', '21', '徐汇区', ' XuHuiQu ', '1', '20', '20010020', ' xuhui ', '徐汇区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:22', '2017-02-17 09:30:22', '22', '长宁区', ' ZhangNingQu ', '1', '20', '20010030', ' changning ', '长宁区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:22', '2017-02-17 09:30:22', '23', '普陀区', ' PuTuoQu ', '1', '20', '20010040', ' putuo ', '普陀区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:22', '2017-02-17 09:30:22', '24', '闸北区', ' ZhaBeiQu ', '1', '20', '20010050', ' zhabei ', '闸北区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:22', '2017-02-17 09:30:22', '25', '虹口区', ' HongKouQu ', '1', '20', '20010060', ' hongkou ', '虹口区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:22', '2017-02-17 09:30:22', '26', '杨浦区', ' YangPuQu ', '1', '20', '20010070', ' yangpu ', '杨浦区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:22', '2017-02-17 09:30:22', '27', '黄浦区', ' HuangPuQu ', '1', '20', '20010080', ' huangpu ', '黄浦区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:22', '2017-02-17 09:30:22', '28', '静安区', ' JingAnQu ', '1', '20', '20010100', ' jingan ', '静安区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:22', '2017-02-17 09:30:22', '29', '宝山区', ' BaoShanQu ', '1', '20', '20010110', ' baoshan ', '宝山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:22', '2017-02-17 09:30:22', '30', '闵行区', ' MinXingQu ', '1', '20', '20010120', ' minhang ', '闵行区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:22', '2017-02-17 09:30:22', '31', '嘉定区', ' JiaDingQu ', '1', '20', '20010130', ' jiading ', '嘉定区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:22', '2017-02-17 09:30:22', '32', '金山区', ' JinShanQu ', '1', '20', '20010140', ' jinshan ', '金山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:22', '2017-02-17 09:30:22', '33', '松江区', ' SongJiangQu ', '1', '20', '20010150', ' songjiang ', '松江区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:23', '2017-02-17 09:30:23', '34', '青浦区', ' QingPuQu ', '1', '20', '20010160', ' qingpu ', '青浦区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:23', '2017-02-17 09:30:23', '35', '奉贤区', ' FengXianQu ', '1', '20', '20010180', ' fengxian ', '奉贤区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:23', '2017-02-17 09:30:23', '36', '崇明县', ' ChongMingXian ', '1', '20', '20010190', ' chongming ', '崇明县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:23', '2017-02-17 09:30:23', '37', '天津', ' TianJin ', '0', '', '30', ' tianjin ', '天津', '2');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:23', '2017-02-17 09:30:23', '38', '和平区', ' HePingQu ', '1', '30', '30010010', ' heping ', '和平区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:23', '2017-02-17 09:30:23', '39', '河东区', ' HeDongQu ', '1', '30', '30010020', ' hedong ', '河东区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:23', '2017-02-17 09:30:23', '40', '河西区', ' HeXiQu ', '1', '30', '30010030', ' hexi ', '河西区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:23', '2017-02-17 09:30:23', '41', '南开区', ' NanKaiQu ', '1', '30', '30010040', ' nankai ', '南开区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:23', '2017-02-17 09:30:23', '42', '河北区', ' HeBeiQu ', '1', '30', '30010050', ' hebei ', '河北区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:23', '2017-02-17 09:30:23', '43', '红桥区', ' HongQiaoQu ', '1', '30', '30010060', ' hongqiao ', '红桥区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:23', '2017-02-17 09:30:23', '44', '塘沽区', ' TangGuQu ', '1', '30', '30010070', ' tangku ', '塘沽区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:23', '2017-02-17 09:30:23', '45', '汉沽区', ' HanGuQu ', '1', '30', '30010080', ' hanku ', '汉沽区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:24', '2017-02-17 09:30:24', '46', '大港区', ' DaGangQu ', '1', '30', '30010090', ' dagang ', '大港区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:24', '2017-02-17 09:30:24', '47', '东丽区', ' DongLiQu ', '1', '30', '30010100', ' dongli ', '东丽区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:24', '2017-02-17 09:30:24', '48', '西青区', ' XiQingQu ', '1', '30', '30010110', ' xiqing ', '西青区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:24', '2017-02-17 09:30:24', '49', '津南区', ' JinNanQu ', '1', '30', '30010120', ' jinnan ', '津南区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:24', '2017-02-17 09:30:24', '50', '北辰区', ' BeiChenQu ', '1', '30', '30010130', ' beichen ', '北辰区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:24', '2017-02-17 09:30:24', '51', '武清区', ' WuQingQu ', '1', '30', '30010140', ' wuqing ', '武清区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:24', '2017-02-17 09:30:24', '52', '宝坻区', ' BaoChiQu ', '1', '30', '30010150', ' baodi ', '宝坻区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:24', '2017-02-17 09:30:24', '53', '宁河县', ' NingHeXian ', '1', '30', '30010160', ' ninghe ', '宁河县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:24', '2017-02-17 09:30:24', '54', '静海县', ' JingHaiXian ', '1', '30', '30010170', ' jinghai ', '静海县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:24', '2017-02-17 09:30:24', '55', '蓟　县', ' Ji　Xian ', '1', '30', '30010180', ' jixian ', '蓟　县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:24', '2017-02-17 09:30:24', '56', '开发区', ' KaiFaQu ', '1', '30', '30010200', ' kaifaqu ', '开发区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:24', '2017-02-17 09:30:24', '57', '滨海区', ' BinHaiQu ', '1', '30', '30010210', ' binhaiqu ', '滨海区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:24', '2017-02-17 09:30:24', '58', '重庆', ' ChongQing ', '0', '', '40', ' chongqing ', '重庆', '2');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:25', '2017-02-17 09:30:25', '59', '渝中区', ' YuZhongQu ', '1', '40', '40010010', ' yuzhong ', '渝中区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:25', '2017-02-17 09:30:25', '60', '江北区', ' JiangBeiQu ', '1', '40', '40010020', ' jiangbei ', '江北区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:25', '2017-02-17 09:30:25', '61', '南岸区', ' NanAnQu ', '1', '40', '40010030', ' nanan ', '南岸区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:25', '2017-02-17 09:30:25', '62', '沙坪坝', ' ShaPingBa ', '1', '40', '40010040', ' shapingva ', '沙坪坝', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:25', '2017-02-17 09:30:25', '63', '九龙坡', ' JiuLongPo ', '1', '40', '40010050', ' jiulongpo ', '九龙坡', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:25', '2017-02-17 09:30:25', '64', '大渡口', ' DaDuKou ', '1', '40', '40010060', ' dadukou ', '大渡口', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:25', '2017-02-17 09:30:25', '65', '北碚区', ' BeiBeiQu ', '1', '40', '40010070', ' beibei ', '北碚区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:25', '2017-02-17 09:30:25', '66', '巴南区', ' BaNanQu ', '1', '40', '40010080', ' banan ', '巴南区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:25', '2017-02-17 09:30:25', '67', '渝北区', ' YuBeiQu ', '1', '40', '40010090', ' yubei ', '渝北区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:25', '2017-02-17 09:30:25', '68', '永川区', ' YongChuanQu ', '1', '40', '40010100', ' yongchuan ', '永川区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:25', '2017-02-17 09:30:25', '69', '涪陵区', ' FuLingQu ', '1', '40', '40010110', ' fuling ', '涪陵区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:25', '2017-02-17 09:30:25', '70', '合川区', ' HeChuanQu ', '1', '40', '40010120', ' hechuan ', '合川区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:25', '2017-02-17 09:30:25', '71', '江津区', ' JiangJinQu ', '1', '40', '40010130', ' jiangjin ', '江津区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:26', '2017-02-17 09:30:26', '72', '长寿区', ' ZhangShouQu ', '1', '40', '40010140', ' changshou ', '长寿区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:26', '2017-02-17 09:30:26', '73', '南川区', ' NanChuanQu ', '1', '40', '40010170', ' nanchuan ', '南川区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:26', '2017-02-17 09:30:26', '74', '万州区', ' WanZhouQu ', '1', '40', '40010180', ' wanzhou ', '万州区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:26', '2017-02-17 09:30:26', '75', '黔江区', ' QianJiangQu ', '1', '40', '40010190', ' qianjiang ', '黔江区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:26', '2017-02-17 09:30:26', '76', '綦江区', ' QiJiangQu ', '1', '40', '40010200', ' qijiang ', '綦江区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:26', '2017-02-17 09:30:26', '77', '潼南县', ' TongNanXian ', '1', '40', '40010210', ' tongnanxian ', '潼南县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:26', '2017-02-17 09:30:26', '78', '铜梁区', ' TongLiangQu ', '1', '40', '40010220', ' tongliang ', '铜梁区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:26', '2017-02-17 09:30:26', '79', '大足区', ' DaZuQu ', '1', '40', '40010230', ' dazu ', '大足区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:26', '2017-02-17 09:30:26', '80', '荣昌县', ' RongChangXian ', '1', '40', '40010240', ' rongchangxian ', '荣昌县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:26', '2017-02-17 09:30:26', '81', '璧山区', ' BiShanQu ', '1', '40', '40010250', ' bishan ', '璧山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:26', '2017-02-17 09:30:26', '82', '垫江县', ' DianJiangXian ', '1', '40', '40010260', ' dianjiangxian ', '垫江县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:26', '2017-02-17 09:30:26', '83', '武隆县', ' WuLongXian ', '1', '40', '40010270', ' wulongxian ', '武隆县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:26', '2017-02-17 09:30:26', '84', '丰都县', ' FengDouXian ', '1', '40', '40010280', ' fengdouxian ', '丰都县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:26', '2017-02-17 09:30:26', '85', '城口县', ' ChengKouXian ', '1', '40', '40010290', ' chengkouxian ', '城口县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:26', '2017-02-17 09:30:26', '86', '梁平县', ' LiangPingXian ', '1', '40', '40010300', ' liangpingxian ', '梁平县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:26', '2017-02-17 09:30:26', '87', '开县', ' KaiXian ', '1', '40', '40010310', ' kaixian ', '开县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:27', '2017-02-17 09:30:27', '88', '巫溪县', ' WuXiXian ', '1', '40', '40010320', ' wuxixian ', '巫溪县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:27', '2017-02-17 09:30:27', '89', '巫山县', ' WuShanXian ', '1', '40', '40010330', ' wushanxian ', '巫山县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:27', '2017-02-17 09:30:27', '90', '奉节县', ' FengJieXian ', '1', '40', '40010340', ' fengjiexian ', '奉节县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:27', '2017-02-17 09:30:27', '91', '云阳县', ' YunYangXian ', '1', '40', '40010350', ' yunyangxian ', '云阳县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:27', '2017-02-17 09:30:27', '92', '忠县', ' ZhongXian ', '1', '40', '40010360', ' zhongxian ', '忠县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:27', '2017-02-17 09:30:27', '93', '石柱', ' ShiZhu ', '1', '40', '40010370', ' shizhu ', '石柱', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:27', '2017-02-17 09:30:27', '94', '彭水', ' PengShuiXian ', '1', '40', '40010380', ' pengshui ', '彭水', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:27', '2017-02-17 09:30:27', '95', '酉阳', ' YouYangXian ', '1', '40', '40010390', ' youyang ', '酉阳', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:27', '2017-02-17 09:30:27', '96', '石柱县', ' ShiZhuXian ', '1', '40', '40010410', ' shizhuxian ', '石柱县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:27', '2017-02-17 09:30:27', '97', '秀山', ' XiuShanXian ', '1', '40', '40010420', ' xiushan ', '秀山', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:27', '2017-02-17 09:30:27', '98', '广东省', ' GuangDongSheng ', '0', '', '50', ' guangdong ', '广东省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:27', '2017-02-17 09:30:27', '99', '广州', ' GuangZhou ', '1', '50', '50020', ' guangzhou ', '广州', '2');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:27', '2017-02-17 09:30:27', '100', '白云区', ' BaiYunQu ', '1', '50020', '50020010', ' baiyun ', '白云区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:27', '2017-02-17 09:30:27', '101', '天河区', ' TianHeQu ', '1', '50020', '50020020', ' tianhe ', '天河区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:27', '2017-02-17 09:30:27', '102', '越秀区', ' YueXiuQu ', '1', '50020', '50020030', ' yuexiu ', '越秀区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:28', '2017-02-17 09:30:28', '103', '海珠区', ' HaiZhuQu ', '1', '50020', '50020040', ' zhuhai ', '海珠区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:28', '2017-02-17 09:30:28', '104', '黄埔区', ' HuangBuQu ', '1', '50020', '50020050', ' huangpu ', '黄埔区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:28', '2017-02-17 09:30:28', '105', '荔湾区', ' LiWanQu ', '1', '50020', '50020060', ' xinliwan ', '荔湾区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:28', '2017-02-17 09:30:28', '106', '番禺区', ' FanYuQu ', '1', '50020', '50020070', ' fanyu ', '番禺区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:28', '2017-02-17 09:30:28', '107', '花都区', ' HuaDouQu ', '1', '50020', '50020080', ' huadu ', '花都区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:28', '2017-02-17 09:30:28', '108', '萝岗区', ' LuoGangQu ', '1', '50020', '50020090', ' luogang ', '萝岗区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:28', '2017-02-17 09:30:28', '109', '南沙区', ' NanShaQu ', '1', '50020', '50020100', ' nansha ', '南沙区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:28', '2017-02-17 09:30:28', '110', '从化市', ' CongHuaQu ', '1', '50020', '50020110', ' conghua ', '从化市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:28', '2017-02-17 09:30:28', '111', '增城市', ' ZengChengQu ', '1', '50020', '50020120', ' zengcheng ', '增城市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:28', '2017-02-17 09:30:28', '112', '潮州', ' ChaoZhou ', '1', '50', '50030', ' chaozhou ', '潮州', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:28', '2017-02-17 09:30:28', '113', '东莞', ' DongGuan ', '1', '50', '50040', ' dongguan ', '东莞', '3');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:28', '2017-02-17 09:30:28', '114', '南城区', ' NanChengQu ', '1', '50040', '50040010', ' nanchengqu ', '南城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:28', '2017-02-17 09:30:28', '115', '东城区', ' DongChengQu ', '1', '50040', '50040020', ' dongchengqu ', '东城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:29', '2017-02-17 09:30:29', '116', '万江区', ' WanJiangQu ', '1', '50040', '50040030', ' wanjiangqu ', '万江区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:29', '2017-02-17 09:30:29', '117', '莞城区', ' GuanChengQu ', '1', '50040', '50040040', ' wanchengqu ', '莞城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:29', '2017-02-17 09:30:29', '118', '石龙镇', ' ShiLongZhen ', '1', '50040', '50040050', ' shilongzhen ', '石龙镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:29', '2017-02-17 09:30:29', '119', '虎门镇', ' HuMenZhen ', '1', '50040', '50040060', ' humenzhen ', '虎门镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:29', '2017-02-17 09:30:29', '120', '麻涌镇', ' MaYongZhen ', '1', '50040', '50040070', ' mayongzhen ', '麻涌镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:29', '2017-02-17 09:30:29', '121', '道滘镇', ' DaoJiaoZhen ', '1', '50040', '50040080', ' daojiaozhen ', '道滘镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:29', '2017-02-17 09:30:29', '122', '石碣镇', ' ShiJieZhen ', '1', '50040', '50040090', ' shijiezhen ', '石碣镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:29', '2017-02-17 09:30:29', '123', '沙田镇', ' ShaTianZhen ', '1', '50040', '50040100', ' shatianzhen ', '沙田镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:29', '2017-02-17 09:30:29', '124', '望牛墩', ' WangNiuDun ', '1', '50040', '50040110', ' wangniudun ', '望牛墩', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:29', '2017-02-17 09:30:29', '125', '洪梅镇', ' HongMeiZhen ', '1', '50040', '50040120', ' hongmeizhen ', '洪梅镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:29', '2017-02-17 09:30:29', '126', '茶山镇', ' ChaShanZhen ', '1', '50040', '50040130', ' chashanzhen ', '茶山镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:29', '2017-02-17 09:30:29', '127', '寮步镇', ' LiaoBuZhen ', '1', '50040', '50040140', ' liaobuzhen ', '寮步镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:29', '2017-02-17 09:30:29', '128', '大岭山', ' DaLingShan ', '1', '50040', '50040150', ' dalingshan ', '大岭山', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:30', '2017-02-17 09:30:30', '129', '大朗镇', ' DaLangZhen ', '1', '50040', '50040160', ' dalangzhen ', '大朗镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:30', '2017-02-17 09:30:30', '130', '黄江镇', ' HuangJiangZhen ', '1', '50040', '50040170', ' huangjiangzhen ', '黄江镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:30', '2017-02-17 09:30:30', '131', '樟木头', ' ZhangMuTou ', '1', '50040', '50040180', ' zhangmutou ', '樟木头', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:30', '2017-02-17 09:30:30', '132', '凤岗镇', ' FengGangZhen ', '1', '50040', '50040190', ' fenggangzhen ', '凤岗镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:30', '2017-02-17 09:30:30', '133', '塘厦镇', ' TangShaZhen ', '1', '50040', '50040200', ' tangxiazhen ', '塘厦镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:30', '2017-02-17 09:30:30', '134', '谢岗镇', ' XieGangZhen ', '1', '50040', '50040210', ' xiegangzhen ', '谢岗镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:30', '2017-02-17 09:30:30', '135', '厚街镇', ' HouJieZhen ', '1', '50040', '50040220', ' houjiezhen ', '厚街镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:30', '2017-02-17 09:30:30', '136', '清溪镇', ' QingXiZhen ', '1', '50040', '50040230', ' qingxizhen ', '清溪镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:30', '2017-02-17 09:30:30', '137', '常平镇', ' ChangPingZhen ', '1', '50040', '50040240', ' changpingzhen ', '常平镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:30', '2017-02-17 09:30:30', '138', '桥头镇', ' QiaoTouZhen ', '1', '50040', '50040250', ' qiaotouzhen ', '桥头镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:30', '2017-02-17 09:30:30', '139', '横沥镇', ' HengLiZhen ', '1', '50040', '50040260', ' henglizhen ', '横沥镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:30', '2017-02-17 09:30:30', '140', '东坑镇', ' DongKengZhen ', '1', '50040', '50040270', ' dongkengzhen ', '东坑镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:30', '2017-02-17 09:30:30', '141', '企石镇', ' QiShiZhen ', '1', '50040', '50040280', ' qishizhen ', '企石镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:31', '2017-02-17 09:30:31', '142', '石排镇', ' ShiPaiZhen ', '1', '50040', '50040290', ' shipaizhen ', '石排镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:31', '2017-02-17 09:30:31', '143', '长安镇', ' ZhangAnZhen ', '1', '50040', '50040300', ' changanzhen ', '长安镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:31', '2017-02-17 09:30:31', '144', '中堂镇', ' ZhongTangZhen ', '1', '50040', '50040310', ' zhongtangzhen ', '中堂镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:31', '2017-02-17 09:30:31', '145', '高埗镇', ' GaoBuZhen ', '1', '50040', '50040320', ' gaobuzhen ', '高埗镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:31', '2017-02-17 09:30:31', '146', '松山湖', ' SongShanHu ', '1', '50040', '50040330', ' songshanhu ', '松山湖', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:31', '2017-02-17 09:30:31', '147', '佛山', ' FoShan ', '1', '50', '50050', ' foshan ', '佛山', '3');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:31', '2017-02-17 09:30:31', '148', '禅城区', ' ChanChengQu ', '1', '50050', '50050010', ' chanchengqu ', '禅城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:31', '2017-02-17 09:30:31', '149', '南海区', ' NanHaiQu ', '1', '50050', '50050020', ' nanhaiqu ', '南海区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:31', '2017-02-17 09:30:31', '150', '顺德区', ' ShunDeQu ', '1', '50050', '50050030', ' shundequ ', '顺德区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:31', '2017-02-17 09:30:31', '151', '三水区', ' SanShuiQu ', '1', '50050', '50050040', ' sanshuiqu ', '三水区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:31', '2017-02-17 09:30:31', '152', '高明区', ' GaoMingQu ', '1', '50050', '50050050', ' gaomingqu ', '高明区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:31', '2017-02-17 09:30:31', '153', '新城区', ' XinChengQu ', '1', '50050', '50050060', ' xinchengqu ', '新城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:31', '2017-02-17 09:30:31', '154', '大沥', ' DaLi ', '1', '50050', '50050070', ' dali ', '大沥', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:32', '2017-02-17 09:30:32', '155', '黄岐', ' HuangQi ', '1', '50050', '50050080', ' huangqi ', '黄岐', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:32', '2017-02-17 09:30:32', '156', '西樵', ' XiQiao ', '1', '50050', '50050090', ' xiqiao ', '西樵', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:32', '2017-02-17 09:30:32', '157', '南庄', ' NanZhuang ', '1', '50050', '50050100', ' nanzhuang ', '南庄', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:32', '2017-02-17 09:30:32', '158', '惠州', ' HuiZhou ', '1', '50', '50060', ' huizhou ', '惠州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:32', '2017-02-17 09:30:32', '159', '清远', ' QingYuan ', '1', '50', '50070', ' qingyuan ', '清远', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:32', '2017-02-17 09:30:32', '160', '汕头', ' ShanTou ', '1', '50', '50080', ' shantou ', '汕头', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:32', '2017-02-17 09:30:32', '161', '深圳', ' ShenZhen ', '1', '50', '50090', ' shenzhen ', '深圳', '2');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:32', '2017-02-17 09:30:32', '162', '罗湖区', ' LuoHuQu ', '1', '50090', '50090010', ' luohu ', '罗湖区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:32', '2017-02-17 09:30:32', '163', '福田区', ' FuTianQu ', '1', '50090', '50090020', ' futian ', '福田区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:32', '2017-02-17 09:30:32', '164', '南山区', ' NanShanQu ', '1', '50090', '50090030', ' nanshan ', '南山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:32', '2017-02-17 09:30:32', '165', '宝安区', ' BaoAnQu ', '1', '50090', '50090040', ' anbao ', '宝安区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:32', '2017-02-17 09:30:32', '166', '龙岗区', ' LongGangQu ', '1', '50090', '50090050', ' longgang ', '龙岗区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:32', '2017-02-17 09:30:32', '167', '盐田区', ' YanTianQu ', '1', '50090', '50090060', ' yantian ', '盐田区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:33', '2017-02-17 09:30:33', '168', '光明新区', ' GuangMingXinQu ', '1', '50090', '50090070', ' guangmingxinqu ', '光明新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:33', '2017-02-17 09:30:33', '169', '坪山新区', ' PingShanXinQu ', '1', '50090', '50090080', ' pingshanxinqu ', '坪山新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:33', '2017-02-17 09:30:33', '170', '大鹏新区', ' DaPengXinQu ', '1', '50090', '50090090', ' dapengxinqu ', '大鹏新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:33', '2017-02-17 09:30:33', '171', '龙华新区', ' LongHuaXinQu ', '1', '50090', '50090100', ' longhuaxinqu ', '龙华新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:33', '2017-02-17 09:30:33', '172', '顺德', ' ShunDe ', '1', '50', '50100', ' shunde ', '顺德', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:33', '2017-02-17 09:30:33', '173', '湛江', ' ZhanJiang ', '1', '50', '50110', ' zhanjiang ', '湛江', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:33', '2017-02-17 09:30:33', '174', '肇庆', ' ZhaoQing ', '1', '50', '50120', ' zhaoqing ', '肇庆', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:33', '2017-02-17 09:30:33', '175', '中山', ' ZhongShan ', '1', '50', '50130', ' zhongshan ', '中山', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:33', '2017-02-17 09:30:33', '176', '珠海', ' ZhuHai ', '1', '50', '50140', ' zhuhai ', '珠海', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:33', '2017-02-17 09:30:33', '177', '香洲区', ' XiangZhouQu ', '1', '50140', '50140010', ' xiangzhouqu ', '香洲区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:33', '2017-02-17 09:30:33', '178', '斗门区', ' DouMenQu ', '1', '50140', '50140020', ' doumenqu ', '斗门区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:33', '2017-02-17 09:30:33', '179', '金湾区', ' JinWanQu ', '1', '50140', '50140030', ' jinwanqu ', '金湾区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:33', '2017-02-17 09:30:33', '180', '横琴新区', ' HengQinXinQu ', '1', '50140', '50140040', ' hengqinxinqu ', '横琴新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:33', '2017-02-17 09:30:33', '181', '江门', ' JiangMen ', '1', '50', '50150', ' jiangmen ', '江门', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:33', '2017-02-17 09:30:33', '182', '阳江', ' YangJiang ', '1', '50', '50160', ' yangjiang ', '阳江', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:33', '2017-02-17 09:30:33', '183', '韶关', ' ShaoGuan ', '1', '50', '50170', ' shaoguan ', '韶关', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:34', '2017-02-17 09:30:34', '184', '茂名', ' MaoMing ', '1', '50', '50180', ' maoming ', '茂名', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:34', '2017-02-17 09:30:34', '185', '梅州', ' MeiZhou ', '1', '50', '50190', ' meizhou ', '梅州', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:34', '2017-02-17 09:30:34', '186', '汕尾', ' ShanWei ', '1', '50', '50200', ' shanwei ', '汕尾', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:34', '2017-02-17 09:30:34', '187', '河源', ' HeYuan ', '1', '50', '50210', ' heyuan ', '河源', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:34', '2017-02-17 09:30:34', '188', '揭阳', ' JieYang ', '1', '50', '50220', ' jieyang ', '揭阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:34', '2017-02-17 09:30:34', '189', '云浮', ' YunFu ', '1', '50', '50230', ' yunfu ', '云浮', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:34', '2017-02-17 09:30:34', '190', '开平', ' KaiPing ', '1', '50', '50240', ' kaiping ', '开平', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:34', '2017-02-17 09:30:34', '191', '台山', ' TaiShan ', '1', '50', '50250', ' taishan ', '台山', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:34', '2017-02-17 09:30:34', '192', '普宁', ' PuNing ', '1', '50', '50260', ' puning ', '普宁', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:34', '2017-02-17 09:30:34', '193', '南沙', ' NanSha ', '1', '50', '50270', ' nansha ', '南沙', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:34', '2017-02-17 09:30:34', '194', '龙川', ' LongChuan ', '1', '50', '50280', ' longchuan ', '龙川', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:34', '2017-02-17 09:30:34', '195', 'HESHAN', ' HeShan ', '1', '50', '50290', ' heshan ', 'HESHAN', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:34', '2017-02-17 09:30:34', '196', '江苏省', ' JiangSuSheng ', '0', '', '60', ' jiangsu ', '江苏省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:34', '2017-02-17 09:30:34', '197', '南京', ' NanJing ', '1', '60', '60020', ' nanjing ', '南京', '3');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:34', '2017-02-17 09:30:34', '198', '玄武区', ' XuanWuQu ', '1', '60020', '60020010', ' xuanwu ', '玄武区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:35', '2017-02-17 09:30:35', '199', '白下区', ' BaiXiaQu ', '1', '60020', '60020020', ' baixia ', '白下区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:35', '2017-02-17 09:30:35', '200', '秦淮区', ' QinHuaiQu ', '1', '60020', '60020030', ' qinhuai ', '秦淮区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:35', '2017-02-17 09:30:35', '201', '建邺区', ' JianYeQu ', '1', '60020', '60020040', ' jianye ', '建邺区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:35', '2017-02-17 09:30:35', '202', '鼓楼区', ' GuLouQu ', '1', '60020', '60020050', ' gulou ', '鼓楼区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:35', '2017-02-17 09:30:35', '203', '下关区', ' XiaGuanQu ', '1', '60020', '60020060', ' xiaguan ', '下关区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:35', '2017-02-17 09:30:35', '204', '浦口区', ' PuKouQu ', '1', '60020', '60020070', ' pukou ', '浦口区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:35', '2017-02-17 09:30:35', '205', '六合区', ' LiuHeQu ', '1', '60020', '60020080', ' liuhe ', '六合区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:35', '2017-02-17 09:30:35', '206', '栖霞区', ' QiXiaQu ', '1', '60020', '60020090', ' qixia ', '栖霞区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:35', '2017-02-17 09:30:35', '207', '雨花台', ' YuHuaTai ', '1', '60020', '60020100', ' yuhuatai ', '雨花台', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:35', '2017-02-17 09:30:35', '208', '江宁区', ' JiangNingQu ', '1', '60020', '60020110', ' jiangning ', '江宁区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:35', '2017-02-17 09:30:35', '209', '溧水县', ' LiShuiXian ', '1', '60020', '60020120', ' lishui ', '溧水县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:35', '2017-02-17 09:30:35', '210', '高淳县', ' GaoChunXian ', '1', '60020', '60020130', ' gaochun ', '高淳县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:35', '2017-02-17 09:30:35', '211', '大厂区', ' DaChangQu ', '1', '60020', '60020140', ' dachangqu ', '大厂区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:36', '2017-02-17 09:30:36', '212', '常熟', ' ChangShu ', '1', '60', '60030', ' changshu ', '常熟', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:36', '2017-02-17 09:30:36', '213', '常州', ' ChangZhou ', '1', '60', '60040', ' changzhou ', '常州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:36', '2017-02-17 09:30:36', '214', '天宁区', ' TianNingQu ', '1', '60040', '60040010', ' tianningqu ', '天宁区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:36', '2017-02-17 09:30:36', '215', '钟楼区', ' ZhongLouQu ', '1', '60040', '60040020', ' zhonglouqu ', '钟楼区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:36', '2017-02-17 09:30:36', '216', '戚墅堰', ' QiShuYan ', '1', '60040', '60040030', ' qishuyan ', '戚墅堰', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:36', '2017-02-17 09:30:36', '217', '郊区', ' JiaoQu ', '1', '60040', '60040040', ' jiaoqu ', '郊区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:36', '2017-02-17 09:30:36', '218', '新北区', ' XinBeiQu ', '1', '60040', '60040050', ' xinbeiqu ', '新北区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:36', '2017-02-17 09:30:36', '219', '武进区', ' WuJinQu ', '1', '60040', '60040060', ' wujinqu ', '武进区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:36', '2017-02-17 09:30:36', '220', '溧阳市', ' LiYangShi ', '1', '60040', '60040070', ' liyangshi ', '溧阳市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:36', '2017-02-17 09:30:36', '221', '金坛市', ' JinTanShi ', '1', '60040', '60040080', ' jintanshi ', '金坛市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:36', '2017-02-17 09:30:36', '222', '昆山', ' KunShan ', '1', '60', '60050', ' kunshan ', '昆山', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:36', '2017-02-17 09:30:36', '223', '连云港', ' LianYunGang ', '1', '60', '60060', ' lianyungang ', '连云港', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:36', '2017-02-17 09:30:36', '224', '南通', ' NanTong ', '1', '60', '60070', ' nantong ', '南通', '3');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:37', '2017-02-17 09:30:37', '225', '苏州', ' SuZhou ', '1', '60', '60080', ' suzhou ', '苏州', '2');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:37', '2017-02-17 09:30:37', '226', '金阊区', ' JinChangQu ', '1', '60080', '60080010', ' jinchang ', '金阊区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:37', '2017-02-17 09:30:37', '227', '沧浪区', ' CangLangQu ', '1', '60080', '60080020', ' canglang ', '沧浪区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:37', '2017-02-17 09:30:37', '228', '平江区', ' PingJiangQu ', '1', '60080', '60080030', ' pingjiang ', '平江区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:37', '2017-02-17 09:30:37', '229', '工业园', ' GongYeYuan ', '1', '60080', '60080040', ' gongyeyuan ', '工业园', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:37', '2017-02-17 09:30:37', '230', '高新区', ' GaoXinQu ', '1', '60080', '60080050', ' gaoxin ', '高新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:37', '2017-02-17 09:30:37', '231', '吴中区', ' WuZhongQu ', '1', '60080', '60080060', ' wuzhong ', '吴中区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:37', '2017-02-17 09:30:37', '232', '相城区', ' XiangChengQu ', '1', '60080', '60080070', ' xiangcheng ', '相城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:37', '2017-02-17 09:30:37', '233', '张家港', ' ZhangJiaGang ', '1', '60080', '60080080', ' zhangjiagang ', '张家港', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:37', '2017-02-17 09:30:37', '234', '常熟市', ' ChangShuShi ', '1', '60080', '60080090', ' changshu ', '常熟市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:37', '2017-02-17 09:30:37', '235', '太仓市', ' TaiCangShi ', '1', '60080', '60080100', ' taicang ', '太仓市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:37', '2017-02-17 09:30:37', '236', '昆山市', ' KunShanShi ', '1', '60080', '60080110', ' kunshan ', '昆山市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:37', '2017-02-17 09:30:37', '237', '吴江市', ' WuJiangShi ', '1', '60080', '60080120', ' wujiang ', '吴江市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:38', '2017-02-17 09:30:38', '238', '虎丘区', ' HuQiuQu ', '1', '60080', '60080130', ' huqiuqu ', '虎丘区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:38', '2017-02-17 09:30:38', '239', '玉山镇', ' YuShanZhen ', '1', '60080', '60080140', ' yushanzhen ', '玉山镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:38', '2017-02-17 09:30:38', '240', '巴城镇', ' BaChengZhen ', '1', '60080', '60080150', ' bachengzhen ', '巴城镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:38', '2017-02-17 09:30:38', '241', '周市镇', ' ZhouShiZhen ', '1', '60080', '60080160', ' zhoushizhen ', '周市镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:38', '2017-02-17 09:30:38', '242', '陆家镇', ' LuJiaZhen ', '1', '60080', '60080170', ' lujiazhen ', '陆家镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:38', '2017-02-17 09:30:38', '243', '花桥镇', ' HuaQiaoZhen ', '1', '60080', '60080180', ' huaqiaozhen ', '花桥镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:38', '2017-02-17 09:30:38', '244', '淀山湖', ' DianShanHu ', '1', '60080', '60080190', ' dianshanhu ', '淀山湖', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:38', '2017-02-17 09:30:38', '245', '张浦镇', ' ZhangPuZhen ', '1', '60080', '60080200', ' zhangpuzhen ', '张浦镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:38', '2017-02-17 09:30:38', '246', '周庄镇', ' ZhouZhuangZhen ', '1', '60080', '60080210', ' zhouzhuangzhen ', '周庄镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:38', '2017-02-17 09:30:38', '247', '千灯镇', ' QianDengZhen ', '1', '60080', '60080220', ' qiandengzhen ', '千灯镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:38', '2017-02-17 09:30:38', '248', '锦溪镇', ' JinXiZhen ', '1', '60080', '60080230', ' jinxizhen ', '锦溪镇', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:38', '2017-02-17 09:30:38', '249', '开发区', ' KaiFaQu ', '1', '60080', '60080240', ' kaifaqu ', '开发区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:38', '2017-02-17 09:30:38', '250', '太仓', ' TaiCang ', '1', '60', '60090', ' taicang ', '太仓', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:39', '2017-02-17 09:30:39', '251', '无锡', ' WuXi ', '1', '60', '60100', ' wuxi ', '无锡', '3');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:39', '2017-02-17 09:30:39', '252', '崇安区', ' ChongAnQu ', '1', '60100', '60100010', ' chonganqu ', '崇安区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:39', '2017-02-17 09:30:39', '253', '北塘区', ' BeiTangQu ', '1', '60100', '60100020', ' beitangqu ', '北塘区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:39', '2017-02-17 09:30:39', '254', '南长区', ' NanZhangQu ', '1', '60100', '60100030', ' nanchangqu ', '南长区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:39', '2017-02-17 09:30:39', '255', '锡山区', ' XiShanQu ', '1', '60100', '60100040', ' xishanqu ', '锡山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:39', '2017-02-17 09:30:39', '256', '惠山区', ' HuiShanQu ', '1', '60100', '60100050', ' huishanqu ', '惠山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:39', '2017-02-17 09:30:39', '257', '滨湖区', ' BinHuQu ', '1', '60100', '60100060', ' binhuqu ', '滨湖区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:39', '2017-02-17 09:30:39', '258', '新区', ' XinQu ', '1', '60100', '60100070', ' xinqu ', '新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:39', '2017-02-17 09:30:39', '259', '宜兴市', ' YiXingShi ', '1', '60100', '60100080', ' yixingshi ', '宜兴市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:39', '2017-02-17 09:30:39', '260', '江阴市', ' JiangYinShi ', '1', '60100', '60100090', ' jiangyinshi ', '江阴市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:39', '2017-02-17 09:30:39', '261', '徐州', ' XuZhou ', '1', '60', '60110', ' xuzhou ', '徐州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:39', '2017-02-17 09:30:39', '262', '扬州', ' YangZhou ', '1', '60', '60120', ' yangzhou ', '扬州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:40', '2017-02-17 09:30:40', '263', '镇江', ' ZhenJiang ', '1', '60', '60130', ' zhenjiang ', '镇江', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:40', '2017-02-17 09:30:40', '264', '淮安', ' HuaiAn ', '1', '60', '60140', ' huaian ', '淮安', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:40', '2017-02-17 09:30:40', '265', '盐城', ' YanCheng ', '1', '60', '60150', ' yancheng ', '盐城', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:40', '2017-02-17 09:30:40', '266', '泰州', ' TaiZhou ', '1', '60', '60160', ' taizhou0523 ', '泰州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:40', '2017-02-17 09:30:40', '267', '宿迁', ' SuQian ', '1', '60', '60170', ' suqian ', '宿迁', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:40', '2017-02-17 09:30:40', '268', '张家港', ' ZhangJiaGang ', '1', '60', '60180', ' zhangjiagang ', '张家港', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:40', '2017-02-17 09:30:40', '269', '江阴', ' JiangYin ', '1', '60', '60190', ' jiangyin ', '江阴', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:40', '2017-02-17 09:30:40', '270', '丹阳', ' DanYang ', '1', '60', '60200', ' danyang ', '丹阳', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:40', '2017-02-17 09:30:40', '271', '溧阳', ' LiYang ', '1', '60', '60210', ' liyang ', '溧阳', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:40', '2017-02-17 09:30:40', '272', '泰兴', ' TaiXing ', '1', '60', '60220', ' taixing ', '泰兴', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:40', '2017-02-17 09:30:40', '273', '宜兴', ' YiXing ', '1', '60', '60230', ' yixing ', '宜兴', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:40', '2017-02-17 09:30:40', '274', '靖江', ' JingJiang ', '1', '60', '60240', ' jingjiang ', '靖江', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:40', '2017-02-17 09:30:40', '275', '句容', ' JuRong ', '1', '60', '60250', ' jurong ', '句容', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:40', '2017-02-17 09:30:40', '276', '如皋', ' RuGao ', '1', '60', '60260', ' rugao ', '如皋', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:40', '2017-02-17 09:30:40', '277', '扬中', ' YangZhong ', '1', '60', '60270', ' yangzhong ', '扬中', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:40', '2017-02-17 09:30:40', '278', '高邮', ' GaoYou ', '1', '60', '60280', ' gaoyou ', '高邮', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:41', '2017-02-17 09:30:41', '279', '启东', ' QiDong ', '1', '60', '60290', ' qidong ', '启东', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:41', '2017-02-17 09:30:41', '280', '盱眙', ' XuYi ', '1', '60', '60300', ' xuyi ', '盱眙', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:41', '2017-02-17 09:30:41', '281', '通州', ' TongZhou ', '1', '60', '60310', ' tongzhou ', '通州', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:41', '2017-02-17 09:30:41', '282', '金湖', ' JinHu ', '1', '60', '60320', ' jinhu ', '金湖', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:41', '2017-02-17 09:30:41', '283', '浙江省', ' ZheJiangSheng ', '0', '', '70', ' zhejiang ', '浙江省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:41', '2017-02-17 09:30:41', '284', '杭州', ' HangZhou ', '1', '70', '70020', ' hangzhou ', '杭州', '2');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:41', '2017-02-17 09:30:41', '285', '上城区', ' ShangChengQu ', '1', '70020', '70020010', ' shangcheng ', '上城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:41', '2017-02-17 09:30:41', '286', '下城区', ' XiaChengQu ', '1', '70020', '70020020', ' xaicheng ', '下城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:41', '2017-02-17 09:30:41', '287', '拱墅区', ' GongShuQu ', '1', '70020', '70020030', ' gongshu ', '拱墅区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:41', '2017-02-17 09:30:41', '288', '西湖区', ' XiHuQu ', '1', '70020', '70020040', ' xihu ', '西湖区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:41', '2017-02-17 09:30:41', '289', '江干区', ' JiangGanQu ', '1', '70020', '70020050', ' jianggan ', '江干区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:41', '2017-02-17 09:30:41', '290', '滨江区', ' BinJiangQu ', '1', '70020', '70020060', ' binjiang ', '滨江区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:41', '2017-02-17 09:30:41', '291', '萧山区', ' XiaoShanQu ', '1', '70020', '70020070', ' xiaoshan ', '萧山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:41', '2017-02-17 09:30:41', '292', '余杭区', ' YuHangQu ', '1', '70020', '70020080', ' yuhang ', '余杭区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:41', '2017-02-17 09:30:41', '293', '临安市', ' LinAnShi ', '1', '70020', '70020090', ' linan ', '临安市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:42', '2017-02-17 09:30:42', '294', '富阳区', ' FuYangQu ', '1', '70020', '70020100', ' fuyang ', '富阳区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:42', '2017-02-17 09:30:42', '295', '建德市', ' JianDeShi ', '1', '70020', '70020110', ' jiande ', '建德市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:42', '2017-02-17 09:30:42', '296', '桐庐县', ' TongLuXian ', '1', '70020', '70020120', ' tonglu ', '桐庐县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:42', '2017-02-17 09:30:42', '297', '淳安县', ' ChunAnXian ', '1', '70020', '70020130', ' cunan ', '淳安县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:42', '2017-02-17 09:30:42', '298', '市郊', ' ShiJiao ', '1', '70020', '70020140', ' shijiao ', '市郊', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:42', '2017-02-17 09:30:42', '299', '宁波', ' NingBo ', '1', '70', '70030', ' ningbo ', '宁波', '3');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:42', '2017-02-17 09:30:42', '300', '海曙区', ' HaiShuQu ', '1', '70030', '70030010', ' haishuqu ', '海曙区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:42', '2017-02-17 09:30:42', '301', '江东区', ' JiangDongQu ', '1', '70030', '70030020', ' jiangdongqu ', '江东区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:42', '2017-02-17 09:30:42', '302', '江北区', ' JiangBeiQu ', '1', '70030', '70030030', ' jiangbeiqu ', '江北区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:42', '2017-02-17 09:30:42', '303', '镇海区', ' ZhenHaiQu ', '1', '70030', '70030040', ' zhenhaiqu ', '镇海区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:42', '2017-02-17 09:30:42', '304', '北仑区', ' BeiLunQu ', '1', '70030', '70030050', ' beilunqu ', '北仑区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:42', '2017-02-17 09:30:42', '305', '鄞州区', ' YinZhouQu ', '1', '70030', '70030060', ' yinzhouqu ', '鄞州区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:42', '2017-02-17 09:30:42', '306', '余姚市', ' YuYaoShi ', '1', '70030', '70030070', ' yuyaoshi ', '余姚市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:42', '2017-02-17 09:30:42', '307', '慈溪市', ' CiXiShi ', '1', '70030', '70030080', ' cixishi ', '慈溪市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:43', '2017-02-17 09:30:43', '308', '奉化市', ' FengHuaShi ', '1', '70030', '70030090', ' fenghuashi ', '奉化市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:43', '2017-02-17 09:30:43', '309', '象山县', ' XiangShanXian ', '1', '70030', '70030100', ' xiangshanxian ', '象山县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:43', '2017-02-17 09:30:43', '310', '宁海县', ' NingHaiXian ', '1', '70030', '70030110', ' ninghaixian ', '宁海县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:43', '2017-02-17 09:30:43', '311', '温州', ' WenZhou ', '1', '70', '70040', ' wenzhou ', '温州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:43', '2017-02-17 09:30:43', '312', '鹿城区', ' LuChengQu ', '1', '70040', '70040010', ' luchengqu ', '鹿城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:43', '2017-02-17 09:30:43', '313', '龙湾区', ' LongWanQu ', '1', '70040', '70040020', ' longwanqu ', '龙湾区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:43', '2017-02-17 09:30:43', '314', '瓯海区', ' OuHaiQu ', '1', '70040', '70040030', ' ouhaiqu ', '瓯海区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:43', '2017-02-17 09:30:43', '315', '瑞安市', ' RuiAnShi ', '1', '70040', '70040040', ' ruianshi ', '瑞安市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:43', '2017-02-17 09:30:43', '316', '乐清市', ' LeQingShi ', '1', '70040', '70040050', ' leqingshi ', '乐清市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:43', '2017-02-17 09:30:43', '317', '洞头县', ' DongTouXian ', '1', '70040', '70040060', ' dongtouxian ', '洞头县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:43', '2017-02-17 09:30:43', '318', '永嘉县', ' YongJiaXian ', '1', '70040', '70040070', ' yongjiaxian ', '永嘉县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:43', '2017-02-17 09:30:43', '319', '平阳县', ' PingYangXian ', '1', '70040', '70040080', ' pingyangxian ', '平阳县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:44', '2017-02-17 09:30:44', '320', '苍南县', ' CangNanXian ', '1', '70040', '70040090', ' cangnanxian ', '苍南县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:44', '2017-02-17 09:30:44', '321', '文成县', ' WenChengXian ', '1', '70040', '70040100', ' wenchengxian ', '文成县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:44', '2017-02-17 09:30:44', '322', '泰顺县', ' TaiShunXian ', '1', '70040', '70040110', ' taishunxian ', '泰顺县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:44', '2017-02-17 09:30:44', '323', '绍兴', ' ShaoXing ', '1', '70', '70050', ' shaoxing ', '绍兴', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:44', '2017-02-17 09:30:44', '324', '金华', ' JinHua ', '1', '70', '70060', ' jinhua ', '金华', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:44', '2017-02-17 09:30:44', '325', '台州', ' TaiZhou ', '1', '70', '70070', ' taizhou ', '台州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:44', '2017-02-17 09:30:44', '326', '湖州', ' HuZhou ', '1', '70', '70080', ' huzhou ', '湖州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:44', '2017-02-17 09:30:44', '327', '嘉兴', ' JiaXing ', '1', '70', '70090', ' jiaxing ', '嘉兴', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:44', '2017-02-17 09:30:44', '328', '衢州', ' QuZhou ', '1', '70', '70100', ' quzhou ', '衢州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:44', '2017-02-17 09:30:44', '329', '丽水', ' LiShui ', '1', '70', '70110', ' lishui ', '丽水', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:44', '2017-02-17 09:30:44', '330', '舟山', ' ZhouShan ', '1', '70', '70120', ' zhoushan ', '舟山', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:44', '2017-02-17 09:30:44', '331', '义乌', ' YiWu ', '1', '70', '70130', ' yiwu ', '义乌', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:44', '2017-02-17 09:30:44', '332', '海宁', ' HaiNing ', '1', '70', '70140', ' haining ', '海宁', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:45', '2017-02-17 09:30:45', '333', '玉环县', ' YuHuanXian ', '1', '70', '70150', ' yuhuanxian ', '玉环县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:45', '2017-02-17 09:30:45', '334', '平湖', ' PingHu ', '1', '70', '70160', ' pinghu ', '平湖', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:45', '2017-02-17 09:30:45', '335', '永康', ' YongKang ', '1', '70', '70170', ' yongkang ', '永康', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:45', '2017-02-17 09:30:45', '336', '东阳', ' DongYang ', '1', '70', '70180', ' dongyang ', '东阳', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:45', '2017-02-17 09:30:45', '337', '嘉善', ' JiaShan ', '1', '70', '70190', ' jiashan ', '嘉善', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:45', '2017-02-17 09:30:45', '338', '余姚', ' YuYao ', '1', '70', '70200', ' yuyao ', '余姚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:45', '2017-02-17 09:30:45', '339', '慈溪', ' CiXi ', '1', '70', '70210', ' cixi ', '慈溪', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:45', '2017-02-17 09:30:45', '340', '乐清', ' LeQing ', '1', '70', '70220', ' leqing ', '乐清', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:45', '2017-02-17 09:30:45', '341', '永嘉', ' YongJia ', '1', '70', '70230', ' yongjia ', '永嘉', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:45', '2017-02-17 09:30:45', '342', '桐乡', ' TongXiang ', '1', '70', '70240', ' tongxiang ', '桐乡', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:45', '2017-02-17 09:30:45', '343', '瑞安', ' RuiAn ', '1', '70', '70250', ' ruian ', '瑞安', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:45', '2017-02-17 09:30:45', '344', '温岭', ' WenLing ', '1', '70', '70260', ' wenling ', '温岭', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:46', '2017-02-17 09:30:46', '345', '上虞', ' ShangYu ', '1', '70', '70270', ' shangyu ', '上虞', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:46', '2017-02-17 09:30:46', '346', '诸暨', ' ZhuJi ', '1', '70', '70280', ' zhuji ', '诸暨', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:46', '2017-02-17 09:30:46', '347', '宁海', ' NingHai ', '1', '70', '70290', ' ninghai ', '宁海', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:46', '2017-02-17 09:30:46', '348', '三门', ' SanMen ', '1', '70', '70300', ' sanmen ', '三门', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:46', '2017-02-17 09:30:46', '349', '德清', ' DeQing ', '1', '70', '70310', ' deqing ', '德清', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:46', '2017-02-17 09:30:46', '350', '象山', ' XiangShan ', '1', '70', '70320', ' xiangshan ', '象山', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:46', '2017-02-17 09:30:46', '351', '方家山', ' FangJiaShan ', '1', '70', '70330', ' fangjiashan ', '方家山', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:46', '2017-02-17 09:30:46', '352', '龙泉', ' LongQuan ', '1', '70', '70340', ' longquan ', '龙泉', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:46', '2017-02-17 09:30:46', '353', '安徽省', ' AnHuiSheng ', '0', '', '80', ' anhui ', '安徽省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:46', '2017-02-17 09:30:46', '354', '合肥', ' HeFei ', '1', '80', '80020', ' hefei ', '合肥', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:46', '2017-02-17 09:30:46', '355', '庐阳区', ' LuYangQu ', '1', '80020', '80020010', ' luyangqu ', '庐阳区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:46', '2017-02-17 09:30:46', '356', '瑶海区', ' YaoHaiQu ', '1', '80020', '80020020', ' yaohaiqu ', '瑶海区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:46', '2017-02-17 09:30:46', '357', '蜀山区', ' ShuShanQu ', '1', '80020', '80020030', ' shushanqu ', '蜀山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:47', '2017-02-17 09:30:47', '358', '包河区', ' BaoHeQu ', '1', '80020', '80020040', ' baohequ ', '包河区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:47', '2017-02-17 09:30:47', '359', '长丰县', ' ZhangFengXian ', '1', '80020', '80020050', ' changfengxian ', '长丰县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:47', '2017-02-17 09:30:47', '360', '肥东县', ' FeiDongXian ', '1', '80020', '80020060', ' feidongxian ', '肥东县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:47', '2017-02-17 09:30:47', '361', '肥西县', ' FeiXiXian ', '1', '80020', '80020070', ' feixixian ', '肥西县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:47', '2017-02-17 09:30:47', '362', '新站区', ' XinZhanQu ', '1', '80020', '80020080', ' xinzhanqu ', '新站区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:47', '2017-02-17 09:30:47', '363', '经开区', ' JingKaiQu ', '1', '80020', '80020090', ' jingkaiqu ', '经开区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:47', '2017-02-17 09:30:47', '364', '高新区', ' GaoXinQu ', '1', '80020', '80020100', ' gaoxinqu ', '高新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:47', '2017-02-17 09:30:47', '365', '滨湖区', ' BinHuQu ', '1', '80020', '80020110', ' binhuxinqu ', '滨湖区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:47', '2017-02-17 09:30:47', '366', '北城区', ' BeiChengQu ', '1', '80020', '80020120', ' beichengxinqu ', '北城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:47', '2017-02-17 09:30:47', '367', '政务区', ' ZhengWuQu ', '1', '80020', '80020130', ' zhengwuxinqu ', '政务区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:47', '2017-02-17 09:30:47', '368', '安庆', ' AnQing ', '1', '80', '80030', ' anqing ', '安庆', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:47', '2017-02-17 09:30:47', '369', '蚌埠', ' BangBu ', '1', '80', '80040', ' bengbu ', '蚌埠', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:47', '2017-02-17 09:30:47', '370', '芜湖', ' WuHu ', '1', '80', '80050', ' wuhu ', '芜湖', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:47', '2017-02-17 09:30:47', '371', '淮南', ' HuaiNan ', '1', '80', '80060', ' huainan ', '淮南', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:47', '2017-02-17 09:30:47', '372', '马鞍山', ' MaAnShan ', '1', '80', '80070', ' maanshan ', '马鞍山', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:47', '2017-02-17 09:30:47', '373', '淮北', ' HuaiBei ', '1', '80', '80080', ' huaibei ', '淮北', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:48', '2017-02-17 09:30:48', '374', '铜陵', ' TongLing ', '1', '80', '80090', ' tongling ', '铜陵', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:48', '2017-02-17 09:30:48', '375', '黄山', ' HuangShan ', '1', '80', '80100', ' huangshan ', '黄山', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:48', '2017-02-17 09:30:48', '376', '滁州', ' ChuZhou ', '1', '80', '80110', ' chuzhou ', '滁州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:48', '2017-02-17 09:30:48', '377', '阜阳', ' FuYang ', '1', '80', '80120', ' fuyang ', '阜阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:48', '2017-02-17 09:30:48', '378', '宿州', ' SuZhou ', '1', '80', '80130', ' suzhou0557 ', '宿州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:48', '2017-02-17 09:30:48', '379', '六安', ' LiuAn ', '1', '80', '80140', ' liuan ', '六安', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:48', '2017-02-17 09:30:48', '380', '亳州', ' BoZhou ', '1', '80', '80150', ' bozhou ', '亳州', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:48', '2017-02-17 09:30:48', '381', '池州', ' ChiZhou ', '1', '80', '80160', ' chizhou ', '池州', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:48', '2017-02-17 09:30:48', '382', '宣城', ' XuanCheng ', '1', '80', '80170', ' xuancheng ', '宣城', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:48', '2017-02-17 09:30:48', '383', '巢湖', ' ChaoHu ', '1', '80', '80180', ' chaohu ', '巢湖', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:48', '2017-02-17 09:30:48', '384', '凤阳', ' FengYang ', '1', '80', '80190', ' fengyang ', '凤阳', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:48', '2017-02-17 09:30:48', '385', '广德', ' GuangDe ', '1', '80', '80200', ' guangde ', '广德', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:48', '2017-02-17 09:30:48', '386', '宿松', ' SuSong ', '1', '80', '80210', ' susong ', '宿松', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:48', '2017-02-17 09:30:48', '387', '福建省', ' FuJianSheng ', '0', '', '90', ' fujian ', '福建省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:49', '2017-02-17 09:30:49', '388', '福州', ' FuZhou ', '1', '90', '90020', ' fuzhou ', '福州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:49', '2017-02-17 09:30:49', '389', '鼓楼区', ' GuLouQu ', '1', '90020', '90020010', ' gulouqu ', '鼓楼区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:49', '2017-02-17 09:30:49', '390', '台江区', ' TaiJiangQu ', '1', '90020', '90020020', ' taijiangqu ', '台江区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:49', '2017-02-17 09:30:49', '391', '仓山区', ' CangShanQu ', '1', '90020', '90020030', ' cangshanqu ', '仓山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:49', '2017-02-17 09:30:49', '392', '马尾区', ' MaWeiQu ', '1', '90020', '90020040', ' maweiqu ', '马尾区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:49', '2017-02-17 09:30:49', '393', '晋安区', ' JinAnQu ', '1', '90020', '90020050', ' jinanqu ', '晋安区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:49', '2017-02-17 09:30:49', '394', '福清市', ' FuQingShi ', '1', '90020', '90020060', ' fuqingshi ', '福清市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:49', '2017-02-17 09:30:49', '395', '长乐市', ' ZhangLeShi ', '1', '90020', '90020070', ' changleshi ', '长乐市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:49', '2017-02-17 09:30:49', '396', '闽侯县', ' MinHouXian ', '1', '90020', '90020080', ' minhouxian ', '闽侯县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:49', '2017-02-17 09:30:49', '397', '连江县', ' LianJiangXian ', '1', '90020', '90020090', ' lianjiangxian ', '连江县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:49', '2017-02-17 09:30:49', '398', '罗源县', ' LuoYuanXian ', '1', '90020', '90020100', ' luoyuanxian ', '罗源县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:49', '2017-02-17 09:30:49', '399', '闽清县', ' MinQingXian ', '1', '90020', '90020110', ' minqingxian ', '闽清县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:49', '2017-02-17 09:30:49', '400', '永泰县', ' YongTaiXian ', '1', '90020', '90020120', ' yongtaixian ', '永泰县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:49', '2017-02-17 09:30:49', '401', '平潭县', ' PingTanXian ', '1', '90020', '90020130', ' pingtanxian ', '平潭县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:50', '2017-02-17 09:30:50', '402', '泉州', ' QuanZhou ', '1', '90', '90030', ' quanzhou ', '泉州', '3');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:50', '2017-02-17 09:30:50', '403', '厦门', ' ShaMen ', '1', '90', '90040', ' xiamen ', '厦门', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:50', '2017-02-17 09:30:50', '404', '思明区', ' SiMingQu ', '1', '90040', '90040010', ' simingqu ', '思明区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:50', '2017-02-17 09:30:50', '405', '海沧区', ' HaiCangQu ', '1', '90040', '90040020', ' haicangqu ', '海沧区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:50', '2017-02-17 09:30:50', '406', '湖里区', ' HuLiQu ', '1', '90040', '90040030', ' huliqu ', '湖里区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:50', '2017-02-17 09:30:50', '407', '集美区', ' JiMeiQu ', '1', '90040', '90040040', ' jimeiqu ', '集美区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:50', '2017-02-17 09:30:50', '408', '同安区', ' TongAnQu ', '1', '90040', '90040050', ' tonganqu ', '同安区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:50', '2017-02-17 09:30:50', '409', '翔安区', ' XiangAnQu ', '1', '90040', '90040060', ' xianganqu ', '翔安区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:50', '2017-02-17 09:30:50', '410', '漳州', ' ZhangZhou ', '1', '90', '90050', ' zhangzhou ', '漳州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:50', '2017-02-17 09:30:50', '411', '莆田', ' PuTian ', '1', '90', '90060', ' putian ', '莆田', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:50', '2017-02-17 09:30:50', '412', '三明', ' SanMing ', '1', '90', '90070', ' sanming ', '三明', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:50', '2017-02-17 09:30:50', '413', '南平', ' NanPing ', '1', '90', '90080', ' nanping ', '南平', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:50', '2017-02-17 09:30:50', '414', '龙岩', ' LongYan ', '1', '90', '90090', ' longyan ', '龙岩', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:51', '2017-02-17 09:30:51', '415', '宁德', ' NingDe ', '1', '90', '90100', ' ningde ', '宁德', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:51', '2017-02-17 09:30:51', '416', '泉港区', ' QuanGangQu ', '1', '90', '90110', ' quangangqu ', '泉港区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:51', '2017-02-17 09:30:51', '417', '福安', ' FuAn ', '1', '90', '90120', ' fuan ', '福安', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:51', '2017-02-17 09:30:51', '418', '晋江', ' JinJiang ', '1', '90', '90130', ' jinjiang ', '晋江', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:51', '2017-02-17 09:30:51', '419', '甘肃省', ' GanSuSheng ', '0', '', '100', ' gansu ', '甘肃省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:51', '2017-02-17 09:30:51', '420', '兰州', ' LanZhou ', '1', '100', '100020', ' lanzhou ', '兰州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:51', '2017-02-17 09:30:51', '421', '皋兰县', ' GaoLanXian ', '1', '100020', '100020010', ' gaolanxian ', '皋兰县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:51', '2017-02-17 09:30:51', '422', '城关区', ' ChengGuanQu ', '1', '100020', '100020020', ' chengguanqu ', '城关区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:51', '2017-02-17 09:30:51', '423', '七里河', ' QiLiHe ', '1', '100020', '100020030', ' qilihe ', '七里河', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:51', '2017-02-17 09:30:51', '424', '西固区', ' XiGuQu ', '1', '100020', '100020040', ' xiguqu ', '西固区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:51', '2017-02-17 09:30:51', '425', '安宁区', ' AnNingQu ', '1', '100020', '100020050', ' anningqu ', '安宁区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:52', '2017-02-17 09:30:52', '426', '红古区', ' HongGuQu ', '1', '100020', '100020060', ' hongguqu ', '红古区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:52', '2017-02-17 09:30:52', '427', '永登县', ' YongDengXian ', '1', '100020', '100020070', ' yongdengxian ', '永登县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:52', '2017-02-17 09:30:52', '428', '榆中县', ' YuZhongXian ', '1', '100020', '100020080', ' yuzhongxian ', '榆中县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:52', '2017-02-17 09:30:52', '429', '嘉峪关', ' JiaYuGuan ', '1', '100', '100030', ' jiayuguan ', '嘉峪关', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:52', '2017-02-17 09:30:52', '430', '酒泉', ' JiuQuan ', '1', '100', '100040', ' jiuquan ', '酒泉', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:52', '2017-02-17 09:30:52', '431', '金昌', ' JinChang ', '1', '100', '100050', ' jinchang ', '金昌', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:52', '2017-02-17 09:30:52', '432', '白银', ' BaiYin ', '1', '100', '100060', ' baiyin ', '白银', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:52', '2017-02-17 09:30:52', '433', '天水', ' TianShui ', '1', '100', '100070', ' tianshui ', '天水', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:52', '2017-02-17 09:30:52', '434', '张掖', ' ZhangYe ', '1', '100', '100080', ' zhangye ', '张掖', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:52', '2017-02-17 09:30:52', '435', '武威', ' WuWei ', '1', '100', '100090', ' wuwei ', '武威', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:52', '2017-02-17 09:30:52', '436', '定西', ' DingXi ', '1', '100', '100100', ' dingxi ', '定西', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:52', '2017-02-17 09:30:52', '437', '陇南', ' LongNan ', '1', '100', '100110', ' longnan ', '陇南', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:52', '2017-02-17 09:30:52', '438', '平凉', ' PingLiang ', '1', '100', '100120', ' pingliang ', '平凉', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:53', '2017-02-17 09:30:53', '439', '庆阳', ' QingYang ', '1', '100', '100130', ' qingyang ', '庆阳', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:53', '2017-02-17 09:30:53', '440', '临夏', ' LinXia ', '1', '100', '100140', ' linxia ', '临夏', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:53', '2017-02-17 09:30:53', '441', '甘南', ' GanNan ', '1', '100', '100150', ' gannan ', '甘南', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:53', '2017-02-17 09:30:53', '442', '广西', ' GuangXi ', '0', '', '110', ' guangxi ', '广西', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:53', '2017-02-17 09:30:53', '443', '南宁', ' NanNing ', '1', '110', '110020', ' nanning ', '南宁', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:53', '2017-02-17 09:30:53', '444', '邕宁区', ' YongNingQu ', '1', '110020', '110020010', ' yongningqu ', '邕宁区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:53', '2017-02-17 09:30:53', '445', '青秀区', ' QingXiuQu ', '1', '110020', '110020020', ' qingxiuqu ', '青秀区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:53', '2017-02-17 09:30:53', '446', '兴宁区', ' XingNingQu ', '1', '110020', '110020030', ' xingningqu ', '兴宁区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:53', '2017-02-17 09:30:53', '447', '良庆区', ' LiangQingQu ', '1', '110020', '110020040', ' liangqingqu ', '良庆区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:53', '2017-02-17 09:30:53', '448', '西乡塘', ' XiXiangTang ', '1', '110020', '110020050', ' xixiangtang ', '西乡塘', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:53', '2017-02-17 09:30:53', '449', '江南区', ' JiangNanQu ', '1', '110020', '110020060', ' jiangnanqu ', '江南区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:53', '2017-02-17 09:30:53', '450', '武鸣县', ' WuMingXian ', '1', '110020', '110020070', ' wumingxian ', '武鸣县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:53', '2017-02-17 09:30:53', '451', '隆安县', ' LongAnXian ', '1', '110020', '110020080', ' longanxian ', '隆安县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:53', '2017-02-17 09:30:53', '452', '马山县', ' MaShanXian ', '1', '110020', '110020090', ' mashanxian ', '马山县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:53', '2017-02-17 09:30:53', '453', '上林县', ' ShangLinXian ', '1', '110020', '110020100', ' shanglinxian ', '上林县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '454', '宾阳县', ' BinYangXian ', '1', '110020', '110020110', ' binyangxian ', '宾阳县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '455', '横县', ' HengXian ', '1', '110020', '110020120', ' hengxian ', '横县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '456', '北海', ' BeiHai ', '1', '110', '110030', ' beihai ', '北海', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '457', '桂林', ' GuiLin ', '1', '110', '110040', ' guilin ', '桂林', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '458', '柳州', ' LiuZhou ', '1', '110', '110050', ' liuzhou ', '柳州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '459', '玉林', ' YuLin ', '1', '110', '110060', ' yulin ', '玉林', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '460', '梧州', ' WuZhou ', '1', '110', '110070', ' wuzhou ', '梧州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '461', '崇左', ' ChongZuo ', '1', '110', '110080', ' chongzuo ', '崇左', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '462', '来宾', ' LaiBin ', '1', '110', '110090', ' laibin ', '来宾', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '463', '防城港', ' FangChengGang ', '1', '110', '110100', ' fangchenggang ', '防城港', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '464', '百色', ' BaiSe ', '1', '110', '110110', ' baise ', '百色', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '465', '钦州', ' QinZhou ', '1', '110', '110120', ' qinzhou ', '钦州', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '466', '贺州', ' HeZhou ', '1', '110', '110130', ' hezhou ', '贺州', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '467', '河池', ' HeChi ', '1', '110', '110140', ' hechi ', '河池', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '468', '贵港', ' GuiGang ', '1', '110', '110150', ' guigang ', '贵港', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '469', '贵州省', ' GuiZhouSheng ', '0', '', '120', ' guizhou ', '贵州省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:54', '2017-02-17 09:30:54', '470', '贵阳', ' GuiYang ', '1', '120', '120020', ' guiyang ', '贵阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:55', '2017-02-17 09:30:55', '471', '南明区', ' NanMingQu ', '1', '120020', '120020010', ' nanmingqu ', '南明区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:55', '2017-02-17 09:30:55', '472', '云岩区', ' YunYanQu ', '1', '120020', '120020020', ' yunyanqu ', '云岩区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:55', '2017-02-17 09:30:55', '473', '花溪区', ' HuaXiQu ', '1', '120020', '120020030', ' huaxiqu ', '花溪区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:55', '2017-02-17 09:30:55', '474', '乌当区', ' WuDangQu ', '1', '120020', '120020040', ' wudangqu ', '乌当区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:55', '2017-02-17 09:30:55', '475', '白云区', ' BaiYunQu ', '1', '120020', '120020050', ' baiyunqu ', '白云区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:55', '2017-02-17 09:30:55', '476', '小河区', ' XiaoHeQu ', '1', '120020', '120020060', ' xiaohequ ', '小河区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:55', '2017-02-17 09:30:55', '477', '金阳区', ' JinYangQu ', '1', '120020', '120020070', ' jinyangqu ', '金阳区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:55', '2017-02-17 09:30:55', '478', '新天园', ' XinTianYuan ', '1', '120020', '120020080', ' xintianyuan ', '新天园', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:55', '2017-02-17 09:30:55', '479', '清镇市', ' QingZhenShi ', '1', '120020', '120020090', ' qingzhenshi ', '清镇市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:55', '2017-02-17 09:30:55', '480', '开阳县', ' KaiYangXian ', '1', '120020', '120020100', ' kaiyangxian ', '开阳县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:55', '2017-02-17 09:30:55', '481', '修文县', ' XiuWenXian ', '1', '120020', '120020110', ' xiuwenxian ', '修文县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:55', '2017-02-17 09:30:55', '482', '息烽县', ' XiFengXian ', '1', '120020', '120020120', ' xifengxian ', '息烽县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:56', '2017-02-17 09:30:56', '483', '遵义', ' ZunYi ', '1', '120', '120030', ' zunyi ', '遵义', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:56', '2017-02-17 09:30:56', '484', '六盘水', ' LiuPanShui ', '1', '120', '120040', ' liupanshui ', '六盘水', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:56', '2017-02-17 09:30:56', '485', '安顺', ' AnShun ', '1', '120', '120050', ' anshun ', '安顺', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:56', '2017-02-17 09:30:56', '486', '毕节', ' BiJie ', '1', '120', '120060', ' bijie ', '毕节', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:56', '2017-02-17 09:30:56', '487', '铜仁', ' TongRen ', '1', '120', '120070', ' tongren ', '铜仁', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:56', '2017-02-17 09:30:56', '488', '黔西南', ' QianXiNan ', '1', '120', '120080', ' qianxinan ', '黔西南', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:56', '2017-02-17 09:30:56', '489', '黔东南', ' QianDongNan ', '1', '120', '120090', ' qiandongnan ', '黔东南', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:56', '2017-02-17 09:30:56', '490', '黔南', ' QianNan ', '1', '120', '120100', ' qiannan ', '黔南', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:56', '2017-02-17 09:30:56', '491', '海南省', ' HaiNanSheng ', '0', '', '130', ' hainan ', '海南省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:56', '2017-02-17 09:30:56', '492', '海口', ' HaiKou ', '1', '130', '130020', ' haikou ', '海口', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:56', '2017-02-17 09:30:56', '493', '秀英区', ' XiuYingQu ', '1', '130020', '130020010', ' xiuyingqu ', '秀英区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:56', '2017-02-17 09:30:56', '494', '龙华区', ' LongHuaQu ', '1', '130020', '130020020', ' longhuaqu ', '龙华区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:56', '2017-02-17 09:30:56', '495', '琼山区', ' QiongShanQu ', '1', '130020', '130020030', ' qiongshanqu ', '琼山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:57', '2017-02-17 09:30:57', '496', '美兰区', ' MeiLanQu ', '1', '130020', '130020040', ' meilanqu ', '美兰区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:57', '2017-02-17 09:30:57', '497', '澄迈县', ' ChengMaiXian ', '1', '130020', '130020050', ' chengmaixian ', '澄迈县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:57', '2017-02-17 09:30:57', '498', '万宁市', ' WanNingShi ', '1', '130020', '130020060', ' wanningshi ', '万宁市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:57', '2017-02-17 09:30:57', '499', '文昌市', ' WenChangShi ', '1', '130020', '130020070', ' wenchangshi ', '文昌市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:57', '2017-02-17 09:30:57', '500', '儋州市', ' DanZhouShi ', '1', '130020', '130020080', ' danzhoushi ', '儋州市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:57', '2017-02-17 09:30:57', '501', '屯昌县', ' TunChangXian ', '1', '130020', '130020090', ' tunchangxian ', '屯昌县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:57', '2017-02-17 09:30:57', '502', '东方市', ' DongFangShi ', '1', '130020', '130020100', ' dongfangshi ', '东方市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:57', '2017-02-17 09:30:57', '503', '昌江县', ' ChangJiangXian ', '1', '130020', '130020110', ' changjiangxian ', '昌江县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:57', '2017-02-17 09:30:57', '504', '乐东黎', ' LeDongLi ', '1', '130020', '130020120', ' ledongli ', '乐东黎', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:57', '2017-02-17 09:30:57', '505', '临高县', ' LinGaoXian ', '1', '130020', '130020130', ' lingaoxian ', '临高县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:57', '2017-02-17 09:30:57', '506', '琼海市', ' QiongHaiShi ', '1', '130020', '130020140', ' qionghaishi ', '琼海市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:57', '2017-02-17 09:30:57', '507', '府城', ' FuCheng ', '1', '130020', '130020150', ' fucheng ', '府城', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:58', '2017-02-17 09:30:58', '508', '三亚', ' SanYa ', '1', '130', '130030', ' sanya ', '三亚', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:58', '2017-02-17 09:30:58', '509', '三沙', ' SanSha ', '1', '130', '130040', ' sansha ', '三沙', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:58', '2017-02-17 09:30:58', '510', '文昌', ' WenChang ', '1', '130', '130060', ' wenchang ', '文昌', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:58', '2017-02-17 09:30:58', '511', '琼海', ' QiongHai ', '1', '130', '130070', ' qionghai ', '琼海', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:58', '2017-02-17 09:30:58', '512', '万宁', ' WanNing ', '1', '130', '130080', ' wanning ', '万宁', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:58', '2017-02-17 09:30:58', '513', '儋州', ' DanZhou ', '1', '130', '130090', ' danzhou ', '儋州', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:58', '2017-02-17 09:30:58', '514', '东方', ' DongFang ', '1', '130', '130100', ' dongfang ', '东方', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:58', '2017-02-17 09:30:58', '515', '五指山', ' WuZhiShan ', '1', '130', '130110', ' wuzhishan ', '五指山', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:58', '2017-02-17 09:30:58', '516', '定安', ' DingAn ', '1', '130', '130120', ' dingan ', '定安', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:58', '2017-02-17 09:30:58', '517', '屯昌', ' TunChang ', '1', '130', '130130', ' tunchang ', '屯昌', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:58', '2017-02-17 09:30:58', '518', '澄迈', ' ChengMai ', '1', '130', '130140', ' chengmai ', '澄迈', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:58', '2017-02-17 09:30:58', '519', '临高', ' LinGao ', '1', '130', '130150', ' lingao ', '临高', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:58', '2017-02-17 09:30:58', '520', '琼中', ' QiongZhong ', '1', '130', '130160', ' qiongzhong ', '琼中', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:59', '2017-02-17 09:30:59', '521', '保亭', ' BaoTing ', '1', '130', '130170', ' baoting ', '保亭', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:59', '2017-02-17 09:30:59', '522', '白沙', ' BaiSha ', '1', '130', '130180', ' baisha ', '白沙', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:59', '2017-02-17 09:30:59', '523', '昌江', ' ChangJiang ', '1', '130', '130190', ' chengjiang ', '昌江', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:59', '2017-02-17 09:30:59', '524', '乐东', ' LeDong ', '1', '130', '130200', ' ledong ', '乐东', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:59', '2017-02-17 09:30:59', '525', '陵水', ' LingShui ', '1', '130', '130210', ' lingshui ', '陵水', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:59', '2017-02-17 09:30:59', '526', '河北省', ' HeBeiSheng ', '0', '', '140', ' hebei ', '河北省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:59', '2017-02-17 09:30:59', '527', '石家庄', ' ShiJiaZhuang ', '1', '140', '140020', ' shijiazhuang ', '石家庄', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:59', '2017-02-17 09:30:59', '528', '长安区', ' ZhangAnQu ', '1', '140020', '140020010', ' changanqu ', '长安区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:59', '2017-02-17 09:30:59', '529', '桥东区', ' QiaoDongQu ', '1', '140020', '140020020', ' qiaodongqu ', '桥东区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:59', '2017-02-17 09:30:59', '530', '桥西区', ' QiaoXiQu ', '1', '140020', '140020030', ' qiaoxiqu ', '桥西区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:59', '2017-02-17 09:30:59', '531', '新华区', ' XinHuaQu ', '1', '140020', '140020040', ' xinhuaqu ', '新华区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:59', '2017-02-17 09:30:59', '532', '裕华区', ' YuHuaQu ', '1', '140020', '140020050', ' yuhuaqu ', '裕华区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:59', '2017-02-17 09:30:59', '533', '井陉矿', ' JingXingKuang ', '1', '140020', '140020060', ' jingxingkuang ', '井陉矿', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:30:59', '2017-02-17 09:30:59', '534', '高新区', ' GaoXinQu ', '1', '140020', '140020070', ' gaoxinqu ', '高新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '535', '辛集市', ' XinJiShi ', '1', '140020', '140020080', ' xinjishi ', '辛集市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '536', '藁城市', ' GaoChengShi ', '1', '140020', '140020090', ' gaochengshi ', '藁城市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '537', '晋州市', ' JinZhouShi ', '1', '140020', '140020100', ' jinzhoushi ', '晋州市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '538', '新乐市', ' XinLeShi ', '1', '140020', '140020110', ' xinleshi ', '新乐市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '539', '鹿泉市', ' LuQuanShi ', '1', '140020', '140020120', ' luquanshi ', '鹿泉市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '540', '井陉县', ' JingXingXian ', '1', '140020', '140020130', ' jingxingxian ', '井陉县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '541', '正定县', ' ZhengDingXian ', '1', '140020', '140020140', ' zhengdingxian ', '正定县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '542', '栾城县', ' LuanChengXian ', '1', '140020', '140020150', ' luanchengxian ', '栾城县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '543', '行唐县', ' XingTangXian ', '1', '140020', '140020160', ' xingtangxian ', '行唐县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '544', '灵寿县', ' LingShouXian ', '1', '140020', '140020170', ' lingshouxian ', '灵寿县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '545', '高邑县', ' GaoYiXian ', '1', '140020', '140020180', ' gaoyixian ', '高邑县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '546', '深泽县', ' ShenZeXian ', '1', '140020', '140020190', ' shenzexian ', '深泽县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '547', '赞皇县', ' ZanHuangXian ', '1', '140020', '140020200', ' zanhuangxian ', '赞皇县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '548', '无极县', ' WuJiXian ', '1', '140020', '140020210', ' wujixian ', '无极县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '549', '平山县', ' PingShanXian ', '1', '140020', '140020220', ' pingshanxian ', '平山县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '550', '元氏县', ' YuanShiXian ', '1', '140020', '140020230', ' yuanshixian ', '元氏县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:00', '2017-02-17 09:31:00', '551', '赵县', ' ZhaoXian ', '1', '140020', '140020240', ' zhaoxian ', '赵县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:01', '2017-02-17 09:31:01', '552', '保定', ' BaoDing ', '1', '140', '140030', ' baoding ', '保定', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:01', '2017-02-17 09:31:01', '553', '承德', ' ChengDe ', '1', '140', '140040', ' chengde ', '承德', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:01', '2017-02-17 09:31:01', '554', '邯郸', ' HanDan ', '1', '140', '140050', ' handan ', '邯郸', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:01', '2017-02-17 09:31:01', '555', '廊坊', ' LangFang ', '1', '140', '140060', ' langfang ', '廊坊', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:01', '2017-02-17 09:31:01', '556', '秦皇岛', ' QinHuangDao ', '1', '140', '140070', ' qinhuangdao ', '秦皇岛', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:01', '2017-02-17 09:31:01', '557', '唐山', ' TangShan ', '1', '140', '140080', ' tangshan ', '唐山', '3');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:01', '2017-02-17 09:31:01', '558', '张家口', ' ZhangJiaKou ', '1', '140', '140090', ' zhangjiakou ', '张家口', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:01', '2017-02-17 09:31:01', '559', '邢台', ' XingTai ', '1', '140', '140100', ' xingtai ', '邢台', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:01', '2017-02-17 09:31:01', '560', '沧州', ' CangZhou ', '1', '140', '140110', ' cangzhou ', '沧州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:01', '2017-02-17 09:31:01', '561', '衡水', ' HengShui ', '1', '140', '140120', ' hengshui ', '衡水', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:01', '2017-02-17 09:31:01', '562', '燕郊', ' YanJiao ', '1', '140', '140130', ' yanjiao ', '燕郊', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:01', '2017-02-17 09:31:01', '563', '固安', ' GuAn ', '1', '140', '140140', ' guan ', '固安', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:01', '2017-02-17 09:31:01', '564', '遵化', ' ZunHua ', '1', '140', '140150', ' zunhua ', '遵化', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:01', '2017-02-17 09:31:01', '565', '香河', ' XiangHe ', '1', '140', '140160', ' xianghe ', '香河', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:02', '2017-02-17 09:31:02', '566', '三河', ' SanHe ', '1', '140', '140170', ' sanhe ', '三河', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:02', '2017-02-17 09:31:02', '567', '河南省', ' HeNanSheng ', '0', '', '150', ' henan ', '河南省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:02', '2017-02-17 09:31:02', '568', '郑州', ' ZhengZhou ', '1', '150', '150020', ' zhengzhou ', '郑州', '3');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:02', '2017-02-17 09:31:02', '569', '金水区', ' JinShuiQu ', '1', '150020', '150020010', ' jinshuiqu ', '金水区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:02', '2017-02-17 09:31:02', '570', '邙山区', ' MangShanQu ', '1', '150020', '150020020', ' mangshanqu ', '邙山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:02', '2017-02-17 09:31:02', '571', '二七区', ' ErQiQu ', '1', '150020', '150020030', ' erqiqu ', '二七区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:02', '2017-02-17 09:31:02', '572', '管城区', ' GuanChengQu ', '1', '150020', '150020040', ' guanchengqu ', '管城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:02', '2017-02-17 09:31:02', '573', '中原区', ' ZhongYuanQu ', '1', '150020', '150020050', ' zhongyuanqu ', '中原区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:02', '2017-02-17 09:31:02', '574', '上街区', ' ShangJieQu ', '1', '150020', '150020060', ' shangjiequ ', '上街区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:02', '2017-02-17 09:31:02', '575', '惠济区', ' HuiJiQu ', '1', '150020', '150020070', ' huijiqu ', '惠济区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:02', '2017-02-17 09:31:02', '576', '郑东区', ' ZhengDongQu ', '1', '150020', '150020080', ' zhengdongqu ', '郑东区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:02', '2017-02-17 09:31:02', '577', '经济技术', ' JingJiJiShu ', '1', '150020', '150020090', ' jingjijishu ', '经济技术', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:02', '2017-02-17 09:31:02', '578', '高新区', ' GaoXinQu ', '1', '150020', '150020100', ' gaoxinqu ', '高新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:02', '2017-02-17 09:31:02', '579', '加工区', ' JiaGongQu ', '1', '150020', '150020110', ' jiagongqu ', '加工区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:03', '2017-02-17 09:31:03', '580', '巩义市', ' GongYiShi ', '1', '150020', '150020120', ' gongyishi ', '巩义市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:03', '2017-02-17 09:31:03', '581', '荥阳市', ' XingYangShi ', '1', '150020', '150020130', ' yingyangshi ', '荥阳市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:03', '2017-02-17 09:31:03', '582', '新密市', ' XinMiShi ', '1', '150020', '150020140', ' xinmishi ', '新密市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:03', '2017-02-17 09:31:03', '583', '新郑市', ' XinZhengShi ', '1', '150020', '150020150', ' xinzhengshi ', '新郑市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:03', '2017-02-17 09:31:03', '584', '登封市', ' DengFengShi ', '1', '150020', '150020160', ' dengfengshi ', '登封市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:03', '2017-02-17 09:31:03', '585', '中牟县', ' ZhongMouXian ', '1', '150020', '150020170', ' zhongmouxian ', '中牟县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:03', '2017-02-17 09:31:03', '586', '开封', ' KaiFeng ', '1', '150', '150030', ' kaifeng ', '开封', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:03', '2017-02-17 09:31:03', '587', '洛阳', ' LuoYang ', '1', '150', '150040', ' luoyang ', '洛阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:03', '2017-02-17 09:31:03', '588', '商丘', ' ShangQiu ', '1', '150', '150050', ' shangqiu ', '商丘', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:03', '2017-02-17 09:31:03', '589', '安阳', ' AnYang ', '1', '150', '150060', ' anyang ', '安阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:03', '2017-02-17 09:31:03', '590', '平顶山', ' PingDingShan ', '1', '150', '150070', ' pingdingshan ', '平顶山', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:03', '2017-02-17 09:31:03', '591', '新乡', ' XinXiang ', '1', '150', '150080', ' xinxiang ', '新乡', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:03', '2017-02-17 09:31:03', '592', '焦作', ' JiaoZuo ', '1', '150', '150090', ' jiaozuo ', '焦作', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:04', '2017-02-17 09:31:04', '593', '濮阳', ' PuYang ', '1', '150', '150100', ' puyang ', '濮阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:04', '2017-02-17 09:31:04', '594', '许昌', ' XuChang ', '1', '150', '150110', ' xuchang ', '许昌', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:04', '2017-02-17 09:31:04', '595', '漯河', ' TaHe ', '1', '150', '150120', ' luohe ', '漯河', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:04', '2017-02-17 09:31:04', '596', '三门峡', ' SanMenXia ', '1', '150', '150130', ' shanmenxia ', '三门峡', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:04', '2017-02-17 09:31:04', '597', '鹤壁', ' HeBi ', '1', '150', '150140', ' hebi ', '鹤壁', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:04', '2017-02-17 09:31:04', '598', '周口', ' ZhouKou ', '1', '150', '150150', ' zhoukou ', '周口', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:04', '2017-02-17 09:31:04', '599', '驻马店', ' ZhuMaDian ', '1', '150', '150160', ' zhumadian ', '驻马店', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:04', '2017-02-17 09:31:04', '600', '南阳', ' NanYang ', '1', '150', '150170', ' nanyang ', '南阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:04', '2017-02-17 09:31:04', '601', '信阳', ' XinYang ', '1', '150', '150180', ' xinyang ', '信阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:04', '2017-02-17 09:31:04', '602', '济源', ' JiYuan ', '1', '150', '150190', ' jiyuan ', '济源', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:04', '2017-02-17 09:31:04', '603', '西平', ' XiPing ', '1', '150', '150200', ' xiping ', '西平', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:04', '2017-02-17 09:31:04', '604', '长葛', ' ZhangGe ', '1', '150', '150210', ' changge ', '长葛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:04', '2017-02-17 09:31:04', '605', '黑龙江省', ' HeiLongJiangSheng ', '0', '', '160', ' heilongjiang ', '黑龙江省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:04', '2017-02-17 09:31:04', '606', '哈尔滨', ' HaErBin ', '1', '160', '160020', ' haerbin ', '哈尔滨', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:04', '2017-02-17 09:31:04', '607', '道里区', ' DaoLiQu ', '1', '160020', '160020010', ' daoliqu ', '道里区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:05', '2017-02-17 09:31:05', '608', '南岗区', ' NanGangQu ', '1', '160020', '160020020', ' nangangqu ', '南岗区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:05', '2017-02-17 09:31:05', '609', '动力区', ' DongLiQu ', '1', '160020', '160020030', ' dongliqu ', '动力区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:05', '2017-02-17 09:31:05', '610', '平房区', ' PingFangQu ', '1', '160020', '160020040', ' pingfangqu ', '平房区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:05', '2017-02-17 09:31:05', '611', '香坊区', ' XiangFangQu ', '1', '160020', '160020050', ' xiangfangqu ', '香坊区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:05', '2017-02-17 09:31:05', '612', '太平区', ' TaiPingQu ', '1', '160020', '160020060', ' taipingqu ', '太平区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:05', '2017-02-17 09:31:05', '613', '道外区', ' DaoWaiQu ', '1', '160020', '160020070', ' daowaiqu ', '道外区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:05', '2017-02-17 09:31:05', '614', '阿城市', ' AChengShi ', '1', '160020', '160020080', ' achengshi ', '阿城市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:05', '2017-02-17 09:31:05', '615', '呼兰区', ' HuLanQu ', '1', '160020', '160020090', ' hulanqu ', '呼兰区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:05', '2017-02-17 09:31:05', '616', '松北区', ' SongBeiQu ', '1', '160020', '160020100', ' songbeiqu ', '松北区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:05', '2017-02-17 09:31:05', '617', '尚志市', ' ShangZhiShi ', '1', '160020', '160020110', ' shangzhishi ', '尚志市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:05', '2017-02-17 09:31:05', '618', '双城市', ' ShuangChengShi ', '1', '160020', '160020120', ' shuangchengshi ', '双城市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:05', '2017-02-17 09:31:05', '619', '五常市', ' WuChangShi ', '1', '160020', '160020130', ' wuchangshi ', '五常市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:05', '2017-02-17 09:31:05', '620', '方正县', ' FangZhengXian ', '1', '160020', '160020140', ' fangzhengxian ', '方正县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:05', '2017-02-17 09:31:05', '621', '宾县', ' BinXian ', '1', '160020', '160020150', ' binxian ', '宾县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:05', '2017-02-17 09:31:05', '622', '依兰县', ' YiLanXian ', '1', '160020', '160020160', ' yilanxian ', '依兰县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:05', '2017-02-17 09:31:05', '623', '巴彦县', ' BaYanXian ', '1', '160020', '160020170', ' bayanxian ', '巴彦县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:06', '2017-02-17 09:31:06', '624', '通河县', ' TongHeXian ', '1', '160020', '160020180', ' tonghexian ', '通河县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:06', '2017-02-17 09:31:06', '625', '木兰县', ' MuLanXian ', '1', '160020', '160020190', ' mulanxian ', '木兰县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:06', '2017-02-17 09:31:06', '626', '延寿县', ' YanShouXian ', '1', '160020', '160020200', ' yanshouxian ', '延寿县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:06', '2017-02-17 09:31:06', '627', '大庆', ' DaQing ', '1', '160', '160030', ' daqing ', '大庆', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:06', '2017-02-17 09:31:06', '628', '佳木斯', ' JiaMuSi ', '1', '160', '160040', ' jiamusi ', '佳木斯', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:06', '2017-02-17 09:31:06', '629', '牡丹江', ' MuDanJiang ', '1', '160', '160050', ' mudanjiang ', '牡丹江', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:06', '2017-02-17 09:31:06', '630', '齐齐哈尔', ' QiQiHaEr ', '1', '160', '160060', ' qiqihaer ', '齐齐哈尔', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:06', '2017-02-17 09:31:06', '631', '鸡西', ' JiXi ', '1', '160', '160070', ' jixi ', '鸡西', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:06', '2017-02-17 09:31:06', '632', '鹤岗', ' HeGang ', '1', '160', '160080', ' hegang ', '鹤岗', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:06', '2017-02-17 09:31:06', '633', '双鸭山', ' ShuangYaShan ', '1', '160', '160090', ' shuangyashan ', '双鸭山', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:06', '2017-02-17 09:31:06', '634', '伊春', ' YiChun ', '1', '160', '160100', ' yichun ', '伊春', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:06', '2017-02-17 09:31:06', '635', '七台河', ' QiTaiHe ', '1', '160', '160110', ' qitaihe ', '七台河', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:06', '2017-02-17 09:31:06', '636', '黑河', ' HeiHe ', '1', '160', '160120', ' heihe ', '黑河', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:06', '2017-02-17 09:31:06', '637', '绥化', ' SuiHua ', '1', '160', '160130', ' suihua ', '绥化', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:06', '2017-02-17 09:31:06', '638', '大兴安岭', ' DaXingAnLing ', '1', '160', '160140', ' daxinganling ', '大兴安岭', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:07', '2017-02-17 09:31:07', '639', '安达', ' AnDa ', '1', '160', '160150', ' anda ', '安达', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:07', '2017-02-17 09:31:07', '640', '双城', ' ShuangCheng ', '1', '160', '160160', ' shuangcheng ', '双城', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:07', '2017-02-17 09:31:07', '641', '尚志', ' ShangZhi ', '1', '160', '160170', ' shangzhi ', '尚志', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:07', '2017-02-17 09:31:07', '642', '绥芬河', ' SuiFenHe ', '1', '160', '160180', ' suifenghe ', '绥芬河', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:07', '2017-02-17 09:31:07', '643', '肇东', ' ZhaoDong ', '1', '160', '160190', ' zhaodong ', '肇东', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:07', '2017-02-17 09:31:07', '644', '湖北省', ' HuBeiSheng ', '0', '', '170', ' hubei ', '湖北省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:07', '2017-02-17 09:31:07', '645', '武汉', ' WuHan ', '1', '170', '170020', ' wuhan ', '武汉', '2');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:07', '2017-02-17 09:31:07', '646', '江岸区', ' JiangAnQu ', '1', '170020', '170020010', ' jiangan ', '江岸区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:07', '2017-02-17 09:31:07', '647', '江汉区', ' JiangHanQu ', '1', '170020', '170020020', ' jianghan ', '江汉区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:07', '2017-02-17 09:31:07', '648', '硚口区', ' QiaoKouQu ', '1', '170020', '170020030', ' qiaokou ', '硚口区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:07', '2017-02-17 09:31:07', '649', '汉阳区', ' HanYangQu ', '1', '170020', '170020040', ' hanyang ', '汉阳区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:07', '2017-02-17 09:31:07', '650', '武昌区', ' WuChangQu ', '1', '170020', '170020050', ' wuchang ', '武昌区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:07', '2017-02-17 09:31:07', '651', '青山区', ' QingShanQu ', '1', '170020', '170020060', ' qingshan ', '青山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:07', '2017-02-17 09:31:07', '652', '洪山区', ' HongShanQu ', '1', '170020', '170020070', ' hongshan ', '洪山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:08', '2017-02-17 09:31:08', '653', '蔡甸区', ' CaiDianQu ', '1', '170020', '170020080', ' caidian ', '蔡甸区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:08', '2017-02-17 09:31:08', '654', '江夏区', ' JiangXiaQu ', '1', '170020', '170020090', ' jiangxia ', '江夏区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:08', '2017-02-17 09:31:08', '655', '黄陂区', ' HuangBeiQu ', '1', '170020', '170020100', ' huangpi ', '黄陂区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:08', '2017-02-17 09:31:08', '656', '新洲区', ' XinZhouQu ', '1', '170020', '170020110', ' xinzhou ', '新洲区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:08', '2017-02-17 09:31:08', '657', '东西湖', ' DongXiHu ', '1', '170020', '170020120', ' dongxihu ', '东西湖', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:08', '2017-02-17 09:31:08', '658', '汉南区', ' HanNanQu ', '1', '170020', '170020130', ' hannan ', '汉南区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:08', '2017-02-17 09:31:08', '659', '开发区', ' KaiFaQu ', '1', '170020', '170020140', ' kaifaqu ', '开发区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:08', '2017-02-17 09:31:08', '660', '十堰', ' ShiYan ', '1', '170', '170030', ' shiyan ', '十堰', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:08', '2017-02-17 09:31:08', '661', '襄阳', ' XiangYang ', '1', '170', '170040', ' xiangyang ', '襄阳', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:08', '2017-02-17 09:31:08', '662', '宜昌', ' YiChang ', '1', '170', '170050', ' yichang ', '宜昌', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:08', '2017-02-17 09:31:08', '663', '潜江', ' QianJiang ', '1', '170', '170060', ' qianjiang ', '潜江', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:08', '2017-02-17 09:31:08', '664', '荆门', ' JingMen ', '1', '170', '170070', ' jingmen ', '荆门', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:08', '2017-02-17 09:31:08', '665', '荆州', ' JingZhou ', '1', '170', '170080', ' jingzhou ', '荆州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:09', '2017-02-17 09:31:09', '666', '黄石', ' HuangShi ', '1', '170', '170090', ' huangshi ', '黄石', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:09', '2017-02-17 09:31:09', '667', '鄂州', ' EZhou ', '1', '170', '170100', ' ezhou ', '鄂州', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:09', '2017-02-17 09:31:09', '668', '黄冈', ' HuangGang ', '1', '170', '170110', ' huanggang ', '黄冈', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:09', '2017-02-17 09:31:09', '669', '孝感', ' XiaoGan ', '1', '170', '170120', ' xiaogan ', '孝感', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:09', '2017-02-17 09:31:09', '670', '咸宁', ' XianNing ', '1', '170', '170130', ' xianning ', '咸宁', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:09', '2017-02-17 09:31:09', '671', '随州', ' SuiZhou ', '1', '170', '170140', ' suizhou ', '随州', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:09', '2017-02-17 09:31:09', '672', '仙桃', ' XianTao ', '1', '170', '170150', ' xiantao ', '仙桃', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:09', '2017-02-17 09:31:09', '673', '天门', ' TianMen ', '1', '170', '170160', ' tianmen ', '天门', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:09', '2017-02-17 09:31:09', '674', '神农架', ' ShenNongJia ', '1', '170', '170170', ' shennongjia ', '神农架', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:09', '2017-02-17 09:31:09', '675', '恩施', ' EnShi ', '1', '170', '170180', ' enshi ', '恩施', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:09', '2017-02-17 09:31:09', '676', '公安', ' GongAn ', '1', '170', '170190', ' gongan ', '公安', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:09', '2017-02-17 09:31:09', '677', '武穴', ' WuXue ', '1', '170', '170200', ' wuxue ', '武穴', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:09', '2017-02-17 09:31:09', '678', '宜城', ' YiCheng ', '1', '170', '170210', ' yicheng ', '宜城', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:10', '2017-02-17 09:31:10', '679', '湖南省', ' HuNanSheng ', '0', '', '180', ' hunan ', '湖南省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:10', '2017-02-17 09:31:10', '680', '长沙', ' ChangSha ', '1', '180', '180020', ' changsha ', '长沙', '3');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:10', '2017-02-17 09:31:10', '681', '岳麓区', ' YueLuQu ', '1', '180020', '180020010', ' yueluqu ', '岳麓区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:10', '2017-02-17 09:31:10', '682', '芙蓉区', ' FuRongQu ', '1', '180020', '180020020', ' furongqu ', '芙蓉区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:10', '2017-02-17 09:31:10', '683', '天心区', ' TianXinQu ', '1', '180020', '180020030', ' tianxinqu ', '天心区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:10', '2017-02-17 09:31:10', '684', '开福区', ' KaiFuQu ', '1', '180020', '180020040', ' kaifuqu ', '开福区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:10', '2017-02-17 09:31:10', '685', '雨花区', ' YuHuaQu ', '1', '180020', '180020050', ' yuhuaqu ', '雨花区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:10', '2017-02-17 09:31:10', '686', '开发区', ' KaiFaQu ', '1', '180020', '180020060', ' kaifaqu ', '开发区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:10', '2017-02-17 09:31:10', '687', '浏阳市', ' LiuYangShi ', '1', '180020', '180020070', ' liuyangshi ', '浏阳市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:10', '2017-02-17 09:31:10', '688', '长沙县', ' ZhangShaXian ', '1', '180020', '180020080', ' changshaxian ', '长沙县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:10', '2017-02-17 09:31:10', '689', '望城区', ' WangChengQu ', '1', '180020', '180020090', ' wangchengqu ', '望城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:10', '2017-02-17 09:31:10', '690', '宁乡县', ' NingXiangXian ', '1', '180020', '180020100', ' ningxiangxian ', '宁乡县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:10', '2017-02-17 09:31:10', '691', '湘潭', ' XiangTan ', '1', '180', '180030', ' xiangtan ', '湘潭', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '692', '株洲', ' ZhuZhou ', '1', '180', '180040', ' zhuzhou ', '株洲', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '693', '常德', ' ChangDe ', '1', '180', '180050', ' changde ', '常德', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '694', '衡阳', ' HengYang ', '1', '180', '180060', ' hengyang ', '衡阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '695', '益阳', ' YiYang ', '1', '180', '180070', ' yiyang ', '益阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '696', '郴州', ' ChenZhou ', '1', '180', '180080', ' chenzhou ', '郴州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '697', '岳阳', ' YueYang ', '1', '180', '180090', ' yueyang ', '岳阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '698', '邵阳', ' ShaoYang ', '1', '180', '180100', ' shaoyang ', '邵阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '699', '张家界', ' ZhangJiaJie ', '1', '180', '180110', ' zhangjiajie ', '张家界', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '700', '娄底', ' LouDi ', '1', '180', '180120', ' loudi ', '娄底', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '701', '永州', ' YongZhou ', '1', '180', '180130', ' yongzhou ', '永州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '702', '怀化', ' HuaiHua ', '1', '180', '180140', ' huaihua ', '怀化', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '703', '湘西', ' XiangXi ', '1', '180', '180150', ' xiangxi ', '湘西', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '704', '吉林省', ' JiLinSheng ', '0', '', '190', ' jilin ', '吉林省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '705', '长春', ' ChangChun ', '1', '190', '190020', ' changchun ', '长春', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '706', '朝阳区', ' ChaoYangQu ', '1', '190020', '190020010', ' chaoyangqu ', '朝阳区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '707', '宽城区', ' KuanChengQu ', '1', '190020', '190020020', ' kuanchengqu ', '宽城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:11', '2017-02-17 09:31:11', '708', '二道区', ' ErDaoQu ', '1', '190020', '190020030', ' erdaoqu ', '二道区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:12', '2017-02-17 09:31:12', '709', '南关区', ' NanGuanQu ', '1', '190020', '190020040', ' nanguanqu ', '南关区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:12', '2017-02-17 09:31:12', '710', '绿园区', ' LvYuanQu ', '1', '190020', '190020050', ' lvyuanqu ', '绿园区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:12', '2017-02-17 09:31:12', '711', '双阳区', ' ShuangYangQu ', '1', '190020', '190020060', ' shuangyangqu ', '双阳区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:12', '2017-02-17 09:31:12', '712', '净月区', ' JingYueQu ', '1', '190020', '190020070', ' jingyuequ ', '净月区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:12', '2017-02-17 09:31:12', '713', '高新区', ' GaoXinQu ', '1', '190020', '190020080', ' gaoxinqu ', '高新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:12', '2017-02-17 09:31:12', '714', '经开区', ' JingKaiQu ', '1', '190020', '190020090', ' jingkaiqu ', '经开区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:12', '2017-02-17 09:31:12', '715', '汽开区', ' QiKaiQu ', '1', '190020', '190020100', ' qikaiqu ', '汽开区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:12', '2017-02-17 09:31:12', '716', '德惠市', ' DeHuiShi ', '1', '190020', '190020110', ' dehuishi ', '德惠市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:12', '2017-02-17 09:31:12', '717', '九台市', ' JiuTaiShi ', '1', '190020', '190020120', ' jiutaishi ', '九台市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:12', '2017-02-17 09:31:12', '718', '榆树市', ' YuShuShi ', '1', '190020', '190020130', ' yushushi ', '榆树市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:12', '2017-02-17 09:31:12', '719', '农安县', ' NongAnXian ', '1', '190020', '190020140', ' nonganxian ', '农安县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:12', '2017-02-17 09:31:12', '720', '高新区', ' GaoXinQu ', '1', '190020', '190020150', ' gaoxinqu ', '高新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:12', '2017-02-17 09:31:12', '721', '经济区', ' JingJiQu ', '1', '190020', '190020160', ' jingjiqu ', '经济区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:12', '2017-02-17 09:31:12', '722', '净月区', ' JingYueQu ', '1', '190020', '190020170', ' jingyuequ ', '净月区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:13', '2017-02-17 09:31:13', '723', '吉林市', ' JiLinShi ', '1', '190', '190030', ' jinlinshi ', '吉林市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:13', '2017-02-17 09:31:13', '724', '四平', ' SiPing ', '1', '190', '190040', ' siping ', '四平', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:13', '2017-02-17 09:31:13', '725', '辽源', ' LiaoYuan ', '1', '190', '190050', ' liaoyuan ', '辽源', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:13', '2017-02-17 09:31:13', '726', '通化', ' TongHua ', '1', '190', '190060', ' tonghuan ', '通化', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:13', '2017-02-17 09:31:13', '727', '白山', ' BaiShan ', '1', '190', '190070', ' baishan ', '白山', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:13', '2017-02-17 09:31:13', '728', '松原', ' SongYuan ', '1', '190', '190080', ' songyuan ', '松原', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:13', '2017-02-17 09:31:13', '729', '白城', ' BaiCheng ', '1', '190', '190090', ' baicheng ', '白城', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:13', '2017-02-17 09:31:13', '730', '延吉', ' YanJi ', '1', '190', '190100', ' yanji ', '延吉', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:13', '2017-02-17 09:31:13', '731', '延边', ' YanBian ', '1', '190', '190110', ' yanbian ', '延边', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:13', '2017-02-17 09:31:13', '732', '公主岭', ' GongZhuLing ', '1', '190', '190120', ' gongzhuling ', '公主岭', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:13', '2017-02-17 09:31:13', '733', '江西省', ' JiangXiSheng ', '0', '', '200', ' jiangxi ', '江西省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:13', '2017-02-17 09:31:13', '734', '南昌', ' NanChang ', '1', '200', '200020', ' nanchang ', '南昌', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:13', '2017-02-17 09:31:13', '735', '东湖区', ' DongHuQu ', '1', '200020', '200020010', ' donghuqu ', '东湖区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:13', '2017-02-17 09:31:13', '736', '西湖区', ' XiHuQu ', '1', '200020', '200020020', ' xihuqu ', '西湖区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:14', '2017-02-17 09:31:14', '737', '青云谱', ' QingYunPu ', '1', '200020', '200020030', ' qingyunpu ', '青云谱', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:14', '2017-02-17 09:31:14', '738', '湾里区', ' WanLiQu ', '1', '200020', '200020040', ' wanliqu ', '湾里区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:14', '2017-02-17 09:31:14', '739', '青山湖', ' QingShanHu ', '1', '200020', '200020050', ' qingshanhu ', '青山湖', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:14', '2017-02-17 09:31:14', '740', '红谷滩', ' HongGuTan ', '1', '200020', '200020060', ' honggutan ', '红谷滩', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:14', '2017-02-17 09:31:14', '741', '昌北区', ' ChangBeiQu ', '1', '200020', '200020070', ' changbeiqu ', '昌北区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:14', '2017-02-17 09:31:14', '742', '高新区', ' GaoXinQu ', '1', '200020', '200020080', ' gaoxinqu ', '高新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:14', '2017-02-17 09:31:14', '743', '南昌县', ' NanChangXian ', '1', '200020', '200020090', ' nanchangxian ', '南昌县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:14', '2017-02-17 09:31:14', '744', '新建县', ' XinJianXian ', '1', '200020', '200020100', ' xinjianxian ', '新建县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:14', '2017-02-17 09:31:14', '745', '安义县', ' AnYiXian ', '1', '200020', '200020110', ' anyixian ', '安义县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:14', '2017-02-17 09:31:14', '746', '进贤县', ' JinXianXian ', '1', '200020', '200020120', ' jinxianxian ', '进贤县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:14', '2017-02-17 09:31:14', '747', '桑海区', ' SangHaiQu ', '1', '200020', '200020130', ' sanghaiqu ', '桑海区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:14', '2017-02-17 09:31:14', '748', '九江', ' JiuJiang ', '1', '200', '200030', ' jiujiang ', '九江', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:14', '2017-02-17 09:31:14', '749', '赣州', ' GanZhou ', '1', '200', '200040', ' ganzhou ', '赣州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:15', '2017-02-17 09:31:15', '750', '宜春', ' YiChun ', '1', '200', '200050', ' yichun0795 ', '宜春', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:15', '2017-02-17 09:31:15', '751', '吉安', ' JiAn ', '1', '200', '200060', ' jian ', '吉安', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:15', '2017-02-17 09:31:15', '752', '上饶', ' ShangRao ', '1', '200', '200070', ' shangrao ', '上饶', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:15', '2017-02-17 09:31:15', '753', '抚州', ' FuZhou ', '1', '200', '200080', ' fuzhou0794 ', '抚州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:15', '2017-02-17 09:31:15', '754', '景德镇', ' JingDeZhen ', '1', '200', '200090', ' jingdezhen ', '景德镇', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:15', '2017-02-17 09:31:15', '755', '萍乡', ' PingXiang ', '1', '200', '200100', ' pingxiang ', '萍乡', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:15', '2017-02-17 09:31:15', '756', '新余', ' XinYu ', '1', '200', '200110', ' xinyu ', '新余', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:15', '2017-02-17 09:31:15', '757', '鹰潭', ' YingTan ', '1', '200', '200120', ' yingtan ', '鹰潭', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:15', '2017-02-17 09:31:15', '758', '辽宁省', ' LiaoNingSheng ', '0', '', '210', ' liaoning ', '辽宁省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:15', '2017-02-17 09:31:15', '759', '沈阳', ' ShenYang ', '1', '210', '210020', ' shenyang ', '沈阳', '3');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:15', '2017-02-17 09:31:15', '760', '沈河区', ' ShenHeQu ', '1', '210020', '210020010', ' shenhequ ', '沈河区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:15', '2017-02-17 09:31:15', '761', '皇姑区', ' HuangGuQu ', '1', '210020', '210020020', ' huangguqu ', '皇姑区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:15', '2017-02-17 09:31:15', '762', '和平区', ' HePingQu ', '1', '210020', '210020030', ' hepingqu ', '和平区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:16', '2017-02-17 09:31:16', '763', '大东区', ' DaDongQu ', '1', '210020', '210020040', ' dadongqu ', '大东区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:16', '2017-02-17 09:31:16', '764', '铁西区', ' TieXiQu ', '1', '210020', '210020050', ' tiexiqu ', '铁西区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:16', '2017-02-17 09:31:16', '765', '苏家屯', ' SuJiaTun ', '1', '210020', '210020060', ' sujiatun ', '苏家屯', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:16', '2017-02-17 09:31:16', '766', '东陵区', ' DongLingQu ', '1', '210020', '210020070', ' donglingqu ', '东陵区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:16', '2017-02-17 09:31:16', '767', '沈北区', ' ShenBeiQu ', '1', '210020', '210020080', ' shenbeiqu ', '沈北区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:16', '2017-02-17 09:31:16', '768', '于洪区', ' YuHongQu ', '1', '210020', '210020090', ' yuhongqu ', '于洪区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:16', '2017-02-17 09:31:16', '769', '浑南区', ' HunNanQu ', '1', '210020', '210020100', ' hunnanqu ', '浑南区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:16', '2017-02-17 09:31:16', '770', '新民市', ' XinMinShi ', '1', '210020', '210020110', ' xinminshi ', '新民市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:16', '2017-02-17 09:31:16', '771', '辽中县', ' LiaoZhongXian ', '1', '210020', '210020120', ' liaozhongxian ', '辽中县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:16', '2017-02-17 09:31:16', '772', '康平县', ' KangPingXian ', '1', '210020', '210020130', ' kangpingxian ', '康平县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:16', '2017-02-17 09:31:16', '773', '法库县', ' FaKuXian ', '1', '210020', '210020140', ' fakuxian ', '法库县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:16', '2017-02-17 09:31:16', '774', '鞍山', ' AnShan ', '1', '210', '210030', ' anshan ', '鞍山', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:16', '2017-02-17 09:31:16', '775', '大连', ' DaLian ', '1', '210', '210040', ' dalian ', '大连', '3');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:17', '2017-02-17 09:31:17', '776', '西岗区', ' XiGangQu ', '1', '210040', '210040010', ' xigang ', '西岗区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:17', '2017-02-17 09:31:17', '777', '中山区', ' ZhongShanQu ', '1', '210040', '210040020', ' zhongshan ', '中山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:17', '2017-02-17 09:31:17', '778', '沙河口', ' ShaHeKou ', '1', '210040', '210040030', ' shahekou ', '沙河口', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:17', '2017-02-17 09:31:17', '779', '甘井子', ' GanJingZi ', '1', '210040', '210040040', ' ganjingzi ', '甘井子', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:17', '2017-02-17 09:31:17', '780', '旅顺口', ' LvShunKou ', '1', '210040', '210040050', ' lvshunkou ', '旅顺口', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:17', '2017-02-17 09:31:17', '781', '金州区', ' JinZhouQu ', '1', '210040', '210040060', ' jinzhou ', '金州区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:17', '2017-02-17 09:31:17', '782', '瓦房店', ' WaFangDian ', '1', '210040', '210040070', ' wafangdian ', '瓦房店', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:17', '2017-02-17 09:31:17', '783', '普兰店', ' PuLanDian ', '1', '210040', '210040080', ' pulandian ', '普兰店', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:17', '2017-02-17 09:31:17', '784', '庄河市', ' ZhuangHeShi ', '1', '210040', '210040090', ' zhuanghe ', '庄河市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:17', '2017-02-17 09:31:17', '785', '普湾区', ' PuWanQu ', '1', '210040', '210040100', ' puwanqu ', '普湾区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:17', '2017-02-17 09:31:17', '786', '长海县', ' ZhangHaiXian ', '1', '210040', '210040120', ' changhaixian ', '长海县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:17', '2017-02-17 09:31:17', '787', '新区', ' XinQu ', '1', '210040', '210040130', ' xinqu ', '新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:17', '2017-02-17 09:31:17', '788', '开发区', ' KaiFaQu ', '1', '210040', '210040140', ' kaifaqu ', '开发区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:17', '2017-02-17 09:31:17', '789', '葫芦岛', ' HuLuDao ', '1', '210', '210050', ' huludao ', '葫芦岛', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:18', '2017-02-17 09:31:18', '790', '抚顺', ' FuShun ', '1', '210', '210060', ' fushun ', '抚顺', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:18', '2017-02-17 09:31:18', '791', '本溪', ' BenXi ', '1', '210', '210070', ' benxi ', '本溪', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:18', '2017-02-17 09:31:18', '792', '丹东', ' DanDong ', '1', '210', '210080', ' dandong ', '丹东', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:18', '2017-02-17 09:31:18', '793', '锦州', ' JinZhou ', '1', '210', '210090', ' jinzhou ', '锦州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:18', '2017-02-17 09:31:18', '794', '营口', ' YingKou ', '1', '210', '210100', ' yingkou ', '营口', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:18', '2017-02-17 09:31:18', '795', '阜新', ' FuXin ', '1', '210', '210110', ' fuxin ', '阜新', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:18', '2017-02-17 09:31:18', '796', '辽阳', ' LiaoYang ', '1', '210', '210120', ' liaoyang ', '辽阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:18', '2017-02-17 09:31:18', '797', '盘锦', ' PanJin ', '1', '210', '210130', ' panjin ', '盘锦', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:18', '2017-02-17 09:31:18', '798', '铁岭', ' TieLing ', '1', '210', '210140', ' tieling ', '铁岭', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:18', '2017-02-17 09:31:18', '799', '朝阳', ' ChaoYang ', '1', '210', '210150', ' chaoyang ', '朝阳', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:18', '2017-02-17 09:31:18', '800', '兴城', ' XingCheng ', '1', '210', '210160', ' xingcheng ', '兴城', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:18', '2017-02-17 09:31:18', '801', '海城', ' HaiCheng ', '1', '210', '210170', ' haicheng ', '海城', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:18', '2017-02-17 09:31:18', '802', '昌图', ' ChangTu ', '1', '210', '210180', ' changtu ', '昌图', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:18', '2017-02-17 09:31:18', '803', '开原', ' KaiYuan ', '1', '210', '210190', ' kaiyuan ', '开原', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:19', '2017-02-17 09:31:19', '804', '内蒙古', ' NeiMengGu ', '0', '', '220', ' neimenggu ', '内蒙古', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:19', '2017-02-17 09:31:19', '805', '呼和浩特', ' HuHeHaoTe ', '1', '220', '220020', ' huhehaote ', '呼和浩特', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:19', '2017-02-17 09:31:19', '806', '回民区', ' HuiMinQu ', '1', '220020', '220020010', ' huiminqu ', '回民区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:19', '2017-02-17 09:31:19', '807', '玉泉区', ' YuQuanQu ', '1', '220020', '220020020', ' yuquanqu ', '玉泉区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:19', '2017-02-17 09:31:19', '808', '新城区', ' XinChengQu ', '1', '220020', '220020030', ' xinchengqu ', '新城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:19', '2017-02-17 09:31:19', '809', '赛罕区', ' SaiHanQu ', '1', '220020', '220020040', ' saihanqu ', '赛罕区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:19', '2017-02-17 09:31:19', '810', '清水河', ' QingShuiHe ', '1', '220020', '220020050', ' qingshuihe ', '清水河', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:19', '2017-02-17 09:31:19', '811', '土左旗', ' TuZuoQi ', '1', '220020', '220020060', ' tuzuoqi ', '土左旗', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:19', '2017-02-17 09:31:19', '812', '托克托', ' TuoKeTuo ', '1', '220020', '220020070', ' tuoketuo ', '托克托', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:19', '2017-02-17 09:31:19', '813', '和林格尔', ' HeLinGeEr ', '1', '220020', '220020080', ' helingeer ', '和林格尔', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:19', '2017-02-17 09:31:19', '814', '武川县', ' WuChuanXian ', '1', '220020', '220020090', ' wuchuanxian ', '武川县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:19', '2017-02-17 09:31:19', '815', '包头', ' BaoTou ', '1', '220', '220030', ' baotou ', '包头', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:19', '2017-02-17 09:31:19', '816', '赤峰', ' ChiFeng ', '1', '220', '220040', ' chifeng ', '赤峰', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:20', '2017-02-17 09:31:20', '817', '鄂尔多斯', ' EErDuoSi ', '1', '220', '220050', ' eerduosi ', '鄂尔多斯', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:20', '2017-02-17 09:31:20', '818', '乌海', ' WuHai ', '1', '220', '220060', ' wuhai ', '乌海', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:20', '2017-02-17 09:31:20', '819', '通辽', ' TongLiao ', '1', '220', '220070', ' tongliao ', '通辽', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:20', '2017-02-17 09:31:20', '820', '呼伦贝尔', ' HuLunBeiEr ', '1', '220', '220080', ' wulunbeier ', '呼伦贝尔', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:20', '2017-02-17 09:31:20', '821', '巴彦淖尔', ' BaYanNaoEr ', '1', '220', '220090', ' bayannaoer ', '巴彦淖尔', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:20', '2017-02-17 09:31:20', '822', '乌兰察布', ' WuLanChaBu ', '1', '220', '220100', ' wulanchabu ', '乌兰察布', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:20', '2017-02-17 09:31:20', '823', '兴安盟', ' XingAnMeng ', '1', '220', '220110', ' xinganmeng ', '兴安盟', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:20', '2017-02-17 09:31:20', '824', '锡盟', ' XiMeng ', '1', '220', '220120', ' ximeng ', '锡盟', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:20', '2017-02-17 09:31:20', '825', '阿拉善盟', ' ALaShanMeng ', '1', '220', '220130', ' alashanmeng ', '阿拉善盟', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:20', '2017-02-17 09:31:20', '826', '乌审旗', ' WuShenQi ', '1', '220', '220140', ' wushenqi ', '乌审旗', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:20', '2017-02-17 09:31:20', '827', '满洲里', ' ManZhouLi ', '1', '220', '220150', ' manzhouli ', '满洲里', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:20', '2017-02-17 09:31:20', '828', '宁夏', ' NingXia ', '0', '', '230', ' ningxia ', '宁夏', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:20', '2017-02-17 09:31:20', '829', '银川', ' YinChuan ', '1', '230', '230020', ' yinchuan ', '银川', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:21', '2017-02-17 09:31:21', '830', '西夏区', ' XiXiaQu ', '1', '230020', '230020010', ' xixiaqu ', '西夏区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:21', '2017-02-17 09:31:21', '831', '金凤区', ' JinFengQu ', '1', '230020', '230020020', ' jinfengqu ', '金凤区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:21', '2017-02-17 09:31:21', '832', '兴庆区', ' XingQingQu ', '1', '230020', '230020030', ' xingqingqu ', '兴庆区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:21', '2017-02-17 09:31:21', '833', '灵武市', ' LingWuShi ', '1', '230020', '230020040', ' lingwushi ', '灵武市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:21', '2017-02-17 09:31:21', '834', '永宁县', ' YongNingXian ', '1', '230020', '230020050', ' yongningxian ', '永宁县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:21', '2017-02-17 09:31:21', '835', '贺兰县', ' HeLanXian ', '1', '230020', '230020060', ' helanxian ', '贺兰县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:21', '2017-02-17 09:31:21', '836', '中卫', ' ZhongWei ', '1', '230020', '230020070', ' zhongwei ', '中卫', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:21', '2017-02-17 09:31:21', '837', '石嘴山', ' ShiZuiShan ', '1', '230020', '230020080', ' shizuishan ', '石嘴山', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:21', '2017-02-17 09:31:21', '838', '吴忠', ' WuZhong ', '1', '230020', '230020090', ' wuzhong ', '吴忠', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:21', '2017-02-17 09:31:21', '839', '青铜峡', ' QingTongXia ', '1', '230020', '230020100', ' qingtongxia ', '青铜峡', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:21', '2017-02-17 09:31:21', '840', '石嘴山', ' ShiZuiShan ', '1', '230', '230030', ' shizuishan ', '石嘴山', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:22', '2017-02-17 09:31:22', '841', '吴忠', ' WuZhong ', '1', '230', '230040', ' wuzhong ', '吴忠', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:22', '2017-02-17 09:31:22', '842', '固原', ' GuYuan ', '1', '230', '230050', ' guyuan ', '固原', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:22', '2017-02-17 09:31:22', '843', '中卫', ' ZhongWei ', '1', '230', '230060', ' zhongwei ', '中卫', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:22', '2017-02-17 09:31:22', '844', '青海省', ' QingHaiSheng ', '0', '', '240', ' qinghai ', '青海省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:22', '2017-02-17 09:31:22', '845', '西宁', ' XiNing ', '1', '240', '240020', ' xining ', '西宁', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:22', '2017-02-17 09:31:22', '846', '城中区', ' ChengZhongQu ', '1', '240020', '240020010', ' chengzhongqu ', '城中区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:22', '2017-02-17 09:31:22', '847', '城东区', ' ChengDongQu ', '1', '240020', '240020020', ' chengdongqu ', '城东区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:22', '2017-02-17 09:31:22', '848', '城西区', ' ChengXiQu ', '1', '240020', '240020030', ' chengxiqu ', '城西区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:22', '2017-02-17 09:31:22', '849', '城北区', ' ChengBeiQu ', '1', '240020', '240020040', ' chengbeiqu ', '城北区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:22', '2017-02-17 09:31:22', '850', '湟中县', ' HuangZhongXian ', '1', '240020', '240020050', ' huangzhongxian ', '湟中县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:22', '2017-02-17 09:31:22', '851', '湟源县', ' HuangYuanXian ', '1', '240020', '240020060', ' huangyuanxian ', '湟源县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:22', '2017-02-17 09:31:22', '852', '大通', ' DaTong ', '1', '240020', '240020070', ' datong ', '大通', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:22', '2017-02-17 09:31:22', '853', '城南区', ' ChengNanQu ', '1', '240020', '240020080', ' chengnanqu ', '城南区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:22', '2017-02-17 09:31:22', '854', '海湖区', ' HaiHuQu ', '1', '240020', '240020090', ' haihuqu ', '海湖区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:23', '2017-02-17 09:31:23', '855', '海东', ' HaiDong ', '1', '240', '240030', ' haidong ', '海东', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:23', '2017-02-17 09:31:23', '856', '海西', ' HaiXi ', '1', '240', '240040', ' haixi ', '海西', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:23', '2017-02-17 09:31:23', '857', '海北', ' HaiBei ', '1', '240', '240050', ' haibei ', '海北', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:23', '2017-02-17 09:31:23', '858', '黄南', ' HuangNan ', '1', '240', '240060', ' huangnan ', '黄南', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:23', '2017-02-17 09:31:23', '859', '海南', ' HaiNan ', '1', '240', '240070', ' hainan ', '海南', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:23', '2017-02-17 09:31:23', '860', '果洛', ' GuoLuo ', '1', '240', '240080', ' guoluo ', '果洛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:23', '2017-02-17 09:31:23', '861', '玉树', ' YuShu ', '1', '240', '240090', ' yushu ', '玉树', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:23', '2017-02-17 09:31:23', '862', '山东省', ' ShanDongSheng ', '0', '', '250', ' shandong ', '山东省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:23', '2017-02-17 09:31:23', '863', '济南', ' JiNan ', '1', '250', '250020', ' jinan ', '济南', '3');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:23', '2017-02-17 09:31:23', '864', '市中区', ' ShiZhongQu ', '1', '250020', '250020010', ' shizhongqu ', '市中区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:23', '2017-02-17 09:31:23', '865', '历下区', ' LiXiaQu ', '1', '250020', '250020020', ' lixiaqu ', '历下区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:23', '2017-02-17 09:31:23', '866', '天桥区', ' TianQiaoQu ', '1', '250020', '250020030', ' tianqiaoqu ', '天桥区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:23', '2017-02-17 09:31:23', '867', '槐荫区', ' HuaiYinQu ', '1', '250020', '250020040', ' huaiyinqu ', '槐荫区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:23', '2017-02-17 09:31:23', '868', '历城区', ' LiChengQu ', '1', '250020', '250020050', ' lichengqu ', '历城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:24', '2017-02-17 09:31:24', '869', '长清区', ' ZhangQingQu ', '1', '250020', '250020060', ' changqingqu ', '长清区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:24', '2017-02-17 09:31:24', '870', '章丘市', ' ZhangQiuShi ', '1', '250020', '250020070', ' zhangqiushi ', '章丘市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:24', '2017-02-17 09:31:24', '871', '平阴县', ' PingYinXian ', '1', '250020', '250020080', ' pingyinxian ', '平阴县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:24', '2017-02-17 09:31:24', '872', '济阳县', ' JiYangXian ', '1', '250020', '250020090', ' jiyangxian ', '济阳县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:24', '2017-02-17 09:31:24', '873', '商河县', ' ShangHeXian ', '1', '250020', '250020100', ' shanghexian ', '商河县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:24', '2017-02-17 09:31:24', '874', '高新区', ' GaoXinQu ', '1', '250020', '250020110', ' gaoxinqu ', '高新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:24', '2017-02-17 09:31:24', '875', '近郊', ' JinJiao ', '1', '250020', '250020120', ' jinjiao ', '近郊', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:24', '2017-02-17 09:31:24', '876', '德州', ' DeZhou ', '1', '250', '250030', ' dezhou ', '德州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:24', '2017-02-17 09:31:24', '877', '东营', ' DongYing ', '1', '250', '250040', ' dongying ', '东营', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:24', '2017-02-17 09:31:24', '878', '济宁', ' JiNing ', '1', '250', '250050', ' jining ', '济宁', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:24', '2017-02-17 09:31:24', '879', '临沂', ' LinYi ', '1', '250', '250060', ' linyi ', '临沂', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:24', '2017-02-17 09:31:24', '880', '青岛', ' QingDao ', '1', '250', '250070', ' qingdao ', '青岛', '3');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:24', '2017-02-17 09:31:24', '881', '市南区', ' ShiNanQu ', '1', '250070', '250070010', ' shinanqu ', '市南区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:24', '2017-02-17 09:31:24', '882', '市北区', ' ShiBeiQu ', '1', '250070', '250070020', ' shibeiqu ', '市北区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:25', '2017-02-17 09:31:25', '883', '城阳区', ' ChengYangQu ', '1', '250070', '250070030', ' chengyangqu ', '城阳区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:25', '2017-02-17 09:31:25', '884', '四方区', ' SiFangQu ', '1', '250070', '250070040', ' sifangqu ', '四方区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:25', '2017-02-17 09:31:25', '885', '李沧区', ' LiCangQu ', '1', '250070', '250070050', ' licangqu ', '李沧区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:25', '2017-02-17 09:31:25', '886', '黄岛区', ' HuangDaoQu ', '1', '250070', '250070060', ' huangdaoqu ', '黄岛区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:25', '2017-02-17 09:31:25', '887', '崂山区', ' LaoShanQu ', '1', '250070', '250070070', ' laoshanqu ', '崂山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:25', '2017-02-17 09:31:25', '888', '胶州市', ' JiaoZhouShi ', '1', '250070', '250070080', ' jiaozhoushi ', '胶州市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:25', '2017-02-17 09:31:25', '889', '即墨市', ' JiMoShi ', '1', '250070', '250070090', ' jimoshi ', '即墨市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:25', '2017-02-17 09:31:25', '890', '平度市', ' PingDuShi ', '1', '250070', '250070100', ' pingdushi ', '平度市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:25', '2017-02-17 09:31:25', '891', '胶南市', ' JiaoNanShi ', '1', '250070', '250070110', ' jiaonanshi ', '胶南市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:25', '2017-02-17 09:31:25', '892', '莱西市', ' LaiXiShi ', '1', '250070', '250070120', ' laixishi ', '莱西市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:25', '2017-02-17 09:31:25', '893', '日照', ' RiZhao ', '1', '250', '250080', ' rizhao ', '日照', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:25', '2017-02-17 09:31:25', '894', '泰安', ' TaiAn ', '1', '250', '250090', ' taian ', '泰安', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:25', '2017-02-17 09:31:25', '895', '威海', ' WeiHai ', '1', '250', '250100', ' weihai ', '威海', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:25', '2017-02-17 09:31:25', '896', '潍坊', ' WeiFang ', '1', '250', '250110', ' weifang ', '潍坊', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:26', '2017-02-17 09:31:26', '897', '烟台', ' YanTai ', '1', '250', '250120', ' yantai ', '烟台', '3');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:26', '2017-02-17 09:31:26', '898', '淄博', ' ZiBo ', '1', '250', '250130', ' zibo ', '淄博', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:26', '2017-02-17 09:31:26', '899', '枣庄', ' ZaoZhuang ', '1', '250', '250140', ' zaozhuang ', '枣庄', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:26', '2017-02-17 09:31:26', '900', '滨州', ' BinZhou ', '1', '250', '250150', ' binzhou ', '滨州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:26', '2017-02-17 09:31:26', '901', '聊城', ' LiaoCheng ', '1', '250', '250160', ' liaocheng ', '聊城', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:26', '2017-02-17 09:31:26', '902', '菏泽', ' HeZe ', '1', '250', '250170', ' heze ', '菏泽', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:26', '2017-02-17 09:31:26', '903', '莱芜', ' LaiWu ', '1', '250', '250180', ' laiwu ', '莱芜', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:26', '2017-02-17 09:31:26', '904', '荣成', ' RongCheng ', '1', '250', '250190', ' rongcheng ', '荣成', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:26', '2017-02-17 09:31:26', '905', '黄岛', ' HuangDao ', '1', '250', '250200', ' huangdao ', '黄岛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:26', '2017-02-17 09:31:26', '906', '乳山', ' RuShan ', '1', '250', '250210', ' rushan ', '乳山', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:26', '2017-02-17 09:31:26', '907', '城阳', ' ChengYang ', '1', '250', '250220', ' chengyang ', '城阳', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:26', '2017-02-17 09:31:26', '908', '即墨', ' JiMo ', '1', '250', '250230', ' jimo ', '即墨', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:27', '2017-02-17 09:31:27', '909', '肥城', ' FeiCheng ', '1', '250', '250240', ' feicheng ', '肥城', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:27', '2017-02-17 09:31:27', '910', '兖州', ' YanZhou ', '1', '250', '250250', ' yanzhou ', '兖州', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:27', '2017-02-17 09:31:27', '911', '海阳', ' HaiYang ', '1', '250', '250260', ' haiyang ', '海阳', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:27', '2017-02-17 09:31:27', '912', '胶州', ' JiaoZhou ', '1', '250', '250270', ' jiaozhou ', '胶州', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:27', '2017-02-17 09:31:27', '913', '胶南', ' JiaoNan ', '1', '250', '250280', ' jiaonan ', '胶南', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:27', '2017-02-17 09:31:27', '914', '平度', ' PingDu ', '1', '250', '250290', ' pingdu ', '平度', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:27', '2017-02-17 09:31:27', '915', '莱西', ' LaiXi ', '1', '250', '250300', ' laixi ', '莱西', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:27', '2017-02-17 09:31:27', '916', '山西省', ' ShanXiSheng ', '0', '', '260', ' shanxi0351 ', '山西省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:27', '2017-02-17 09:31:27', '917', '太原', ' TaiYuan ', '1', '260', '260020', ' taiyuan ', '太原', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:27', '2017-02-17 09:31:27', '918', '杏花岭', ' XingHuaLing ', '1', '260020', '260020010', ' xinghualing ', '杏花岭', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:27', '2017-02-17 09:31:27', '919', '小店区', ' XiaoDianQu ', '1', '260020', '260020020', ' xiaodianqu ', '小店区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:27', '2017-02-17 09:31:27', '920', '迎泽区', ' YingZeQu ', '1', '260020', '260020030', ' yingzequ ', '迎泽区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:27', '2017-02-17 09:31:27', '921', '尖草坪', ' JianCaoPing ', '1', '260020', '260020040', ' jiancaoping ', '尖草坪', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:27', '2017-02-17 09:31:27', '922', '万柏林', ' WanBoLin ', '1', '260020', '260020050', ' wanbailin ', '万柏林', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:28', '2017-02-17 09:31:28', '923', '晋源区', ' JinYuanQu ', '1', '260020', '260020060', ' jinyuanqu ', '晋源区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:28', '2017-02-17 09:31:28', '924', '高新区', ' GaoXinQu ', '1', '260020', '260020070', ' gaoxinqu ', '高新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:28', '2017-02-17 09:31:28', '925', '开发区', ' KaiFaQu ', '1', '260020', '260020080', ' kaifaqu ', '开发区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:28', '2017-02-17 09:31:28', '926', '工业园', ' GongYeYuan ', '1', '260020', '260020090', ' gongyeyuan ', '工业园', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:28', '2017-02-17 09:31:28', '927', '清徐县', ' QingXuXian ', '1', '260020', '260020100', ' qingxuxian ', '清徐县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:28', '2017-02-17 09:31:28', '928', '阳曲县', ' YangQuXian ', '1', '260020', '260020110', ' yangquxian ', '阳曲县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:28', '2017-02-17 09:31:28', '929', '娄烦县', ' LouFanXian ', '1', '260020', '260020120', ' loufanxian ', '娄烦县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:28', '2017-02-17 09:31:28', '930', '古交市', ' GuJiaoShi ', '1', '260020', '260020130', ' gujiaoshi ', '古交市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:28', '2017-02-17 09:31:28', '931', '大同', ' DaTong ', '1', '260', '260030', ' datong ', '大同', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:28', '2017-02-17 09:31:28', '932', '临汾', ' LinFen ', '1', '260', '260040', ' linfen ', '临汾', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:28', '2017-02-17 09:31:28', '933', '运城', ' YunCheng ', '1', '260', '260050', ' yuncheng ', '运城', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:28', '2017-02-17 09:31:28', '934', '长治', ' ZhangZhi ', '1', '260', '260060', ' changzhi ', '长治', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:29', '2017-02-17 09:31:29', '935', '阳泉', ' YangQuan ', '1', '260', '260070', ' yangquan ', '阳泉', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:29', '2017-02-17 09:31:29', '936', '晋城', ' JinCheng ', '1', '260', '260080', ' jincheng ', '晋城', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:29', '2017-02-17 09:31:29', '937', '朔州', ' ShuoZhou ', '1', '260', '260090', ' shuozhou ', '朔州', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:29', '2017-02-17 09:31:29', '938', '晋中', ' JinZhong ', '1', '260', '260100', ' jinzhong ', '晋中', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:29', '2017-02-17 09:31:29', '939', '忻州', ' XinZhou ', '1', '260', '260110', ' xinzhou ', '忻州', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:29', '2017-02-17 09:31:29', '940', '吕梁', ' LvLiang ', '1', '260', '260120', ' lvliang ', '吕梁', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:29', '2017-02-17 09:31:29', '941', '永济', ' YongJi ', '1', '260', '260130', ' yongji ', '永济', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:29', '2017-02-17 09:31:29', '942', '和顺', ' HeShun ', '1', '260', '260140', ' heshun ', '和顺', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:29', '2017-02-17 09:31:29', '943', '陕西省', ' ShanXiSheng ', '0', '', '270', ' shanxi ', '陕西省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:29', '2017-02-17 09:31:29', '944', '西安', ' XiAn ', '1', '270', '270020', ' xian ', '西安', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:29', '2017-02-17 09:31:29', '945', '莲湖区', ' LianHuQu ', '1', '270020', '270020010', ' lianhuqu ', '莲湖区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:29', '2017-02-17 09:31:29', '946', '新城区', ' XinChengQu ', '1', '270020', '270020020', ' xinchengqu ', '新城区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:29', '2017-02-17 09:31:29', '947', '碑林区', ' BeiLinQu ', '1', '270020', '270020030', ' beilinqu ', '碑林区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:29', '2017-02-17 09:31:29', '948', '雁塔区', ' YanTaQu ', '1', '270020', '270020040', ' yantaqu ', '雁塔区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:30', '2017-02-17 09:31:30', '949', '灞桥区', ' BaQiaoQu ', '1', '270020', '270020050', ' baqiaoqu ', '灞桥区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:30', '2017-02-17 09:31:30', '950', '未央区', ' WeiYangQu ', '1', '270020', '270020060', ' weiyangqu ', '未央区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:30', '2017-02-17 09:31:30', '951', '阎良区', ' YanLiangQu ', '1', '270020', '270020070', ' yanliangqu ', '阎良区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:30', '2017-02-17 09:31:30', '952', '临潼区', ' LinTongQu ', '1', '270020', '270020080', ' lintongqu ', '临潼区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:30', '2017-02-17 09:31:30', '953', '长安区', ' ZhangAnQu ', '1', '270020', '270020090', ' changanqu ', '长安区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:30', '2017-02-17 09:31:30', '954', '蓝田县', ' LanTianXian ', '1', '270020', '270020100', ' lantianxian ', '蓝田县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:30', '2017-02-17 09:31:30', '955', '周至县', ' ZhouZhiXian ', '1', '270020', '270020110', ' zhouzhixian ', '周至县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:30', '2017-02-17 09:31:30', '956', '户县', ' HuXian ', '1', '270020', '270020120', ' huxian ', '户县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:30', '2017-02-17 09:31:30', '957', '高陵县', ' GaoLingXian ', '1', '270020', '270020130', ' gaolingxian ', '高陵县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:30', '2017-02-17 09:31:30', '958', '经开区', ' JingKaiQu ', '1', '270020', '270020140', ' jingkaiqu ', '经开区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:30', '2017-02-17 09:31:30', '959', '高新区', ' GaoXinQu ', '1', '270020', '270020150', ' gaoxinqu ', '高新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:30', '2017-02-17 09:31:30', '960', '宝鸡', ' BaoJi ', '1', '270', '270030', ' baoji ', '宝鸡', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:31', '2017-02-17 09:31:31', '961', '咸阳', ' XianYang ', '1', '270', '270040', ' xianyang ', '咸阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:31', '2017-02-17 09:31:31', '962', '铜川', ' TongChuan ', '1', '270', '270050', ' tongchuan ', '铜川', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:31', '2017-02-17 09:31:31', '963', '渭南', ' WeiNan ', '1', '270', '270060', ' weinan ', '渭南', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:31', '2017-02-17 09:31:31', '964', '汉中', ' HanZhong ', '1', '270', '270070', ' hanzhong ', '汉中', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:31', '2017-02-17 09:31:31', '965', '安康', ' AnKang ', '1', '270', '270080', ' ankang ', '安康', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:31', '2017-02-17 09:31:31', '966', '商洛', ' ShangLuo ', '1', '270', '270090', ' shangluo ', '商洛', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:31', '2017-02-17 09:31:31', '967', '延安', ' YanAn ', '1', '270', '270100', ' yanan ', '延安', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:31', '2017-02-17 09:31:31', '968', '榆林', ' YuLin ', '1', '270', '270110', ' yulin0912 ', '榆林', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:31', '2017-02-17 09:31:31', '969', '杨凌', ' YangLing ', '1', '270', '270120', ' yangling ', '杨凌', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:31', '2017-02-17 09:31:31', '970', '兴平', ' XingPing ', '1', '270', '270130', ' xingping ', '兴平', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:31', '2017-02-17 09:31:31', '971', '四川省', ' SiChuanSheng ', '0', '', '280', ' sichuan ', '四川省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:31', '2017-02-17 09:31:31', '972', '成都', ' ChengDu ', '1', '280', '280020', ' chengdu ', '成都', '2');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:32', '2017-02-17 09:31:32', '973', '成华区', ' ChengHuaQu ', '1', '280020', '280020010', ' chenghua ', '成华区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:32', '2017-02-17 09:31:32', '974', '武侯区', ' WuHouQu ', '1', '280020', '280020020', ' wuhou ', '武侯区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:32', '2017-02-17 09:31:32', '975', '青羊区', ' QingYangQu ', '1', '280020', '280020030', ' qingyang ', '青羊区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:32', '2017-02-17 09:31:32', '976', '锦江区', ' JinJiangQu ', '1', '280020', '280020040', ' jinjiang ', '锦江区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:32', '2017-02-17 09:31:32', '977', '金牛区', ' JinNiuQu ', '1', '280020', '280020050', ' jinniu ', '金牛区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:32', '2017-02-17 09:31:32', '978', '龙泉驿', ' LongQuanYi ', '1', '280020', '280020060', ' longquanyi ', '龙泉驿', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:32', '2017-02-17 09:31:32', '979', '青白江', ' QingBaiJiang ', '1', '280020', '280020070', ' qingbaijiang ', '青白江', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:32', '2017-02-17 09:31:32', '980', '新都区', ' XinDouQu ', '1', '280020', '280020080', ' xindu ', '新都区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:32', '2017-02-17 09:31:32', '981', '双流县', ' ShuangLiuXian ', '1', '280020', '280020090', ' shuangliu ', '双流县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:32', '2017-02-17 09:31:32', '982', '郫县', ' PiXian ', '1', '280020', '280020100', ' pixian ', '郫县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:32', '2017-02-17 09:31:32', '983', '温江区', ' WenJiangQu ', '1', '280020', '280020110', ' wenjiang ', '温江区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:32', '2017-02-17 09:31:32', '984', '大邑县', ' DaYiXian ', '1', '280020', '280020120', ' dayi ', '大邑县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:32', '2017-02-17 09:31:32', '985', '金堂县', ' JinTangXian ', '1', '280020', '280020130', ' jintang ', '金堂县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:32', '2017-02-17 09:31:32', '986', '蒲江县', ' PuJiangXian ', '1', '280020', '280020140', ' pujiang ', '蒲江县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:33', '2017-02-17 09:31:33', '987', '新津县', ' XinJinXian ', '1', '280020', '280020150', ' xinjin ', '新津县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:33', '2017-02-17 09:31:33', '988', '温江区', ' WenJiangQu ', '1', '280020', '280020160', ' wenjiangqu ', '温江区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:33', '2017-02-17 09:31:33', '989', '高新区', ' GaoXinQu ', '1', '280020', '280020170', ' gaoxinqu ', '高新区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:33', '2017-02-17 09:31:33', '990', '高新西', ' GaoXinXi ', '1', '280020', '280020180', ' gaoxinxi ', '高新西', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:33', '2017-02-17 09:31:33', '991', '都江堰', ' DuJiangYan ', '1', '280020', '280020190', ' doujiangyan ', '都江堰', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:33', '2017-02-17 09:31:33', '992', '彭州市', ' PengZhouShi ', '1', '280020', '280020200', ' pengzhoushi ', '彭州市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:33', '2017-02-17 09:31:33', '993', '邛崃市', ' QiongLaiShi ', '1', '280020', '280020210', ' qionglaishi ', '邛崃市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:33', '2017-02-17 09:31:33', '994', '崇州市', ' ChongZhouShi ', '1', '280020', '280020220', ' chongzhoushi ', '崇州市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:33', '2017-02-17 09:31:33', '995', '乐山', ' LeShan ', '1', '280', '280030', ' leshan ', '乐山', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:33', '2017-02-17 09:31:33', '996', '泸州', ' LuZhou ', '1', '280', '280040', ' luzhou ', '泸州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:33', '2017-02-17 09:31:33', '997', '绵阳', ' MianYang ', '1', '280', '280050', ' mianyang ', '绵阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:33', '2017-02-17 09:31:33', '998', '内江', ' NeiJiang ', '1', '280', '280060', ' neijiang ', '内江', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:33', '2017-02-17 09:31:33', '999', '宜宾', ' YiBin ', '1', '280', '280070', ' yibin ', '宜宾', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:33', '2017-02-17 09:31:33', '1000', '自贡', ' ZiGong ', '1', '280', '280080', ' zigong ', '自贡', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:34', '2017-02-17 09:31:34', '1001', '攀枝花', ' PanZhiHua ', '1', '280', '280090', ' panzhihua ', '攀枝花', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:34', '2017-02-17 09:31:34', '1002', '德阳', ' DeYang ', '1', '280', '280100', ' deyang ', '德阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:34', '2017-02-17 09:31:34', '1003', '广元', ' GuangYuan ', '1', '280', '280110', ' guangyuan ', '广元', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:34', '2017-02-17 09:31:34', '1004', '遂宁', ' SuiNing ', '1', '280', '280120', ' suining ', '遂宁', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:34', '2017-02-17 09:31:34', '1005', '南充', ' NanChong ', '1', '280', '280130', ' nanchong ', '南充', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:34', '2017-02-17 09:31:34', '1006', '眉山', ' MeiShan ', '1', '280', '280140', ' meishan ', '眉山', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:34', '2017-02-17 09:31:34', '1007', '广安', ' GuangAn ', '1', '280', '280150', ' guangan ', '广安', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:34', '2017-02-17 09:31:34', '1008', '达州', ' DaZhou ', '1', '280', '280160', ' dazhou ', '达州', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:34', '2017-02-17 09:31:34', '1009', '雅安', ' YaAn ', '1', '280', '280170', ' yaan ', '雅安', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:34', '2017-02-17 09:31:34', '1010', '巴中', ' BaZhong ', '1', '280', '280180', ' bazhong ', '巴中', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:34', '2017-02-17 09:31:34', '1011', '资阳', ' ZiYang ', '1', '280', '280190', ' ziyang ', '资阳', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:34', '2017-02-17 09:31:34', '1012', '西昌', ' XiChang ', '1', '280', '280200', ' xichang ', '西昌', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:34', '2017-02-17 09:31:34', '1013', '甘孜', ' GanZi ', '1', '280', '280210', ' ganzi ', '甘孜', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:35', '2017-02-17 09:31:35', '1014', '阿坝', ' ABa ', '1', '280', '280220', ' abei ', '阿坝', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:35', '2017-02-17 09:31:35', '1015', '凉山', ' LiangShan ', '1', '280', '280230', ' liangshan ', '凉山', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:35', '2017-02-17 09:31:35', '1016', '峨眉', ' EMei ', '1', '280', '280240', ' emei ', '峨眉', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:35', '2017-02-17 09:31:35', '1017', '简阳', ' JianYang ', '1', '280', '280250', ' jianyang ', '简阳', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:35', '2017-02-17 09:31:35', '1018', '西藏', ' XiZang ', '0', '', '290', ' xizang ', '西藏', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:35', '2017-02-17 09:31:35', '1019', '拉萨', ' LaSa ', '1', '290', '290020', ' lasa ', '拉萨', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:35', '2017-02-17 09:31:35', '1020', '城关区', ' ChengGuanQu ', '1', '290020', '290020010', ' chengguanqu ', '城关区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:35', '2017-02-17 09:31:35', '1021', '林周县', ' LinZhouXian ', '1', '290020', '290020020', ' linzhouxian ', '林周县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:35', '2017-02-17 09:31:35', '1022', '当雄县', ' DangXiongXian ', '1', '290020', '290020030', ' dangxiongxian ', '当雄县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:35', '2017-02-17 09:31:35', '1023', '尼木县', ' NiMuXian ', '1', '290020', '290020040', ' nimuxian ', '尼木县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:35', '2017-02-17 09:31:35', '1024', '曲水县', ' QuShuiXian ', '1', '290020', '290020050', ' qushuixian ', '曲水县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:35', '2017-02-17 09:31:35', '1025', '龙德庆', ' LongDeQing ', '1', '290020', '290020060', ' duilongdeqing ', '龙德庆', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:35', '2017-02-17 09:31:35', '1026', '达孜县', ' DaZiXian ', '1', '290020', '290020070', ' dazixian ', '达孜县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:35', '2017-02-17 09:31:35', '1027', '工卡县', ' GongKaXian ', '1', '290020', '290020080', ' gongkaxian ', '工卡县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:36', '2017-02-17 09:31:36', '1028', '日喀则', ' RiKaZe ', '1', '290', '290030', ' rikaze ', '日喀则', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:36', '2017-02-17 09:31:36', '1029', '林芝', ' LinZhi ', '1', '290', '290040', ' linzhi ', '林芝', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:36', '2017-02-17 09:31:36', '1030', '山南', ' ShanNan ', '1', '290', '290050', ' shannan ', '山南', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:36', '2017-02-17 09:31:36', '1031', '昌都', ' ChangDou ', '1', '290', '290060', ' changdu ', '昌都', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:36', '2017-02-17 09:31:36', '1032', '那曲', ' NaQu ', '1', '290', '290070', ' naqu ', '那曲', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:36', '2017-02-17 09:31:36', '1033', '阿里', ' ALi ', '1', '290', '290080', ' ali ', '阿里', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:36', '2017-02-17 09:31:36', '1034', '新疆', ' XinJiang ', '0', '', '300', ' xinjiang ', '新疆', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:36', '2017-02-17 09:31:36', '1035', '乌鲁木齐', ' WuLuMuQi ', '1', '300', '300020', ' wulumuqi ', '乌鲁木齐', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:36', '2017-02-17 09:31:36', '1036', '天山区', ' TianShanQu ', '1', '300020', '300020010', ' tianshanqu ', '天山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:36', '2017-02-17 09:31:36', '1037', '巴克区', ' BaKeQu ', '1', '300020', '300020020', ' bakequ ', '巴克区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:36', '2017-02-17 09:31:36', '1038', '新市区', ' XinShiQu ', '1', '300020', '300020030', ' xinshiqu ', '新市区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:37', '2017-02-17 09:31:37', '1039', '水磨沟', ' ShuiMoGou ', '1', '300020', '300020040', ' shuimogou ', '水磨沟', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:37', '2017-02-17 09:31:37', '1040', '头屯河', ' TouTunHe ', '1', '300020', '300020050', ' toutunhe ', '头屯河', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:37', '2017-02-17 09:31:37', '1041', '达坂城', ' DaBanCheng ', '1', '300020', '300020060', ' dabancheng ', '达坂城', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:37', '2017-02-17 09:31:37', '1042', '米东区', ' MiDongQu ', '1', '300020', '300020070', ' midongqu ', '米东区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:37', '2017-02-17 09:31:37', '1043', '乌鲁木齐', ' WuLuMuQi ', '1', '300020', '300020080', ' wulumuqi ', '乌鲁木齐', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:37', '2017-02-17 09:31:37', '1044', '昌吉市', ' ChangJiShi ', '1', '300020', '300020090', ' changjishi ', '昌吉市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:37', '2017-02-17 09:31:37', '1045', '五家渠', ' WuJiaQu ', '1', '300020', '300020100', ' wujiaqu ', '五家渠', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:37', '2017-02-17 09:31:37', '1046', '阜康市', ' FuKangShi ', '1', '300020', '300020110', ' fukangshi ', '阜康市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:37', '2017-02-17 09:31:37', '1047', '喀什', ' KaShen ', '1', '300', '300030', ' kashi ', '喀什', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:37', '2017-02-17 09:31:37', '1048', '克拉玛依', ' KeLaMaYi ', '1', '300', '300040', ' kelamayi ', '克拉玛依', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:37', '2017-02-17 09:31:37', '1049', '伊犁', ' YiLi ', '1', '300', '300050', ' yili ', '伊犁', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:37', '2017-02-17 09:31:37', '1050', '阿克苏', ' AKeSu ', '1', '300', '300060', ' akesu ', '阿克苏', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:37', '2017-02-17 09:31:37', '1051', '哈密', ' HaMi ', '1', '300', '300070', ' hami ', '哈密', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:37', '2017-02-17 09:31:37', '1052', '石河子', ' ShiHeZi ', '1', '300', '300080', ' shihezi ', '石河子', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:38', '2017-02-17 09:31:38', '1053', '阿拉尔', ' ALaEr ', '1', '300', '300090', ' alaer ', '阿拉尔', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:38', '2017-02-17 09:31:38', '1054', '五家渠', ' WuJiaQu ', '1', '300', '300100', ' wujiaqu ', '五家渠', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:38', '2017-02-17 09:31:38', '1055', '图木舒克', ' TuMuShuKe ', '1', '300', '300110', ' tumushuke ', '图木舒克', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:38', '2017-02-17 09:31:38', '1056', '昌吉', ' ChangJi ', '1', '300', '300120', ' changji ', '昌吉', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:38', '2017-02-17 09:31:38', '1057', '阿勒泰', ' ALeiTai ', '1', '300', '300130', ' aletai ', '阿勒泰', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:38', '2017-02-17 09:31:38', '1058', '吐鲁番', ' TuLuFan ', '1', '300', '300140', ' tulufan ', '吐鲁番', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:38', '2017-02-17 09:31:38', '1059', '塔城', ' TaCheng ', '1', '300', '300150', ' tacheng ', '塔城', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:38', '2017-02-17 09:31:38', '1060', '和田', ' HeTian ', '1', '300', '300160', ' hetian ', '和田', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:38', '2017-02-17 09:31:38', '1061', '克州', ' KeZhou ', '1', '300', '300170', ' kezhou ', '克州', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:38', '2017-02-17 09:31:38', '1062', '巴音郭楞', ' BaYinGuoLeng ', '1', '300', '300180', ' bayinguoleng ', '巴音郭楞', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:38', '2017-02-17 09:31:38', '1063', '博尔塔拉', ' BoErTaLa ', '1', '300', '300190', ' boertala ', '博尔塔拉', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:38', '2017-02-17 09:31:38', '1064', '奎屯市', ' KuiTunShi ', '1', '300', '300200', ' kuitunshi ', '奎屯市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:38', '2017-02-17 09:31:38', '1065', '乌苏', ' WuSu ', '1', '300', '300210', ' wusu ', '乌苏', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:38', '2017-02-17 09:31:38', '1066', '云南省', ' YunNanSheng ', '0', '', '310', ' yunnan ', '云南省', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:39', '2017-02-17 09:31:39', '1067', '昆明', ' KunMing ', '1', '310', '310020', ' kunming ', '昆明', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:39', '2017-02-17 09:31:39', '1068', '盘龙区', ' PanLongQu ', '1', '310020', '310020010', ' panlongqu ', '盘龙区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:39', '2017-02-17 09:31:39', '1069', '五华区', ' WuHuaQu ', '1', '310020', '310020020', ' wuhuaqu ', '五华区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:39', '2017-02-17 09:31:39', '1070', '官渡区', ' GuanDuQu ', '1', '310020', '310020030', ' guanduqu ', '官渡区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:39', '2017-02-17 09:31:39', '1071', '西山区', ' XiShanQu ', '1', '310020', '310020040', ' xishanqu ', '西山区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:39', '2017-02-17 09:31:39', '1072', '东川区', ' DongChuanQu ', '1', '310020', '310020050', ' dongchuanqu ', '东川区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:39', '2017-02-17 09:31:39', '1073', '安宁市', ' AnNingShi ', '1', '310020', '310020060', ' anningshi ', '安宁市', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:39', '2017-02-17 09:31:39', '1074', '呈贡县', ' ChengGongXian ', '1', '310020', '310020070', ' chenggongxian ', '呈贡县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:39', '2017-02-17 09:31:39', '1075', '晋宁县', ' JinNingXian ', '1', '310020', '310020080', ' jinningxian ', '晋宁县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:39', '2017-02-17 09:31:39', '1076', '富民区', ' FuMinQu ', '1', '310020', '310020090', ' fuminqu ', '富民区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:39', '2017-02-17 09:31:39', '1077', '宜良区', ' YiLiangQu ', '1', '310020', '310020100', ' yiliangqu ', '宜良区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:39', '2017-02-17 09:31:39', '1078', '嵩明区', ' SongMingQu ', '1', '310020', '310020110', ' songmingqu ', '嵩明区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:40', '2017-02-17 09:31:40', '1079', '石林县', ' ShiLinXian ', '1', '310020', '310020120', ' shilinxian ', '石林县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:40', '2017-02-17 09:31:40', '1080', '禄劝', ' LuQuan ', '1', '310020', '310020130', ' luquan ', '禄劝', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:40', '2017-02-17 09:31:40', '1081', '寻甸', ' XunDian ', '1', '310020', '310020140', ' xundian ', '寻甸', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:40', '2017-02-17 09:31:40', '1082', '大理', ' DaLi ', '1', '310', '310030', ' dali ', '大理', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:40', '2017-02-17 09:31:40', '1083', '丽江', ' LiJiang ', '1', '310', '310040', ' lijiang ', '丽江', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:40', '2017-02-17 09:31:40', '1084', '玉溪', ' YuXi ', '1', '310', '310050', ' yuxi ', '玉溪', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:40', '2017-02-17 09:31:40', '1085', '曲靖', ' QuJing ', '1', '310', '310060', ' qujing ', '曲靖', '4');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:40', '2017-02-17 09:31:40', '1086', '保山', ' BaoShan ', '1', '310', '310070', ' baoshan ', '保山', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:40', '2017-02-17 09:31:40', '1087', '昭通', ' ZhaoTong ', '1', '310', '310080', ' zhaotong ', '昭通', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:40', '2017-02-17 09:31:40', '1088', '普洱', ' PuEr ', '1', '310', '310090', ' puer ', '普洱', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:40', '2017-02-17 09:31:40', '1089', '临沧', ' LinCang ', '1', '310', '310100', ' lincang ', '临沧', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:40', '2017-02-17 09:31:40', '1090', '红河', ' HongHe ', '1', '310', '310110', ' honghe ', '红河', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:40', '2017-02-17 09:31:40', '1091', '文山', ' WenShan ', '1', '310', '310120', ' wenshan ', '文山', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:41', '2017-02-17 09:31:41', '1092', '西双版纳', ' XiShuangBanNa ', '1', '310', '310130', ' xishuangbanna ', '西双版纳', '5');
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:41', '2017-02-17 09:31:41', '1093', '德宏', ' DeHong ', '1', '310', '310140', ' dehong ', '德宏', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:41', '2017-02-17 09:31:41', '1094', '楚雄', ' ChuXiong ', '1', '310', '310150', ' chuxiong ', '楚雄', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:41', '2017-02-17 09:31:41', '1095', '怒江', ' NuJiang ', '1', '310', '310160', ' nujiang ', '怒江', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:41', '2017-02-17 09:31:41', '1096', '迪庆', ' DiQing ', '1', '310', '310170', ' diqing ', '迪庆', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:41', '2017-02-17 09:31:41', '1097', '思茅', ' SiMao ', '1', '310', '310180', ' simao ', '思茅', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:41', '2017-02-17 09:31:41', '1098', '香港', ' XiangGang ', '0', '', '320', ' hongkong ', '香港', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:41', '2017-02-17 09:31:41', '1099', '沙田区', ' ShaTianQu ', '1', '320', '320010010', ' shatianqu ', '沙田区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:41', '2017-02-17 09:31:41', '1100', '东区', ' DongQu ', '1', '320', '320010020', ' dongqu ', '东区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:41', '2017-02-17 09:31:41', '1101', '观塘区', ' GuanTangQu ', '1', '320', '320010030', ' guantangqu ', '观塘区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:41', '2017-02-17 09:31:41', '1102', '黄大仙', ' HuangDaXian ', '1', '320', '320010040', ' huangdaxian ', '黄大仙', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:41', '2017-02-17 09:31:41', '1103', '九龙城', ' JiuLongCheng ', '1', '320', '320010050', ' jiulongcheng ', '九龙城', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:41', '2017-02-17 09:31:41', '1104', '屯门区', ' TunMenQu ', '1', '320', '320010060', ' tunmenqu ', '屯门区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:41', '2017-02-17 09:31:41', '1105', '葵青区', ' KuiQingQu ', '1', '320', '320010070', ' kuiqingqu ', '葵青区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:42', '2017-02-17 09:31:42', '1106', '元朗区', ' YuanLangQu ', '1', '320', '320010080', ' yuanlangqu ', '元朗区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:42', '2017-02-17 09:31:42', '1107', '深水埗', ' ShenShuiBu ', '1', '320', '320010090', ' shenshuibu ', '深水埗', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:42', '2017-02-17 09:31:42', '1108', '西贡区', ' XiGongQu ', '1', '320', '320010100', ' xigongqu ', '西贡区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:42', '2017-02-17 09:31:42', '1109', '大埔区', ' DaBuQu ', '1', '320', '320010110', ' dapuqu ', '大埔区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:42', '2017-02-17 09:31:42', '1110', '湾仔区', ' WanZaiQu ', '1', '320', '320010120', ' wanziqu ', '湾仔区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:42', '2017-02-17 09:31:42', '1111', '油尖旺', ' YouJianWang ', '1', '320', '320010130', ' youjianwang ', '油尖旺', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:42', '2017-02-17 09:31:42', '1112', '北区', ' BeiQu ', '1', '320', '320010140', ' beiqu ', '北区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:42', '2017-02-17 09:31:42', '1113', '南区', ' NanQu ', '1', '320', '320010150', ' nanqu ', '南区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:42', '2017-02-17 09:31:42', '1114', '荃湾区', ' QuanWanQu ', '1', '320', '320010160', ' quanwanqu ', '荃湾区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:42', '2017-02-17 09:31:42', '1115', '中西区', ' ZhongXiQu ', '1', '320', '320010170', ' zhongxiqu ', '中西区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:42', '2017-02-17 09:31:42', '1116', '离岛区', ' LiDaoQu ', '1', '320', '320010180', ' lidaoqu ', '离岛区', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:42', '2017-02-17 09:31:42', '1117', '澳门', ' AoMen ', '0', '', '330', ' macao ', '澳门', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:42', '2017-02-17 09:31:42', '1118', '台湾', ' TaiWan ', '0', '', '340', ' taiwan ', '台湾', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:43', '2017-02-17 09:31:43', '1119', '台北', ' TaiBei ', '1', '340', '340010010', ' taibei ', '台北', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:43', '2017-02-17 09:31:43', '1120', '高雄', ' GaoXiong ', '1', '340', '340010020', ' gaoxiong ', '高雄', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:43', '2017-02-17 09:31:43', '1121', '基隆', ' JiLong ', '1', '340', '340010030', ' jilong ', '基隆', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:43', '2017-02-17 09:31:43', '1122', '台中', ' TaiZhong ', '1', '340', '340010040', ' taizhong ', '台中', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:43', '2017-02-17 09:31:43', '1123', '台南', ' TaiNan ', '1', '340', '340010050', ' tainan ', '台南', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:43', '2017-02-17 09:31:43', '1124', '新竹', ' XinZhu ', '1', '340', '340010060', ' xinzhu ', '新竹', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:43', '2017-02-17 09:31:43', '1125', '嘉义', ' JiaYi ', '1', '340', '340010070', ' jiayi ', '嘉义', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:43', '2017-02-17 09:31:43', '1126', '宜兰县', ' YiLanXian ', '1', '340', '340010080', ' yilanxian ', '宜兰县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:43', '2017-02-17 09:31:43', '1127', '桃园县', ' TaoYuanXian ', '1', '340', '340010090', ' taoyuanxian ', '桃园县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:43', '2017-02-17 09:31:43', '1128', '苗栗县', ' MiaoLiXian ', '1', '340', '340010100', ' miaolixian ', '苗栗县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:43', '2017-02-17 09:31:43', '1129', '彰化县', ' ZhangHuaXian ', '1', '340', '340010110', ' zhanghuaxian ', '彰化县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:43', '2017-02-17 09:31:43', '1130', '南投县', ' NanTouXian ', '1', '340', '340010120', ' nantouxian ', '南投县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:43', '2017-02-17 09:31:43', '1131', '云林县', ' YunLinXian ', '1', '340', '340010130', ' yunlinxian ', '云林县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:44', '2017-02-17 09:31:44', '1132', '屏东县', ' PingDongXian ', '1', '340', '340010140', ' pingdongxian ', '屏东县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:44', '2017-02-17 09:31:44', '1133', '台东县', ' TaiDongXian ', '1', '340', '340010150', ' taidongxian ', '台东县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:44', '2017-02-17 09:31:44', '1134', '花莲县', ' HuaLianXian ', '1', '340', '340010160', ' hualianxian ', '花莲县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:44', '2017-02-17 09:31:44', '1135', '澎湖县', ' PengHuXian ', '1', '340', '340010170', ' penghuxian ', '澎湖县', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:44', '2017-02-17 09:31:44', '1136', '亚洲', ' Asia ', '0', '', '350', ' asia ', '亚洲', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:44', '2017-02-17 09:31:44', '1137', '蒙古', ' Mongolia ', '1', '350', '350020', ' mongolia ', '蒙古', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:44', '2017-02-17 09:31:44', '1138', '朝鲜', ' North Korea ', '1', '350', '350030', ' north korea ', '朝鲜', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:44', '2017-02-17 09:31:44', '1139', '韩国', ' Korea ', '1', '350', '350040', ' korea ', '韩国', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:44', '2017-02-17 09:31:44', '1140', '日本', ' Japan ', '1', '350', '350050', ' japan ', '日本', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:44', '2017-02-17 09:31:44', '1141', '菲律宾', ' Philippines ', '1', '350', '350060', ' philippines ', '菲律宾', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:44', '2017-02-17 09:31:44', '1142', '越南', ' Vietnam ', '1', '350', '350070', ' vietnam ', '越南', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:44', '2017-02-17 09:31:44', '1143', '老挝', ' Laos ', '1', '350', '350080', ' laos ', '老挝', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:45', '2017-02-17 09:31:45', '1144', '柬埔寨', ' Cambodia ', '1', '350', '350090', ' cambodia ', '柬埔寨', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:45', '2017-02-17 09:31:45', '1145', '缅甸', ' Burma ', '1', '350', '350100', ' burma ', '缅甸', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:45', '2017-02-17 09:31:45', '1146', '泰国', ' Thailand ', '1', '350', '350110', ' thailand ', '泰国', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:45', '2017-02-17 09:31:45', '1147', '马来西亚', ' Malaysia ', '1', '350', '350120', ' malaysia ', '马来西亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:45', '2017-02-17 09:31:45', '1148', '文莱', ' Brunei ', '1', '350', '350130', ' brunei ', '文莱', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:45', '2017-02-17 09:31:45', '1149', '新加坡', ' Singapore ', '1', '350', '350140', ' singapore ', '新加坡', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:45', '2017-02-17 09:31:45', '1150', '印度尼西亚', ' Indonesia ', '1', '350', '350150', ' indonesia ', '印度尼西亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:45', '2017-02-17 09:31:45', '1151', '东帝汶', ' east Timor ', '1', '350', '350160', ' east timor ', '东帝汶', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:45', '2017-02-17 09:31:45', '1152', '尼泊尔', ' Nepal ', '1', '350', '350170', ' nepal ', '尼泊尔', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:45', '2017-02-17 09:31:45', '1153', '不丹', ' Bhutan ', '1', '350', '350180', ' bhutan ', '不丹', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:45', '2017-02-17 09:31:45', '1154', '孟加拉', ' Bangladesh ', '1', '350', '350190', ' bangladesh ', '孟加拉', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:45', '2017-02-17 09:31:45', '1155', '印度', ' India ', '1', '350', '350200', ' india ', '印度', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:45', '2017-02-17 09:31:45', '1156', '巴基斯坦', ' Pakistan ', '1', '350', '350210', ' pakistan ', '巴基斯坦', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:46', '2017-02-17 09:31:46', '1157', '斯里兰卡', ' Sri Lanka ', '1', '350', '350220', ' sri lanka ', '斯里兰卡', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:46', '2017-02-17 09:31:46', '1158', '马尔代夫', ' Maldives ', '1', '350', '350230', ' maldives ', '马尔代夫', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:46', '2017-02-17 09:31:46', '1159', '哈萨克斯坦', ' Kazakhstan ', '1', '350', '350240', ' kazakhstan ', '哈萨克斯坦', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:46', '2017-02-17 09:31:46', '1160', '吉尔吉斯', ' Kyrghyzstan ', '1', '350', '350250', ' kyrghyzstan ', '吉尔吉斯', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:46', '2017-02-17 09:31:46', '1161', '塔吉克斯坦', ' Tajikistan ', '1', '350', '350260', ' tajikistan ', '塔吉克斯坦', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:46', '2017-02-17 09:31:46', '1162', '乌兹别克', ' Uzbekistan ', '1', '350', '350270', ' uzbekistan ', '乌兹别克', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:46', '2017-02-17 09:31:46', '1163', '土库曼斯坦', ' Turkmenistan ', '1', '350', '350280', ' turkmenistan ', '土库曼斯坦', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:46', '2017-02-17 09:31:46', '1164', '阿富汗', ' Afghanistan ', '1', '350', '350290', ' afghanistan ', '阿富汗', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:46', '2017-02-17 09:31:46', '1165', '伊拉克', ' Iraq ', '1', '350', '350300', ' iraq ', '伊拉克', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:46', '2017-02-17 09:31:46', '1166', '伊朗', ' Iran ', '1', '350', '350310', ' iran ', '伊朗', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:46', '2017-02-17 09:31:46', '1167', '叙利亚', ' Syria ', '1', '350', '350320', ' syria ', '叙利亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:46', '2017-02-17 09:31:46', '1168', '约旦', ' Jordan ', '1', '350', '350330', ' jordan ', '约旦', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:46', '2017-02-17 09:31:46', '1169', '黎巴嫩', ' Lebanon ', '1', '350', '350340', ' lebanon ', '黎巴嫩', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:47', '2017-02-17 09:31:47', '1170', '以色列', ' Israel ', '1', '350', '350350', ' israel ', '以色列', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:47', '2017-02-17 09:31:47', '1171', '巴勒斯坦', ' Palestine ', '1', '350', '350360', ' palestine ', '巴勒斯坦', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:47', '2017-02-17 09:31:47', '1172', '沙特阿拉伯', ' Saudi Arabia ', '1', '350', '350370', ' saudi arabia ', '沙特阿拉伯', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:47', '2017-02-17 09:31:47', '1173', '巴林', ' Bahrain ', '1', '350', '350380', ' bahrain ', '巴林', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:47', '2017-02-17 09:31:47', '1174', '卡塔尔', ' Qatar ', '1', '350', '350390', ' qatar ', '卡塔尔', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:47', '2017-02-17 09:31:47', '1175', '科威特', ' Kuwait ', '1', '350', '350400', ' kuwait ', '科威特', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:47', '2017-02-17 09:31:47', '1176', '阿联酋', ' United Arab Emirates ', '1', '350', '350410', ' united arab emirates ', '阿联酋', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:47', '2017-02-17 09:31:47', '1177', '阿曼', ' Oman ', '1', '350', '350420', ' oman ', '阿曼', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:47', '2017-02-17 09:31:47', '1178', '也门', ' Yemen ', '1', '350', '350430', ' yemen ', '也门', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:47', '2017-02-17 09:31:47', '1179', '格鲁吉亚', ' Georgia ', '1', '350', '350440', ' georgia ', '格鲁吉亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:47', '2017-02-17 09:31:47', '1180', '亚美尼亚', ' Armenia ', '1', '350', '350450', ' armenia ', '亚美尼亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:47', '2017-02-17 09:31:47', '1181', '阿塞拜疆', ' Azerbaijan ', '1', '350', '350460', ' azerbaijan ', '阿塞拜疆', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:47', '2017-02-17 09:31:47', '1182', '土耳其', ' Turkey ', '1', '350', '350470', ' turkey ', '土耳其', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:48', '2017-02-17 09:31:48', '1183', '塞浦路斯', ' Cyprus ', '1', '350', '350480', ' cyprus ', '塞浦路斯', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:48', '2017-02-17 09:31:48', '1184', '北美洲', ' North America ', '0', '', '360', ' northamerica ', '北美洲', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:48', '2017-02-17 09:31:48', '1185', '加拿大', ' Canada ', '1', '360', '360020', ' canada ', '加拿大', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:48', '2017-02-17 09:31:48', '1186', '美国', ' America ', '1', '360', '360030', ' america ', '美国', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:48', '2017-02-17 09:31:48', '1187', '墨西哥', ' Mexico ', '1', '360', '360040', ' mexico ', '墨西哥', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:48', '2017-02-17 09:31:48', '1188', '格陵兰', ' Greenland ', '1', '360', '360050', ' greenland ', '格陵兰', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:48', '2017-02-17 09:31:48', '1189', '危地马拉', ' Guatemala ', '1', '360', '360060', ' guatemala ', '危地马拉', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:48', '2017-02-17 09:31:48', '1190', '伯利兹', ' Belize ', '1', '360', '360070', ' belize ', '伯利兹', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:48', '2017-02-17 09:31:48', '1191', '萨尔瓦多', ' Salvador ', '1', '360', '360080', ' salvador ', '萨尔瓦多', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:48', '2017-02-17 09:31:48', '1192', '洪都拉斯', ' Honduras ', '1', '360', '360090', ' honduras ', '洪都拉斯', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:48', '2017-02-17 09:31:48', '1193', '尼加拉瓜', ' Nicaragua ', '1', '360', '360100', ' nicaragua ', '尼加拉瓜', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:48', '2017-02-17 09:31:48', '1194', '哥斯达黎加', ' Costa Rica ', '1', '360', '360110', ' costa rica ', '哥斯达黎加', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:48', '2017-02-17 09:31:48', '1195', '巴拿马', ' Panama ', '1', '360', '360120', ' panama ', '巴拿马', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:49', '2017-02-17 09:31:49', '1196', '巴哈马', ' Bahamas ', '1', '360', '360130', ' bahamas ', '巴哈马', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:49', '2017-02-17 09:31:49', '1197', '古巴', ' Cuba ', '1', '360', '360140', ' cuba ', '古巴', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:49', '2017-02-17 09:31:49', '1198', '牙买加', ' Jamaica ', '1', '360', '360150', ' jamaica ', '牙买加', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:49', '2017-02-17 09:31:49', '1199', '海地', ' Haiti ', '1', '360', '360160', ' haiti ', '海地', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:49', '2017-02-17 09:31:49', '1200', '多米尼加', ' Dominican Republic ', '1', '360', '360170', ' dominican republic ', '多米尼加', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:49', '2017-02-17 09:31:49', '1201', '安提瓜', ' Antigua and Barbuda ', '1', '360', '360180', ' antigua and barbuda ', '安提瓜', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:49', '2017-02-17 09:31:49', '1202', '圣基茨', ' St. Kitts and Nevis ', '1', '360', '360190', ' st. kitts and nevis ', '圣基茨', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:49', '2017-02-17 09:31:49', '1203', '多米尼克', ' Dominica ', '1', '360', '360200', ' dominica ', '多米尼克', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:49', '2017-02-17 09:31:49', '1204', '圣卢西亚', ' Saint Lucia ', '1', '360', '360210', ' saint lucia ', '圣卢西亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:49', '2017-02-17 09:31:49', '1205', '圣文森特', ' Saint Vincent and the Grenadines ', '1', '360', '360220', ' saint vincent and the grenadines ', '圣文森特', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:49', '2017-02-17 09:31:49', '1206', '格林纳达', ' Grenada ', '1', '360', '360230', ' grenada ', '格林纳达', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:50', '2017-02-17 09:31:50', '1207', '巴巴多斯', ' Barbados ', '1', '360', '360240', ' barbados ', '巴巴多斯', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:50', '2017-02-17 09:31:50', '1208', '特立尼达', ' Trinidad and Tobago ', '1', '360', '360250', ' trinidad and tobago ', '特立尼达', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:50', '2017-02-17 09:31:50', '1209', '波多黎各', ' Puerto Rico ', '1', '360', '360260', ' puerto rico ', '波多黎各', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:50', '2017-02-17 09:31:50', '1210', '英属维尔京群岛', ' British Virgin Islands ', '1', '360', '360270', ' british virgin islands ', '英属维尔京群岛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:50', '2017-02-17 09:31:50', '1211', '美属维尔京群岛', ' Virgin Islands ', '1', '360', '360280', ' virgin islands ', '美属维尔京群岛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:50', '2017-02-17 09:31:50', '1212', '安圭拉', ' Anguilla ', '1', '360', '360290', ' anguilla ', '安圭拉', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:50', '2017-02-17 09:31:50', '1213', '蒙特塞拉特', ' Montserrat ', '1', '360', '360300', ' montserrat ', '蒙特塞拉特', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:50', '2017-02-17 09:31:50', '1214', '瓜德罗普', ' Guadeloupe ', '1', '360', '360310', ' guadeloupe ', '瓜德罗普', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:50', '2017-02-17 09:31:50', '1215', '马提尼克', ' martinique ', '1', '360', '360320', ' martinique ', '马提尼克', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:50', '2017-02-17 09:31:50', '1216', '安的列斯', ' Nederlandse Antillen ', '1', '360', '360330', ' nederlandse antillen ', '安的列斯', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:50', '2017-02-17 09:31:50', '1217', '阿鲁巴', ' Aruba ', '1', '360', '360340', ' aruba ', '阿鲁巴', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:50', '2017-02-17 09:31:50', '1218', '特克斯', ' The turks and caicos islands ', '1', '360', '360350', ' the turks and caicos islands ', '特克斯', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:50', '2017-02-17 09:31:50', '1219', '开曼群岛', ' Cayman Islands ', '1', '360', '360360', ' cayman islands ', '开曼群岛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:51', '2017-02-17 09:31:51', '1220', '百慕大', ' Bermuda ', '1', '360', '360370', ' bermuda ', '百慕大', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:51', '2017-02-17 09:31:51', '1221', '南美洲', ' South America ', '0', '', '370', ' southamerica ', '南美洲', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:51', '2017-02-17 09:31:51', '1222', '哥伦比亚', ' Columbia ', '1', '370', '370020', ' columbia ', '哥伦比亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:51', '2017-02-17 09:31:51', '1223', '委内瑞拉', ' Venezuela ', '1', '370', '370030', ' venezuela ', '委内瑞拉', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:51', '2017-02-17 09:31:51', '1224', '圭亚那', ' Guyana ', '1', '370', '370040', ' guyana ', '圭亚那', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:51', '2017-02-17 09:31:51', '1225', '法属圭亚那', ' French Guiana ', '1', '370', '370050', ' french guiana ', '法属圭亚那', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:51', '2017-02-17 09:31:51', '1226', '苏里南', ' Surinam ', '1', '370', '370060', ' surinam ', '苏里南', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:51', '2017-02-17 09:31:51', '1227', '厄瓜多尔', ' Ecuador ', '1', '370', '370070', ' ecuador ', '厄瓜多尔', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:51', '2017-02-17 09:31:51', '1228', '秘鲁', ' Peru ', '1', '370', '370080', ' peru ', '秘鲁', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:51', '2017-02-17 09:31:51', '1229', '玻利维亚', ' Bolivia ', '1', '370', '370090', ' bolivia ', '玻利维亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:51', '2017-02-17 09:31:51', '1230', '巴西', ' Brazil ', '1', '370', '370100', ' brazil ', '巴西', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:51', '2017-02-17 09:31:51', '1231', '智利', ' Chile ', '1', '370', '370110', ' chile ', '智利', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:51', '2017-02-17 09:31:51', '1232', '阿根廷', ' Argentina ', '1', '370', '370120', ' argentina ', '阿根廷', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:52', '2017-02-17 09:31:52', '1233', '乌拉圭', ' Uruguay ', '1', '370', '370130', ' uruguay ', '乌拉圭', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:52', '2017-02-17 09:31:52', '1234', '巴拉圭', ' Paraguay ', '1', '370', '370140', ' paraguay ', '巴拉圭', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:52', '2017-02-17 09:31:52', '1235', '大洋洲', ' Oceania ', '0', '', '380', ' oceania ', '大洋洲', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:52', '2017-02-17 09:31:52', '1236', '澳大利亚', ' Australia ', '1', '380', '380020', ' australia ', '澳大利亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:52', '2017-02-17 09:31:52', '1237', '新西兰', ' New Zealand ', '1', '380', '380030', ' new zealand ', '新西兰', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:52', '2017-02-17 09:31:52', '1238', '巴布亚', ' Papua New Guinea ', '1', '380', '380040', ' papua new guinea ', '巴布亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:52', '2017-02-17 09:31:52', '1239', '所罗门群岛', ' Solomon Islands ', '1', '380', '380050', ' solomon islands ', '所罗门群岛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:52', '2017-02-17 09:31:52', '1240', '瓦努阿图', ' Vanuatu ', '1', '380', '380060', ' vanuatu ', '瓦努阿图', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:52', '2017-02-17 09:31:52', '1241', '密克罗尼西亚', ' Micronesia ', '1', '380', '380070', ' micronesia ', '密克罗尼西亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:52', '2017-02-17 09:31:52', '1242', '马绍尔群岛', ' Marshall Islands ', '1', '380', '380080', ' marshall islands ', '马绍尔群岛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:52', '2017-02-17 09:31:52', '1243', '帕劳群岛', ' Palau ', '1', '380', '380090', ' palau ', '帕劳群岛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:52', '2017-02-17 09:31:52', '1244', '瑙鲁', ' Nauru ', '1', '380', '380100', ' nauru ', '瑙鲁', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:52', '2017-02-17 09:31:52', '1245', '基里巴斯', ' Kiribati ', '1', '380', '380110', ' kiribati ', '基里巴斯', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:52', '2017-02-17 09:31:52', '1246', '图瓦卢', ' Tuvalu ', '1', '380', '380120', ' tuvalu ', '图瓦卢', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:53', '2017-02-17 09:31:53', '1247', '萨摩亚', ' Samoa ', '1', '380', '380130', ' samoa ', '萨摩亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:53', '2017-02-17 09:31:53', '1248', '斐济群岛', ' Fiji Islands ', '1', '380', '380140', ' fiji islands ', '斐济群岛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:53', '2017-02-17 09:31:53', '1249', '汤加', ' Tonga ', '1', '380', '380150', ' tonga ', '汤加', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:53', '2017-02-17 09:31:53', '1250', '库克群岛', ' Cook Islands ', '1', '380', '380160', ' cook islands ', '库克群岛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:53', '2017-02-17 09:31:53', '1251', '关岛', ' Guam ', '1', '380', '380170', ' guam ', '关岛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:53', '2017-02-17 09:31:53', '1252', '新喀里多尼亚', ' New Caledonia ', '1', '380', '380180', ' new caledonia ', '新喀里多尼亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:53', '2017-02-17 09:31:53', '1253', '波利尼西亚', ' Polynesia ', '1', '380', '380190', ' polynesia ', '波利尼西亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:53', '2017-02-17 09:31:53', '1254', '皮特凯恩岛', ' Pitcairn Island ', '1', '380', '380200', ' pitcairn island ', '皮特凯恩岛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:53', '2017-02-17 09:31:53', '1255', '瓦利斯', ' Wallis and Futuna ', '1', '380', '380210', ' wallis and futuna ', '瓦利斯', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:53', '2017-02-17 09:31:53', '1256', '纽埃', ' Niue ', '1', '380', '380220', ' niue ', '纽埃', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:53', '2017-02-17 09:31:53', '1257', '托克劳', ' Tokelau ', '1', '380', '380230', ' tokelau ', '托克劳', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:53', '2017-02-17 09:31:53', '1258', '美属萨摩亚', ' American Samoa ', '1', '380', '380240', ' american samoa ', '美属萨摩亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:53', '2017-02-17 09:31:53', '1259', '北马里亚纳', ' Northern Marianas ', '1', '380', '380250', ' northern marianas ', '北马里亚纳', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:54', '2017-02-17 09:31:54', '1260', '欧洲', ' Europe ', '0', '', '390', ' europe ', '欧洲', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:54', '2017-02-17 09:31:54', '1261', '芬兰', ' Finland ', '1', '390', '390020', ' finland ', '芬兰', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:54', '2017-02-17 09:31:54', '1262', '瑞典', ' Sweden ', '1', '390', '390030', ' sweden ', '瑞典', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:54', '2017-02-17 09:31:54', '1263', '挪威', ' Norway ', '1', '390', '390040', ' norway ', '挪威', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:54', '2017-02-17 09:31:54', '1264', '冰岛', ' Iceland ', '1', '390', '390050', ' iceland ', '冰岛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:54', '2017-02-17 09:31:54', '1265', '丹麦', ' Denmark ', '1', '390', '390060', ' denmark ', '丹麦', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:54', '2017-02-17 09:31:54', '1266', '法罗群岛', ' Faroe islands ', '1', '390', '390070', ' faroe islands ', '法罗群岛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:54', '2017-02-17 09:31:54', '1267', '爱沙尼亚', ' Estonia ', '1', '390', '390080', ' estonia ', '爱沙尼亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:54', '2017-02-17 09:31:54', '1268', '拉脱维亚', ' Latvia ', '1', '390', '390090', ' latvia ', '拉脱维亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:54', '2017-02-17 09:31:54', '1269', '立陶宛', ' Lithuania ', '1', '390', '390100', ' lithuania ', '立陶宛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:54', '2017-02-17 09:31:54', '1270', '白俄罗斯', ' The Republic of Belarus ', '1', '390', '390110', ' belarus ', '白俄罗斯', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:54', '2017-02-17 09:31:54', '1271', '俄罗斯', ' Russia ', '1', '390', '390120', ' russia ', '俄罗斯', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:54', '2017-02-17 09:31:54', '1272', '乌克兰', ' Ukraine ', '1', '390', '390130', ' ukraine ', '乌克兰', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:54', '2017-02-17 09:31:54', '1273', '摩尔多瓦', ' Moldova ', '1', '390', '390140', ' moldova ', '摩尔多瓦', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:55', '2017-02-17 09:31:55', '1274', '波兰', ' Poland ', '1', '390', '390150', ' poland ', '波兰', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:55', '2017-02-17 09:31:55', '1275', '捷克', ' Czechoslovakia ', '1', '390', '390160', ' czechoslovakia ', '捷克', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:55', '2017-02-17 09:31:55', '1276', '匈牙利', ' Hungary ', '1', '390', '390170', ' hungary ', '匈牙利', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:55', '2017-02-17 09:31:55', '1277', '德国', ' Germany ', '1', '390', '390180', ' germany ', '德国', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:55', '2017-02-17 09:31:55', '1278', '奥地利', ' Austria ', '1', '390', '390190', ' austria ', '奥地利', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:55', '2017-02-17 09:31:55', '1279', '瑞士', ' Switzerland ', '1', '390', '390200', ' switzerland ', '瑞士', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:55', '2017-02-17 09:31:55', '1280', '列支敦士登', ' Liechtenstein ', '1', '390', '390210', ' liechtenstein ', '列支敦士登', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:55', '2017-02-17 09:31:55', '1281', '英国', ' United Kingdom ', '1', '390', '390220', ' United Kingdom ', '英国', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:55', '2017-02-17 09:31:55', '1282', '爱尔兰', ' Ireland ', '1', '390', '390230', ' ireland ', '爱尔兰', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:55', '2017-02-17 09:31:55', '1283', '荷兰', ' Netherlands ', '1', '390', '390240', ' netherlands ', '荷兰', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:55', '2017-02-17 09:31:55', '1284', '比利时', ' Belgium ', '1', '390', '390250', ' belgium ', '比利时', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:55', '2017-02-17 09:31:55', '1285', '卢森堡', ' Luxembourg ', '1', '390', '390260', ' luxembourg ', '卢森堡', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:56', '2017-02-17 09:31:56', '1286', '法国', ' France ', '1', '390', '390270', ' france ', '法国', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:56', '2017-02-17 09:31:56', '1287', '摩纳哥', ' Monaco ', '1', '390', '390280', ' monaco ', '摩纳哥', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:56', '2017-02-17 09:31:56', '1288', '罗马尼亚', ' Roumania ', '1', '390', '390290', ' roumania ', '罗马尼亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:56', '2017-02-17 09:31:56', '1289', '保加利亚', ' Bulgaria ', '1', '390', '390300', ' bulgaria ', '保加利亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:56', '2017-02-17 09:31:56', '1290', '塞尔维亚', ' Serbia ', '1', '390', '390310', ' serbia ', '塞尔维亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:56', '2017-02-17 09:31:56', '1291', '马其顿', ' Macedonia ', '1', '390', '390320', ' macedonia ', '马其顿', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:56', '2017-02-17 09:31:56', '1292', '阿尔巴尼亚', ' Albania ', '1', '390', '390330', ' albania ', '阿尔巴尼亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:56', '2017-02-17 09:31:56', '1293', '希腊', ' Greece ', '1', '390', '390340', ' greece ', '希腊', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:56', '2017-02-17 09:31:56', '1294', '斯洛文尼亚', ' Slovenia ', '1', '390', '390350', ' slovenia ', '斯洛文尼亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:56', '2017-02-17 09:31:56', '1295', '克罗地亚', ' Croatia ', '1', '390', '390360', ' croatia ', '克罗地亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:56', '2017-02-17 09:31:56', '1296', '波墨', ' Bosnia and ink plug elder brother d that ', '1', '390', '390370', ' bosnia and ink plug elder brother d that ', '波墨', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:56', '2017-02-17 09:31:56', '1297', '意大利', ' Italy ', '1', '390', '390380', ' italy ', '意大利', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:57', '2017-02-17 09:31:57', '1298', '梵蒂冈', ' Vatican ', '1', '390', '390390', ' vatican ', '梵蒂冈', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:57', '2017-02-17 09:31:57', '1299', '圣马力诺', ' San Marino ', '1', '390', '390400', ' san marino ', '圣马力诺', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:57', '2017-02-17 09:31:57', '1300', '马耳他', ' Malta ', '1', '390', '390410', ' malta ', '马耳他', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:57', '2017-02-17 09:31:57', '1301', '西班牙', ' Spain ', '1', '390', '390420', ' spain ', '西班牙', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:57', '2017-02-17 09:31:57', '1302', '葡萄牙', ' Portugal ', '1', '390', '390430', ' portugal ', '葡萄牙', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:57', '2017-02-17 09:31:57', '1303', '安道尔', ' Andorra ', '1', '390', '390440', ' andorra ', '安道尔', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:57', '2017-02-17 09:31:57', '1304', '斯洛伐克', ' The Slovak Republic ', '1', '390', '390450', ' the slovak republic ', '斯洛伐克', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:57', '2017-02-17 09:31:57', '1305', '非洲', ' Africa ', '0', '', '400', ' africa ', '非洲', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:57', '2017-02-17 09:31:57', '1306', '埃及', ' Egypt ', '1', '400', '400020', ' egypt ', '埃及', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:57', '2017-02-17 09:31:57', '1307', '利比亚', ' Libya ', '1', '400', '400030', ' libya ', '利比亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:57', '2017-02-17 09:31:57', '1308', '苏丹', ' Sultan ', '1', '400', '400040', ' sultan ', '苏丹', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:57', '2017-02-17 09:31:57', '1309', '突尼斯', ' Tunisia ', '1', '400', '400050', ' tunisia ', '突尼斯', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:57', '2017-02-17 09:31:57', '1310', '阿尔及利亚', ' Algeria ', '1', '400', '400060', ' algeria ', '阿尔及利亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:58', '2017-02-17 09:31:58', '1311', '摩洛哥', ' Morocco ', '1', '400', '400070', ' morocco ', '摩洛哥', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:58', '2017-02-17 09:31:58', '1312', '亚速尔群岛', ' Azores ', '1', '400', '400080', ' azores ', '亚速尔群岛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:58', '2017-02-17 09:31:58', '1313', '马德拉群岛', ' Madeira ', '1', '400', '400090', ' madeira ', '马德拉群岛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:58', '2017-02-17 09:31:58', '1314', '埃塞俄比亚', ' Ethiopia ', '1', '400', '400100', ' ethiopia ', '埃塞俄比亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:58', '2017-02-17 09:31:58', '1315', '厄立特里亚', ' Eritrea ', '1', '400', '400110', ' eritrea ', '厄立特里亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:58', '2017-02-17 09:31:58', '1316', '索马里', ' Somalia ', '1', '400', '400120', ' somalia ', '索马里', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:58', '2017-02-17 09:31:58', '1317', '吉布提', ' Djibouti ', '1', '400', '400130', ' djibouti ', '吉布提', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:58', '2017-02-17 09:31:58', '1318', '肯尼亚', ' Kenya ', '1', '400', '400140', ' kenya ', '肯尼亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:58', '2017-02-17 09:31:58', '1319', '坦桑尼亚', ' Tanzania ', '1', '400', '400150', ' tanzania ', '坦桑尼亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:58', '2017-02-17 09:31:58', '1320', '乌干达', ' Uganda ', '1', '400', '400160', ' uganda ', '乌干达', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:59', '2017-02-17 09:31:59', '1321', '卢旺达', ' Rwanda ', '1', '400', '400170', ' rwanda ', '卢旺达', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:59', '2017-02-17 09:31:59', '1322', '布隆迪', ' Burundi ', '1', '400', '400180', ' burundi ', '布隆迪', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:59', '2017-02-17 09:31:59', '1323', '塞舌尔', ' Seychelles ', '1', '400', '400190', ' seychelles ', '塞舌尔', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:59', '2017-02-17 09:31:59', '1324', '乍得', ' Chad ', '1', '400', '400200', ' chad ', '乍得', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:59', '2017-02-17 09:31:59', '1325', '中非', ' Central Africa ', '1', '400', '400210', ' central africa ', '中非', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:59', '2017-02-17 09:31:59', '1326', '喀麦隆', ' Cameroon ', '1', '400', '400220', ' cameroon ', '喀麦隆', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:59', '2017-02-17 09:31:59', '1327', '赤道几内亚', ' Equatorial Guinea ', '1', '400', '400230', ' equatorial guinea ', '赤道几内亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:59', '2017-02-17 09:31:59', '1328', '加蓬', ' Gabon ', '1', '400', '400240', ' gabon ', '加蓬', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:59', '2017-02-17 09:31:59', '1329', '刚果', ' Congo ', '1', '400', '400250', ' congo ', '刚果', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:59', '2017-02-17 09:31:59', '1330', '圣普', ' Sao Tome and Principe ', '1', '400', '400260', ' sao tome and principe ', '圣普', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:59', '2017-02-17 09:31:59', '1331', '毛里塔尼亚', ' Mauritania ', '1', '400', '400270', ' mauritania ', '毛里塔尼亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:59', '2017-02-17 09:31:59', '1332', '西撒哈拉', ' EH West Sahara ', '1', '400', '400280', ' eh west sahara ', '西撒哈拉', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:59', '2017-02-17 09:31:59', '1333', '塞内加尔', ' Senegal ', '1', '400', '400290', ' senegal ', '塞内加尔', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:59', '2017-02-17 09:31:59', '1334', '冈比亚', ' Gambia ', '1', '400', '400300', ' gambia ', '冈比亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:31:59', '2017-02-17 09:31:59', '1335', '马里', ' Mali ', '1', '400', '400310', ' mali ', '马里', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:00', '2017-02-17 09:32:00', '1336', '布基纳法索', ' Burkina faso ', '1', '400', '400320', ' burkina faso ', '布基纳法索', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:00', '2017-02-17 09:32:00', '1337', '几内亚', ' Guinea ', '1', '400', '400330', ' guinea ', '几内亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:00', '2017-02-17 09:32:00', '1338', '几内亚比绍', ' Guinea-Bissau ', '1', '400', '400340', ' guinea-bissau ', '几内亚比绍', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:00', '2017-02-17 09:32:00', '1339', '佛得角', ' Cape Verde ', '1', '400', '400350', ' cape verde ', '佛得角', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:00', '2017-02-17 09:32:00', '1340', '塞拉利昂', ' Sierra leone ', '1', '400', '400360', ' sierra leone ', '塞拉利昂', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:00', '2017-02-17 09:32:00', '1341', '利比里亚', ' Liberia ', '1', '400', '400370', ' liberia ', '利比里亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:00', '2017-02-17 09:32:00', '1342', '科特迪瓦', ' Cote divoire ', '1', '400', '400380', ' cote divoire ', '科特迪瓦', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:00', '2017-02-17 09:32:00', '1343', '加纳', ' Ghana ', '1', '400', '400390', ' ghana ', '加纳', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:00', '2017-02-17 09:32:00', '1344', '多哥', ' Togo ', '1', '400', '400400', ' togo ', '多哥', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:00', '2017-02-17 09:32:00', '1345', '贝宁', ' Benin ', '1', '400', '400410', ' benin ', '贝宁', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:00', '2017-02-17 09:32:00', '1346', '尼日尔', ' The Niger ', '1', '400', '400420', ' the niger ', '尼日尔', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:00', '2017-02-17 09:32:00', '1347', '加那利群岛', ' Canary Islands ', '1', '400', '400430', ' canary islands ', '加那利群岛', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:00', '2017-02-17 09:32:00', '1348', '赞比亚', ' Zambia ', '1', '400', '400440', ' zambia ', '赞比亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:00', '2017-02-17 09:32:00', '1349', '安哥拉', ' Angola ', '1', '400', '400450', ' angola ', '安哥拉', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:01', '2017-02-17 09:32:01', '1350', '津巴布韦', ' Zimbabwe ', '1', '400', '400460', ' zimbabwe ', '津巴布韦', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:01', '2017-02-17 09:32:01', '1351', '马拉维', ' Malawi ', '1', '400', '400470', ' malawi ', '马拉维', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:01', '2017-02-17 09:32:01', '1352', '莫桑比克', ' Mozambique ', '1', '400', '400480', ' mozambique ', '莫桑比克', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:01', '2017-02-17 09:32:01', '1353', '博茨瓦纳', ' Botswana ', '1', '400', '400490', ' botswana ', '博茨瓦纳', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:01', '2017-02-17 09:32:01', '1354', '纳米比亚', ' Namibia ', '1', '400', '400500', ' namibia ', '纳米比亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:01', '2017-02-17 09:32:01', '1355', '南非', ' South Africa ', '1', '400', '400510', ' south africa ', '南非', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:01', '2017-02-17 09:32:01', '1356', '斯威士兰', ' Swaziland ', '1', '400', '400520', ' swaziland ', '斯威士兰', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:01', '2017-02-17 09:32:01', '1357', '莱索托', ' Lesotho ', '1', '400', '400530', ' lesotho ', '莱索托', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:01', '2017-02-17 09:32:01', '1358', '马达加斯加', ' Madagascar ', '1', '400', '400540', ' madagascar ', '马达加斯加', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:01', '2017-02-17 09:32:01', '1359', '科摩罗', ' Comorin ', '1', '400', '400550', ' comorin ', '科摩罗', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:01', '2017-02-17 09:32:01', '1360', '毛里求斯', ' Mauritius ', '1', '400', '400560', ' mauritius ', '毛里求斯', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:01', '2017-02-17 09:32:01', '1361', '留尼旺', ' Reunion ', '1', '400', '400570', ' reunion ', '留尼旺', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:01', '2017-02-17 09:32:01', '1362', '圣赫勒拿', ' Saint Helena ', '1', '400', '400580', ' saint helena ', '圣赫勒拿', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:02', '2017-02-17 09:32:02', '1363', '尼日利亚', ' Federal Republic of Nigeria ', '1', '400', '400590', ' federal republic of nigeria ', '尼日利亚', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:02', '2017-02-17 09:32:02', '1364', '中国', ' China ', '0', '', '410', ' china ', '中国', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:02', '2017-02-17 09:32:02', '1365', '', ' Alabama ', '1', '360030', '420010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:02', '2017-02-17 09:32:02', '1366', '', ' Birmingham ', '1', '420010', '420010010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:02', '2017-02-17 09:32:02', '1367', '', ' Montgomery ', '1', '420010', '420010020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:02', '2017-02-17 09:32:02', '1368', '', ' Huntsville ', '1', '420010', '420010030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:02', '2017-02-17 09:32:02', '1369', '', ' Tuscaloosa ', '1', '420010', '420010040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:02', '2017-02-17 09:32:02', '1370', '', ' Mobile ', '1', '420010', '420010050', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:02', '2017-02-17 09:32:02', '1371', '', ' Alaska ', '1', '360030', '420020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:02', '2017-02-17 09:32:02', '1372', '', ' Juneau ', '1', '420020', '420020010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:02', '2017-02-17 09:32:02', '1373', '', ' Anchorage ', '1', '420020', '420020020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:02', '2017-02-17 09:32:02', '1374', '', ' Fairbanks ', '1', '420020', '420020030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:03', '2017-02-17 09:32:03', '1375', '', ' Arizona ', '1', '360030', '420030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:03', '2017-02-17 09:32:03', '1376', '', ' Phoenix ', '1', '420030', '420030010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:03', '2017-02-17 09:32:03', '1377', '', ' Tucson ', '1', '420030', '420030020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:03', '2017-02-17 09:32:03', '1378', '', ' Mesa ', '1', '420030', '420030030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:03', '2017-02-17 09:32:03', '1379', '', ' Arkansas ', '1', '360030', '420040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:03', '2017-02-17 09:32:03', '1380', '', ' Little Rock ', '1', '420040', '420040010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:03', '2017-02-17 09:32:03', '1381', '', ' Fayetteville ', '1', '420040', '420040020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:03', '2017-02-17 09:32:03', '1382', '', ' California  ', '1', '360030', '420050', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:03', '2017-02-17 09:32:03', '1383', '', ' Sacramento ', '1', '420050', '420050010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:03', '2017-02-17 09:32:03', '1384', '', ' Sonoma ', '1', '420050', '420050020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:03', '2017-02-17 09:32:03', '1385', '', ' San Jose ', '1', '420050', '420050030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:03', '2017-02-17 09:32:03', '1386', '', ' Los Angeles ', '1', '420050', '420050040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:03', '2017-02-17 09:32:03', '1387', '', ' San Diego ', '1', '420050', '420050050', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:04', '2017-02-17 09:32:04', '1388', '', ' San Francisco ', '1', '420050', '420050060', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:04', '2017-02-17 09:32:04', '1389', '', ' Colorado  ', '1', '360030', '420060', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:04', '2017-02-17 09:32:04', '1390', '', ' Denver ', '1', '420060', '420060010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:04', '2017-02-17 09:32:04', '1391', '', ' Boulder ', '1', '420060', '420060020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:04', '2017-02-17 09:32:04', '1392', '', ' Clolrado Springs ', '1', '420060', '420060030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:04', '2017-02-17 09:32:04', '1393', '', ' Connecticut  ', '1', '360030', '420070', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:04', '2017-02-17 09:32:04', '1394', '', ' Hartford ', '1', '420070', '420070010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:04', '2017-02-17 09:32:04', '1395', '', ' Delaware  ', '1', '360030', '420080', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:04', '2017-02-17 09:32:04', '1396', '', ' Dover ', '1', '420080', '420080010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:04', '2017-02-17 09:32:04', '1397', '', ' Wilmington ', '1', '420080', '420080020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:04', '2017-02-17 09:32:04', '1398', '', ' Newark ', '1', '420080', '420080030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:04', '2017-02-17 09:32:04', '1399', '', ' Florida  ', '1', '360030', '420090', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:04', '2017-02-17 09:32:04', '1400', '', ' Tallahassee ', '1', '420090', '420090010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:04', '2017-02-17 09:32:04', '1401', '', ' Tampa ', '1', '420090', '420090020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:05', '2017-02-17 09:32:05', '1402', '', ' Jacksonville ', '1', '420090', '420090030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:05', '2017-02-17 09:32:05', '1403', '', ' Miami ', '1', '420090', '420090040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:05', '2017-02-17 09:32:05', '1404', '', ' Gainesville ', '1', '420090', '420090050', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:05', '2017-02-17 09:32:05', '1405', '', ' Georgia  ', '1', '360030', '420100', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:05', '2017-02-17 09:32:05', '1406', '', ' Atlanta ', '1', '420100', '420100010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:05', '2017-02-17 09:32:05', '1407', '', ' Columbus ', '1', '420100', '420100020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:05', '2017-02-17 09:32:05', '1408', '', ' Macon ', '1', '420100', '420100030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:05', '2017-02-17 09:32:05', '1409', '', ' Hawaii  ', '1', '360030', '420110', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:05', '2017-02-17 09:32:05', '1410', '', ' Honolulu ', '1', '420110', '420110010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:05', '2017-02-17 09:32:05', '1411', '', ' Idaho  ', '1', '360030', '420120', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:05', '2017-02-17 09:32:05', '1412', '', ' Boise ', '1', '420120', '420120010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:05', '2017-02-17 09:32:05', '1413', '', ' Pocatello ', '1', '420120', '420120020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:05', '2017-02-17 09:32:05', '1414', '', ' Idaho Falls ', '1', '420120', '420120030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:05', '2017-02-17 09:32:05', '1415', '', ' Illinois ', '1', '360030', '420130', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:06', '2017-02-17 09:32:06', '1416', '', ' Springfield ', '1', '420130', '420130010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:06', '2017-02-17 09:32:06', '1417', '', ' Chicago ', '1', '420130', '420130020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:06', '2017-02-17 09:32:06', '1418', '', ' Rockford ', '1', '420130', '420130030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:06', '2017-02-17 09:32:06', '1419', '', ' Indiana  ', '1', '360030', '420140', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:06', '2017-02-17 09:32:06', '1420', '', ' Indianapolis ', '1', '420140', '420140010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:06', '2017-02-17 09:32:06', '1421', '', ' Fort Wayne ', '1', '420140', '420140020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:06', '2017-02-17 09:32:06', '1422', '', ' Bloomington ', '1', '420140', '420140030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:06', '2017-02-17 09:32:06', '1423', '', ' Lafayette ', '1', '420140', '420140040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:06', '2017-02-17 09:32:06', '1424', '', ' Iowa  ', '1', '360030', '420150', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:06', '2017-02-17 09:32:06', '1425', '', ' Des Moines ', '1', '420150', '420150010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:06', '2017-02-17 09:32:06', '1426', '', ' Cedar Rapids ', '1', '420150', '420150020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:06', '2017-02-17 09:32:06', '1427', '', ' Daven Port ', '1', '420150', '420150030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:06', '2017-02-17 09:32:06', '1428', '', ' Iowa City ', '1', '420150', '420150040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:07', '2017-02-17 09:32:07', '1429', '', ' Kansas  ', '1', '360030', '420160', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:07', '2017-02-17 09:32:07', '1430', '', ' Topeka ', '1', '420160', '420160010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:07', '2017-02-17 09:32:07', '1431', '', ' Wichita ', '1', '420160', '420160020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:07', '2017-02-17 09:32:07', '1432', '', ' Kansas City ', '1', '420160', '420160030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:07', '2017-02-17 09:32:07', '1433', '', ' Lawrence ', '1', '420160', '420160040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:07', '2017-02-17 09:32:07', '1434', '', ' Kentucky  ', '1', '360030', '420170', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:07', '2017-02-17 09:32:07', '1435', '', ' Louisville ', '1', '420170', '420170010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:07', '2017-02-17 09:32:07', '1436', '', ' Lexington ', '1', '420170', '420170020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:07', '2017-02-17 09:32:07', '1437', '', ' Louisiana  ', '1', '360030', '420180', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:07', '2017-02-17 09:32:07', '1438', '', ' New Orleans ', '1', '420180', '420180010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:07', '2017-02-17 09:32:07', '1439', '', ' Maine  ', '1', '360030', '420190', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:07', '2017-02-17 09:32:07', '1440', '', ' Augusta ', '1', '420190', '420190010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:08', '2017-02-17 09:32:08', '1441', '', ' Portland ', '1', '420190', '420190020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:08', '2017-02-17 09:32:08', '1442', '', ' Maryland  ', '1', '360030', '420200', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:08', '2017-02-17 09:32:08', '1443', '', ' Annapolis ', '1', '420200', '420200010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:08', '2017-02-17 09:32:08', '1444', '', ' Baltimore ', '1', '420200', '420200020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:08', '2017-02-17 09:32:08', '1445', '', ' Rockville ', '1', '420200', '420200030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:08', '2017-02-17 09:32:08', '1446', '', ' Massachusetts  ', '1', '360030', '420210', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:08', '2017-02-17 09:32:08', '1447', '', ' Boston ', '1', '420210', '420210010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:08', '2017-02-17 09:32:08', '1448', '', ' Worcester ', '1', '420210', '420210020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:08', '2017-02-17 09:32:08', '1449', '', ' Michigan  ', '1', '360030', '420220', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:08', '2017-02-17 09:32:08', '1450', '', ' Lansing ', '1', '420220', '420220010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:08', '2017-02-17 09:32:08', '1451', '', ' Detroit ', '1', '420220', '420220020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:08', '2017-02-17 09:32:08', '1452', '', ' Grand Rapids ', '1', '420220', '420220030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:09', '2017-02-17 09:32:09', '1453', '', ' Flint ', '1', '420220', '420220040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:09', '2017-02-17 09:32:09', '1454', '', ' Minnesota  ', '1', '360030', '420230', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:09', '2017-02-17 09:32:09', '1455', '', ' Saint Paul ', '1', '420230', '420230010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:09', '2017-02-17 09:32:09', '1456', '', ' Minneapolis ', '1', '420230', '420230020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:09', '2017-02-17 09:32:09', '1457', '', ' Duluth ', '1', '420230', '420230030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:09', '2017-02-17 09:32:09', '1458', '', ' Mississippi  ', '1', '360030', '420240', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:09', '2017-02-17 09:32:09', '1459', '', ' Jackson ', '1', '420240', '420240010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:09', '2017-02-17 09:32:09', '1460', '', ' Meridian ', '1', '420240', '420240020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:09', '2017-02-17 09:32:09', '1461', '', ' Missouri  ', '1', '360030', '420250', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:09', '2017-02-17 09:32:09', '1462', '', ' Jefferson City ', '1', '420250', '420250010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:09', '2017-02-17 09:32:09', '1463', '', ' Saint Louis ', '1', '420250', '420250020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:09', '2017-02-17 09:32:09', '1464', '', ' Kansas City ', '1', '420250', '420250030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:09', '2017-02-17 09:32:09', '1465', '', ' Rolla ', '1', '420250', '420250040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:09', '2017-02-17 09:32:09', '1466', '', ' Montana  ', '1', '360030', '420260', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:10', '2017-02-17 09:32:10', '1467', '', ' Heldna ', '1', '420260', '420260010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:10', '2017-02-17 09:32:10', '1468', '', ' Billings ', '1', '420260', '420260020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:10', '2017-02-17 09:32:10', '1469', '', ' Missoula ', '1', '420260', '420260030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:10', '2017-02-17 09:32:10', '1470', '', ' Nebraska  ', '1', '360030', '420270', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:10', '2017-02-17 09:32:10', '1471', '', ' Lincoln ', '1', '420270', '420270010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:10', '2017-02-17 09:32:10', '1472', '', ' Nevada  ', '1', '360030', '420280', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:10', '2017-02-17 09:32:10', '1473', '', ' Carson City ', '1', '420280', '420280010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:10', '2017-02-17 09:32:10', '1474', '', ' Las Vegas ', '1', '420280', '420280020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:10', '2017-02-17 09:32:10', '1475', '', ' Reno ', '1', '420280', '420280030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:10', '2017-02-17 09:32:10', '1476', '', ' New Hampshire  ', '1', '360030', '420290', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:10', '2017-02-17 09:32:10', '1477', '', ' Manchester ', '1', '420290', '420290010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:10', '2017-02-17 09:32:10', '1478', '', ' Nashua ', '1', '420290', '420290020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:10', '2017-02-17 09:32:10', '1479', '', ' Portsmouth ', '1', '420290', '420290030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:10', '2017-02-17 09:32:10', '1480', '', ' New Jersey ', '1', '360030', '420300', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:11', '2017-02-17 09:32:11', '1481', '', ' Newark ', '1', '420300', '420300010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:11', '2017-02-17 09:32:11', '1482', '', ' Jersey City ', '1', '420300', '420300020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:11', '2017-02-17 09:32:11', '1483', '', ' Atlantic City ', '1', '420300', '420300030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:11', '2017-02-17 09:32:11', '1484', '', ' Elizabeth ', '1', '420300', '420300040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:11', '2017-02-17 09:32:11', '1485', '', ' New Mexico  ', '1', '360030', '420310', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:11', '2017-02-17 09:32:11', '1486', '', ' Santa Fe ', '1', '420310', '420310010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:11', '2017-02-17 09:32:11', '1487', '', ' Albuquerque ', '1', '420310', '420310020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:11', '2017-02-17 09:32:11', '1488', '', ' New York ', '1', '360030', '420320', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:11', '2017-02-17 09:32:11', '1489', '', ' Albany ', '1', '420320', '420320010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:11', '2017-02-17 09:32:11', '1490', '', ' Buffalo ', '1', '420320', '420320020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:11', '2017-02-17 09:32:11', '1491', '', ' Long Island ', '1', '420320', '420320030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:11', '2017-02-17 09:32:11', '1492', '', ' New York ', '1', '420320', '420320040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:11', '2017-02-17 09:32:11', '1493', '', ' Rochester ', '1', '420320', '420320050', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:12', '2017-02-17 09:32:12', '1494', '', ' Ithaca ', '1', '420320', '420320060', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:12', '2017-02-17 09:32:12', '1495', '', ' North Carolina ', '1', '360030', '420330', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:12', '2017-02-17 09:32:12', '1496', '', ' Raleigh ', '1', '420330', '420330010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:12', '2017-02-17 09:32:12', '1497', '', ' Charlotte ', '1', '420330', '420330020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:12', '2017-02-17 09:32:12', '1498', '', ' Greensboro ', '1', '420330', '420330030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:12', '2017-02-17 09:32:12', '1499', '', ' Chapel Hill ', '1', '420330', '420330040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:12', '2017-02-17 09:32:12', '1500', '', ' Asheville ', '1', '420330', '420330050', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:12', '2017-02-17 09:32:12', '1501', '', ' North Dakota ', '1', '360030', '420340', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:12', '2017-02-17 09:32:12', '1502', '', ' Bismark ', '1', '420340', '420340010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:12', '2017-02-17 09:32:12', '1503', '', ' Fargo ', '1', '420340', '420340020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:12', '2017-02-17 09:32:12', '1504', '', ' Ohio  ', '1', '360030', '420350', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:12', '2017-02-17 09:32:12', '1505', '', ' Columbus ', '1', '420350', '420350010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:12', '2017-02-17 09:32:12', '1506', '', ' Cleveland ', '1', '420350', '420350020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:13', '2017-02-17 09:32:13', '1507', '', ' Cincinnati ', '1', '420350', '420350030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:13', '2017-02-17 09:32:13', '1508', '', ' Oklahoma  ', '1', '360030', '420360', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:13', '2017-02-17 09:32:13', '1509', '', ' Oklahoma City ', '1', '420360', '420360010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:13', '2017-02-17 09:32:13', '1510', '', ' Tulsa ', '1', '420360', '420360020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:13', '2017-02-17 09:32:13', '1511', '', ' Lawton ', '1', '420360', '420360030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:13', '2017-02-17 09:32:13', '1512', '', ' Norman ', '1', '420360', '420360040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:13', '2017-02-17 09:32:13', '1513', '', ' Oregon  ', '1', '360030', '420370', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:13', '2017-02-17 09:32:13', '1514', '', ' Salem ', '1', '420370', '420370010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:13', '2017-02-17 09:32:13', '1515', '', ' Portland ', '1', '420370', '420370020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:13', '2017-02-17 09:32:13', '1516', '', ' Eugene ', '1', '420370', '420370030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:13', '2017-02-17 09:32:13', '1517', '', ' Corvallis ', '1', '420370', '420370040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:13', '2017-02-17 09:32:13', '1518', '', ' Pennsylvania  ', '1', '360030', '420380', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:14', '2017-02-17 09:32:14', '1519', '', ' Harrisburg  ', '1', '420380', '420380010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:14', '2017-02-17 09:32:14', '1520', '', ' South Carolina ', '1', '360030', '420390', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:14', '2017-02-17 09:32:14', '1521', '', ' Columbia ', '1', '420390', '420390010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:14', '2017-02-17 09:32:14', '1522', '', ' North Charleston ', '1', '420390', '420390020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:14', '2017-02-17 09:32:14', '1523', '', ' Greenville ', '1', '420390', '420390030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:14', '2017-02-17 09:32:14', '1524', '', ' Aiken ', '1', '420390', '420390040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:14', '2017-02-17 09:32:14', '1525', '', ' Myrtle Beach ', '1', '420390', '420390050', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:14', '2017-02-17 09:32:14', '1526', '', ' Clemson ', '1', '420390', '420390060', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:14', '2017-02-17 09:32:14', '1527', '', ' South Dakota ', '1', '360030', '420400', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:14', '2017-02-17 09:32:14', '1528', '', ' Sioux Falls ', '1', '420400', '420400010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:14', '2017-02-17 09:32:14', '1529', '', ' Rapid City ', '1', '420400', '420400020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:14', '2017-02-17 09:32:14', '1530', '', ' Tennessee  ', '1', '360030', '420410', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:15', '2017-02-17 09:32:15', '1531', '', ' Nemphis ', '1', '420410', '420410010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:15', '2017-02-17 09:32:15', '1532', '', ' Memphis ', '1', '420410', '420410020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:15', '2017-02-17 09:32:15', '1533', '', ' Knoxville ', '1', '420410', '420410030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:15', '2017-02-17 09:32:15', '1534', '', ' Oak Ridge ', '1', '420410', '420410040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:15', '2017-02-17 09:32:15', '1535', '', ' Texas  ', '1', '360030', '420420', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:15', '2017-02-17 09:32:15', '1536', '', ' Austin ', '1', '420420', '420420010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:15', '2017-02-17 09:32:15', '1537', '', ' Houston ', '1', '420420', '420420020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:15', '2017-02-17 09:32:15', '1538', '', ' Dallas  ', '1', '420420', '420420030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:15', '2017-02-17 09:32:15', '1539', '', ' Utah  ', '1', '360030', '420430', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:15', '2017-02-17 09:32:15', '1540', '', ' Salt Lake City ', '1', '420430', '420430010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:15', '2017-02-17 09:32:15', '1541', '', ' Ogden ', '1', '420430', '420430020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:15', '2017-02-17 09:32:15', '1542', '', ' Provo ', '1', '420430', '420430030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:15', '2017-02-17 09:32:15', '1543', '', ' Vermont  ', '1', '360030', '420440', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:15', '2017-02-17 09:32:15', '1544', '', ' Rutland ', '1', '420440', '420440010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:16', '2017-02-17 09:32:16', '1545', '', ' Virginia  ', '1', '360030', '420450', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:16', '2017-02-17 09:32:16', '1546', '', ' Richmond ', '1', '420450', '420450010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:16', '2017-02-17 09:32:16', '1547', '', ' Norfolk ', '1', '420450', '420450020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:16', '2017-02-17 09:32:16', '1548', '', ' Virginia Beach ', '1', '420450', '420450030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:16', '2017-02-17 09:32:16', '1549', '', ' Washington  ', '1', '360030', '420460', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:16', '2017-02-17 09:32:16', '1550', '', ' Olympia  ', '1', '420460', '420460010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:16', '2017-02-17 09:32:16', '1551', '', ' Rhode Island  ', '1', '360030', '420470', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:16', '2017-02-17 09:32:16', '1552', '', ' Providence ', '1', '420470', '420470010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:16', '2017-02-17 09:32:16', '1553', '', ' Newport ', '1', '420470', '420470020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:16', '2017-02-17 09:32:16', '1554', '', ' West Virginia ', '1', '360030', '420480', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:16', '2017-02-17 09:32:16', '1555', '', ' Charleston ', '1', '420480', '420480010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:16', '2017-02-17 09:32:16', '1556', '', ' Huntington ', '1', '420480', '420480020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:16', '2017-02-17 09:32:16', '1557', '', ' Morgantown ', '1', '420480', '420480030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:17', '2017-02-17 09:32:17', '1558', '', ' Wisconsin  ', '1', '360030', '420490', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:17', '2017-02-17 09:32:17', '1559', '', ' Madison ', '1', '420490', '420490010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:17', '2017-02-17 09:32:17', '1560', '', ' Milwaukee ', '1', '420490', '420490020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:17', '2017-02-17 09:32:17', '1561', '', ' Racine ', '1', '420490', '420490030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:17', '2017-02-17 09:32:17', '1562', '', ' Wyoming  ', '1', '360030', '420500', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:17', '2017-02-17 09:32:17', '1563', '', ' Cheyenne ', '1', '420500', '420500010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:17', '2017-02-17 09:32:17', '1564', '', ' Casper ', '1', '420500', '420500020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:17', '2017-02-17 09:32:17', '1565', '', ' Laramie ', '1', '420500', '420500030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:17', '2017-02-17 09:32:17', '1566', '', ' Washington', '1', '1', '420510', '360030.0', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:17', '2017-02-17 09:32:17', '1567', '', ' Alberta ', '1', '360020', '430010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:17', '2017-02-17 09:32:17', '1568', '', ' Calgary ', '1', '430010', '430010010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:17', '2017-02-17 09:32:17', '1569', '', ' Edmonton ', '1', '430010', '430010020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:17', '2017-02-17 09:32:17', '1570', '', ' British Columbia ', '1', '360020', '430020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:17', '2017-02-17 09:32:17', '1571', '', ' Vancouver ', '1', '430020', '430020010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:18', '2017-02-17 09:32:18', '1572', '', ' Surrey ', '1', '430020', '430020020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:18', '2017-02-17 09:32:18', '1573', '', ' Burnaby ', '1', '430020', '430020030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:18', '2017-02-17 09:32:18', '1574', '', ' Richmond ', '1', '430020', '430020040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:18', '2017-02-17 09:32:18', '1575', '', ' Manitoba ', '1', '360020', '430030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:18', '2017-02-17 09:32:18', '1576', '', ' Winnipeg ', '1', '430030', '430030010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:18', '2017-02-17 09:32:18', '1577', '', ' Newfoundland and Labrador ', '1', '360020', '430040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:18', '2017-02-17 09:32:18', '1578', '', ' New Brunswick ', '1', '360020', '430050', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:18', '2017-02-17 09:32:18', '1579', '', ' Nova Scotia ', '1', '360020', '430060', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:18', '2017-02-17 09:32:18', '1580', '', ' Halifax ', '1', '430060', '430060030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:18', '2017-02-17 09:32:18', '1581', '', ' Ontario ', '1', '360020', '430070', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:18', '2017-02-17 09:32:18', '1582', '', ' Toronto ', '1', '430070', '430070010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:18', '2017-02-17 09:32:18', '1583', '', ' Ottawa ', '1', '430070', '430070020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:18', '2017-02-17 09:32:18', '1584', '', ' Mississauga ', '1', '430070', '430070030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:18', '2017-02-17 09:32:18', '1585', '', ' Brampton ', '1', '430070', '430070040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:19', '2017-02-17 09:32:19', '1586', '', ' Hamilton ', '1', '430070', '430070050', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:19', '2017-02-17 09:32:19', '1587', '', ' London ', '1', '430070', '430070060', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:19', '2017-02-17 09:32:19', '1588', '', ' Markham ', '1', '430070', '430070070', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:19', '2017-02-17 09:32:19', '1589', '', ' Vaughan ', '1', '430070', '430070080', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:19', '2017-02-17 09:32:19', '1590', '', ' Kitchener ', '1', '430070', '430070090', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:19', '2017-02-17 09:32:19', '1591', '', ' Windsor ', '1', '430070', '430070100', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:19', '2017-02-17 09:32:19', '1592', '', ' Richmond Hill ', '1', '430070', '430070110', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:19', '2017-02-17 09:32:19', '1593', '', ' Okville ', '1', '430070', '430070120', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:19', '2017-02-17 09:32:19', '1594', '', ' Burlington ', '1', '430070', '430070130', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:19', '2017-02-17 09:32:19', '1595', '', ' Greater Sudbury ', '1', '430070', '430070140', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:19', '2017-02-17 09:32:19', '1596', '', ' Prince Edward Island ', '1', '360020', '430080', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:19', '2017-02-17 09:32:19', '1597', '', ' Québec ', '1', '360020', '430090', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:19', '2017-02-17 09:32:19', '1598', '', ' Montreal ', '1', '430090', '430090010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:20', '2017-02-17 09:32:20', '1599', '', ' Quebec City ', '1', '430090', '430090020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:20', '2017-02-17 09:32:20', '1600', '', ' Laval ', '1', '430090', '430090030', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:20', '2017-02-17 09:32:20', '1601', '', ' Gatineau ', '1', '430090', '430090040', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:20', '2017-02-17 09:32:20', '1602', '', ' Longueuil ', '1', '430090', '430090050', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:20', '2017-02-17 09:32:20', '1603', '', ' Sherbrooke ', '1', '430090', '430090060', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:20', '2017-02-17 09:32:20', '1604', '', ' Saskatchewan ', '1', '360020', '430100', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:20', '2017-02-17 09:32:20', '1605', '', ' Saskatoon ', '1', '430100', '430100010', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:20', '2017-02-17 09:32:20', '1606', '', ' Regina ', '1', '430100', '430100020', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:20', '2017-02-17 09:32:20', '1607', '', ' Nunavut ', '1', '360020', '430110', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:20', '2017-02-17 09:32:20', '1608', '', ' Northwest Territories ', '1', '360020', '430120', '  ', '', null);
INSERT INTO `fic_city_code_field` VALUES ('0', '2017-02-17 09:32:20', '2017-02-17 09:32:20', '1609', '', ' Yukon ', '1', '360020', '430130', '  ', '', null);

-- ----------------------------
-- Table structure for `fic_client_overview`
-- ----------------------------
DROP TABLE IF EXISTS `fic_client_overview`;
CREATE TABLE `fic_client_overview` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `client_code` varchar(128) NOT NULL,
  `client_id` varchar(128) NOT NULL,
  `client_secret` varchar(256) NOT NULL,
  `des_key` varchar(128) NOT NULL,
  `manage_type` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fic_client_overview
-- ----------------------------
INSERT INTO `fic_client_overview` VALUES ('1', '0', '2017-01-20 14:47:38', '2017-01-20 14:47:38', 'dataocean_test', 'eezqKVwe3Fzc72m3K6LzfK4CbJDb7hbtoJThzsBo', '5yr2oMcUQSzld9JifoMvkN8tmyiwIB9Ra9IxUDDlmDmlPx3V8uJRkiTpSvVUdRVHLA1F91iyxgP4riz4fWVMbbyfq3ovo1c9kzwHtDrtMqVpMd2vZPFXGAkh7IjuBDQT', 'yyyyyyuuuuoooooo', 'procuratorate.dataocean_judger.Judger');
INSERT INTO `fic_client_overview` VALUES ('2', '0', '2017-01-20 14:47:38', '2017-01-20 14:47:38', 'lp_test', '', '', '', 'procuratorate.lp_judger.Judger');

-- ----------------------------
-- Table structure for `fic_data_source_info`
-- ----------------------------
DROP TABLE IF EXISTS `fic_data_source_info`;
CREATE TABLE `fic_data_source_info` (
  `is_delete` tinyint(1) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `data_source_identity` varchar(64) NOT NULL,
  `desc` varchar(512) DEFAULT NULL,
  `protocol_type` varchar(15) NOT NULL,
  `backend_url` varchar(64) NOT NULL,
  `api_manager` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fic_data_source_info
-- ----------------------------
INSERT INTO `fic_data_source_info` VALUES ('0', '2017-01-20 18:13:45', '2017-01-20 18:13:45', '1', 'data_ocean测试接口', 'data_ocean_test', 'data_ocean测试接口', 'HTTP', 'http://apitest.digcredit.com', '');
INSERT INTO `fic_data_source_info` VALUES ('0', '2017-01-20 18:13:45', '2017-01-20 18:13:45', '2', 'data_ocean生产接口', 'data_ocean_prod', 'data_ocean生产接口', 'HTTP', 'http://api.digcredit.com', '');
INSERT INTO `fic_data_source_info` VALUES ('0', '2017-01-20 18:13:45', '2017-01-20 18:13:45', '3', 'lp集成接口', 'lp_integration', '猎聘集成接口', 'HTTP', 'http://127.0.0.1:8987', '');

-- ----------------------------
-- Table structure for `fic_feature_card_type`
-- ----------------------------
DROP TABLE IF EXISTS `fic_feature_card_type`;
CREATE TABLE `fic_feature_card_type` (
  `is_delete` tinyint(1) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_type_desc` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fic_feature_card_type
-- ----------------------------
INSERT INTO `fic_feature_card_type` VALUES ('0', '2017-03-24 11:18:02', '2017-03-24 11:18:08', '1', '范围型');
INSERT INTO `fic_feature_card_type` VALUES ('0', '2017-03-24 11:18:06', '2017-03-24 11:18:11', '2', '枚举型');

-- ----------------------------
-- Table structure for `fic_feature_code_mapping`
-- ----------------------------
DROP TABLE IF EXISTS `fic_feature_code_mapping`;
CREATE TABLE `fic_feature_code_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `feature_name` varchar(128) NOT NULL,
  `feature_desc` varchar(128) DEFAULT NULL,
  `unitary_value` varchar(64) NOT NULL,
  `dual_value` varchar(64) DEFAULT NULL,
  `mapped_value` int(11) NOT NULL,
  `value_type` varchar(20) NOT NULL,
  `arithmetic_type` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fic_feature_code_mapping
-- ----------------------------
INSERT INTO `fic_feature_code_mapping` VALUES ('1', '1', '2017-03-03 16:03:09', '2017-03-03 16:03:09', 'airfare_sum12', '一年内乘机总票价', '0.0', '5000.0', '0', 'float', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('2', '1', '2017-03-03 16:03:09', '2017-03-03 16:03:09', 'airfare_sum12', '一年内乘机总票价', '5000.0', '10000.0', '1', 'float', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('3', '1', '2017-03-03 16:03:09', '2017-03-03 16:03:09', 'airfare_sum12', '一年内乘机总票价', '10000.0', '20000.0', '2', 'float', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('4', '1', '2017-03-03 16:03:09', '2017-03-03 16:03:09', 'airfare_sum12', '一年内乘机总票价', '20000.0', '50000.0', '3', 'float', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('5', '1', '2017-03-03 16:03:09', '2017-03-03 16:03:09', 'airfare_sum12', '一年内乘机总票价', '50000.0', '100000.0', '4', 'float', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('6', '1', '2017-03-03 16:03:09', '2017-03-03 16:03:09', 'airfare_sum12', '一年内乘机总票价', '100000.0', '1000000000.0', '5', 'float', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('7', '0', '2017-03-03 16:03:09', '2017-03-03 16:03:09', 'cur_corp_years', '经营年限', '-1.0', '1.0', '1', 'float', '(]');
INSERT INTO `fic_feature_code_mapping` VALUES ('8', '0', '2017-03-03 16:03:09', '2017-03-03 16:03:09', 'cur_corp_years', '经营年限', '1.0', '2.0', '2', 'float', '(]');
INSERT INTO `fic_feature_code_mapping` VALUES ('9', '0', '2017-03-03 16:03:09', '2017-03-03 16:03:09', 'cur_corp_years', '经营年限', '2.0', '3.0', '3', 'float', '(]');
INSERT INTO `fic_feature_code_mapping` VALUES ('10', '0', '2017-03-03 16:03:09', '2017-03-03 16:03:09', 'cur_corp_years', '经营年限', '3.0', '4.0', '4', 'float', '(]');
INSERT INTO `fic_feature_code_mapping` VALUES ('11', '0', '2017-03-03 16:03:09', '2017-03-03 16:03:09', 'cur_corp_years', '经营年限', '4.0', '5.0', '5', 'float', '(]');
INSERT INTO `fic_feature_code_mapping` VALUES ('12', '0', '2017-03-03 16:03:09', '2017-03-03 16:03:09', 'cur_corp_years', '经营年限', '5.0', '8.0', '6', 'float', '(]');
INSERT INTO `fic_feature_code_mapping` VALUES ('13', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'cur_corp_years', '经营年限', '8.0', '10.0', '7', 'float', '(]');
INSERT INTO `fic_feature_code_mapping` VALUES ('14', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'cur_corp_years', '经营年限', '10.0', '10000.0', '8', 'float', '(]');
INSERT INTO `fic_feature_code_mapping` VALUES ('15', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'cur_employee_number', '现工作单位规模(人数)', '0.0', '20.0', '1', 'string', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('16', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'cur_employee_number', '现工作单位规模(人数)', '20.0', '100.0', '2', 'string', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('17', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'cur_employee_number', '现工作单位规模(人数)', '100.0', '500.0', '3', 'string', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('18', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'cur_employee_number', '现工作单位规模(人数)', '500.0', '1000.0', '4', 'string', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('19', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'cur_employee_number', '现工作单位规模(人数)', '1000.0', '10000.0', '5', 'string', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('20', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'cur_employee_number', '现工作单位规模(人数)', '10000.0', '10000000.0', '6', 'string', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('21', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'cur_work_status', '在职,看看新机会', '在职,看看新机会', '', '0', 'string', 'in');
INSERT INTO `fic_feature_code_mapping` VALUES ('22', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'cur_work_status', '离职,正在找工作', '离职,正在找工作', '', '1', 'string', 'in');
INSERT INTO `fic_feature_code_mapping` VALUES ('23', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'cur_work_status', '在职,急寻新工作', '在职,急寻新工作', '', '2', 'string', 'in');
INSERT INTO `fic_feature_code_mapping` VALUES ('24', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'cur_work_status', '在职,暂无跳槽打算', '在职,暂无跳槽打算', '', '3', 'string', 'in');
INSERT INTO `fic_feature_code_mapping` VALUES ('25', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'education_degree_check', '博士', '博士研究生', '', '1', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('26', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'education_degree_check', '硕士', '硕士研究生', '', '2', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('27', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'education_degree_check', '本科', '本科', '', '3', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('28', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'education_degree_check', '专科', '专科', '', '4', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('30', '0', '2017-03-03 16:03:10', '2017-03-03 16:03:10', 'education_degree_check', '其他', 'N/A', '', '5', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('31', '0', '2017-03-03 16:03:11', '2017-03-03 16:03:11', 'education_degree_code', '博士', '5', '', '1', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('33', '0', '2017-03-03 16:03:11', '2017-03-03 16:03:11', 'education_degree_code', '硕士', '20', '', '2', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('35', '0', '2017-03-03 16:03:11', '2017-03-03 16:03:11', 'education_degree_code', '本科', '40', '', '3', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('36', '0', '2017-03-03 16:03:11', '2017-03-03 16:03:11', 'education_degree_code', '专科', '50', '', '4', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('37', '0', '2017-03-03 16:03:11', '2017-03-03 16:03:11', 'education_degree_code', '其他', '60', '', '5', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('42', '1', '2017-03-03 16:03:11', '2017-03-03 16:03:11', 'education_tz', '统招', '1', '', '1', 'int', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('43', '1', '2017-03-03 16:03:11', '2017-03-03 16:03:11', 'education_tz', '非统招', '0', '', '0', 'int', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('44', '0', '2017-03-03 16:03:11', '2017-03-03 16:03:11', 'income_level', '年入账', '0', '10000', '0', 'int', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('45', '0', '2017-03-03 16:03:11', '2017-03-03 16:03:11', 'income_level', '年入账', '10000', '50000', '1', 'int', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('46', '0', '2017-03-03 16:03:11', '2017-03-03 16:03:11', 'income_level', '年入账', '50000', '100000', '2', 'int', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('47', '0', '2017-03-03 16:03:11', '2017-03-03 16:03:11', 'income_level', '年入账', '100000', '500000', '3', 'int', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('48', '0', '2017-03-03 16:03:11', '2017-03-03 16:03:11', 'income_level', '年入账', '500000', '1000000', '4', 'int', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('49', '0', '2017-03-03 16:03:11', '2017-03-03 16:03:11', 'income_level', '年入账', '1000000', '1000000000', '5', 'int', '[)');
INSERT INTO `fic_feature_code_mapping` VALUES ('50', '0', '2017-03-03 16:03:11', '2017-03-03 16:03:11', 'income_level_lt', '年入账(联通)', '0', '', '0', 'int', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('60', '0', '2017-03-03 16:03:12', '2017-03-03 16:03:12', 'income_level_lt', '年入账(联通)', 'a', '', '1', 'int', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('64', '0', '2017-03-03 16:03:12', '2017-03-03 16:03:12', 'income_level_lt', '年入账(联通)', 'e', '', '2', 'int', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('69', '0', '2017-03-03 16:03:12', '2017-03-03 16:03:12', 'income_level_lt', '年入账(联通)', '13', '', '3', 'int', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('73', '0', '2017-03-03 16:03:12', '2017-03-03 16:03:12', 'income_level_lt', '年入账(联通)', '17', '', '4', 'int', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('78', '0', '2017-03-03 16:03:12', '2017-03-03 16:03:12', 'income_level_lt', '年入账(联通)', '1c', '', '5', 'int', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('88', '0', '2017-03-03 16:03:12', '2017-03-03 16:03:12', 'income_level_yd', '年入账(移动)', '0', '', '0', 'int', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('98', '0', '2017-03-03 16:03:12', '2017-03-03 16:03:12', 'income_level_yd', '年入账(移动)', '10', '', '1', 'int', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('102', '0', '2017-03-03 16:03:12', '2017-03-03 16:03:12', 'income_level_yd', '年入账(移动)', '14', '', '2', 'int', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('107', '0', '2017-03-03 16:03:12', '2017-03-03 16:03:12', 'income_level_yd', '年入账(移动)', '19', '', '3', 'int', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('111', '0', '2017-03-03 16:03:12', '2017-03-03 16:03:12', 'income_level_yd', '年入账(移动)', '23', '', '4', 'int', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('116', '0', '2017-03-03 16:03:12', '2017-03-03 16:03:12', 'income_level_yd', '年入账(移动)', '28', '', '5', 'int', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('126', '1', '2017-03-03 16:03:12', '2017-03-03 16:03:12', 'is_cur_corp_shixin', '未命中', '11.0', '', '0', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('128', '1', '2017-03-03 16:03:12', '2017-03-03 16:03:12', 'is_cur_corp_shixin', '命中', '0.0', '', '1', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('129', '1', '2017-03-03 16:03:13', '2017-03-03 16:03:13', 'is_jiuyao_multi_loan', '命中91多头借贷名单', '', '', '1', '', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('130', '1', '2017-03-03 16:03:13', '2017-03-03 16:03:13', 'is_jiuyao_multi_loan', '未命中91多头借贷名单', '', '', '0', '', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('131', '1', '2017-03-03 16:03:13', '2017-03-03 16:03:13', 'is_mobile_black', '申请人手机号有染黑记录', '0.0', '', '1', 'int', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('132', '1', '2017-03-03 16:03:13', '2017-03-03 16:03:13', 'is_mobile_black', '申请人手机号无染黑记录', '2.0', '', '0', 'int', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('133', '1', '2017-03-03 16:03:13', '2017-03-03 16:03:13', 'is_pingan_other_loan', '未命中', '2.0', '', '0', 'int', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('134', '1', '2017-03-03 16:03:13', '2017-03-03 16:03:13', 'is_pingan_other_loan', '命中', '0.0', '', '1', 'int', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('135', '1', '2017-03-03 16:03:13', '2017-03-03 16:03:13', 'is_pingan_overdue_loan', '未命中', '2.0', '', '0', 'int', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('136', '1', '2017-03-03 16:03:13', '2017-03-03 16:03:13', 'is_pingan_overdue_loan', '命中', '0.0', '', '1', 'int', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('137', '1', '2017-03-03 16:03:13', '2017-03-03 16:03:13', 'is_recruitment', '非统招', '函授', '', '0', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('143', '1', '2017-03-03 16:03:13', '2017-03-03 16:03:13', 'is_recruitment', '统招', '全日制', '', '1', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('144', '1', '2017-03-03 16:03:13', '2017-03-03 16:03:13', 'is_unclear_loan', '没有未结清贷款', '0.0', '', '0', 'int', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('145', '1', '2017-03-03 16:03:13', '2017-03-03 16:03:13', 'is_unclear_loan', '有未结清贷款', '1.0', '', '1', 'int', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('146', '0', '2017-03-03 16:03:13', '2017-03-03 16:03:13', 'max_flight_area', '国内', 'inland', '', '1', '', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('147', '0', '2017-03-03 16:03:14', '2017-03-03 16:03:14', 'max_flight_area', '国外', 'international', '', '2', '', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('148', '0', '2017-03-03 16:03:14', '2017-03-03 16:03:14', 'max_flight_area', '乘机次数为零', '0', '', '3', '', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('149', '0', '2017-03-03 16:03:14', '2017-03-03 16:03:14', 'max_flight_area', '无记录', 'unknow', '', '4', '', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('150', '0', '2017-03-03 16:03:14', '2017-03-03 16:03:14', 'max_flight_class', '商务舱', 'business_class', '', '1', '', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('151', '0', '2017-03-03 16:03:14', '2017-03-03 16:03:14', 'max_flight_class', '公务舱', 'executive_class', '', '2', '', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('152', '0', '2017-03-03 16:03:14', '2017-03-03 16:03:14', 'max_flight_class', '经济舱', 'tourist_class', '', '3', '', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('153', '0', '2017-03-03 16:03:14', '2017-03-03 16:03:14', 'max_flight_class', '乘机次数为零', '0', '', '4', '', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('154', '1', '2017-03-03 16:03:14', '2017-03-03 16:03:14', 'mobile_identity', '身份验证一致', '00', '', '1', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('155', '1', '2017-03-03 16:03:14', '2017-03-03 16:03:14', 'mobile_identity', '其他', '11.0', '', '0', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('157', '1', '2017-03-03 16:03:14', '2017-03-03 16:03:14', 'now_industry_code', '全部行业', '', '', '0', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('158', '1', '2017-03-03 16:03:14', '2017-03-03 16:03:14', 'now_industry_code', '计算机软件', '', '', '10', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('159', '1', '2017-03-03 16:03:14', '2017-03-03 16:03:14', 'now_industry_code', '计算机硬件/网络设备', '', '', '20', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('160', '1', '2017-03-03 16:03:14', '2017-03-03 16:03:14', 'now_industry_code', 'IT服务/系统集成', '', '', '30', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('161', '1', '2017-03-03 16:03:15', '2017-03-03 16:03:15', 'now_industry_code', '互联网/移动互联网/电子商务', '', '', '40', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('162', '1', '2017-03-03 16:03:15', '2017-03-03 16:03:15', 'now_industry_code', '电子技术/半导体/集成电路', '', '', '50', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('163', '1', '2017-03-03 16:03:15', '2017-03-03 16:03:15', 'now_industry_code', '通信(设备/运营/增值)', '', '', '60', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('164', '1', '2017-03-03 16:03:15', '2017-03-03 16:03:15', 'now_industry_code', '广告/公关/市场推广/会展', '', '', '70', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('165', '1', '2017-03-03 16:03:15', '2017-03-03 16:03:15', 'now_industry_code', '房地产开发/建筑/建材/工程', '', '', '80', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('166', '1', '2017-03-03 16:03:15', '2017-03-03 16:03:15', 'now_industry_code', '房地产服务(物业管理/地产经纪)', '', '', '90', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('167', '1', '2017-03-03 16:03:15', '2017-03-03 16:03:15', 'now_industry_code', '规划/设计/装潢', '', '', '100', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('168', '1', '2017-03-03 16:03:15', '2017-03-03 16:03:15', 'now_industry_code', '中介服务', '', '', '110', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('169', '1', '2017-03-03 16:03:15', '2017-03-03 16:03:15', 'now_industry_code', '专业服务(咨询/财会/法律/翻译等)', '', '', '120', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('170', '1', '2017-03-03 16:03:15', '2017-03-03 16:03:15', 'now_industry_code', '银行', '', '', '130', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('171', '1', '2017-03-03 16:03:15', '2017-03-03 16:03:15', 'now_industry_code', '保险', '', '', '140', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('172', '1', '2017-03-03 16:03:15', '2017-03-03 16:03:15', 'now_industry_code', '基金/证券/期货/投资', '', '', '150', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('173', '1', '2017-03-03 16:03:15', '2017-03-03 16:03:15', 'now_industry_code', '贸易/进出口', '', '', '160', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('174', '1', '2017-03-03 16:03:15', '2017-03-03 16:03:15', 'now_industry_code', '影视/媒体/艺术/文化/出版', '', '', '170', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('175', '1', '2017-03-03 16:03:15', '2017-03-03 16:03:15', 'now_industry_code', '印刷/包装/造纸', '', '', '180', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('176', '1', '2017-03-03 16:03:16', '2017-03-03 16:03:16', 'now_industry_code', '食品/饮料/烟酒/日化', '', '', '190', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('177', '1', '2017-03-03 16:03:16', '2017-03-03 16:03:16', 'now_industry_code', '服装服饰/纺织/皮革', '', '', '200', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('178', '1', '2017-03-03 16:03:16', '2017-03-03 16:03:16', 'now_industry_code', '家具/家电', '', '', '210', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('179', '1', '2017-03-03 16:03:16', '2017-03-03 16:03:16', 'now_industry_code', '办公用品及设备', '', '', '220', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('180', '1', '2017-03-03 16:03:16', '2017-03-03 16:03:16', 'now_industry_code', '旅游/酒店/餐饮服务/生活服务', '', '', '230', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('181', '1', '2017-03-03 16:03:16', '2017-03-03 16:03:16', 'now_industry_code', '百货/批发/零售', '', '', '240', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('182', '1', '2017-03-03 16:03:16', '2017-03-03 16:03:16', 'now_industry_code', '交通/物流/运输', '', '', '250', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('183', '1', '2017-03-03 16:03:16', '2017-03-03 16:03:16', 'now_industry_code', '娱乐/休闲/体育', '', '', '260', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('184', '1', '2017-03-03 16:03:16', '2017-03-03 16:03:16', 'now_industry_code', '制药/生物工程', '', '', '270', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('185', '1', '2017-03-03 16:03:16', '2017-03-03 16:03:16', 'now_industry_code', '医疗/保健/美容/卫生服务', '', '', '280', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('186', '1', '2017-03-03 16:03:16', '2017-03-03 16:03:16', 'now_industry_code', '医疗设备/器械', '', '', '290', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('187', '1', '2017-03-03 16:03:16', '2017-03-03 16:03:16', 'now_industry_code', '环保', '', '', '300', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('188', '1', '2017-03-03 16:03:16', '2017-03-03 16:03:16', 'now_industry_code', '石油/石化/化工', '', '', '310', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('189', '1', '2017-03-03 16:03:16', '2017-03-03 16:03:16', 'now_industry_code', '采掘/冶炼/矿产', '', '', '320', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('190', '1', '2017-03-03 16:03:16', '2017-03-03 16:03:16', 'now_industry_code', '能源(电力/水利)', '', '', '330', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('191', '1', '2017-03-03 16:03:17', '2017-03-03 16:03:17', 'now_industry_code', '仪器/仪表/工业自动化/电气', '', '', '340', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('192', '1', '2017-03-03 16:03:17', '2017-03-03 16:03:17', 'now_industry_code', '汽车/摩托车', '', '', '350', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('193', '1', '2017-03-03 16:03:17', '2017-03-03 16:03:17', 'now_industry_code', '机械制造/机电/重工', '', '', '360', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('194', '1', '2017-03-03 16:03:17', '2017-03-03 16:03:17', 'now_industry_code', '原材料及加工', '', '', '370', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('195', '1', '2017-03-03 16:03:17', '2017-03-03 16:03:17', 'now_industry_code', '教育/培训/学术/科研/院校', '', '', '380', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('196', '1', '2017-03-03 16:03:17', '2017-03-03 16:03:17', 'now_industry_code', '政府/公共事业/非营利机构', '', '', '390', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('197', '1', '2017-03-03 16:03:17', '2017-03-03 16:03:17', 'now_industry_code', '其他', '', '', '400', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('198', '1', '2017-03-03 16:03:17', '2017-03-03 16:03:17', 'now_industry_code', '农/林/牧/渔', '', '', '410', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('199', '1', '2017-03-03 16:03:17', '2017-03-03 16:03:17', 'now_industry_code', '网络游戏', '', '', '420', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('200', '1', '2017-03-03 16:03:17', '2017-03-03 16:03:17', 'now_industry_code', '会计/审计', '', '', '430', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('201', '1', '2017-03-03 16:03:17', '2017-03-03 16:03:17', 'now_industry_code', '外包服务', '', '', '440', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('202', '1', '2017-03-03 16:03:17', '2017-03-03 16:03:17', 'now_industry_code', '检测/认证', '', '', '450', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('203', '1', '2017-03-03 16:03:17', '2017-03-03 16:03:17', 'now_industry_code', '奢侈品/收藏品', '', '', '460', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('204', '1', '2017-03-03 16:03:17', '2017-03-03 16:03:17', 'now_industry_code', '工艺品/珠宝/玩具', '', '', '470', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('205', '1', '2017-03-03 16:03:17', '2017-03-03 16:03:17', 'now_industry_code', '航空/航天', '', '', '480', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('206', '1', '2017-03-03 16:03:18', '2017-03-03 16:03:18', 'now_industry_code', '新能源', '', '', '490', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('207', '1', '2017-03-03 16:03:18', '2017-03-03 16:03:18', 'now_industry_code', '信托/担保/拍卖/典当', '', '', '500', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('208', '1', '2017-03-03 16:03:18', '2017-03-03 16:03:18', 'now_industry_code', '租赁服务', '', '', '510', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('209', '1', '2017-03-03 16:03:18', '2017-03-03 16:03:18', 'last_industry_code', '全部行业', '', '', '0', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('210', '1', '2017-03-03 16:03:18', '2017-03-03 16:03:18', 'last_industry_code', '计算机软件', '', '', '10', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('211', '1', '2017-03-03 16:03:18', '2017-03-03 16:03:18', 'last_industry_code', '计算机硬件/网络设备', '', '', '20', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('212', '1', '2017-03-03 16:03:18', '2017-03-03 16:03:18', 'last_industry_code', 'IT服务/系统集成', '', '', '30', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('213', '1', '2017-03-03 16:03:18', '2017-03-03 16:03:18', 'last_industry_code', '互联网/移动互联网/电子商务', '', '', '40', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('214', '1', '2017-03-03 16:03:18', '2017-03-03 16:03:18', 'last_industry_code', '电子技术/半导体/集成电路', '', '', '50', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('215', '1', '2017-03-03 16:03:18', '2017-03-03 16:03:18', 'last_industry_code', '通信(设备/运营/增值)', '', '', '60', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('216', '1', '2017-03-03 16:03:18', '2017-03-03 16:03:18', 'last_industry_code', '广告/公关/市场推广/会展', '', '', '70', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('217', '1', '2017-03-03 16:03:18', '2017-03-03 16:03:18', 'last_industry_code', '房地产开发/建筑/建材/工程', '', '', '80', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('218', '1', '2017-03-03 16:03:18', '2017-03-03 16:03:18', 'last_industry_code', '房地产服务(物业管理/地产经纪)', '', '', '90', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('219', '1', '2017-03-03 16:03:19', '2017-03-03 16:03:19', 'last_industry_code', '规划/设计/装潢', '', '', '100', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('220', '1', '2017-03-03 16:03:19', '2017-03-03 16:03:19', 'last_industry_code', '中介服务', '', '', '110', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('221', '1', '2017-03-03 16:03:19', '2017-03-03 16:03:19', 'last_industry_code', '专业服务(咨询/财会/法律/翻译等)', '', '', '120', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('222', '1', '2017-03-03 16:03:19', '2017-03-03 16:03:19', 'last_industry_code', '银行', '', '', '130', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('223', '1', '2017-03-03 16:03:19', '2017-03-03 16:03:19', 'last_industry_code', '保险', '', '', '140', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('224', '1', '2017-03-03 16:03:19', '2017-03-03 16:03:19', 'last_industry_code', '基金/证券/期货/投资', '', '', '150', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('225', '1', '2017-03-03 16:03:19', '2017-03-03 16:03:19', 'last_industry_code', '贸易/进出口', '', '', '160', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('226', '1', '2017-03-03 16:03:19', '2017-03-03 16:03:19', 'last_industry_code', '影视/媒体/艺术/文化/出版', '', '', '170', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('227', '1', '2017-03-03 16:03:19', '2017-03-03 16:03:19', 'last_industry_code', '印刷/包装/造纸', '', '', '180', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('228', '1', '2017-03-03 16:03:19', '2017-03-03 16:03:19', 'last_industry_code', '食品/饮料/烟酒/日化', '', '', '190', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('229', '1', '2017-03-03 16:03:19', '2017-03-03 16:03:19', 'last_industry_code', '服装服饰/纺织/皮革', '', '', '200', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('230', '1', '2017-03-03 16:03:19', '2017-03-03 16:03:19', 'last_industry_code', '家具/家电', '', '', '210', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('231', '1', '2017-03-03 16:03:19', '2017-03-03 16:03:19', 'last_industry_code', '办公用品及设备', '', '', '220', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('232', '1', '2017-03-03 16:03:20', '2017-03-03 16:03:20', 'last_industry_code', '旅游/酒店/餐饮服务/生活服务', '', '', '230', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('233', '1', '2017-03-03 16:03:20', '2017-03-03 16:03:20', 'last_industry_code', '百货/批发/零售', '', '', '240', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('234', '1', '2017-03-03 16:03:20', '2017-03-03 16:03:20', 'last_industry_code', '交通/物流/运输', '', '', '250', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('235', '1', '2017-03-03 16:03:20', '2017-03-03 16:03:20', 'last_industry_code', '娱乐/休闲/体育', '', '', '260', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('236', '1', '2017-03-03 16:03:20', '2017-03-03 16:03:20', 'last_industry_code', '制药/生物工程', '', '', '270', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('237', '1', '2017-03-03 16:03:20', '2017-03-03 16:03:20', 'last_industry_code', '医疗/保健/美容/卫生服务', '', '', '280', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('238', '1', '2017-03-03 16:03:20', '2017-03-03 16:03:20', 'last_industry_code', '医疗设备/器械', '', '', '290', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('239', '1', '2017-03-03 16:03:20', '2017-03-03 16:03:20', 'last_industry_code', '环保', '', '', '300', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('240', '1', '2017-03-03 16:03:20', '2017-03-03 16:03:20', 'last_industry_code', '石油/石化/化工', '', '', '310', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('241', '1', '2017-03-03 16:03:20', '2017-03-03 16:03:20', 'last_industry_code', '采掘/冶炼/矿产', '', '', '320', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('242', '1', '2017-03-03 16:03:20', '2017-03-03 16:03:20', 'last_industry_code', '能源(电力/水利)', '', '', '330', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('243', '1', '2017-03-03 16:03:20', '2017-03-03 16:03:20', 'last_industry_code', '仪器/仪表/工业自动化/电气', '', '', '340', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('244', '1', '2017-03-03 16:03:20', '2017-03-03 16:03:20', 'last_industry_code', '汽车/摩托车', '', '', '350', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('245', '1', '2017-03-03 16:03:21', '2017-03-03 16:03:21', 'last_industry_code', '机械制造/机电/重工', '', '', '360', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('246', '1', '2017-03-03 16:03:21', '2017-03-03 16:03:21', 'last_industry_code', '原材料及加工', '', '', '370', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('247', '1', '2017-03-03 16:03:21', '2017-03-03 16:03:21', 'last_industry_code', '教育/培训/学术/科研/院校', '', '', '380', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('248', '1', '2017-03-03 16:03:21', '2017-03-03 16:03:21', 'last_industry_code', '政府/公共事业/非营利机构', '', '', '390', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('249', '1', '2017-03-03 16:03:21', '2017-03-03 16:03:21', 'last_industry_code', '其他', '', '', '400', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('250', '1', '2017-03-03 16:03:21', '2017-03-03 16:03:21', 'last_industry_code', '农/林/牧/渔', '', '', '410', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('251', '1', '2017-03-03 16:03:21', '2017-03-03 16:03:21', 'last_industry_code', '网络游戏', '', '', '420', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('252', '1', '2017-03-03 16:03:21', '2017-03-03 16:03:21', 'last_industry_code', '会计/审计', '', '', '430', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('253', '1', '2017-03-03 16:03:21', '2017-03-03 16:03:21', 'last_industry_code', '外包服务', '', '', '440', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('254', '1', '2017-03-03 16:03:21', '2017-03-03 16:03:21', 'last_industry_code', '检测/认证', '', '', '450', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('255', '1', '2017-03-03 16:03:21', '2017-03-03 16:03:21', 'last_industry_code', '奢侈品/收藏品', '', '', '460', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('256', '1', '2017-03-03 16:03:21', '2017-03-03 16:03:21', 'last_industry_code', '工艺品/珠宝/玩具', '', '', '470', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('257', '1', '2017-03-03 16:03:21', '2017-03-03 16:03:21', 'last_industry_code', '航空/航天', '', '', '480', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('258', '1', '2017-03-03 16:03:22', '2017-03-03 16:03:22', 'last_industry_code', '新能源', '', '', '490', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('259', '1', '2017-03-03 16:03:22', '2017-03-03 16:03:22', 'last_industry_code', '信托/担保/拍卖/典当', '', '', '500', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('260', '1', '2017-03-03 16:03:22', '2017-03-03 16:03:22', 'last_industry_code', '租赁服务', '', '', '510', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('261', '0', '2017-03-03 16:03:22', '2017-03-03 16:03:22', 'income_expense_comparison', '入账远大于支出', '10', '', '1', '', '>=');
INSERT INTO `fic_feature_code_mapping` VALUES ('262', '0', '2017-03-03 16:03:22', '2017-03-03 16:03:22', 'income_expense_comparison', '入账大于支出', '1', '10', '2', '', '()');
INSERT INTO `fic_feature_code_mapping` VALUES ('263', '0', '2017-03-03 16:03:22', '2017-03-03 16:03:22', 'income_expense_comparison', '入账接进出账', '1', '', '3', '', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('264', '0', '2017-03-03 16:03:22', '2017-03-03 16:03:22', 'income_expense_comparison', '入账小于出账', '0.1', '1', '4', '', '()');
INSERT INTO `fic_feature_code_mapping` VALUES ('265', '0', '2017-03-03 16:03:22', '2017-03-03 16:03:22', 'income_expense_comparison', '入账远小于支出', '0.1', '', '5', '', '<=');
INSERT INTO `fic_feature_code_mapping` VALUES ('266', '0', '2017-03-03 16:03:22', '2017-03-03 16:03:22', 'college_type', '专科', '专科', '', '1', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('268', '0', '2017-03-03 16:03:22', '2017-03-03 16:03:22', 'college_type', '普本', '本科', '', '2', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('271', '0', '2017-03-03 16:03:22', '2017-03-03 16:03:22', 'college_type', '211院校', '211工程院校', '', '3', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('272', '0', '2017-03-03 16:03:22', '2017-03-03 16:03:22', 'college_type', '985院校', '985,211工程院校', '', '4', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('273', '1', '2017-03-03 16:03:22', '2017-03-03 16:03:22', 'is_loan_agency', '命中', '00', '', '1', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('274', '1', '2017-03-03 16:03:22', '2017-03-03 16:03:22', 'is_loan_agency', '其他', '11', '', '0', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('276', '1', '2017-03-03 16:03:22', '2017-03-03 16:03:22', 'is_organization_g_black', '命中', '00', '', '1', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('277', '1', '2017-03-03 16:03:23', '2017-03-03 16:03:23', 'is_organization_g_black', '其他', '11.0', '', '0', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('279', '1', '2017-03-03 16:03:23', '2017-03-03 16:03:23', 'is_netsky_black', '命中', '00', '', '1', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('280', '1', '2017-03-03 16:03:23', '2017-03-03 16:03:23', 'is_netsky_black', '其他', '11', '', '0', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('282', '1', '2017-03-03 16:03:23', '2017-03-03 16:03:23', 'is_netsky_multi_loan', '命中', '00', '', '1', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('283', '1', '2017-03-03 16:03:23', '2017-03-03 16:03:23', 'is_netsky_multi_loan', '其他', '11', '', '0', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('285', '1', '2017-03-03 16:03:23', '2017-03-03 16:03:23', 'is_skyeye_black', '命中', '00', '', '1', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('286', '1', '2017-03-03 16:03:23', '2017-03-03 16:03:23', 'is_skyeye_black', '其他', '11', '', '0', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('288', '1', '2017-03-03 16:03:23', '2017-03-03 16:03:23', 'is_court_shixin', '命中', '00', '', '1', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('289', '1', '2017-03-03 16:03:23', '2017-03-03 16:03:23', 'is_court_shixin', '其他', '11', '', '0', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('291', '1', '2017-03-03 16:03:23', '2017-03-03 16:03:23', 'is_net_black', '命中', '00', '', '1', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('292', '1', '2017-03-03 16:03:23', '2017-03-03 16:03:23', 'is_net_black', '其他', '11', '', '0', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('294', '1', '2017-03-03 16:03:23', '2017-03-03 16:03:23', 'has_negative_info', '命中', '00', '', '1', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('295', '1', '2017-03-03 16:03:23', '2017-03-03 16:03:23', 'has_negative_info', '其他', '11', '', '0', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('297', '1', '2017-03-03 16:03:23', '2017-03-03 16:03:23', 'is_netsky_grey', '命中', '00', '', '1', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('298', '1', '2017-03-03 16:03:23', '2017-03-03 16:03:23', 'is_netsky_grey', '其他', '11', '', '0', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('300', '1', '2017-03-03 16:03:23', '2017-03-03 16:03:23', 'is_court_zhixing', '命中', '00', '', '1', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('301', '1', '2017-03-03 16:03:24', '2017-03-03 16:03:24', 'is_court_zhixing', '其他', '11', '', '0', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('303', '1', '2017-03-03 16:03:24', '2017-03-03 16:03:24', 'online_time', '(0,6)', '', '', '1', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('304', '1', '2017-03-03 16:03:24', '2017-03-03 16:03:24', 'online_time', '[6,12)', '', '', '2', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('305', '1', '2017-03-03 16:03:24', '2017-03-03 16:03:24', 'online_time', '[12,24)', '', '', '3', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('306', '1', '2017-03-03 16:03:24', '2017-03-03 16:03:24', 'online_time', '[24,+)', '', '', '4', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('307', '1', '2017-03-03 16:03:24', '2017-03-03 16:03:24', 'is_pingan_financial_shixin', '命中', '0.0', '', '1', 'int', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('308', '1', '2017-03-03 16:03:24', '2017-03-03 16:03:24', 'is_pingan_financial_shixin', '其他', '2.0', '', '0', 'int', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('309', '1', '2017-03-03 16:03:24', '2017-03-03 16:03:24', 'is_pingan_multi_loan', '命中', '0.0', '', '1', 'int', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('310', '1', '2017-03-03 16:03:24', '2017-03-03 16:03:24', 'is_pingan_multi_loan', '其他', '2.0', '', '0', 'int', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('311', '1', '2017-03-03 16:03:24', '2017-03-03 16:03:24', 'register_city_level', '一线', '地域表', '', '1', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('312', '1', '2017-03-03 16:03:24', '2017-03-03 16:03:24', 'register_city_level', '二线', '地域表', '', '2', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('313', '1', '2017-03-03 16:03:24', '2017-03-03 16:03:24', 'register_city_level', '三线', '地域表', '', '3', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('314', '1', '2017-03-03 16:03:24', '2017-03-03 16:03:24', 'register_city_level', '四线', '地域表', '', '4', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('315', '1', '2017-03-03 16:03:24', '2017-03-03 16:03:24', 'register_city_level', '其他', '地域表', '', '5', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('316', '1', '2017-03-03 16:03:24', '2017-03-03 16:03:24', 'mobile_area_city_level', '一线', '地域表', '', '1', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('317', '1', '2017-03-03 16:03:25', '2017-03-03 16:03:25', 'mobile_area_city_level', '二线', '地域表', '', '2', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('318', '1', '2017-03-03 16:03:25', '2017-03-03 16:03:25', 'mobile_area_city_level', '三线', '地域表', '', '3', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('319', '1', '2017-03-03 16:03:25', '2017-03-03 16:03:25', 'mobile_area_city_level', '四线', '地域表', '', '4', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('320', '1', '2017-03-03 16:03:25', '2017-03-03 16:03:25', 'mobile_area_city_level', '其他', '地域表', '', '5', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('321', '1', '2017-03-03 16:03:25', '2017-03-03 16:03:25', 'company_addr_city_level', '一线', '地域表', '', '1', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('322', '1', '2017-03-03 16:03:25', '2017-03-03 16:03:25', 'company_addr_city_level', '二线', '地域表', '', '2', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('323', '1', '2017-03-03 16:03:25', '2017-03-03 16:03:25', 'company_addr_city_level', '三线', '地域表', '', '3', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('324', '1', '2017-03-03 16:03:25', '2017-03-03 16:03:25', 'company_addr_city_level', '四线', '地域表', '', '4', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('325', '1', '2017-03-03 16:03:25', '2017-03-03 16:03:25', 'company_addr_city_level', '其他', '地域表', '', '5', 'string', '');
INSERT INTO `fic_feature_code_mapping` VALUES ('326', '0', '2017-03-03 16:03:25', '2017-03-03 16:03:25', 'gender', '男', '男', '', '0', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('327', '0', '2017-03-03 16:03:25', '2017-03-03 16:03:25', 'gender', '女', '女', '', '1', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('328', '0', '2017-03-03 16:03:25', '2017-03-03 16:03:25', 'marital_status', '未婚', '10', '', '10', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('329', '0', '2017-03-03 16:03:25', '2017-03-03 16:03:25', 'marital_status', '已婚', '20', '', '20', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('333', '0', '2017-03-03 16:03:26', '2017-03-03 16:03:26', 'marital_status', '丧偶', '30', '', '30', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('334', '0', '2017-03-03 16:03:26', '2017-03-03 16:03:26', 'marital_status', '离异', '40', '', '40', 'string', '==');
INSERT INTO `fic_feature_code_mapping` VALUES ('335', '0', '2017-03-03 16:03:26', '2017-03-03 16:03:26', 'marital_status', '其他', '90', '', '50', 'string', '==');

-- ----------------------------
-- Table structure for `fic_feature_common_conf`
-- ----------------------------
DROP TABLE IF EXISTS `fic_feature_common_conf`;
CREATE TABLE `fic_feature_common_conf` (
  `is_delete` tinyint(1) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(64) NOT NULL,
  `feature_name_cn` varchar(128) NOT NULL,
  `collect_type` varchar(64) DEFAULT NULL,
  `data_identity` varchar(2048) DEFAULT NULL,
  `feature_type` int(11) DEFAULT NULL,
  `feature_card_type` int(11) DEFAULT NULL,
  `feature_rule_type` int(11) DEFAULT NULL,
  `feature_select_value` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fic_feature_common_conf_feature_card_type_26bad451_uniq` (`feature_card_type`),
  KEY `fic_feature_common_conf_feature_rule_type_550eff7_uniq` (`feature_rule_type`),
  KEY `fic_feature_common_conf_feature_type_12e00a3b_uniq` (`feature_type`),
  CONSTRAINT `FK3ggn4weyxw0tmrfew8ejubhe5` FOREIGN KEY (`feature_type`) REFERENCES `fic_feature_type` (`id`),
  CONSTRAINT `FK7x9yb9meu4rad7qn92us2evk2` FOREIGN KEY (`feature_rule_type`) REFERENCES `fic_feature_rule_type` (`id`),
  CONSTRAINT `FKejmjpnhm8g5tx7qqkipmvtgak` FOREIGN KEY (`feature_card_type`) REFERENCES `fic_feature_card_type` (`id`),
  CONSTRAINT `fic_featu_feature_card_type_26bad451_fk_fic_feature_card_type_id` FOREIGN KEY (`feature_card_type`) REFERENCES `fic_feature_card_type` (`id`),
  CONSTRAINT `fic_featur_feature_rule_type_550eff7_fk_fic_feature_rule_type_id` FOREIGN KEY (`feature_rule_type`) REFERENCES `fic_feature_rule_type` (`id`),
  CONSTRAINT `fic_feature_common__feature_type_12e00a3b_fk_fic_feature_type_id` FOREIGN KEY (`feature_type`) REFERENCES `fic_feature_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fic_feature_common_conf
-- ----------------------------
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:01', '2017-03-27 17:08:34', '1', 'age', '年龄', 'Courier', '{\'personal_info\': [\'name\', \'card_id\']}', '1', '1', '1', '0, 100');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:01', '2017-02-22 15:18:01', '2', 'airfare_sum12', '一年中乘机总票价', 'Courier', '{\'airline_passenger_info\': [\'name\', \'card_id\']}', '2', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:01', '2017-03-27 17:08:29', '3', 'application_on', '申请提交时间', 'Courier', '{\'apply_data\': [\'apply_id\']}', '7', null, null, '');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:01', '2017-03-27 16:45:59', '4', 'application_on_plus', '申请提交时间(增强版)', 'Courier', '{\'apply_data\': [\'apply_id\']}', '7', null, null, '');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:01', '2017-02-22 15:18:01', '5', 'apply_register_duration', '注册时间长度（月数）', 'Courier', '{\'portrait_data\': [\'proposer_id\'], \'apply_data\': [\'apply_id\']}', '3', '1', '1', '0,100');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:01', '2017-02-22 15:18:01', '6', 'car_count', '车辆个数', 'Courier', '{\'cc_car_credit\': [\'name\', \'card_id\']}', '2', '1', '1', '0,100');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:02', '2017-02-22 15:18:02', '7', 'car_number', '车牌号', 'Courier', '{\'cc_car_credit\': [\'name\', \'card_id\']}', '2', null, null, '');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:02', '2017-03-27 16:56:34', '8', 'card_id', '身份证号', 'Courier', '{\'apply_data\': [\'apply_id\']}', '1', null, null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:02', '2017-02-22 15:18:02', '9', 'cc_bill_age', '贷记卡账龄（年数）', 'Courier', '{\'cc_credit\': [\'mobile\']}', '8', '1', '1', '0,100');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:02', '2017-02-22 15:18:02', '10', 'college_type', '毕业/在读学校类型', 'Courier', '{\'education_review_s\': [\'name\', \'card_id\']}', '5', null, null, '');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:02', '2017-02-22 15:18:02', '11', 'company_addr_city_level', '企业城市等级', 'Courier', '{\'industrial_commercial_s\': [\'cur_company\']}', '3', '2', null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:02', '2017-02-22 15:18:02', '12', 'complete_degree', '简历完成度', 'Courier', '{\'portrait_data\': [\'proposer_id\']}', '3', '1', '1', '0,100');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:02', '2017-02-22 15:18:02', '13', 'contacts', '通讯录个数', 'Courier', '{\'apply_data\': [\'apply_id\']}', '9', '1', '1', '0,10000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:02', '2017-02-22 15:18:02', '14', 'creditcard_count', '信用卡张数', 'Courier', '{\'cc_credit\': [\'mobile\']}', '8', '1', '1', '0,1000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:02', '2017-02-22 15:18:02', '15', 'cur_company', '当前工作单位', 'Courier', '{\'portrait_data\': [\'proposer_id\']}', '3', null, null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:02', '2017-02-22 15:18:02', '16', 'cur_corp_years', '现工作单位工作年限（年数）', 'Courier', '{\'industrial_commercial_s\': [\'cur_company\']}', '3', '1', '1', '0,100');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:02', '2017-02-22 15:18:02', '17', 'cur_employee_number', '现工作单位规模（人数）', 'Courier', '{\'industrial_commercial_s\': [\'cur_company\']}', '3', '1', '1', '0,1000000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:02', '2017-02-22 15:18:02', '18', 'cur_work_status', '当前工作状态', 'Courier', '{\'portrait_data\': [\'proposer_id\']}', '3', '2', '3', '在职，看看新机会,离职，正在找工作,在职，急寻新工作,在职，暂无跳槽打算');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:02', '2017-02-22 15:18:02', '19', 'dc_bill_age', '借记卡账龄（年数）', 'Courier', '{\'cc_credit\': [\'mobile\']}', '8', '1', '1', '0,100');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:03', '2017-02-22 15:18:03', '20', 'education_degree_check', '学信网学历', 'Courier', '{\'education_review_s\': [\'name\', \'card_id\']}', '5', '2', '3', '统招,非统招');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:03', '2017-02-22 15:18:03', '21', 'education_degree_code', '申请人填写学历', 'Courier', '{\'portrait_data\': [\'proposer_id\']}', '5', '1', null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:03', '2017-02-22 15:18:03', '22', 'education_tz', '最高学历是否统招', 'Courier', '{\'portrait_data\': [\'proposer_id\']}', '5', '1', null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:03', '2017-02-22 15:18:03', '23', 'folk', '是否为汉族', 'Courier', '{\'multi_id_card_info_s\': [\'name\', \'card_id\']}', '1', '2', '3', '汉族,少数民族');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:03', '2017-02-22 15:18:03', '24', 'gender', '性别', 'Courier', '{\'personal_info\': [\'name\', \'card_id\']}', '1', '2', '3', '男,女');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:03', '2017-02-22 15:18:03', '25', 'gps_city_code', 'GPS定位城市', 'Courier', '{\'geo_location\': [\'latitude\', \'longitudu\']}', '1', null, null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:03', '2017-02-22 15:18:03', '26', 'graduate_college', '申请人输入院校', 'Courier', '{\'portrait_data\': [\'proposer_id\']}', '5', null, null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:03', '2017-02-22 15:18:03', '27', 'graduate_college_check', '学信网查得院校', 'Courier', '{\'education_review_s\': [\'name\', \'card_id\']}', '5', null, null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:03', '2017-02-22 15:18:03', '28', 'has_negative_info', '是否命中个人不良信息检测', 'Courier', '{\'negative_info_s\': [\'name\', \'card_id\']}', '4', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:03', '2017-02-22 15:18:03', '29', 'income_expense_comparison', '入账与支出关系', 'ShuntCourier', '{\'cc_credit\': [\'mobile\'], \'unicom_finance_portrait_s\': [\'mobile\']}', '8', '1', '1', '0,10000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:03', '2017-02-22 15:18:03', '30', 'income_level', '年入账', 'ShuntCourier', '{\'cc_credit\': [\'mobile\'], \'portrait_data\': [\'proposer_id\'], \'unicom_finance_portrait_s\': [\'mobile\']}', '8', '1', '1', '0,10000000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:03', '2017-02-22 15:18:03', '31', 'industry_change_count', '转行次数', 'Courier', '{\'portrait_data\': [\'proposer_id\']}', '3', '1', '1', '0,100');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:03', '2017-02-22 15:18:03', '32', 'is_court_shixin', '是否命中失信被执行人', 'Courier', '{\'court_shixin_a_s\': [\'name\', \'card_id\']}', '4', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:04', '2017-02-22 15:18:04', '33', 'is_court_zhixing', '是否命中被执行人', 'Courier', '{\'court_zhixing_a_s\': [\'name\', \'card_id\']}', '4', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:04', '2017-02-22 15:18:04', '34', 'is_cur_corp_shixin', '现工作单位是否为失信被执行', 'Courier', '{\'court_shixin_a_s\': [\'name\', \'card_id\']}', '3', '2', '2', '');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:04', '2017-02-22 15:18:04', '35', 'is_jiuyao_multi_loan', '是否命中91多头借贷名单', 'Courier', '{\'multi_loan_91\': [\'name\', \'card_id\']}', '6', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:04', '2017-02-22 15:18:04', '36', 'is_loan_agency', '是否命中贷款中介', 'Courier', '{\'loan_agency\': [\'mobile\']}', '4', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:04', '2017-02-22 15:18:04', '37', 'is_mobile_black', '手机号是否染黑', 'Courier', '{\'trustutn_loan_phone\': [\'name\', \'card_id\', \'mobile\']}', '6', null, null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:04', '2017-02-22 15:18:04', '38', 'is_net_black', '是否命中网贷黑名单', 'Courier', '{\'net_black_a_s\': [\'name\', \'card_id\']}', '4', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:04', '2017-02-22 15:18:04', '39', 'is_netsky_black', '是否命中天网黑名单', 'Courier', '{\'tianwang_black\': [\'mobile\']}', '4', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:04', '2017-02-22 15:18:04', '40', 'is_netsky_grey', '是否命中天网灰名单', 'Courier', '{\'tianwang_gray\': [\'mobile\']}', '4', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:04', '2017-02-22 15:18:04', '41', 'is_netsky_multi_loan', '是否命中天网多头贷款', 'Courier', '{\'tianwang_multi_loan\': [\'mobile\']}', '4', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:04', '2017-02-22 15:18:04', '42', 'is_organization_g_black', '是否命中机构g黑名单', 'Courier', '{\'agentg_black\': [\'name\', \'card_id\', \'mobile\']}', '4', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:04', '2017-02-22 15:18:04', '43', 'is_pingan_financial_shixin', '是否命中金融失信黑名单', 'Courier', '{\'trustutn_loan_blacklist\': [\'name\', \'card_id\', \'mobile\']}', '6', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:04', '2017-02-22 15:18:04', '44', 'is_pingan_multi_loan', '是否命中凭安多头借贷名单', 'Courier', '{\'trustutn_loan_loanmsg\': [\'name\', \'card_id\', \'mobile\']}', '6', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:04', '2017-02-22 15:18:04', '45', 'is_pingan_other_loan', '是否命中凭安其他机构借贷名单', 'Courier', '{\'trustutn_loan_otheragent\': [\'name\', \'card_id\', \'mobile\']}', '6', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:05', '2017-02-22 15:18:05', '46', 'is_pingan_overdue_loan', '是否命中凭安逾期名单', 'Courier', '{\'trustutn_loan_overdue\': [\'name\', \'card_id\', \'mobile\']}', '6', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:05', '2017-02-22 15:18:05', '47', 'is_recruitment', '是否统招', 'Courier', '{\'education_review_s\': [\'name\', \'card_id\']}', '5', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:05', '2017-02-22 15:18:05', '48', 'is_skyeye_black', '是否命中天眼黑名单', 'Courier', '{\'tianyan_black\': [\'card_id\', \'email\', \'mobile\']}', '4', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:05', '2017-02-22 15:18:05', '49', 'is_unclear_loan', '是否在未结清贷款申请记录中', 'Courier', '{\'loan_history\': [\'card_id\']}', '6', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:05', '2017-02-22 15:18:05', '50', 'jiuyao_multi_loan_denied_count', '半年内拒贷次数', 'Courier', '{\'multi_loan_91\': [\'name\', \'card_id\']}', '6', '1', '1', '0,1000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:05', '2017-02-22 15:18:05', '51', 'jiuyao_multi_loan_m2_count', 'M2及M2以上次数', 'Courier', '{\'multi_loan_91\': [\'name\', \'card_id\']}', '6', '1', '1', '0,1000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:05', '2017-02-22 15:18:05', '52', 'last_industry_code', '上一份工作行业', 'Courier', '{\'portrait_data\': [\'proposer_id\']}', '3', '2', '3', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:05', '2017-02-22 15:18:05', '53', 'loan_infos', '91借贷信息', 'Courier', '{\'multi_loan_91\': [\'name\', \'card_id\']}', '6', null, null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:05', '2017-02-22 15:18:05', '54', 'marital_status', '婚姻状况', 'Courier', '{\'multi_id_card_info_s\': [\'name\', \'card_id\']}', '1', '2', '3', '未婚,已婚,丧偶,离异');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:05', '2017-02-22 15:18:05', '55', 'max_flight_area', '一年内飞机出行中最多出行区域', 'Courier', '{\'airline_passenger_info\': [\'name\', \'card_id\']}', '2', '2', '3', '国外，国内');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:05', '2017-02-22 15:18:05', '56', 'max_flight_class', '一年内飞机出行中最多机舱类型', 'Courier', '{\'airline_passenger_info\': [\'name\', \'card_id\']}', '2', '2', '3', '商务舱,公务舱,经济舱');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:05', '2017-02-22 15:18:05', '57', 'mobile', '手机号', 'Courier', '{\'apply_data\': [\'apply_id\']}', '1', null, null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:05', '2017-02-22 15:18:05', '58', 'mobile_activeness', '申请人手机号活跃度', 'Courier', '{\'trustutn_loan_phone\': [\'name\', \'card_id\', \'mobile\'],\'apply_data\': [\'apply_id\']}', '6', '1', '1', '0,10000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:05', '2017-02-22 15:18:05', '59', 'mobile_area_city_level', '归属地城市等级', 'Courier', '{\'mobile_locale\': [\'mobile\']}', '9', '2', '3', '一线,二线,三线,四线,其他');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:06', '2017-02-22 15:18:06', '60', 'mobile_area_code', '手机号码归属地', 'Courier', '{\'mobile_locale\': [\'mobile\']}', '9', null, null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:06', '2017-02-22 15:18:06', '61', 'mobile_identity', '手机实名验证', 'ShuntCourier', '{\'telecom_mobile_identity_s\': [\'name\', \'card_id\', \'mobile\'], \'unicom_mobile_identity_s\': [\'name\', \'card_id\', \'mobile\'], \'yd_mobile_identity_s\': [\'name\', \'card_id\', \'mobile\']}', '9', '2', '2', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:06', '2017-02-22 15:18:06', '62', 'mobile_mark', '手机号标记信息', 'Courier', '{\'trustutn_loan_phone\': [\'name\', \'card_id\', \'mobile\']}', '6', '2', '3', '查询结果命中,查询结果未命中');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:06', '2017-02-22 15:18:06', '63', 'mobile_stability', '申请人手机号稳定度', 'Courier', '{\'trustutn_loan_phone\': [\'name\', \'card_id\', \'mobile\'],\'apply_data\': [\'apply_id\']}', '6', '1', '1', '0,2');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:06', '2017-02-22 15:18:06', '64', 'name', '姓名', 'Courier', '{\'apply_data\': [\'apply_id\']}', '1', null, null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:06', '2017-02-22 15:18:06', '65', 'now_industry_code', '当前工作行业', 'Courier', '{\'portrait_data\': [\'proposer_id\']}', '3', '2', '3', null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:06', '2017-02-22 15:18:06', '66', 'now_work_time', '本份工作工作时间', 'Courier', '{\'portrait_data\': [\'proposer_id\']}', '3', '1', '1', '1,1000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:06', '2017-02-22 15:18:06', '67', 'now_workplace_code', '现在工作地点', 'Courier', '{\'portrait_data\': [\'proposer_id\']}', '3', null, null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:06', '2017-02-22 15:18:06', '68', 'online_time', '在网时长', 'ShuntCourier', '{\'telecom_mobile_online_time_s\': [\'mobile\'], \'unicome_mobile_online_time_s\': [\'mobile\'], \'yd_mobile_online_time_s\': [\'mobile\']}', '9', '1', '1', '(0,6),[6,12),[12,24),[24,+)');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:06', '2017-02-22 15:18:06', '69', 'overload_count', '超载次数', 'RelevanceCourier', '{\'high_way_over_load\': [\'car_number\'], \'cc_car_credit\': [\'name\', \'card_id\']}', '2', '1', '1', '0,10000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:06', '2017-02-22 15:18:06', '70', 'overspeed_count', '超速次数', 'RelevanceCourier', '{\'high_way_over_speed\': [\'car_number\'], \'cc_car_credit\': [\'name\', \'card_id\']}', '2', '1', '1', '0,10000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:06', '2017-02-22 15:18:06', '71', 'pingan_max_overdue_days', '金融逾期名单最长逾期天数（近6个月）', 'Courier', '{\'trustutn_loan_overdue\': [\'name\', \'card_id\', \'mobile\']}', '6', '1', '1', '0,1000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:06', '2017-02-22 15:18:06', '72', 'pingan_multi_loan_count', '多头借贷公司数量', 'Courier', '{\'trustutn_loan_loanmsg\': [\'name\', \'card_id\', \'mobile\']}', '6', '1', '1', '0,1000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:06', '2017-02-22 15:18:06', '73', 'pingan_multi_loan_infos', '多头借贷信息', 'Courier', '{\'trustutn_loan_loanmsg\': [\'name\', \'card_id\', \'mobile\']}', '6', null, null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:06', '2017-02-22 15:18:06', '74', 'pingan_other_loan_count', '其他信贷机构数量', 'Courier', '{\'trustutn_loan_otheragent\': [\'name\', \'card_id\', \'mobile\']}', '6', '1', '1', '0,1000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:07', '2017-02-22 15:18:07', '75', 'pingan_other_loan_infos', '其他机构借贷信息', 'Courier', '{\'trustutn_loan_otheragent\': [\'name\', \'card_id\', \'mobile\']}', '6', null, null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:07', '2017-02-22 15:18:07', '76', 'pingan_overdue_corp_count', '逾期公司数量', 'Courier', '{\'trustutn_loan_overdue\': [\'name\', \'card_id\', \'mobile\']}', '6', '1', '1', '0,1000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:07', '2017-02-22 15:18:07', '77', 'pingan_overdue_count', '金融逾期名单逾期次数（近6个月）', 'Courier', '{\'trustutn_loan_overdue\': [\'name\', \'card_id\', \'mobile\']}', '6', '1', '1', '0,1000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:07', '2017-02-22 15:18:07', '78', 'pingan_overdue_loan_infos', '逾期信息', 'Courier', '{\'trustutn_loan_overdue\': [\'name\', \'card_id\', \'mobile\']}', '6', null, null, null);
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:07', '2017-02-22 15:18:07', '79', 'register_city_level', '户籍城市等级', 'Courier', '{\'personal_info\': [\'name\', \'card_id\']}', '1', '2', '3', '一线,二线,三线,四线,其他');
INSERT INTO `fic_feature_common_conf` VALUES ('0', '2017-02-22 15:18:07', '2017-02-22 15:18:07', '80', 'work_time', '申请人工作时间', 'Courier', '{\'portrait_data\': [\'proposer_id\']}', '3', '1', '1', '1,1000');
INSERT INTO `fic_feature_common_conf` VALUES ('0', null, '0000-00-00 00:00:00', '86', '', '', null, null, '2', '1', '1', '0,1000000');

-- ----------------------------
-- Table structure for `fic_feature_process_info`
-- ----------------------------
DROP TABLE IF EXISTS `fic_feature_process_info`;
CREATE TABLE `fic_feature_process_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(100) NOT NULL,
  `feature_data_type` varchar(50) NOT NULL,
  `default_value` varchar(100) NOT NULL,
  `json_path_list` longtext,
  `reduce_chain` varchar(2048) DEFAULT NULL,
  `f_map_and_filter_chain` varchar(2048) DEFAULT NULL,
  `l_map_and_filter_chain` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fic_feature_process_info_feature_name_143f8c25_uniq` (`feature_name`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fic_feature_process_info
-- ----------------------------
INSERT INTO `fic_feature_process_info` VALUES ('1', 'is_netsky_grey', 'int', 'BooleanTypeDefault', '[(\'result\', \'$..result\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_to_bool(\'00\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('2', 'max_flight_area', 'int', 'PositiveSignedTypeDefault', '[(\'flight_times\', \'$..content.flight_times\', \'f_assert_not_null->f_assert_must_digit_or_float\'), (\'inland_count\', \'$..content.inland_count\', \'f_assert_not_null->f_assert_must_digit_or_float\'), (\'international_count\', \'$..content.international_count\', \'f_assert_not_null->f_assert_must_digit_or_float\')]', '', 'm_max_flight_area->f_assert_not_null->m_to_code(\'max_flight_area\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('3', 'industry_change_count', 'int', 'PositiveSignedTypeDefault', '[(\'industry\', \'$..work_exp_form[*].industry\', \'f_assert_not_null\')]', '', 'm_list_to_distinct->m_to_len(1)', '');
INSERT INTO `fic_feature_process_info` VALUES ('4', 'pingan_overdue_corp_count', 'int', 'PositiveSignedTypeDefault', '[(\'orgNums\', \'$..orgNums\', \'\')]', '', 'f_digit_or_float->m_to_int->m_to_sum', '');
INSERT INTO `fic_feature_process_info` VALUES ('5', 'last_industry_code', 'string', 'StringTypeDefault', '[(\'work_exp_form\', \'$..work_exp_form[*]\', \'f_assert_not_null->f_assert_must_dict\')]', '', 'm_get_new_list(\'work_end\',\'industry\')->f_assert_not_null->m_seq_inx_to_int()->m_seq_inx0_sort_in_list(True)->m_get_seq_index_value(0)->m_get_seq_index_value(1)', '');
INSERT INTO `fic_feature_process_info` VALUES ('6', 'is_pingan_multi_loan', 'int', 'PositiveSignedTypeDefault', '[(\'is_pingan_multi_loan\', \'$..result\', \'f_assert_not_null->f_assert_must_int\')]', '', 'm_get_seq_index_value(0)->m_to_bool(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('7', 'education_degree_code', 'int', 'PositiveSignedTypeDefault', '[(\'education_degree_code\', \'$..edu_exp_form[*].degree\', \'f_not_null->f_assert_must_digit\')]', '', 'm_to_int->r_min->m_to_str->m_to_code(\'education_degree_code\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('8', 'mobile_area_city_level', 'int', 'PositiveSignedTypeDefault', '[(\'mobile_area\', \'$..content.mobile_area\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_get_city_name->f_assert_not_null->m_city_name_to_level', '');
INSERT INTO `fic_feature_process_info` VALUES ('9', 'cur_employee_number', 'int', 'PositiveSignedTypeDefault', '[(\'staff_count\', \'$..staff_count\', \'f_assert_not_null\')]', '', 'm_get_seq_index_value(0)->m_to_int->m_to_code(\'cur_employee_number\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('10', 'is_net_black', 'int', 'BooleanTypeDefault', '[(\'result\', \'$..result\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_to_bool(\'00\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('11', 'company_addr_city_level', 'int', 'PositiveSignedTypeDefault', '[(\'address\', \'$..content.address\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_get_city_name->f_assert_not_null->m_city_name_to_level', '');
INSERT INTO `fic_feature_process_info` VALUES ('12', 'application_on_plus', 'string', 'StringTypeDefault', '[(\'application_on\', \'$..application_on\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_datetime_only_hour_minute', '');
INSERT INTO `fic_feature_process_info` VALUES ('13', 'register_city_level', 'int', 'PositiveSignedTypeDefault', '[(\'home_address\', \'$..content.home_address\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_get_city_name->f_assert_not_null->m_city_name_to_level', '');
INSERT INTO `fic_feature_process_info` VALUES ('14', 'pingan_other_loan_count', 'int', 'PositiveSignedTypeDefault', '[(\'orgNums\', \'$..orgNums\', \'\')]', '', 'f_digit_or_float->m_to_int->m_to_sum', '');
INSERT INTO `fic_feature_process_info` VALUES ('15', 'education_degree_check', 'string', 'StringTypeDefault', '[(\'degree\', \'$..content.degree.degree\', \'f_assert_not_null\')]', '', 'm_get_seq_index_value(0)->m_to_code(\'education_degree_check\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('16', 'is_cur_corp_shixin', 'int', 'BooleanTypeDefault', '[(\'result\', \'$..result\', \'f_assert_not_null\')]', '', 'm_get_seq_index_value(0)->m_to_bool(\'00\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('17', 'is_skyeye_black', 'int', 'BooleanTypeDefault', '[(\'result\', \'$..result\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_to_bool(\'00\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('18', 'work_time', 'int', 'PositiveSignedTypeDefault', '[(\'work_start\', \'$..work_exp_form[*].work_start\', \'f_assert_must_basestring\')]', '', 'f_not_null->f_assert_not_null->m_get_month_from_now', '');
INSERT INTO `fic_feature_process_info` VALUES ('19', 'now_industry_code', 'string', 'StringTypeDefault', '[(\'work_exp_form\', \'$..work_exp_form[*]\', \'f_assert_not_null->f_assert_must_dict\')]', '', 'm_get_new_list(\'work_end\',\'industry\')->f_assert_not_null->m_seq_inx_to_999999->m_get_seq_index_value(1)', '');
INSERT INTO `fic_feature_process_info` VALUES ('20', 'is_court_zhixing', 'int', 'BooleanTypeDefault', '[(\'result\', \'$..result\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_to_bool(\'00\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('21', 'complete_degree', 'int', 'PositiveSignedTypeDefault', '[(\'complete_degree\', \'$..complete_degree\', \'f_assert_not_null->f_assert_must_int\')]', '', 'm_get_seq_index_value(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('22', 'is_unclear_loan', 'int', 'BooleanTypeDefault', '[(\'is_unclear_loan\', \'$..res_data.is_unclear_loan\', \'f_assert_not_null->f_assert_must_digit\')]', '', 'm_to_int->m_get_seq_index_value(0)->m_to_bool', 'm_to_bool(1)');
INSERT INTO `fic_feature_process_info` VALUES ('23', 'jiuyao_multi_loan_denied_count', 'int', 'PositiveSignedTypeDefault', '[(\'contract_date\', \'$..loanInfos[*].contractDate\', \'\')]', 'm_to_len', 'f_digit_or_float->f_days_greater_than_args(180)->f_assert_not_null', '');
INSERT INTO `fic_feature_process_info` VALUES ('24', 'pingan_multi_loan_infos', 'string', 'StringTypeDefault', '[(\'record\', \'$..record\', \'f_assert_not_null\')]', '', 'm_del_invalid_value(6)', '');
INSERT INTO `fic_feature_process_info` VALUES ('25', 'graduate_college_check', 'string', 'StringTypeDefault', '[(\'college\', \'$..content.degree.college\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('26', 'income_expense_comparison', 'int', 'PositiveSignedTypeDefault', '[(\'debit\', \'$.unicom_finance_portrait_s.content.last12.debit\', \"m_get_income_expense_comparison(\'unicome\')\"), (\'rrx_inc_12m\', \'$.cc_credit.result.rrx_inc_12m\', \"m_get_income_expense_comparison(\'cc_credit\')\")]', '', 'f_not_null->f_assert_not_null->m_get_seq_index_value(0)->m_to_code(\'income_expense_comparison\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('27', 'cur_work_status', 'int', 'PositiveSignedTypeDefault', '[(\'cur_work_status\', \'$..cur_work_status\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_to_code(\'cur_work_status\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('28', 'pingan_multi_loan_count', 'int', 'PositiveSignedTypeDefault', '[(\'pingan_multi_loan_count\', \'$..orgNums\', \'f_not_null->f_assert_must_digit\')]', '', 'm_to_int->m_to_sum', '');
INSERT INTO `fic_feature_process_info` VALUES ('29', 'dc_bill_age', 'int', 'PositiveSignedTypeDefault', '[(\'dc_bill_age\', \'$..result.rrx_once_all.debit_card_account_age\', \'f_assert_not_null->f_assert_must_digit\')]', '', 'm_get_seq_index_value(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('30', 'creditcard_count', 'int', 'PositiveSignedTypeDefault', '[(\'creditcard_count\', \'$..result.rrx_once_all.credit_cards_num\', \'f_assert_not_null->f_assert_must_digit\')]', '', 'm_get_seq_index_value(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('31', 'car_count', 'int', 'PositiveSignedTypeDefault', '[(\'result\', \'$..result\', \'f_assert_jsonpath_true->f_assert_must_list\')]', '', 'f_not_null->m_to_len', '');
INSERT INTO `fic_feature_process_info` VALUES ('32', 'is_organization_g_black', 'int', 'PositiveSignedTypeDefault', '[(\'is_organization_g_black\', \'$..result\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_to_bool(\'00\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('33', 'is_pingan_overdue_loan', 'int', 'BooleanTypeDefault', '[(\'result\', \'$..result\', \'f_assert_not_null->f_assert_must_digit\')]', '', 'm_get_seq_index_value(0)->m_to_bool(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('34', 'is_mobile_black', 'bool', 'BooleanTypeDefault', '[(\'grayscale\', \'$..trustutn_loan_phone.data.grayscale\', \'f_assert_jsonpath_true->f_assert_must_dict\')]', '', 'm_get_seq_index_value(0)->m_to_bool', '');
INSERT INTO `fic_feature_process_info` VALUES ('35', 'airfare_sum12', 'float', 'PositiveSignedFloatTypeDefault', '[(\'average_price\', \'$..content.average_price\', \'f_assert_not_null->f_assert_must_digit_or_float\'), (\'flight_times\', \'$..content.flight_times\', \'f_assert_not_null->f_assert_must_digit\')]', 'r_mul', 'm_str_to_int_float_in_list', '');
INSERT INTO `fic_feature_process_info` VALUES ('36', 'pingan_other_loan_infos', 'list', 'ListTypeDefault', '[(\'data\', \'$..data\', \'f_assert_not_null\')]', '', 'm_del_invalid_value(2)', '');
INSERT INTO `fic_feature_process_info` VALUES ('37', 'has_negative_info', 'int', 'BooleanTypeDefault', '[(\'result\', \'$..result\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_to_bool(\'00\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('38', 'cur_company', 'str', 'StringTypeDefault', '[(\'work_exp_form\', \'$..work_exp_form\', \'f_assert_not_null->f_assert_must_list\')]', '', 'm_get_new_list(\'work_end\',\'comp_name\')->m_seq_inx0_sort_in_list(True)->m_get_seq_index_value(0)->m_get_seq_index_value(1)->f_assert_not_null', '');
INSERT INTO `fic_feature_process_info` VALUES ('39', 'mobile_identity', 'int', 'BooleanTypeDefault', '[(\'mobile_identity\', \'$.unicom_mobile_identity_s.result\', \'m_mobile_id_judge\'), (\'mobile_identity\', \'$.yd_mobile_identity_s.result\', \'m_mobile_id_judge\'), (\'mobile_identity\', \'$.telecom_mobile_identity_s.result\', \'m_mobile_id_judge\')]', '', 'm_to_sum->m_to_bool', '');
INSERT INTO `fic_feature_process_info` VALUES ('40', 'is_court_shixin', 'int', 'BooleanTypeDefault', '[(\'result\', \'$..result\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_to_bool(\'00\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('41', 'now_work_time', 'int', 'PositiveSignedTypeDefault', '[(\'work_exp_form\', \'$..work_exp_form[*]\', \'f_assert_not_null->f_assert_must_dict\')]', '', 'm_get_new_list(\'work_end\',\'work_start\')->f_assert_not_null->m_seq_inx0_sort_in_list(True)->m_get_seq_index_value(0)->m_r_to_now_work_time()', '');
INSERT INTO `fic_feature_process_info` VALUES ('42', 'overspeed_count', 'int', 'PositiveSignedTypeDefault', '[(\'overspeed_count\', \'$..month_times\', \'f_not_null->f_assert_not_null->f_assert_must_digit\')]', '', 'm_to_int->m_to_sum', '');
INSERT INTO `fic_feature_process_info` VALUES ('43', 'contacts', 'int', 'PositiveSignedTypeDefault', '[(\'contacts\', \'$..contacts\', \'f_assert_not_null->f_assert_must_digit\')]', '', 'm_to_int->m_get_seq_index_value(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('44', 'mobile_stability', 'float', 'PositiveSignedTypeDefault', '[(\'tags\', \'$..tags\', \'f_assert_not_null->f_assert_must_dict\'), (\'mobile\', \'$..apply_data.data.mobile\', \'f_assert_not_null\')]', '', 'f_mobile_m1_m5_sum_max_seq([\'callTimes\',\'calledTimes\'])->m_get_mobile_stability', '');
INSERT INTO `fic_feature_process_info` VALUES ('45', 'is_recruitment', 'int', 'BooleanTypeDefault', '[(\'education_approach\', \'$..education_approach\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_to_bool(\'普通全日制\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('46', 'gender', 'int', 'PositiveSignedTypeDefault', '[(\'sex\', \'$..content.sex\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_sex_to_code->m_to_code(\'gender\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('47', 'is_pingan_other_loan', 'int', 'BooleanTypeDefault', '[(\'result\', \'$..result\', \'f_assert_not_null->f_assert_must_digit\')]', '', 'm_get_seq_index_value(0)->m_to_bool(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('48', 'income_level', 'int', 'PositiveSignedTypeDefault', '[(\'portrait_data\', \'$.portrait_data.data.work_exp_form\', \"m_lp_income(0.56)->m_to_code(\'income_level\')\"), (\'cc_credit\', \'$..debit_card_12m_passentry_amount\', \"m_to_code(\'income_level_yd\')->m_single_to_list\"), (\'unicom_finance_portrait_s\', \'$..last12.debit.income_range\', \"m_to_code(\'income_level_lt\')->m_single_to_list\")]', '', 'm_to_sum', '');
INSERT INTO `fic_feature_process_info` VALUES ('49', 'mobile', 'string', 'StringTypeDefault', '[(\'mobile\', \'$..mobile\', \'f_assert_not_null\')]', '', 'm_get_seq_index_value(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('50', 'application_on', 'string', 'StringTypeDefault', '[(\'application_on\', \'$..application_on\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('51', 'folk', 'int', 'PositiveSignedTypeDefault', '[(\'nation\', \'$..content.nation\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_check_x_in_y(\'汉\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('52', 'is_netsky_black', 'int', 'PositiveSignedTypeDefault', '[(\'is_netsky_black\', \'$..result\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_to_bool(\'00\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('53', 'is_pingan_financial_shixin', 'bool', 'BooleanTypeDefault', '[(\'others\', \'$..others\', \'f_assert_jsonpath_true->f_assert_must_list\')]', '', 'm_to_bool', '');
INSERT INTO `fic_feature_process_info` VALUES ('54', 'now_workplace_code', 'int', 'PositiveSignedTypeDefault', '[(\'industry\', \'$..work_exp_form[*].industry\', \'f_assert_not_null->f_assert_must_basestring\'), (\'work_end\', \'$..work_exp_form[*].work_end\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'f_get_workplace_now', '');
INSERT INTO `fic_feature_process_info` VALUES ('55', 'mobile_area_code', 'string', 'StringTypeDefault', '[(\'mobile_area\', \'$..mobile_area\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('56', 'online_time', 'int', 'PositiveSignedTypeDefault', '[(\'online_time\', \'$.yd_online_time.content.online_time\', \'m_yd_online_time\'), (\'online_time\', \'$.unicom_online_time.content.online_time\', \'m_unicom_online_time\'), (\'online_time\', \'$.telecom_online_time.content.online_time\', \'m_telecom_online_time\')]', '', 'm_to_sum', '');
INSERT INTO `fic_feature_process_info` VALUES ('57', 'pingan_overdue_count', 'int', 'PositiveSignedTypeDefault', '[(\'recordNums\', \'$..recordNums\', \'\')]', '', 'f_digit_or_float->m_to_int->m_to_sum', '');
INSERT INTO `fic_feature_process_info` VALUES ('58', 'mobile_mark', 'string', 'StringTypeDefault', '[(\'mobile_mark\', \'$..tags.contactMain_IMSI1_IMEI1.label\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('59', 'graduate_college', 'string', 'StringTypeDefault', '[(\'school\', \'$..school\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('60', 'is_jiuyao_multi_loan', 'bool', 'BooleanTypeDefault', '[(\'loanInfos\', \'$..loanInfos\', \'f_assert_jsonpath_true->f_assert_must_list\')]', '', 'm_to_bool', '');
INSERT INTO `fic_feature_process_info` VALUES ('61', 'cur_corp_years', 'int', 'PositiveSignedTypeDefault', '[(\'start_business_date\', \'$..start_business_date\', \'f_assert_not_null\')]', '', 'm_get_seq_index_value(0)->m_get_date_to_now_years(2)->m_to_code(\'cur_corp_years\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('62', 'is_loan_agency', 'int', 'PositiveSignedTypeDefault', '[(\'is_loan_agency\', \'$..result\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_to_bool(\'00\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('63', 'card_id', 'string', 'StringTypeDefault', '[(\'card_id\', \'$..card_id\', \'f_assert_not_null\')]', '', 'm_get_seq_index_value(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('64', 'car_number', 'list', 'ListTypeDefault', '[(\'license_no\', \'$..license_no\', \'\')]', '', 'f_not_null->f_plate_number->f_assert_not_null', '');
INSERT INTO `fic_feature_process_info` VALUES ('65', 'apply_register_duration', 'float', 'PositiveSignedFloatTypeDefault', '[(\'application_on\', \'$.apply_data.data.application_on\', \'f_assert_not_null->f_assert_must_basestring\'), (\'registration_on\', \'$.portrait_data.data.registration_on\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_to_slice(0,10)->f_assert_seq0_gte_seq1->m_get_mon_sub(2)', '');
INSERT INTO `fic_feature_process_info` VALUES ('66', 'mobile_activeness', 'float', 'PositiveSignedTypeDefault', '[(\'tags\', \'$..tags\', \'f_assert_not_null->f_assert_must_dict\'), (\'mobile\', \'$..apply_data.data.mobile\', \'f_assert_not_null\')]', '', 'f_mobile_m1_m5_sum_max_seq([\'contactAmount\'])->m_seq_to_agv(2)', '');
INSERT INTO `fic_feature_process_info` VALUES ('67', 'loan_infos', 'list', 'ListTypeDefault', '[(\'loanInfos\', \'$..loanInfos\', \'f_assert_not_null->f_assert_must_list\')]', '', '', '');
INSERT INTO `fic_feature_process_info` VALUES ('68', 'name', 'string', 'StringTypeDefault', '[(\'name\', \'$..apply_data.name\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('69', 'overload_count', 'int', 'PositiveSignedTypeDefault', '[(\'overload_count\', \'$..month_times\', \'f_not_null->f_assert_not_null->f_assert_must_digit\')]', '', 'm_to_int->m_to_sum', '');
INSERT INTO `fic_feature_process_info` VALUES ('70', 'mobile_area_city_code', 'string', 'StringTypeDefault', '[(\'mobile_area\', \'$..content.mobile_area\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_get_city_name->f_assert_not_null->m_city_name_to_code', '');
INSERT INTO `fic_feature_process_info` VALUES ('71', 'max_flight_class', 'int', 'PositiveSignedTypeDefault', '[(\'business_class_count\', \'$..content.business_class_count\', \'f_assert_not_null->f_assert_must_digit\'), (\'executive_class_count\', \'$..content.executive_class_count\', \'f_assert_not_null->f_assert_must_digit\'), (\'tourist_class_count\', \'$..content.tourist_class_count\', \'f_assert_not_null->f_assert_must_digit\')]', '', 'm_to_int->m_max_flight_class->m_to_code(\'max_flight_class\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('72', 'marital_status', 'int', 'PositiveSignedTypeDefault', '[(\'marital_status\', \'$..content.marital_status\', \'f_assert_not_null->f_assert_must_digit\')]', '', 'm_get_seq_index_value(0)->m_marital_status->m_to_code(\'marital_status\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('73', 'pingan_max_overdue_days', 'int', 'PositiveSignedTypeDefault', '[(\'longestDays\', \'$..longestDays\', \'\')]', '', 'f_digit_or_float->m_to_int->m_to_sum', '');
INSERT INTO `fic_feature_process_info` VALUES ('74', 'gps_city_code', 'string', 'StringTypeDefault', '[(\'mobile_area\', \'$..addressComponent.city\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_get_city_name->f_assert_not_null->m_city_name_to_code', '');
INSERT INTO `fic_feature_process_info` VALUES ('75', 'pingan_overdue_loan_infos', 'list', 'ListTypeDefault', '[(\'record\', \'$..record\', \'f_assert_not_null\')]', '', 'm_del_invalid_value(6)', '');
INSERT INTO `fic_feature_process_info` VALUES ('76', 'cc_bill_age', 'int', 'PositiveSignedTypeDefault', '[(\'cc_bill_age\', \'$..result.rrx_once_all.credit_card_account_age\', \'f_assert_not_null->f_assert_must_digit\')]', '', 'm_get_seq_index_value(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('77', 'age', 'int', 'PositiveSignedTypeDefault', '[(\'age\', \'$..content.age\', \'f_assert_not_null->f_assert_must_digit_or_float\')]', '', 'm_get_seq_index_value(0)', '');
INSERT INTO `fic_feature_process_info` VALUES ('78', 'college_type', 'string', 'StringTypeDefault', '[(\'school_nature\', \'$..content.college.school_nature\', \'f_assert_not_null->f_assert_must_basestring\'), (\'degree\', \'$..content.degree.degree\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_college_type->m_to_code(\'college_type\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('79', 'education_tz', 'int', 'PositiveSignedTypeDefault', '[(\'edu_exp_form\', \'$..edu_exp_form[*]\', \'f_assert_not_null->f_assert_must_dict\')]', '', 'm_get_new_list(\'degree\',\'tz\')->m_seq_inx_to_int->m_seq_inx0_sort_in_list->m_get_seq_index_value(0)->m_get_seq_index_value(1)->f_assert_not_null', '');
INSERT INTO `fic_feature_process_info` VALUES ('80', 'is_netsky_multi_loan', 'int', 'BooleanTypeDefault', '[(\'result\', \'$..result\', \'f_assert_not_null->f_assert_must_basestring\')]', '', 'm_get_seq_index_value(0)->m_to_bool(\'00\')', '');
INSERT INTO `fic_feature_process_info` VALUES ('81', 'jiuyao_multi_loan_m2_count', 'int', 'PositiveSignedTypeDefault', '[(\'repay_state\', \'$..loanInfos[*].repayState\', \'f_assert_not_null->f_digit_or_float\')]', 'm_to_len', 'f_inside_stipulate_scope([3, 4, 5, 6, 7, 8])', '');

-- ----------------------------
-- Table structure for `fic_feature_relevance_conf`
-- ----------------------------
DROP TABLE IF EXISTS `fic_feature_relevance_conf`;
CREATE TABLE `fic_feature_relevance_conf` (
  `is_delete` tinyint(1) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(64) NOT NULL,
  `depend_feature` varchar(64) DEFAULT NULL,
  `data_identity` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fic_feature_relevance_conf
-- ----------------------------
INSERT INTO `fic_feature_relevance_conf` VALUES ('0', '2017-02-28 14:39:58', '2017-03-27 15:17:30', '1', 'overload_count', 'car_number', 'high_way_over_load');
INSERT INTO `fic_feature_relevance_conf` VALUES ('0', '2017-02-28 14:40:01', '2017-03-14 16:34:53', '2', 'overspeed_count', 'car_number', 'high_way_over_speed');
INSERT INTO `fic_feature_relevance_conf` VALUES ('0', '2017-02-28 14:40:04', '2017-02-28 14:40:15', '3', 'car_number', '', 'cc_car_credit');
INSERT INTO `fic_feature_relevance_conf` VALUES ('0', '2017-03-20 17:33:28', '2017-03-20 17:33:30', '4', 'is_net_black', 'is_court_zhixing', 'net_black_a_s');
INSERT INTO `fic_feature_relevance_conf` VALUES ('0', '2017-03-20 17:34:22', '2017-03-20 17:34:23', '5', 'is_court_zhixing', null, 'court_zhixing_a_s');
INSERT INTO `fic_feature_relevance_conf` VALUES ('0', '2017-03-20 17:34:58', '2017-03-20 17:35:00', '6', 'gyf3', null, 'gyfd7');
INSERT INTO `fic_feature_relevance_conf` VALUES ('0', '2017-03-20 17:35:52', '2017-03-20 17:35:54', '7', 'gyf4', null, 'gyfd8');

-- ----------------------------
-- Table structure for `fic_feature_rule_type`
-- ----------------------------
DROP TABLE IF EXISTS `fic_feature_rule_type`;
CREATE TABLE `fic_feature_rule_type` (
  `is_delete` tinyint(1) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_type_desc` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fic_feature_rule_type
-- ----------------------------
INSERT INTO `fic_feature_rule_type` VALUES ('0', '2017-03-24 11:18:38', '2017-03-24 11:18:48', '1', '数值型');
INSERT INTO `fic_feature_rule_type` VALUES ('0', '2017-03-24 11:18:41', '2017-03-24 11:18:50', '2', '是否型');
INSERT INTO `fic_feature_rule_type` VALUES ('0', '2017-03-24 11:18:43', '2017-03-24 11:18:52', '3', '枚举型');
INSERT INTO `fic_feature_rule_type` VALUES ('0', '2017-03-24 11:18:46', '2017-03-24 11:18:55', '4', '其他');

-- ----------------------------
-- Table structure for `fic_feature_shunt_conf`
-- ----------------------------
DROP TABLE IF EXISTS `fic_feature_shunt_conf`;
CREATE TABLE `fic_feature_shunt_conf` (
  `is_delete` tinyint(1) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(64) NOT NULL,
  `shunt_key` varchar(64) NOT NULL,
  `shunt_type` varchar(256) NOT NULL,
  `shunt_value` varchar(256) NOT NULL,
  `data_identity` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fic_feature_shunt_conf
-- ----------------------------
INSERT INTO `fic_feature_shunt_conf` VALUES ('0', '2017-02-16 14:21:13', '2017-03-27 11:36:19', '1', 'online_time', 'mobile', 'PhoneOperator', '(\'TMN\', )', 'telecom_mobile_online_time_s');
INSERT INTO `fic_feature_shunt_conf` VALUES ('0', '2017-02-16 14:21:13', '2017-02-16 14:21:13', '2', 'online_time', 'mobile', 'PhoneOperator', '(\'UMN\', )', 'unicome_mobile_online_time_s');
INSERT INTO `fic_feature_shunt_conf` VALUES ('0', '2017-02-16 14:21:13', '2017-02-16 14:21:13', '3', 'online_time', 'mobile', 'PhoneOperator', '(\'YMN\', )', 'yd_mobile_online_time_s');
INSERT INTO `fic_feature_shunt_conf` VALUES ('0', '2017-02-16 14:21:13', '2017-02-16 14:21:13', '4', 'mobile_identity', 'mobile', 'PhoneOperator', '(\'TMN\', )', 'telecom_mobile_identity_s');
INSERT INTO `fic_feature_shunt_conf` VALUES ('0', '2017-02-16 14:21:13', '2017-02-16 14:21:13', '5', 'mobile_identity', 'mobile', 'PhoneOperator', '(\'UMN\', )', 'unicom_mobile_identity_s');
INSERT INTO `fic_feature_shunt_conf` VALUES ('0', '2017-02-16 14:21:14', '2017-02-16 14:21:14', '6', 'mobile_identity', 'mobile', 'PhoneOperator', '(\'YMN\', )', 'yd_mobile_identity_s');
INSERT INTO `fic_feature_shunt_conf` VALUES ('1', '2017-02-16 14:21:14', '2017-02-16 14:21:14', '7', 'income_level', 'mobile', 'PhoneOperator', '(\'UMN\', )', 'unicom_finance_portrait_s');
INSERT INTO `fic_feature_shunt_conf` VALUES ('0', '2017-02-16 14:21:14', '2017-02-16 14:21:14', '8', 'income_level', 'mobile', 'PhoneOperator', '(\'TMN\', \'UMN\', \'YMN\')', 'cc_credit');
INSERT INTO `fic_feature_shunt_conf` VALUES ('0', '2017-02-16 14:21:14', '2017-03-14 16:03:26', '9', 'income_level', 'mobile', 'PhoneOperator', '(\'TMN\', \'UMN\', \'YMN\')', 'portrait_data');
INSERT INTO `fic_feature_shunt_conf` VALUES ('0', '2017-02-16 14:21:14', '2017-02-16 14:21:14', '12', 'income_expense_comparison', 'mobile', 'PhoneOperator', '(\'UMN\', )', 'unicom_finance_portrait_s');
INSERT INTO `fic_feature_shunt_conf` VALUES ('0', '2017-02-16 14:21:14', '2017-02-16 14:21:14', '13', 'income_expense_comparison', 'mobile', 'PhoneOperator', '(\'TMN\', \'UMN\', \'YMN\')', 'cc_credit');
INSERT INTO `fic_feature_shunt_conf` VALUES ('1', '2017-02-16 14:21:14', '2017-02-16 14:21:14', '14', 'income_expense_comparison', 'mobile', 'PhoneOperator', '(\'TMN\', \'UMN\', \'TMN\')', 'portrait_data');

-- ----------------------------
-- Table structure for `fic_feature_type`
-- ----------------------------
DROP TABLE IF EXISTS `fic_feature_type`;
CREATE TABLE `fic_feature_type` (
  `is_delete` tinyint(1) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_type_desc` varchar(2048) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fic_feature_type
-- ----------------------------
INSERT INTO `fic_feature_type` VALUES ('0', '2017-03-24 11:19:28', '2017-03-24 11:19:45', '1', '个人基本信息');
INSERT INTO `fic_feature_type` VALUES ('0', '2017-03-24 11:19:31', '2017-03-24 11:19:44', '2', '出行信息');
INSERT INTO `fic_feature_type` VALUES ('0', '2017-03-24 11:19:33', '2017-03-24 11:19:42', '3', '工作信息');
INSERT INTO `fic_feature_type` VALUES ('0', '2017-03-24 11:19:34', '2017-03-24 11:19:40', '4', '公开黑名单信息');
INSERT INTO `fic_feature_type` VALUES ('0', '2017-03-24 11:19:36', '2017-03-24 11:19:38', '5', '教育信息');
INSERT INTO `fic_feature_type` VALUES ('0', '2017-03-28 09:43:21', '2017-03-28 09:43:31', '6', '历史借贷信息');
INSERT INTO `fic_feature_type` VALUES ('0', '2017-03-28 09:43:23', '2017-03-28 09:43:35', '7', '埋点信息');
INSERT INTO `fic_feature_type` VALUES ('0', '2017-03-28 09:43:26', '2017-03-28 09:43:37', '8', '银行卡信息');
INSERT INTO `fic_feature_type` VALUES ('0', '2017-03-28 09:43:28', '2017-03-28 09:43:40', '9', '运营商信息');

-- ----------------------------
-- Table structure for `fic_func_lib`
-- ----------------------------
DROP TABLE IF EXISTS `fic_func_lib`;
CREATE TABLE `fic_func_lib` (
  `func_name` varchar(80) NOT NULL,
  `func_desc` longtext,
  `func_type` varchar(10) NOT NULL,
  PRIMARY KEY (`func_name`),
  KEY `fic_func_lib_a7ed5312` (`func_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fic_func_lib
-- ----------------------------
INSERT INTO `fic_func_lib` VALUES ('f_assert_jsonpath_true(seq)', '假设jsonpath查询到的为true seq为[]空列表时代表没查到字段', 'A');
INSERT INTO `fic_func_lib` VALUES ('f_assert_must_basestring(value_list)', '检测列表中的元素是否为字符串', 'A');
INSERT INTO `fic_func_lib` VALUES ('f_assert_must_between(value_list, args)', '\n    检测列表中的元素是否为数字或浮点数且在args的范围内\n\n    :param value_list: 待检测列表\n    :param args:        范围列表\n    :return:            异常或原值\n\n    example：\n                :value_list  [2, 2, 3]\n                :args  [1,3]\n\n                :value_list  [\'-2\', \'-3\', 3]\n                :args  [\'-5\',3]\n    ', 'A');
INSERT INTO `fic_func_lib` VALUES ('f_assert_must_dict(value_list)', '检测列表中的元素是否为dict类型', 'A');
INSERT INTO `fic_func_lib` VALUES ('f_assert_must_digit(value_list, args=False)', '\n        检测列表中的元素是否为数字\n        :param value_list: 待检测列表\n        :param args:        负数是否通过 false 不通过报异常 True 负数通过\n        :return:            异常或原值\n\n        example：\n                    :value_list  [-2,\'-2\', 3]\n                    :args  false\n                    ：return 异常\n\n                    :value_list  [-2,\'-2\', 3]\n                    :args  True\n                    ：return [-2,\'-2\', 3]\n\n    ', 'A');
INSERT INTO `fic_func_lib` VALUES ('f_assert_must_digit_or_float(value_list, args=False)', '\n        检测列表中的元素是否为数字或float, args=false 负数报异常 True 负数通过\n\n        :param value_list: 待检测列表\n        :param args:        负数是否通过 false 不通过报异常 True 负数通过\n        :return:            异常或原值\n\n        example：\n                    :value_list  [-2.0,\'-2\', 3]\n                    :args  false\n                    ：return 异常\n\n                    :value_list  [-2.0,\'-2\', 3]\n                    :args  True\n                    ：return [-2.0,\'-2\', 3]\n    ', 'A');
INSERT INTO `fic_func_lib` VALUES ('f_assert_must_int(value_list)', '检测列表中的元素是否为int类型', 'A');
INSERT INTO `fic_func_lib` VALUES ('f_assert_must_list(value_list)', '检测列表中的元素是否为list类型', 'A');
INSERT INTO `fic_func_lib` VALUES ('f_assert_not_null(seq)', '检测值是否非空或值得列表是否存在非空元素', 'A');
INSERT INTO `fic_func_lib` VALUES ('f_assert_seq0_gte_seq1(value_list)', '检测列表中的第一个元素是否大于等于第二个元素', 'A');
INSERT INTO `fic_func_lib` VALUES ('f_days_greater_than_args(seq, args)', '\n    过滤掉时间距离现在大于指定天数的元素\n    :param seq: 时间戳列表\n    :param args: 指定天数\n    :return: 时间戳列表\n    ', 'F');
INSERT INTO `fic_func_lib` VALUES ('f_digit_or_float(seq)', '过滤出数字或float的值', 'F');
INSERT INTO `fic_func_lib` VALUES ('f_get_workplace_now(seq)', '取当前工作地点', 'F');
INSERT INTO `fic_func_lib` VALUES ('f_inside_stipulate_scope(seq, args)', '\n    过滤不在指定范围内的列表元素\n    :param seq: 原始列表\n    :param args: 指定元素范围值  (列表)\n    :return: 过滤后列表\n    ', 'F');
INSERT INTO `fic_func_lib` VALUES ('f_mobile_m1_m5_sum_max_seq(seq, args)', '获取 mobile字符串在 tags字典中 1月到5月 某些key值sum最大的序列', 'F');
INSERT INTO `fic_func_lib` VALUES ('f_not_null(seq)', '过滤非空值', 'F');
INSERT INTO `fic_func_lib` VALUES ('f_plate_number(seq)', '\n        过滤列表中合法的车牌号\n\n        :param seq: 车牌号列表\n        :return:    合法的车牌号列表\n\n        example：\n                :seq  [\'冀BF876R\', u\'京BF688R\', \'京123456\']\n\n                :return  [\'冀BF876R\', \'京BF688R\']\n    ', 'F');
INSERT INTO `fic_func_lib` VALUES ('m_check_code(seq, args=None)', '\n    将数值转化成对应的code\n    :param seq:  上一步得到的数据\n    :param args:  [feature_name,操作符]\n    :return:  对应code\n\n    example：\n                :data:         20\n                :args         [\'education_degree_code\',\'gte_lt\']\n                :return         2\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_check_x_in_y(seq, args)', '\n        判断x是否在y中 返回0/1\n        :param seq: 字符串、元组、字典、列表\n        :param args: 判断元素\n        :return:    0/1\n        example：\n                :seq  \'汉族\'\n                :args   \'汉\'\n                :return  1\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_city_name_to_code(city_name)', '\n       获取城市名所对应的Code\n        :param city_name: 城市\n        :return:    code\n        example：\n                :address  \'北京\'\n                :return  1\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_city_name_to_level(city_name)', '\n       获取城市名所对应的level\n        :param city_name: 城市\n        :return:    code\n        example：\n                :address  \'北京\'\n                :return  1\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_college_type(seq)', '\n    获取学校的类型信息\n    当学校的类型是985,211工程院校时：\n        :param seq:【“985,211工程院校”，“本科”】\n        :return:【“985工程院校”】\n    当学校的类型是211工程院校时：\n        :param seq:【“211工程院校”，“硕士”】\n        :return:【“211工程院校”】\n    当学校的类型是普通本科或者专科时：\n       如果获取的某人的学历信息是博士、硕士和本科时\n       输出的学校类型为普通本科\n       :param seq:【“****”，“硕士”】\n       :return:【“普通本科”】\n       如果获取的某个人的学历信息时专科时：\n       输出的学校类型为专科\n       :param seq:【“****”，“专科”】\n       :return:【“专科”】\n\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_datetime_only_hour_minute(seq)', '\n        时间字符串只保留时分\n\n        :param seq: 日期字符串 或 日期字符串组成的列表\n        :return:    日期字符串只保留时分\n\n        example：\n                :seq  [\'2017-01-01 12:20:00\', \'2017-02-28 09:10:30\']\n                :return  [\'12:20\', \'09:10\']\n\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_del_dict_invalid_value(seq, args=1)', '\n    删除列表中的无效值 None \'\' {} [] 0 False\n    :param seq: 原始字典\n    :param args: 字典深度即循环的次数\n    :return: 转换后的字典\n    example：\n                :seq  data = {\n                                \"matchType\": \"\",\n                                \"matchValue\": \"\",\n                                \"matchId\": \"\",\n                                \"classification\": [\n                                    {\n                                        \"M3\": {\n                                            \"bankCredit\": 0,\n                                            \"otherLoan\": {\n                                                \"longestDays\": \'\'\n                                            },\n                                            \"otherCredit\": None,\n                                            \"bankLoan\": None\n                                        }\n                                    },\n                                    {}\n                                ]\n                            }\n                :args   5\n                :return  {}\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_del_invalid_value(seq, args=1)', '\n        删除列表中的无效值 None \'\' {} [] 0 False\n        :param seq: 原始序列 list\n        :param args: seq深度即循环的次数\n        :return:    转换后的列表\n        example：\n                :seq  data = [{\n                                \"matchType\": \"\",\n                                \"matchValue\": \"\",\n                                \"matchId\": \"\",\n                                \"classification\": [\n                                    {\n                                        \"M3\": {\n                                            \"bankCredit\": 0,\n                                            \"otherLoan\": {\n                                                \"longestDays\": \'\'\n                                            },\n                                            \"otherCredit\": None,\n                                            \"bankLoan\": None\n                                        }\n                                    },\n                                    {}\n                                ]\n                            }]\n                :args   6\n                :return  []\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_dict_key_sort_in_list(seq, args=False)', '\n        对列表中字典按key排序，返回新的列表\n        :param seq: 字典形成的列表\n        :param args: 是否倒序 True or False\n        :return:    排序后的列表\n        example：\n                :seq  [{\'20160708\': \'gyf\'}, {\'20180505\': \'zme\'}, {\'20170101\': \'zkp\'}]\n                :args   True\n                :return  [{\'20180505\': \'zme\'}, {\'20170101\': \'zkp\'}, {\'20160708\': \'gyf\'}]\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_digit_to_floor(seq)', '\n        向下取整\n        :param seq: 整数、浮点数后他们的字符串\n        :return:    小于seq的最大整数\n        example：\n                :seq  \'-23.4\'\n                :return  -24\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_education_degree_check(seq, feature_name)', '\n       获取单值匹配(不是区间)所对应的Code\n\n        :param feature_name: 特征名称\n        :param seq: 特征对应的返回值\n        :return:    code\n\n        example：\n                :feature_name education_degree_check\n                :data: 30\n                :return  2\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_get_city_name(address)', '\n        提取公司所在地址的城市名称\n        :param address: 地址\n        :return:    城市\n        example：\n                :address  \'日照市黄海一路兴业国际商城001号楼01单元903号\'\n                :return  \'日照\'\n                :address  \'广州\'\n                :return  \'广州\'\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_get_city_name1(city)', '\n           m_get_city_name 包含 m_get_city_name1 这个弃用\n            提取公司所在地址的城市名称\n            :param city: 地址\n            :return:    城市\n            example：\n                    :address  \'beijing\'\n                    :return  \'北京\'\n                    :address  \'广州\'\n                    :return  \'广州\'\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_get_date_to_now_years(seq, args=None)', '\n        返回传进来的时间字符串距离现在的年数 args保留小数点位数\n        :param seq: 日期字符串\n        :param args: 保留小数点位数\n        :return:    距离现在的年数\n        example：\n                :seq  \'2016-01-01\'\n                :args   2\n                :return  0.16\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_get_dict_value_in_list(seq, args)', '\n        获取列表中字典某个元素的值 返回值得列表\n        :param seq: 字典形成的列表\n        :param args: 获取的元素\n        :return:    获取的元素的值得列表\n        example：\n                :seq  [{\"work_end\": \"20170605\",\"industry\": \"string\",\"comp_name\": c,},\n                        {\"comp_name\": \"腾讯\",\"work_end\": \"20180809\",\"industry\": \"string\",}]\n                :args   \'comp_name\'\n                :return  [\'百度\'， \'腾讯\']\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_get_mobile_m1_m5_key_seq(seq)', '\n        获取 mobile字符串在 tags字典中 1月到5月存在的key_list中key值的和的列表\n\n        :param seq: 查询的手机字符串\n        :param tags:      含多种手机信息的字典\n        :param key_list:   查询的字段\n        :return:        该手机号1月到5月 在key_list中值的和 形成的列表\n        example：\n                :mobilestr  18920019796_8a404758b8f8b87c70006b8e9f4614db_\n                :targs {\n                        \'18920019796_8a404758b8f8b87c70006b8e9f4614db_\': {\n                        \'M5\': {\'callTimes\': 3,\'calledTimes\': 2},\n                        \'M4\': {\'callTimes\': 8,\'calledTimes\': 20},\n                        \'M3\': {\'month\': \'201610\'}},}}\n                :args   [\'callTimes\', \'calledTimes\']\n                :return  [28, 5]\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_get_mobile_m1_m5_key_seq1(mobilestr)', '\n        获取 mobile字符串在 tags字典中 1月到5月存在的key_list中key值的和的列表\n\n        :param mobilestr: 查询的手机字符串\n        :param tags:      含多种手机信息的字典\n        :param key_list:   查询的字段\n        :return:        该手机号1月到5月 在key_list中值的和 形成的列表\n\n        example：\n                :mobilestr  18920019796_8a404758b8f8b87c70006b8e9f4614db_\n                :targs {\n                        \'18920019796_8a404758b8f8b87c70006b8e9f4614db_\': {\n                        \'M5\': {\'callTimes\': 3,\'calledTimes\': 2},\n                        \'M4\': {\'callTimes\': 8,\'calledTimes\': 20},\n                        \'M3\': {\'month\': \'201610\'}},}}\n\n                :args   [\'callTimes\', \'calledTimes\']\n                :return  [28, 5]\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_get_mobile_stability(seq)', '获取手机号的稳定度', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_get_month_from_now(seq)', '\n    计算时间字符串列表中时间距离今天的最长月数\n    计算逻辑为天数除以30\n    时间字符串\'999999\'代表当前  做去除处理\n    :param seq: 时间戳列表\n    :return: 传入列表中距离当前时间最长的月数\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_get_mon_sub(seq, args=None)', '\n        比较传进来的由两个日期字符串组成的seq之间相差的月数 args保留小数点位数\n        :param seq: 日期字符串\n        :param args: 保留小数点位数\n        :return:    相差的月数\n        example：\n                :seq  [\'2017-01-01\', \'2016-01-01\']\n                :args   2\n                :return  12.2\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_get_new_dict(seq, args)', '\n        对列表中的字典map成 args对应的字典列表\n        :param seq: 字典形成的列表\n        :param args: 获取的元素列表，只能是两个元素\n        :return:    得到的新的字典列表\n        example：\n                :seq  [{\"work_end\": \"20170605\",\"industry\": \"string\",\"comp_name\": \"百度\",},\n                        {\"comp_name\": \"腾讯\",\"work_end\": \"20180809\",\"industry\": \"string\",}]\n                :args   [\'work_end\',\'comp_name\']\n                :return  [{\"20170605\":\"百度\"},{\"20180809\":\"腾讯\"}]\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_get_new_list(seq, args)', '\n            对列表中的字典map成 args对应的列表的列表\n            :param seq: 字典形成的列表\n            :param args: 获取的元素列表，只能是两个元素\n            :return:    得到的新的 列表形成的列表\n            example：\n                    :seq  [{\"work_end\": \"20170605\",\"industry\": \"string\",\"comp_name\": \"百度\",},\n                            {\"comp_name\": \"腾讯\",\"work_end\": \"20180809\",\"industry\": \"string\",}]\n                    :args   [\'work_end\',\'comp_name\']\n                    :return  [[\"20170605\",\"百度\"],[\"20180809\",\"腾讯\"]]\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_get_seq_index_value(seq, args)', '\n        获取序列中指定索引的值\n        :param seq: 可以为字符串、列表\n        :param args: 索引\n        :return:    索引值\n        example：\n                :seq  [1, -2]\n                :args   0\n                :return  1\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_get_work_status_map(seq, feature_name)', '\n    对seq数据针对工作状态匹配相应code码\n    :param seq: 工作状态(汉子字符串)\n    :param feature_name: 特征名称分\n    :return: 工作状态code码\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_lp_income(seq, discount)', '\n       获取猎聘返回的用户年收入,即最近一份工作的月薪个数与月薪的乘积,乘以折扣比率,保留两位小数\n\n        :param seq: 职业信息列表\n        :param discount: 年薪的折扣比率\n\n        :return:  年收入\n\n        example：\n                :seq: [\"work_exp_form\": [{\n                        \"months\": 13,\n                        \"salary\": 6000,\n                        \"work_end\": \"201006\",\n                    },\n                    {\n                        \"months\": 12,\n                        \"salary\": 12000,\n                        \"work_end\": \"200806\",\n                    },\n                    {\n                        \"months\": 12,\n                        \"salary\": 5000,\n                        \"work_end\": \"999999\",}]]\n\n                :discount: 0.56\n                :return  33600\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_marital_status_to_code(seq)', '\n        结婚状态的code值\n        :param seq: 整数\n        :return:    小于seq的最大10的倍数\n        example：\n                :seq  \'23\'\n                :return  20\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_max_flight_area(seq)', '\n       一年内飞机出行中最多出行区域的code\n        :param seq: 飞行次数、国内次数、国外次数\n        :return:    飞行次数==0 返回3    国内次数>国外次数 返回1 国外次数>国内次数 返回2\n        example：\n                :seq  [2, 2, 3]\n                :return  2\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_max_flight_class(seq)', '\n       一年内飞机出行中最多机舱类型的code\n        :param seq: [商务舱乘机次数、公务舱乘机次数、经济舱乘机次数]\n        :return:    code\n        example：\n                :seq  [2, 2, 3]\n                :return  1\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_mobile_id_judge(seq)', '\n    对手机号码三元素认证进行结果输出\n    分流逻辑特殊处理\n    :param seq: 传入数据\n    :return: 判断结果 列表\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_r_to_now_work_time(seq)', '\n    计算传入参数两个时间点距离当前时间的月数\n    计算逻辑:\n        距离今天的天数除以30得到月数, 时间\'999999\' 也代表今天\n    :param seq: 时间列表\n    :param args: 列表元素标记 标记比较接近当前时间的元素下标\n    :return:\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_seq_del_999999(seq)', null, 'M');
INSERT INTO `fic_func_lib` VALUES ('m_seq_inx0_sort_in_list(seq, args=False)', '\n        对列表中单个列表按第一个元素排序，返回新的列表\n        :param seq: 列表形成的列表\n        :param args: 是否倒序 True or False\n        :return:    排序后的列表\n        example：\n                :seq  [[\'20160708\', \'gyf\'], [\'20180505\', \'zme\'], [\'20170101\', \'zkp\']]\n                :args   True\n                :return  [[\'20180505\', \'zme\'], [\'20170101\', \'zkp\'], [\'20160708\', \'gyf\']]\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_seq_inx_to_999999(seq, args=0)', '\n        将列表中为‘999999’得提取出来\n        :param seq: 列表形成的列表\n        :param args: 列表的次序\n        :return:    转换后的列表\n        example：\n                :seq  [[\'30\', 0], [\'5\', 1]]\n                :args   0\n                :return  [[30, 0], [5, 1]]\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_seq_inx_to_int(seq, args=0)', '\n        将列表中单个列表中元素转成int，返回新的列表\n        :param seq: 列表形成的列表\n        :param args: 列表的次序\n        :return:    转换后的列表\n        example：\n                :seq  [[\'30\', 0], [\'5\', 1]]\n                :args   0\n                :return  [[30, 0], [5, 1]]\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_seq_to_agv(seq, args=None)', '\n        返回列表中值的平均值 args保留小数点位数\n        :param seq: 整数、浮点数组成的列表\n        :param args: 保留小数点位数\n        :return:    平均值\n        example：\n                :seq  [1,2,1.2]\n                :args   2\n                :return  1.4\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_sex_to_code(seq)', '\n        返回性别的code值\n        :param seq: 包含性别的字符串\n        :return:    code\n        example：\n                :seq  \'男生\'\n                :return  \'男\'\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_single_check_code(seq, feature_name)', '\n       获取单值匹配(不是区间)所对应的Code\n\n        :param feature_name: 特征名称\n        :param seq: 特征对应的返回值\n        :return:    code\n\n        example：\n                :feature_name education_degree_code\n                :seq: 20\n                :return  2\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_single_to_list(seq)', '\n\n    :param seq:\n    :return:\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_string_to_datetime(seq)', '\n        时间字符串转化为datetime对象\n        :param seq: 日期字符串 或 日期字符串组成的列表\n        :return:    datetime对象 或它的列表\n        example：\n                :seq  [\'2017-01-01\', \'2017-02-28\']\n                :return  [datetime.datetime(2017, 1, 1, 0, 0), datetime.datetime(2017, 2, 28, 0, 0)]\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_str_to_int_float_in_list(seq)', '\n    转换类表中的数字或浮点数 字符串为 int、float,别的元素不变\n    :param seq: 可以为任意值组成的列表\n    :return:转换后的列表\n    example：\n            :seq： [1, 2.1, \'2.1\', \'-2\', \'-8.8\' [] ,\'gyf\']\n            :return： [1, 2.1, 2.1, -2,-8.8, [], \'gyf\']\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_telecom_online_time(seq)', '\n       获取电信手机在网时长所对应的code\n\n        :param seq: 电信在网时长区间\n        :return:    code\n\n        example：\n                :seq: [0-6)\n                :return  1\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_to_bool(seq, args=None)', '\n        返回bool值0/1\n        :param seq: 任意值\n        :param args: 可不传 传时seq==args为1\n        :return:    0/1\n        example：\n                :seq  \'11\'\n                :args   \'00\'\n                :return  0\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_to_int(seq)', '\n    转换数字或序列为int类型\n    :param seq: 可以为int,float的数字或字符串 或 他们组成的列表\n    :return:int或int的列表\n    example：\n            :seq： [1, 2.1, \'2.1\', \'-2\']\n            :return： [1, 2, 2, -2]\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_to_len(seq, args=0)', '\n        求序列的长度\n        :param seq: 可以为字符串、列表\n        :param args: 减数\n        :return:    字符串、列表的长度\n        example：\n                :seq： [1, -2]\n                :args  0\n                :return： 2\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_to_power(seq)', '\n        转换为值的2次方\n        :param seq: 可以为int,float的数字组成的列表\n        :return:    列表中对应元素的2次方\n        example：\n                :seq： [1, -2]\n                :return： [1, -4]\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_to_slice(seq, args)', '\n        分片函数\n        :param seq: 分片序列 字符串 列表\n        :param args: 截取的范围\n        :return:    分片结果\n        example：\n                :seq  [\'abcd\',\'1234556\']\n                :args   [0,3]\n                :return  [\'abc\',\'123\']\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_to_str(seq)', '\n\n    :param seq:\n    :return:\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_to_sum(seq)', '\n        求序列中值得和\n        :param seq: 可以为整数、浮点数组成的列表\n        :return:    列表值得和\n        example：\n                :seq： [1, -2]\n                :return： -1\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_unicom_online_time(seq)', '\n       获取联通手机在网时长所对应的code\n\n        :param seq: 联通在网时长区间\n        :return:    code\n\n        example：\n                :seq: [0-1]\n                :return  1\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('m_yd_online_time(seq)', '\n       获取移动手机在网时长所对应的code\n\n        :param seq: 移动在网时长区间\n        :return:    code\n\n        example：\n                :seq: (0,3)\n                :return  1\n    ', 'M');
INSERT INTO `fic_func_lib` VALUES ('r_min(seq)', '\n\n    :param seq:\n    :return:\n    ', 'R');
INSERT INTO `fic_func_lib` VALUES ('r_mul(seq)', '\n        乘法\n\n        :param seq: 数字列表\n\n        example：\n                :seq  [1,2,1.2]\n                :return  2.4\n    ', 'R');
INSERT INTO `fic_func_lib` VALUES ('r_sub(seq)', '\n        减法\n\n        :param seq: 数字列表\n\n        example：\n                :seq  [1,2,1.2]\n                :return  -2.2\n    ', 'R');

-- ----------------------------
-- Table structure for `fic_interface_info`
-- ----------------------------
DROP TABLE IF EXISTS `fic_interface_info`;
CREATE TABLE `fic_interface_info` (
  `is_delete` tinyint(1) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `data_identity` varchar(64) NOT NULL,
  `route` varchar(128) NOT NULL,
  `method` varchar(32) NOT NULL,
  `must_data` varchar(1024) NOT NULL,
  `is_need_token` tinyint(1) NOT NULL,
  `is_need_encrypt` tinyint(1) NOT NULL,
  `is_async` tinyint(1) NOT NULL,
  `encrypt_type` varchar(32) DEFAULT NULL,
  `data_source_id` int(11) NOT NULL,
  `data_origin_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fic_interface_info_15a32e4a` (`data_source_id`),
  CONSTRAINT `fic_interface__data_source_id_28f7006_fk_fic_data_source_info_id` FOREIGN KEY (`data_source_id`) REFERENCES `fic_data_source_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fic_interface_info
-- ----------------------------
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:36', '2017-03-13 17:41:54', '1', '贷款中介查询', 'loan_agency', '/api/rule/gateway/', 'REMOTE', '{\'mobile\': \'%(mobile)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:36', '2017-02-15 10:45:36', '2', '机构G黑名单查询', 'agentg_black', '/api/rule/gateway/', 'REMOTE', '{\'id_card_name\': \'%(name)s\', \'id_card_code\': \'%(card_id)s\', \'mobile\': \'%(mobile)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:36', '2017-02-15 10:45:36', '3', '天网黑名单查询', 'tianwang_black', '/api/rule/gateway/', 'REMOTE', '{\'mobile\': \'%(mobile)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:36', '2017-02-15 10:45:36', '4', '天网多头贷款查询', 'tianwang_multi_loan', '/api/rule/gateway/', 'REMOTE', '{\'mobile\': \'%(mobile)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:36', '2017-02-15 10:45:36', '5', '天眼黑名单查询', 'tianyan_black', '/api/rule/gateway/', 'REMOTE', '{\'email\': \'%(email)s\', \'id_card_code\': \'%(card_id)s\', \'mobile\': \'%(mobile)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:36', '2017-02-15 10:45:36', '6', '法院失信被执行人查询', 'court_shixin_a_s', '/api/rule/gateway/', 'REMOTE', '{\'entity_name\': \'%(name)s\', \'entity_id\': \'%(card_id)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:36', '2017-02-15 10:45:36', '7', '网贷黑名单查询', 'net_black_a_s', '/api/rule/gateway/', 'REMOTE', '{\'id_card_name\': \'%(name)s\', \'id_card_code\': \'%(card_id)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:36', '2017-02-15 10:45:36', '8', '个人不良信息查询', 'negative_info_s', '/api/rule/gateway/', 'REMOTE', '{\'id_card_name\': \'%(name)s\', \'id_card_code\': \'%(card_id)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:36', '2017-02-15 10:45:36', '9', '天网灰名单查询', 'tianwang_gray', '/api/rule/gateway/', 'REMOTE', '{\'mobile\': \'%(mobile)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:36', '2017-02-15 10:45:36', '10', '法院被执行人查询', 'court_zhixing_a_s', '/api/rule/gateway/', 'REMOTE', '{\'entity_name\': \'%(name)s\', \'entity_id\': \'%(card_id)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:36', '2017-02-15 10:45:36', '11', '电信手机在网时长', 'telecom_mobile_online_time_s', '/api/rule/gateway/', 'REMOTE', '{\'mobile\': \'%(mobile)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:36', '2017-02-15 10:45:36', '12', '联通手机在网时长', 'unicome_mobile_online_time_s', '/api/rule/gateway/', 'REMOTE', '{\'mobile\': \'%(mobile)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:37', '2017-02-15 10:45:37', '13', '移动手机在网时长', 'yd_mobile_online_time_s', '/api/rule/gateway/', 'REMOTE', '{\'mobile\': \'%(mobile)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:37', '2017-02-15 10:45:37', '14', '凭安贷款逾期信息', 'trustutn_loan_overdue', '/api/rule/gateway/', 'REMOTE', '{\'phone\': \'%(mobile)s\', \'id_card\': \'%(card_id)s\', \'name\': \'%(name)s\'}', '0', '0', '0', '', '3', '4');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:37', '2017-02-15 10:45:37', '15', '凭安贷款黑名单信息', 'trustutn_loan_blacklist', '/api/rule/gateway/', 'REMOTE', '{\'phone\': \'%(mobile)s\', \'id_card\': \'%(card_id)s\', \'name\': \'%(name)s\'}', '0', '0', '0', '', '3', '4');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:37', '2017-02-15 10:45:37', '16', '91征信查询', 'multi_loan_91', '/api/rule/gateway/', 'REMOTE', '{\'real_name\': \'%(name)s\', \'id_card\': \'%(card_id)s\'}', '0', '0', '0', '', '3', '2');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:37', '2017-02-15 10:45:37', '17', '申请数据查询', 'apply_data', '/api/rule/gateway/', 'LOCALE', '{\'apply_id\': \'%(apply_id)s\'}', '0', '0', '0', '', '3', '0');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:37', '2017-02-15 10:45:37', '18', '个人基本信息查询', 'personal_info', '/api/rule/gateway/', 'REMOTE', '{\'id_card_name\': \'%(name)s\', \'id_card_code\': \'%(card_id)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:37', '2017-02-15 10:45:37', '19', '未结清贷款记录查询', 'loan_history', '/api/rule/gateway/', 'REMOTE', '{\'card_id\': \'%(card_id)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:37', '2017-02-15 10:45:37', '20', '预授信信息查询', 'portrait_data', '/api/rule/gateway/', 'LOCALE', '{\'proposer_id\': \'%(proposer_id)s\'}', '0', '0', '0', '', '3', '0');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:37', '2017-02-15 10:45:37', '21', 'GPS地址查询', 'geo_location', '/api/rule/gateway/', 'REMOTE', '{\'gps_longitude\': \'%(longitudu)s\', \'gps_latitude\': \'%(latitude)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:37', '2017-02-15 10:45:37', '22', '手机号码归属地查询', 'mobile_locale', '/api/rule/gateway/', 'REMOTE', '{\'mobile\': \'%(mobile)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:37', '2017-02-15 10:45:37', '23', '凭安多头贷款查询', 'trustutn_loan_loanmsg', '/api/rule/gateway/', 'REMOTE', '{\'phone\': \'%(mobile)s\', \'id_card\': \'%(card_id)s\', \'name\': \'%(name)s\'}', '0', '0', '0', '', '3', '4');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:37', '2017-02-15 10:45:37', '24', '凭安电话号码查询', 'trustutn_loan_phone', '/api/rule/gateway/', 'REMOTE', '{\'phone\': \'%(mobile)s\', \'id_card\': \'%(card_id)s\', \'name\': \'%(name)s\'}', '0', '0', '0', '', '3', '4');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:37', '2017-02-15 10:45:37', '25', '电信手机身份验证', 'telecom_mobile_identity_s', '/api/rule/gateway/', 'REMOTE', '{\'id_card_name\': \'%(name)s\', \'id_card_code\': \'%(card_id)s\', \'mobile\': \'%(mobile)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:37', '2017-02-15 10:45:37', '26', '联通手机身份验证', 'unicom_mobile_identity_s', '/api/rule/gateway/', 'REMOTE', '{\'id_card_name\': \'%(name)s\', \'id_card_code\': \'%(card_id)s\', \'mobile\': \'%(mobile)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:38', '2017-02-15 10:45:38', '27', '移动手机身份验证', 'yd_mobile_identity_s', '/api/rule/gateway/', 'REMOTE', '{\'id_card_name\': \'%(name)s\', \'id_card_code\': \'%(card_id)s\', \'mobile\': \'%(mobile)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:38', '2017-02-15 10:45:38', '28', '人人信', 'cc_credit', '/api/rule/gateway/', 'REMOTE', '{\'mobile\': \'%(mobile)s\'}', '0', '0', '0', '', '3', '8');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:38', '2017-02-15 10:45:38', '29', '人人信车辆信息查询', 'cc_car_credit', '/api/rule/gateway/', 'REMOTE', '{\'user_name\': \'%(name)s\', \'id_card_code\': \'%(card_id)s\'}', '0', '0', '0', '', '3', '16');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:38', '2017-02-15 10:45:38', '30', '高速超速信息查询', 'high_way_over_speed', '/api/rule/gateway/', 'REMOTE', '{\'license_plate\': \'%(car_number)s\', \'high_way_period\': \'4\', \'start_time\': \'\', \'end_time\': \'\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:38', '2017-02-15 10:45:38', '31', '高速超载信息查询', 'high_way_over_load', '/api/rule/gateway/', 'REMOTE', '{\'license_plate\': \'%(car_number)s\', \'high_way_period\': \'4\', \'start_time\': \'\', \'end_time\': \'\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:38', '2017-02-15 10:45:38', '32', '凭安贷款其他机构查询', 'trustutn_loan_otheragent', '/api/rule/gateway/', 'REMOTE', '{\'phone\': \'%(mobile)s\', \'id_card\': \'%(card_id)s\', \'name\': \'%(name)s\'}', '0', '0', '0', '', '3', '4');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:38', '2017-02-15 10:45:38', '33', '乘机人信息查询', 'airline_passenger_info', '/api/rule/gateway/', 'REMOTE', '{\'id_card_name\': \'%(name)s\', \'id_card_code\': \'%(card_id)s\',\'timestamp\':\'int(time.time())\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:38', '2017-02-15 10:45:38', '34', '联通金融画像查询', 'unicom_finance_portrait_s', '/api/rule/gateway/', 'REMOTE', '{\'mobile\': \'%(mobile)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:38', '2017-02-15 10:45:38', '35', '多项身份信息查询', 'multi_id_card_info_s', '/api/rule/gateway/', 'REMOTE', '{\'id_card_name\': \'%(name)s\', \'id_card_code\': \'%(card_id)s\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-15 10:45:38', '2017-02-15 10:45:38', '36', '企业工商信息查询', 'industrial_commercial_s', '/api/rule/gateway/', 'REMOTE', '{\'enterprise_name\': \'%(cur_company)s\', \'register_code\': \'\'}', '0', '0', '0', '', '3', '1');
INSERT INTO `fic_interface_info` VALUES ('0', '2017-02-27 17:11:16', '2017-02-27 17:11:19', '37', '学历信息查询', 'education_review_s', '/api/rule/gateway/', 'REMOTE', '{\'id_card_name\': \'%(name)s\', \'id_card_code\': \'%(card_id)s\',\'timestamp\':\'int(time.time())\'}', '0', '0', '0', null, '3', '1');

-- ----------------------------
-- Table structure for `fic_pre_field_info`
-- ----------------------------
DROP TABLE IF EXISTS `fic_pre_field_info`;
CREATE TABLE `fic_pre_field_info` (
  `is_delete` tinyint(1) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(64) NOT NULL,
  `field_name_cn` varchar(64) NOT NULL,
  `source` varchar(64) DEFAULT NULL,
  `path` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fic_pre_field_info
-- ----------------------------
INSERT INTO `fic_pre_field_info` VALUES ('0', '2017-02-22 18:23:40', '2017-02-22 18:23:40', '1', 'name', '姓名', 'apply_data', '$.data.name');
INSERT INTO `fic_pre_field_info` VALUES ('0', '2017-02-22 18:23:40', '2017-02-22 18:23:40', '2', 'card_id', '身份证号', 'apply_data', '$.data.card_id');
INSERT INTO `fic_pre_field_info` VALUES ('0', '2017-02-22 18:23:40', '2017-02-22 18:23:40', '3', 'mobile', '手机号', 'apply_data', '$.data.mobile');
INSERT INTO `fic_pre_field_info` VALUES ('0', '2017-02-22 18:23:40', '2017-02-22 18:23:40', '4', 'email', '邮箱', 'portrait_data', '$.data.email');
INSERT INTO `fic_pre_field_info` VALUES ('0', '2017-02-22 18:23:40', '2017-02-22 18:23:40', '5', 'cur_company', '当前工作单位', 'portrait_data', '$.data.work_exp_form[*].comp_name');
INSERT INTO `fic_pre_field_info` VALUES ('0', '2017-02-22 18:23:40', '2017-02-22 18:23:40', '6', 'latitude', '纬度', 'apply_data', '$.data.latitude');
INSERT INTO `fic_pre_field_info` VALUES ('0', '2017-02-22 18:23:41', '2017-02-22 18:23:41', '7', 'longitudu', '经度', 'apply_data', '$.data.longitudu');
INSERT INTO `fic_pre_field_info` VALUES ('0', '2017-02-23 10:52:05', '2017-02-23 10:52:09', '8', 'proposer_id', '申请人id', 'portrait_data', '$.proposer_id');

-- ----------------------------
-- Table structure for `hibernate_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES ('1');

-- ----------------------------
-- Table structure for `pgc_model_coefficient_conf`
-- ----------------------------
DROP TABLE IF EXISTS `pgc_model_coefficient_conf`;
CREATE TABLE `pgc_model_coefficient_conf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `model_name` varchar(128) NOT NULL,
  `coefficient` double NOT NULL,
  `income_interval_min` int(11) NOT NULL,
  `income_interval_max` int(11) NOT NULL,
  `computational_formula` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pgc_model_coefficient_conf
-- ----------------------------

-- ----------------------------
-- Table structure for `pgc_model_field_option_weight`
-- ----------------------------
DROP TABLE IF EXISTS `pgc_model_field_option_weight`;
CREATE TABLE `pgc_model_field_option_weight` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime NOT NULL,
  `model_name` varchar(128) NOT NULL,
  `field_name` varchar(128) NOT NULL,
  `field_option_value` varchar(20) DEFAULT NULL,
  `field_option_name` varchar(64) DEFAULT NULL,
  `field_option_weight` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pgc_model_field_option_weight
-- ----------------------------

-- ----------------------------
-- Table structure for `policy_set`
-- ----------------------------
DROP TABLE IF EXISTS `policy_set`;
CREATE TABLE `policy_set` (
  `policy_set_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `package_uuid` varchar(255) DEFAULT NULL,
  `package_value` longtext,
  `policy_set_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`policy_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of policy_set
-- ----------------------------
INSERT INTO `policy_set` VALUES ('3', '2017-04-01 18:09:04', 'com1491042550434684375215887', 'import com.digcredit.brms.model.*\r\nrule \"年龄判别11\"\r\nruleflow-group \"1\"\r\nwhen\r\n$applicant: Applicant(((age > 11)&&(age < 66)), accountStatus == Applicant.Status.PASS)\r\nthen\r\ninsert(new Rejection($applicant, \"非主流\"));\r\nmodify($applicant){setAccountStatus(Applicant.Status.REJECT)};\r\nend\r\nrule \"会很遗憾10\"\r\nruleflow-group \"1\"\r\nwhen\r\n$applicant: Applicant(((airfare_sum12 == 0)), accountStatus == Applicant.Status.PASS)\r\nthen\r\ninsert(new Rejection($applicant, \"申请年龄太小\"));\r\nmodify($applicant){setAccountStatus(Applicant.Status.REJECT)};\r\nend\r\nrule \"表格943\"\r\nruleflow-group \"1\"\r\nwhen\r\n$applicant: Applicant(((apply_register_duration == 1)), accountStatus == Applicant.Status.PASS)\r\nthen\r\ninsert(new Rejection($applicant, \"撒旦法\"));\r\nmodify($applicant){setAccountStatus(Applicant.Status.REJECT)};\r\nend', '策略集1');
INSERT INTO `policy_set` VALUES ('27', '2017-04-01 18:09:04', 'com1491049002979826874353574', 'package com1491049002979826874353574\r\nimport com.digcredit.brms.model.*\r\n', '策略集1');

-- ----------------------------
-- Table structure for `policy_set_test`
-- ----------------------------
DROP TABLE IF EXISTS `policy_set_test`;
CREATE TABLE `policy_set_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_value` longtext,
  `policy_set_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of policy_set_test
-- ----------------------------
INSERT INTO `policy_set_test` VALUES ('4', null, '策略集1');
INSERT INTO `policy_set_test` VALUES ('5', null, '策略集1');
INSERT INTO `policy_set_test` VALUES ('6', null, '策略集1');
INSERT INTO `policy_set_test` VALUES ('7', null, '策略集1');
INSERT INTO `policy_set_test` VALUES ('8', null, '策略集1');
INSERT INTO `policy_set_test` VALUES ('9', null, '策略集1');

-- ----------------------------
-- Table structure for `policy_set1`
-- ----------------------------
DROP TABLE IF EXISTS `policy_set1`;
CREATE TABLE `policy_set1` (
  `policy_set_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `policy_set_name` varchar(255) DEFAULT NULL,
  `package_value` longtext,
  `package_uuid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`policy_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of policy_set1
-- ----------------------------
INSERT INTO `policy_set1` VALUES ('1', '2017-03-22 16:04:51', '策略集1', 'package com1490755719795582177210786\r\nimport com.digcredit.brms.model.*\r\nimport java.util.List;\r\nimport com.digcredit.brms.service.*\r\n\r\nglobal ReportService reportService;\r\n\r\nrule \"rejection\"\r\n    when\r\n        $r : Rejection($applicant : Applicant)\r\n    then\r\n    	System.out.println(\"44444444444444444444444\");\r\nend\r\n\r\nrule \"年龄判别1123\"\r\nruleflow-group \"1\"\r\nwhen\r\n	$applicant: Applicant(((age > 11)&&(age < 66)), accountStatus == Applicant.Status.PASS)\r\nthen\r\n	System.out.println( \"==========================================11111111111111111111111111111\" );\r\nend\r\n\r\n\r\nrule \"年龄判别4422223\"\r\nruleflow-group \"1\"\r\nwhen\r\n	$applicant: Applicant(((age > 11)&&(age < 66)), accountStatus == Applicant.Status.PASS)\r\nthen\r\n	System.out.println( \"99999999999999999999999999999999999999999999999999999999999999999999999\" );\r\nend\r\n\r\nrule \"年龄判别44\"\r\nruleflow-group \"1\"\r\nwhen\r\n	$applicant: Applicant(((age > 11)&&(age < 66)), accountStatus == Applicant.Status.PASS)\r\nthen\r\n	System.out.println( \"=========================================44444444444444444444444444444444\" );\r\n	insert(new Rejection($applicant, \"非主流\"));\r\n	modify($applicant){setAccountStatus(Applicant.Status.REJECT)};\r\nend\r\n\r\n\r\n', 'com1490755719795582177210786');

-- ----------------------------
-- Table structure for `result_code`
-- ----------------------------
DROP TABLE IF EXISTS `result_code`;
CREATE TABLE `result_code` (
  `result_code_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `result_code` varchar(255) DEFAULT NULL,
  `result_reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`result_code_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of result_code
-- ----------------------------
INSERT INTO `result_code` VALUES ('1', '2017-03-22 13:49:26', 'D101', '申请人年龄不足');
INSERT INTO `result_code` VALUES ('2', '2017-03-22 13:49:27', 'D102', '申请人有未还清贷款');
INSERT INTO `result_code` VALUES ('3', '2017-03-22 13:49:28', 'D103', '申请人命中同业黑名单');

-- ----------------------------
-- Table structure for `rn_credit_card_drl_config`
-- ----------------------------
DROP TABLE IF EXISTS `rn_credit_card_drl_config`;
CREATE TABLE `rn_credit_card_drl_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `credit_card_drl` longtext,
  `package_uuid` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `policy_set_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl08p64us0qt8eftph8nrmbhgm` (`policy_set_id`),
  CONSTRAINT `FKl08p64us0qt8eftph8nrmbhgm` FOREIGN KEY (`policy_set_id`) REFERENCES `policy_set` (`policy_set_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rn_credit_card_drl_config
-- ----------------------------

-- ----------------------------
-- Table structure for `rn_credit_card_feature_config`
-- ----------------------------
DROP TABLE IF EXISTS `rn_credit_card_feature_config`;
CREATE TABLE `rn_credit_card_feature_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(255) DEFAULT NULL,
  `feature_weight` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `feature_card_type` int(11) DEFAULT NULL,
  `feature_name_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1jdar07ola0um20kwjb4j0s6e` (`model_id`),
  CONSTRAINT `FK1jdar07ola0um20kwjb4j0s6e` FOREIGN KEY (`model_id`) REFERENCES `rn_credit_card_model_config` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rn_credit_card_feature_config
-- ----------------------------
INSERT INTO `rn_credit_card_feature_config` VALUES ('1', 'age', '40', '1', '2017-03-27 18:54:58', '1', '年龄');
INSERT INTO `rn_credit_card_feature_config` VALUES ('2', 'airfare_sum12', '60', '1', '2017-03-27 18:54:58', '2', '一年中乘机总票价');
INSERT INTO `rn_credit_card_feature_config` VALUES ('3', 'apply_register_duration', '50', '2', '2017-03-27 18:54:58', '2', '注册时间长度');
INSERT INTO `rn_credit_card_feature_config` VALUES ('4', 'car_count', '40', '2', '2017-03-27 18:54:58', '2', '车辆个数');
INSERT INTO `rn_credit_card_feature_config` VALUES ('5', 'car_number', '10', '2', '2017-03-27 18:54:58', '1', '车牌号');
INSERT INTO `rn_credit_card_feature_config` VALUES ('6', 'card_id', '30', '3', '2017-03-27 18:54:58', '2', '身份证号');
INSERT INTO `rn_credit_card_feature_config` VALUES ('7', 'cc_bill_age', '70', '3', '2017-03-27 18:54:58', '2', '贷记卡账龄');
INSERT INTO `rn_credit_card_feature_config` VALUES ('8', 'college_type', '55', '4', '2017-03-27 18:54:58', '1', '毕业/在读学校类型');
INSERT INTO `rn_credit_card_feature_config` VALUES ('9', 'company_addr_city_level', '45', '4', '2017-03-27 18:54:58', '2', '企业城市等级');
INSERT INTO `rn_credit_card_feature_config` VALUES ('10', 'complete_degree', '65', '5', '2017-03-27 18:54:58', '2', '简历完成度');
INSERT INTO `rn_credit_card_feature_config` VALUES ('11', 'contacts', '35', '5', '2017-03-27 18:54:58', '1', '通讯录个数');

-- ----------------------------
-- Table structure for `rn_credit_card_model_config`
-- ----------------------------
DROP TABLE IF EXISTS `rn_credit_card_model_config`;
CREATE TABLE `rn_credit_card_model_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `collection_id` int(11) DEFAULT NULL,
  `delete_status` int(11) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `model_name_desc` varchar(255) DEFAULT NULL,
  `model_weight` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rn_credit_card_model_config
-- ----------------------------
INSERT INTO `rn_credit_card_model_config` VALUES ('1', '1', '0', '身份特征', null, '25', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_model_config` VALUES ('2', '1', '0', '信用历史', null, '15', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_model_config` VALUES ('3', '1', '0', '履约能力', null, '30', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_model_config` VALUES ('4', '1', '0', '人脉关系', null, '10', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_model_config` VALUES ('5', '1', '0', '行为偏好', null, '20', '2017-03-27 18:54:58');

-- ----------------------------
-- Table structure for `rn_credit_card_option_config`
-- ----------------------------
DROP TABLE IF EXISTS `rn_credit_card_option_config`;
CREATE TABLE `rn_credit_card_option_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_id` int(11) DEFAULT NULL,
  `option_value` varchar(255) DEFAULT NULL,
  `option_weight` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4w19ny7f98w7kdl6ipd455u1h` (`feature_id`),
  CONSTRAINT `FK4w19ny7f98w7kdl6ipd455u1h` FOREIGN KEY (`feature_id`) REFERENCES `rn_credit_card_feature_config` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rn_credit_card_option_config
-- ----------------------------
INSERT INTO `rn_credit_card_option_config` VALUES ('1', '1', '18-22', '60', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('2', '1', '23-30', '100', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('3', '1', '31-45', '80', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('4', '2', '18-22', '60', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('5', '2', '23-30', '100', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('6', '2', '31-45', '80', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('7', '3', '18-22', '60', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('8', '3', '23-30', '100', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('9', '3', '31-45', '80', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('10', '4', '18-22', '60', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('11', '4', '23-30', '100', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('12', '4', '31-45', '80', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('13', '5', '18-22', '60', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('14', '5', '23-30', '100', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('15', '5', '31-45', '80', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('16', '6', '18-22', '60', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('17', '6', '23-30', '100', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('18', '6', '31-45', '80', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('19', '7', '18-22', '60', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('20', '7', '23-30', '100', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('21', '7', '31-45', '80', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('22', '8', '18-22', '60', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('23', '8', '23-30', '100', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('24', '8', '31-45', '80', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('25', '9', '18-22', '60', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('26', '9', '23-30', '100', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('27', '9', '31-45', '80', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('28', '10', '18-22', '60', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('29', '10', '23-30', '100', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('30', '10', '31-45', '80', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('31', '11', '18-22', '60', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('32', '11', '23-30', '100', '2017-03-27 18:54:58');
INSERT INTO `rn_credit_card_option_config` VALUES ('33', '11', '31-45', '80', '2017-03-27 18:54:58');

-- ----------------------------
-- Table structure for `rn_test_feature_data`
-- ----------------------------
DROP TABLE IF EXISTS `rn_test_feature_data`;
CREATE TABLE `rn_test_feature_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `airfare_sum12` float DEFAULT NULL,
  `application_on` varchar(255) DEFAULT NULL,
  `application_on_plus` float DEFAULT NULL,
  `apply_register_duration` int(11) DEFAULT NULL,
  `car_count` int(11) DEFAULT NULL,
  `cc_bill_age` int(11) DEFAULT NULL,
  `college_type` varchar(255) DEFAULT NULL,
  `collection_id` int(11) DEFAULT NULL,
  `company_addr_city_level` int(11) DEFAULT NULL,
  `complete_degree` int(11) DEFAULT NULL,
  `contacts` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `creditcard_count` int(11) DEFAULT NULL,
  `cur_company` varchar(255) DEFAULT NULL,
  `cur_corp_years` int(11) DEFAULT NULL,
  `cur_employee_number` int(11) DEFAULT NULL,
  `cur_work_status` varchar(255) DEFAULT NULL,
  `dc_bill_age` int(11) DEFAULT NULL,
  `education_degree_check` varchar(255) DEFAULT NULL,
  `education_degree_code` varchar(255) DEFAULT NULL,
  `education_tz` int(11) DEFAULT NULL,
  `folk` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `gps_city_code` varchar(255) DEFAULT NULL,
  `graduate_college` varchar(255) DEFAULT NULL,
  `graduate_college_check` varchar(255) DEFAULT NULL,
  `has_negative_info` int(11) DEFAULT NULL,
  `income_expense_comparison` int(11) DEFAULT NULL,
  `income_level` varchar(255) DEFAULT NULL,
  `industry_change_count` int(11) DEFAULT NULL,
  `is_court_shixin` int(11) DEFAULT NULL,
  `is_court_zhixing` int(11) DEFAULT NULL,
  `is_cur_corp_shixin` int(11) DEFAULT NULL,
  `is_jiuyao_multi_loan` int(11) DEFAULT NULL,
  `is_loan_agency` int(11) DEFAULT NULL,
  `is_mobile_black` int(11) DEFAULT NULL,
  `is_net_black` int(11) DEFAULT NULL,
  `is_netsky_black` int(11) DEFAULT NULL,
  `is_netsky_grey` int(11) DEFAULT NULL,
  `is_netsky_multi_loan` int(11) DEFAULT NULL,
  `is_organization_g_black` int(11) DEFAULT NULL,
  `is_pingan_financial_shixin` int(11) DEFAULT NULL,
  `is_pingan_multi_loan` int(11) DEFAULT NULL,
  `is_pingan_other_loan` int(11) DEFAULT NULL,
  `is_pingan_overdue_loan` int(11) DEFAULT NULL,
  `is_recruitment` int(11) DEFAULT NULL,
  `is_skyeye_black` int(11) DEFAULT NULL,
  `is_unclear_loan` int(11) DEFAULT NULL,
  `jiuyao_multi_loan_denied_count` int(11) DEFAULT NULL,
  `jiuyao_multi_loan_m2_count` int(11) DEFAULT NULL,
  `last_industry_code` int(11) DEFAULT NULL,
  `marital_status` int(11) DEFAULT NULL,
  `max_flight_area` varchar(255) DEFAULT NULL,
  `max_flight_class` varchar(255) DEFAULT NULL,
  `mobile_activeness` float DEFAULT NULL,
  `mobile_area_city_level` int(11) DEFAULT NULL,
  `mobile_area_code` varchar(255) DEFAULT NULL,
  `mobile_identity` int(11) DEFAULT NULL,
  `mobile_mark` varchar(255) DEFAULT NULL,
  `mobile_stability` float DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `now_industry_code` int(11) DEFAULT NULL,
  `now_work_time` int(11) DEFAULT NULL,
  `now_workplace_code` varchar(255) DEFAULT NULL,
  `online_time` int(11) DEFAULT NULL,
  `overload_count` int(11) DEFAULT NULL,
  `overspeed_count` int(11) DEFAULT NULL,
  `pingan_max_overdue_days` int(11) DEFAULT NULL,
  `pingan_multi_loan_count` int(11) DEFAULT NULL,
  `pingan_other_loan_count` int(11) DEFAULT NULL,
  `pingan_overdue_corp_count` int(11) DEFAULT NULL,
  `pingan_overdue_count` int(11) DEFAULT NULL,
  `register_city_level` varchar(255) DEFAULT NULL,
  `work_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rn_test_feature_data
-- ----------------------------

-- ----------------------------
-- Table structure for `rule`
-- ----------------------------
DROP TABLE IF EXISTS `rule`;
CREATE TABLE `rule` (
  `rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `quota_count` decimal(12,2) DEFAULT NULL,
  `quota_type` varchar(255) DEFAULT NULL,
  `result_code` varchar(255) DEFAULT NULL,
  `risk_level` varchar(255) DEFAULT NULL,
  `risk_warning` varchar(255) DEFAULT NULL,
  `rule_name` varchar(255) DEFAULT NULL,
  `rule_text` longtext,
  `rule_type` int(11) DEFAULT NULL,
  `rule_set_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`rule_id`),
  KEY `FKje5bsn54mw64jve8cixfl3xh3` (`rule_set_id`),
  CONSTRAINT `FKje5bsn54mw64jve8cixfl3xh3` FOREIGN KEY (`rule_set_id`) REFERENCES `rule_set` (`rule_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rule
-- ----------------------------
INSERT INTO `rule` VALUES ('20', '2017-04-05 10:14:40', null, null, 'D101', 'A', '34', '444', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"age\",\"operator\":\"Greater\",\"arguments\":[\"34\"]}]}]', '1', '26');
INSERT INTO `rule` VALUES ('27', '2017-04-05 10:43:45', null, null, 'D101', 'A', '444', '44', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"age\",\"operator\":\"Greater\",\"arguments\":[\"10\"]},{\"feature\":\"cardId\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]},{\"connectionType\":\"Or\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"airfareSum12\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]}]', '1', '26');
INSERT INTO `rule` VALUES ('28', '2017-04-05 10:44:49', null, null, '申请人命中同业黑名单', 'A', '444', '44', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"age\",\"operator\":\"Greater\",\"arguments\":[\"10\"]},{\"feature\":\"cardId\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]},{\"connectionType\":\"Or\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"airfareSum12\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('29', '2017-04-05 10:52:54', '5555.23', '设置额度', null, null, null, '年龄522555', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"airfareSum12\",\"operator\":\"In\",\"arguments\":[\"11\",\"26\"]}]}]', '2', null);
INSERT INTO `rule` VALUES ('36', '2017-04-05 16:29:03', null, null, 'D101', 'B', '撒旦法', '阿斯顿发生', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"age\",\"operator\":\"Less\",\"arguments\":[\"22\"]}]},{\"connectionType\":\"Or\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"carCount\",\"operator\":\"Greater\",\"arguments\":[\"23\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('37', '2017-04-05 16:33:08', null, null, 'D101', 'A', '不符', 'hello平子', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"age\",\"operator\":\"Less\",\"arguments\":[\"23\"]},{\"feature\":\"applyRegisterDuration\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]},{\"connectionType\":\"Or\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"airfareSum12\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('38', '2017-04-05 16:58:39', null, null, 'D101', 'A', '对对对', '是是是', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"airfareSum12\",\"operator\":\"Equal\",\"arguments\":[\"1\"]},{\"feature\":\"age\",\"operator\":\"Greater\",\"arguments\":[\"43\"]}]},{\"connectionType\":\"Or\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"completeDegree\",\"operator\":\"Greater\",\"arguments\":[\"34\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('40', '2017-04-06 10:05:59', '5555.23', '设置额度', null, null, null, '年龄522555', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"airfareSum12\",\"operator\":\"In\",\"arguments\":[\"11\",\"26\"]}]}]', '2', null);
INSERT INTO `rule` VALUES ('41', '2017-04-06 10:37:03', null, null, 'D101', 'A', '申请人的年龄不在20-55岁之间', '年龄判别', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"age\",\"operator\":\"Less\",\"arguments\":[\"20\"]},{\"feature\":\"age\",\"operator\":\"Greater\",\"arguments\":[\"55\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('42', '2017-04-06 10:42:39', null, null, 'D102', 'A', '申请人在我公司的借款尚未结清', '身份查重', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isUnclearLoan\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('43', '2017-04-06 10:52:38', null, null, 'D102', 'A', '申请人的猎聘信息完成度不足60%', '简历完成度检验', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"completeDegree\",\"operator\":\"Less\",\"arguments\":[\"60\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('44', '2017-04-06 10:52:40', null, null, 'D102', 'A', '申请人的猎聘信息完成度不足60%', '简历完成度检验', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"completeDegree\",\"operator\":\"Less\",\"arguments\":[\"60\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('45', '2017-04-06 10:53:57', null, null, 'D102', 'A', '申请人的猎聘信息完成度不足60%', '简历完成度检验', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"completeDegree\",\"operator\":\"Less\",\"arguments\":[\"1\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('46', '2017-04-06 10:55:25', null, null, 'D102', 'A', '申请人手机号码疑似贷款中介', '贷款中介检测', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isLoanAgency\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('47', '2017-04-06 10:58:56', null, null, 'D102', 'A', '申请人命中某机构黑名单', '机构g黑名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isOrganizationGBlack\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('48', '2017-04-06 11:00:22', null, null, 'D102', 'A', '申请人命中天网黑名单', '天网黑名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isNetskyBlack\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('49', '2017-04-06 11:01:54', null, null, 'D102', 'A', '天网多头贷款查询', '天网黑名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isNetskyBlack\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('50', '2017-04-06 11:02:07', null, null, 'D101', 'A', '2', '2', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"age\",\"operator\":\"In\",\"arguments\":[\"1\",\"2\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('51', '2017-04-06 11:04:18', null, null, 'D102', 'A', '申请人命中天眼黑名单', '天眼黑名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isSkyeyeBlack\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('52', '2017-04-06 11:04:50', null, null, 'D102', 'A', '失信被执行人检测', '失信被执行人检测', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isCourtShixin\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('53', '2017-04-06 11:05:23', null, null, 'D102', 'A', '网贷黑名单检测', '网贷黑名单检测', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isNetBlack\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('54', '2017-04-06 11:08:21', null, null, 'D101', 'A', '3', '撒旦法', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"airfareSum12\",\"operator\":\"Equal\",\"arguments\":[\"1\"]},{\"feature\":\"age\",\"operator\":\"In\",\"arguments\":[\"1\",\"2\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('55', '2017-04-06 11:10:24', null, null, 'D101', 'A', '3', '撒旦法', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"airfareSum12\",\"operator\":\"Equal\",\"arguments\":[\"1\"]},{\"feature\":\"age\",\"operator\":\"In\",\"arguments\":[\"44\",\"7\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('56', '2017-04-06 11:10:32', null, null, 'D102', 'A', '申请人命中凭安多头借贷名单，且借贷公司数量>=10个', '金融失信名单', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isNetskyMultiLoan\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]},{\"connectionType\":\"And\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"pinganMultiLoanCount\",\"operator\":\"GreaterOrEqual\",\"arguments\":[\"10\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('57', '2017-04-06 11:10:32', null, null, 'D102', 'A', '申请人命中凭安多头借贷名单，且借贷公司数量>=10个', '金融失信名单', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isNetskyMultiLoan\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]},{\"connectionType\":\"And\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"pinganMultiLoanCount\",\"operator\":\"GreaterOrEqual\",\"arguments\":[\"10\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('58', '2017-04-06 11:10:33', null, null, 'D102', 'A', '申请人命中凭安多头借贷名单，且借贷公司数量>=10个', '金融失信名单', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isNetskyMultiLoan\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]},{\"connectionType\":\"And\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"pinganMultiLoanCount\",\"operator\":\"GreaterOrEqual\",\"arguments\":[\"10\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('59', '2017-04-06 11:10:34', null, null, 'D102', 'A', '申请人命中凭安多头借贷名单，且借贷公司数量>=10个', '金融失信名单', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isNetskyMultiLoan\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]},{\"connectionType\":\"And\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"pinganMultiLoanCount\",\"operator\":\"GreaterOrEqual\",\"arguments\":[\"10\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('60', '2017-04-06 11:12:23', null, null, 'D102', 'A', '金融失信名单', '金融失信名单', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isPinganFinancialShixin\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('61', '2017-04-06 11:13:23', null, null, 'D101', 'A', '3', '撒旦法', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"airfareSum12\",\"operator\":\"Equal\",\"arguments\":[\"1\"]},{\"feature\":\"age\",\"operator\":\"In\",\"arguments\":[\"44\",\"7\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('62', '2017-04-06 11:13:41', null, null, 'D102', 'A', '金融失信名单', '金融失信名单', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isPinganOtherLoan\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]},{\"connectionType\":\"Or\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"pinganMultiLoanCount\",\"operator\":\"GreaterOrEqual\",\"arguments\":[\"10\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('63', '2017-04-06 11:15:45', null, null, 'D102', 'A', '申请人命中凭安逾期名单，且借贷公司数量>=10个', '金融失信名单', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isPinganOverdueLoan\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]},{\"connectionType\":\"Or\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"pinganOverdueCorpCount\",\"operator\":\"GreaterOrEqual\",\"arguments\":[\"10\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('64', '2017-04-06 11:17:38', null, null, 'D101', 'A', '3', '撒旦法', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"airfareSum12\",\"operator\":\"Equal\",\"arguments\":[\"1\"]},{\"feature\":\"age\",\"operator\":\"In\",\"arguments\":[\"10\",\"78\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('65', '2017-04-06 11:25:28', null, null, 'D102', 'A', '手机未实名', '金融失信名单', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"mobileIdentity\",\"operator\":\"Equal\",\"arguments\":[\"0\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('66', '2017-04-06 11:38:20', null, null, 'D102', 'A', '申请人在不良记录（犯罪在逃、吸毒等）中', '金融失信名单', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"hasNegativeInfo\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('67', '2017-04-06 11:38:53', null, null, 'D102', 'A', '天网灰名单查询', '天网灰名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isNetskyGrey\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('68', '2017-04-06 11:39:16', null, null, 'D102', 'A', '被执行人检测', '天网灰名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"Any\",\"conditions\":[{\"feature\":\"isCourtZhixing\",\"operator\":\"Equal\",\"arguments\":[\"1\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('69', '2017-04-06 11:45:35', null, null, 'D102', 'A', '存在小号的可能', '天网灰名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"contacts\",\"operator\":\"Less\",\"arguments\":[\"30\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('70', '2017-04-06 11:46:32', null, null, 'D102', 'A', '手机号在网时长过短', '天网灰名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"onlineTime\",\"operator\":\"Less\",\"arguments\":[\"3\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('71', '2017-04-06 11:47:45', null, null, 'D102', 'B', '经常转行', '天网灰名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"industryChangeCount\",\"operator\":\"Greater\",\"arguments\":[\"3\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('72', '2017-04-06 11:51:35', null, null, 'D102', 'B', '刚入行不久', '天网灰名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"curWorkStatus\",\"operator\":\"Equal\",\"arguments\":[\"在职，暂无跳槽打算\"]}]},{\"connectionType\":\"And\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"nowWorkTime\",\"operator\":\"Less\",\"arguments\":[\"6\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('73', '2017-04-06 13:34:02', null, null, 'D102', 'B', '刚入行不久', '天网灰名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"isJiuyaoMultiLoan\",\"operator\":\"Equal\",\"arguments\":[\"1\"]},{\"feature\":\"pinganMultiLoanCount\",\"operator\":\"Greater\",\"arguments\":[\"10\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('74', '2017-04-06 13:37:26', null, null, 'D102', 'B', '刚入行不久', '天网灰名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"isPinganOverdueLoan\",\"operator\":\"Equal\",\"arguments\":[\"1\"]},{\"feature\":\"pinganMultiLoanCount\",\"operator\":\"GreaterOrEqual\",\"arguments\":[\"10\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('75', '2017-04-06 13:40:44', null, null, 'D102', 'B', '刚入行不久', '天网灰名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"isPinganOverdueLoan\",\"operator\":\"Equal\",\"arguments\":[\"1\"]},{\"feature\":\"pinganOverdueCount\",\"operator\":\"Greater\",\"arguments\":[\"2\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('76', '2017-04-06 13:41:05', null, null, 'D102', 'B', '刚入行不久', '天网灰名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"isPinganOverdueLoan\",\"operator\":\"Equal\",\"arguments\":[\"1\"]},{\"feature\":\"pinganMaxOverdueDays\",\"operator\":\"Greater\",\"arguments\":[\"30\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('77', '2017-04-06 13:45:53', null, null, 'D102', 'B', '刚入行不久', '天网灰名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"completeDegree\",\"operator\":\"Less\",\"arguments\":[\"60\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('78', '2017-04-06 14:46:26', null, null, 'D102', 'A', '刚入行不久', '天网灰名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"age\",\"operator\":\"Less\",\"arguments\":[\"20\"]},{\"feature\":\"age\",\"operator\":\"Greater\",\"arguments\":[\"60\"]}]}]', '1', null);
INSERT INTO `rule` VALUES ('79', '2017-04-06 14:46:51', null, null, 'D102', 'A', '申请人年龄不在20-60岁之间', '天网灰名单查询', '[{\"connectionType\":\"None\",\"joinType\":\"All\",\"conditions\":[{\"feature\":\"age\",\"operator\":\"Less\",\"arguments\":[\"20\"]},{\"feature\":\"age\",\"operator\":\"Greater\",\"arguments\":[\"60\"]}]}]', '1', null);

-- ----------------------------
-- Table structure for `rule_set`
-- ----------------------------
DROP TABLE IF EXISTS `rule_set`;
CREATE TABLE `rule_set` (
  `rule_set_id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_set_distinction` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `rule_set_name` varchar(255) DEFAULT NULL,
  `policy_set_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`rule_set_id`),
  KEY `FKle4tld86x9ptp2tdjklb7gckb` (`policy_set_id`),
  CONSTRAINT `FKle4tld86x9ptp2tdjklb7gckb` FOREIGN KEY (`policy_set_id`) REFERENCES `policy_set` (`policy_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rule_set
-- ----------------------------
INSERT INTO `rule_set` VALUES ('26', '0', '2017-04-01 18:09:34', '规则集1', '3');
INSERT INTO `rule_set` VALUES ('27', '0', '2017-04-01 18:09:34', '规则集1', '3');

-- ----------------------------
-- Table structure for `rule_set_test`
-- ----------------------------
DROP TABLE IF EXISTS `rule_set_test`;
CREATE TABLE `rule_set_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_set_name` varchar(255) DEFAULT NULL,
  `policy_set_test_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5gx3qiab1pgm15uy3ua106y6y` (`policy_set_test_id`),
  CONSTRAINT `FK5gx3qiab1pgm15uy3ua106y6y` FOREIGN KEY (`policy_set_test_id`) REFERENCES `policy_set_test` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rule_set_test
-- ----------------------------
INSERT INTO `rule_set_test` VALUES ('7', '规则集10', '4');
INSERT INTO `rule_set_test` VALUES ('8', '规则集10', null);
INSERT INTO `rule_set_test` VALUES ('9', '规则集10', '5');
INSERT INTO `rule_set_test` VALUES ('10', '规则集10', null);
INSERT INTO `rule_set_test` VALUES ('11', '规则集10', '6');
INSERT INTO `rule_set_test` VALUES ('12', '规则集10', '7');
INSERT INTO `rule_set_test` VALUES ('13', '规则集10', '8');
INSERT INTO `rule_set_test` VALUES ('14', '规则集10', '9');

-- ----------------------------
-- Table structure for `rule_test`
-- ----------------------------
DROP TABLE IF EXISTS `rule_test`;
CREATE TABLE `rule_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(255) DEFAULT NULL,
  `rule_text` longtext,
  `rule_set_test_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK17j3fv1b76ypl8ljscm2rycj` (`rule_set_test_id`),
  CONSTRAINT `FK17j3fv1b76ypl8ljscm2rycj` FOREIGN KEY (`rule_set_test_id`) REFERENCES `rule_set_test` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rule_test
-- ----------------------------
INSERT INTO `rule_test` VALUES ('4', '200000000000000006484', null, '8');
INSERT INTO `rule_test` VALUES ('5', '200000000000000006484', null, '11');
INSERT INTO `rule_test` VALUES ('6', '200000000000000006484', null, '11');
INSERT INTO `rule_test` VALUES ('7', '200000000000000006484', null, '12');
INSERT INTO `rule_test` VALUES ('8', '200000000000000006484', null, '13');
INSERT INTO `rule_test` VALUES ('9', '200000000000000006484', null, '14');
INSERT INTO `rule_test` VALUES ('10', '87646564665431468848', null, '14');

-- ----------------------------
-- Table structure for `work_flow_info`
-- ----------------------------
DROP TABLE IF EXISTS `work_flow_info`;
CREATE TABLE `work_flow_info` (
  `work_flow_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `work_flow_info_xml` longtext,
  PRIMARY KEY (`work_flow_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work_flow_info
-- ----------------------------
INSERT INTO `work_flow_info` VALUES ('1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?> \r\n<definitions id=\"Definition\"\r\n             targetNamespace=\"http://www.jboss.org/drools\"\r\n             typeLanguage=\"http://www.java.com/javaTypes\"\r\n             expressionLanguage=\"http://www.mvel.org/2.0\"\r\n             xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\"\r\n             xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\n             xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\"\r\n             xmlns:g=\"http://www.jboss.org/drools/flow/gpd\"\r\n             xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\"\r\n             xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\"\r\n             xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\"\r\n             xmlns:tns=\"http://www.jboss.org/drools\">\r\n\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"Audit\" name=\"决策引擎\" tns:packageName=\"com.digcredit.rules.credit\" >\r\n\r\n    <!-- nodes -->\r\n    <startEvent id=\"_jbpm-unique-5\" name=\"Start\"  isInterrupting=\"false\">\r\n    </startEvent>\r\n    <endEvent id=\"_jbpm-unique-13\" name=\"FinalEnd\" >\r\n        <terminateEventDefinition />\r\n    </endEvent>\r\n    <subProcess id=\"_jbpm-unique-6\" name=\"AA阶段模块\" >\r\n    <!-- nodes -->\r\n    <startEvent id=\"_jbpm-unique-7\" name=\"Start\"  isInterrupting=\"false\">\r\n    </startEvent>\r\n    <businessRuleTask id=\"_jbpm-unique-11\" name=\"AA阶段\" g:ruleFlowGroup=\"1\" >\r\n      <ioSpecification>\r\n        <inputSet>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n    </businessRuleTask>\r\n    <endEvent id=\"_jbpm-unique-12\" name=\"End\" >\r\n        <terminateEventDefinition />\r\n    </endEvent>\r\n    <task id=\"_jbpm-unique-54\" name=\"画像构建\" tns:taskName=\"Features\" >\r\n      <ioSpecification>\r\n        <dataInput id=\"_jbpm-unique-54_featuresInput\" name=\"features\" />\r\n        <inputSet>\r\n          <dataInputRefs>_jbpm-unique-54_featuresInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_jbpm-unique-54_featuresInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">age,isUnclearLoan,applyRegisterDuration,completeDegree,isPinganFinancialShixin,pinganOverdueCount,pinganMaxOverdueDays,isMobileBlack,isLoanAgency,isOrganizationGBlack,isNetskyBlack,isNetskyMultiLoan,isSkyeyeBlack,isNetBlack,isNetskyGrey,isCourtShixin,isCourtZhixing,mobileIdentity,onlineTime,hasNegativeInfo,pinganMultiLoanCount,pinganOtherLoanCount,pinganOverdueCorpCount,isJiuyaoMultiLoan,jiuyaoMultiLoanDeniedCount,jiuyaoMultiLoanM2Count,name,mobile,cardId</from>\r\n          <to xsi:type=\"tFormalExpression\">_jbpm-unique-54_featuresInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n\r\n    <!-- connections -->\r\n    <sequenceFlow id=\"_jbpm-unique-54-_jbpm-unique-11\" sourceRef=\"_jbpm-unique-54\" targetRef=\"_jbpm-unique-11\" />\r\n    <sequenceFlow id=\"_jbpm-unique-11-_jbpm-unique-12\" sourceRef=\"_jbpm-unique-11\" targetRef=\"_jbpm-unique-12\" />\r\n    <sequenceFlow id=\"_jbpm-unique-7-_jbpm-unique-54\" sourceRef=\"_jbpm-unique-7\" targetRef=\"_jbpm-unique-54\" />\r\n    </subProcess>\r\n    <intermediateCatchEvent id=\"_jbpm-unique-38\" name=\"Signal\" >\r\n      <signalEventDefinition signalRef=\"ModuleContinue\"/>\r\n    </intermediateCatchEvent>\r\n    <subProcess id=\"_jbpm-unique-37\" name=\"异常处理模块\" >\r\n    <!-- nodes -->\r\n    <task id=\"_jbpm-unique-42\" name=\"获取特征\" tns:taskName=\"API\" >\r\n      <ioSpecification>\r\n        <dataInput id=\"_jbpm-unique-42_fieldsInput\" name=\"fields\" />\r\n        <inputSet>\r\n          <dataInputRefs>_jbpm-unique-42_fieldsInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_jbpm-unique-42_fieldsInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">curWorkStatus,nowWorkplaceCode,gpsCityCode,mobileAreaCode,mobileActiveness,pinganMultiLoanCount,pinganOtherLoanCount,pinganOverdueCorpCount,jiuyaoMultiLoanDeniedCount,mobileMark,workTime,educationDegreeCheck,educationDegreeCode,contacts,mobileStability,lastIndustryCode,nowIndustryCode,industryChangeCount,educationTz</from>\r\n          <to xsi:type=\"tFormalExpression\">_jbpm-unique-42_fieldsInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <intermediateCatchEvent id=\"_jbpm-unique-43\" name=\"Signal\" >\r\n      <signalEventDefinition signalRef=\"FeaturesReady\"/>\r\n    </intermediateCatchEvent>\r\n    <task id=\"_jbpm-unique-44\" name=\"构建申请人画像\" tns:taskName=\"Assembly\" >\r\n      <ioSpecification>\r\n        <dataInput id=\"_jbpm-unique-44_modelInput\" name=\"model\" />\r\n        <inputSet>\r\n          <dataInputRefs>_jbpm-unique-44_modelInput</dataInputRefs>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n      <dataInputAssociation>\r\n        <targetRef>_jbpm-unique-44_modelInput</targetRef>\r\n        <assignment>\r\n          <from xsi:type=\"tFormalExpression\">com.digcredit.brms.model.Applicant</from>\r\n          <to xsi:type=\"tFormalExpression\">_jbpm-unique-44_modelInput</to>\r\n        </assignment>\r\n      </dataInputAssociation>\r\n    </task>\r\n    <businessRuleTask id=\"_jbpm-unique-47\" name=\"异常处理\" g:ruleFlowGroup=\"other-stages-exceptions\" >\r\n      <ioSpecification>\r\n        <inputSet>\r\n        </inputSet>\r\n        <outputSet>\r\n        </outputSet>\r\n      </ioSpecification>\r\n    </businessRuleTask>\r\n    <endEvent id=\"_jbpm-unique-46\" name=\"End\" >\r\n        <terminateEventDefinition />\r\n    </endEvent>\r\n    <startEvent id=\"_jbpm-unique-41\" name=\"Start\"  isInterrupting=\"false\">\r\n    </startEvent>\r\n\r\n    <!-- connections -->\r\n    <sequenceFlow id=\"_jbpm-unique-41-_jbpm-unique-42\" sourceRef=\"_jbpm-unique-41\" targetRef=\"_jbpm-unique-42\" />\r\n    <sequenceFlow id=\"_jbpm-unique-42-_jbpm-unique-43\" sourceRef=\"_jbpm-unique-42\" targetRef=\"_jbpm-unique-43\" />\r\n    <sequenceFlow id=\"_jbpm-unique-43-_jbpm-unique-44\" sourceRef=\"_jbpm-unique-43\" targetRef=\"_jbpm-unique-44\" />\r\n    <sequenceFlow id=\"_jbpm-unique-44-_jbpm-unique-47\" sourceRef=\"_jbpm-unique-44\" targetRef=\"_jbpm-unique-47\" />\r\n    <sequenceFlow id=\"_jbpm-unique-47-_jbpm-unique-46\" sourceRef=\"_jbpm-unique-47\" targetRef=\"_jbpm-unique-46\" />\r\n    </subProcess>\r\n\r\n    <!-- connections -->\r\n    <sequenceFlow id=\"_jbpm-unique-37-_jbpm-unique-13\" sourceRef=\"_jbpm-unique-37\" targetRef=\"_jbpm-unique-13\" />\r\n    <sequenceFlow id=\"_jbpm-unique-5-_jbpm-unique-6\" sourceRef=\"_jbpm-unique-5\" targetRef=\"_jbpm-unique-6\" />\r\n    <sequenceFlow id=\"_jbpm-unique-6-_jbpm-unique-38\" sourceRef=\"_jbpm-unique-6\" targetRef=\"_jbpm-unique-38\" />\r\n    <sequenceFlow id=\"_jbpm-unique-38-_jbpm-unique-37\" sourceRef=\"_jbpm-unique-38\" targetRef=\"_jbpm-unique-37\" />\r\n\r\n  </process>\r\n\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"Audit\" >\r\n      <bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-5\" >\r\n        <dc:Bounds x=\"574\" y=\"-1\" width=\"48\" height=\"48\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-13\" >\r\n        <dc:Bounds x=\"594\" y=\"645\" width=\"48\" height=\"48\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-6\" >\r\n        <dc:Bounds x=\"276\" y=\"76\" width=\"644\" height=\"154\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-7\" >\r\n        <dc:Bounds x=\"307\" y=\"146\" width=\"48\" height=\"48\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-11\" >\r\n        <dc:Bounds x=\"675\" y=\"145\" width=\"80\" height=\"48\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-12\" >\r\n        <dc:Bounds x=\"815\" y=\"147\" width=\"48\" height=\"48\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-54\" >\r\n        <dc:Bounds x=\"482\" y=\"145\" width=\"100\" height=\"48\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-38\" >\r\n        <dc:Bounds x=\"581\" y=\"255\" width=\"48\" height=\"48\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-37\" >\r\n        <dc:Bounds x=\"288\" y=\"329\" width=\"627\" height=\"150\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-42\" >\r\n        <dc:Bounds x=\"393\" y=\"403\" width=\"100\" height=\"48\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-43\" >\r\n        <dc:Bounds x=\"520\" y=\"361\" width=\"48\" height=\"48\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-44\" >\r\n        <dc:Bounds x=\"616\" y=\"406\" width=\"113\" height=\"48\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-47\" >\r\n        <dc:Bounds x=\"749\" y=\"407\" width=\"80\" height=\"48\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-46\" >\r\n        <dc:Bounds x=\"853\" y=\"409\" width=\"48\" height=\"48\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-41\" >\r\n        <dc:Bounds x=\"316\" y=\"402\" width=\"48\" height=\"48\" />\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-54-_jbpm-unique-11\" >\r\n        <di:waypoint x=\"256\" y=\"93\" />\r\n        <di:waypoint x=\"439\" y=\"93\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-11-_jbpm-unique-12\" >\r\n        <di:waypoint x=\"439\" y=\"93\" />\r\n        <di:waypoint x=\"563\" y=\"95\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-7-_jbpm-unique-54\" >\r\n        <di:waypoint x=\"55\" y=\"94\" />\r\n        <di:waypoint x=\"256\" y=\"93\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-41-_jbpm-unique-42\" >\r\n        <di:waypoint x=\"52\" y=\"97\" />\r\n        <di:waypoint x=\"155\" y=\"98\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-42-_jbpm-unique-43\" >\r\n        <di:waypoint x=\"155\" y=\"98\" />\r\n        <di:waypoint x=\"256\" y=\"56\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-43-_jbpm-unique-44\" >\r\n        <di:waypoint x=\"256\" y=\"56\" />\r\n        <di:waypoint x=\"384\" y=\"101\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-44-_jbpm-unique-47\" >\r\n        <di:waypoint x=\"384\" y=\"101\" />\r\n        <di:waypoint x=\"501\" y=\"102\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-47-_jbpm-unique-46\" >\r\n        <di:waypoint x=\"501\" y=\"102\" />\r\n        <di:waypoint x=\"589\" y=\"104\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-37-_jbpm-unique-13\" >\r\n        <di:waypoint x=\"601\" y=\"404\" />\r\n        <di:waypoint x=\"618\" y=\"669\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-5-_jbpm-unique-6\" >\r\n        <di:waypoint x=\"598\" y=\"23\" />\r\n        <di:waypoint x=\"598\" y=\"153\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-6-_jbpm-unique-38\" >\r\n        <di:waypoint x=\"598\" y=\"153\" />\r\n        <di:waypoint x=\"605\" y=\"279\" />\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-38-_jbpm-unique-37\" >\r\n        <di:waypoint x=\"605\" y=\"279\" />\r\n        <di:waypoint x=\"601\" y=\"404\" />\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n\r\n</definitions>');

-- ----------------------------
-- Table structure for `work_flow_info1`
-- ----------------------------
DROP TABLE IF EXISTS `work_flow_info1`;
CREATE TABLE `work_flow_info1` (
  `work_flow_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `work_flow_info_xml` longtext,
  PRIMARY KEY (`work_flow_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work_flow_info1
-- ----------------------------
INSERT INTO `work_flow_info1` VALUES ('1', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:g=\"http://www.jboss.org/drools/flow/gpd\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:dc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:di=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:tns=\"http://www.jboss.org/drools\" id=\"Definition\" targetNamespace=\"http://www.jboss.org/drools\" typeLanguage=\"http://www.java.com/javaTypes\" expressionLanguage=\"http://www.mvel.org/2.0\" xsi:schemaLocation=\"http://www.omg.org/spec/BPMN/20100524/MODEL BPMN20.xsd\">\r\n\r\n  <process processType=\"Private\" isExecutable=\"true\" id=\"Audit\" name=\"决策引擎\" tns:packageName=\"com.digcredit.rules.credit\">\r\n\r\n   \r\n  <startEvent id=\"_jbpm-unique-0\" name=\"Start\" isInterrupting=\"false\"/><subProcess id=\"_jbpm-unique-1\" name=\"AAD模块\"><startEvent id=\"_jbpm-unique-2\" name=\"Start\" isInterrupting=\"false\"/><task id=\"_jbpm-unique-3\" name=\"画像构建\" tns:taskName=\"Features\"><ioSpecification><dataInput id=\"_jbpm-unique-3_featuresInput\" name=\"features\"/><inputSet><dataInputRefs>_jbpm-unique-3_featuresInput</dataInputRefs></inputSet><outputSet/></ioSpecification><dataInputAssociation><targetRef>_jbpm-unique-3_featuresInput</targetRef><assignment><from xsi:type=\"tFormalExpression\">age,isUnclearLoan,applyRegisterDuration,completeDegree,isPinganFinancialShixin,pinganOverdueCount,pinganMaxOverdueDays,isMobileBlack,isLoanAgency,isOrganizationGBlack,isNetskyBlack,isNetskyMultiLoan,isSkyeyeBlack,isNetBlack,isNetskyGrey,isCourtShixin,isCourtZhixing,mobileIdentity,onlineTime,hasNegativeInfo,pinganMultiLoanCount,pinganOtherLoanCount,pinganOverdueCorpCount,isJiuyaoMultiLoan,jiuyaoMultiLoanDeniedCount,jiuyaoMultiLoanM2Count,name,mobile,cardId</from><to xsi:type=\"tFormalExpression\">_jbpm-unique-3_featuresInput</to></assignment></dataInputAssociation></task><businessRuleTask id=\"_jbpm-unique-4\" name=\"\" g:ruleFlowGroup=\"1\"><ioSpecification><inputSet/><outputSet/></ioSpecification></businessRuleTask><endEvent id=\"_jbpm-unique-5\" name=\"End\"><terminateEventDefinition/></endEvent><sequenceFlow id=\"_jbpm-unique-2-_jbpm-unique-3\" sourceRef=\"_jbpm-unique-2\" targetRef=\"_jbpm-unique-3\"/><sequenceFlow id=\"_jbpm-unique-3-_jbpm-unique-4\" sourceRef=\"_jbpm-unique-3\" targetRef=\"_jbpm-unique-4\"/><sequenceFlow id=\"_jbpm-unique-4-_jbpm-unique-5\" sourceRef=\"_jbpm-unique-4\" targetRef=\"_jbpm-unique-5\"/></subProcess><intermediateCatchEvent id=\"_jbpm-unique-8\" name=\"Signal\"><signalEventDefinition signalRef=\"ModuleContinue\"/></intermediateCatchEvent><subProcess id=\"_jbpm-unique-9\" name=\"异常A模块\"><sequenceFlow id=\"_jbpm-unique-10-_jbpm-unique-11\" sourceRef=\"_jbpm-unique-10\" targetRef=\"_jbpm-unique-11\"/><sequenceFlow id=\"_jbpm-unique-11-_jbpm-unique-12\" sourceRef=\"_jbpm-unique-11\" targetRef=\"_jbpm-unique-12\"/><sequenceFlow id=\"_jbpm-unique-12-_jbpm-unique-13\" sourceRef=\"_jbpm-unique-12\" targetRef=\"_jbpm-unique-13\"/><sequenceFlow id=\"_jbpm-unique-13-_jbpm-unique-14\" sourceRef=\"_jbpm-unique-13\" targetRef=\"_jbpm-unique-14\"/><sequenceFlow id=\"_jbpm-unique-14-_jbpm-unique-15\" sourceRef=\"_jbpm-unique-14\" targetRef=\"_jbpm-unique-15\"/><intermediateCatchEvent id=\"_jbpm-unique-12\" name=\"Signal\"><signalEventDefinition signalRef=\"FeaturesReady\"/></intermediateCatchEvent><startEvent id=\"_jbpm-unique-10\" name=\"Start\" isInterrupting=\"false\"/><endEvent id=\"_jbpm-unique-15\" name=\"End\"><terminateEventDefinition/></endEvent><businessRuleTask id=\"_jbpm-unique-14\" name=\"\" g:ruleFlowGroup=\"1\"><ioSpecification><inputSet/><outputSet/></ioSpecification></businessRuleTask><task id=\"_jbpm-unique-11\" name=\"获取特征\" tns:taskName=\"API\"><ioSpecification><dataInput id=\"_jbpm-unique-11_fieldsInput\" name=\"fields\"/><inputSet><dataInputRefs>_jbpm-unique-11_fieldsInput</dataInputRefs></inputSet><outputSet/></ioSpecification><dataInputAssociation><targetRef>_jbpm-unique-11_fieldsInput</targetRef><assignment><form xsi:type=\"tFormalExpression\">age,gender,registerCityLevel,maritalStatus,folk,companyAddrCityLevel,educationDegreeCheck,isRecruitment,collegeType,onlineTime,gpsCityCode,completeDegree,dcBillAge,ccBillAge,creditcardCount,overspeedCount,overloadCount,curEmployeeNumber,curCorpYears,isCurCorpShixin,nowIndustryCode,nowWorkTime,workTime,incomeLevel,incomeExpenseComparison,carCount,airfareSum12,contacts,maxFlightClass,maxFlightArea,mobileActiveness,mobileStability,applyRegisterDuration,applicationOnPlus</form><to xsi:type=\"tFormalExpression\">_jbpm-unique-11_fieldsInput</to></assignment></dataInputAssociation></task><task id=\"_jbpm-unique-13\" name=\"构建申请人画像\" tns:taskName=\"Assembly\"><ioSpecification><dataInput id=\"_jbpm-unique-13_modelInput\" name=\"model\"/><inputSet><dataInputRefs>_jbpm-unique-13_modelInput</dataInputRefs></inputSet><outputSet/></ioSpecification><dataInputAssociation><targetRef>_jbpm-unique-13_modelInput</targetRef><assignment><from xsi:type=\"tFormalExpression\">com.digcredit.brms.model.Applicant</from><to xsi:type=\"tFormalExpression\">_jbpm-unique-13_modelInput</to></assignment></dataInputAssociation></task></subProcess><endEvent id=\"_jbpm-unique-18\" name=\"FinalEnd\"><terminateEventDefinition/></endEvent><sequenceFlow id=\"_jbpm-unique-0-_jbpm-unique-1\" sourceRef=\"_jbpm-unique-0\" targetRef=\"_jbpm-unique-1\"/><sequenceFlow id=\"_jbpm-unique-1-_jbpm-unique-8\" sourceRef=\"_jbpm-unique-1\" targetRef=\"_jbpm-unique-8\"/><sequenceFlow id=\"_jbpm-unique-8-_jbpm-unique-9\" sourceRef=\"_jbpm-unique-8\" targetRef=\"_jbpm-unique-9\"/><sequenceFlow id=\"_jbpm-unique-9-_jbpm-unique-18\" sourceRef=\"_jbpm-unique-9\" targetRef=\"_jbpm-unique-18\"/></process>\r\n\r\n  <bpmndi:BPMNDiagram>\r\n    <bpmndi:BPMNPlane bpmnElement=\"Audit\">\r\n     \r\n    <bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-0\"><dc:Bounds x=\"600\" y=\"0\" width=\"50\" height=\"50\"/></bpmndi:BPMNShape><bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-1\"><dc:Bounds x=\"225\" y=\"500\" width=\"800\" height=\"200\"/></bpmndi:BPMNShape><bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-2\"><dc:Bounds x=\"100\" y=\"75\" width=\"50\" height=\"50\"/></bpmndi:BPMNShape><bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-3\"><dc:Bounds x=\"250\" y=\"75\" width=\"100\" height=\"50\"/></bpmndi:BPMNShape><bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-4\"><dc:Bounds x=\"450\" y=\"75\" width=\"100\" height=\"50\"/></bpmndi:BPMNShape><bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-5\"><dc:Bounds x=\"650\" y=\"75\" width=\"50\" height=\"50\"/></bpmndi:BPMNShape><bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-2-_jbpm-unique-3\"><di:waypoint x=\"150\" y=\"100\"/><di:waypoint x=\"250\" y=\"100\"/></bpmndi:BPMNEdge><bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-3-_jbpm-unique-4\"><di:waypoint x=\"350\" y=\"100\"/><di:waypoint x=\"450\" y=\"100\"/></bpmndi:BPMNEdge><bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-4-_jbpm-unique-4\"><di:waypoint x=\"550\" y=\"100\"/><di:waypoint x=\"650\" y=\"100\"/></bpmndi:BPMNEdge><bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-8\"><dc:Bounds x=\"600\" y=\"1000\" width=\"50\" height=\"50\"/></bpmndi:BPMNShape><bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-9\"><dc:Bounds x=\"125\" y=\"1500\" width=\"1000\" height=\"200\"/></bpmndi:BPMNShape><bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-10\"><dc:Bounds x=\"25\" y=\"75\" width=\"50\" height=\"50\"/></bpmndi:BPMNShape><bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-11\"><dc:Bounds x=\"175\" y=\"75\" width=\"100\" height=\"50\"/></bpmndi:BPMNShape><bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-12\"><dc:Bounds x=\"375\" y=\"75\" width=\"50\" height=\"50\"/></bpmndi:BPMNShape><bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-13\"><dc:Bounds x=\"525\" y=\"75\" width=\"100\" height=\"50\"/></bpmndi:BPMNShape><bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-14\"><dc:Bounds x=\"725\" y=\"75\" width=\"100\" height=\"50\"/></bpmndi:BPMNShape><bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-15\"><dc:Bounds x=\"925\" y=\"75\" width=\"50\" height=\"50\"/></bpmndi:BPMNShape><bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-10-_jbpm-unique-11\"><di:waypoint x=\"75\" y=\"100\"/><di:waypoint x=\"175\" y=\"100\"/></bpmndi:BPMNEdge><bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-11-_jbpm-unique-12\"><di:waypoint x=\"275\" y=\"100\"/><di:waypoint x=\"375\" y=\"100\"/></bpmndi:BPMNEdge><bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-12-_jbpm-unique-13\"><di:waypoint x=\"425\" y=\"100\"/><di:waypoint x=\"525\" y=\"100\"/></bpmndi:BPMNEdge><bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-13-_jbpm-unique-14\"><di:waypoint x=\"625\" y=\"100\"/><di:waypoint x=\"725\" y=\"100\"/></bpmndi:BPMNEdge><bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-14-_jbpm-unique-15\"><di:waypoint x=\"825\" y=\"100\"/><di:waypoint x=\"925\" y=\"100\"/></bpmndi:BPMNEdge><bpmndi:BPMNShape bpmnElement=\"_jbpm-unique-18\"><dc:Bounds x=\"600\" y=\"0\" width=\"50\" height=\"50\"/></bpmndi:BPMNShape><bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-0-_jbpm-unique-1\"><di:waypoint x=\"625\" y=\"400\"/><di:waypoint x=\"625\" y=\"500\"/></bpmndi:BPMNEdge><bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-1-_jbpm-unique-8\"><di:waypoint x=\"625\" y=\"700\"/><di:waypoint x=\"625\" y=\"800\"/></bpmndi:BPMNEdge><bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-8-_jbpm-unique-9\"><di:waypoint x=\"625\" y=\"1400\"/><di:waypoint x=\"625\" y=\"1500\"/></bpmndi:BPMNEdge><bpmndi:BPMNEdge bpmnElement=\"_jbpm-unique-9-_jbpm-unique-18\"><di:waypoint x=\"625\" y=\"1700\"/><di:waypoint x=\"625\" y=\"1800\"/></bpmndi:BPMNEdge></bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n\r\n</definitions>\r\n');
