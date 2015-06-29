/*
 Navicat Premium Data Transfer

 Source Server         : XharlieLocal
 Source Server Type    : MySQL
 Source Server Version : 50623
 Source Host           : localhost
 Source Database       : Concubine

 Target Server Type    : MySQL
 Target Server Version : 50623
 File Encoding         : utf-8

 Date: 06/16/2015 02:25:47 AM
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
  `CMB_ORGN_PRC` float(8,2) DEFAULT NULL,
  `CMB_TRANS_PRC` float(7,2) DEFAULT NULL,
  `CMB_NM` varchar(20) DEFAULT NULL,
  `CMB_PIC` varchar(30) DEFAULT NULL,
  `SRVC_TP_ID` int(20) DEFAULT NULL,
  `CMB_BRND` varchar(10) DEFAULT NULL,
  `CMB_DSCRPT` varchar(100) DEFAULT NULL,
  `CMB_LNK` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`CMB_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Combo_Info`
-- ----------------------------
BEGIN;
INSERT INTO `Combo_Info` VALUES ('1', '169.00', '210.00', '15.90', '折叠单人床', '1软中华.jpg', '3', '凯因成', null, 'http://item.jd.com/1088151820.html'), ('2', '54.00', '72.00', '4.90', '瑜伽6MM标准专业瑜伽垫', '1苏烟.jpg', '3', '皮尔', null, 'http://item.jd.com/196961.html'), ('3', '76.00', '92.50', '7.70', '健腹轮20CM', '1芙蓉王.jpg', '3', '凯速', null, 'http://item.jd.com/1184358.html'), ('4', '23.00', '29.50', '2.30', 'S型钢管俯卧撑支架', '1云烟.jpg', '3', '凯速', null, 'http://item.jd.com/954932.html'), ('5', '93.00', '103.00', '9.10', 'CAMRY智能电子秤', '1玉溪.jpg', '3', '香山', null, 'http://item.jd.com/1235288.html'), ('6', '53.00', '73.00', '5.30', '自拍杆', '1软黄鹤楼.jpg', '1', '小米', null, 'http://item.mi.com/1151500040.html'), ('7', '24.00', '29.50', '2.00', '随身风扇', '1蓝利群.jpg', '1', '小米', null, 'http://item.mi.com/1152000005.html'), ('8', '75.00', '82.00', '7.30', '充电宝10000mAh', '1红利群.jpg', '1', '小米', null, 'http://item.mi.com/1151900013.html?cfrom=search'), ('9', '42.50', '53.00', '4.30', '活塞耳机青春版', '1金钻石.png', '1', '小米', null, 'http://item.mi.com/1151800021.html?cfrom=search'), ('10', '56.00', '79.00', '6.30', 'M165无线鼠标', '1软红塔山.jpg', '1', '罗技', null, 'http://detail.tmall.com/item.htm?spm=a230r.1.14.32.kr46ox&id=38032767105&ns=1&abbucket=19&skuId=88581193360'), ('11', '177.00', '201.00', '18.00', 'Z200电脑音箱', '1绿钻石.jpg', '1', '罗技', null, 'http://detail.tmall.com/item.htm?spm=a220m.1000858.1000725.48.nUTO3O&id=42606999844&skuId=77394967139&areaId=610100&cat_id=2&rn=0111ac5b1e157937cb3074c74039c6e6&standard=1&user_id=428722076&is_b=1'), ('12', '92.00', '104.50', '9.10', '无线路由器300M', '1精品白沙.jpg', '1', 'TP-LINK', null, 'http://item.jd.com/836677.html'), ('13', '14.00', '21.00', '1.40', '安卓数据线2M面条线', '1绿白沙.jpg', '1', '魔帝', null, 'http://item.jd.com/1149441.html'), ('14', '18.00', '27.00', '1.80', '苹果数据线1M面条线', '1蓝塔山.jpg', '1', '魔帝', 'iphone 5&6', 'http://item.jd.com/1184863.html'), ('15', '63.00', '78.00', '6.20', 'FS330三刀头剃须刀', '1硬紫钻.jpg', '2', '飞科', null, 'http://item.jd.com/409740.html'), ('16', '53.00', '71.00', '5.00', '王牌细肤面膜5片装', '1打火机.jpg', '2', '美即MG', null, 'http://item.jd.com/1119408.html'), ('17', '29.00', '36.00', '3.00', '男女薄荷润唇膏润唇啫喱组合', '1味思缘酒瑰花生.jpg', '2', '曼秀雷敦', null, 'http://item.jd.com/1041961594.html'), ('18', '61.00', '69.00', '6.00', 'SPF30防晒霜', '1溜溜梅.jpg', '2', '曼秀雷敦', null, 'http://item.jd.com/188503.html'), ('19', '29.00', '37.50', '3.00', '深层卸妆油旅行装30毫升装', '1好吃点消化饼.jpg', '2', 'DHC', null, 'http://item.jd.com/1016402069.html'), ('20', '40.00', '52.50', '4.00', '男士火山岩控油清痘洁面膏', '1可比克薯片.jpg', '2', '欧莱雅', null, 'http://item.jd.com/916385.html');
COMMIT;

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
INSERT INTO `Hotel_Combo_Mapping` VALUES ('2', '1'), ('2', '2'), ('2', '3'), ('2', '4'), ('2', '5'), ('2', '6'), ('2', '7'), ('2', '8'), ('2', '9'), ('2', '10'), ('2', '11'), ('2', '12'), ('2', '13'), ('2', '14'), ('2', '15'), ('2', '16'), ('2', '17'), ('2', '18'), ('2', '19'), ('2', '20');
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
--  Table structure for `Hotel_PayMethod_Mapping`
-- ----------------------------
DROP TABLE IF EXISTS `Hotel_PayMethod_Mapping`;
CREATE TABLE `Hotel_PayMethod_Mapping` (
  `HTL_ID` int(10) DEFAULT NULL,
  `PAY_MTHD_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Hotel_PayMethod_Mapping`
-- ----------------------------
BEGIN;
INSERT INTO `Hotel_PayMethod_Mapping` VALUES ('2', '1'), ('2', '2');
COMMIT;

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
  PRIMARY KEY (`MRCHNT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `Merchant_Info`
-- ----------------------------
BEGIN;
INSERT INTO `Merchant_Info` VALUES ('1', '金华前台', '餐饮', '88888888', '0', '0'), ('2', '喜知滋饺子', '餐饮', '2038877', '1', '1'), ('3', '李先生', '餐饮', '13373529677', '1', '1'), ('4', '阳光永和豆浆', '餐饮', '18713246005', '1', '1'), ('5', 'EACOCO伊寇', '洗衣', '13472260388', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `PayMethod`
-- ----------------------------
DROP TABLE IF EXISTS `PayMethod`;
CREATE TABLE `PayMethod` (
  `PAY_MTHD_ID` int(15) NOT NULL,
  `PAY_MTHD_NM` varchar(10) DEFAULT NULL,
  `PAY_MTHD_DSCRPT` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`PAY_MTHD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `PayMethod`
-- ----------------------------
BEGIN;
INSERT INTO `PayMethod` VALUES ('1', '酒店挂账', '酒店将您的消费计入房间账目,在您办理退房时一并结算'), ('2', '微信支付', '快捷方便');
COMMIT;

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
INSERT INTO `Service_Type_Info` VALUES ('1', '科技产品', '科技产品.jpg'), ('2', '个人护理', '个人护理.jpg'), ('3', '生活用品', '生活用品.jpg');
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
  `RCVR_NM` varchar(10) DEFAULT NULL,
  `RCVR_PHN` varchar(20) DEFAULT NULL,
  `RCVR_ADDRSS` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TRN_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
