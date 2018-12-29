/*
Navicat MySQL Data Transfer

Source Server         : xiejunpeng
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : xiejunpeng

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-12-29 16:07:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cars
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `﻿﻿cid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dianming` varchar(255) DEFAULT NULL,
  `urlimg1` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `yangshi` varchar(255) DEFAULT NULL,
  `danjia` varchar(255) DEFAULT NULL,
  `shuliang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿﻿cid`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cars
-- ----------------------------
INSERT INTO `cars` VALUES ('143', '贝壳元素', '../img/fdjimg/g21.jpg', '今日特卖 贝壳元素秋装男童女童休闲运动服条纹套装tz3225', '黑色（春秋款）, 100', '112', '5');

-- ----------------------------
-- Table structure for feilist
-- ----------------------------
DROP TABLE IF EXISTS `feilist`;
CREATE TABLE `feilist` (
  `﻿idx` varchar(255) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `USD` varchar(255) DEFAULT NULL,
  `SaveUSD` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of feilist
-- ----------------------------
INSERT INTO `feilist` VALUES ('1', '../images/list.png', '201', '79', '2000/1/1');
INSERT INTO `feilist` VALUES ('2', '../images/list2.png', '202', '80', '2000/1/2');
INSERT INTO `feilist` VALUES ('3', '../images/list3.png', '203', '81', '2000/1/3');
INSERT INTO `feilist` VALUES ('4', '../images/list4.png', '204', '82', '2000/1/4');
INSERT INTO `feilist` VALUES ('5', '../images/list5.png', '205', '83', '2000/1/5');
INSERT INTO `feilist` VALUES ('6', '../images/list6.png', '206', '84', '2000/1/6');
INSERT INTO `feilist` VALUES ('7', '../images/list7.png', '207', '85', '2000/1/7');
INSERT INTO `feilist` VALUES ('8', '../images/list8.png', '208', '86', '2000/1/8');
INSERT INTO `feilist` VALUES ('9', '../images/list9.png', '209', '87', '2000/1/9');
INSERT INTO `feilist` VALUES ('10', '../images/list10.png', '210', '88', '2000/1/10');
INSERT INTO `feilist` VALUES ('11', '../images/list11.png', '211', '89', '2000/1/11');
INSERT INTO `feilist` VALUES ('12', '../images/list12.png', '212', '90', '2000/1/12');
INSERT INTO `feilist` VALUES ('13', '../images/list13.png', '213', '91', '2000/1/13');
INSERT INTO `feilist` VALUES ('14', '../images/list14.png', '214', '92', '2000/1/14');
INSERT INTO `feilist` VALUES ('15', '../images/list15.png', '215', '93', '2000/1/15');
INSERT INTO `feilist` VALUES ('16', '../images/list16.png', '216', '94', '2000/1/16');
INSERT INTO `feilist` VALUES ('17', '../images/list17.png', '217', '95', '2000/1/17');
INSERT INTO `feilist` VALUES ('18', '../images/list18.png', '218', '96', '2000/1/18');
INSERT INTO `feilist` VALUES ('19', '../images/list19.png', '219', '97', '2000/1/19');
INSERT INTO `feilist` VALUES ('20', '../images/list20.png', '220', '98', '2000/1/20');

-- ----------------------------
-- Table structure for goodlist
-- ----------------------------
DROP TABLE IF EXISTS `goodlist`;
CREATE TABLE `goodlist` (
  `id` varchar(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodlist
-- ----------------------------
INSERT INTO `goodlist` VALUES ('1', 'node7', '12', 'img/1.jpg');
INSERT INTO `goodlist` VALUES ('2', '苹果2', '34', 'img/2.jpg');
INSERT INTO `goodlist` VALUES ('3', '苹果3', '56', 'img/3.jpg');
INSERT INTO `goodlist` VALUES ('4', '苹果4', '78', 'img/4.jpg');
INSERT INTO `goodlist` VALUES ('5', '苹果5', '100', 'img/5.jpg');
INSERT INTO `goodlist` VALUES ('6', '苹果6', '122', 'img/6.jpg');
INSERT INTO `goodlist` VALUES ('21', '沙发', '999', null);
INSERT INTO `goodlist` VALUES ('8', '苹果8', '166', 'img/8.jpg');
INSERT INTO `goodlist` VALUES ('9', '苹果9', '188', 'img/9.jpg');
INSERT INTO `goodlist` VALUES ('10', '苹果10', '210', 'img/10.jpg');
INSERT INTO `goodlist` VALUES ('11', '苹果11', '232', 'img/11.jpg');
INSERT INTO `goodlist` VALUES ('12', '苹果12', '254', 'img/12.jpg');
INSERT INTO `goodlist` VALUES ('13', '苹果13', '276', 'img/13.jpg');
INSERT INTO `goodlist` VALUES ('14', '苹果14', '298', 'img/14.jpg');
INSERT INTO `goodlist` VALUES ('15', '苹果15', '320', 'img/15.jpg');
INSERT INTO `goodlist` VALUES ('16', '苹果16', '342', 'img/16.jpg');
INSERT INTO `goodlist` VALUES ('17', '苹果17', '364', 'img/17.jpg');
INSERT INTO `goodlist` VALUES ('18', '苹果18', '386', 'img/18.jpg');
INSERT INTO `goodlist` VALUES ('19', '苹果19', '408', 'img/19.jpg');
INSERT INTO `goodlist` VALUES ('20', '苹果20', '430', 'img/20.jpg');

-- ----------------------------
-- Table structure for goodsxuanran
-- ----------------------------
DROP TABLE IF EXISTS `goodsxuanran`;
CREATE TABLE `goodsxuanran` (
  `﻿id` int(11) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `title1` varchar(255) DEFAULT NULL,
  `title2` varchar(255) DEFAULT NULL,
  `priceint` varchar(255) DEFAULT NULL,
  `gid` varchar(255) DEFAULT NULL,
  `dianming` varchar(255) DEFAULT NULL,
  `yangshi` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodsxuanran
-- ----------------------------
INSERT INTO `goodsxuanran` VALUES ('1', '../img/fdjimg/g11.jpg', '今日特卖 贝壳元素秋装男童女童休闲运动服条纹套装tz3225', '面料柔软舒适，做工精致，凸显品质，走线平整，不易变形，宝宝喜欢，妈妈放心', '19', 'g1', '笛莎', '混色, 110');
INSERT INTO `goodsxuanran` VALUES ('2', '../img/fdjimg/g21.jpg', '今日特卖 贝壳元素秋装男童女童休闲运动服条纹套装tz3225', '面料柔软舒适，做工精致，凸显品质，走线平整，不易变形，宝宝喜欢，妈妈放心', '112', 'g2', '贝壳元素', '黑色（春秋款）, 100');
INSERT INTO `goodsxuanran` VALUES ('3', '../img/fdjimg/g22.jpg', '', '', '', 'g2', '', '');
INSERT INTO `goodsxuanran` VALUES ('4', '../img/fdjimg/g23.jpg', '', '', '', 'g2', '', '');
INSERT INTO `goodsxuanran` VALUES ('5', '../img/fdjimg/g24.jpg', '', '', '', 'g2', '', '');
INSERT INTO `goodsxuanran` VALUES ('6', '../img/fdjimg/g25.jpg', '', '', '', 'g2', '', '');
INSERT INTO `goodsxuanran` VALUES ('7', '../img/fdjimg/g26.jpg', '', '', '', 'g2', '', '');
INSERT INTO `goodsxuanran` VALUES ('8', '../img/fdjimg/g27.jpg', '', '', '', 'g2', '', '');
INSERT INTO `goodsxuanran` VALUES ('9', '../img/fdjimg/g28.jpg', '', '', '', 'g2', '', '');
INSERT INTO `goodsxuanran` VALUES ('10', '../img/fdjimg/g31.jpg', '今日特卖 贝壳元素 秋装男童女童家居服内衣套装', '面料柔软舒适，做工精致，凸显品质，走线平整，不易变形，宝宝喜欢，妈妈放心', '68', 'g3', '贝壳元素品牌特惠', '雨伞恐龙, 110');
INSERT INTO `goodsxuanran` VALUES ('11', '../img/fdjimg/g32.jpg', '', '', '', 'g3', '', '');
INSERT INTO `goodsxuanran` VALUES ('12', '../img/fdjimg/g33.jpg', '', '', '', 'g3', '', '');
INSERT INTO `goodsxuanran` VALUES ('13', '../img/fdjimg/g34.jpg', '', '', '', 'g3', '', '');

-- ----------------------------
-- Table structure for index
-- ----------------------------
DROP TABLE IF EXISTS `index`;
CREATE TABLE `index` (
  `id` int(11) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `priceint` varchar(255) DEFAULT NULL,
  `pricefloat` varchar(255) DEFAULT NULL,
  `yuanjia` varchar(255) DEFAULT NULL,
  `dazhe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index
-- ----------------------------
INSERT INTO `index` VALUES ('1', 'img/shouyeimg/sy1.jpg', '【券后15.9元】【好吃点整箱】好吃点香脆饼干3口味可选800g', '17', '.90', '￥39.90', '4.5折');
INSERT INTO `index` VALUES ('2', 'img/shouyeimg/sy2.jpg', '冬季骑行毛线针织帽加绒加厚', '19', '.80', '￥78', '6.2折');
INSERT INTO `index` VALUES ('3', 'img/shouyeimg/sy3.jpg', '18件礼盒装公主超仙可爱发夹发圈', '9', '.90', '￥16', '4.6折');
INSERT INTO `index` VALUES ('4', 'img/shouyeimg/sy4.jpg', '昭鹤 两套装 儿童彩棉秋衣秋裤', '40', '.90', '￥80', '6.3折');
INSERT INTO `index` VALUES ('5', 'img/shouyeimg/sy5.jpg', '贝亲自然实感宽口径硅胶奶嘴盒装', '80', '.90', '￥100', '4.7折');
INSERT INTO `index` VALUES ('6', 'img/shouyeimg/sy6.jpg', '宝宝高腰套装优质纯棉秋衣秋裤', '18', '.90', '￥30', '6.4折');
INSERT INTO `index` VALUES ('7', 'img/shouyeimg/sy7.jpg', '俞兆林3条装 高腰暖宫收腹内裤', '15', '.90', '￥20', '4.8折');
INSERT INTO `index` VALUES ('8', 'img/shouyeimg/sy8.jpg', '雅贝娜精品高枕成人标准枕芯', '19', '.90', '￥50', '6.5折');
INSERT INTO `index` VALUES ('9', 'img/shouyeimg/sy9.jpg', '2条装春秋连裤袜丝袜打底裤', '44', '.90', '￥80', '4.9折');
INSERT INTO `index` VALUES ('10', 'img/shouyeimg/sy10.jpg', '南极人双面纯棉睡衣女套装冬保暖', '55', '.90', '￥110', '6.6折');
INSERT INTO `index` VALUES ('11', 'img/shouyeimg/sy11.jpg', '南极人纯棉睡衣秋冬保暖套装男', '66', '.90', '￥140', '4.10折');
INSERT INTO `index` VALUES ('12', 'img/shouyeimg/sy12.jpg', '儿童加绒保暖雪地靴马丁靴棉靴', '11', '.90', '￥170', '6.7折');
INSERT INTO `index` VALUES ('13', 'img/shouyeimg/sy13.jpg', '序言有机棉秋冬款分腿睡袋', '23', '.90', '￥200', '4.11折');
INSERT INTO `index` VALUES ('14', 'img/shouyeimg/sy14.jpg', '冬季加绒加厚男女宝宝套头毛衣潮', '24', '.90', '￥230', '6.8折');
INSERT INTO `index` VALUES ('15', 'img/shouyeimg/sy15.jpg', '2/1支草莓柠檬孕妇可用润唇膏', '10', '.90', '￥260', '4.12折');
INSERT INTO `index` VALUES ('16', 'img/shouyeimg/sy16.jpg', '粉笔盒子中小童加绒加厚外套', '80', '.90', '￥290', '6.9折');
INSERT INTO `index` VALUES ('17', 'img/shouyeimg/sy17.jpg', '打底衫女士长袖t恤修身加绒加厚', '99', '.90', '￥320', '4.13折');
INSERT INTO `index` VALUES ('18', 'img/shouyeimg/sy18.jpg', '秋冬季儿童法兰绒保暖睡衣', '77', '.90', '￥350', '6.10折');
INSERT INTO `index` VALUES ('19', 'img/shouyeimg/sy19.jpg', '大容量儿童保温壶', '66', '.90', '￥380', '4.14折');
INSERT INTO `index` VALUES ('20', 'img/shouyeimg/sy20.jpg', '宝宝高腰护肚裤套装男童秋衣秋裤', '55', '.90', '￥410', '6.11折');
INSERT INTO `index` VALUES ('21', 'img/shouyeimg/sy21.jpg', '小颗粒海藻面膜 免洗收缩毛孔', '44', '.90', '￥440', '4.15折');
INSERT INTO `index` VALUES ('22', 'img/shouyeimg/sy22.jpg', '婉枫柳 加绒加厚打底裤', '33', '.90', '￥470', '6.12折');
INSERT INTO `index` VALUES ('23', 'img/shouyeimg/sy23.jpg', '20张不重复儿童立体粘贴画', '22', '.90', '￥500', '4.16折');
INSERT INTO `index` VALUES ('24', 'img/shouyeimg/sy24.jpg', '6本装儿童凹槽练字帖初学练字', '11', '.90', '￥530', '6.13折');
INSERT INTO `index` VALUES ('25', 'img/shouyeimg/sy25.jpg', '两条蜂巢暖宫收腹按摩塑身内裤', '33', '.90', '￥560', '4.17折');
INSERT INTO `index` VALUES ('26', 'img/shouyeimg/sy26.jpg', '浪莎正品 加绒保暖牛仔长裤', '99', '.90', '￥590', '6.14折');
INSERT INTO `index` VALUES ('27', 'img/shouyeimg/sy27.jpg', '南极人男童内裤4条装', '100', '.90', '￥620', '4.18折');
INSERT INTO `index` VALUES ('28', 'img/shouyeimg/sy28.jpg', '【买三送一买五送二】风信子水仙多种可选', '12', '.90', '￥650', '6.15折');
INSERT INTO `index` VALUES ('29', 'img/shouyeimg/sy29.jpg', '南极人纯棉保暖睡衣女套装', '34', '.90', '￥680', '4.19折');
INSERT INTO `index` VALUES ('30', 'img/shouyeimg/sy30.jpg', '强达4条装A类纯棉6层纱布方巾', '56', '.90', '￥710', '6.16折');
INSERT INTO `index` VALUES ('31', 'img/shouyeimg/sy31.jpg', '加厚夹棉保暖内衣套装保暖衣', '78', '.90', '￥740', '4.20折');
INSERT INTO `index` VALUES ('32', 'img/shouyeimg/sy32.jpg', '5双秋冬加厚加绒袜子保暖冬厚袜', '100', '.90', '￥770', '6.17折');
INSERT INTO `index` VALUES ('33', 'img/shouyeimg/sy33.jpg', '秋冬加绒加厚修身显瘦打底裤', '122', '.90', '￥800', '4.21折');
INSERT INTO `index` VALUES ('34', 'img/shouyeimg/sy34.jpg', '2套减5元 宝宝加绒保暖衣套装', '144', '.90', '￥830', '6.18折');
INSERT INTO `index` VALUES ('35', 'img/shouyeimg/sy35.jpg', '南极人加绒保暖打底裤', '166', '.90', '￥860', '4.22折');
INSERT INTO `index` VALUES ('36', 'img/shouyeimg/sy36.jpg', '纯棉儿童内衣套装中大童秋衣秋裤', '188', '.90', '￥890', '6.19折');
INSERT INTO `index` VALUES ('37', 'img/shouyeimg/sy37.jpg', '婴儿连体衣秋冬保暖长袖爬服', '210', '.90', '￥920', '4.23折');
INSERT INTO `index` VALUES ('38', 'img/shouyeimg/sy38.jpg', '秋冬时尚印花儿童保暖棉服外套', '232', '.90', '￥950', '6.20折');
INSERT INTO `index` VALUES ('39', 'img/shouyeimg/sy39.jpg', '销量过万 爆款纯棉加厚卡通套装', '254', '.90', '￥980', '4.24折');
INSERT INTO `index` VALUES ('40', 'img/shouyeimg/sy40.jpg', '北极绒加绒加厚保暖内衣套装', '276', '.90', '￥1,010', '6.21折');
INSERT INTO `index` VALUES ('41', 'img/shouyeimg/sy41.jpg', '宝宝加绒加厚保暖内有调整', '298', '.90', '￥1,040', '4.25折');
INSERT INTO `index` VALUES ('42', 'img/shouyeimg/sy42.jpg', '南极人纯棉冬季保暖睡衣套装情侣', '320', '.90', '￥1,070', '6.22折');

-- ----------------------------
-- Table structure for index2
-- ----------------------------
DROP TABLE IF EXISTS `index2`;
CREATE TABLE `index2` (
  `﻿id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `priceint` decimal(25,0) unsigned DEFAULT NULL,
  `pricefloat` decimal(25,0) unsigned DEFAULT NULL,
  `yuanjia` decimal(25,0) unsigned DEFAULT NULL,
  `dazhe` decimal(25,1) unsigned DEFAULT NULL,
  PRIMARY KEY (`﻿id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of index2
-- ----------------------------
INSERT INTO `index2` VALUES ('1', 'img/lanjiazai/ljz01.jpg', '淘喜 男女童纯棉长袖高领T恤六色可选', '22', '90', '118', '2.4');
INSERT INTO `index2` VALUES ('2', 'img/lanjiazai/ljz02.jpg', '道琪安童鞋女童靴子2018新款秋冬季儿..', '23', '90', '119', '2.4');
INSERT INTO `index2` VALUES ('3', 'img/lanjiazai/ljz03.jpg', '巴布豆/BOBDOG儿童童鞋2018冬季新款..', '24', '90', '120', '2.4');
INSERT INTO `index2` VALUES ('4', 'img/lanjiazai/ljz04.jpg', '【90%白鸭绒】儿童羽绒服中长款加厚..', '25', '90', '121', '2.4');
INSERT INTO `index2` VALUES ('5', 'img/lanjiazai/ljz05.jpg', '芭贝猫秋冬新款加绒加厚儿童雪地靴防..', '26', '90', '122', '2.4');
INSERT INTO `index2` VALUES ('6', 'img/lanjiazai/ljz06.jpg', '【两条装】宝宝罩衣超柔防水儿童反穿..', '27', '90', '123', '2.4');
INSERT INTO `index2` VALUES ('7', 'img/lanjiazai/ljz07.jpg', 'babyfeet软底宝宝短靴保暖冬靴加绒学..', '28', '90', '124', '2.4');
INSERT INTO `index2` VALUES ('8', 'img/lanjiazai/ljz08.jpg', '小牛人加绒加厚软底宝宝棉鞋学步鞋机..', '29', '90', '125', '2.4');
INSERT INTO `index2` VALUES ('9', 'img/lanjiazai/ljz09.jpg', '回力童鞋男童运动鞋新款儿童棉鞋保暖..', '30', '90', '126', '2.4');
INSERT INTO `index2` VALUES ('10', 'img/lanjiazai/ljz10.jpg', '亲亲泥巴宝宝机能鞋2018冬季新款儿童..', '31', '90', '127', '2.4');
INSERT INTO `index2` VALUES ('11', 'img/lanjiazai/ljz11.jpg', '2018新款女童打底裤春秋冬季儿童一体..', '32', '90', '128', '2.4');
INSERT INTO `index2` VALUES ('12', 'img/lanjiazai/ljz12.jpg', '两套4件 乖的模样 秋冬款纯棉秋衣秋..', '33', '90', '129', '2.4');
INSERT INTO `index2` VALUES ('13', 'img/lanjiazai/ljz13.jpg', '(超值4双儿童袖套)男女宝宝袖套儿童..', '34', '90', '130', '2.4');
INSERT INTO `index2` VALUES ('14', 'img/lanjiazai/ljz14.jpg', '五双装儿童袜子婴儿袜子春秋秋冬棉袜..', '35', '90', '131', '2.4');
INSERT INTO `index2` VALUES ('15', 'img/lanjiazai/ljz15.jpg', '萌祖驾到女童丝绒棉衣2018新款韩版儿..', '36', '90', '132', '2.4');
INSERT INTO `index2` VALUES ('16', 'img/lanjiazai/ljz16.jpg', '巴布豆/BOBDOG儿童童鞋2018冬季男童..', '37', '90', '133', '2.4');
INSERT INTO `index2` VALUES ('17', 'img/lanjiazai/ljz17.jpg', '淘喜 男女童纯棉长袖高领T恤六色可选', '38', '90', '134', '2.4');
INSERT INTO `index2` VALUES ('18', 'img/lanjiazai/ljz18.jpg', '道琪安童鞋女童靴子2019新款秋冬季儿..', '39', '90', '135', '2.4');
INSERT INTO `index2` VALUES ('19', 'img/lanjiazai/ljz19.jpg', '巴布豆/BOBDOG儿童童鞋2019冬季新款..', '40', '90', '136', '2.4');
INSERT INTO `index2` VALUES ('20', 'img/lanjiazai/ljz20.jpg', '【91%白鸭绒】儿童羽绒服中长款加厚..', '41', '90', '137', '2.4');
INSERT INTO `index2` VALUES ('21', 'img/lanjiazai/ljz21.jpg', '芭贝猫秋冬新款加绒加厚儿童雪地靴防..', '42', '90', '138', '2.4');
INSERT INTO `index2` VALUES ('22', 'img/lanjiazai/ljz22.jpg', '【两条装】宝宝罩衣超柔防水儿童反穿..', '43', '90', '139', '2.4');
INSERT INTO `index2` VALUES ('23', 'img/lanjiazai/ljz23.jpg', 'babyfeet软底宝宝短靴保暖冬靴加绒学..', '44', '90', '140', '2.4');
INSERT INTO `index2` VALUES ('24', 'img/lanjiazai/ljz24.jpg', '小牛人加绒加厚软底宝宝棉鞋学步鞋机..', '45', '90', '141', '2.4');
INSERT INTO `index2` VALUES ('25', 'img/lanjiazai/ljz25.jpg', '回力童鞋男童运动鞋新款儿童棉鞋保暖..', '46', '90', '142', '2.4');
INSERT INTO `index2` VALUES ('26', 'img/lanjiazai/ljz26.jpg', '亲亲泥巴宝宝机能鞋2019冬季新款儿童..', '47', '90', '143', '2.4');
INSERT INTO `index2` VALUES ('27', 'img/lanjiazai/ljz27.jpg', '2019新款女童打底裤春秋冬季儿童一体..', '48', '90', '144', '2.4');
INSERT INTO `index2` VALUES ('28', 'img/lanjiazai/ljz28.jpg', '两套5件 乖的模样 秋冬款纯棉秋衣秋..', '49', '90', '145', '2.4');
INSERT INTO `index2` VALUES ('29', 'img/lanjiazai/ljz29.jpg', '(超值5双儿童袖套)男女宝宝袖套儿童..', '50', '90', '146', '2.4');
INSERT INTO `index2` VALUES ('30', 'img/lanjiazai/ljz30.jpg', '五双装儿童袜子婴儿袜子春秋秋冬棉袜..', '51', '90', '147', '2.4');
INSERT INTO `index2` VALUES ('31', 'img/lanjiazai/ljz31.jpg', '五双装儿童袜子婴儿袜子春秋秋冬棉袜..', '52', '90', '148', '2.4');
INSERT INTO `index2` VALUES ('32', 'img/lanjiazai/ljz32.jpg', '五双装儿童袜子婴儿袜子春秋秋冬棉袜..', '53', '90', '149', '2.4');

-- ----------------------------
-- Table structure for list
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `priceint` decimal(25,0) unsigned DEFAULT NULL,
  `pricefloat` varchar(255) DEFAULT NULL,
  `xiaoliang` varchar(255) DEFAULT NULL,
  `gid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('1', '../img/listimg/l1.jpg', '【笛莎童装女童】福袋！清仓 随机发限购两件春夏秋冬款，福袋商品不退不换介意慎拍哦', '99', '.00', '22', 'g1');
INSERT INTO `list` VALUES ('2', '../img/listimg/l2.jpg', '贝壳元素秋装男童女童休闲运动服条纹套装tz3225', '112', '.00', '10', 'g2');
INSERT INTO `list` VALUES ('3', '../img/listimg/l3.jpg', 'davebella戴维贝拉2018秋季新款男童套装 宝宝休闲两件套DBA7795', '149', '.00', '5', 'g3');
INSERT INTO `list` VALUES ('4', '../img/listimg/l4.jpg', 'davebella戴维贝拉春秋季新品男女童内衣套装 宝宝儿童内衣裤DB4651', '99', '.00', '7', 'g4');
INSERT INTO `list` VALUES ('5', '../img/listimg/l5.jpg', '巴拉巴拉童装女童套装秋冬小童宝宝两件套儿童卫衣裤子潮', '309', '.00', '6', 'g5');
INSERT INTO `list` VALUES ('6', '../img/listimg/l6.jpg', '贝壳元素加绒加厚冬装男女童保暖内衣套装tz1105', '93', '.00', '788', 'g6');
INSERT INTO `list` VALUES ('7', '../img/listimg/l7.jpg', '贝壳元素宝宝运动套装2018秋装新款男童童装儿童外套长裤两件套tz3392', '65', '.00', '77', 'g7');
INSERT INTO `list` VALUES ('8', '../img/listimg/l8.jpg', 'davebella戴维贝拉2018秋装新款男女童内衣套装 宝宝家居服DB9613', '99', '.00', '44', 'g8');
INSERT INTO `list` VALUES ('9', '../img/listimg/l9.jpg', '巴拉巴拉童装男童套装小童宝宝秋冬儿童加绒保暖两件套潮', '249', '.00', '66', 'g9');
INSERT INTO `list` VALUES ('10', '../img/listimg/l10.jpg', '巴拉巴拉儿童套装男秋冬童装宝宝小童男两件套加绒连帽潮', '299', '.00', '33', 'g10');
INSERT INTO `list` VALUES ('11', '../img/listimg/l11.jpg', '巴拉巴拉童装男童套装中大童儿童两件套春秋学院风卫衣潮', '299', '.00', '22', 'g11');
INSERT INTO `list` VALUES ('12', '../img/listimg/l12.jpg', 'davebella戴维贝拉2018秋装新款男女童内衣套装 宝宝居家服DB9620', '99', '.00', '1000', 'g12');
INSERT INTO `list` VALUES ('13', '../img/listimg/l13.jpg', '巴拉巴拉儿童套装男童秋冬中大童加绒连帽运动衫两件套厚', '359', '.00', '444', 'g13');
INSERT INTO `list` VALUES ('14', '../img/listimg/l14.jpg', '巴拉巴拉童装女童套装小童宝宝秋冬儿童加绒保暖两件套女', '249', '.00', '666', 'g14');
INSERT INTO `list` VALUES ('15', '../img/listimg/l15.jpg', '贝贝怡男女童套装纯棉春秋新款婴儿长袖衣服宝宝秋衣秋裤173T089', '59', '.00', '333', 'g15');
INSERT INTO `list` VALUES ('16', '../img/listimg/l16.jpg', '巴拉巴拉女童套装秋冬小童宝宝两件套儿童卫衣裤子加绒厚', '269', '.00', '22', 'g16');
INSERT INTO `list` VALUES ('17', '../img/listimg/l17.jpg', '马克珍妮冬装男童棉衣套装 儿童加绒卫衣套装 婴儿棉衣加厚17856B', '179', '.00', '555', 'g17');
INSERT INTO `list` VALUES ('18', '../img/listimg/l18.jpg', '巴拉巴拉童装男童套装儿童两件套小童宝宝春秋卫衣裤子男', '269', '.00', '999', 'g18');
INSERT INTO `list` VALUES ('19', '../img/listimg/l19.jpg', '贝贝怡女童套装冬新款加绒保暖宝宝运动装婴儿两件套173T085', '129', '.00', '88888', 'g19');
INSERT INTO `list` VALUES ('20', '../img/listimg/l20.jpg', '【独享款】巴拉巴拉儿童套装男秋冬童装宝宝小童男两件套加绒厚款潮', '319', '.00', '6666', 'g20');
INSERT INTO `list` VALUES ('21', '../img/listimg/l21.jpg', 'davebella戴维贝拉春秋新款童装男女童内衣套装 宝宝居家服套装DB6039', '109', '.00', '3', 'g21');
INSERT INTO `list` VALUES ('22', '../img/listimg/l22.jpg', '婴姿坊男童新款休闲时尚长袖圆领肩开扣童装两件套', '99', '.00', '7', 'g22');
INSERT INTO `list` VALUES ('23', '../img/listimg/l23.jpg', 'marcjanie马克珍妮秋装童装女童空气层内衣套装71053', '119', '.00', '48', 'g23');
INSERT INTO `list` VALUES ('24', '../img/listimg/l24.jpg', '贝贝怡童装男童秋装新款加绒保暖婴儿套装宝宝两件套173T082', '99', '.00', '38', 'g24');
INSERT INTO `list` VALUES ('25', '../img/listimg/l25.jpg', '【加绒】davebella戴维贝拉2018秋冬款男女童宝宝内衣套装DBA8814', '159', '.00', '60', 'g25');
INSERT INTO `list` VALUES ('26', '../img/listimg/l26.jpg', '婴姿坊品牌童装男童绅士三件套', '119', '.00', '55', 'g26');
INSERT INTO `list` VALUES ('27', '../img/listimg/l27.jpg', '【加绒】戴维贝拉2018秋冬季女童套装 宝宝休闲两件套DBZ8067', '159', '.00', '42', 'g27');
INSERT INTO `list` VALUES ('28', '../img/listimg/l28.jpg', 'davebella戴维贝拉2018秋冬男女童内衣套装宝宝家居服两件套DB9312', '99', '.00', '46', 'g28');
INSERT INTO `list` VALUES ('29', '../img/listimg/l29.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '299', '.00', '77', 'g29');
INSERT INTO `list` VALUES ('30', '../img/listimg/l30.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '109', '.00', '99', 'g30');
INSERT INTO `list` VALUES ('31', '../img/listimg/l31.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '99', '.00', '33', 'g31');
INSERT INTO `list` VALUES ('32', '../img/listimg/l32.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '179', '.00', '80', 'g32');
INSERT INTO `list` VALUES ('33', '../img/listimg/l33.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '299', '.00', '200', 'g33');
INSERT INTO `list` VALUES ('34', '../img/listimg/l34.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '89', '.00', '400', 'g34');
INSERT INTO `list` VALUES ('35', '../img/listimg/l35.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '129', '.00', '50', 'g35');
INSERT INTO `list` VALUES ('36', '../img/listimg/l36.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '169', '.00', '30', 'g36');
INSERT INTO `list` VALUES ('37', '../img/listimg/l37.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '99', '.00', '67', 'g37');
INSERT INTO `list` VALUES ('38', '../img/listimg/l38.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '129', '.00', '70', 'g38');
INSERT INTO `list` VALUES ('39', '../img/listimg/l39.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '98', '.00', '77', 'g39');
INSERT INTO `list` VALUES ('40', '../img/listimg/l40.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '199', '.00', '55', 'g40');
INSERT INTO `list` VALUES ('41', '../img/listimg/l41.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '109', '.00', '44', 'g41');
INSERT INTO `list` VALUES ('42', '../img/listimg/l42.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '179', '.00', '88', 'g42');
INSERT INTO `list` VALUES ('43', '../img/listimg/l43.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '359', '.00', '44', 'g43');
INSERT INTO `list` VALUES ('44', '../img/listimg/l44.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '89', '.00', '63', 'g44');
INSERT INTO `list` VALUES ('45', '../img/listimg/l45.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '109', '.00', '45', 'g45');
INSERT INTO `list` VALUES ('46', '../img/listimg/l46.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '319', '.00', '65', 'g46');
INSERT INTO `list` VALUES ('47', '../img/listimg/l47.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '99', '.00', '35', 'g47');
INSERT INTO `list` VALUES ('48', '../img/listimg/l48.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '159', '.00', '15', 'g48');
INSERT INTO `list` VALUES ('49', '../img/listimg/l49.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '125', '.00', '5', 'g49');
INSERT INTO `list` VALUES ('50', '../img/listimg/l50.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '109', '.00', '2', 'g50');
INSERT INTO `list` VALUES ('51', '../img/listimg/l51.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '49', '.00', '4444', 'g51');
INSERT INTO `list` VALUES ('52', '../img/listimg/l52.jpg', '巴拉巴拉童装女童套装春秋儿童两件套小童宝宝衣服裤子女', '179', '.00', '2222', 'g52');

-- ----------------------------
-- Table structure for list2
-- ----------------------------
DROP TABLE IF EXISTS `list2`;
CREATE TABLE `list2` (
  `﻿id` int(11) NOT NULL AUTO_INCREMENT,
  `imgurl` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `priceint` int(255) DEFAULT NULL,
  `xiaoliang` varchar(255) DEFAULT NULL,
  `idx` varchar(255) DEFAULT NULL,
  `dazhe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`﻿id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list2
-- ----------------------------
INSERT INTO `list2` VALUES ('1', '../img/listimg/l1.jpg', '淘喜 男女童纯棉长袖高领T恤六色可选', '22', '1', '1', '2.4');
INSERT INTO `list2` VALUES ('2', '../img/listimg/l2.jpg', '道琪安童鞋女童靴子2018新款秋冬季儿..', '23', '2', '2', '3.4');
INSERT INTO `list2` VALUES ('3', '../img/listimg/l3.jpg', '巴布豆/BOBDOG儿童童鞋2018冬季新款..', '24', '3', '3', '4.4');
INSERT INTO `list2` VALUES ('4', '../img/listimg/l4.jpg', '【90%白鸭绒】儿童羽绒服中长款加厚..', '25', '4', '4', '2.4');
INSERT INTO `list2` VALUES ('5', '../img/listimg/l5.jpg', '芭贝猫秋冬新款加绒加厚儿童雪地靴防..', '26', '5', '5', '2.4');
INSERT INTO `list2` VALUES ('6', '../img/listimg/l6.jpg', '【两条装】宝宝罩衣超柔防水儿童反穿..', '27', '6', '6', '2.4');
INSERT INTO `list2` VALUES ('7', '../img/listimg/l7.jpg', 'babyfeet软底宝宝短靴保暖冬靴加绒学..', '28', '7', '7', '2.4');
INSERT INTO `list2` VALUES ('8', '../img/listimg/l8.jpg', '小牛人加绒加厚软底宝宝棉鞋学步鞋机..', '29', '8', '8', '2.4');
INSERT INTO `list2` VALUES ('9', '../img/listimg/l9.jpg', '回力童鞋男童运动鞋新款儿童棉鞋保暖..', '30', '9', '9', '2.4');
INSERT INTO `list2` VALUES ('10', '../img/listimg/l10.jpg', '亲亲泥巴宝宝机能鞋2018冬季新款儿童..', '31', '10', '10', '2.4');
INSERT INTO `list2` VALUES ('11', '../img/listimg/l11.jpg', '2018新款女童打底裤春秋冬季儿童一体..', '32', '11', '11', '2.4');
INSERT INTO `list2` VALUES ('12', '../img/listimg/l12.jpg', '两套4件 乖的模样 秋冬款纯棉秋衣秋..', '33', '12', '12', '2.4');
INSERT INTO `list2` VALUES ('13', '../img/listimg/l13.jpg', '(超值4双儿童袖套)男女宝宝袖套儿童..', '34', '13', '13', '2.4');
INSERT INTO `list2` VALUES ('14', '../img/listimg/l14.jpg', '五双装儿童袜子婴儿袜子春秋秋冬棉袜..', '35', '14', '14', '2.4');
INSERT INTO `list2` VALUES ('15', '../img/listimg/l15.jpg', '萌祖驾到女童丝绒棉衣2018新款韩版儿..', '36', '15', '15', '2.4');
INSERT INTO `list2` VALUES ('16', '../img/listimg/l16.jpg', '巴布豆/BOBDOG儿童童鞋2018冬季男童..', '37', '16', '16', '2.4');
INSERT INTO `list2` VALUES ('17', '../img/listimg/l17.jpg', '淘喜 男女童纯棉长袖高领T恤六色可选', '38', '17', '17', '2.4');
INSERT INTO `list2` VALUES ('18', '../img/listimg/l18.jpg', '道琪安童鞋女童靴子2019新款秋冬季儿..', '39', '18', '18', '2.4');
INSERT INTO `list2` VALUES ('19', '../img/listimg/l19.jpg', '巴布豆/BOBDOG儿童童鞋2019冬季新款..', '40', '19', '19', '2.4');
INSERT INTO `list2` VALUES ('20', '../img/listimg/l20.jpg', '【91%白鸭绒】儿童羽绒服中长款加厚..', '41', '20', '20', '2.4');
INSERT INTO `list2` VALUES ('21', '../img/listimg/l21.jpg', '芭贝猫秋冬新款加绒加厚儿童雪地靴防..', '42', '21', '21', '2.4');
INSERT INTO `list2` VALUES ('22', '../img/listimg/l22.jpg', '【两条装】宝宝罩衣超柔防水儿童反穿..', '43', '22', '22', '2.4');
INSERT INTO `list2` VALUES ('23', '../img/listimg/l23.jpg', 'babyfeet软底宝宝短靴保暖冬靴加绒学..', '44', '23', '23', '2.4');
INSERT INTO `list2` VALUES ('24', '../img/listimg/l24.jpg', '小牛人加绒加厚软底宝宝棉鞋学步鞋机..', '45', '24', '24', '2.4');
INSERT INTO `list2` VALUES ('25', '../img/listimg/l25.jpg', '回力童鞋男童运动鞋新款儿童棉鞋保暖..', '46', '25', '25', '2.4');
INSERT INTO `list2` VALUES ('26', '../img/listimg/l26.jpg', '亲亲泥巴宝宝机能鞋2019冬季新款儿童..', '47', '26', '26', '2.4');
INSERT INTO `list2` VALUES ('27', '../img/listimg/l27.jpg', '2019新款女童打底裤春秋冬季儿童一体..', '48', '27', '27', '2.4');
INSERT INTO `list2` VALUES ('28', '../img/listimg/l28.jpg', '两套5件 乖的模样 秋冬款纯棉秋衣秋..', '49', '28', '28', '2.4');
INSERT INTO `list2` VALUES ('29', '../img/listimg/l29.jpg', '(超值5双儿童袖套)男女宝宝袖套儿童..', '50', '29', '29', '2.4');
INSERT INTO `list2` VALUES ('30', '../img/listimg/l30.jpg', '五双装儿童袜子婴儿袜子春秋秋冬棉袜..', '51', '30', '30', '2.4');
INSERT INTO `list2` VALUES ('31', '../img/listimg/l31.jpg', '五双装儿童袜子婴儿袜子春秋秋冬棉袜..', '52', '31', '31', '2.4');
INSERT INTO `list2` VALUES ('32', '../img/listimg/l32.jpg', '五双装儿童袜子婴儿袜子春秋秋冬棉袜..', '53', '32', '32', '2.4');
INSERT INTO `list2` VALUES ('33', '../img/listimg/l33.jpg', '芭贝猫秋冬新款加绒加厚儿童雪地靴防..', '54', '33', '33', '2.4');
INSERT INTO `list2` VALUES ('34', '../img/listimg/l34.jpg', '【两条装】宝宝罩衣超柔防水儿童反穿..', '55', '34', '34', '2.4');
INSERT INTO `list2` VALUES ('35', '../img/listimg/l35.jpg', 'babyfeet软底宝宝短靴保暖冬靴加绒学..', '56', '35', '35', '2.4');
INSERT INTO `list2` VALUES ('36', '../img/listimg/l36.jpg', '小牛人加绒加厚软底宝宝棉鞋学步鞋机..', '57', '36', '36', '2.4');
INSERT INTO `list2` VALUES ('37', '../img/listimg/l37.jpg', '回力童鞋男童运动鞋新款儿童棉鞋保暖..', '58', '37', '37', '2.4');
INSERT INTO `list2` VALUES ('38', '../img/listimg/l38.jpg', '亲亲泥巴宝宝机能鞋2019冬季新款儿童..', '59', '38', '38', '2.4');
INSERT INTO `list2` VALUES ('39', '../img/listimg/l39.jpg', '2019新款女童打底裤春秋冬季儿童一体..', '60', '39', '39', '2.4');
INSERT INTO `list2` VALUES ('40', '../img/listimg/l40.jpg', '两套5件 乖的模样 秋冬款纯棉秋衣秋..', '61', '40', '40', '2.4');
INSERT INTO `list2` VALUES ('41', '../img/listimg/l41.jpg', '(超值5双儿童袖套)男女宝宝袖套儿童..', '62', '41', '41', '2.4');
INSERT INTO `list2` VALUES ('42', '../img/listimg/l42.jpg', '五双装儿童袜子婴儿袜子春秋秋冬棉袜..', '63', '42', '42', '2.4');
INSERT INTO `list2` VALUES ('43', '../img/listimg/l43.jpg', '萌祖驾到女童丝绒棉衣2019新款韩版儿..', '64', '43', '43', '2.4');
INSERT INTO `list2` VALUES ('44', '../img/listimg/l44.jpg', '巴布豆/BOBDOG儿童童鞋2019冬季男童..', '65', '44', '44', '2.4');
INSERT INTO `list2` VALUES ('45', '../img/listimg/l45.jpg', '淘喜 男女童纯棉长袖高领T恤六色可选', '66', '45', '45', '2.4');
INSERT INTO `list2` VALUES ('46', '../img/listimg/l46.jpg', '道琪安童鞋女童靴子2020新款秋冬季儿..', '67', '46', '46', '2.4');
INSERT INTO `list2` VALUES ('47', '../img/listimg/l47.jpg', '巴布豆/BOBDOG儿童童鞋2020冬季新款..', '68', '47', '47', '2.4');
INSERT INTO `list2` VALUES ('48', '../img/listimg/l48.jpg', '【92%白鸭绒】儿童羽绒服中长款加厚..', '69', '48', '48', '2.4');
INSERT INTO `list2` VALUES ('49', '../img/listimg/l49.jpg', '芭贝猫秋冬新款加绒加厚儿童雪地靴防..', '70', '49', '49', '2.4');
INSERT INTO `list2` VALUES ('50', '../img/listimg/l50.jpg', '【两条装】宝宝罩衣超柔防水儿童反穿..', '71', '50', '50', '2.4');
INSERT INTO `list2` VALUES ('51', '../img/listimg/l51.jpg', 'babyfeet软底宝宝短靴保暖冬靴加绒学..', '72', '51', '51', '2.4');
INSERT INTO `list2` VALUES ('52', '../img/listimg/l52.jpg', '小牛人加绒加厚软底宝宝棉鞋学步鞋机..', '73', '52', '52', '2.4');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `nane` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` varchar(10) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'yuxiachao', '123456', '18', '2018-11-12 17:39:27');
INSERT INTO `user` VALUES ('2', 'wehuadei', '12345', '20', '2018-11-12 17:40:02');
INSERT INTO `user` VALUES ('3', 'xiejunpeng', '12834567', '16', '2018-11-12 17:40:32');

-- ----------------------------
-- Table structure for username
-- ----------------------------
DROP TABLE IF EXISTS `username`;
CREATE TABLE `username` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of username
-- ----------------------------
INSERT INTO `username` VALUES ('1', '18377852269', 'a12345');
INSERT INTO `username` VALUES ('7', '18377852260', 'a12345');
INSERT INTO `username` VALUES ('6', '15678128809', '12345');
INSERT INTO `username` VALUES ('8', '15678128808', 'a12345');
INSERT INTO `username` VALUES ('9', '18377852268', 'a12345');
INSERT INTO `username` VALUES ('10', '13533790520', 'qwe123');
INSERT INTO `username` VALUES ('11', '13533790521', 'qwe123');
INSERT INTO `username` VALUES ('12', '13533790526', 'qwe123');
INSERT INTO `username` VALUES ('13', '13533790530', 'qwe123');
INSERT INTO `username` VALUES ('14', '13533790529', 'qwe123');
INSERT INTO `username` VALUES ('15', '13533790567', 'qwe123');
INSERT INTO `username` VALUES ('16', '13533790550', 'qwe123');

-- ----------------------------
-- Table structure for user_inf
-- ----------------------------
DROP TABLE IF EXISTS `user_inf`;
CREATE TABLE `user_inf` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_inf
-- ----------------------------
INSERT INTO `user_inf` VALUES ('1', 'lizongwei', '123456', '18', '2018-11-12 15:19:05');
INSERT INTO `user_inf` VALUES ('2', 'qiuguijian', '12345', '18', '2018-11-12 15:19:34');
INSERT INTO `user_inf` VALUES ('3', 'yanzihao', '1234', '18', '2018-11-12 15:19:52');
SET FOREIGN_KEY_CHECKS=1;
