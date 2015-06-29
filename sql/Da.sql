/*
 Navicat Premium Data Transfer

 Source Server         : XharlieLocal
 Source Server Type    : MySQL
 Source Server Version : 50623
 Source Host           : localhost
 Source Database       : Da

 Target Server Type    : MySQL
 Target Server Version : 50623
 File Encoding         : utf-8

 Date: 06/10/2015 20:09:25 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `Combo_Info`
-- ----------------------------
DROP TABLE IF EXISTS `Combo_Info`;
CREATE TABLE `Combo_Info` (
  `CMB_ID` int(10) NOT NULL,
  `CMB_PRC` float(8,2) DEFAULT NULL,
  `CMB_NM` varchar(20) DEFAULT NULL,
  `CMB_PIC` varchar(30) DEFAULT NULL,
  `SRVC_TP_ID` int(20) DEFAULT NULL,
  `CMB_DSCRPT` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`CMB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Combo_Info`
-- ----------------------------
BEGIN;
INSERT INTO `Combo_Info` VALUES ('1', '80.00', '软中华', '1软中华.jpg', '2', '正品'), ('2', '50.00', '苏烟', '1苏烟.jpg', '2', '正品'), ('3', '32.00', '芙蓉王', '1芙蓉王.jpg', '2', '正品'), ('4', '28.00', '云烟', '1云烟.jpg', '2', '正品'), ('5', '26.00', '玉溪', '1玉溪.jpg', '2', '正品'), ('6', '20.00', '软黄鹤楼', '1软黄鹤楼.jpg', '2', '正品'), ('7', '20.00', '蓝利群', '1蓝利群.jpg', '2', '正品'), ('8', '18.00', '红利群18', '1红利群.jpg', '2', '正品'), ('9', '18.00', '金钻石', '1金钻石.png', '2', '正品'), ('10', '15.00', '软红塔山', '1软红塔山.jpg', '2', '正品'), ('11', '13.00', '绿钻石', '1绿钻石.jpg', '2', '正品'), ('12', '13.00', '精品白沙', '1精品白沙.jpg', '2', '正品'), ('13', '12.00', '绿白沙', '1绿白沙.jpg', '2', '正品'), ('14', '13.00', '蓝塔山', '1蓝塔山.jpg', '2', '正品'), ('15', '31.00', '硬紫钻', '1硬紫钻.jpg', '2', '正品'), ('16', '2.00', '打火机', '1打火机.jpg', '3', '正品'), ('17', '5.00', '味思缘酒瑰花生', '1味思缘酒瑰花生.jpg', '5', '正品'), ('18', '5.00', '溜溜梅', '1溜溜梅.jpg', '5', '正品'), ('19', '5.00', '好吃点消化饼', '1好吃点消化饼.jpg', '5', '正品'), ('20', '5.00', '可比克薯片', '1可比克薯片.jpg', '5', '正品'), ('21', '3.00', '卤家庄豆干', '1卤家庄豆干.jpg', '5', '正品'), ('22', '3.00', '扑克', '1扑克.jpg', '3', '正品'), ('23', '5.00', '康师傅红烧牛肉面', '1康师傅红烧牛肉面.jpg', '5', '正品'), ('24', '20.00', '太阳帽安全套', '1太阳帽安全套.jpg', '3', '正品'), ('25', '3.00', '牙刷', '1牙刷.jpg', '3', '正品'), ('26', '3.00', '依可丝袜黑色', '1依可丝袜黑色.jpg', '3', '正品'), ('27', '5.00', '脉动600ml', '1脉动600ml.jpg', '2', '正品'), ('28', '3.00', '农夫山泉矿泉水550ml', '1农夫山泉矿泉水550ml.jpg', '2', '正品'), ('29', '8.00', '青岛啤酒大500ml', '1青岛啤酒大500ml.jpg', '2', '正品'), ('30', '4.00', '冰糖雪梨500ml', '1冰糖雪梨500ml.jpg', '2', '正品'), ('31', '5.00', '崂山啤酒500ml', '1崂山啤酒500ml.jpg', '2', '正品'), ('32', '5.00', '雪花啤酒330ml', '1雪花啤酒330ml.jpg', '2', '正品'), ('33', '5.00', '红罐加多宝310ml', '1红罐加多宝310ml.jpg', '2', '正品'), ('35', '6.00', '昆仑山矿泉水350ml', '1昆仑山矿泉水350ml.jpg', '2', '正品'), ('36', '27.00', '李先生牛肉饭套餐', '3李先生牛肉饭套餐.jpg', '1', '含小菜及汤'), ('37', '16.00', '李先生凉菜拼盘', '3李先生凉菜拼盘.jpg', '1', '酱牛肉+花生米+海带丝'), ('38', '28.00', '李先生香辣牛肉面套餐', '3李先生香辣牛肉面套餐.jpg', '1', '含小菜'), ('39', '19.00', '李先生酱牛肉', '3李先生酱牛肉.jpg', '1', '酱牛肉'), ('40', '6.00', '喜知滋凉拌豆花', '2喜知滋凉拌豆花.jpg', '1', null), ('41', '17.00', '喜知滋肉三鲜水饺', '2喜知滋肉三鲜水饺.jpg', '1', '每份15个'), ('42', '14.00', '喜知滋茴香鸡蛋水饺', '2喜知滋茴香鸡蛋水饺.jpg', '1', '每份15个'), ('43', '9.00', '喜知滋辣根秋耳', '2喜知滋辣根秋耳.jpg', '1', null), ('44', '7.00', '喜知滋麻辣黄瓜', '2喜知滋麻辣黄瓜.jpg', '1', null), ('45', '18.00', '永和凉拌面套餐', '4永和凉拌面套餐.jpg', '1', '尖椒茄子凉拌面+骨肉相连+可乐');
COMMIT;

-- ----------------------------
--  Table structure for `Combo_Product_Mapping`
-- ----------------------------
DROP TABLE IF EXISTS `Combo_Product_Mapping`;
CREATE TABLE `Combo_Product_Mapping` (
  `CMB_ID` int(10) NOT NULL,
  `PRD_ID` int(10) NOT NULL,
  `PRD_QN` int(5) DEFAULT NULL,
  PRIMARY KEY (`CMB_ID`,`PRD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `Hotel_Combo_Mapping`
-- ----------------------------
DROP TABLE IF EXISTS `Hotel_Combo_Mapping`;
CREATE TABLE `Hotel_Combo_Mapping` (
  `HTL_ID` int(10) DEFAULT NULL,
  `CMB_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Hotel_Combo_Mapping`
-- ----------------------------
BEGIN;
INSERT INTO `Hotel_Combo_Mapping` VALUES ('1', '1'), ('1', '2'), ('1', '3'), ('1', '4'), ('1', '5'), ('1', '6'), ('1', '7'), ('1', '8'), ('1', '9'), ('1', '10'), ('1', '11'), ('1', '12'), ('1', '13'), ('1', '14'), ('1', '15'), ('1', '16'), ('1', '17'), ('1', '18'), ('1', '19'), ('1', '20'), ('1', '21'), ('1', '22'), ('1', '23'), ('1', '24'), ('1', '25'), ('1', '26'), ('1', '27'), ('1', '28'), ('1', '29'), ('1', '30'), ('1', '32'), ('1', '33'), ('1', '34'), ('1', '35'), ('1', '36'), ('1', '37'), ('1', '38'), ('1', '39'), ('1', '40'), ('1', '41'), ('1', '42'), ('1', '43'), ('1', '44'), ('1', '45');
COMMIT;

-- ----------------------------
--  Table structure for `Hotel_Info`
-- ----------------------------
DROP TABLE IF EXISTS `Hotel_Info`;
CREATE TABLE `Hotel_Info` (
  `HTL_ID` int(10) NOT NULL COMMENT 'Hotel ID',
  `HTL_NM` varchar(20) DEFAULT NULL COMMENT 'Hotel Name',
  `HTL_GEO_ID` int(10) DEFAULT NULL COMMENT 'Hotel Geographical ID',
  `HTL_BRND_ID` int(10) DEFAULT NULL COMMENT 'Hotel Brand ID',
  `HTL_TP` varchar(10) DEFAULT NULL COMMENT 'Hotel Type',
  `HTL_CNTRCT_ID` int(10) DEFAULT NULL COMMENT 'Hotel Contract ID',
  PRIMARY KEY (`HTL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Hotel_Info`
-- ----------------------------
BEGIN;
INSERT INTO `Hotel_Info` VALUES ('1', '兵哥1店', '1', '23', '经济型', '1'), ('2', '庚哥总店', '2', '178', '奢侈型', '2'), ('3', '兵哥2店', '5', '23', '经济型', '1');
COMMIT;

-- ----------------------------
--  Table structure for `Hotel_Merchant_Mapping`
-- ----------------------------
DROP TABLE IF EXISTS `Hotel_Merchant_Mapping`;
CREATE TABLE `Hotel_Merchant_Mapping` (
  `HTL_ID` int(10) DEFAULT NULL COMMENT 'Hotel Id',
  `MRCHNT_ID` int(10) DEFAULT NULL COMMENT 'Merchant Id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `Merchant_Combo_Mapping`
-- ----------------------------
DROP TABLE IF EXISTS `Merchant_Combo_Mapping`;
CREATE TABLE `Merchant_Combo_Mapping` (
  `MRCHNT_ID` int(10) DEFAULT NULL,
  `CMB_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Merchant_Combo_Mapping`
-- ----------------------------
BEGIN;
INSERT INTO `Merchant_Combo_Mapping` VALUES ('1', '17'), ('1', '18'), ('1', '19'), ('1', '20'), ('1', '21'), ('1', '22'), ('1', '23'), ('1', '24'), ('1', '25'), ('1', '26'), ('1', '27'), ('1', '28'), ('1', '29'), ('1', '30'), ('1', '16'), ('1', '1'), ('1', '2'), ('1', '3'), ('1', '4'), ('1', '5'), ('1', '6'), ('1', '7'), ('1', '8'), ('1', '9'), ('1', '10'), ('1', '11'), ('1', '12'), ('1', '13'), ('1', '14'), ('1', '27'), ('1', '28'), ('1', '29'), ('1', '30'), ('1', '31'), ('1', '32'), ('1', '33'), ('1', '34'), ('1', '35'), ('3', '36'), ('3', '37'), ('3', '38'), ('3', '39'), ('2', '40'), ('2', '41'), ('2', '42'), ('2', '43'), ('2', '44'), ('4', '45');
COMMIT;

-- ----------------------------
--  Table structure for `Merchant_Info`
-- ----------------------------
DROP TABLE IF EXISTS `Merchant_Info`;
CREATE TABLE `Merchant_Info` (
  `MRCHNT_ID` int(10) NOT NULL COMMENT 'Merchant Id',
  `MRCHNT_NM` varchar(20) DEFAULT NULL COMMENT 'Merchant Name',
  `MRCHNT_TP` varchar(20) DEFAULT NULL COMMENT 'Merchant Type ',
  `MRCHNT_PHN` varchar(20) DEFAULT NULL,
  `MRCHNT_CNTRCT_ID` int(10) DEFAULT NULL COMMENT 'Merchant Contract Id',
  `MRCHNT_GEO_ID` int(10) DEFAULT NULL COMMENT 'Merchant Geographical Id',
  `MRCHNT_MON_HR` varchar(255) DEFAULT NULL,
  `MRCHNT_TUE_HR` varchar(255) DEFAULT NULL,
  `MRCHNT_WED_HR` varchar(255) DEFAULT NULL,
  `MRCHNT_THU_HR` varchar(255) DEFAULT NULL,
  `MRCHNT_FRI_HR` varchar(255) DEFAULT NULL,
  `MRCHNT_SAT_HR` varchar(255) DEFAULT NULL,
  `MRCHNT_SUN_HR` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`MRCHNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Merchant_Info`
-- ----------------------------
BEGIN;
INSERT INTO `Merchant_Info` VALUES ('1', '金华前台', '餐饮', '88888888', '0', '0', '08:30-21:00', '08:30-21:00', '08:30-21:00', '08:30-21:00', '08:30-21:00', '08:30-21:00', '08:30-21:00'), ('2', '喜知滋饺子', '餐饮', '2038877', '1', '1', '08:00-24:00', '08:00-24:00', '08:00-24:00', '08:00-24:00', '08:00-24:00', '08:00-24:00', '08:00-24:00'), ('3', '李先生', '餐饮', '13373529677', '1', '1', '06:30-02:00', '06:30-02:00', '06:30-02:00', '06:30-02:00', '06:30-02:00', '06:30-02:00', '06:30-02:00'), ('4', '阳光永和豆浆', '餐饮', '18713246005', '1', '1', null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
--  Table structure for `Merchant_Product_Mapping`
-- ----------------------------
DROP TABLE IF EXISTS `Merchant_Product_Mapping`;
CREATE TABLE `Merchant_Product_Mapping` (
  `MRCHNT_ID` int(10) NOT NULL COMMENT 'Merchant Id',
  `PRDCT_ID` int(10) NOT NULL COMMENT 'Product Id',
  PRIMARY KEY (`PRDCT_ID`,`MRCHNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `Payment_Info`
-- ----------------------------
DROP TABLE IF EXISTS `Payment_Info`;
CREATE TABLE `Payment_Info` (
  `TRN_ID` int(10) DEFAULT NULL COMMENT 'transcation id',
  `PYMNT_ID` int(10) NOT NULL COMMENT 'payment id',
  `PYMNT_MTHD` varchar(10) DEFAULT NULL COMMENT 'payment method',
  `PYMNT_AMNT` float(10,2) DEFAULT NULL COMMENT 'payment amount',
  PRIMARY KEY (`PYMNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `Product_Info`
-- ----------------------------
DROP TABLE IF EXISTS `Product_Info`;
CREATE TABLE `Product_Info` (
  `PRDCT_ID` int(10) NOT NULL COMMENT 'Product Id',
  `PRDCT_NM` varchar(20) DEFAULT NULL COMMENT 'Product Name',
  `PRDCT_TP` varchar(10) DEFAULT NULL COMMENT 'Product Type',
  `PRDCT_PRC` float(10,2) DEFAULT NULL COMMENT 'Product Price',
  `PRDCT_PIC` varchar(30) DEFAULT NULL COMMENT 'Product Picture',
  `PRDCT_DSCPT` varchar(30) DEFAULT NULL COMMENT 'Product Description',
  PRIMARY KEY (`PRDCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `Room_Info`
-- ----------------------------
DROP TABLE IF EXISTS `Room_Info`;
CREATE TABLE `Room_Info` (
  `HTL_ID` int(10) NOT NULL COMMENT 'Hotel Id',
  `RM_ID` int(10) NOT NULL COMMENT 'Room Number',
  `RM_BULD` varchar(20) DEFAULT NULL COMMENT 'Room Building',
  `RM_FLR` varchar(10) DEFAULT NULL COMMENT 'Room Floor',
  PRIMARY KEY (`HTL_ID`,`RM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Room_Info`
-- ----------------------------
BEGIN;
INSERT INTO `Room_Info` VALUES ('1', '8001', '西楼', '地下室'), ('1', '8010', '西楼', '8层'), ('2', '399', '主楼', '3层'), ('3', '5566', '副楼', '地下4层'), ('3', '6687', '副楼', '10层');
COMMIT;

-- ----------------------------
--  Table structure for `Service_Type_Info`
-- ----------------------------
DROP TABLE IF EXISTS `Service_Type_Info`;
CREATE TABLE `Service_Type_Info` (
  `SRVC_TP_ID` int(10) NOT NULL COMMENT 'Service Type Id',
  `SRVC_TP_NM` varchar(20) DEFAULT NULL COMMENT 'Service Type Name',
  `SRVC_TP_PIC` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`SRVC_TP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Service_Type_Info`
-- ----------------------------
BEGIN;
INSERT INTO `Service_Type_Info` VALUES ('1', '深夜食堂', '深夜食堂.jpg'), ('2', '香烟酒水', '香烟酒水.jpg'), ('3', '生活用品', '生活用品.jpg'), ('4', '衣物干洗', '衣物干洗.jpg'), ('5', '零食小吃', '零食小吃.jpg'), ('6', '麦当劳快餐', '麦当劳快餐.jpg');
COMMIT;

-- ----------------------------
--  Table structure for `Transaction_Combo_Mapping`
-- ----------------------------
DROP TABLE IF EXISTS `Transaction_Combo_Mapping`;
CREATE TABLE `Transaction_Combo_Mapping` (
  `TRN_ID` int(10) DEFAULT NULL,
  `CMB_ID` int(10) DEFAULT NULL,
  `AMNT` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `Transaction_Info`
-- ----------------------------
DROP TABLE IF EXISTS `Transaction_Info`;
CREATE TABLE `Transaction_Info` (
  `TRN_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'transation id',
  `HTL_ID` int(10) DEFAULT NULL COMMENT 'hotel id',
  `RM_ID` varchar(10) DEFAULT NULL COMMENT 'room id ',
  `TS` datetime DEFAULT NULL COMMENT 'datetime of transaction',
  `CUS_PHN` varchar(10) DEFAULT NULL COMMENT 'customer phone',
  `CUS_NM` varchar(10) DEFAULT NULL COMMENT 'customer name',
  `PYMNT_TTL` float(8,2) DEFAULT NULL COMMENT 'total payment',
  `STATUS` varchar(20) DEFAULT NULL,
  `PYMNT_MTHD` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`TRN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
