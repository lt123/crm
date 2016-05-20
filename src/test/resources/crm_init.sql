/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50709
Source Host           : localhost:3306
Source Database       : crm

Target Server Type    : MYSQL
Target Server Version : 50709
File Encoding         : 65001

Date: 2016-05-19 17:39:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL COMMENT '0：女 1：男',
  `status` int(11) DEFAULT NULL COMMENT '员工状态：1—正常 2—离职',
  `login_ip` varchar(255) DEFAULT NULL,
  `login_time` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL COMMENT '上次登录ip',
  `last_login_time` timestamp NULL DEFAULT NULL COMMENT '上次登录时间',
  `input_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1028 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('720', 'admin', 'admin', 'xxx@qq.com2', '2', '0', '0', '0:0:0:0:0:0:0:1', '2016-05-19 17:15:41', '0:0:0:0:0:0:0:1', '2016-05-19 16:37:23', '2016-05-19 17:15:41');
INSERT INTO `user` VALUES ('721', 'name3', 'admin3', 'xxx@qq.com3', '3', '1', '1', 'loginip3', '2016-05-18 16:38:17', 'lastloginip3', '2016-05-18 16:38:17', '2016-05-18 16:38:17');
INSERT INTO `user` VALUES ('722', 'name4', 'admin4', 'xxx@qq.com4', '4', '0', '0', 'loginip4', '2016-05-18 16:38:17', 'lastloginip4', '2016-05-18 16:38:17', '2016-05-18 16:38:17');
INSERT INTO `user` VALUES ('723', 'name5', 'admin5', 'xxx@qq.com5', '5', '1', '1', 'loginip5', '2016-05-18 16:38:17', 'lastloginip5', '2016-05-18 16:38:17', '2016-05-18 16:38:17');
INSERT INTO `user` VALUES ('724', 'name6', 'admin6', 'xxx@qq.com6', '6', '0', '0', 'loginip6', '2016-05-18 16:38:17', 'lastloginip6', '2016-05-18 16:38:17', '2016-05-18 16:38:17');
INSERT INTO `user` VALUES ('725', 'name7', 'admin7', 'xxx@qq.com7', '7', '1', '1', 'loginip7', '2016-05-18 16:38:17', 'lastloginip7', '2016-05-18 16:38:17', '2016-05-18 16:38:17');
INSERT INTO `user` VALUES ('726', 'name8', 'admin8', 'xxx@qq.com8', '8', '0', '0', 'loginip8', '2016-05-18 16:38:18', 'lastloginip8', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('727', 'name9', 'admin9', 'xxx@qq.com9', '9', '1', '1', 'loginip9', '2016-05-18 16:38:18', 'lastloginip9', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('728', 'name10', 'admin10', 'xxx@qq.com10', '10', '0', '0', 'loginip10', '2016-05-18 16:38:18', 'lastloginip10', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('729', 'name11', 'admin11', 'xxx@qq.com11', '11', '1', '1', 'loginip11', '2016-05-18 16:38:18', 'lastloginip11', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('730', 'name12', 'admin12', 'xxx@qq.com12', '12', '0', '0', 'loginip12', '2016-05-18 16:38:18', 'lastloginip12', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('731', 'name13', 'admin13', 'xxx@qq.com13', '13', '1', '1', 'loginip13', '2016-05-18 16:38:18', 'lastloginip13', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('732', 'name14', 'admin14', 'xxx@qq.com14', '14', '0', '0', 'loginip14', '2016-05-18 16:38:18', 'lastloginip14', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('733', 'name15', 'admin15', 'xxx@qq.com15', '15', '1', '1', 'loginip15', '2016-05-18 16:38:18', 'lastloginip15', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('734', 'name16', 'admin16', 'xxx@qq.com16', '16', '0', '0', 'loginip16', '2016-05-18 16:38:18', 'lastloginip16', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('735', 'name17', 'admin17', 'xxx@qq.com17', '17', '1', '1', 'loginip17', '2016-05-18 16:38:18', 'lastloginip17', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('736', 'name18', 'admin18', 'xxx@qq.com18', '18', '0', '0', 'loginip18', '2016-05-18 16:38:18', 'lastloginip18', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('737', 'name19', 'admin19', 'xxx@qq.com19', '19', '1', '1', 'loginip19', '2016-05-18 16:38:18', 'lastloginip19', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('738', 'name20', 'admin20', 'xxx@qq.com20', '20', '0', '0', 'loginip20', '2016-05-18 16:38:18', 'lastloginip20', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('739', 'name21', 'admin21', 'xxx@qq.com21', '21', '1', '1', 'loginip21', '2016-05-18 16:38:18', 'lastloginip21', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('742', 'name24', 'admin24', 'xxx@qq.com24', '24', '0', '0', 'loginip24', '2016-05-18 16:38:18', 'lastloginip24', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('743', 'name25', 'admin25', 'xxx@qq.com25', '25', '1', '1', 'loginip25', '2016-05-18 16:38:18', 'lastloginip25', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('744', 'name26', 'admin26', 'xxx@qq.com26', '26', '0', '0', 'loginip26', '2016-05-18 16:38:18', 'lastloginip26', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('745', 'name27', 'admin27', 'xxx@qq.com27', '27', '1', '1', 'loginip27', '2016-05-18 16:38:18', 'lastloginip27', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('746', 'name28', 'admin28', 'xxx@qq.com28', '28', '0', '0', 'loginip28', '2016-05-18 16:38:18', 'lastloginip28', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('747', 'name29', 'admin29', 'xxx@qq.com29', '29', '1', '1', 'loginip29', '2016-05-18 16:38:18', 'lastloginip29', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('748', 'name30', 'admin30', 'xxx@qq.com30', '30', '0', '0', 'loginip30', '2016-05-18 16:38:18', 'lastloginip30', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('749', 'name31', 'admin31', 'xxx@qq.com31', '31', '1', '1', 'loginip31', '2016-05-18 16:38:18', 'lastloginip31', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('750', 'name32', 'admin32', 'xxx@qq.com32', '32', '0', '0', 'loginip32', '2016-05-18 16:38:18', 'lastloginip32', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('751', 'name33', 'admin33', 'xxx@qq.com33', '33', '1', '1', 'loginip33', '2016-05-18 16:38:18', 'lastloginip33', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('752', 'name34', 'admin34', 'xxx@qq.com34', '34', '0', '0', 'loginip34', '2016-05-18 16:38:18', 'lastloginip34', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('753', 'name35', 'admin35', 'xxx@qq.com35', '35', '1', '1', 'loginip35', '2016-05-18 16:38:18', 'lastloginip35', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('754', 'name36', 'admin36', 'xxx@qq.com36', '36', '0', '0', 'loginip36', '2016-05-18 16:38:18', 'lastloginip36', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('755', 'name37', 'admin37', 'xxx@qq.com37', '37', '1', '1', 'loginip37', '2016-05-18 16:38:18', 'lastloginip37', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('756', 'name38', 'admin38', 'xxx@qq.com38', '38', '0', '0', 'loginip38', '2016-05-18 16:38:18', 'lastloginip38', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('757', 'name39', 'admin39', 'xxx@qq.com39', '39', '1', '1', 'loginip39', '2016-05-18 16:38:18', 'lastloginip39', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('758', 'name40', 'admin40', 'xxx@qq.com40', '40', '0', '0', 'loginip40', '2016-05-18 16:38:18', 'lastloginip40', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('759', 'name41', 'admin41', 'xxx@qq.com41', '41', '1', '1', 'loginip41', '2016-05-18 16:38:18', 'lastloginip41', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('760', 'name42', 'admin42', 'xxx@qq.com42', '42', '0', '0', 'loginip42', '2016-05-18 16:38:18', 'lastloginip42', '2016-05-18 16:38:18', '2016-05-18 16:38:18');
INSERT INTO `user` VALUES ('761', 'name43', 'admin43', 'xxx@qq.com43', '43', '1', '1', 'loginip43', '2016-05-18 16:38:19', 'lastloginip43', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('762', 'name44', 'admin44', 'xxx@qq.com44', '44', '0', '0', 'loginip44', '2016-05-18 16:38:19', 'lastloginip44', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('763', 'name45', 'admin45', 'xxx@qq.com45', '45', '1', '1', 'loginip45', '2016-05-18 16:38:19', 'lastloginip45', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('764', 'name46', 'admin46', 'xxx@qq.com46', '46', '0', '0', 'loginip46', '2016-05-18 16:38:19', 'lastloginip46', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('765', 'name47', 'admin47', 'xxx@qq.com47', '47', '1', '1', 'loginip47', '2016-05-18 16:38:19', 'lastloginip47', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('766', 'name48', 'admin48', 'xxx@qq.com48', '48', '0', '0', 'loginip48', '2016-05-18 16:38:19', 'lastloginip48', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('767', 'name49', 'admin49', 'xxx@qq.com49', '49', '1', '1', 'loginip49', '2016-05-18 16:38:19', 'lastloginip49', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('768', 'name50', 'admin50', 'xxx@qq.com50', '50', '0', '0', 'loginip50', '2016-05-18 16:38:19', 'lastloginip50', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('769', 'name51', 'admin51', 'xxx@qq.com51', '51', '1', '1', 'loginip51', '2016-05-18 16:38:19', 'lastloginip51', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('770', 'name52', 'admin52', 'xxx@qq.com52', '52', '0', '0', 'loginip52', '2016-05-18 16:38:19', 'lastloginip52', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('771', 'name53', 'admin53', 'xxx@qq.com53', '53', '1', '1', 'loginip53', '2016-05-18 16:38:19', 'lastloginip53', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('772', 'name54', 'admin54', 'xxx@qq.com54', '54', '0', '0', 'loginip54', '2016-05-18 16:38:19', 'lastloginip54', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('773', 'name55', 'admin55', 'xxx@qq.com55', '55', '1', '1', 'loginip55', '2016-05-18 16:38:19', 'lastloginip55', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('774', 'name56', 'admin56', 'xxx@qq.com56', '56', '0', '0', 'loginip56', '2016-05-18 16:38:19', 'lastloginip56', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('775', 'name57', 'admin57', 'xxx@qq.com57', '57', '1', '1', 'loginip57', '2016-05-18 16:38:19', 'lastloginip57', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('776', 'name58', 'admin58', 'xxx@qq.com58', '58', '0', '0', 'loginip58', '2016-05-18 16:38:19', 'lastloginip58', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('777', 'name59', 'admin59', 'xxx@qq.com59', '59', '1', '1', 'loginip59', '2016-05-18 16:38:19', 'lastloginip59', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('778', 'name60', 'admin60', 'xxx@qq.com60', '60', '0', '0', 'loginip60', '2016-05-18 16:38:19', 'lastloginip60', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('779', 'name61', 'admin61', 'xxx@qq.com61', '61', '1', '1', 'loginip61', '2016-05-18 16:38:19', 'lastloginip61', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('780', 'name62', 'admin62', 'xxx@qq.com62', '62', '0', '0', 'loginip62', '2016-05-18 16:38:19', 'lastloginip62', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('781', 'name63', 'admin63', 'xxx@qq.com63', '63', '1', '1', 'loginip63', '2016-05-18 16:38:19', 'lastloginip63', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('782', 'name64', 'admin64', 'xxx@qq.com64', '64', '0', '0', 'loginip64', '2016-05-18 16:38:19', 'lastloginip64', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('783', 'name65', 'admin65', 'xxx@qq.com65', '65', '1', '1', 'loginip65', '2016-05-18 16:38:19', 'lastloginip65', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('784', 'name66', 'admin66', 'xxx@qq.com66', '66', '0', '0', 'loginip66', '2016-05-18 16:38:19', 'lastloginip66', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('785', 'name67', 'admin67', 'xxx@qq.com67', '67', '1', '1', 'loginip67', '2016-05-18 16:38:19', 'lastloginip67', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('786', 'name68', 'admin68', 'xxx@qq.com68', '68', '0', '0', 'loginip68', '2016-05-18 16:38:19', 'lastloginip68', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('787', 'name69', 'admin69', 'xxx@qq.com69', '69', '1', '1', 'loginip69', '2016-05-18 16:38:19', 'lastloginip69', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('788', 'name70', 'admin70', 'xxx@qq.com70', '70', '0', '0', 'loginip70', '2016-05-18 16:38:19', 'lastloginip70', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('789', 'name71', 'admin71', 'xxx@qq.com71', '71', '1', '1', 'loginip71', '2016-05-18 16:38:19', 'lastloginip71', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('790', 'name72', 'admin72', 'xxx@qq.com72', '72', '0', '0', 'loginip72', '2016-05-18 16:38:19', 'lastloginip72', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('791', 'name73', 'admin73', 'xxx@qq.com73', '73', '1', '1', 'loginip73', '2016-05-18 16:38:19', 'lastloginip73', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('792', 'name74', 'admin74', 'xxx@qq.com74', '74', '0', '0', 'loginip74', '2016-05-18 16:38:19', 'lastloginip74', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('793', 'name75', 'admin75', 'xxx@qq.com75', '75', '1', '1', 'loginip75', '2016-05-18 16:38:19', 'lastloginip75', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('794', 'name76', 'admin76', 'xxx@qq.com76', '76', '0', '0', 'loginip76', '2016-05-18 16:38:19', 'lastloginip76', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('795', 'name77', 'admin77', 'xxx@qq.com77', '77', '1', '1', 'loginip77', '2016-05-18 16:38:19', 'lastloginip77', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('796', 'name78', 'admin78', 'xxx@qq.com78', '78', '0', '0', 'loginip78', '2016-05-18 16:38:19', 'lastloginip78', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('797', 'name79', 'admin79', 'xxx@qq.com79', '79', '1', '1', 'loginip79', '2016-05-18 16:38:19', 'lastloginip79', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('798', 'name80', 'admin80', 'xxx@qq.com80', '80', '0', '0', 'loginip80', '2016-05-18 16:38:19', 'lastloginip80', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('799', 'name81', 'admin81', 'xxx@qq.com81', '81', '1', '1', 'loginip81', '2016-05-18 16:38:19', 'lastloginip81', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('800', 'name82', 'admin82', 'xxx@qq.com82', '82', '0', '0', 'loginip82', '2016-05-18 16:38:19', 'lastloginip82', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('801', 'name83', 'admin83', 'xxx@qq.com83', '83', '1', '1', 'loginip83', '2016-05-18 16:38:19', 'lastloginip83', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('802', 'name84', 'admin84', 'xxx@qq.com84', '84', '0', '0', 'loginip84', '2016-05-18 16:38:19', 'lastloginip84', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('803', 'name85', 'admin85', 'xxx@qq.com85', '85', '1', '1', 'loginip85', '2016-05-18 16:38:19', 'lastloginip85', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('804', 'name86', 'admin86', 'xxx@qq.com86', '86', '0', '0', 'loginip86', '2016-05-18 16:38:19', 'lastloginip86', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('805', 'name87', 'admin87', 'xxx@qq.com87', '87', '1', '1', 'loginip87', '2016-05-18 16:38:19', 'lastloginip87', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('806', 'name88', 'admin88', 'xxx@qq.com88', '88', '0', '0', 'loginip88', '2016-05-18 16:38:19', 'lastloginip88', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('807', 'name89', 'admin89', 'xxx@qq.com89', '89', '1', '1', 'loginip89', '2016-05-18 16:38:19', 'lastloginip89', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('808', 'name90', 'admin90', 'xxx@qq.com90', '90', '0', '0', 'loginip90', '2016-05-18 16:38:19', 'lastloginip90', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('809', 'name91', 'admin91', 'xxx@qq.com91', '91', '1', '1', 'loginip91', '2016-05-18 16:38:19', 'lastloginip91', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('810', 'name92', 'admin92', 'xxx@qq.com92', '92', '0', '0', 'loginip92', '2016-05-18 16:38:19', 'lastloginip92', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('811', 'name93', 'admin93', 'xxx@qq.com93', '93', '1', '1', 'loginip93', '2016-05-18 16:38:19', 'lastloginip93', '2016-05-18 16:38:19', '2016-05-18 16:38:19');
INSERT INTO `user` VALUES ('812', 'name94', 'admin94', 'xxx@qq.com94', '94', '0', '0', 'loginip94', '2016-05-18 16:38:20', 'lastloginip94', '2016-05-18 16:38:20', '2016-05-18 16:38:20');
INSERT INTO `user` VALUES ('813', 'name95', 'admin95', 'xxx@qq.com95', '95', '1', '1', 'loginip95', '2016-05-18 16:38:20', 'lastloginip95', '2016-05-18 16:38:20', '2016-05-18 16:38:20');
INSERT INTO `user` VALUES ('814', 'name96', 'admin96', 'xxx@qq.com96', '96', '0', '0', 'loginip96', '2016-05-18 16:38:20', 'lastloginip96', '2016-05-18 16:38:20', '2016-05-18 16:38:20');
INSERT INTO `user` VALUES ('815', 'name97', 'admin97', 'xxx@qq.com97', '97', '1', '1', 'loginip97', '2016-05-18 16:38:20', 'lastloginip97', '2016-05-18 16:38:20', '2016-05-18 16:38:20');
INSERT INTO `user` VALUES ('816', 'name98', 'admin98', 'xxx@qq.com98', '98', '0', '0', 'loginip98', '2016-05-18 16:38:20', 'lastloginip98', '2016-05-18 16:38:20', '2016-05-18 16:38:20');
INSERT INTO `user` VALUES ('817', 'name99', 'admin99', 'xxx@qq.com99', '99', '1', '1', 'loginip99', '2016-05-18 16:38:20', 'lastloginip99', '2016-05-18 16:38:20', '2016-05-18 16:38:20');
INSERT INTO `user` VALUES ('818', 'name100', 'admin100', 'xxx@qq.com100', '100', '0', '0', 'loginip100', '2016-05-18 16:38:20', 'lastloginip100', '2016-05-18 16:38:20', '2016-05-18 16:38:20');
INSERT INTO `user` VALUES ('819', 'name0', 'admin0', 'xxx@qq.com0', '0', '0', '0', 'loginip0', '2016-05-18 16:38:48', 'lastloginip0', '2016-05-18 16:38:48', '2016-05-18 16:38:48');
INSERT INTO `user` VALUES ('820', 'name1', 'admin1', 'xxx@qq.com1', '1', '1', '1', 'loginip1', '2016-05-18 16:38:49', 'lastloginip1', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('821', 'name2', 'admin2', 'xxx@qq.com2', '2', '0', '0', 'loginip2', '2016-05-18 16:38:49', 'lastloginip2', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('822', 'name3', 'admin3', 'xxx@qq.com3', '3', '1', '1', 'loginip3', '2016-05-18 16:38:49', 'lastloginip3', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('823', 'name4', 'admin4', 'xxx@qq.com4', '4', '0', '0', 'loginip4', '2016-05-18 16:38:49', 'lastloginip4', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('824', 'name5', 'admin5', 'xxx@qq.com5', '5', '1', '1', 'loginip5', '2016-05-18 16:38:49', 'lastloginip5', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('825', 'name6', 'admin6', 'xxx@qq.com6', '6', '0', '0', 'loginip6', '2016-05-18 16:38:49', 'lastloginip6', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('826', 'name7', 'admin7', 'xxx@qq.com7', '7', '1', '1', 'loginip7', '2016-05-18 16:38:49', 'lastloginip7', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('827', 'name8', 'admin8', 'xxx@qq.com8', '8', '0', '0', 'loginip8', '2016-05-18 16:38:49', 'lastloginip8', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('828', 'name9', 'admin9', 'xxx@qq.com9', '9', '1', '1', 'loginip9', '2016-05-18 16:38:49', 'lastloginip9', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('829', 'name10', 'admin10', 'xxx@qq.com10', '10', '0', '0', 'loginip10', '2016-05-18 16:38:49', 'lastloginip10', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('830', 'name11', 'admin11', 'xxx@qq.com11', '11', '1', '1', 'loginip11', '2016-05-18 16:38:49', 'lastloginip11', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('831', 'name12', 'admin12', 'xxx@qq.com12', '12', '0', '0', 'loginip12', '2016-05-18 16:38:49', 'lastloginip12', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('832', 'name13', 'admin13', 'xxx@qq.com13', '13', '1', '1', 'loginip13', '2016-05-18 16:38:49', 'lastloginip13', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('833', 'name14', 'admin14', 'xxx@qq.com14', '14', '0', '0', 'loginip14', '2016-05-18 16:38:49', 'lastloginip14', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('834', 'name15', 'admin15', 'xxx@qq.com15', '15', '1', '1', 'loginip15', '2016-05-18 16:38:49', 'lastloginip15', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('835', 'name16', 'admin16', 'xxx@qq.com16', '16', '0', '0', 'loginip16', '2016-05-18 16:38:49', 'lastloginip16', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('836', 'name17', 'admin17', 'xxx@qq.com17', '17', '1', '1', 'loginip17', '2016-05-18 16:38:49', 'lastloginip17', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('837', 'name18', 'admin18', 'xxx@qq.com18', '18', '0', '0', 'loginip18', '2016-05-18 16:38:49', 'lastloginip18', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('838', 'name19', 'admin19', 'xxx@qq.com19', '19', '1', '1', 'loginip19', '2016-05-18 16:38:49', 'lastloginip19', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('839', 'name20', 'admin20', 'xxx@qq.com20', '20', '0', '0', 'loginip20', '2016-05-18 16:38:49', 'lastloginip20', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('840', 'name21', 'admin21', 'xxx@qq.com21', '21', '1', '1', 'loginip21', '2016-05-18 16:38:49', 'lastloginip21', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('841', 'name22', 'admin22', 'xxx@qq.com22', '22', '0', '0', 'loginip22', '2016-05-18 16:38:49', 'lastloginip22', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('842', 'name23', 'admin23', 'xxx@qq.com23', '23', '1', '1', 'loginip23', '2016-05-18 16:38:49', 'lastloginip23', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('843', 'name24', 'admin24', 'xxx@qq.com24', '24', '0', '0', 'loginip24', '2016-05-18 16:38:49', 'lastloginip24', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('844', 'name25', 'admin25', 'xxx@qq.com25', '25', '1', '1', 'loginip25', '2016-05-18 16:38:49', 'lastloginip25', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('845', 'name26', 'admin26', 'xxx@qq.com26', '26', '0', '0', 'loginip26', '2016-05-18 16:38:49', 'lastloginip26', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('846', 'name27', 'admin27', 'xxx@qq.com27', '27', '1', '1', 'loginip27', '2016-05-18 16:38:49', 'lastloginip27', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('847', 'name28', 'admin28', 'xxx@qq.com28', '28', '0', '0', 'loginip28', '2016-05-18 16:38:49', 'lastloginip28', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('848', 'name29', 'admin29', 'xxx@qq.com29', '29', '1', '1', 'loginip29', '2016-05-18 16:38:49', 'lastloginip29', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('849', 'name30', 'admin30', 'xxx@qq.com30', '30', '0', '0', 'loginip30', '2016-05-18 16:38:49', 'lastloginip30', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('850', 'name31', 'admin31', 'xxx@qq.com31', '31', '1', '1', 'loginip31', '2016-05-18 16:38:49', 'lastloginip31', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('851', 'name32', 'admin32', 'xxx@qq.com32', '32', '0', '0', 'loginip32', '2016-05-18 16:38:49', 'lastloginip32', '2016-05-18 16:38:49', '2016-05-18 16:38:49');
INSERT INTO `user` VALUES ('852', 'name33', 'admin33', 'xxx@qq.com33', '33', '1', '1', 'loginip33', '2016-05-18 16:38:50', 'lastloginip33', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('853', 'name34', 'admin34', 'xxx@qq.com34', '34', '0', '0', 'loginip34', '2016-05-18 16:38:50', 'lastloginip34', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('854', 'name35', 'admin35', 'xxx@qq.com35', '35', '1', '1', 'loginip35', '2016-05-18 16:38:50', 'lastloginip35', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('855', 'name36', 'admin36', 'xxx@qq.com36', '36', '0', '0', 'loginip36', '2016-05-18 16:38:50', 'lastloginip36', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('856', 'name37', 'admin37', 'xxx@qq.com37', '37', '1', '1', 'loginip37', '2016-05-18 16:38:50', 'lastloginip37', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('857', 'name38', 'admin38', 'xxx@qq.com38', '38', '0', '0', 'loginip38', '2016-05-18 16:38:50', 'lastloginip38', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('858', 'name39', 'admin39', 'xxx@qq.com39', '39', '1', '1', 'loginip39', '2016-05-18 16:38:50', 'lastloginip39', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('859', 'name40', 'admin40', 'xxx@qq.com40', '40', '0', '0', 'loginip40', '2016-05-18 16:38:50', 'lastloginip40', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('860', 'name41', 'admin41', 'xxx@qq.com41', '41', '1', '1', 'loginip41', '2016-05-18 16:38:50', 'lastloginip41', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('861', 'name42', 'admin42', 'xxx@qq.com42', '42', '0', '0', 'loginip42', '2016-05-18 16:38:50', 'lastloginip42', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('862', 'name43', 'admin43', 'xxx@qq.com43', '43', '1', '1', 'loginip43', '2016-05-18 16:38:50', 'lastloginip43', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('863', 'name44', 'admin44', 'xxx@qq.com44', '44', '0', '0', 'loginip44', '2016-05-18 16:38:50', 'lastloginip44', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('864', 'name45', 'admin45', 'xxx@qq.com45', '45', '1', '1', 'loginip45', '2016-05-18 16:38:50', 'lastloginip45', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('865', 'name46', 'admin46', 'xxx@qq.com46', '46', '0', '0', 'loginip46', '2016-05-18 16:38:50', 'lastloginip46', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('866', 'name47', 'admin47', 'xxx@qq.com47', '47', '1', '1', 'loginip47', '2016-05-18 16:38:50', 'lastloginip47', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('867', 'name48', 'admin48', 'xxx@qq.com48', '48', '0', '0', 'loginip48', '2016-05-18 16:38:50', 'lastloginip48', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('868', 'name49', 'admin49', 'xxx@qq.com49', '49', '1', '1', 'loginip49', '2016-05-18 16:38:50', 'lastloginip49', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('869', 'name50', 'admin50', 'xxx@qq.com50', '50', '0', '0', 'loginip50', '2016-05-18 16:38:50', 'lastloginip50', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('870', 'name51', 'admin51', 'xxx@qq.com51', '51', '1', '1', 'loginip51', '2016-05-18 16:38:50', 'lastloginip51', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('871', 'name52', 'admin52', 'xxx@qq.com52', '52', '0', '0', 'loginip52', '2016-05-18 16:38:50', 'lastloginip52', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('872', 'name53', 'admin53', 'xxx@qq.com53', '53', '1', '1', 'loginip53', '2016-05-18 16:38:50', 'lastloginip53', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('873', 'name54', 'admin54', 'xxx@qq.com54', '54', '0', '0', 'loginip54', '2016-05-18 16:38:50', 'lastloginip54', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('874', 'name55', 'admin55', 'xxx@qq.com55', '55', '1', '1', 'loginip55', '2016-05-18 16:38:50', 'lastloginip55', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('875', 'name56', 'admin56', 'xxx@qq.com56', '56', '0', '0', 'loginip56', '2016-05-18 16:38:50', 'lastloginip56', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('876', 'name57', 'admin57', 'xxx@qq.com57', '57', '1', '1', 'loginip57', '2016-05-18 16:38:50', 'lastloginip57', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('877', 'name58', 'admin58', 'xxx@qq.com58', '58', '0', '0', 'loginip58', '2016-05-18 16:38:50', 'lastloginip58', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('878', 'name59', 'admin59', 'xxx@qq.com59', '59', '1', '1', 'loginip59', '2016-05-18 16:38:50', 'lastloginip59', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('879', 'name60', 'admin60', 'xxx@qq.com60', '60', '0', '0', 'loginip60', '2016-05-18 16:38:50', 'lastloginip60', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('880', 'name61', 'admin61', 'xxx@qq.com61', '61', '1', '1', 'loginip61', '2016-05-18 16:38:50', 'lastloginip61', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('881', 'name62', 'admin62', 'xxx@qq.com62', '62', '0', '0', 'loginip62', '2016-05-18 16:38:50', 'lastloginip62', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('882', 'name63', 'admin63', 'xxx@qq.com63', '63', '1', '1', 'loginip63', '2016-05-18 16:38:50', 'lastloginip63', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('883', 'name64', 'admin64', 'xxx@qq.com64', '64', '0', '0', 'loginip64', '2016-05-18 16:38:50', 'lastloginip64', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('884', 'name65', 'admin65', 'xxx@qq.com65', '65', '1', '1', 'loginip65', '2016-05-18 16:38:50', 'lastloginip65', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('885', 'name66', 'admin66', 'xxx@qq.com66', '66', '0', '0', 'loginip66', '2016-05-18 16:38:50', 'lastloginip66', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('886', 'name67', 'admin67', 'xxx@qq.com67', '67', '1', '1', 'loginip67', '2016-05-18 16:38:50', 'lastloginip67', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('887', 'name68', 'admin68', 'xxx@qq.com68', '68', '0', '0', 'loginip68', '2016-05-18 16:38:50', 'lastloginip68', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('888', 'name69', 'admin69', 'xxx@qq.com69', '69', '1', '1', 'loginip69', '2016-05-18 16:38:50', 'lastloginip69', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('889', 'name70', 'admin70', 'xxx@qq.com70', '70', '0', '0', 'loginip70', '2016-05-18 16:38:50', 'lastloginip70', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('890', 'name71', 'admin71', 'xxx@qq.com71', '71', '1', '1', 'loginip71', '2016-05-18 16:38:50', 'lastloginip71', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('891', 'name72', 'admin72', 'xxx@qq.com72', '72', '0', '0', 'loginip72', '2016-05-18 16:38:50', 'lastloginip72', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('892', 'name73', 'admin73', 'xxx@qq.com73', '73', '1', '1', 'loginip73', '2016-05-18 16:38:50', 'lastloginip73', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('893', 'name74', 'admin74', 'xxx@qq.com74', '74', '0', '0', 'loginip74', '2016-05-18 16:38:50', 'lastloginip74', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('894', 'name75', 'admin75', 'xxx@qq.com75', '75', '1', '1', 'loginip75', '2016-05-18 16:38:50', 'lastloginip75', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('895', 'name76', 'admin76', 'xxx@qq.com76', '76', '0', '0', 'loginip76', '2016-05-18 16:38:50', 'lastloginip76', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('896', 'name77', 'admin77', 'xxx@qq.com77', '77', '1', '1', 'loginip77', '2016-05-18 16:38:50', 'lastloginip77', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('897', 'name78', 'admin78', 'xxx@qq.com78', '78', '0', '0', 'loginip78', '2016-05-18 16:38:50', 'lastloginip78', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('898', 'name79', 'admin79', 'xxx@qq.com79', '79', '1', '1', 'loginip79', '2016-05-18 16:38:50', 'lastloginip79', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('899', 'name80', 'admin80', 'xxx@qq.com80', '80', '0', '0', 'loginip80', '2016-05-18 16:38:50', 'lastloginip80', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('900', 'name81', 'admin81', 'xxx@qq.com81', '81', '1', '1', 'loginip81', '2016-05-18 16:38:50', 'lastloginip81', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('901', 'name82', 'admin82', 'xxx@qq.com82', '82', '0', '0', 'loginip82', '2016-05-18 16:38:50', 'lastloginip82', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('902', 'name83', 'admin83', 'xxx@qq.com83', '83', '1', '1', 'loginip83', '2016-05-18 16:38:50', 'lastloginip83', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('903', 'name84', 'admin84', 'xxx@qq.com84', '84', '0', '0', 'loginip84', '2016-05-18 16:38:50', 'lastloginip84', '2016-05-18 16:38:50', '2016-05-18 16:38:50');
INSERT INTO `user` VALUES ('904', 'name85', 'admin85', 'xxx@qq.com85', '85', '1', '1', 'loginip85', '2016-05-18 16:38:51', 'lastloginip85', '2016-05-18 16:38:51', '2016-05-18 16:38:51');
INSERT INTO `user` VALUES ('905', 'name86', 'admin86', 'xxx@qq.com86', '86', '0', '0', 'loginip86', '2016-05-18 16:38:51', 'lastloginip86', '2016-05-18 16:38:51', '2016-05-18 16:38:51');
INSERT INTO `user` VALUES ('906', 'name87', 'admin87', 'xxx@qq.com87', '87', '1', '1', 'loginip87', '2016-05-18 16:38:51', 'lastloginip87', '2016-05-18 16:38:51', '2016-05-18 16:38:51');
INSERT INTO `user` VALUES ('907', 'name88', 'admin88', 'xxx@qq.com88', '88', '0', '0', 'loginip88', '2016-05-18 16:38:51', 'lastloginip88', '2016-05-18 16:38:51', '2016-05-18 16:38:51');
INSERT INTO `user` VALUES ('908', 'name89', 'admin89', 'xxx@qq.com89', '89', '1', '1', 'loginip89', '2016-05-18 16:38:51', 'lastloginip89', '2016-05-18 16:38:51', '2016-05-18 16:38:51');
INSERT INTO `user` VALUES ('909', 'name90', 'admin90', 'xxx@qq.com90', '90', '0', '0', 'loginip90', '2016-05-18 16:38:51', 'lastloginip90', '2016-05-18 16:38:51', '2016-05-18 16:38:51');
INSERT INTO `user` VALUES ('910', 'name91', 'admin91', 'xxx@qq.com91', '91', '1', '1', 'loginip91', '2016-05-18 16:38:51', 'lastloginip91', '2016-05-18 16:38:51', '2016-05-18 16:38:51');
INSERT INTO `user` VALUES ('911', 'name92', 'admin92', 'xxx@qq.com92', '92', '0', '0', 'loginip92', '2016-05-18 16:38:51', 'lastloginip92', '2016-05-18 16:38:51', '2016-05-18 16:38:51');
INSERT INTO `user` VALUES ('912', 'name93', 'admin93', 'xxx@qq.com93', '93', '1', '1', 'loginip93', '2016-05-18 16:38:51', 'lastloginip93', '2016-05-18 16:38:51', '2016-05-18 16:38:51');
INSERT INTO `user` VALUES ('913', 'name94', 'admin94', 'xxx@qq.com94', '94', '0', '0', 'loginip94', '2016-05-18 16:38:51', 'lastloginip94', '2016-05-18 16:38:51', '2016-05-18 16:38:51');
INSERT INTO `user` VALUES ('914', 'name95', 'admin95', 'xxx@qq.com95', '95', '1', '1', 'loginip95', '2016-05-18 16:38:51', 'lastloginip95', '2016-05-18 16:38:51', '2016-05-18 16:38:51');
INSERT INTO `user` VALUES ('915', 'name96', 'admin96', 'xxx@qq.com96', '96', '0', '0', 'loginip96', '2016-05-18 16:38:51', 'lastloginip96', '2016-05-18 16:38:51', '2016-05-18 16:38:51');
INSERT INTO `user` VALUES ('916', 'name97', 'admin97', 'xxx@qq.com97', '97', '1', '1', 'loginip97', '2016-05-18 16:38:51', 'lastloginip97', '2016-05-18 16:38:51', '2016-05-18 16:38:51');
INSERT INTO `user` VALUES ('917', 'name98', 'admin98', 'xxx@qq.com98', '98', '0', '0', 'loginip98', '2016-05-18 16:38:51', 'lastloginip98', '2016-05-18 16:38:51', '2016-05-18 16:38:51');
INSERT INTO `user` VALUES ('918', 'name99', 'admin99', 'xxx@qq.com99', '99', '1', '1', 'loginip99', '2016-05-18 16:38:51', 'lastloginip99', '2016-05-18 16:38:51', '2016-05-18 16:38:51');
INSERT INTO `user` VALUES ('919', 'name100', 'admin100', 'xxx@qq.com100', '100', '0', '0', 'loginip100', '2016-05-18 16:38:51', 'lastloginip100', '2016-05-18 16:38:51', '2016-05-18 16:38:51');
INSERT INTO `user` VALUES ('920', 'name0', 'admin0', 'xxx@qq.com0', '0', '0', '0', 'loginip0', '2016-05-18 16:40:18', 'lastloginip0', '2016-05-18 16:40:18', '2016-05-18 16:40:18');
INSERT INTO `user` VALUES ('921', 'name1', 'admin1', 'xxx@qq.com1', '1', '1', '1', 'loginip1', '2016-05-18 16:40:18', 'lastloginip1', '2016-05-18 16:40:18', '2016-05-18 16:40:18');
INSERT INTO `user` VALUES ('922', 'name2', 'admin2', 'xxx@qq.com2', '2', '0', '0', 'loginip2', '2016-05-18 16:40:18', 'lastloginip2', '2016-05-18 16:40:18', '2016-05-18 16:40:18');
INSERT INTO `user` VALUES ('923', 'name3', 'admin3', 'xxx@qq.com3', '3', '1', '1', 'loginip3', '2016-05-18 16:40:18', 'lastloginip3', '2016-05-18 16:40:18', '2016-05-18 16:40:18');
INSERT INTO `user` VALUES ('924', 'name4', 'admin4', 'xxx@qq.com4', '4', '0', '0', 'loginip4', '2016-05-18 16:40:18', 'lastloginip4', '2016-05-18 16:40:18', '2016-05-18 16:40:18');
INSERT INTO `user` VALUES ('925', 'name5', 'admin5', 'xxx@qq.com5', '5', '1', '1', 'loginip5', '2016-05-18 16:40:18', 'lastloginip5', '2016-05-18 16:40:18', '2016-05-18 16:40:18');
INSERT INTO `user` VALUES ('926', 'name6', 'admin6', 'xxx@qq.com6', '6', '0', '0', 'loginip6', '2016-05-18 16:40:18', 'lastloginip6', '2016-05-18 16:40:18', '2016-05-18 16:40:18');
INSERT INTO `user` VALUES ('927', 'name7', 'admin7', 'xxx@qq.com7', '7', '1', '1', 'loginip7', '2016-05-18 16:40:18', 'lastloginip7', '2016-05-18 16:40:18', '2016-05-18 16:40:18');
INSERT INTO `user` VALUES ('928', 'name8', 'admin8', 'xxx@qq.com8', '8', '0', '0', 'loginip8', '2016-05-18 16:40:18', 'lastloginip8', '2016-05-18 16:40:18', '2016-05-18 16:40:18');
INSERT INTO `user` VALUES ('929', 'name9', 'admin9', 'xxx@qq.com9', '9', '1', '1', 'loginip9', '2016-05-18 16:40:19', 'lastloginip9', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('930', 'name10', 'admin10', 'xxx@qq.com10', '10', '0', '0', 'loginip10', '2016-05-18 16:40:19', 'lastloginip10', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('931', 'name11', 'admin11', 'xxx@qq.com11', '11', '1', '1', 'loginip11', '2016-05-18 16:40:19', 'lastloginip11', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('932', 'name12', 'admin12', 'xxx@qq.com12', '12', '0', '0', 'loginip12', '2016-05-18 16:40:19', 'lastloginip12', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('933', 'name13', 'admin13', 'xxx@qq.com13', '13', '1', '1', 'loginip13', '2016-05-18 16:40:19', 'lastloginip13', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('934', 'name14', 'admin14', 'xxx@qq.com14', '14', '0', '0', 'loginip14', '2016-05-18 16:40:19', 'lastloginip14', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('935', 'name15', 'admin15', 'xxx@qq.com15', '15', '1', '1', 'loginip15', '2016-05-18 16:40:19', 'lastloginip15', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('936', 'name16', 'admin16', 'xxx@qq.com16', '16', '0', '0', 'loginip16', '2016-05-18 16:40:19', 'lastloginip16', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('937', 'name17', 'admin17', 'xxx@qq.com17', '17', '1', '1', 'loginip17', '2016-05-18 16:40:19', 'lastloginip17', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('938', 'name18', 'admin18', 'xxx@qq.com18', '18', '0', '0', 'loginip18', '2016-05-18 16:40:19', 'lastloginip18', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('939', 'name19', 'admin19', 'xxx@qq.com19', '19', '1', '1', 'loginip19', '2016-05-18 16:40:19', 'lastloginip19', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('940', 'name20', 'admin20', 'xxx@qq.com20', '20', '0', '0', 'loginip20', '2016-05-18 16:40:19', 'lastloginip20', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('941', 'name21', 'admin21', 'xxx@qq.com21', '21', '1', '1', 'loginip21', '2016-05-18 16:40:19', 'lastloginip21', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('942', 'name22', 'admin22', 'xxx@qq.com22', '22', '0', '0', 'loginip22', '2016-05-18 16:40:19', 'lastloginip22', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('943', 'name23', 'admin23', 'xxx@qq.com23', '23', '1', '1', 'loginip23', '2016-05-18 16:40:19', 'lastloginip23', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('944', 'name24', 'admin24', 'xxx@qq.com24', '24', '0', '0', 'loginip24', '2016-05-18 16:40:19', 'lastloginip24', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('945', 'name25', 'admin25', 'xxx@qq.com25', '25', '1', '1', 'loginip25', '2016-05-18 16:40:19', 'lastloginip25', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('946', 'name26', 'admin26', 'xxx@qq.com26', '26', '0', '0', 'loginip26', '2016-05-18 16:40:19', 'lastloginip26', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('947', 'name27', 'admin27', 'xxx@qq.com27', '27', '1', '1', 'loginip27', '2016-05-18 16:40:19', 'lastloginip27', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('948', 'name28', 'admin28', 'xxx@qq.com28', '28', '0', '0', 'loginip28', '2016-05-18 16:40:19', 'lastloginip28', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('949', 'name29', 'admin29', 'xxx@qq.com29', '29', '1', '1', 'loginip29', '2016-05-18 16:40:19', 'lastloginip29', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('950', 'name30', 'admin30', 'xxx@qq.com30', '30', '0', '0', 'loginip30', '2016-05-18 16:40:19', 'lastloginip30', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('951', 'name31', 'admin31', 'xxx@qq.com31', '31', '1', '1', 'loginip31', '2016-05-18 16:40:19', 'lastloginip31', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('952', 'name32', 'admin32', 'xxx@qq.com32', '32', '0', '0', 'loginip32', '2016-05-18 16:40:19', 'lastloginip32', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('953', 'name33', 'admin33', 'xxx@qq.com33', '33', '1', '1', 'loginip33', '2016-05-18 16:40:19', 'lastloginip33', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('954', 'name34', 'admin34', 'xxx@qq.com34', '34', '0', '0', 'loginip34', '2016-05-18 16:40:19', 'lastloginip34', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('955', 'name35', 'admin35', 'xxx@qq.com35', '35', '1', '1', 'loginip35', '2016-05-18 16:40:19', 'lastloginip35', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('956', 'name36', 'admin36', 'xxx@qq.com36', '36', '0', '0', 'loginip36', '2016-05-18 16:40:19', 'lastloginip36', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('957', 'name37', 'admin37', 'xxx@qq.com37', '37', '1', '1', 'loginip37', '2016-05-18 16:40:19', 'lastloginip37', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('958', 'name38', 'admin38', 'xxx@qq.com38', '38', '0', '0', 'loginip38', '2016-05-18 16:40:19', 'lastloginip38', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('959', 'name39', 'admin39', 'xxx@qq.com39', '39', '1', '1', 'loginip39', '2016-05-18 16:40:19', 'lastloginip39', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('960', 'name40', 'admin40', 'xxx@qq.com40', '40', '0', '0', 'loginip40', '2016-05-18 16:40:19', 'lastloginip40', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('961', 'name41', 'admin41', 'xxx@qq.com41', '41', '1', '1', 'loginip41', '2016-05-18 16:40:19', 'lastloginip41', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('962', 'name42', 'admin42', 'xxx@qq.com42', '42', '0', '0', 'loginip42', '2016-05-18 16:40:19', 'lastloginip42', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('963', 'name43', 'admin43', 'xxx@qq.com43', '43', '1', '1', 'loginip43', '2016-05-18 16:40:19', 'lastloginip43', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('964', 'name44', 'admin44', 'xxx@qq.com44', '44', '0', '0', 'loginip44', '2016-05-18 16:40:19', 'lastloginip44', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('965', 'name45', 'admin45', 'xxx@qq.com45', '45', '1', '1', 'loginip45', '2016-05-18 16:40:19', 'lastloginip45', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('966', 'name46', 'admin46', 'xxx@qq.com46', '46', '0', '0', 'loginip46', '2016-05-18 16:40:19', 'lastloginip46', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('967', 'name47', 'admin47', 'xxx@qq.com47', '47', '1', '1', 'loginip47', '2016-05-18 16:40:19', 'lastloginip47', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('968', 'name48', 'admin48', 'xxx@qq.com48', '48', '0', '0', 'loginip48', '2016-05-18 16:40:19', 'lastloginip48', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('969', 'name49', 'admin49', 'xxx@qq.com49', '49', '1', '1', 'loginip49', '2016-05-18 16:40:19', 'lastloginip49', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('970', 'name50', 'admin50', 'xxx@qq.com50', '50', '0', '0', 'loginip50', '2016-05-18 16:40:19', 'lastloginip50', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('971', 'name51', 'admin51', 'xxx@qq.com51', '51', '1', '1', 'loginip51', '2016-05-18 16:40:19', 'lastloginip51', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('972', 'name52', 'admin52', 'xxx@qq.com52', '52', '0', '0', 'loginip52', '2016-05-18 16:40:19', 'lastloginip52', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('973', 'name53', 'admin53', 'xxx@qq.com53', '53', '1', '1', 'loginip53', '2016-05-18 16:40:19', 'lastloginip53', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('974', 'name54', 'admin54', 'xxx@qq.com54', '54', '0', '0', 'loginip54', '2016-05-18 16:40:19', 'lastloginip54', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('975', 'name55', 'admin55', 'xxx@qq.com55', '55', '1', '1', 'loginip55', '2016-05-18 16:40:19', 'lastloginip55', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('976', 'name56', 'admin56', 'xxx@qq.com56', '56', '0', '0', 'loginip56', '2016-05-18 16:40:19', 'lastloginip56', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('977', 'name57', 'admin57', 'xxx@qq.com57', '57', '1', '1', 'loginip57', '2016-05-18 16:40:19', 'lastloginip57', '2016-05-18 16:40:19', '2016-05-18 16:40:19');
INSERT INTO `user` VALUES ('978', 'name58', 'admin58', 'xxx@qq.com58', '58', '0', '0', 'loginip58', '2016-05-18 16:40:20', 'lastloginip58', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('979', 'name59', 'admin59', 'xxx@qq.com59', '59', '1', '1', 'loginip59', '2016-05-18 16:40:20', 'lastloginip59', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('980', 'name60', 'admin60', 'xxx@qq.com60', '60', '0', '0', 'loginip60', '2016-05-18 16:40:20', 'lastloginip60', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('981', 'name61', 'admin61', 'xxx@qq.com61', '61', '1', '1', 'loginip61', '2016-05-18 16:40:20', 'lastloginip61', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('982', 'name62', 'admin62', 'xxx@qq.com62', '62', '0', '0', 'loginip62', '2016-05-18 16:40:20', 'lastloginip62', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('983', 'name63', 'admin63', 'xxx@qq.com63', '63', '1', '1', 'loginip63', '2016-05-18 16:40:20', 'lastloginip63', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('984', 'name64', 'admin64', 'xxx@qq.com64', '64', '0', '0', 'loginip64', '2016-05-18 16:40:20', 'lastloginip64', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('985', 'name65', 'admin65', 'xxx@qq.com65', '65', '1', '1', 'loginip65', '2016-05-18 16:40:20', 'lastloginip65', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('986', 'name66', 'admin66', 'xxx@qq.com66', '66', '0', '0', 'loginip66', '2016-05-18 16:40:20', 'lastloginip66', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('987', 'name67', 'admin67', 'xxx@qq.com67', '67', '1', '1', 'loginip67', '2016-05-18 16:40:20', 'lastloginip67', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('988', 'name68', 'admin68', 'xxx@qq.com68', '68', '0', '0', 'loginip68', '2016-05-18 16:40:20', 'lastloginip68', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('989', 'name69', 'admin69', 'xxx@qq.com69', '69', '1', '1', 'loginip69', '2016-05-18 16:40:20', 'lastloginip69', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('990', 'name70', 'admin70', 'xxx@qq.com70', '70', '0', '0', 'loginip70', '2016-05-18 16:40:20', 'lastloginip70', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('991', 'name71', 'admin71', 'xxx@qq.com71', '71', '1', '1', 'loginip71', '2016-05-18 16:40:20', 'lastloginip71', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('992', 'name72', 'admin72', 'xxx@qq.com72', '72', '0', '0', 'loginip72', '2016-05-18 16:40:20', 'lastloginip72', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('993', 'name73', 'admin73', 'xxx@qq.com73', '73', '1', '1', 'loginip73', '2016-05-18 16:40:20', 'lastloginip73', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('994', 'name74', 'admin74', 'xxx@qq.com74', '74', '0', '0', 'loginip74', '2016-05-18 16:40:20', 'lastloginip74', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('995', 'name75', 'admin75', 'xxx@qq.com75', '75', '1', '1', 'loginip75', '2016-05-18 16:40:20', 'lastloginip75', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('996', 'name76', 'admin76', 'xxx@qq.com76', '76', '0', '0', 'loginip76', '2016-05-18 16:40:20', 'lastloginip76', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('997', 'name77', 'admin77', 'xxx@qq.com77', '77', '1', '1', 'loginip77', '2016-05-18 16:40:20', 'lastloginip77', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('998', 'name78', 'admin78', 'xxx@qq.com78', '78', '0', '0', 'loginip78', '2016-05-18 16:40:20', 'lastloginip78', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('999', 'name79', 'admin79', 'xxx@qq.com79', '79', '1', '1', 'loginip79', '2016-05-18 16:40:20', 'lastloginip79', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('1000', 'name80', 'admin80', 'xxx@qq.com80', '80', '0', '0', 'loginip80', '2016-05-18 16:40:20', 'lastloginip80', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('1001', 'name81', 'admin81', 'xxx@qq.com81', '81', '1', '1', 'loginip81', '2016-05-18 16:40:20', 'lastloginip81', '2016-05-18 16:40:20', '2016-05-18 16:40:20');
INSERT INTO `user` VALUES ('1021', '萨达', 'asdasd', '23@qq.com', '0', '1', '1', null, null, null, null, '2016-05-19 17:35:00');
INSERT INTO `user` VALUES ('1022', '萨达', 'asdasd', '23@qq.com', '0', '1', '1', null, null, null, null, '2016-05-19 17:35:26');
INSERT INTO `user` VALUES ('1023', 'asd', 'asdas', '23@qq.com', '0', '1', '1', null, null, null, null, '2016-05-19 17:36:39');
INSERT INTO `user` VALUES ('1024', 'asd', 'asdas', '23@qq.com', '0', '1', '1', null, null, null, null, '2016-05-19 17:36:49');
INSERT INTO `user` VALUES ('1025', 'asd阿萨德', 'asd', 'asd@qq.com', '0', '1', '1', null, null, null, null, '2016-05-19 17:37:38');
INSERT INTO `user` VALUES ('1026', 'asd阿萨德', 'asd', 'asd@qq.com', '0', '1', '1', null, null, null, null, '2016-05-19 17:38:07');
INSERT INTO `user` VALUES ('1027', 'asd阿萨德', 'asd', 'asd@qq.com', '0', '0', '1', null, null, null, null, '2016-05-19 17:38:20');
