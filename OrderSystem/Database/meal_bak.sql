/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50087
Source Host           : localhost:3306
Source Database       : meal2017jsp

Target Server Type    : MYSQL
Target Server Version : 50087
File Encoding         : 65001

Date: 2017-03-17 13:34:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `attachement`
-- ----------------------------
DROP TABLE IF EXISTS `attachement`;
CREATE TABLE `attachement` (
  `id` int(11) NOT NULL auto_increment,
  `belongfileldname` varchar(255) default NULL,
  `belongid` varchar(255) default NULL,
  `belongtable` varchar(255) default NULL,
  `filename` varchar(255) default NULL,
  `pubtime` datetime default NULL,
  `title` varchar(255) default NULL,
  `type` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of attachement
-- ----------------------------

-- ----------------------------
-- Table structure for `comment`
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL auto_increment,
  `belongid` varchar(255) default NULL,
  `commentcontent` varchar(255) default NULL,
  `commentren` varchar(255) default NULL,
  `commenttime` datetime default NULL,
  `title` varchar(255) default NULL,
  `xtype` varchar(255) default NULL,
  `photo` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '15', '123434343443434', 'H001', '2017-03-17 09:34:22', '', 'shangpin', null);
INSERT INTO `comment` VALUES ('2', '18', '1234343434344', 'H001', '2017-03-17 09:46:47', null, 'shangpin', '/waimai/upload/temp/t1.jpg');
INSERT INTO `comment` VALUES ('3', '1', '123434434443', 'H002', '2017-03-17 13:25:51', null, 'news', '/meal/upload/temp/t222.jpg');
INSERT INTO `comment` VALUES ('4', '14', '123434343434343434', 'H002', '2017-03-17 13:26:03', null, 'shangpin', '/meal/upload/temp/t222.jpg');

