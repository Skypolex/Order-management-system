/*
Navicat MySQL Data Transfer

Source Server         : MySql57@localhost
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : onlineorder

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-09-26 23:55:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for attachement
-- ----------------------------
DROP TABLE IF EXISTS `attachement`;
CREATE TABLE `attachement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belongfileldname` varchar(255) DEFAULT NULL,
  `belongid` varchar(255) DEFAULT NULL,
  `belongtable` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `pubtime` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of attachement
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `belongid` varchar(255) DEFAULT NULL,
  `commentcontent` varchar(255) DEFAULT NULL,
  `commentren` varchar(255) DEFAULT NULL,
  `commenttime` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `xtype` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('6', '24', '很好吃，鸡排很大，不错', 'hy001', '2017-05-25 15:18:13', null, 'shangpin', '/meal/upload/temp/50508-106.jpg');
INSERT INTO `comment` VALUES ('7', '40', '不错，好吃，皮薄肉大', 'hy002', '2017-05-25 22:20:12', null, 'shangpin', '/meal/upload/temp/touxiaang.jpg');
INSERT INTO `comment` VALUES ('8', '33', '太他妈难吃了，吃得我都吐了\r\n', 'lhr', '2017-05-26 16:37:15', null, 'shangpin', '/meal/upload/default_tou.gif');
INSERT INTO `comment` VALUES ('9', '28', '好吃，爱心满满！！！', 'lhr', '2017-05-26 16:37:44', null, 'shangpin', '/meal/upload/default_tou.gif');
INSERT INTO `comment` VALUES ('10', '23', '非常好吃，推荐大家', 'hy004', '2017-05-26 22:43:01', null, 'shangpin', '/meal/upload/default_tou.gif');
INSERT INTO `comment` VALUES ('11', '23', '真的非常好吃，推荐大家', 'hy888', '2017-05-28 02:42:21', null, 'shangpin', '/meal/upload/default_tou.gif');

-- ----------------------------
-- Table structure for dingdan
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ddno` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `fahuoren` varchar(255) DEFAULT NULL,
  `fahuotime` datetime DEFAULT NULL,
  `shouhuodizhi` varchar(255) DEFAULT NULL,
  `shraddress` varchar(255) DEFAULT NULL,
  `shrname` varchar(255) DEFAULT NULL,
  `shrtel` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `totalprice` double NOT NULL,
  `xiadanren` varchar(255) DEFAULT NULL,
  `xiadantime` datetime DEFAULT NULL,
  `shname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('11', 'DD20170925150549860', null, 'sh001', '2017-05-25 15:11:07', '2号宿舍楼', null, null, '18611861186', '已收货', '', '15', 'hy001', '2017-05-25 15:09:49', 'sh001');
INSERT INTO `dingdan` VALUES ('12', 'DD20170925150549620', null, 'sh005', '2017-05-25 15:11:41', '2号宿舍楼', null, null, '18611861186', '已收货', '', '1', 'hy001', '2017-05-25 15:09:49', 'sh005');
INSERT INTO `dingdan` VALUES ('13', 'DD20171525150504430', null, 'sh001', '2017-05-25 15:16:20', '3号宿舍楼', null, null, '17077777777', '已收货', '', '45', 'hy002', '2017-05-25 15:15:04', 'sh001');
INSERT INTO `dingdan` VALUES ('14', 'DD20172625170553650', null, 'sh003', '2017-05-25 17:37:10', '3号宿舍楼', null, null, '17077777777', '已收货', '', '20', 'hy002', '2017-05-25 17:26:53', 'sh003');
INSERT INTO `dingdan` VALUES ('15', 'DD20171725220545990', null, 'sh005', '2017-05-25 22:18:39', '3号宿舍楼', null, null, '17077777777', '已收货', '', '21', 'hy002', '2017-05-25 22:17:45', 'sh005');
INSERT INTO `dingdan` VALUES ('16', 'DD20174526140506940', null, 'sh003', '2017-05-26 15:52:16', '1号宿舍楼111室', null, null, '13888888888', '已收货', '', '25', 'hy003', '2017-05-26 14:45:06', 'sh003');
INSERT INTO `dingdan` VALUES ('17', 'DD20171226150514540', null, null, '2017-05-26 15:12:14', '3号宿舍楼', null, '刘同学', '17077777777', '待付款', '', '13', 'hy002', '2017-05-26 15:12:14', 'sh002');
INSERT INTO `dingdan` VALUES ('18', 'DD20172026150534450', null, 'sh001', '2017-05-26 15:22:25', '钓鱼岛', null, '啦啦啦', '123456123', '已收货', '', '27', 'hy003', '2017-05-26 15:20:34', 'sh001');
INSERT INTO `dingdan` VALUES ('19', 'DD20175126150525640', null, 'sh002', '2017-05-26 15:52:33', '帝国大学1号楼', null, '牛同学', '12222223333', '已收货', '', '18', 'hy003', '2017-05-26 15:51:26', 'sh002');
INSERT INTO `dingdan` VALUES ('20', 'DD20175926150556340', null, 'sh005', '2017-05-26 16:00:37', '帝国大学1号楼', null, '牛同学', '12222223333', '已收货', '', '5', 'hy003', '2017-05-26 15:59:56', 'sh005');
INSERT INTO `dingdan` VALUES ('21', 'DD20170426160503840', null, 'sh006', '2017-05-26 16:04:29', '帝国大学1号楼', null, '牛同学', '12222223333', '已收货', '', '50', 'hy003', '2017-05-26 16:04:03', 'sh006');
INSERT INTO `dingdan` VALUES ('22', 'DD20172526160501110', null, 'sh003', '2017-05-26 16:25:47', '北京紫荆城', null, '刘然', '13811381138', '已收货', '', '20', 'lhr', '2017-05-26 16:25:01', 'sh003');
INSERT INTO `dingdan` VALUES ('23', 'DD20172526160555500', null, 'sh002', '2017-05-26 16:26:41', '北京紫荆城', null, '刘然', '13811381138', '已收货', '', '10', 'lhr', '2017-05-26 16:25:55', 'sh002');
INSERT INTO `dingdan` VALUES ('24', 'DD20172526160555750', null, 'sh001', '2017-05-26 16:27:13', '北京紫荆城', null, '刘然', '13811381138', '已收货', '', '25', 'lhr', '2017-05-26 16:25:55', 'sh001');
INSERT INTO `dingdan` VALUES ('25', 'DD20173026160541740', null, null, '2017-05-26 16:30:41', '北京紫荆城', null, '刘然', '13811381138', '待付款', '', '12', 'lhr', '2017-05-26 16:30:41', 'sh001');
INSERT INTO `dingdan` VALUES ('26', 'DD20173526160510970', null, 'sh001', '2017-05-26 22:41:34', '北京紫荆城', null, '刘然', '13811381138', '已发货', '', '54', 'lhr', '2017-05-26 16:35:10', 'sh001');
INSERT INTO `dingdan` VALUES ('27', 'DD20174026220534280', null, 'sh001', '2017-05-26 22:41:41', '4号宿舍楼', null, '佐藤同学', '13666666666', '已收货', '', '27', 'hy004', '2017-05-26 22:40:34', 'sh001');
INSERT INTO `dingdan` VALUES ('28', 'DD20172827140524680', null, 'sh002', '2017-05-27 14:30:19', '5号宿舍楼', null, '佐藤同学', '170777777777', '已收货', '', '18', 'hy666', '2017-05-27 14:28:24', 'sh002');
INSERT INTO `dingdan` VALUES ('29', 'DD20173928020547800', null, 'sh001', '2017-05-28 02:41:16', '3号宿舍楼', null, '佐藤同学', '18666668888', '已收货', '', '27', 'hy888', '2017-05-28 02:39:47', 'sh001');
INSERT INTO `dingdan` VALUES ('30', 'DD20171729010510780', null, null, '2017-05-29 01:17:10', '5号宿舍楼', null, '佐藤同学', '170777777777', '已付款', '', '25', 'hy666', '2017-05-29 01:17:10', 'sh003');

-- ----------------------------
-- Table structure for dingdanitems
-- ----------------------------
DROP TABLE IF EXISTS `dingdanitems`;
CREATE TABLE `dingdanitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ddno` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `jiage` double(255,0) DEFAULT NULL,
  `shuliang` int(11) NOT NULL,
  `spid` int(11) NOT NULL,
  `spimage` varchar(255) DEFAULT NULL,
  `spname` varchar(255) DEFAULT NULL,
  `spno` varchar(255) DEFAULT NULL,
  `hyjia` double DEFAULT NULL,
  `shname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of dingdanitems
-- ----------------------------
INSERT INTO `dingdanitems` VALUES ('14', 'DD20170925150549860', 'hy001购买鸡排便当', '18', '1', '24', '/meal/upload/img/鸡排便当.jpg', '鸡排便当', null, '15', 'sh001');
INSERT INTO `dingdanitems` VALUES ('15', 'DD20170925150549620', 'hy001购买东北粗粮大包子', '2', '1', '40', '/meal/upload/img/东北粗粮大包子.jpg', '东北粗粮大包子', null, '1', 'sh005');
INSERT INTO `dingdanitems` VALUES ('16', 'DD20171525150504430', 'hy002购买鱼香肉丝便当套餐', '30', '1', '23', '/meal/upload/img/鱼香肉丝便当套餐.jpg', '鱼香肉丝便当套餐', null, '27', 'sh001');
INSERT INTO `dingdanitems` VALUES ('17', 'DD20171525150504430', 'hy002购买鲜虾便当', '20', '1', '22', '/meal/upload/img/鲜虾便当.jpg', '鲜虾便当', null, '18', 'sh001');
INSERT INTO `dingdanitems` VALUES ('18', 'DD20172625170553650', 'hy002购买经典石锅拌饭', '22', '1', '33', '/meal/upload/img/经典石锅拌饭.jpg', '经典石锅拌饭', null, '20', 'sh003');
INSERT INTO `dingdanitems` VALUES ('19', 'DD20171725220545990', 'hy002购买东北粗粮大包子', '2', '5', '40', '/meal/upload/img/东北粗粮大包子.jpg', '东北粗粮大包子', null, '1', 'sh005');
INSERT INTO `dingdanitems` VALUES ('20', 'DD20171725220545990', 'hy002购买东北包子', '5', '4', '41', '/meal/upload/img/东北包子.jpg', '东北包子', null, '4', 'sh005');
INSERT INTO `dingdanitems` VALUES ('21', 'DD20174526140506940', 'hy003购买烤肉石锅拌饭', '28', '1', '36', '/meal/upload/img/烤肉石锅拌饭.jpg', '烤肉石锅拌饭', null, '25', 'sh003');
INSERT INTO `dingdanitems` VALUES ('22', 'DD20171226150514540', 'hy002购买芝士鸡排', '15', '1', '27', '/meal/upload/img/芝士鸡排.jpg', '芝士鸡排', null, '13', 'sh002');
INSERT INTO `dingdanitems` VALUES ('23', 'DD20172026150534450', 'hy003购买鱼香肉丝便当套餐', '30', '1', '23', '/meal/upload/img/鱼香肉丝便当套餐.jpg', '鱼香肉丝便当套餐', null, '27', 'sh001');
INSERT INTO `dingdanitems` VALUES ('24', 'DD20175126150525640', 'hy003购买双层汉堡', '20', '1', '30', '/meal/upload/img/双层汉堡.jpg', '双层汉堡', null, '18', 'sh002');
INSERT INTO `dingdanitems` VALUES ('25', 'DD20175926150556340', 'hy003购买东北粗粮大包子', '2', '5', '40', '/meal/upload/img/东北粗粮大包子.jpg', '东北粗粮大包子', null, '1', 'sh005');
INSERT INTO `dingdanitems` VALUES ('26', 'DD20170426160503840', 'hy003购买测试餐品', '50', '1', '42', '/meal/upload/nopic.jpg', '测试餐品', null, '50', 'sh006');
INSERT INTO `dingdanitems` VALUES ('27', 'DD20172526160501110', 'lhr购买经典石锅拌饭', '22', '1', '33', '/meal/upload/img/经典石锅拌饭.jpg', '经典石锅拌饭', null, '20', 'sh003');
INSERT INTO `dingdanitems` VALUES ('28', 'DD20172526160555500', 'lhr购买爱心鸡排', '12', '1', '28', '/meal/upload/img/爱心鸡排.jpg', '爱心鸡排', null, '10', 'sh002');
INSERT INTO `dingdanitems` VALUES ('29', 'DD20172526160555750', 'lhr购买四季便当', '30', '1', '25', '/meal/upload/img/四季便当.jpg', '四季便当', null, '25', 'sh001');
INSERT INTO `dingdanitems` VALUES ('30', 'DD20173026160541740', 'lhr购买蔬菜鸡蛋便当', '15', '1', '26', '/meal/upload/img/蔬菜鸡蛋便当.jpg', '蔬菜鸡蛋便当', null, '12', 'sh001');
INSERT INTO `dingdanitems` VALUES ('31', 'DD20173526160510970', 'lhr购买鱼香肉丝便当套餐', '30', '2', '23', '/meal/upload/img/鱼香肉丝便当套餐.jpg', '鱼香肉丝便当套餐', null, '27', 'sh001');
INSERT INTO `dingdanitems` VALUES ('32', 'DD20174026220534280', 'hy004购买鱼香肉丝便当套餐', '30', '1', '23', '/meal/upload/img/鱼香肉丝便当套餐.jpg', '鱼香肉丝便当套餐', null, '27', 'sh001');
INSERT INTO `dingdanitems` VALUES ('33', 'DD20172827140524680', 'hy666购买双层汉堡', '20', '1', '30', '/meal/upload/img/双层汉堡.jpg', '双层汉堡', null, '18', 'sh002');
INSERT INTO `dingdanitems` VALUES ('34', 'DD20173928020547800', 'hy888购买鱼香肉丝便当套餐', '30', '1', '23', '/meal/upload/img/鱼香肉丝便当套餐.jpg', '鱼香肉丝便当套餐', null, '27', 'sh001');
INSERT INTO `dingdanitems` VALUES ('35', 'DD20171729010510780', 'hy666购买烤肉石锅拌饭', '28', '1', '36', '/meal/upload/img/烤肉石锅拌饭.jpg', '烤肉石锅拌饭', null, '25', 'sh003');

-- ----------------------------
-- Table structure for friendlink
-- ----------------------------
DROP TABLE IF EXISTS `friendlink`;
CREATE TABLE `friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `href` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of friendlink
-- ----------------------------
INSERT INTO `friendlink` VALUES ('1', 'http://www.mysora.cn', '青空停车管理系统');
INSERT INTO `friendlink` VALUES ('2', 'http://www.sogou.com', '搜狗搜索');
INSERT INTO `friendlink` VALUES ('3', 'http://www.mysora.cn', '健力运动销售网');
INSERT INTO `friendlink` VALUES ('4', 'http://www.mysora.cn/', '网上购物商城');
INSERT INTO `friendlink` VALUES ('5', 'http://www.mysora.cn/', '蜂巢仓库管理系统');
INSERT INTO `friendlink` VALUES ('6', 'http://www.mysora.cn/', '爱梦幻衣小站');

-- ----------------------------
-- Table structure for huiyuan
-- ----------------------------
DROP TABLE IF EXISTS `huiyuan`;
CREATE TABLE `huiyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `aihao` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `jibie` varchar(255) DEFAULT NULL,
  `jifen` int(11) NOT NULL,
  `logtimes` int(11) NOT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regdate` datetime DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `touxiang` varchar(255) DEFAULT NULL,
  `xtype` varchar(255) DEFAULT NULL,
  `yue` float NOT NULL,
  `zhiye` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of huiyuan
-- ----------------------------
INSERT INTO `huiyuan` VALUES ('11', 'hy001', '2号宿舍楼', '鲜美', 'hy001@163.com', null, '26', '10', '18611861186', '佐藤同学', 'hy001', 'hy001', '2017-05-25 15:04:23', '男', '1', '/meal/upload/temp/50508-106.jpg', '普通会员', '484', '学生');
INSERT INTO `huiyuan` VALUES ('12', 'hy002', '3号宿舍楼', '麻辣', 'hy002@163.com', null, '96', '7', '17077777777', '刘同学', 'hy002', 'hy002', '2017-05-25 15:04:58', '男', '1', '/meal/upload/temp/touxiaang.jpg', '普通会员', '314', '学生');
INSERT INTO `huiyuan` VALUES ('13', 'hy003', '帝国大学1号楼', '麻辣', 'hy003@gmail.com', null, '135', '7', '12222223333', '牛同学', 'hy003', 'hy003', '2017-05-26 14:44:08', '男', '1', '/meal/upload/default_tou.gif', '普通会员', '175', '学生');
INSERT INTO `huiyuan` VALUES ('14', 'lhr', '北京紫荆城', '麻辣', '1175322134@qq.com', null, '119', '1', '13811381138', '刘然', 'lhr', '302715', '2017-05-26 16:23:20', '男', '1', '/meal/upload/default_tou.gif', '普通会员', '15890', '学生');
INSERT INTO `huiyuan` VALUES ('15', 'hy004', '4号宿舍楼', '鲜美', 'hy004@163.com', null, '37', '2', '13666666666', '佐藤同学', 'hy004', 'hy004', '2017-05-26 22:38:48', '男', '1', '/meal/upload/default_tou.gif', '普通会员', '473', '学生');
INSERT INTO `huiyuan` VALUES ('16', 'hy666', '5号宿舍楼', '鲜美', 'hy666@163.com', null, '53', '3', '170777777777', '佐藤同学', 'hy666', 'hy666', '2017-05-27 14:26:49', '男', '1', '/meal/upload/default_tou.gif', '普通会员', '157', '学生');
INSERT INTO `huiyuan` VALUES ('17', 'hy888', '3号宿舍楼', '麻辣', 'hy888@163.com', null, '37', '2', '18666668888', '佐藤同学', 'hy888', 'hy888', '2017-05-28 02:38:01', '男', '1', '/meal/upload/default_tou.gif', '普通会员', '273', '学生');

-- ----------------------------
-- Table structure for indexcolumns
-- ----------------------------
DROP TABLE IF EXISTS `indexcolumns`;
CREATE TABLE `indexcolumns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coldes` varchar(255) DEFAULT NULL,
  `colid` int(11) NOT NULL,
  `showstyle` varchar(255) DEFAULT NULL,
  `xtype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of indexcolumns
-- ----------------------------
INSERT INTO `indexcolumns` VALUES ('1', '中餐', '1', '图片', '商品');
INSERT INTO `indexcolumns` VALUES ('2', '西餐', '5', '图片', '商品');
INSERT INTO `indexcolumns` VALUES ('5', '面食', '11', '图片', '商品');

-- ----------------------------
-- Table structure for jiaodiantu
-- ----------------------------
DROP TABLE IF EXISTS `jiaodiantu`;
CREATE TABLE `jiaodiantu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `href` varchar(255) DEFAULT NULL,
  `pindex` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tupian` varchar(255) DEFAULT NULL,
  `xtype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of jiaodiantu
-- ----------------------------
INSERT INTO `jiaodiantu` VALUES ('2', '#', '2', '美食巨惠', '/meal/upload/img/轮播-0.jpg', '站内');
INSERT INTO `jiaodiantu` VALUES ('3', '', '0', '0利润', '/meal/upload/img/轮播-1.jpg', '站内');
INSERT INTO `jiaodiantu` VALUES ('4', '', '0', '招商加盟', '/meal/upload/img/轮播-2.jpg', '站内');
INSERT INTO `jiaodiantu` VALUES ('5', '', '0', '夕云订餐正式上线了', '/meal/upload/img/轮播-3.jpg', '站内');

-- ----------------------------
-- Table structure for kouwei
-- ----------------------------
DROP TABLE IF EXISTS `kouwei`;
CREATE TABLE `kouwei` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of kouwei
-- ----------------------------
INSERT INTO `kouwei` VALUES ('1', '麻辣');
INSERT INTO `kouwei` VALUES ('2', '甜食');
INSERT INTO `kouwei` VALUES ('3', '鲜美');

-- ----------------------------
-- Table structure for lanmu
-- ----------------------------
DROP TABLE IF EXISTS `lanmu`;
CREATE TABLE `lanmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `isleaf` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of lanmu
-- ----------------------------
INSERT INTO `lanmu` VALUES ('1', '2017-03-17 13:25:20', '', '<span style=\"white-space:nowrap;\">美食资讯</span>', '0', '0', '美食资讯');

-- ----------------------------
-- Table structure for leaveword
-- ----------------------------
DROP TABLE IF EXISTS `leaveword`;
CREATE TABLE `leaveword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dcontent` varchar(255) DEFAULT NULL,
  `lwren` varchar(255) DEFAULT NULL,
  `pubtime` datetime DEFAULT NULL,
  `replycontent` varchar(255) DEFAULT NULL,
  `replyren` varchar(255) DEFAULT NULL,
  `replytime` datetime DEFAULT NULL,
  `status` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of leaveword
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clickcount` int(11) NOT NULL,
  `dcontent` text,
  `pubren` varchar(255) DEFAULT NULL,
  `pubtime` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('3', '1', '夕云订餐正式上线了', 'admin', '2017-05-25 10:52:11', '夕云订餐正式上线了');

-- ----------------------------
-- Table structure for shanghu
-- ----------------------------
DROP TABLE IF EXISTS `shanghu`;
CREATE TABLE `shanghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountname` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `jcremark` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `tuijian` int(11) NOT NULL,
  `tupian` varchar(255) DEFAULT NULL,
  `xtype` varchar(255) DEFAULT NULL,
  `rjxf` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of shanghu
-- ----------------------------
INSERT INTO `shanghu` VALUES ('7', 'sh001', '帝国大学学生之家1层', '2017-05-25 14:20:40', '<span style=\"white-space:nowrap;\">东时便当 为大家带来营养丰富的便当盒饭</span>', '校内免费配送', '东时便当', 'sh001', '4008886666', '0', '/meal/upload/temp/东时便当.jpg', '中餐', '20', '2');
INSERT INTO `shanghu` VALUES ('8', 'sh002', '帝国大学学生之家1层', '2017-05-25 14:31:37', '<span style=\"white-space:nowrap;\">皇家鸡排，各种西餐鸡排等</span>', '免费打包', '皇家鸡排', 'sh002', '13613661366', '0', '/meal/upload/temp/鸡排.jpg', '西餐', '25', '2');
INSERT INTO `shanghu` VALUES ('9', 'sh003', '帝国大学学生之家2层', '2017-05-25 14:46:59', '<span style=\"white-space:nowrap;\">烤肉石锅拌饭</span>', '订餐送饮料', '石锅拌饭', 'sh003', '15915991599', '0', '/meal/upload/temp/石锅拌饭.jpg', '混合', '50', '2');
INSERT INTO `shanghu` VALUES ('10', 'sh004', '帝国大学学生之家2层', '2017-05-25 14:56:00', '<span style=\"white-space:nowrap;\">无名缘米粉</span>', '送酸梅汤', '无名缘米粉', 'sh004', '12312331233', '0', '/meal/upload/temp/米粉.jpg', '中餐', '50', '2');
INSERT INTO `shanghu` VALUES ('11', 'sh005', '帝国大学学生之家2层', '2017-05-25 15:00:48', '<span style=\"white-space:nowrap;\">东北粗粮大包子</span>', '免费打包', '小杨包子铺', 'sh005', '17000000000', '0', '/meal/upload/temp/包子.jpg', '中餐', '50', '2');
INSERT INTO `shanghu` VALUES ('12', 'sh006', '帝国大学食堂', '2017-05-26 16:02:39', '<span style=\"white-space:nowrap;\">帝国大学食堂</span>', '可刷卡', '测试商户006', 'sh006', '006006006', '0', '/meal/upload/nopic.jpg', '中餐', '50', '2');

-- ----------------------------
-- Table structure for shangpin
-- ----------------------------
DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dazhe` int(11) NOT NULL,
  `hot` int(11) NOT NULL,
  `hyjia` double(11,0) NOT NULL,
  `jiage` double DEFAULT NULL,
  `jieshao` text,
  `name` varchar(255) DEFAULT NULL,
  `pubren` varchar(255) DEFAULT NULL,
  `pubtime` datetime DEFAULT NULL,
  `spno` varchar(255) DEFAULT NULL,
  `sptype` varchar(255) DEFAULT NULL,
  `sptypeid` int(11) NOT NULL,
  `tuijian` int(11) NOT NULL,
  `tupian` varchar(255) DEFAULT NULL,
  `zuixin` int(11) NOT NULL,
  `kouwei` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of shangpin
-- ----------------------------
INSERT INTO `shangpin` VALUES ('21', '0', '1', '20', '25', '<p>\r\n	<span style=\"white-space:nowrap;\">天妇罗便当，采用最新鲜的鲜虾制作~</span>\r\n</p>\r\n<p>\r\n	<span style=\"white-space:nowrap;\"><img src=\"/meal/upload/attachment/image/20170525/20170525142341_748.jpg\" width=\"500\" height=\"500\" title=\"天妇罗便当\" alt=\"天妇罗便当\" /><br />\r\n</span>\r\n</p>', '天妇罗便当', 'sh001', '2017-05-25 14:23:48', 'bd001', '日韩料理', '6', '0', '/meal/upload/img/天妇罗便当.jpg', '1', '鲜美');
INSERT INTO `shangpin` VALUES ('22', '1', '0', '18', '20', '<span style=\"white-space:nowrap;\">鲜虾便当</span>', '鲜虾便当', 'sh001', '2017-05-25 14:25:50', 'bd002', '中餐', '1', '0', '/meal/upload/img/鲜虾便当.jpg', '1', '鲜美');
INSERT INTO `shangpin` VALUES ('23', '0', '1', '27', '30', '<span style=\"white-space:nowrap;\">鱼香肉丝便当套餐</span>', '鱼香肉丝便当套餐', 'sh001', '2017-05-25 14:26:51', 'bd003', '中餐', '1', '0', '/meal/upload/img/鱼香肉丝便当套餐.jpg', '1', '麻辣');
INSERT INTO `shangpin` VALUES ('24', '0', '0', '15', '18', '<span style=\"white-space:nowrap;\">鸡排便当</span>', '鸡排便当', 'sh001', '2017-05-25 14:27:37', 'bd004', '中餐', '1', '0', '/meal/upload/img/鸡排便当.jpg', '1', '鲜美');
INSERT INTO `shangpin` VALUES ('25', '0', '0', '25', '30', '<span style=\"white-space:nowrap;\">四季便当</span>', '四季便当', 'sh001', '2017-05-25 14:28:19', 'bd005', '中餐', '1', '1', '/meal/upload/img/四季便当.jpg', '1', '鲜美');
INSERT INTO `shangpin` VALUES ('26', '1', '1', '12', '15', '<span style=\"white-space:nowrap;\">蔬菜鸡蛋便当</span>', '蔬菜鸡蛋便当', 'sh001', '2017-05-25 14:29:28', 'bd006', '中餐', '1', '0', '/meal/upload/img/蔬菜鸡蛋便当.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('27', '1', '1', '13', '15', '<span style=\"white-space:nowrap;\">芝士鸡排</span>', '芝士鸡排', 'sh002', '2017-05-25 14:32:59', 'hj001', '西餐', '5', '0', '/meal/upload/img/芝士鸡排.jpg', '1', '甜食');
INSERT INTO `shangpin` VALUES ('28', '0', '0', '10', '12', '<span style=\"white-space:nowrap;\">爱心鸡排</span>', '爱心鸡排', 'sh002', '2017-05-25 14:33:44', 'hj002', '西餐', '5', '0', '/meal/upload/img/爱心鸡排.jpg', '1', '鲜美');
INSERT INTO `shangpin` VALUES ('29', '0', '0', '13', '15', '<span style=\"white-space:nowrap;\">皇家鸡排</span>', '皇家鸡排', 'sh002', '2017-05-25 14:34:17', 'hj003', '西餐', '5', '0', '/meal/upload/img/皇家鸡排.jpg', '0', '麻辣');
INSERT INTO `shangpin` VALUES ('30', '0', '0', '18', '20', '<span style=\"white-space:nowrap;\">双层汉堡</span>', '双层汉堡', 'sh002', '2017-05-25 14:35:49', 'hj004', '西餐', '5', '0', '/meal/upload/img/双层汉堡.jpg', '0', '麻辣');
INSERT INTO `shangpin` VALUES ('31', '0', '0', '10', '12', '<span style=\"white-space:nowrap;\">薯条</span>', '薯条', 'sh002', '2017-05-25 14:35:38', 'hj005', '西餐', '5', '0', '/meal/upload/img/薯条.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('32', '0', '0', '22', '25', '<span style=\"white-space:nowrap;\">牛肉汉堡</span>', '牛肉汉堡', 'sh002', '2017-05-25 14:36:45', 'hj006', '西餐', '5', '0', '/meal/upload/img/牛肉汉堡.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('33', '0', '1', '20', '22', '<span style=\"white-space:nowrap;\">经典石锅拌饭</span>', '经典石锅拌饭', 'sh003', '2017-05-25 14:49:55', 'bf001', '日韩料理', '6', '0', '/meal/upload/img/经典石锅拌饭.jpg', '0', '麻辣');
INSERT INTO `shangpin` VALUES ('34', '1', '0', '22', '25', '<span style=\"white-space:nowrap;\">韩式石锅拌饭</span>', '韩式石锅拌饭', 'sh003', '2017-05-25 14:50:37', 'bf002', '日韩料理', '6', '0', '/meal/upload/img/韩式石锅拌饭.jpg', '0', '麻辣');
INSERT INTO `shangpin` VALUES ('35', '0', '0', '18', '20', '<span style=\"white-space:nowrap;\">蔬菜石锅饭</span>', '蔬菜石锅饭', 'sh003', '2017-05-25 14:52:34', 'bf003', '日韩料理', '6', '0', '/meal/upload/img/蔬菜石锅饭.jpg', '1', '鲜美');
INSERT INTO `shangpin` VALUES ('36', '0', '0', '25', '28', '<span style=\"white-space:nowrap;\">烤肉石锅拌饭</span>', '烤肉石锅拌饭', 'sh003', '2017-05-25 14:53:13', 'bf004', '日韩料理', '6', '1', '/meal/upload/img/烤肉石锅拌饭.jpg', '0', '麻辣');
INSERT INTO `shangpin` VALUES ('37', '0', '1', '12', '15', '<span style=\"white-space:nowrap;\">酸辣米粉</span>', '酸辣米粉', 'sh004', '2017-05-25 14:57:13', 'mf001', '中餐', '1', '1', '/meal/upload/img/酸辣米粉.jpg', '0', '麻辣');
INSERT INTO `shangpin` VALUES ('38', '0', '1', '10', '12', '<span style=\"white-space:nowrap;\">经典米粉</span>', '经典米粉', 'sh004', '2017-05-25 14:57:40', 'mf002', '中餐', '1', '0', '/meal/upload/img/经典米粉.jpg', '0', '麻辣');
INSERT INTO `shangpin` VALUES ('39', '0', '0', '15', '18', '<span style=\"white-space:nowrap;\">牛肉米粉</span>', '牛肉米粉', 'sh004', '2017-05-25 14:58:08', 'mf003', '中餐', '1', '0', '/meal/upload/img/牛肉米粉.jpg', '0', '麻辣');
INSERT INTO `shangpin` VALUES ('40', '1', '1', '1', '2', '<span style=\"white-space:nowrap;\">东北粗粮大包子</span>', '东北粗粮大包子', 'sh005', '2017-05-25 15:02:15', 'bz001', '面食', '11', '1', '/meal/upload/img/东北粗粮大包子.jpg', '1', '鲜美');
INSERT INTO `shangpin` VALUES ('41', '0', '1', '4', '5', '<span style=\"white-space:nowrap;\">东北包子</span>', '东北包子', 'sh005', '2017-05-25 15:03:18', 'bz002', '面食', '11', '0', '/meal/upload/img/东北包子.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('42', '0', '0', '50', '50', '<span style=\"white-space:nowrap;\">测试餐品</span>', '测试餐品', 'sh006', '2017-05-26 16:03:20', 'cs001', '中餐', '1', '0', '/meal/upload/nopic.jpg', '0', '麻辣');

-- ----------------------------
-- Table structure for sitenav
-- ----------------------------
DROP TABLE IF EXISTS `sitenav`;
CREATE TABLE `sitenav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `href` varchar(255) DEFAULT NULL,
  `sindex` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of sitenav
-- ----------------------------
INSERT INTO `sitenav` VALUES ('1', '/e/index.jsp', '1', '首页');
INSERT INTO `sitenav` VALUES ('3', '/e/shopcart.jsp', '2', '购物车');
INSERT INTO `sitenav` VALUES ('7', '/e/shanghulist.jsp', '1', '在线商户');
INSERT INTO `sitenav` VALUES ('8', '/e/shangpinlist.jsp?spcid=1', '1', '中餐');
INSERT INTO `sitenav` VALUES ('9', '/e/shangpinlist.jsp?spcid=5', '1', '西餐');
INSERT INTO `sitenav` VALUES ('10', '/e/shangpinlist.jsp?spcid=6', '1', '日韩料理');
INSERT INTO `sitenav` VALUES ('12', '/e/shangpinlist.jsp?spcid=9', '1', '家常小炒');
INSERT INTO `sitenav` VALUES ('13', '/e/shangpinlist.jsp?spcid=10', '1', '海鲜');
INSERT INTO `sitenav` VALUES ('14', '/e/shangpinlist.jsp?spcid=11', '1', '面食');
INSERT INTO `sitenav` VALUES ('15', '/e/sysconfiginfo.jsp?id=1', '7', '关于我们');
INSERT INTO `sitenav` VALUES ('16', '/e/lanmuinfo.jsp?lanmuid=1', '1', '美食资讯');

-- ----------------------------
-- Table structure for spcategory
-- ----------------------------
DROP TABLE IF EXISTS `spcategory`;
CREATE TABLE `spcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jieshao` varchar(255) DEFAULT NULL,
  `mingcheng` varchar(255) DEFAULT NULL,
  `isleaf` int(11) DEFAULT NULL,
  `parentid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of spcategory
-- ----------------------------
INSERT INTO `spcategory` VALUES ('1', '中餐', '中餐', '1', '0');
INSERT INTO `spcategory` VALUES ('5', '<span style=\"white-space:nowrap;\">西餐</span>', '西餐', '1', '0');
INSERT INTO `spcategory` VALUES ('6', '<span style=\"white-space:nowrap;\">日韩料理</span>', '日韩料理', '1', '0');
INSERT INTO `spcategory` VALUES ('9', '<span style=\"white-space:nowrap;\">家常小炒</span>', '家常小炒', '1', '0');
INSERT INTO `spcategory` VALUES ('10', '<span style=\"white-space:nowrap;\">海鲜</span>', '海鲜', '1', '0');
INSERT INTO `spcategory` VALUES ('11', '<span style=\"white-space:nowrap;\">面食</span>', '面食', '1', '0');

-- ----------------------------
-- Table structure for supplyor
-- ----------------------------
DROP TABLE IF EXISTS `supplyor`;
CREATE TABLE `supplyor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `des` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `lxren` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of supplyor
-- ----------------------------

-- ----------------------------
-- Table structure for sysconfig
-- ----------------------------
DROP TABLE IF EXISTS `sysconfig`;
CREATE TABLE `sysconfig` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dcontent` text,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of sysconfig
-- ----------------------------
INSERT INTO `sysconfig` VALUES ('1', '<span style=\"white-space:nowrap;\">夕云网上订餐管理系统</span> 夕云网上订餐管理系统是针对客户和餐厅所有者的在线订餐服务平台', '关于我们');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createtime` datetime DEFAULT NULL,
  `creator` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `logtimes` int(11) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `rolename` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `xiangpian` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '2017-05-25 11:02:05', null, 'xarox360@hotmail.com', '35', 'admin', 'admin', 'Li ', 'admin', '男', '18611861186', 'admin', '/meal/upload/temp/50508-106.jpg');

-- ----------------------------
-- Table structure for xinxi
-- ----------------------------
DROP TABLE IF EXISTS `xinxi`;
CREATE TABLE `xinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `againstcount` int(11) NOT NULL,
  `agreecount` int(11) NOT NULL,
  `clickcount` int(11) NOT NULL,
  `dcontent` varchar(255) DEFAULT NULL,
  `hot` int(11) NOT NULL,
  `laiyuan` varchar(255) DEFAULT NULL,
  `lanmuid` int(11) NOT NULL,
  `lanmuming` varchar(255) DEFAULT NULL,
  `pubren` varchar(255) DEFAULT NULL,
  `pubtime` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tuijian` int(11) NOT NULL,
  `tupian2` varchar(255) DEFAULT NULL,
  `zhaiyao` varchar(255) DEFAULT NULL,
  `zuixin` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of xinxi
-- ----------------------------
INSERT INTO `xinxi` VALUES ('1', '1', '13', '12', '<p align=\"center\">\r\n	<strong>最新美食资讯</strong>\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	最新美食资讯\r\n</p>\r\n<p>\r\n	最新美食资讯\r\n</p>\r\n<p>\r\n	最新美食资讯\r\n</p>\r\n<p>\r\n	最新美食资讯\r\n</p>', '1', '', '1', '美食资讯', '', '2017-03-17 13:25:31', '最新美食资讯', '1', '/meal/upload/img/头像5.jpg', null, '0');