-- ----------------------------
-- Table structure for `dingdan`
-- ----------------------------
DROP TABLE IF EXISTS `dingdan`;
CREATE TABLE `dingdan` (
  `id` int(11) NOT NULL auto_increment,
  `ddno` varchar(255) default NULL,
  `des` varchar(255) default NULL,
  `fahuoren` varchar(255) default NULL,
  `fahuotime` datetime default NULL,
  `shouhuodizhi` varchar(255) default NULL,
  `shraddress` varchar(255) default NULL,
  `shrname` varchar(255) default NULL,
  `shrtel` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `totalprice` double NOT NULL,
  `xiadanren` varchar(255) default NULL,
  `xiadantime` datetime default NULL,
  `shname` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of dingdan
-- ----------------------------
INSERT INTO `dingdan` VALUES ('5', 'DD20173617120309190', null, 'SH002', '2017-03-17 13:04:11', '杭州市XXX', null, null, '13732921234', '已收货', '', '12', 'H001', '2017-03-17 12:36:09', 'SH002');
INSERT INTO `dingdan` VALUES ('6', 'DD20172217130340160', null, null, '2017-03-17 13:22:40', '杭州市XXX', null, null, '13732921234', '已付款', '', '90', 'H002', '2017-03-17 13:22:40', 'SH002');
INSERT INTO `dingdan` VALUES ('7', 'DD20172217130341530', null, 'SH001', '2017-03-17 13:23:58', '杭州市XXX', null, null, '13732921234', '已收货', '', '85', 'H002', '2017-03-17 13:22:41', 'SH001');

-- ----------------------------
-- Table structure for `dingdanitems`
-- ----------------------------
DROP TABLE IF EXISTS `dingdanitems`;
CREATE TABLE `dingdanitems` (
  `id` int(11) NOT NULL auto_increment,
  `ddno` varchar(255) default NULL,
  `des` varchar(255) default NULL,
  `jiage` double(255,0) default NULL,
  `shuliang` int(11) NOT NULL,
  `spid` int(11) NOT NULL,
  `spimage` varchar(255) default NULL,
  `spname` varchar(255) default NULL,
  `spno` varchar(255) default NULL,
  `hyjia` double default NULL,
  `shname` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of dingdanitems
-- ----------------------------
INSERT INTO `dingdanitems` VALUES ('6', 'DD20173617120309190', 'H001购买四川燃面馆', '12', '1', '19', '/meal/upload/temp/21ae76e052882c29fe9e35a88fd897da56695.jpg', '四川燃面馆', null, '12', 'SH002');
INSERT INTO `dingdanitems` VALUES ('7', 'DD20172217130340160', 'H002购买渝城老妈老火锅', '90', '1', '10', '/meal/upload/temp/1233333.jpg', '渝城老妈老火锅', null, '90', 'SH002');
INSERT INTO `dingdanitems` VALUES ('8', 'DD20172217130341530', 'H002购买厕所串串', '87', '1', '2', '/meal/upload/temp/e4dde71190ef76c6daa4c6cd9b16fdfaae5167e5.jpg', '厕所串串', null, '85', 'SH001');

-- ----------------------------
-- Table structure for `friendlink`
-- ----------------------------
DROP TABLE IF EXISTS `friendlink`;
CREATE TABLE `friendlink` (
  `id` int(11) NOT NULL auto_increment,
  `href` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of friendlink
-- ----------------------------
INSERT INTO `friendlink` VALUES ('1', 'http://mall.jumei.com', '聚美优品');

-- ----------------------------
-- Table structure for `huiyuan`
-- ----------------------------
DROP TABLE IF EXISTS `huiyuan`;
CREATE TABLE `huiyuan` (
  `id` int(11) NOT NULL auto_increment,
  `accountname` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `aihao` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `jibie` varchar(255) default NULL,
  `jifen` int(11) NOT NULL,
  `logtimes` int(11) NOT NULL,
  `mobile` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `nickname` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `regdate` datetime default NULL,
  `sex` varchar(255) default NULL,
  `status` int(11) NOT NULL,
  `touxiang` varchar(255) default NULL,
  `xtype` varchar(255) default NULL,
  `yue` float NOT NULL,
  `zhiye` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of huiyuan
-- ----------------------------
INSERT INTO `huiyuan` VALUES ('6', 'H001', '杭州市XXX', '鲜美', 'test@126.com', null, '22', '11', '13732921234', '李明', '阿明', '123456', '2017-03-17 10:24:53', '男', '1', '/meal/upload/temp/1233333434.jpg', '普通会员', '188', '移动客服');
INSERT INTO `huiyuan` VALUES ('7', 'H002', '杭州市XXX', '鲜美', '118822@qq.com', null, '185', '2', '13732921234', '李泽强', 'H002', '123456', '2017-03-17 13:20:45', '男', '1', '/meal/upload/temp/t222.jpg', '普通会员', '1825', 'IT互联');

-- ----------------------------
-- Table structure for `indexcolumns`
-- ----------------------------
DROP TABLE IF EXISTS `indexcolumns`;
CREATE TABLE `indexcolumns` (
  `id` int(11) NOT NULL auto_increment,
  `coldes` varchar(255) default NULL,
  `colid` int(11) NOT NULL,
  `showstyle` varchar(255) default NULL,
  `xtype` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of indexcolumns
-- ----------------------------
INSERT INTO `indexcolumns` VALUES ('1', '中餐', '1', '图片', '商品');
INSERT INTO `indexcolumns` VALUES ('2', '西餐', '5', '图片', '商品');
INSERT INTO `indexcolumns` VALUES ('3', '蛋糕', '6', '图片', '商品');
INSERT INTO `indexcolumns` VALUES ('4', '火锅', '7', '图片', '商品');

-- ----------------------------
-- Table structure for `jiaodiantu`
-- ----------------------------
DROP TABLE IF EXISTS `jiaodiantu`;
CREATE TABLE `jiaodiantu` (
  `id` int(11) NOT NULL auto_increment,
  `href` varchar(255) default NULL,
  `pindex` int(11) NOT NULL,
  `title` varchar(255) default NULL,
  `tupian` varchar(255) default NULL,
  `xtype` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of jiaodiantu
-- ----------------------------
INSERT INTO `jiaodiantu` VALUES ('1', '#', '0', '美食大乱斗', '/meal/upload/temp/024f78f0f736afc3d37e4defb419ebc4b64512cd.jpg', '站内');
INSERT INTO `jiaodiantu` VALUES ('2', '#', '0', '2', '/meal/upload/temp/30adcbef76094b363129fc07a5cc7cd98c109da5.jpg', '站内');

-- ----------------------------
-- Table structure for `kouwei`
-- ----------------------------
DROP TABLE IF EXISTS `kouwei`;
CREATE TABLE `kouwei` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of kouwei
-- ----------------------------
INSERT INTO `kouwei` VALUES ('1', '麻辣');
INSERT INTO `kouwei` VALUES ('2', '甜食');
INSERT INTO `kouwei` VALUES ('3', '鲜美');

-- ----------------------------
-- Table structure for `lanmu`
-- ----------------------------
DROP TABLE IF EXISTS `lanmu`;
CREATE TABLE `lanmu` (
  `id` int(11) NOT NULL auto_increment,
  `createtime` datetime default NULL,
  `creator` varchar(255) default NULL,
  `des` varchar(255) default NULL,
  `isleaf` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `title` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of lanmu
-- ----------------------------
INSERT INTO `lanmu` VALUES ('1', '2017-03-17 13:25:20', '', '<span style=\"white-space:nowrap;\">美食资讯</span>', '1', '0', '美食资讯');

-- ----------------------------
-- Table structure for `leaveword`
-- ----------------------------
DROP TABLE IF EXISTS `leaveword`;
CREATE TABLE `leaveword` (
  `id` int(11) NOT NULL auto_increment,
  `dcontent` varchar(255) default NULL,
  `lwren` varchar(255) default NULL,
  `pubtime` datetime default NULL,
  `replycontent` varchar(255) default NULL,
  `replyren` varchar(255) default NULL,
  `replytime` datetime default NULL,
  `status` int(11) NOT NULL,
  `title` varchar(255) default NULL,
  `photo` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of leaveword
-- ----------------------------

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL auto_increment,
  `clickcount` int(11) NOT NULL,
  `dcontent` text,
  `pubren` varchar(255) default NULL,
  `pubtime` datetime default NULL,
  `title` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '5', '网上外卖网站上线了', 'admin', '2017-03-17 09:33:48', '在线订餐网站上线了');
INSERT INTO `notice` VALUES ('2', '0', '2333333333333333333333333333333', 'admin', '2017-02-17 20:19:11', '123333333333333');

-- ----------------------------
-- Table structure for `shanghu`
-- ----------------------------
DROP TABLE IF EXISTS `shanghu`;
CREATE TABLE `shanghu` (
  `id` int(11) NOT NULL auto_increment,
  `accountname` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `createtime` datetime default NULL,
  `des` varchar(255) default NULL,
  `jcremark` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `tuijian` int(11) NOT NULL,
  `tupian` varchar(255) default NULL,
  `xtype` varchar(255) default NULL,
  `rjxf` int(11) default NULL,
  `state` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of shanghu
-- ----------------------------
INSERT INTO `shanghu` VALUES ('1', 'SH001', '北京市海淀区XXX', '2016-05-01 20:34:55', '123444', '123444', '高天商户', '123456', '13958063743', '0', '/meal/upload/nopic.jpg', '中餐', '50', '2');
INSERT INTO `shanghu` VALUES ('2', 'SH002', '北京市海淀区XXX', '2016-05-03 21:25:09', '1234555', '123444', '测试商户2', '123456', '13958063743', '0', '/meal/upload/nopic.jpg', '中餐', '50', '2');
INSERT INTO `shanghu` VALUES ('3', 'SH003', '北京市海淀区XXX', '2016-05-03 23:10:51', '12344444555', '123444', '外卖商户3', '123456', '13958063743', '0', '/meal/upload/nopic.jpg', '中餐', '50', '2');
INSERT INTO `shanghu` VALUES ('4', 'SH004', '北京市海淀区XXX', '2016-05-03 23:41:29', '1235554', '123444', '测试商户4', '123456', '13958063743', '0', '/meal/upload/nopic.jpg', '中餐', '50', '2');
INSERT INTO `shanghu` VALUES ('5', 'SH006', '杭州市XXX', '2017-02-17 20:13:07', '1234444444343434', '好吃的火锅', '海天火锅城', '123456', '13732921234', '0', '/meal/upload/temp/c699061f9aea89e9c5e1094e6781efb0129638.jpg', '中餐', '50', '1');

-- ----------------------------
-- Table structure for `shangpin`
-- ----------------------------
DROP TABLE IF EXISTS `shangpin`;
CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL auto_increment,
  `dazhe` int(11) NOT NULL,
  `hot` int(11) NOT NULL,
  `hyjia` double(11,0) NOT NULL,
  `jiage` double default NULL,
  `jieshao` text,
  `name` varchar(255) default NULL,
  `pubren` varchar(255) default NULL,
  `pubtime` datetime default NULL,
  `spno` varchar(255) default NULL,
  `sptype` varchar(255) default NULL,
  `sptypeid` int(11) NOT NULL,
  `tuijian` int(11) NOT NULL,
  `tupian` varchar(255) default NULL,
  `zuixin` int(11) NOT NULL,
  `kouwei` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of shangpin
-- ----------------------------
INSERT INTO `shangpin` VALUES ('1', '1', '0', '15', '15.5', '<div class=\"rt-content\">\r\n	黄焖鸡:<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D89%3Bc%3Dnuomi%2C95%2C95/sign=2c03038d201f95cab2bac8f6f427530e/5bafa40f4bfbfbed106d308c7df0f736afc31f08.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C313%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=22a75113f203918fc39e678a6c0d0aa7/adaf2edda3cc7cd9cc90322a3c01213fb90e9187.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n维他奶:<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C314%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=6cd93c700a2442a7ba41a7e5ec73817b/562c11dfa9ec8a1391af5113f203918fa1ecc088.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n</div>\r\n<div class=\"info-buy-content\">\r\n</div>\r\n<div class=\"info-buy-content\">\r\n</div>\r\n<h3 class=\"w-section-header\">\r\n	商家介绍\r\n</h3>\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C640%2C426%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=9d55e6d80bf41bd5ce1cb2b46ceaadfb/267f9e2f07082838ff7bdde7bd99a9014d08f1cb.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C640%2C423%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=6ddf3bc249086e067ee7650b3f3857c4/0dd7912397dda1447872cb41b7b7d0a20df486ce.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C640%2C428%3Bw%3D470%3Bq%3D89%3Bc%3Dnuomi%2C95%2C95/sign=435a0609d4c8a786aa65104e5a39e50d/b219ebc4b74543a9e4635c3f1b178a82b80114cc.jpg\" style=\"float:none;display:block;\" title=\"图片\" />', '膳当家黄焖鸡米饭', 'SH001', '2017-02-17 17:15:19', 'SP0001', '中餐', '1', '1', '/meal/upload/temp/4bed2e738bd4b31c1422d93e80d6277f9e2ff81d.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('2', '1', '0', '85', '87.1', '<div class=\"rt-content\">\r\n	代金券:<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C300%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=e4ed66f164d0f703f2fdcf9c35ca7d0d/adaf2edda3cc7cd9e3ee043f3f01213fb90e9110.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C313%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=97193307292eb938f82220b2e852a905/c2fdfc039245d68817c18242a2c27d1ed31b2410.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C300%3Bw%3D470%3Bq%3D89%3Bc%3Dnuomi%2C95%2C95/sign=6158dce5ce95d143ce39be634ec0ae32/622762d0f703918f83130d2c573d269758eec411.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D89%3Bc%3Dnuomi%2C95%2C95/sign=0312b5cdb651f819e56a590ae78466dd/0b46f21fbe096b63cc246db60a338744ebf8ac12.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C300%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=bee7755baf773912d069df21c529aa28/242dd42a2834349b4bdf5d63cfea15ce37d3be7e.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C313%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=11f8e01b7d899e516cc160547f97f503/f603918fa0ec08fa753f20415fee3d6d55fbda1c.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n</div>\r\n<div class=\"info-buy-content\">\r\n</div>\r\n<div class=\"info-buy-content\">\r\n</div>\r\n<h3 class=\"w-section-header\">\r\n	商家介绍\r\n</h3>\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=475db1c4cefcc3cea08f9373af75fab8/f9198618367adab44aa026a58dd4b31c8601e4e7.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C300%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=bf163fd7273fb80e189e3b970be1031e/4610b912c8fcc3ce7d02fad59445d688d53f2011.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C349%3Bw%3D470%3Bq%3D89%3Bc%3Dnuomi%2C95%2C95/sign=294f7f26f136afc31a4365258e29c7f4/3c6d55fbb2fb43164722489c26a4462309f7d312.jpg\" style=\"float:none;display:block;\" title=\"图片\" />', '厕所串串', 'SH001', '2017-02-17 17:15:20', 'SP0002', '中餐', '1', '1', '/meal/upload/temp/e4dde71190ef76c6daa4c6cd9b16fdfaae5167e5.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('3', '0', '1', '25', '26.5', '<ul id=\"j-info-all\">\r\n	<li class=\"item-info-detail j-item-content\">\r\n		<div class=\"info-buy-content\">\r\n			<div class=\"w-rich-text\">\r\n				<div class=\"rt-content\">\r\n					代金券:<br />\r\n					<p class=\"wrap-img\">\r\n						<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=f110131f0a338744888a753c6c3ff5c9/2e2eb9389b504fc2d256fd4ae3dde71190ef6d77.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n					</p>\r\n<br />\r\n					<p class=\"wrap-img\">\r\n						<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=082d93bbb14543a9e154a08c2327a6b2/b3fb43166d224f4a9b903e5c0ff790529822d170.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n					</p>\r\n<br />\r\n					<p class=\"wrap-img\">\r\n						<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=3127b083c5cec3fd9f71fd35ebb8f80f/b8014a90f603738d2142416db51bb051f819ec71.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n					</p>\r\n<br />\r\n					<p class=\"wrap-img\">\r\n						<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=e094748b37adcbef157b2446919f02ed/810a19d8bc3eb13503ccfaf4a01ea8d3fd1f4471.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n					</p>\r\n<br />\r\n					<p class=\"wrap-img\">\r\n						<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=f66fa976b5de9c82b22aa3cf51b1ac3a/aa18972bd40735fa82fa03f698510fb30f240872.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n					</p>\r\n<br />\r\n					<p class=\"wrap-img\">\r\n						<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=88101aaff103918fc39e678a6c0d0aa7/b17eca8065380cd77a14efa2a744ad3459828173.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n					</p>\r\n<br />\r\n					<p class=\"wrap-img\">\r\n						<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=26cc42f8ef50352aa52e7f486e73d7c2/2cf5e0fe9925bc31405f4cd758df8db1cb13707a.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n					</p>\r\n				</div>\r\n			</div>\r\n		</div>\r\n		<div class=\"info-buy-content\">\r\n		</div>\r\n		<div class=\"info-buy-content\">\r\n		</div>\r\n	</li>\r\n	<li id=\"j-info-intro\" class=\"item-info-detail j-item-content\">\r\n		<div class=\"info-buy-content\">\r\n			<div class=\"w-rich-text\">\r\n				<h3 class=\"w-section-header\">\r\n					商家介绍\r\n				</h3>\r\n				<div class=\"rt-content\">\r\n					<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=ae0d418c3c87e9505658a92c2d087f73/3b292df5e0fe9925a43c271f32a85edf8db17148.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=b5a70ab03dc79f3d9baebe708791e121/78310a55b319ebc4cbdf39d68426cffc1f1716dd.jpg\" style=\"float:none;display:block;\" title=\"图片\" /> \r\n				</div>\r\n			</div>\r\n		</div>\r\n	</li>\r\n</ul>', '极鲜骨头美食', 'SH001', '2017-02-17 17:15:20', 'SP0003', '中餐', '1', '0', '/meal/upload/temp/9825bc315c6034a845d3f6cecd1349540923764f.jpg', '1', '鲜美');
INSERT INTO `shangpin` VALUES ('4', '0', '1', '8', '8.5', '<div class=\"rt-content\">\r\n	代金券:<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C640%2C427%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=e2852ac594ef76c6c49da16ba026d1ca/1ad5ad6eddc451da8693f40fb2fd5266d11632e8.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C640%2C427%3Bw%3D470%3Bq%3D89%3Bc%3Dnuomi%2C95%2C95/sign=0c51eaab9a2f07084b4a7040d41494a9/37d3d539b6003af3b1002484312ac65c1138b698.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n</div>\r\n<div class=\"info-buy-content\">\r\n</div>\r\n<div class=\"info-buy-content\">\r\n</div>\r\n<h3 class=\"w-section-header\">\r\n	商家介绍\r\n</h3>\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D89%3Bc%3Dnuomi%2C95%2C95/sign=2b5e56e7930a304e466dfabaecf88bb6/72f082025aafa40f9dbaec3eaf64034f79f019d0.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=3f5cd05361380cd7f251f8ad9c748104/6d81800a19d8bc3e3e172929868ba61ea8d34531.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C640%2C427%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=5a2ea1d33ef33a878a225a5afb6c3c08/9d82d158ccbf6c810f1d0e0bb83eb13533fa402e.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C640%2C427%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=3a540a460e7b0208188665a15fe9dee3/a044ad345982b2b784f01b2735adcbef77099be1.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C640%2C427%3Bw%3D470%3Bq%3D89%3Bc%3Dnuomi%2C95%2C95/sign=4d65c88bc8bf6c81e37876a8810e9d05/d043ad4bd11373f053e5437ca00f4bfbfaed047e.jpg\" style=\"float:none;display:block;\" title=\"图片\" />', '福牛面道', 'SH001', '2017-02-17 17:15:20', 'SP0004', '中餐', '1', '0', '/meal/upload/temp/8b82b9014a90f603404c67a33d12b31bb151ed52.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('5', '0', '1', '8', '8.9', '<div class=\"rt-content\">\r\n	羊肉汤粉:<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://S2.nuomi.bdimg.com/upload/2014/06-26/1403793770643-6168.jpg\" style=\"float:none;border:0px solid #000;\" title=\"图片\" border=\"0\" />\r\n	</p>\r\n卤蛋:<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://S2.nuomi.bdimg.com/upload/2014/06-26/1403793757754-5355.jpg\" style=\"float:none;border:0px solid #000;\" title=\"图片\" border=\"0\" />\r\n	</p>\r\n</div>\r\n<div class=\"info-buy-content\">\r\n</div>\r\n<div class=\"info-buy-content\">\r\n</div>\r\n<h3 class=\"w-section-header\">\r\n	商家介绍\r\n</h3>\r\n<img src=\"http://S2.nuomi.bdimg.com/upload/2014/06-26/1403793745062-7545.jpg\" style=\"float:none;\" title=\"图片\" /><br />\r\n尝贯了南昌拌粉外加瓦罐汤，尝回头的羊肉高汤汤粉可以品尝，老板可是热情好客，这一碗西部特色客官您吃了绝对一个赞。<br />\r\n<img src=\"http://S2.nuomi.bdimg.com/upload/2014/06-26/1403793745427-4035.jpg\" style=\"float:none;\" title=\"图片\" />', '尝回头火锅羊肉粉', 'SH001', '2017-02-17 17:15:20', 'SP0005', '中餐', '1', '0', '/meal/upload/temp/1161539-djhc8vg26t-453543058303313.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('6', '1', '0', '17', '17.9', '<div class=\"rt-content\">\r\n	地锅鸡:<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C292%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=295fa36b34adcbef157b2446919f02ed/6d81800a19d8bc3e48c89c65878ba61ea9d34559.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n</div>\r\n<div class=\"info-buy-content\">\r\n</div>\r\n<div class=\"info-buy-content\">\r\n</div>\r\n<h3 class=\"w-section-header\">\r\n	商家介绍\r\n</h3>\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C625%3Bw%3D470%3Bq%3D89%3Bc%3Dnuomi%2C95%2C95/sign=c23966557ecb0a46916dd1795653da14/37d12f2eb9389b50810864fd8035e5dde6116eae.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C292%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=255a09917eec54e755a3405e8408b760/241f95cad1c8a786cd72cea16209c93d71cf50c0.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C626%3Bw%3D470%3Bq%3D89%3Bc%3Dnuomi%2C95%2C95/sign=e65ee871386d55fbd1892c665012637a/caef76094b36acafee14125379d98d1000e99cad.jpg\" style=\"float:none;display:block;\" title=\"图片\" />', '秦泰和地锅拌饭', 'SH001', '2017-02-17 17:15:20', 'SP0006', '中餐', '1', '0', '/meal/upload/temp/242dd42a2834349b9b9eec2accea15ce37d3be81.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('7', '0', '1', '7', '7.2', '<div class=\"rt-content\">\r\n	原味鸡蛋仔:<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C780%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=52ff0529b83eb1355088edfb9b2e84e3/83025aafa40f4bfb2918b795074f78f0f6361822.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C640%2C431%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=1abd5f56dd33c895b231c23bec235fc0/58ee3d6d55fbb2fb568f70d34b4a20a44723dc4e.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n</div>\r\n<div class=\"info-buy-content\">\r\n</div>\r\n<div class=\"info-buy-content\">\r\n</div>\r\n<h3 class=\"w-section-header\">\r\n	商家介绍\r\n</h3>\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C640%2C960%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=68ca7a1f396d55fbd1892c665012637a/30adcbef76094b36e2f20d2ca7cc7cd98c109d8a.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C285%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=4b6f3a29b83eb1355088edfb9b2e84e3/83025aafa40f4bfb30888895074f78f0f6361892.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C640%2C427%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=9e33f7f631fae6cd18fbf12132832314/f603918fa0ec08fa582505665dee3d6d54fbdacd.jpg\" style=\"float:none;display:block;\" title=\"图片\" />', '不二鸡蛋仔', 'SH001', '2017-02-17 17:15:20', 'SP0007', '中餐', '1', '0', '/meal/upload/temp/279759ee3d6d55fbbdc661e769224f4a21a4ddea.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('8', '0', '1', '89', '90', '<div class=\"rt-content\">\r\n	代金券:<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C321%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=3f57d175be99a9012f7a017620a5264b/b7003af33a87e950154dfe0d16385343fbf2b47c.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C313%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=221c3a597df40ad101ab9da36a1c3def/faf2b2119313b07ee2e75d690ad7912397dd8c7c.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C314%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=3af2322a04087bf469a30da9cfe37b1c/5243fbf2b21193139719f2d163380cd791238d7c.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C709%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=21b891bd8c13632701a29873acbf8cdc/96dda144ad34598282d0e8f30af431adcbef847c.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C470%2C706%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=b8745b7664d0f703f2fdcf9c35ca7d0d/ac345982b2b7d0a23e9309fccdef76094b369a7c.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C709%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=c5b46f7d17dfa9ece9610c575fe0db33/30adcbef76094b369bc8168ca5cc7cd98d109d7c.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C314%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=d435a073740e0cf3b4b814bb3776de2f/7aec54e736d12f2efd5fa30149c2d5628535687c.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C314%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=c89426468c82b90129e299734ebd8547/7acb0a46f21fbe096c0bce756d600c338744ad7d.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C708%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=30ebea09cabf6c81e37876a8810e9d05/c995d143ad4bd113df99b9535cafa40f4bfb057e.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n</div>\r\n<div class=\"info-buy-content\">\r\n</div>\r\n<div class=\"info-buy-content\">\r\n</div>\r\n<h3 class=\"w-section-header\">\r\n	商家介绍\r\n</h3>\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D2%2C1%2C470%2C313%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=b74a80586d63f62408126343ba76c7c9/d4628535e5dde711d5ba4897a1efce1b9d166162.jpg\" style=\"float:none;display:block;\" title=\"图片\" />云境小厨，云境生态园品牌旗下生态主题餐厅。于2013年9月正式营业，致力打造贴近百姓消费的精品餐饮酒店，原木，瓷坯，绿植墙，书架每一处都透着浓浓的人文关怀和古朴风范，时尚和古典相交辉映，生态和休闲自然成趣，是南昌市风格独特的时尚休闲餐厅。<br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C628%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=98a48c409513b07ea9f20a4831e7bd13/9358d109b3de9c82b20ef2ee6a81800a19d84363.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C629%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=049f35a51dd5ad6ebeb63eaabcfb15eb/a08b87d6277f9e2fd18c13691930e924b899f312.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C314%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=494d0d82d339b600598155f7d460191a/bd315c6034a85edfd132f0424f540923dd547510.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C314%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=a1210743b51bb0519b6be9680b4af684/0d338744ebf81a4c5959e7a8d12a6059252da663.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C314%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=6b50ee68b0003af359f58620081aea6c/5d6034a85edf8db1969072050f23dd54564e7410.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C628%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=d9a6495f0af3d7ca18b96536cf2f9239/7aec54e736d12f2ef8bca00149c2d56285356811.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C629%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=a0055e690ad79123f4afce34900475b2/d058ccbf6c81800a735d876fb73533fa828b4712.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C628%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=3c454da184025aafc77d248bc6dd8754/908fa0ec08fa513dcbc167bf3b6d55fbb2fbd96c.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C628%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=6d5464fea20f4bfb989fc4143e7f54c0/09fa513d269759eed23b6baab4fb43166d22df6c.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C629%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=928e192e982f07084b4a7040d41494a9/5ab5c9ea15ce36d3c06188513cf33a87e950b16d.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C629%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=0ebd3786972397ddc236c24464b29e87/cdbf6c81800a19d8d7bb8a6435fa828ba61e4612.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C599%2C314%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=8bdb87504c90f60310ffc60704229f2b/7acb0a46f21fbe096a3ac8756d600c338744ad6e.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C472%2C322%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=7eb20fca053b5bb5aa987abe0be3f909/95eef01f3a292df5b678a274ba315c6034a87313.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D0%2C0%2C537%2C314%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=0489e2a8d12a6059465fbb5a150418ab/8d5494eef01f3a297873dbaf9f25bc315c607c13.jpg\" style=\"float:none;display:block;\" title=\"图片\" />', '云境小厨', 'SH002', '2017-02-17 17:15:20', 'SP0008', '中餐', '1', '0', '/meal/upload/temp/caef76094b36acaf16ae9b9d7ad98d1001e99c00.jpg', '1', '鲜美');
INSERT INTO `shangpin` VALUES ('9', '0', '1', '95', '100', '<div class=\"rt-content\">\r\n	代金券:<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D75%2C26%2C499%2C332%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=d86067fa6d600c33e4368488277b6423/f7246b600c33874458fb8b92570fd9f9d72aa026.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D78%2C0%2C554%2C369%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=930e3b0dfb1f4134f4785f3e1828ade6/c2fdfc039245d688e12f144aa2c27d1ed21b242a.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n	<p class=\"wrap-img\">\r\n		<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D50%2C0%2C554%2C369%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=7ac53eb0dbc451dae2b956ab8bc8624a/f636afc379310a55d209781ab14543a98226102a.jpg\" style=\"float:none;display:block;\" title=\"图片\" />\r\n	</p>\r\n<br />\r\n</div>\r\n<div class=\"info-buy-content\">\r\n</div>\r\n<div class=\"info-buy-content\">\r\n</div>\r\n<h3 class=\"w-section-header\">\r\n	商家介绍\r\n</h3>\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D94%2C0%2C758%2C1136%3Bw%3D470%3Bq%3D90%3Bc%3Dnuomi%2C95%2C95/sign=fd4f072c3c01213fdb7c149c69de02fd/a2cc7cd98d1001e9495e27fabd0e7bec55e797e0.jpg\" style=\"float:none;display:block;\" title=\"图片\" /><br />\r\n<img src=\"http://e.hiphotos.baidu.com/bainuo/crop%3D37%2C61%2C509%2C339%3Bw%3D470%3Bq%3D99%3Bc%3Dnuomi%2C95%2C95/sign=807142d7b5de9c82b22aa3cf51b2b726/d058ccbf6c81800a0bf12fe0b73533fa838b47c3.jpg\" style=\"float:none;display:block;\" title=\"图片\" />', '福港深海渔馆', 'SH004', '2017-02-17 17:15:20', 'SP0009', '中餐', '1', '1', '/meal/upload/temp/472309f790529822d68a982dd1ca7bcb0b46d4a7.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('10', '1', '1', '90', '90', '<div class=\"deal-component-container\" id=\"yui_3_16_0_1_1487325303186_258\" style=\"margin:5px 0px 30px;padding:5px 0px 0px;font-size:12px;width:980px;border-top:1px solid #EEEEEE;color:#666666;font-family:\" white-space:normal;background-color:#ffffff;\"=\"\">\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"http://p1.meituan.net/dealwatera/0f8de52251e718e1c95093709537c10c40377.jpg@466h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"渝城老妈老火锅-美团\" /> \r\n</p>\r\n<p>\r\n	<img src=\"http://p1.meituan.net/dealwatera/1ad53591b863dff6bd7eaebbca94dc7d45509.jpg@466h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"渝城老妈老火锅-美团\" /> \r\n</p>\r\n<img src=\"http://p0.meituan.net/dealwatera/ab05bac9c1ca0615a3c54b7a42a9e79c59070.jpg@467h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"渝城老妈老火锅-美团\" /> \r\n<p>\r\n	<br />\r\n</p>\r\n	</div>', '渝城老妈老火锅', 'SH002', '2017-02-17 18:04:40', 'SP0010', '火锅', '7', '1', '/meal/upload/temp/1233333.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('11', '1', '0', '80', '80', '<p>\r\n	<img src=\"http://p0.meituan.net/dealwatera/815edb58922e154d5b26a8bd45d0f95a113150.jpg@526h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"重庆崽儿火锅串串-美团\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<div class=\"blk detail \" id=\"yui_3_16_0_1_1487326040987_1409\" style=\"margin:7px 0px 30px;padding:0px;width:702px;color:#666666;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n<div id=\"anchor-bizinfo\" style=\"margin:0px;padding:0px;\">\r\n	<div class=\"standard-content\" id=\"yui_3_16_0_1_1487326040987_2449\" style=\"margin:0px;padding:2px 0px;\">\r\n		<p id=\"yui_3_16_0_1_1487326040987_2450\" style=\"margin-top:10px;margin-bottom:10px;padding:0px;font-stretch:normal;line-height:24px;\">\r\n			印象重庆??重庆崽儿火锅，创立于1993年，是有名的火锅，1998年被重庆政府评为重庆市明优火锅，其前身就是重庆人火祸城。现隶属于重庆帝业餐饮文化有限公司。2016年8月被评为“重庆老火锅一名”。重庆火锅，又称为毛肚火锅和麻辣火锅，是中国传统饮食方式，起源于明末清初的重庆嘉陵江胖。朝天门等码头船工纤夫的粗放餐饮方式，后随着社会的发展，历史的变迁。成为人们的饮食方式，重庆火锅的独特风味渐渐受人们的喜爱。\r\n		</p>\r\n<img class=\"\" src=\"http://p1.meituan.net/dealwatera/885f447e408c1f1922f1b61c9325fcfb96647.jpg@526h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"重庆崽儿火锅串串-美团\" height=\"526\" style=\"max-width:702px;\" /><img class=\"\" src=\"http://p1.meituan.net/dealwatera/5a6030dd6b98571e6d58909605750186116342.jpg@526h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"重庆崽儿火锅串串-美团\" height=\"526\" style=\"max-width:702px;\" /><img class=\"\" src=\"http://p0.meituan.net/dealwatera/ee904a3f35a8fa5a75349cdaa105917c52552.jpg@470h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"重庆崽儿火锅串串-美团\" height=\"470\" style=\"max-width:702px;\" /><img class=\"\" src=\"http://p0.meituan.net/dealwatera/d164be7588d58a4f7e552c3b8f0e738349819.jpg@470h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"重庆崽儿火锅串串-美团\" height=\"470\" style=\"max-width:702px;\" /><img class=\"\" src=\"http://p0.meituan.net/dealwatera/d961246456a2b1e47f664d0ce269dbc656452.jpg@470h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"重庆崽儿火锅串串-美团\" height=\"470\" style=\"max-width:702px;\" /><img class=\"\" src=\"http://p0.meituan.net/dealwatera/da1dbeec2789e9ff013513d7c1941d6d53323.jpg@470h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"重庆崽儿火锅串串-美团\" height=\"470\" style=\"max-width:702px;\" /><img class=\"\" src=\"http://p0.meituan.net/dealwatera/27e665883c8262b917038350c7b39188102787.jpg@526h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"重庆崽儿火锅串串-美团\" height=\"526\" style=\"max-width:702px;\" /><img class=\"\" src=\"http://p0.meituan.net/dealwatera/06b800408b9967576e7bcd8670c80a2057880.jpg@470h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"重庆崽儿火锅串串-美团\" height=\"470\" style=\"max-width:702px;\" /> \r\n	</div>\r\n</div>\r\n	</div>\r\n<div id=\"anchor-reviews\" class=\"user-reviews J-rate-wrapper J-hub\" data-huburl=\"deal/userreviews\" data-hubmodule=\"www-deal\" data-hubnamespace=\"Deal.UserReviews\" data-hubconfig=\"42598342\" data-hubstamp=\"yui_3_16_0_1_1487326040987_33\" data-hubstate=\"50\" style=\"margin:0px 0px 20px;padding:0px;color:#666666;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\">\r\n	<div class=\"rate-overview J-hub\" id=\"J-overview\" data-huburl=\"deal/myreview\" data-hubmodule=\"www-deal\" data-hubnamespace=\"Deal.MyReview\" data-hubconfig=\"42598342\" data-hubstamp=\"yui_3_16_0_1_1487326040987_1311\" data-hubstate=\"50\" style=\"margin:0px;padding:0px;\">\r\n		<div class=\"overview-head content-title cf\" id=\"yui_3_16_0_1_1487326040987_2452\" style=\"margin:0px;padding:20px 0px 10px;zoom:1;border-bottom:2px solid #BBBBBB;color:#333333;font-size:18px;font-weight:700;\">\r\n			<h3 class=\"overview-title\" id=\"yui_3_16_0_1_1487326040987_2454\" style=\"margin:0px;padding:0px;font-size:18px;font-family:\" -webkit-font-smoothing:antialiased;float:left;\"=\"\">\r\n					消费评\r\n				</h3>\r\n					</div>\r\n				</div>\r\n					</div>\r\n					<p>\r\n						<br />\r\n					</p>', '重庆崽儿火锅串串', 'SH002', '2017-02-17 18:09:24', 'SP0012', '火锅', '7', '0', '/meal/upload/temp/b1ca3d89b78a1fe53924885cc0dbb3db113150.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('12', '1', '0', '70', '70', '<p class=\"standard-bar\" id=\"yui_3_16_0_1_1487326202570_2260\" style=\"margin-top:10px;margin-bottom:10px;padding:0px 6px;color:#333333;border-radius:0px;font-weight:700;background:#EEEEEE;font-stretch:normal;font-size:16px;line-height:36px;font-family:\" border-left:4px=\"\" solid=\"\" #2bb8aa;white-space:normal;\"=\"\">\r\n	十二码头火锅\r\n	</p>\r\n<div class=\"standard-content\" id=\"yui_3_16_0_1_1487326202570_2264\" style=\"margin:0px;padding:2px 0px;color:#666666;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\"> <img class=\"\" src=\"http://p0.meituan.net/dealwatera/b8793e8c7dddcc45d45bf02045270de7129623.jpg@936h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"十二码头火锅-美团\" height=\"936\" style=\"max-width:702px;\" /> \r\n	<p style=\"margin-top:10px;margin-bottom:10px;padding:0px;font-stretch:normal;line-height:24px;\">\r\n		正宗重庆火锅，欢迎您！\r\n	</p>\r\n<img class=\"\" src=\"http://p0.meituan.net/dealwatera/7de141a786ec4feb6906405f9c216b3c119305.jpg@936h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"十二码头火锅-美团\" height=\"936\" style=\"max-width:702px;\" /><img class=\"\" src=\"http://p0.meituan.net/dealwatera/cea1a125cb7922cb0fb1482f1aba8a18110304.jpg@936h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"十二码头火锅-美团\" height=\"936\" id=\"yui_3_16_0_1_1487326202570_2263\" style=\"max-width:702px;\" /> \r\n		</div>', '【绳金塔】十二码头火锅', 'SH002', '2017-02-17 18:11:31', 'SP0013', '火锅', '7', '0', '/meal/upload/temp/3bf775a830ca7aa08dcad819cc57d7f3119155.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('13', '1', '0', '130', '130', '<img src=\"http://p0.meituan.net/deal/c4f97e06b60b337e74ba183a1897e87f378330.jpg@PC\" alt=\"洛弗迪西餐厅-美团\" />', '【桃源/司马庙】洛弗迪西餐厅', 'SH002', '2017-02-17 18:13:19', 'SP0014', '西餐', '5', '0', '/meal/upload/temp/7616a87054b98a61ff957c2645423a42398021.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('14', '1', '0', '170', '170', '<p>\r\n	<img src=\"http://p1.meituan.net/deal/fa329b8f19fb787e1fcce3c42a7ae8d1367634.jpg@PC\" alt=\"星空主题西餐酒吧-美团\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"http://p1.meituan.net/deal/3c9535487610cdef42a49b5b04bd5b87413106.jpg@PC\" alt=\"星空主题西餐酒吧-美团\" /> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"http://p0.meituan.net/deal/fc80672de8a9715c605cda619bfb26f0358898.jpg@PC\" alt=\"星空主题西餐酒吧-美团\" /> \r\n</p>', '【万达广场】星空主题西餐酒吧', 'SH002', '2017-02-17 18:15:50', 'SP0015', '西餐', '5', '0', '/meal/upload/temp/705329dd356250bdd82581895b715041335845.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('15', '1', '0', '80', '80', '<p class=\"standard-bar\" id=\"yui_3_16_0_1_1487326629053_1342\" style=\"margin-top:10px;margin-bottom:10px;padding:0px 6px;color:#333333;border-radius:0px;font-weight:700;background:#EEEEEE;font-stretch:normal;font-size:16px;line-height:36px;font-family:\" border-left:4px=\"\" solid=\"\" #2bb8aa;white-space:normal;\"=\"\">\r\n	汉釜宫韩式自助烤肉\r\n	</p>\r\n<div class=\"standard-content\" id=\"yui_3_16_0_1_1487326629053_1458\" style=\"margin:0px;padding:2px 0px;color:#666666;font-family:\" font-size:14px;white-space:normal;background-color:#ffffff;\"=\"\"> <img class=\"\" src=\"http://p1.meituan.net/dealwatera/c8228df27940a2c5008e476b8be4fee5123579.jpg@526h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"汉釜宫韩式自助烤肉-美团\" height=\"526\" style=\"max-width:702px;\" /> \r\n	<p style=\"margin-top:10px;margin-bottom:10px;padding:0px;font-stretch:normal;line-height:24px;\">\r\n		汉釜宫，韩国烧烤方式之一，原为韩国宫廷秘制烤肉，具体操作步骤及原料配方至今未公诸于众。2010年上半年登陆。汉釜宫烤肉的制作工艺及方法与传统烤肉差别较大，所用菜品要求极其严格，必须是现切、现拌、现烤，不能提前腌制，再加上四十多种中草药合成的秘制配料。不但保证了烤肉的清洁、新鲜和原汁原味。深受广大青年男女的热捧。\r\n	</p>\r\n<img class=\"\" src=\"http://p1.meituan.net/dealwatera/d645918238347576a07c4a3bbe815dd490183.jpg@526h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"汉釜宫韩式自助烤肉-美团\" height=\"526\" id=\"yui_3_16_0_1_1487326629053_1457\" style=\"max-width:702px;\" /><img class=\"\" src=\"http://p1.meituan.net/dealwatera/6b6eaabfa778b1ba45c53cb80938c88d77417.jpg@936h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"汉釜宫韩式自助烤肉-美团\" height=\"936\" style=\"max-width:702px;\" /> \r\n		</div>', '青山湖区汉釜宫韩式自助烤肉', 'SH002', '2017-02-17 18:19:28', 'SP00017', '自助餐', '8', '0', '/meal/upload/temp/c699061f9aea89e9c5e1094e6781efb0129638.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('16', '0', '0', '33', '33', '<div class=\"standard-content-title\" id=\"yui_3_16_0_1_1487326852018_2258\" style=\"margin:10px 0px 15px;padding:0px;color:#666666;font-family:&quot;font-size:14px;white-space:normal;background-color:#FFFFFF;\">\r\n	<strong id=\"yui_3_16_0_1_1487326852018_2257\">海带排骨汤</strong>\r\n</div>\r\n<img class=\"\" src=\"http://p0.meituan.net/deal/a12971fc4342a570cc528fbd0e17f3da233891.jpg@PC\" alt=\"同学居家常菜-美团\" height=\"511\" style=\"max-width:702px;color:#666666;font-family:&quot;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<div class=\"standard-content-title\" style=\"margin:10px 0px 15px;padding:0px;color:#666666;font-family:&quot;font-size:14px;white-space:normal;background-color:#FFFFFF;\">\r\n	<strong>腊肠笋丝</strong>\r\n</div>\r\n<img class=\"\" src=\"http://p0.meituan.net/deal/a19ea202593188e11fe2b71f96a22de3440690.jpg@PC\" alt=\"同学居家常菜-美团\" height=\"798\" id=\"yui_3_16_0_1_1487326852018_2266\" style=\"max-width:702px;color:#666666;font-family:&quot;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />\r\n<div class=\"standard-content-title\" style=\"margin:10px 0px 15px;padding:0px;color:#666666;font-family:&quot;font-size:14px;white-space:normal;background-color:#FFFFFF;\">\r\n	<strong>莲花血鸭</strong>\r\n</div>\r\n<img class=\"\" src=\"http://p1.meituan.net/deal/684ff3b4d335534045b74a820e141bc4406356.jpg@PC\" alt=\"同学居家常菜-美团\" height=\"795\" style=\"max-width:702px;color:#666666;font-family:&quot;font-size:14px;white-space:normal;background-color:#FFFFFF;\" />', '同学居家常菜', 'SH002', '2017-02-17 18:22:07', 'SP00016', '家常小炒', '9', '1', '/meal/upload/temp/984e23b8891721b33005690516f5063e77935.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('17', '0', '0', '80', '80', '<p>\r\n	<img src=\"http://p0.meituan.net/deal/1359f3a132b97d44066226a01b510517279067.jpg@PC\" alt=\"同学居家常菜-美团\" />\r\n</p>\r\n<p>\r\n	<img src=\"http://p1.meituan.net/deal/7a8505b2e5148811a6c9a95134192332275664.jpg@PC\" alt=\"同学居家常菜-美团\" />\r\n</p>', '家局红烧鱼', 'SH002', '2017-02-17 18:24:59', 'SP00018', '家常小炒', '9', '0', '/meal/upload/temp/4edc835cf519c4c074531abc83261ef476431.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('18', '0', '0', '120', '120', '<img src=\"http://p1.meituan.net/deal/18b48714ae9f4f2967843e572837a444125707.jpg@PC\" alt=\"都市阳光海鲜城-美团\" />', '都市阳光海鲜城', 'SH002', '2017-02-17 18:28:22', 'SP00019', '海鲜', '10', '0', '/meal/upload/temp/afa9321d09ccb6a0443cb037e567a43a90376.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('19', '0', '0', '12', '12', '<img src=\"http://p1.meituan.net/dealwatera/345f10007694abdc3ddfca8f6d2587dc101672.jpg@1052h_702w_2e_100Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"四川燃面馆-美团\" />', '四川燃面馆', 'SH002', '2017-02-17 18:31:53', 'SP00020', '面食', '11', '1', '/meal/upload/temp/21ae76e052882c29fe9e35a88fd897da56695.jpg', '0', '鲜美');
INSERT INTO `shangpin` VALUES ('20', '1', '0', '80', '80', '<p>\r\n	<img src=\"http://p0.meituan.net/dealwatera/ec8f4339a904cbbe64c3312f252e97cf125967.jpg@936h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"好食寨火锅-美团\" />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<img src=\"http://p1.meituan.net/dealwatera/9bdcf1b7eea5863b6655bea37931067b77288.jpg@936h_702w_2e_90Q%7Cwatermark=1&amp;&amp;p=4\" alt=\"好食寨火锅-美团\" />\r\n</p>', '好食寨火锅', 'SH006', '2017-02-17 20:16:34', 'SP00021', '火锅', '7', '0', '/meal/upload/temp/a2469baa8a9b9ddad87e2850fde4ab4a138193.jpg', '0', '鲜美');

-- ----------------------------
-- Table structure for `sitenav`
-- ----------------------------
DROP TABLE IF EXISTS `sitenav`;
CREATE TABLE `sitenav` (
  `id` int(11) NOT NULL auto_increment,
  `href` varchar(255) default NULL,
  `sindex` int(11) NOT NULL,
  `title` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of sitenav
-- ----------------------------
INSERT INTO `sitenav` VALUES ('1', '/e/index.jsp', '1', '首页');
INSERT INTO `sitenav` VALUES ('3', '/e/shopcart.jsp', '2', '购物车车');
INSERT INTO `sitenav` VALUES ('7', '/e/shanghulist.jsp', '1', '在线商户');
INSERT INTO `sitenav` VALUES ('8', '/e/shangpinlist.jsp?spcid=1', '1', '中餐');
INSERT INTO `sitenav` VALUES ('9', '/e/shangpinlist.jsp?spcid=5', '1', '西餐');
INSERT INTO `sitenav` VALUES ('10', '/e/shangpinlist.jsp?spcid=7', '1', '火锅');
INSERT INTO `sitenav` VALUES ('11', '/e/shangpinlist.jsp?spcid=8', '1', '自助餐');
INSERT INTO `sitenav` VALUES ('12', '/e/shangpinlist.jsp?spcid=9', '1', '家常小炒');
INSERT INTO `sitenav` VALUES ('13', '/e/shangpinlist.jsp?spcid=10', '1', '海鲜');
INSERT INTO `sitenav` VALUES ('14', '/e/shangpinlist.jsp?spcid=11', '1', '面食');
INSERT INTO `sitenav` VALUES ('15', '/e/sysconfiginfo.jsp?id=1', '7', '关于我们');
INSERT INTO `sitenav` VALUES ('16', '/e/lanmuinfo.jsp?lanmuid=1', '1', '美食资讯');

-- ----------------------------
-- Table structure for `spcategory`
-- ----------------------------
DROP TABLE IF EXISTS `spcategory`;
CREATE TABLE `spcategory` (
  `id` int(11) NOT NULL auto_increment,
  `jieshao` varchar(255) default NULL,
  `mingcheng` varchar(255) default NULL,
  `isleaf` int(11) default NULL,
  `parentid` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of spcategory
-- ----------------------------
INSERT INTO `spcategory` VALUES ('1', '中餐', '中餐', '1', '0');
INSERT INTO `spcategory` VALUES ('5', '<span style=\"white-space:nowrap;\">西餐</span>', '西餐', '1', '0');
INSERT INTO `spcategory` VALUES ('6', '蛋糕', '蛋糕', '1', '0');
INSERT INTO `spcategory` VALUES ('7', '火锅', '火锅', '1', '0');
INSERT INTO `spcategory` VALUES ('8', '<span style=\"white-space:nowrap;\">自助餐</span>', '自助餐', '1', '0');
INSERT INTO `spcategory` VALUES ('9', '<span style=\"white-space:nowrap;\">家常小炒</span>', '家常小炒', '1', '0');
INSERT INTO `spcategory` VALUES ('10', '<span style=\"white-space:nowrap;\">海鲜</span>', '海鲜', '1', '0');
INSERT INTO `spcategory` VALUES ('11', '<span style=\"white-space:nowrap;\">面食</span>', '面食', '1', '0');

-- ----------------------------
-- Table structure for `supplyor`
-- ----------------------------
DROP TABLE IF EXISTS `supplyor`;
CREATE TABLE `supplyor` (
  `id` int(11) NOT NULL auto_increment,
  `address` varchar(255) default NULL,
  `des` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `lxren` varchar(255) default NULL,
  `sname` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of supplyor
-- ----------------------------
INSERT INTO `supplyor` VALUES ('1', '223', '1233', 'chengling@126.com', '123', '周小姐', '天悦网花供养', '010-1234566');
INSERT INTO `supplyor` VALUES ('2', '223', '123333', '123@126.com', '0791-12345678', '周小姐', '锐利动力', '13958063743');

-- ----------------------------
-- Table structure for `sysconfig`
-- ----------------------------
DROP TABLE IF EXISTS `sysconfig`;
CREATE TABLE `sysconfig` (
  `id` int(11) NOT NULL auto_increment,
  `dcontent` text,
  `title` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of sysconfig
-- ----------------------------
INSERT INTO `sysconfig` VALUES ('1', '<span style=\"white-space:nowrap;\">关于我们12343434123433333333333333333</span>', '关于我们');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `createtime` datetime default NULL,
  `creator` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `logtimes` int(11) NOT NULL,
  `nickname` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `realname` varchar(255) default NULL,
  `rolename` varchar(255) default NULL,
  `sex` varchar(255) default NULL,
  `tel` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  `xiangpian` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '2017-02-17 17:13:01', 'admin', '67@qq.com', '8', 'admin', 'admin', 'daowen', 'admin', '男', '1361782334', 'admin', '/waimai/upload/temp/u=2332039348,1866544533&fm=23&gp=0.jpg');

-- ----------------------------
-- Table structure for `xinxi`
-- ----------------------------
DROP TABLE IF EXISTS `xinxi`;
CREATE TABLE `xinxi` (
  `id` int(11) NOT NULL auto_increment,
  `againstcount` int(11) NOT NULL,
  `agreecount` int(11) NOT NULL,
  `clickcount` int(11) NOT NULL,
  `dcontent` varchar(255) default NULL,
  `hot` int(11) NOT NULL,
  `laiyuan` varchar(255) default NULL,
  `lanmuid` int(11) NOT NULL,
  `lanmuming` varchar(255) default NULL,
  `pubren` varchar(255) default NULL,
  `pubtime` datetime default NULL,
  `title` varchar(255) default NULL,
  `tuijian` int(11) NOT NULL,
  `tupian2` varchar(255) default NULL,
  `zhaiyao` varchar(255) default NULL,
  `zuixin` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=gb2312;

-- ----------------------------
-- Records of xinxi
-- ----------------------------
INSERT INTO `xinxi` VALUES ('1', '0', '0', '2', '34343434343434', '0', null, '1', '美食资讯', '', '2017-03-17 13:25:31', '1233312', '0', '/meal/upload/nopic.jpg', '', '0');
