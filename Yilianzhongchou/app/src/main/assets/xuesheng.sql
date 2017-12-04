/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : xuesheng

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-11-14 09:40:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ck_addons`
-- ----------------------------
DROP TABLE IF EXISTS `ck_addons`;
CREATE TABLE `ck_addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `config` text,
  `title` varchar(200) DEFAULT NULL,
  `litpic` varchar(200) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_addons
-- ----------------------------
INSERT INTO `ck_addons` VALUES ('1', 'alipay', '0', '', '支付宝支付', 'static/images/pay/small_ws_wap.png', '1493260096');
INSERT INTO `ck_addons` VALUES ('2', 'weixinpay', '1', 'a:4:{s:5:\"appid\";s:18:\"wxe9703596d192a623\";s:9:\"appsecret\";s:32:\"6499f3e3b8035be447bf5cfbfbb4f430\";s:6:\"appkey\";s:41:\"jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj\";s:5:\"mchid\";s:5:\"Mch11\";}', '微信支付', 'static/images/pay/small_wechat_js.png', '1505725737');
INSERT INTO `ck_addons` VALUES ('3', 'unpay', '0', '', '银联支付', 'static/images/pay/167082436.jpg', '1493260087');
INSERT INTO `ck_addons` VALUES ('4', 'baiduseo', '0', '', '百度收录', 'static/images/20170427141537.png', '1493275432');
INSERT INTO `ck_addons` VALUES ('5', 'kefu', '0', null, '浮动客服', 'static/images/timg.jpg', null);
INSERT INTO `ck_addons` VALUES ('6', 'cnzz', '0', '', '网站统计', 'static/images/21212121.png', '1493280919');
INSERT INTO `ck_addons` VALUES ('7', 'alidayu', '1', 'a:4:{s:6:\"appkey\";s:24:\"q82hc14q9180roi8ok5qbnrk\";s:9:\"secretKey\";s:28:\"o+PhOZx3kQ2v6oaLrGKNJPYjWWA=\";s:4:\"sign\";s:30:\"青岛卡铺信息有限公司\";s:3:\"sms\";s:12:\"SMS_95275017\";}', '阿里大于', 'static/images/alidayu.jpg', '1505270980');
INSERT INTO `ck_addons` VALUES ('8', 'yimei', '1', 'a:4:{s:3:\"key\";s:19:\"0SDK-EBB-6699-RFVLK\";s:4:\"pass\";s:6:\"674408\";s:4:\"sign\";s:12:\"忆烨传媒\";s:4:\"link\";s:114:\"http://hprpt2.eucp.b2m.cn:8080/sdkproxy/sendsms.action?cdkey={key}&password={pass}&phone={phone}&message={content}\";}', '亿美短信', 'static/images/yimei.png', '1505793507');

-- ----------------------------
-- Table structure for `ck_admin`
-- ----------------------------
DROP TABLE IF EXISTS `ck_admin`;
CREATE TABLE `ck_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `logintime` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_admin
-- ----------------------------
INSERT INTO `ck_admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1492753369', '0', '5');
INSERT INTO `ck_admin` VALUES ('2', 'cknet', '21232f297a57a5a743894a0e4a801fc3', '1510368406', '0', null);

-- ----------------------------
-- Table structure for `ck_admin_group`
-- ----------------------------
DROP TABLE IF EXISTS `ck_admin_group`;
CREATE TABLE `ck_admin_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `status` int(10) DEFAULT '1',
  `ctime` varchar(20) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_admin_group
-- ----------------------------
INSERT INTO `ck_admin_group` VALUES ('5', ' 超级管理员', '1', '1486523283', '1486523283');
INSERT INTO `ck_admin_group` VALUES ('6', '普通管理员', '1', '1508383774', '1508383774');

-- ----------------------------
-- Table structure for `ck_admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ck_admin_menu`;
CREATE TABLE `ck_admin_menu` (
  `mid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_admin_menu
-- ----------------------------
INSERT INTO `ck_admin_menu` VALUES ('17', '5');
INSERT INTO `ck_admin_menu` VALUES ('16', '5');
INSERT INTO `ck_admin_menu` VALUES ('4', '5');
INSERT INTO `ck_admin_menu` VALUES ('30', '5');
INSERT INTO `ck_admin_menu` VALUES ('7', '5');
INSERT INTO `ck_admin_menu` VALUES ('1', '5');

-- ----------------------------
-- Table structure for `ck_admin_per`
-- ----------------------------
DROP TABLE IF EXISTS `ck_admin_per`;
CREATE TABLE `ck_admin_per` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `aname` varchar(20) DEFAULT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `custom` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_admin_per
-- ----------------------------
INSERT INTO `ck_admin_per` VALUES ('131', '新闻中心', 'News', 'index', '4', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('132', '公司新闻', 'News', 'index', '5', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('133', '行业资讯', 'News', 'index', '6', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('134', '产品中心', 'News', 'index', '7', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('135', '新闻中心', 'News', 'add', '4', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('136', '公司新闻', 'News', 'add', '5', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('137', '行业资讯', 'News', 'add', '6', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('138', '产品中心', 'News', 'add', '7', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('139', '新闻中心', 'News', 'edit', '4', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('140', '公司新闻', 'News', 'edit', '5', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('141', '行业资讯', 'News', 'edit', '6', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('142', '产品中心', 'News', 'edit', '7', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('143', '关于我们', 'Pages', 'edit', '8', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('144', '联系我们', 'Pages', 'edit', '9', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('145', '新闻中心', 'News', 'delete', '4', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('146', '公司新闻', 'News', 'delete', '5', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('147', '行业资讯', 'News', 'delete', '6', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('148', '产品中心', 'News', 'delete', '7', '5', '0');
INSERT INTO `ck_admin_per` VALUES ('149', '132313123', 'News', 'index', '12', '5', null);
INSERT INTO `ck_admin_per` VALUES ('150', '132313123', 'News', 'add', '12', '5', null);
INSERT INTO `ck_admin_per` VALUES ('151', '132313123', 'News', 'edit', '12', '5', null);
INSERT INTO `ck_admin_per` VALUES ('152', '132313123', 'News', 'delete', '12', '5', null);
INSERT INTO `ck_admin_per` VALUES ('153', '1231231', 'News', 'index', '13', '5', null);
INSERT INTO `ck_admin_per` VALUES ('154', '1231231', 'News', 'add', '13', '5', null);
INSERT INTO `ck_admin_per` VALUES ('155', '1231231', 'News', 'edit', '13', '5', null);
INSERT INTO `ck_admin_per` VALUES ('156', '1231231', 'News', 'delete', '13', '5', null);
INSERT INTO `ck_admin_per` VALUES ('157', '学生信息录入', 'News', 'index', '19', '6', '0');
INSERT INTO `ck_admin_per` VALUES ('158', '学生信息录入', 'News', 'add', '19', '6', '0');
INSERT INTO `ck_admin_per` VALUES ('159', '学生信息录入', 'News', 'edit', '19', '6', '0');
INSERT INTO `ck_admin_per` VALUES ('160', '学生信息录入', 'News', 'delete', '19', '6', '0');

-- ----------------------------
-- Table structure for `ck_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `ck_attribute`;
CREATE TABLE `ck_attribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `col` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `value` varchar(120) DEFAULT NULL,
  `tag` varchar(20) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `mid` varchar(20) DEFAULT NULL,
  `num` int(10) DEFAULT '50',
  `is_show` int(1) DEFAULT '0',
  `is_must` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=387 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_attribute
-- ----------------------------
INSERT INTO `ck_attribute` VALUES ('35', '分类名', 'sort', 'text', '', '', '1429865401', '9', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('36', '上级分类', 'pid', 'sort', '', '', '1429865532', '9', '50', '0', '0');
INSERT INTO `ck_attribute` VALUES ('48', 'varchar', 'path', 'table', '11', '', '1429945452', '9', '50', '0', '0');
INSERT INTO `ck_attribute` VALUES ('50', 'int', 'level', 'table', '11', '', '1429946249', '9', '50', '0', '0');
INSERT INTO `ck_attribute` VALUES ('63', '内容', 'content', 'fck', '', '', '1430378444', '12', '50', '0', '0');
INSERT INTO `ck_attribute` VALUES ('67', 'seo标题', 'seo_title', 'text', '', '', '1431419244', '14', '1', '0', '0');
INSERT INTO `ck_attribute` VALUES ('69', 'SEO关键词', 'seo_keyword', 'text', '', '', '1431419274', '14', '1', '0', '0');
INSERT INTO `ck_attribute` VALUES ('70', 'SEO描述', 'seo_def', 'textarea', '', '', '1431419290', '14', '1', '0', '0');
INSERT INTO `ck_attribute` VALUES ('71', 'seo标题', 'seo_title', 'text', '', '', '1431419244', '15', '1', '0', '0');
INSERT INTO `ck_attribute` VALUES ('72', 'SEO关键词', 'seo_keyword', 'text', '', '', '1431419274', '15', '1', '0', '0');
INSERT INTO `ck_attribute` VALUES ('73', 'SEO描述', 'seo_def', 'textarea', '', '', '1431419290', '15', '1', '0', '0');
INSERT INTO `ck_attribute` VALUES ('74', '标题', 'title', 'text', '', '', '1489462306', '15', '50', '1', '1');
INSERT INTO `ck_attribute` VALUES ('75', '内容', 'content', 'fck', '', '', '1431419330', '15', '50', '0', '0');
INSERT INTO `ck_attribute` VALUES ('210', '测试', 'test', 'textarea', '11', '123', null, '9', '50', '0', '0');
INSERT INTO `ck_attribute` VALUES ('351', '床铺', 'chuangpu', 'text', '', '', '1508737617', '36', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('350', '宿舍', 'sushe', 'text', '', '', '1508737585', '36', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('349', '班级', 'banji', 'text', '', '', '1508737568', '36', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('269', '图片', 'litpic', 'file', '', '', '1493102382', '15', '50', '0', '0');
INSERT INTO `ck_attribute` VALUES ('270', '分类', 'sort', 'sort', '', '', '1493781284', '15', '50', '0', '0');
INSERT INTO `ck_attribute` VALUES ('280', '123', '321', 'date', '1', '', '1501134161', '15', '50', '0', '0');
INSERT INTO `ck_attribute` VALUES ('348', '年级', 'nianji', 'text', '', '', '1508737547', '36', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('347', '楼层', 'louceng', 'text', '', '', '1508737511', '36', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('371', '学号', 'xuehao', 'text', '', '', '1509610857', '36', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('344', '分数', 'fenshu', 'text', '', '', '1508729590', '34', '50', '1', '1');
INSERT INTO `ck_attribute` VALUES ('343', '原因', 'yuanyin', 'text', '', '', '1508729562', '34', '50', '1', '1');
INSERT INTO `ck_attribute` VALUES ('342', '密码', 'password', 'password', '', '', '1508722552', '33', '50', '0', '1');
INSERT INTO `ck_attribute` VALUES ('341', '用户名', 'name', 'text', '', '', '1508722560', '33', '50', '1', '1');
INSERT INTO `ck_attribute` VALUES ('345', '分类', 'fenlei', 'select', '个人卫生-宿舍卫生-个人纪律', '', '1508729712', '34', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('352', '姓名', 'xingming', 'text', '', '', '1508737646', '36', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('353', '性别', 'xingbie', 'text', '', '', '1508742608', '36', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('354', '床铺', 'chuangpu', 'text', '', '', '1508745497', '39', '85', '1', '0');
INSERT INTO `ck_attribute` VALUES ('355', '宿舍', 'sushe', 'text', '', '', '1508744870', '39', '86', '1', '0');
INSERT INTO `ck_attribute` VALUES ('356', '班级', 'banji', 'text', '', '', '1508744860', '39', '87', '1', '0');
INSERT INTO `ck_attribute` VALUES ('357', '年级', 'nianji', 'text', '', '', '1508744849', '39', '88', '1', '0');
INSERT INTO `ck_attribute` VALUES ('358', '楼层', 'louceng', 'text', '', '', '1508744835', '39', '89', '1', '0');
INSERT INTO `ck_attribute` VALUES ('373', '学号', 'xuehao', 'text', '', '', '1509603006', '39', '83', '0', '0');
INSERT INTO `ck_attribute` VALUES ('360', '姓名', 'xingming', 'text', '', '', '1508745513', '39', '84', '1', '0');
INSERT INTO `ck_attribute` VALUES ('362', '分类', 'fenlei', 'text', '', '', '1509691588', '39', '81', '1', '0');
INSERT INTO `ck_attribute` VALUES ('370', '管理员级别', 'jibie', 'select', '超级管理员-宿舍管理员-老师管理员', '', '1509671131', '33', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('372', '扣分原因', 'yuanyin', 'text', '', '', '1509691612', '39', '78', '0', '0');
INSERT INTO `ck_attribute` VALUES ('365', '备注', 'beizhu', 'textarea', '', '', '1508745604', '39', '80', '0', '0');
INSERT INTO `ck_attribute` VALUES ('369', '扣分日期', 'riqi', 'text', '', '', '1510045204', '39', '79', '1', '0');
INSERT INTO `ck_attribute` VALUES ('374', '性别', 'xingbie', 'text', '', '', '1509691647', '39', '82', '1', '0');
INSERT INTO `ck_attribute` VALUES ('375', '床铺', 'chuangpu', 'text', '', '', '1508737617', '40', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('376', '宿舍', 'sushe', 'text', '', '', '1508737585', '40', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('377', '班级', 'banji', 'text', '', '', '1508737568', '40', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('378', '年级', 'nianji', 'text', '', '', '1508737547', '40', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('379', '楼层', 'louceng', 'text', '', '', '1508737511', '40', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('380', '学号', 'xuehao', 'text', '', '', '1509610857', '40', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('381', '姓名', 'xingming', 'text', '', '', '1508737646', '40', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('382', '性别', 'xingbie', 'text', '', '', '1508742608', '40', '50', '1', '0');
INSERT INTO `ck_attribute` VALUES ('383', '分数', 'fen', 'text', '', '', '1509762341', '39', '50', '0', '0');
INSERT INTO `ck_attribute` VALUES ('386', '重置时间', 'cz_rq', 'date', '', '', '1510192753', '43', '50', '1', '0');

-- ----------------------------
-- Table structure for `ck_banner`
-- ----------------------------
DROP TABLE IF EXISTS `ck_banner`;
CREATE TABLE `ck_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `links` varchar(200) DEFAULT NULL,
  `litpic` varchar(200) DEFAULT NULL,
  `cat` int(10) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_banner
-- ----------------------------

-- ----------------------------
-- Table structure for `ck_biaozhun`
-- ----------------------------
DROP TABLE IF EXISTS `ck_biaozhun`;
CREATE TABLE `ck_biaozhun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT '50',
  `yuanyin` varchar(100) DEFAULT NULL,
  `fenshu` varchar(100) DEFAULT NULL,
  `fenlei` varchar(100) DEFAULT '个人卫生',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_biaozhun
-- ----------------------------
INSERT INTO `ck_biaozhun` VALUES ('1', '21', '1508729829', '1508729814', '50', '厕所纸篓未倒，或地面有垃圾', '-1', '宿舍卫生');
INSERT INTO `ck_biaozhun` VALUES ('2', '21', '1508729847', '1508729847', '50', '阳台厕所地面不干净', '-1', '宿舍卫生');
INSERT INTO `ck_biaozhun` VALUES ('3', '21', '1508729869', '1508729869', '50', '洗手池上不干净或有杂物', '-1', '宿舍卫生');
INSERT INTO `ck_biaozhun` VALUES ('4', '21', '1508729890', '1508729890', '50', '被褥叠放不整齐', '-1', '个人卫生');
INSERT INTO `ck_biaozhun` VALUES ('5', '21', '1508729913', '1508729913', '50', '床铺上有杂物（如衣物、书本、钥匙、镜子等物品）', '-1', '个人卫生');
INSERT INTO `ck_biaozhun` VALUES ('6', '21', '1508729940', '1508729940', '50', '床下有杂物、拉杆箱、整理箱等', '-1', '个人卫生');
INSERT INTO `ck_biaozhun` VALUES ('7', '21', '1508729968', '1508729968', '50', '宿舍饲养小动物', '-10', '宿舍卫生');
INSERT INTO `ck_biaozhun` VALUES ('8', '21', '1508729986', '1508729986', '50', '私拉电线、使用空调插座充电、使用吹风机等电器', '-10', '宿舍卫生');
INSERT INTO `ck_biaozhun` VALUES ('9', '21', '1508730028', '1508730017', '50', '进入宿舍楼内吃饭、吃方便面，花生、瓜子等坚果类食品', '-5', '个人纪律');
INSERT INTO `ck_biaozhun` VALUES ('10', '21', '1508730047', '1508730047', '50', '进入宿舍楼内大喊大叫、追逐打闹等情况', '-5', '个人纪律');
INSERT INTO `ck_biaozhun` VALUES ('11', '21', '1508730072', '1508730072', '50', '垃圾不入筐（桶）', '-5', '个人纪律');
INSERT INTO `ck_biaozhun` VALUES ('12', '21', '1508730142', '1508730142', '50', '好的典型人物、事件（助人为乐、主动拾垃圾等）', '+1', '宿舍卫生');
INSERT INTO `ck_biaozhun` VALUES ('13', '21', '1508730159', '1508730159', '50', '每天打扫卫生受到表扬的宿舍', '+1', '宿舍卫生');
INSERT INTO `ck_biaozhun` VALUES ('14', '21', '1508730201', '1508730201', '50', '为宿舍做出突出贡献的（如大检查打扫公共区域卫生）', '+1', '宿舍卫生');

-- ----------------------------
-- Table structure for `ck_category`
-- ----------------------------
DROP TABLE IF EXISTS `ck_category`;
CREATE TABLE `ck_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groups` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `listpage` varchar(50) DEFAULT NULL,
  `viewpage` varchar(50) DEFAULT NULL,
  `attr` text,
  `utime` varchar(20) DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  `enname` varchar(200) DEFAULT NULL,
  `allow_publish` int(11) DEFAULT '1',
  `check` int(1) DEFAULT '0',
  `litpic` varchar(200) DEFAULT NULL,
  `display` int(1) DEFAULT '1',
  `sort` varchar(20) DEFAULT '0',
  `meta_title` varchar(200) DEFAULT NULL,
  `keywords` varchar(200) DEFAULT NULL,
  `description` text,
  `custom_link` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_category
-- ----------------------------
INSERT INTO `ck_category` VALUES ('20', '', '管理员', '33', '1508722585', 'newslist.html', 'news.html', null, null, '0', '', '1', '0', null, '1', '0', '', '', '', '');
INSERT INTO `ck_category` VALUES ('22', '', '学生信息', '36', '1508737669', 'newslist.html', 'news.html', null, '1509157560', '0', '', '1', '1', null, '1', '0', '', '', '', '');
INSERT INTO `ck_category` VALUES ('21', '', '宿舍量化标准', '34', '1508729733', 'newslist.html', 'news.html', null, null, '0', '', '1', '0', null, '1', '0', '', '', '', '');
INSERT INTO `ck_category` VALUES ('23', '', '扣分记录', '39', '1508745309', 'newslist.html', 'news.html', null, '1509438719', '0', '', '1', '0', null, '1', '0', '', '', '', '');
INSERT INTO `ck_category` VALUES ('25', '', '重置学期', '43', '1510191563', 'newslist.html', 'news.html', null, '1510192781', '0', '', '1', '0', null, '1', '0', '', '', '', '');

-- ----------------------------
-- Table structure for `ck_chongzhi`
-- ----------------------------
DROP TABLE IF EXISTS `ck_chongzhi`;
CREATE TABLE `ck_chongzhi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT '50',
  `cz_rq` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_chongzhi
-- ----------------------------
INSERT INTO `ck_chongzhi` VALUES ('5', '25', '1510368438', '1510368438', '50', '2017-11-09');
INSERT INTO `ck_chongzhi` VALUES ('4', '25', '1510198426', '1510198426', '50', '2017-11-07');

-- ----------------------------
-- Table structure for `ck_config`
-- ----------------------------
DROP TABLE IF EXISTS `ck_config`;
CREATE TABLE `ck_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `type` varchar(10) DEFAULT 'text',
  `title` varchar(50) DEFAULT NULL,
  `group` tinyint(3) unsigned DEFAULT '0',
  `extra` varchar(255) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `create_time` int(10) unsigned DEFAULT '0',
  `update_time` int(10) unsigned DEFAULT '0',
  `status` tinyint(4) DEFAULT '0',
  `value` text,
  `sort` smallint(3) unsigned DEFAULT '0',
  `hide` int(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_config
-- ----------------------------
INSERT INTO `ck_config` VALUES ('1', 'config_group_list', 'textarea', '配置分组', '99', '', '', '', '1447305542', '1452323143', '1', '1:基本\r\n2:会员\r\n3:邮件\r\n4:微信\r\n99:系统', '0', '0');
INSERT INTO `ck_config` VALUES ('2', 'hooks_type', 'textarea', '钩子的类型', '99', '', '类型 1-用于扩展显示内容，2-用于扩展业务处理', '', '1379313397', '1379313407', '1', '1:视图\r\n2:控制器', '6', '0');
INSERT INTO `ck_config` VALUES ('3', 'auth_config', 'textarea', 'Auth配置', '99', '', '自定义Auth.class.php类配置', '', '1379409310', '1379409564', '1', 'AUTH_ON:1\r\nAUTH_TYPE:2', '8', '0');
INSERT INTO `ck_config` VALUES ('5', 'data_backup_path', 'text', '数据库备份根路径', '99', '', '路径必须以 / 结尾', '', '1381482411', '1381482411', '1', './data/backup/', '5', '0');
INSERT INTO `ck_config` VALUES ('6', 'data_backup_part_size', 'text', '数据库备份卷大小', '99', '', '该值用于限制压缩后的分卷最大长度。单位：B；建议设置20M', '', '1381482488', '1381729564', '1', '20971520', '7', '0');
INSERT INTO `ck_config` VALUES ('7', 'data_backup_compress', 'bool', '数据库备份文件是否启用压缩', '99', '0:不压缩\r\n1:启用压缩', '压缩备份文件需要PHP环境支持gzopen,gzwrite函数', '', '1381713345', '1447306018', '1', '1', '9', '0');
INSERT INTO `ck_config` VALUES ('8', 'data_backup_compress_level', 'select', '数据库备份文件压缩级别', '99', '1:普通\r\n4:一般\r\n9:最高', '数据库备份文件的压缩级别，该配置在开启压缩时生效', '', '1381713408', '1447305979', '1', '9', '10', '0');
INSERT INTO `ck_config` VALUES ('9', 'develop_mode', 'bool', '开启开发者模式', '99', '0:关闭\r\n1:开启', '是否开启开发者模式', '', '1383105995', '1447305960', '1', '1', '11', '0');
INSERT INTO `ck_config` VALUES ('10', 'allow_visit', 'textarea', '不受限控制器方法', '99', '', '', '', '1386644047', '1438075615', '1', '0:article/draftbox\r\n1:article/mydocument\r\n2:Category/tree\r\n3:Index/verify\r\n4:file/upload\r\n5:file/download\r\n6:user/updatePassword\r\n7:user/updateNickname\r\n8:user/submitPassword\r\n9:user/submitNickname\r\n10:file/uploadpicture', '0', '0');
INSERT INTO `ck_config` VALUES ('11', 'deny_visit', 'textarea', '超管专限控制器方法', '99', '', '仅超级管理员可访问的控制器方法', '', '1386644141', '1438075628', '1', '0:Addons/addhook\r\n1:Addons/edithook\r\n2:Addons/delhook\r\n3:Addons/updateHook\r\n4:Admin/getMenus\r\n5:Admin/recordList\r\n6:AuthManager/updateRules\r\n7:AuthManager/tree', '0', '0');
INSERT INTO `ck_config` VALUES ('12', 'admin_allow_ip', 'text', '后台允许访问IP', '99', '', '多个用逗号分隔，如果不配置表示不限制IP访问', '', '1387165454', '1452307198', '1', '', '12', '0');
INSERT INTO `ck_config` VALUES ('13', 'app_debug', 'bool', '是否调试模式', '99', '0:关闭\r\n1:开启', '是否调试模式', '', '1387165685', '1481539829', '1', '0', '6', '0');
INSERT INTO `ck_config` VALUES ('14', 'web_site_title', 'text', '网站标题', '1', '', '网站标题前台显示标题', '', '1378898976', '1379235274', '1', '石家庄三十五中学', '0', '0');
INSERT INTO `ck_config` VALUES ('15', 'web_site_url', 'text', '网站URL', '1', '', '网站网址', '', '1378898976', '1379235274', '1', 'http://127.0.0.0.1', '1', '0');
INSERT INTO `ck_config` VALUES ('16', 'web_site_description', 'textarea', '网站描述', '1', '', '网站搜索引擎描述', '', '1378898976', '1379235841', '1', '石家庄三十五中学2', '3', '0');
INSERT INTO `ck_config` VALUES ('17', 'web_site_keyword', 'textarea', '网站关键字', '1', '', '网站搜索引擎关键字', '', '1378898976', '1381390100', '1', '石家庄三十五中学3', '6', '0');
INSERT INTO `ck_config` VALUES ('18', 'web_site_close', 'bool', '关闭站点', '1', '0:否,1:是', '站点关闭后其他用户不能访问，管理员可以正常访问', '', '1378898976', '1447321395', '1', '0', '4', '0');
INSERT INTO `ck_config` VALUES ('19', 'web_site_icp', 'text', '网站备案号', '1', '', '设置在网站底部显示的备案号，如“赣ICP备13006622号', '', '1378900335', '1379235859', '1', '赣ICP备13006622号', '7', '0');
INSERT INTO `ck_config` VALUES ('20', 'open_mobile_site', 'bool', '开启手机站', '1', '0:关闭\r\n1:开启', '', '', '1440901307', '1440901543', '1', '0', '4', '0');
INSERT INTO `ck_config` VALUES ('21', 'list_rows', 'num', '列表条数', '99', '', '', '', '1448937662', '1448937662', '1', '20', '10', '0');
INSERT INTO `ck_config` VALUES ('22', 'user_allow_register', 'bool', '是否可注册', '2', '1:是\r\n0:否', '', '', '1449043544', '1449043586', '1', '1', '0', '0');
INSERT INTO `ck_config` VALUES ('23', 'user_group_type', 'textarea', '会员分组类别', '2', '', '', '', '1449196835', '1449196835', '1', 'admin:系统管理员\r\nfront:会员等级', '1', '0');
INSERT INTO `ck_config` VALUES ('24', 'config_type_list', 'textarea', '字段类型', '99', '', '', '', '1459136529', '1459136529', '1', 'text:单行文本:varchar\r\nstring:字符串:int\r\npassword:密码:varchar\r\ntextarea:文本框:text\r\nbool:布尔型:int\r\nselect:选择:varchar\r\nnum:数字:int\r\ndecimal:金额:decimal\r\ntags:标签:varchar\r\ndatetime:时间控件:int\r\ndate:日期控件:varchar\r\neditor:编辑器:text\r\nbind:模型绑定:int\r\nimage:图片上传:int\r\nimages:多图上传:varchar\r\nattach:文件上传:varchar', '0', '0');
INSERT INTO `ck_config` VALUES ('25', 'document_position', 'textarea', '文档推荐位', '99', '', '', '', '1453449698', '1453449698', '1', '1:首页推荐\r\n2:列表推荐', '0', '0');
INSERT INTO `ck_config` VALUES ('26', 'mail_host', 'text', 'smtp服务器的名称', '3', '', 'smtp服务器的名称', '', '1455690530', '1455690556', '1', 'smtp.163.com', '0', '0');
INSERT INTO `ck_config` VALUES ('27', 'mail_smtpauth', 'select', '启用smtp认证', '3', '0:否,1:是', '启用smtp认证', '', '1455690641', '1455690689', '1', '1', '0', '0');
INSERT INTO `ck_config` VALUES ('28', 'mail_username', 'text', '邮件发送用户名', '3', '', '邮件发送用户名', '', '1455690771', '1455690771', '1', '你的邮箱账号', '0', '0');
INSERT INTO `ck_config` VALUES ('29', 'mail_password', 'text', '邮箱密码', '3', '', '邮箱密码，如果是qq邮箱，则填安全密码', '', '1455690802', '1455690802', '1', '你的邮箱密码', '0', '0');
INSERT INTO `ck_config` VALUES ('30', 'mail_fromname', 'text', '发件人姓名', '3', '', '发件人姓名', '', '1455690838', '1455690838', '1', '发件人姓名', '0', '0');
INSERT INTO `ck_config` VALUES ('31', 'mail_ishtml', 'select', '是否HTML格式邮件', '3', '0:否,1:是', '是否HTML格式邮件', '', '1455690888', '1455690888', '1', '1', '0', '0');
INSERT INTO `ck_config` VALUES ('32', 'mail_charset', 'text', '邮件编码', '3', '', '设置发送邮件的编码', '', '1455690920', '1455690920', '1', 'UTF8', '0', '0');
INSERT INTO `ck_config` VALUES ('41', 'pc_themes', 'text', 'PC站模板', '0', '', '', '', '1480043043', '1480043043', '1', 'default', '0', '0');
INSERT INTO `ck_config` VALUES ('43', 'nav_type_list', 'textarea', '导航分类', '99', '', '', '', '1481539756', '1481539801', '1', '1:顶部\r\n2:底部', '1', '0');
INSERT INTO `ck_config` VALUES ('45', 'themes_pc', 'text', 'PC模版', '0', '', '', '', '0', '0', '0', 'default', '0', '0');
INSERT INTO `ck_config` VALUES ('46', 'themes_mobile', 'text', '手机模版', '0', '', '', '', '0', '0', '0', 'default', '0', '0');
INSERT INTO `ck_config` VALUES ('47', 'is_mobile', 'select', '启用手机模版', '1', '0:否,1:是', '是否启用手机站单独模版', '', '0', '0', '0', '0', '0', '0');
INSERT INTO `ck_config` VALUES ('52', 'user_find_type', 'select', '找回密码方式', '2', '1:邮箱,2:手机号,3:全部', '找回密码的类型', '', '0', '0', '0', '3', '0', '0');
INSERT INTO `ck_config` VALUES ('71', 'qq', 'text', ' 客服QQ', '1', '', '', null, '0', '0', '0', '12121212122', '0', '1');
INSERT INTO `ck_config` VALUES ('62', 'web_site_close_remark', 'textarea', '关闭网站提示', '1', '', '', '', '0', '0', '0', '网站升级中', '0', '0');
INSERT INTO `ck_config` VALUES ('70', 'web_name', 'text', '网站名称', '1', '', '网站的名称。不是网站标题', null, '0', '0', '0', '龙康工贸', '0', '1');
INSERT INTO `ck_config` VALUES ('63', 'web_home_tel', 'text', '联系电话', '1', '', '', '', '0', '0', '0', '13395325650', '0', '1');
INSERT INTO `ck_config` VALUES ('64', 'web_home_mail', 'text', '邮箱', '1', '', '', '', '0', '0', '0', '1175591244@qq.com', '0', '1');
INSERT INTO `ck_config` VALUES ('65', 'web_home_erweima', 'image', '二维码', '1', '', '', '', '0', '0', '0', 'upload/image/2017/04/13/58ef3457e4916.png', '0', '1');
INSERT INTO `ck_config` VALUES ('66', 'web_upload_type', 'text', '文件上传格式', '1', '', '', null, '0', '0', '0', 'jpg,gif,png,jpeg,doc,docx,xls,xlsx,ppt,pptx,pdf,txt,zip,rar,7z', '0', '1');

-- ----------------------------
-- Table structure for `ck_dingdan`
-- ----------------------------
DROP TABLE IF EXISTS `ck_dingdan`;
CREATE TABLE `ck_dingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT '50',
  `product` varchar(100) DEFAULT NULL,
  `prize` varchar(100) DEFAULT NULL,
  `orderno` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `mob` varchar(100) DEFAULT NULL,
  `province3` varchar(100) DEFAULT NULL,
  `city3` varchar(100) DEFAULT NULL,
  `area3` varchar(100) DEFAULT NULL,
  `addess` varchar(100) DEFAULT NULL,
  `pay` varchar(100) DEFAULT NULL,
  `wuliu` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_dingdan
-- ----------------------------
INSERT INTO `ck_dingdan` VALUES ('1', null, null, null, '50', '耐美尔二代1盒活动价 198元|198', '198', '148937232457123', '12311313', '12312313', '辽宁省', '阜新市', '清河门区', '123123123', '支付宝支付', null);
INSERT INTO `ck_dingdan` VALUES ('2', null, null, null, '50', '耐美尔一代1盒活动价 158元|158', '158', '148937306197302', '阿斯大苏打', 'asdasd', '内蒙古自治区', '鄂尔多斯市', '鄂托克旗', '阿萨德a', '支付宝支付', null);
INSERT INTO `ck_dingdan` VALUES ('3', null, null, null, '50', '耐美尔一代1盒活动价 158元|158', '158', '148937308154544', '阿斯大苏打', 'asdasd', '内蒙古自治区', '鄂尔多斯市', '鄂托克旗', '阿萨德a', '支付宝支付', null);
INSERT INTO `ck_dingdan` VALUES ('4', null, null, null, '50', '耐美尔一代1盒活动价 158元|158', '158', '148937308673767', '阿斯大苏打', 'asdasd', '内蒙古自治区', '鄂尔多斯市', '鄂托克旗', '阿萨德a', '微信支付', null);
INSERT INTO `ck_dingdan` VALUES ('5', null, null, null, '50', '耐美尔一代1盒活动价 158元|158', '158', '148937313151896', '阿斯大苏打', 'asdasd', '内蒙古自治区', '鄂尔多斯市', '鄂托克旗', '阿萨德a', '微信支付', null);
INSERT INTO `ck_dingdan` VALUES ('6', null, null, null, '50', '耐美尔一代1盒活动价 158元|158', '158', '148937319357120', '阿斯大苏打', 'asdasd', '内蒙古自治区', '鄂尔多斯市', '鄂托克旗', '阿萨德a', '微信支付', null);
INSERT INTO `ck_dingdan` VALUES ('7', null, null, null, '50', '耐美尔一代1盒活动价 158元|158', '158', '148937337195569', '阿斯大苏打', 'asdasd', '内蒙古自治区', '鄂尔多斯市', '鄂托克旗', '阿萨德a', '微信支付', null);
INSERT INTO `ck_dingdan` VALUES ('8', null, null, null, '50', '耐美尔一代1盒活动价 158元|158', '158', '148937338437723', '阿斯大苏打', 'asdasd', '内蒙古自治区', '鄂尔多斯市', '鄂托克旗', '阿萨德a', '微信支付', null);
INSERT INTO `ck_dingdan` VALUES ('9', null, null, null, '50', '耐美尔一代1盒活动价 158元|158', '158', '148937338766703', '阿斯大苏打', 'asdasd', '内蒙古自治区', '鄂尔多斯市', '鄂托克旗', '阿萨德a', '微信支付', null);
INSERT INTO `ck_dingdan` VALUES ('10', null, null, null, '50', '耐美尔一代1盒活动价 158元|158', '158', '148937339672248', '阿斯大苏打', 'asdasd', '内蒙古自治区', '鄂尔多斯市', '鄂托克旗', '阿萨德a', '微信支付', null);
INSERT INTO `ck_dingdan` VALUES ('11', null, null, null, '50', '耐美尔一代1盒活动价 158元|158', '158', '148937341432519', '阿斯大苏打', 'asdasd', '内蒙古自治区', '鄂尔多斯市', '鄂托克旗', '阿萨德a', '微信支付', null);
INSERT INTO `ck_dingdan` VALUES ('12', null, null, null, '50', '耐美尔一代1盒活动价 158元|158', '158', '148937342189326', '阿斯大苏打', 'asdasd', '内蒙古自治区', '鄂尔多斯市', '鄂托克旗', '阿萨德a', '微信支付', null);
INSERT INTO `ck_dingdan` VALUES ('13', null, null, null, '50', '耐美尔一代1盒活动价 158元|158', '158', '148937360235556', '阿斯大苏打', 'asdasd', '内蒙古自治区', '鄂尔多斯市', '鄂托克旗', '阿萨德a', '微信支付', null);
INSERT INTO `ck_dingdan` VALUES ('14', null, null, null, '50', '耐美尔一代1盒活动价 158元|158', '158', '148937362260707', '阿斯大苏打', 'asdasd', '内蒙古自治区', '鄂尔多斯市', '鄂托克旗', '阿萨德a', '微信支付', null);
INSERT INTO `ck_dingdan` VALUES ('15', null, null, null, '50', '耐美尔一代1盒活动价 158元|158', '158', '148938969913103', '12312313', '123123131', '山东省', '聊城市', '莘县', '123123123123', '支付宝支付', null);
INSERT INTO `ck_dingdan` VALUES ('16', null, null, null, '50', '耐美尔一代1盒活动价 158元|158', '158', '149032516398849', '', '', '', '', '', '', '货到付款', null);
INSERT INTO `ck_dingdan` VALUES ('17', null, null, null, '50', '耐美尔一代1盒活动价 158元|158', '158', '149032516668936', '', '', '', '', '', '', '货到付款', null);
INSERT INTO `ck_dingdan` VALUES ('18', null, null, null, '50', '耐美尔二代2盒活动价 358元|358', '358', '149032525299428', '12311313', '15588996660', '天津市', '市辖县', '宁河县', '11', '货到付款', null);
INSERT INTO `ck_dingdan` VALUES ('19', null, null, null, '50', '耐美尔二代2盒活动价 358元|358', '358', '149032525973649', '12311313', '15588996660', '天津市', '市辖县', '宁河县', '11', '货到付款', null);
INSERT INTO `ck_dingdan` VALUES ('20', null, null, null, '50', '耐美尔二代2盒活动价 358元|358', '358', '149032532994136', '12311313', '15588996660', '', '', '', '11', '货到付款', null);
INSERT INTO `ck_dingdan` VALUES ('21', null, null, null, '50', '耐美尔二代2盒活动价 358元|358', '358', '149032549120741', '12311313', '15588996660', '', '', '', '11', '货到付款', null);
INSERT INTO `ck_dingdan` VALUES ('22', null, null, null, '50', '耐美尔二代2盒活动价 358元|358', '358', '149032552785250', '12311313', '15588996660', '', '', '', '11', '货到付款', null);
INSERT INTO `ck_dingdan` VALUES ('23', null, null, null, '50', '耐美尔二代2盒活动价 358元|358', '358', '149032554433329', '12311313', '15588996660', '', '', '', '11', '货到付款', null);
INSERT INTO `ck_dingdan` VALUES ('24', null, null, null, '50', '耐美尔二代2盒活动价 358元|358', '358', '149032556259367', '12311313', '15588996660', '', '', '', '11', '支付宝支付', null);
INSERT INTO `ck_dingdan` VALUES ('25', null, null, null, '50', '耐美尔二代2盒活动价 358元|358', '358', '149032557116479', '12311313', '15588996660', '', '', '', '11', '微信支付', null);
INSERT INTO `ck_dingdan` VALUES ('26', null, null, null, '50', '耐美尔二代2盒活动价 358元|358', '358', '149032557976544', '12311313', '15588996660', '', '', '', '11', '货到付款', null);

-- ----------------------------
-- Table structure for `ck_guanli`
-- ----------------------------
DROP TABLE IF EXISTS `ck_guanli`;
CREATE TABLE `ck_guanli` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT '50',
  `name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `jibie` varchar(100) DEFAULT '超级管理员',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_guanli
-- ----------------------------
INSERT INTO `ck_guanli` VALUES ('4', '20', '1509089337', '1509089337', '50', '张三', 'e10adc3949ba59abbe56e057f20f883e', '超级管理员');
INSERT INTO `ck_guanli` VALUES ('7', '20', '1509436325', '1509436325', '50', '123', '202cb962ac59075b964b07152d234b70', '宿舍管理员');
INSERT INTO `ck_guanli` VALUES ('8', '20', '1509436342', '1509436342', '50', '456', '250cf8b51c773f3f8dc8b4be867a9a02', '老师管理员');

-- ----------------------------
-- Table structure for `ck_info`
-- ----------------------------
DROP TABLE IF EXISTS `ck_info`;
CREATE TABLE `ck_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT '50',
  `title` varchar(100) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `def` text,
  `utime` varchar(20) DEFAULT NULL,
  `footer` text,
  `is_close` varchar(1) DEFAULT '0',
  `close_mark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_info
-- ----------------------------
INSERT INTO `ck_info` VALUES ('1', '5', '1453787516', '50', '爱海淘', '爱海淘', '爱海淘', '1453787907', '<p>© 2009-2016 <a href=\"http://www.ihtao.net/index.php\">爱海淘</a>, LLC. All rights reserved.\r\n &nbsp;</p>', '0', '网站升级中。。。。。。。。。。');

-- ----------------------------
-- Table structure for `ck_input`
-- ----------------------------
DROP TABLE IF EXISTS `ck_input`;
CREATE TABLE `ck_input` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moeny` varchar(200) DEFAULT NULL,
  `day` varchar(200) DEFAULT NULL,
  `li` varchar(200) DEFAULT NULL,
  `lv` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1556 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_input
-- ----------------------------
INSERT INTO `ck_input` VALUES ('38', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('39', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('40', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('41', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('42', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('43', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('44', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('45', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('46', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('47', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('48', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('49', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('50', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('51', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('52', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('53', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('54', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('55', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('56', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('57', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('58', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('59', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('60', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('61', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('62', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('63', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('64', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('65', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('66', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('67', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('68', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('69', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('70', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('71', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('72', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('73', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('74', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('75', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('76', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('77', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('78', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('79', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('80', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('81', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('82', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('83', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('84', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('85', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('86', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('87', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('88', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('89', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('90', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('91', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('92', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('93', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('94', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('95', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('96', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('97', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('98', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('99', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('100', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('101', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('102', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('103', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('104', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('105', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('106', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('107', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('108', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('109', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('110', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('111', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('112', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('113', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('114', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('115', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('116', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('117', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('118', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('119', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('120', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('121', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('122', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('123', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('124', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('125', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('126', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('127', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('128', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('129', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('130', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('131', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('132', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('133', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('134', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('135', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('136', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('137', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('138', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('139', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('140', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('141', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('142', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('143', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('144', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('145', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('146', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('147', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('148', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('149', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('150', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('151', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('152', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('153', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('154', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('155', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('156', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('157', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('158', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('159', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('160', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('161', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('162', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('163', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('164', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('165', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('166', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('167', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('168', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('169', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('170', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('171', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('172', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('173', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('174', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('175', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('176', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('177', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('178', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('179', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('180', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('181', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('182', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('183', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('184', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('185', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('186', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('187', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('188', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('189', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('190', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('191', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('192', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('193', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('194', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('195', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('196', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('197', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('198', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('199', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('200', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('201', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('202', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('203', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('204', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('205', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('206', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('207', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('208', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('209', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('210', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('211', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('212', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('213', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('214', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('215', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('216', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('217', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('218', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('219', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('220', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('221', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('222', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('223', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('224', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('225', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('226', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('227', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('228', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('229', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('230', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('231', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('232', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('233', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('234', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('235', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('236', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('237', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('238', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('239', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('240', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('241', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('242', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('243', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('244', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('245', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('246', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('247', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('248', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('249', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('250', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('251', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('252', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('253', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('254', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('255', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('256', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('257', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('258', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('259', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('260', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('261', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('262', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('263', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('264', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('265', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('266', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('267', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('268', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('269', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('270', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('271', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('272', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('273', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('274', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('275', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('276', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('277', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('278', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('279', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('280', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('281', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('282', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('283', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('284', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('285', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('286', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('287', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('288', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('289', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('290', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('291', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('292', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('293', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('294', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('295', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('296', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('297', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('298', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('299', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('300', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('301', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('302', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('303', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('304', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('305', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('306', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('307', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('308', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('309', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('310', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('311', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('312', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('313', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('314', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('315', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('316', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('317', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('318', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('319', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('320', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('321', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('322', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('323', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('324', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('325', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('326', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('327', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('328', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('329', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('330', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('331', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('332', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('333', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('334', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('335', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('336', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('337', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('338', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('339', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('340', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('341', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('342', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('343', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('344', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('345', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('346', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('347', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('348', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('349', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('350', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('351', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('352', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('353', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('354', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('355', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('356', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('357', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('358', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('359', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('360', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('361', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('362', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('363', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('364', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('365', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('366', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('367', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('368', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('369', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('370', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('371', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('372', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('373', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('374', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('375', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('376', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('377', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('378', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('379', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('380', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('381', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('382', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('383', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('384', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('385', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('386', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('387', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('388', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('389', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('390', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('391', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('392', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('393', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('394', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('395', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('396', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('397', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('398', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('399', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('400', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('401', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('402', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('403', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('404', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('405', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('406', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('407', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('408', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('409', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('410', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('411', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('412', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('413', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('414', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('415', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('416', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('417', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('418', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('419', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('420', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('421', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('422', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('423', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('424', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('425', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('426', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('427', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('428', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('429', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('430', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('431', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('432', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('433', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('434', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('435', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('436', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('437', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('438', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('439', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('440', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('441', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('442', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('443', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('444', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('445', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('446', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('447', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('448', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('449', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('450', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('451', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('452', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('453', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('454', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('455', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('456', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('457', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('458', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('459', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('460', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('461', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('462', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('463', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('464', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('465', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('466', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('467', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('468', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('469', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('470', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('471', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('472', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('473', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('474', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('475', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('476', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('477', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('478', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('479', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('480', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('481', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('482', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('483', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('484', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('485', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('486', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('487', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('488', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('489', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('490', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('491', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('492', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('493', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('494', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('495', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('496', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('497', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('498', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('499', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('500', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('501', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('502', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('503', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('504', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('505', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('506', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('507', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('508', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('509', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('510', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('511', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('512', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('513', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('514', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('515', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('516', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('517', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('518', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('519', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('520', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('521', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('522', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('523', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('524', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('525', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('526', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('527', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('528', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('529', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('530', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('531', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('532', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('533', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('534', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('535', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('536', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('537', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('538', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('539', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('540', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('541', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('542', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('543', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('544', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('545', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('546', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('547', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('548', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('549', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('550', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('551', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('552', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('553', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('554', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('555', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('556', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('557', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('558', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('559', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('560', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('561', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('562', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('563', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('564', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('565', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('566', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('567', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('568', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('569', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('570', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('571', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('572', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('573', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('574', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('575', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('576', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('577', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('578', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('579', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('580', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('581', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('582', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('583', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('584', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('585', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('586', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('587', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('588', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('589', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('590', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('591', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('592', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('593', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('594', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('595', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('596', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('597', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('598', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('599', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('600', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('601', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('602', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('603', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('604', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('605', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('606', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('607', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('608', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('609', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('610', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('611', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('612', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('613', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('614', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('615', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('616', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('617', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('618', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('619', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('620', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('621', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('622', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('623', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('624', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('625', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('626', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('627', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('628', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('629', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('630', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('631', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('632', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('633', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('634', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('635', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('636', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('637', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('638', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('639', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('640', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('641', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('642', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('643', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('644', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('645', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('646', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('647', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('648', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('649', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('650', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('651', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('652', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('653', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('654', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('655', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('656', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('657', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('658', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('659', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('660', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('661', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('662', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('663', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('664', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('665', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('666', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('667', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('668', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('669', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('670', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('671', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('672', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('673', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('674', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('675', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('676', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('677', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('678', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('679', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('680', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('681', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('682', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('683', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('684', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('685', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('686', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('687', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('688', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('689', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('690', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('691', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('692', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('693', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('694', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('695', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('696', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('697', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('698', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('699', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('700', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('701', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('702', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('703', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('704', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('705', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('706', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('707', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('708', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('709', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('710', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('711', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('712', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('713', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('714', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('715', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('716', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('717', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('718', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('719', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('720', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('721', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('722', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('723', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('724', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('725', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('726', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('727', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('728', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('729', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('730', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('731', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('732', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('733', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('734', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('735', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('736', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('737', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('738', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('739', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('740', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('741', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('742', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('743', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('744', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('745', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('746', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('747', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('748', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('749', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('750', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('751', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('752', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('753', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('754', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('755', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('756', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('757', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('758', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('759', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('760', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('761', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('762', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('763', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('764', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('765', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('766', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('767', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('768', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('769', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('770', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('771', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('772', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('773', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('774', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('775', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('776', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('777', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('778', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('779', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('780', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('781', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('782', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('783', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('784', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('785', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('786', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('787', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('788', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('789', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('790', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('791', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('792', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('793', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('794', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('795', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('796', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('797', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('798', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('799', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('800', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('801', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('802', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('803', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('804', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('805', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('806', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('807', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('808', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('809', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('810', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('811', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('812', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('813', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('814', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('815', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('816', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('817', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('818', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('819', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('820', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('821', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('822', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('823', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('824', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('825', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('826', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('827', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('828', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('829', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('830', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('831', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('832', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('833', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('834', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('835', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('836', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('837', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('838', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('839', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('840', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('841', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('842', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('843', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('844', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('845', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('846', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('847', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('848', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('849', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('850', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('851', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('852', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('853', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('854', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('855', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('856', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('857', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('858', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('859', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('860', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('861', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('862', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('863', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('864', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('865', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('866', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('867', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('868', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('869', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('870', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('871', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('872', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('873', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('874', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('875', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('876', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('877', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('878', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('879', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('880', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('881', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('882', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('883', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('884', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('885', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('886', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('887', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('888', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('889', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('890', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('891', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('892', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('893', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('894', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('895', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('896', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('897', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('898', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('899', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('900', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('901', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('902', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('903', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('904', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('905', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('906', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('907', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('908', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('909', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('910', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('911', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('912', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('913', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('914', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('915', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('916', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('917', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('918', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('919', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('920', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('921', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('922', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('923', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('924', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('925', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('926', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('927', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('928', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('929', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('930', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('931', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('932', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('933', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('934', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('935', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('936', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('937', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('938', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('939', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('940', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('941', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('942', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('943', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('944', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('945', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('946', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('947', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('948', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('949', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('950', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('951', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('952', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('953', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('954', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('955', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('956', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('957', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('958', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('959', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('960', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('961', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('962', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('963', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('964', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('965', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('966', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('967', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('968', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('969', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('970', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('971', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('972', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('973', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('974', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('975', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('976', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('977', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('978', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('979', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('980', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('981', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('982', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('983', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('984', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('985', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('986', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('987', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('988', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('989', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('990', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('991', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('992', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('993', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('994', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('995', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('996', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('997', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('998', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('999', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1000', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1001', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1002', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1003', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1004', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1005', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1006', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1007', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1008', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1009', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1010', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1011', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1012', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1013', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1014', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1015', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1016', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1017', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1018', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1019', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1020', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1021', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1022', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1023', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1024', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1025', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1026', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1027', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1028', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1029', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1030', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1031', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1032', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1033', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1034', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1035', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1036', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1037', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1038', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1039', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1040', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('1041', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('1042', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('1043', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('1044', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('1045', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('1046', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1047', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1048', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1049', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1050', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1051', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1052', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1053', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1054', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1055', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1056', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1057', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1058', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1059', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1060', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1061', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1062', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1063', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1064', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1065', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1066', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1067', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1068', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1069', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1070', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1071', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1072', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1073', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1074', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1075', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1076', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1077', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1078', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1079', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1080', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1081', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1082', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1083', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1084', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1085', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1086', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1087', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1088', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1089', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1090', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1091', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1092', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1093', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1094', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1095', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1096', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1097', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1098', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1099', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1100', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1101', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1102', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1103', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1104', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1105', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1106', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('1107', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('1108', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('1109', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('1110', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('1111', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('1112', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1113', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1114', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1115', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1116', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1117', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1118', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1119', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1120', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1121', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1122', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1123', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1124', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1125', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1126', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1127', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1128', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1129', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1130', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1131', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1132', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1133', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1134', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1135', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1136', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1137', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1138', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1139', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1140', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1141', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1142', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1143', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1144', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1145', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1146', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1147', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1148', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1149', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1150', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1151', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1152', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1153', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1154', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1155', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1156', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1157', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1158', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1159', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1160', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1161', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1162', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1163', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1164', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1165', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1166', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1167', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1168', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1169', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1170', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1171', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1172', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('1173', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('1174', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('1175', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('1176', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('1177', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('1178', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1179', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1180', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1181', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1182', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1183', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1184', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1185', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1186', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1187', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1188', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1189', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1190', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1191', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1192', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1193', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1194', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1195', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1196', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1197', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1198', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1199', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1200', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1201', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1202', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1203', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1204', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1205', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1206', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1207', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1208', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1209', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1210', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1211', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1212', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1213', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1214', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1215', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1216', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1217', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1218', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1219', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1220', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1221', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1222', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1223', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1224', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1225', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1226', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1227', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1228', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1229', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1230', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1231', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1232', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1233', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1234', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1235', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1236', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1237', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1238', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('1239', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('1240', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('1241', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('1242', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('1243', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('1244', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1245', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1246', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1247', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1248', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1249', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1250', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1251', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1252', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1253', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1254', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1255', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1256', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1257', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1258', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1259', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1260', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1261', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1262', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1263', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1264', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1265', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1266', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1267', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1268', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1269', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1270', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1271', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1272', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1273', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1274', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1275', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1276', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1277', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1278', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1279', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1280', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1281', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1282', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1283', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1284', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1285', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1286', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1287', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1288', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1289', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1290', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1291', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1292', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1293', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1294', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1295', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1296', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1297', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1298', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1299', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1300', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1301', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1302', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1303', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1304', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('1305', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('1306', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('1307', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('1308', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('1309', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('1310', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1311', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1312', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1313', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1314', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1315', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1316', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1317', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1318', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1319', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1320', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1321', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1322', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1323', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1324', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1325', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1326', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1327', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1328', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1329', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1330', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1331', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1332', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1333', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1334', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1335', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1336', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1337', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1338', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1339', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1340', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1341', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1342', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1343', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1344', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1345', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1346', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1347', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1348', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1349', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1350', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1351', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1352', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1353', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1354', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1355', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1356', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1357', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1358', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1359', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1360', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1361', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1362', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1363', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1364', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1365', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1366', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1367', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1368', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1369', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1370', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('1371', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('1372', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('1373', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('1374', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('1375', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('1376', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1377', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1378', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1379', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1380', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1381', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1382', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1383', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1384', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1385', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1386', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1387', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1388', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1389', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1390', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1391', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1392', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1393', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1394', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1395', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1396', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1397', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1398', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1399', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1400', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1401', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1402', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1403', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1404', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1405', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1406', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1407', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1408', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1409', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1410', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1411', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1412', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1413', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1414', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1415', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1416', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1417', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1418', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1419', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1420', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1421', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1422', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1423', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1424', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1425', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1426', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1427', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1428', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1429', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1430', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1431', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1432', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1433', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1434', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1435', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1436', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('1437', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('1438', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('1439', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('1440', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('1441', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('1442', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1443', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1444', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1445', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1446', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1447', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1448', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1449', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1450', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1451', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1452', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1453', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1454', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1455', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1456', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1457', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1458', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1459', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1460', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1461', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1462', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1463', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1464', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1465', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1466', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1467', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1468', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1469', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1470', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1471', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1472', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1473', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1474', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1475', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1476', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1477', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1478', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1479', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1480', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1481', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1482', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1483', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1484', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1485', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1486', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1487', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1488', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1489', '5025', '10', '15.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1490', '25000', '29', '631', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1491', '27500', '29', '694.10', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1492', '30000', '29', '757.20', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1493', '32500', '29', '820.30', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1494', '35000', '29', '883.40', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1495', '37500', '29', '946.50', '8.7034482758621');
INSERT INTO `ck_input` VALUES ('1496', '20000', '27', '451', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1497', '22000', '27', '496.10', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1498', '24000', '27', '541.20', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1499', '26000', '27', '586.30', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1500', '28000', '27', '631.40', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1501', '30000', '27', '676.50', '8.3518518518519');
INSERT INTO `ck_input` VALUES ('1502', '15000', '25', '306', '8.16');
INSERT INTO `ck_input` VALUES ('1503', '16500', '25', '336.60', '8.16');
INSERT INTO `ck_input` VALUES ('1504', '18000', '25', '367.20', '8.16');
INSERT INTO `ck_input` VALUES ('1505', '19500', '25', '397.80', '8.16');
INSERT INTO `ck_input` VALUES ('1506', '21000', '25', '428.40', '8.16');
INSERT INTO `ck_input` VALUES ('1507', '22500', '25', '459.00', '8.16');
INSERT INTO `ck_input` VALUES ('1508', '30000', '21', '510', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1509', '33000', '21', '561.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1510', '36000', '21', '612.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1511', '39000', '21', '663.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1512', '42000', '21', '714.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1513', '45000', '21', '765.00', '8.0952380952381');
INSERT INTO `ck_input` VALUES ('1514', '10000', '23', '183', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1515', '11000', '23', '201.30', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1516', '12000', '23', '219.60', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1517', '13000', '23', '237.90', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1518', '14000', '23', '256.20', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1519', '15000', '23', '274.50', '7.9565217391304');
INSERT INTO `ck_input` VALUES ('1520', '9000', '29', '206', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1521', '9900', '29', '226.60', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1522', '10800', '29', '247.20', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1523', '11700', '29', '267.80', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1524', '12600', '29', '288.40', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1525', '13500', '29', '309.00', '7.8927203065134');
INSERT INTO `ck_input` VALUES ('1526', '8000', '27', '169', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1527', '8800', '27', '185.90', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1528', '9600', '27', '202.80', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1529', '10400', '27', '219.70', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1530', '11200', '27', '236.60', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1531', '12000', '27', '253.50', '7.8240740740741');
INSERT INTO `ck_input` VALUES ('1532', '7000', '25', '136', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1533', '7700', '25', '149.60', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1534', '8400', '25', '163.20', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1535', '9100', '25', '176.80', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1536', '9800', '25', '190.40', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1537', '10500', '25', '204.00', '7.7714285714286');
INSERT INTO `ck_input` VALUES ('1538', '6000', '23', '105', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1539', '6600', '23', '115.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1540', '7200', '23', '126.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1541', '7800', '23', '136.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1542', '8400', '23', '147.00', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1543', '9000', '23', '157.50', '7.6086956521739');
INSERT INTO `ck_input` VALUES ('1544', '5000', '21', '79', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1545', '5500', '21', '86.90', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1546', '6000', '21', '94.80', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1547', '6500', '21', '102.70', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1548', '7000', '21', '110.60', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1549', '7500', '21', '118.50', '7.5238095238095');
INSERT INTO `ck_input` VALUES ('1550', '3350', '10', '10', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1551', '3685', '10', '11.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1552', '4020', '10', '12.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1553', '4355', '10', '13.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1554', '4690', '10', '14.00', '2.9850746268657');
INSERT INTO `ck_input` VALUES ('1555', '5025', '10', '15.00', '2.9850746268657');

-- ----------------------------
-- Table structure for `ck_koufen`
-- ----------------------------
DROP TABLE IF EXISTS `ck_koufen`;
CREATE TABLE `ck_koufen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT '50',
  `cid` int(11) DEFAULT NULL,
  `ctime` varchar(20) NOT NULL,
  `utime` varchar(20) NOT NULL,
  `louceng` varchar(100) DEFAULT NULL,
  `sushe` varchar(100) DEFAULT NULL,
  `chuangpu` varchar(100) DEFAULT NULL,
  `banji` varchar(100) DEFAULT NULL,
  `nianji` varchar(100) DEFAULT NULL,
  `xingming` varchar(100) DEFAULT NULL,
  `fenlei` varchar(100) DEFAULT NULL,
  `beizhu` text,
  `riqi` varchar(20) DEFAULT NULL,
  `yuanyin` varchar(100) DEFAULT NULL,
  `xuehao` varchar(100) DEFAULT NULL,
  `xingbie` varchar(100) DEFAULT NULL,
  `fen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_koufen
-- ----------------------------
INSERT INTO `ck_koufen` VALUES ('103', '50', '23', '1510329600', '1510329600', '6', '637', '左内下 2', '15', '高二', '郑金浩', '个人卫生', '', '1510329600', '床下有杂物、拉杆箱、整理箱等', '20161522', '1', '-1');
INSERT INTO `ck_koufen` VALUES ('102', '50', '23', '1510329600', '1510329600', '6', '637', '左内下 2', '15', '高二', '郑金浩', '个人卫生', '', '1510329600', '床铺上有杂物（如衣物、书本、钥匙、镜子等物品）', '20161522', '1', '-1');
INSERT INTO `ck_koufen` VALUES ('101', '50', '23', '1510366256', '1510366256', '6', '638', '右外上 9', '15', '高二', '谷腾杰', '宿舍卫生', '', '1510366256', '宿舍饲养小动物', '20161539', '1', '-10');
INSERT INTO `ck_koufen` VALUES ('100', '50', '23', '1510366256', '1510366256', '6', '638', '右外上 9', '15', '高二', '谷腾杰', '宿舍卫生', '', '1510366256', '洗手池上不干净或有杂物', '20161539', '1', '-1');
INSERT INTO `ck_koufen` VALUES ('99', '50', '23', '1510363233', '1510363233', '6', '637', '右内上 7', '15', '高二', '米乙丙', '宿舍卫生', '', '1510363233', '宿舍饲养小动物', '20161527', '1', '-10');
INSERT INTO `ck_koufen` VALUES ('98', '50', '23', '1510363233', '1510363233', '6', '637', '右内上 7', '15', '高二', '米乙丙', '宿舍卫生', '', '1510363233', '洗手池上不干净或有杂物', '20161527', '1', '-1');
INSERT INTO `ck_koufen` VALUES ('97', '50', '23', '1510194920', '1510194920', '2', '223', '左内下 2', '15', '高二', '闫紫琪', '宿舍卫生', '', '1510194920', '好的典型人物、事件（助人为乐、主动拾垃圾等）', '20161502', '2', '+1');
INSERT INTO `ck_koufen` VALUES ('96', '50', '23', '1510194920', '1510194920', '2', '223', '左内下 2', '15', '高二', '闫紫琪', '宿舍卫生', '', '1510194920', '宿舍饲养小动物', '20161502', '2', '-10');
INSERT INTO `ck_koufen` VALUES ('95', '50', '23', '1510194920', '1510194920', '2', '223', '左内下 2', '15', '高二', '闫紫琪', '宿舍卫生', '', '1510194920', '阳台厕所地面不干净', '20161502', '2', '-1');
INSERT INTO `ck_koufen` VALUES ('94', '50', '23', '1510156800', '1510156800', '6', '637', '中上 5', '15', '高二', '周亚龙', '个人纪律', '', '1510156800', '垃圾不入筐（桶）', '20161525', '1', '-5');
INSERT INTO `ck_koufen` VALUES ('93', '50', '23', '1510156800', '1510156800', '6', '637', '中上 5', '15', '高二', '周亚龙', '个人纪律', '', '1510156800', '进入宿舍楼内大喊大叫、追逐打闹等情况', '20161525', '1', '-5');
INSERT INTO `ck_koufen` VALUES ('92', '50', '23', '1510070400', '1510070400', '6', '637', '右内下 8', '15', '高二', '邢议博', '个人卫生', '', '1510070400', '床下有杂物、拉杆箱、整理箱等', '20161528', '1', '-1');
INSERT INTO `ck_koufen` VALUES ('91', '50', '23', '1510070400', '1510070400', '6', '637', '右内下 8', '15', '高二', '邢议博', '个人卫生', '', '1510070400', '床铺上有杂物（如衣物、书本、钥匙、镜子等物品）', '20161528', '1', '-1');
INSERT INTO `ck_koufen` VALUES ('104', '50', '23', '1510329600', '1510329600', '2', '223', '左内上 1', '15', '高二', '程一冉', '个人纪律', '', '1510329600', '垃圾不入筐（桶）', '20161501', '2', '-5');

-- ----------------------------
-- Table structure for `ck_link`
-- ----------------------------
DROP TABLE IF EXISTS `ck_link`;
CREATE TABLE `ck_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `links` varchar(200) DEFAULT NULL,
  `litpic` varchar(200) DEFAULT NULL,
  `cat` int(10) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  `num` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_link
-- ----------------------------

-- ----------------------------
-- Table structure for `ck_log`
-- ----------------------------
DROP TABLE IF EXISTS `ck_log`;
CREATE TABLE `ck_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(20) DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  `module` varchar(20) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_log
-- ----------------------------
INSERT INTO `ck_log` VALUES ('1', null, 'checkLogin', 'Index', '1473822244', 'update');
INSERT INTO `ck_log` VALUES ('2', null, 'checkLogin', 'Index', '1475118310', 'update');
INSERT INTO `ck_log` VALUES ('3', null, 'checkLogin', 'Index', '1475118778', 'update');
INSERT INTO `ck_log` VALUES ('4', null, 'checkLogin', 'Index', '1475892871', 'update');
INSERT INTO `ck_log` VALUES ('5', null, 'checkLogin', 'Index', '1475981724', 'update');
INSERT INTO `ck_log` VALUES ('6', 'cknet', 'save', 'Admin', '1475994151', 'insert');
INSERT INTO `ck_log` VALUES ('7', null, 'checkLogin', 'Index', '1476066068', 'update');
INSERT INTO `ck_log` VALUES ('8', null, 'checkLogin', 'Index', '1476153149', 'update');
INSERT INTO `ck_log` VALUES ('9', 'admin1', 'saveAdmin', 'Admin', '1476171193', 'insert');
INSERT INTO `ck_log` VALUES ('10', 'admin12', 'saveAdmin', 'Admin', '1476172115', 'update');
INSERT INTO `ck_log` VALUES ('11', 'admin1', 'saveAdmin', 'Admin', '1476172432', 'insert');
INSERT INTO `ck_log` VALUES ('12', null, 'checkLogin', 'Index', '1476172665', 'update');
INSERT INTO `ck_log` VALUES ('13', 'admin1', 'saveAdmin', 'Admin', '1476172680', 'update');
INSERT INTO `ck_log` VALUES ('14', 'admin1', 'saveAdmin', 'Admin', '1476172705', 'update');
INSERT INTO `ck_log` VALUES ('15', 'admin1', 'saveAdmin', 'Admin', '1476172757', 'update');
INSERT INTO `ck_log` VALUES ('16', 'admin1', 'saveAdmin', 'Admin', '1476172776', 'update');
INSERT INTO `ck_log` VALUES ('17', 'admin1', 'saveAdmin', 'Admin', '1476172792', 'update');
INSERT INTO `ck_log` VALUES ('18', 'admin1', 'saveAdmin', 'Admin', '1476172802', 'update');
INSERT INTO `ck_log` VALUES ('19', null, 'checkLogin', 'Index', '1476172829', 'update');
INSERT INTO `ck_log` VALUES ('20', null, 'checkLogin', 'Index', '1476173911', 'update');
INSERT INTO `ck_log` VALUES ('21', null, 'checkLogin', 'Index', '1477115516', 'update');
INSERT INTO `ck_log` VALUES ('22', null, 'checkLogin', 'Index', '1477115544', 'update');
INSERT INTO `ck_log` VALUES ('23', null, 'checkLogin', 'Index', '1484528492', 'update');
INSERT INTO `ck_log` VALUES ('24', null, 'checkLogin', 'Index', '1484616222', 'update');
INSERT INTO `ck_log` VALUES ('25', null, 'checkLogin', 'Index', '1484797621', 'update');
INSERT INTO `ck_log` VALUES ('26', null, 'checkLogin', 'Index', '1484883501', 'update');
INSERT INTO `ck_log` VALUES ('27', null, 'checkLogin', 'Index', '1484982940', 'update');
INSERT INTO `ck_log` VALUES ('28', null, 'checkLogin', 'Index', '1484987743', 'update');
INSERT INTO `ck_log` VALUES ('29', null, 'checkLogin', 'Index', '1484987803', 'update');
INSERT INTO `ck_log` VALUES ('30', null, 'checkLogin', 'Index', '1485218706', 'update');
INSERT INTO `ck_log` VALUES ('31', null, 'checkLogin', 'Index', '1485236454', 'update');
INSERT INTO `ck_log` VALUES ('32', null, 'checkLogin', 'Index', '1485432724', 'update');
INSERT INTO `ck_log` VALUES ('33', null, 'checkLogin', 'Index', '1485596871', 'update');
INSERT INTO `ck_log` VALUES ('34', null, 'checkLogin', 'Index', '1485684203', 'update');
INSERT INTO `ck_log` VALUES ('35', null, 'checkLogin', 'Index', '1485946447', 'update');
INSERT INTO `ck_log` VALUES ('36', null, 'checkLogin', 'Index', '1486531698', 'update');
INSERT INTO `ck_log` VALUES ('37', 'admin', 'save', 'Admin', '1486541702', 'update');
INSERT INTO `ck_log` VALUES ('38', null, 'checkLogin', 'Index', '1486542100', 'update');
INSERT INTO `ck_log` VALUES ('39', null, 'checkLogin', 'Index', '1486542295', 'update');
INSERT INTO `ck_log` VALUES ('40', null, 'checkLogin', 'Index', '1486543163', 'update');
INSERT INTO `ck_log` VALUES ('41', null, 'checkLogin', 'Index', '1486601362', 'update');
INSERT INTO `ck_log` VALUES ('42', null, 'checkLogin', 'Index', '1486604848', 'update');
INSERT INTO `ck_log` VALUES ('43', null, 'checkLogin', 'Index', '1486695758', 'update');
INSERT INTO `ck_log` VALUES ('44', 'admin', 'save', 'Admin', '1486717064', 'update');
INSERT INTO `ck_log` VALUES ('45', null, 'checkLogin', 'Index', '1486717141', 'update');
INSERT INTO `ck_log` VALUES ('46', null, 'checkLogin', 'Index', '1486781182', 'update');
INSERT INTO `ck_log` VALUES ('47', null, 'checkLogin', 'Index', '1486783584', 'update');
INSERT INTO `ck_log` VALUES ('48', null, 'checkLogin', 'Index', '1486783887', 'update');
INSERT INTO `ck_log` VALUES ('49', null, 'checkLogin', 'Index', '1486784153', 'update');
INSERT INTO `ck_log` VALUES ('50', null, 'checkLogin', 'Index', '1486951575', 'update');
INSERT INTO `ck_log` VALUES ('51', null, 'checkLogin', 'Index', '1486952269', 'update');
INSERT INTO `ck_log` VALUES ('52', null, 'checkLogin', 'Index', '1486953748', 'update');
INSERT INTO `ck_log` VALUES ('53', null, 'checkLogin', 'Index', '1486953780', 'update');
INSERT INTO `ck_log` VALUES ('54', null, 'checkLogin', 'Index', '1486954045', 'update');
INSERT INTO `ck_log` VALUES ('55', null, 'checkLogin', 'Index', '1486954414', 'update');
INSERT INTO `ck_log` VALUES ('56', null, 'checkLogin', 'Index', '1486966171', 'update');
INSERT INTO `ck_log` VALUES ('57', null, 'checkLogin', 'Index', '1486966611', 'update');
INSERT INTO `ck_log` VALUES ('58', '儿女', 'save', 'Admin', '1486967216', 'insert');
INSERT INTO `ck_log` VALUES ('59', '为', 'save', 'Admin', '1486967237', 'insert');
INSERT INTO `ck_log` VALUES ('60', null, 'checkLogin', 'Index', '1487034931', 'update');
INSERT INTO `ck_log` VALUES ('61', 'cknet', 'checkLogin', 'Index', '1487034932', 'update');
INSERT INTO `ck_log` VALUES ('62', null, 'checkLogin', 'Index', '1487035440', 'update');
INSERT INTO `ck_log` VALUES ('63', null, 'checkLogin', 'Index', '1487036865', 'update');
INSERT INTO `ck_log` VALUES ('64', null, 'checkLogin', 'Index', '1487294958', 'update');
INSERT INTO `ck_log` VALUES ('65', null, 'checkLogin', 'Index', '1488502840', 'update');
INSERT INTO `ck_log` VALUES ('66', null, 'checkLogin', 'Index', '1488792678', 'update');
INSERT INTO `ck_log` VALUES ('67', null, 'checkLogin', 'Index', '1488873651', 'update');
INSERT INTO `ck_log` VALUES ('68', null, 'checkLogin', 'Index', '1488938543', 'update');
INSERT INTO `ck_log` VALUES ('69', null, 'checkLogin', 'Index', '1488965127', 'update');
INSERT INTO `ck_log` VALUES ('70', null, 'checkLogin', 'Index', '1489110572', 'update');
INSERT INTO `ck_log` VALUES ('71', null, 'checkLogin', 'Index', '1489370231', 'update');
INSERT INTO `ck_log` VALUES ('72', null, 'checkLogin', 'Index', '1489376827', 'update');
INSERT INTO `ck_log` VALUES ('73', null, 'checkLogin', 'Index', '1489798384', 'update');
INSERT INTO `ck_log` VALUES ('74', null, 'checkLogin', 'Index', '1490063105', 'update');
INSERT INTO `ck_log` VALUES ('75', null, 'checkLogin', 'Index', '1490147579', 'update');
INSERT INTO `ck_log` VALUES ('76', null, 'checkLogin', 'Index', '1490230329', 'update');
INSERT INTO `ck_log` VALUES ('77', null, 'checkLogin', 'Index', '1490249916', 'update');
INSERT INTO `ck_log` VALUES ('78', null, 'checkLogin', 'Index', '1490325193', 'update');
INSERT INTO `ck_log` VALUES ('79', null, 'checkLogin', 'Index', '1490342705', 'update');
INSERT INTO `ck_log` VALUES ('80', null, 'checkLogin', 'Index', '1490342753', 'update');
INSERT INTO `ck_log` VALUES ('81', null, 'checkLogin', 'Index', '1490342828', 'update');
INSERT INTO `ck_log` VALUES ('82', null, 'checkLogin', 'Index', '1490343024', 'update');
INSERT INTO `ck_log` VALUES ('83', null, 'checkLogin', 'Index', '1490347547', 'update');
INSERT INTO `ck_log` VALUES ('84', null, 'checkLogin', 'Index', '1490347817', 'update');
INSERT INTO `ck_log` VALUES ('85', null, 'checkLogin', 'Index', '1490403550', 'update');
INSERT INTO `ck_log` VALUES ('86', null, 'checkLogin', 'Index', '1490403865', 'update');
INSERT INTO `ck_log` VALUES ('87', null, 'checkLogin', 'Index', '1490403881', 'update');
INSERT INTO `ck_log` VALUES ('88', null, 'checkLogin', 'Index', '1490403919', 'update');
INSERT INTO `ck_log` VALUES ('89', null, 'checkLogin', 'Index', '1490750713', 'update');
INSERT INTO `ck_log` VALUES ('90', null, 'checkLogin', 'Index', '1490753328', 'update');
INSERT INTO `ck_log` VALUES ('91', null, 'checkLogin', 'Index', '1490837885', 'update');
INSERT INTO `ck_log` VALUES ('92', null, 'checkLogin', 'Index', '1490923687', 'update');
INSERT INTO `ck_log` VALUES ('93', null, 'checkLogin', 'Index', '1491018256', 'update');
INSERT INTO `ck_log` VALUES ('94', null, 'checkLogin', 'Index', '1491028911', 'update');
INSERT INTO `ck_log` VALUES ('95', null, 'checkLogin', 'Index', '1491354781', 'update');
INSERT INTO `ck_log` VALUES ('96', null, 'checkLogin', 'Index', '1491443172', 'update');
INSERT INTO `ck_log` VALUES ('97', null, 'checkLogin', 'Index', '1491448313', 'update');
INSERT INTO `ck_log` VALUES ('98', null, 'checkLogin', 'Index', '1491461905', 'update');
INSERT INTO `ck_log` VALUES ('99', null, 'checkLogin', 'Index', '1491528762', 'update');
INSERT INTO `ck_log` VALUES ('100', null, 'checkLogin', 'Index', '1491528899', 'update');
INSERT INTO `ck_log` VALUES ('101', null, 'checkLogin', 'Index', '1491531771', 'update');
INSERT INTO `ck_log` VALUES ('102', null, 'checkLogin', 'Index', '1491531921', 'update');
INSERT INTO `ck_log` VALUES ('103', null, 'checkLogin', 'Index', '1491532014', 'update');
INSERT INTO `ck_log` VALUES ('104', null, 'checkLogin', 'Index', '1491532185', 'update');
INSERT INTO `ck_log` VALUES ('105', null, 'checkLogin', 'Index', '1491532401', 'update');
INSERT INTO `ck_log` VALUES ('106', null, 'checkLogin', 'Index', '1491532539', 'update');
INSERT INTO `ck_log` VALUES ('107', null, 'checkLogin', 'Index', '1491533756', 'update');
INSERT INTO `ck_log` VALUES ('108', null, 'checkLogin', 'Index', '1491787308', 'update');
INSERT INTO `ck_log` VALUES ('109', null, 'checkLogin', 'Index', '1491808562', 'update');
INSERT INTO `ck_log` VALUES ('110', null, 'checkLogin', 'Index', '1491989418', 'update');
INSERT INTO `ck_log` VALUES ('111', null, 'checkLogin', 'Index', '1492048076', 'update');
INSERT INTO `ck_log` VALUES ('112', null, 'checkLogin', 'Index', '1492753254', 'update');
INSERT INTO `ck_log` VALUES ('113', null, 'checkLogin', 'Index', '1492753369', 'update');
INSERT INTO `ck_log` VALUES ('114', null, 'checkLogin', 'Index', '1493779149', 'update');
INSERT INTO `ck_log` VALUES ('115', null, 'checkLogin', 'Index', '1493947108', 'update');
INSERT INTO `ck_log` VALUES ('116', null, 'checkLogin', 'Index', '1496797589', 'update');
INSERT INTO `ck_log` VALUES ('117', null, 'checkLogin', 'Index', '1496975135', 'update');
INSERT INTO `ck_log` VALUES ('118', null, 'checkLogin', 'Index', '1499417716', 'update');
INSERT INTO `ck_log` VALUES ('119', null, 'checkLogin', 'Index', '1501134108', 'update');

-- ----------------------------
-- Table structure for `ck_menu`
-- ----------------------------
DROP TABLE IF EXISTS `ck_menu`;
CREATE TABLE `ck_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `type` varchar(10) DEFAULT 'admin',
  `icon` varchar(20) DEFAULT NULL,
  `pid` int(10) unsigned DEFAULT '0',
  `sort` int(10) unsigned DEFAULT '0',
  `url` char(255) DEFAULT NULL,
  `hide` tinyint(1) unsigned DEFAULT '0',
  `tip` varchar(255) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `is_dev` tinyint(1) unsigned DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_menu
-- ----------------------------
INSERT INTO `ck_menu` VALUES ('1', '首页', 'admin', 'home', '0', '0', 'Main/index', '0', '', '', '0', '0');
INSERT INTO `ck_menu` VALUES ('2', '系统', 'admin', 'laptop', '0', '0', 'Config/index', '0', '', '', '0', '0');
INSERT INTO `ck_menu` VALUES ('3', '内容', 'admin', 'list', '0', '22', 'Category/index', '0', '', '', '0', '0');
INSERT INTO `ck_menu` VALUES ('4', '用户', 'admin', 'user', '0', '33', 'Admin/index', '0', '', '', '0', '0');
INSERT INTO `ck_menu` VALUES ('5', '运营', 'admin', 'th', '0', '44', 'Link/index', '0', '', '', '0', '0');
INSERT INTO `ck_menu` VALUES ('6', '扩展', 'admin', 'tags', '0', '55', 'Addons/index', '0', '', '', '0', '0');
INSERT INTO `ck_menu` VALUES ('21', '友链管理', 'admin', 'link', '5', '0', 'Link/index', '0', '', '运营管理', '0', '0');
INSERT INTO `ck_menu` VALUES ('7', '更新缓存', 'admin', 'refresh', '1', '0', 'Main/cleartemp', '0', '', '后台首页', '0', '0');
INSERT INTO `ck_menu` VALUES ('8', '配置管理', 'admin', 'cog', '2', '0', 'Config/index', '0', '', '系统配置', '0', '0');
INSERT INTO `ck_menu` VALUES ('9', '菜单管理', 'admin', 'book', '2', '0', 'Menu/index', '0', '', '系统配置', '0', '0');
INSERT INTO `ck_menu` VALUES ('31', '模版管理', 'admin', 'newspaper-o', '2', '0', 'Site/index', '0', '', '系统配置', '0', '0');
INSERT INTO `ck_menu` VALUES ('11', '数据库管理', 'admin', 'exchange', '2', '0', 'Database/index', '0', '', '数据库管理', '0', '0');
INSERT INTO `ck_menu` VALUES ('12', '数据管理', 'admin', 'table', '2', '0', 'Data/index', '0', '', '数据库管理', '0', '0');
INSERT INTO `ck_menu` VALUES ('29', '字段管理', 'admin', '', '3', '0', 'Attribute/index', '1', '', '内容配置', '0', '0');
INSERT INTO `ck_menu` VALUES ('14', '栏目管理', 'admin', 'list-ol', '3', '0', 'Category/index', '0', '', '内容配置', '0', '0');
INSERT INTO `ck_menu` VALUES ('15', '模型管理', 'admin', 'th-list', '3', '0', 'Module/index', '0', '', '内容配置', '0', '0');
INSERT INTO `ck_menu` VALUES ('16', '管理员管理', 'admin', 'user', '4', '0', 'Admin/index', '0', '', '管理员管理', '0', '0');
INSERT INTO `ck_menu` VALUES ('17', '组管理', 'admin', 'users', '4', '0', 'Group/index', '0', '', '管理员管理', '0', '0');
INSERT INTO `ck_menu` VALUES ('22', '广告管理', 'admin', 'cc', '5', '0', 'Banner/index', '0', '', '运营管理', '0', '0');
INSERT INTO `ck_menu` VALUES ('23', '插件列表', 'admin', 'usb', '6', '0', 'admin/addons/index', '0', '', '插件管理', '0', '0');
INSERT INTO `ck_menu` VALUES ('25', '自定义表单', 'admin', 'object-group', '5', '0', 'admin/form/index', '1', '', '运营管理', '0', '0');
INSERT INTO `ck_menu` VALUES ('30', '修改密码', 'admin', '', '1', '0', 'Main/changePass', '1', '', '', '1', '0');
INSERT INTO `ck_menu` VALUES ('27', '主题管理', 'admin', 'heartbeat', '2', '0', 'Themes/index', '0', '', '系统配置', '0', '0');
INSERT INTO `ck_menu` VALUES ('34', '分类管理', 'admin', 'sitemap', '5', '0', 'Sort/index', '0', '', '运营管理', '0', '0');
INSERT INTO `ck_menu` VALUES ('36', 'robots编辑', 'admin', 'simplybuilt', '2', '0', 'Main/robots', '0', '', '系统配置', '1', '0');

-- ----------------------------
-- Table structure for `ck_module`
-- ----------------------------
DROP TABLE IF EXISTS `ck_module`;
CREATE TABLE `ck_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `table_name` varchar(50) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `extends` varchar(20) DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_module
-- ----------------------------
INSERT INTO `ck_module` VALUES ('9', '分类模型', 'sort', '1429865364', '', 'Sort', null, '1');
INSERT INTO `ck_module` VALUES ('12', '单页模型', 'pages', '1430378430', '', 'Pages', null, '1');
INSERT INTO `ck_module` VALUES ('14', '基础模型', 'base', '1431419228', '', 'News', null, '0');
INSERT INTO `ck_module` VALUES ('15', '文章模型', 'news', '1431419309', '14', 'News', null, '1');
INSERT INTO `ck_module` VALUES ('36', '学生信息', 'xuesheng', '1508737375', '', 'News', null, '1');
INSERT INTO `ck_module` VALUES ('33', '管理员', 'guanli', '1508722480', '', 'News', null, '1');
INSERT INTO `ck_module` VALUES ('34', '宿舍量化标准', 'biaozhun', '1508729222', '', 'News', null, '1');
INSERT INTO `ck_module` VALUES ('39', '扣分记录', 'koufen', '1508744765', '36', 'News', null, '1');
INSERT INTO `ck_module` VALUES ('40', '值日生', 'zhiri', '1509692533', '36', 'News', null, '1');
INSERT INTO `ck_module` VALUES ('43', '重置学期', 'chongzhi', '1510192667', '', 'News', null, '1');

-- ----------------------------
-- Table structure for `ck_nav`
-- ----------------------------
DROP TABLE IF EXISTS `ck_nav`;
CREATE TABLE `ck_nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT '50',
  `sort` varchar(100) DEFAULT NULL,
  `pid` varchar(100) DEFAULT NULL,
  `path` varchar(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `action` varchar(100) DEFAULT 'news-about',
  `cate_id` varchar(100) DEFAULT NULL,
  `custom` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_nav
-- ----------------------------
INSERT INTO `ck_nav` VALUES ('3', null, null, '1484886585', '50', '公司介绍', '0', '0', '1', 'pages', '31', null);
INSERT INTO `ck_nav` VALUES ('4', null, null, '1484886674', '50', '企业文化', '0', '0', '1', 'pages', '32', null);
INSERT INTO `ck_nav` VALUES ('5', null, null, '1484886709', '50', '企业荣誉', '0', '0', '1', 'pages', '33', null);

-- ----------------------------
-- Table structure for `ck_news`
-- ----------------------------
DROP TABLE IF EXISTS `ck_news`;
CREATE TABLE `ck_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT '50',
  `seo_title` varchar(100) DEFAULT NULL,
  `seo_keyword` varchar(100) DEFAULT NULL,
  `seo_def` text,
  `title` varchar(100) DEFAULT NULL,
  `content` text,
  `utime` varchar(20) DEFAULT NULL,
  `litpic` varchar(100) DEFAULT NULL,
  `sort` varchar(100) DEFAULT NULL,
  `321` varchar(100) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_news
-- ----------------------------

-- ----------------------------
-- Table structure for `ck_pages`
-- ----------------------------
DROP TABLE IF EXISTS `ck_pages`;
CREATE TABLE `ck_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT '50',
  `content` text,
  `utime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_pages
-- ----------------------------
INSERT INTO `ck_pages` VALUES ('1', '4', '1430378471', '50', '<p>单页</p>', null);
INSERT INTO `ck_pages` VALUES ('2', '36', '1485779204', '50', '<p>123</p>', '1485779204');
INSERT INTO `ck_pages` VALUES ('3', '37', '1485779224', '50', '<p>312</p>', '1485779224');

-- ----------------------------
-- Table structure for `ck_pici`
-- ----------------------------
DROP TABLE IF EXISTS `ck_pici`;
CREATE TABLE `ck_pici` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT '50',
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_pici
-- ----------------------------
INSERT INTO `ck_pici` VALUES ('1', '43', '1486711319', '1486711263', '50', '2017年春');
INSERT INTO `ck_pici` VALUES ('2', '43', '1486711276', '1486711276', '50', '2016年秋');
INSERT INTO `ck_pici` VALUES ('3', '43', '1486711286', '1486711286', '50', '2016年春');
INSERT INTO `ck_pici` VALUES ('4', '43', '1486711296', '1486711296', '50', '2015年秋');
INSERT INTO `ck_pici` VALUES ('5', '43', '1486711309', '1486711309', '50', '2015年春');

-- ----------------------------
-- Table structure for `ck_pics`
-- ----------------------------
DROP TABLE IF EXISTS `ck_pics`;
CREATE TABLE `ck_pics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `pics` varchar(200) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_pics
-- ----------------------------

-- ----------------------------
-- Table structure for `ck_school`
-- ----------------------------
DROP TABLE IF EXISTS `ck_school`;
CREATE TABLE `ck_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT '50',
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_school
-- ----------------------------
INSERT INTO `ck_school` VALUES ('1', '42', '1486711152', '1486711152', '50', '山东理工大学');
INSERT INTO `ck_school` VALUES ('2', '42', '1486711165', '1486711165', '50', '青岛理工大学');
INSERT INTO `ck_school` VALUES ('3', '42', '1486711176', '1486711176', '50', '中国海洋大学');
INSERT INTO `ck_school` VALUES ('4', '42', '1486711191', '1486711191', '50', '齐鲁工业大学');
INSERT INTO `ck_school` VALUES ('5', '42', '1486711201', '1486711201', '50', '山东师范大学');
INSERT INTO `ck_school` VALUES ('6', '42', '1486711211', '1486711211', '50', '潍坊医学院');
INSERT INTO `ck_school` VALUES ('7', '42', '1486711221', '1486711221', '50', '电子科技大学');
INSERT INTO `ck_school` VALUES ('8', '42', '1486711233', '1486711233', '50', '四川农业大学');

-- ----------------------------
-- Table structure for `ck_send`
-- ----------------------------
DROP TABLE IF EXISTS `ck_send`;
CREATE TABLE `ck_send` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `action` varchar(20) DEFAULT NULL,
  `is_check` int(1) DEFAULT '0',
  `days` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_send
-- ----------------------------
INSERT INTO `ck_send` VALUES ('29', '15764260565', '1505111009', '1202', null, 'login', '0', '2017-09-11');
INSERT INTO `ck_send` VALUES ('30', '15764260565', '1505111073', '4480', null, 'login', '0', '2017-09-11');
INSERT INTO `ck_send` VALUES ('31', '15764260565', '1505111116', '1080', null, 'login', '0', '2017-09-11');
INSERT INTO `ck_send` VALUES ('32', '15764260565', '1505111407', '8931', null, 'login', '0', '2017-09-11');
INSERT INTO `ck_send` VALUES ('33', '15764260565', '1505111428', '1808', null, 'login', '0', '2017-09-11');
INSERT INTO `ck_send` VALUES ('34', '15764260565', '1505111602', '7852', null, 'login', '0', '2017-09-11');
INSERT INTO `ck_send` VALUES ('35', '15764260565', '1505111602', '7961', null, 'login', '0', '2017-09-11');
INSERT INTO `ck_send` VALUES ('36', '15764260565', '1505111661', '4864', null, 'login', '0', '2017-09-11');
INSERT INTO `ck_send` VALUES ('37', '15764260565', '1505111842', '4617', null, 'login', '0', '2017-09-11');
INSERT INTO `ck_send` VALUES ('38', '15764260565', '1505111842', '1302', null, 'login', '0', '2017-09-11');
INSERT INTO `ck_send` VALUES ('39', '15764260565', '1505114009', '2418', null, 'login', '0', '2017-09-11');
INSERT INTO `ck_send` VALUES ('40', '15764260565', '1505114009', '4316', null, 'login', '0', '2017-09-11');
INSERT INTO `ck_send` VALUES ('41', '15764260565', '1505182856', '2138', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('42', '15764260565', '1505182856', '9772', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('43', '15764260565', '1505182896', '4797', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('44', '15764260565', '1505182898', '8878', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('45', '15764260565', '1505183034', '7731', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('46', '15764260565', '1505183034', '2761', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('47', '15764260565', '1505183181', '9437', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('48', '15764260565', '1505183181', '5240', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('49', '15764260565', '1505183432', '6747', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('50', '15764260565', '1505183432', '8881', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('51', '15764260565', '1505183502', '5055', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('52', '15764260565', '1505183502', '5332', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('53', '15764260565', '1505183628', '3189', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('54', '15764260565', '1505183629', '5389', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('55', '15764260565', '1505183683', '4745', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('56', '15764260565', '1505183683', '4500', null, 'login', '1', '2017-09-12');
INSERT INTO `ck_send` VALUES ('57', '15764260565', '1505183732', '7142', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('58', '15764260565', '1505183732', '8492', null, 'login', '1', '2017-09-12');
INSERT INTO `ck_send` VALUES ('59', '15764260565', '1505183806', '9455', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('60', '15764260565', '1505183806', '4139', null, 'login', '1', '2017-09-12');
INSERT INTO `ck_send` VALUES ('61', '15764260565', '1505183967', '3505', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('62', '15764260565', '1505183969', '1945', null, 'login', '1', '2017-09-12');
INSERT INTO `ck_send` VALUES ('63', '1', '1505183972', '9930', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('64', '15764260565', '1505183978', '4185', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('65', '15965462356', '1505184000', '5542', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('66', '15465862123', '1505184028', '7943', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('67', '15465862123', '1505184029', '4038', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('68', '158956323245', '1505184127', '2110', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('69', '15895632324', '1505184129', '2088', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('70', '15895632324', '1505184131', '1787', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('71', '158956323245', '1505184131', '5649', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('72', '15895632324', '1505184136', '7572', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('73', '158956323245', '1505184136', '2333', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('74', '15764260565', '1505184222', '4769', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('75', '15764260565', '1505184223', '6059', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('76', '15965462356', '1505184254', '2428', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('77', '15965462356', '1505184256', '8600', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('78', '15764260565', '1505184256', '9585', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('79', '15764260565', '1505184260', '8708', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('80', '15965462356', '1505184260', '5635', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('81', '15764260565', '1505184328', '3085', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('82', '15965462356', '1505184328', '1450', null, 'login', '1', '2017-09-12');
INSERT INTO `ck_send` VALUES ('83', '15965462356', '1505184434', '2529', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('84', '15965462356', '1505184438', '3409', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('85', '15965462356', '1505184441', '4327', null, 'login', '0', '2017-09-12');
INSERT INTO `ck_send` VALUES ('86', '15965462356', '1505184481', '5336', null, 'login', '1', '2017-09-12');
INSERT INTO `ck_send` VALUES ('87', '15764260565', '1505189520', '5930', null, 'login', '1', '2017-09-12');
INSERT INTO `ck_send` VALUES ('88', '13395325650', '1505192522', '3780', null, 'login', '1', '2017-09-12');
INSERT INTO `ck_send` VALUES ('89', '15764260565', '1505272040', '5359', null, 'login', '1', '2017-09-13');
INSERT INTO `ck_send` VALUES ('90', '15764260565', '1505282060', '7522', null, 'login', '0', '2017-09-13');
INSERT INTO `ck_send` VALUES ('91', '15764260565', '1505293295', '4660', null, 'login', '1', '2017-09-13');
INSERT INTO `ck_send` VALUES ('92', '15764260565', '1505293303', '3144', null, 'login', '0', '2017-09-13');
INSERT INTO `ck_send` VALUES ('93', '13395325650', '1505293461', '5675', null, 'login', '0', '2017-09-13');
INSERT INTO `ck_send` VALUES ('94', '13395325650', '1505293530', '9145', null, 'login', '1', '2017-09-13');
INSERT INTO `ck_send` VALUES ('95', '15764260565', '1505299000', '7979', null, 'login', '1', '2017-09-13');
INSERT INTO `ck_send` VALUES ('96', '18653252352', '1505446706', '4117', null, 'login', '0', '2017-09-15');
INSERT INTO `ck_send` VALUES ('97', '18653252351', '1505446722', '9319', null, 'login', '1', '2017-09-15');
INSERT INTO `ck_send` VALUES ('98', '18653252352', '1505446722', '4541', null, 'login', '0', '2017-09-15');
INSERT INTO `ck_send` VALUES ('99', '18653252352', '1505446725', '2435', null, 'login', '0', '2017-09-15');
INSERT INTO `ck_send` VALUES ('100', '18653252351', '1505446725', '6939', null, 'login', '0', '2017-09-15');
INSERT INTO `ck_send` VALUES ('101', '15764260565', '1505451754', '9495', null, 'login', '0', '2017-09-15');
INSERT INTO `ck_send` VALUES ('102', '15764260565', '1505451831', '4243', null, 'login', '1', '2017-09-15');
INSERT INTO `ck_send` VALUES ('103', '17660621733', '1505523485', '3542', null, 'login', '1', '2017-09-16');
INSERT INTO `ck_send` VALUES ('104', '15764260565', '1505542812', '6349', null, 'login', '1', '2017-09-16');
INSERT INTO `ck_send` VALUES ('105', '15764260565', '1505542930', '5724', null, 'login', '1', '2017-09-16');
INSERT INTO `ck_send` VALUES ('106', '15764260565', '1505554815', '4072', null, 'login', '1', '2017-09-16');
INSERT INTO `ck_send` VALUES ('107', '13395325650', '1505715048', '1629', null, 'login', '1', '2017-09-18');

-- ----------------------------
-- Table structure for `ck_sms_log`
-- ----------------------------
DROP TABLE IF EXISTS `ck_sms_log`;
CREATE TABLE `ck_sms_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `remark` text,
  `code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_sms_log
-- ----------------------------
INSERT INTO `ck_sms_log` VALUES ('12', '15588996950', '2017-06-07', 'register', '1496808019', '验证码为765638,客服绝对不会索取此验证码，切勿告知他人,请在页面中输入以完成验证。如有问题请致电0851-86816500', '765638');
INSERT INTO `ck_sms_log` VALUES ('13', '15588996950', '2017-06-07', 'register', '1496808083', '验证码为353719,客服绝对不会索取此验证码，切勿告知他人,请在页面中输入以完成验证。如有问题请致电0851-86816500', '353719');
INSERT INTO `ck_sms_log` VALUES ('14', '15588996950', '2017-06-07', 'register', '1496808106', '验证码为555848,客服绝对不会索取此验证码，切勿告知他人,请在页面中输入以完成验证。如有问题请致电0851-86816500', '555848');
INSERT INTO `ck_sms_log` VALUES ('15', '17667933814', '2017-06-07', 'register', '1496812532', '验证码为643698,客服绝对不会索取此验证码，切勿告知他人,请在页面中输入以完成验证。如有问题请致电0851-86816500', '643698');

-- ----------------------------
-- Table structure for `ck_sort`
-- ----------------------------
DROP TABLE IF EXISTS `ck_sort`;
CREATE TABLE `ck_sort` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT '50',
  `sort` varchar(100) DEFAULT NULL,
  `pid` varchar(100) DEFAULT NULL,
  `path` varchar(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_sort
-- ----------------------------

-- ----------------------------
-- Table structure for `ck_student`
-- ----------------------------
DROP TABLE IF EXISTS `ck_student`;
CREATE TABLE `ck_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT '50',
  `name` varchar(100) DEFAULT NULL,
  `number` varchar(100) DEFAULT NULL,
  `card` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT '在读-毕业',
  `pici` varchar(100) DEFAULT NULL,
  `cengci` varchar(100) DEFAULT '一次性-多次',
  `zhuanye` varchar(100) DEFAULT NULL,
  `school` varchar(100) DEFAULT NULL,
  `zhuangtai` varchar(100) DEFAULT '在读-暂停-退学-毕业',
  `xingshi` varchar(100) DEFAULT '函授-脱产',
  `phone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_student
-- ----------------------------
INSERT INTO `ck_student` VALUES ('1', '41', '1486711570', '1486711570', '50', '张三路', '0001', '370303033333557799', '在读', '1', '一次性', '3', '5', '退学', '函授', '18660224466');
INSERT INTO `ck_student` VALUES ('2', '41', '1486711650', '1486711650', '50', '李四分', '0002', '25577966644122', '毕业', '5', '多次', '5', '3', '暂停', '脱产', '18660224433');

-- ----------------------------
-- Table structure for `ck_xuesheng`
-- ----------------------------
DROP TABLE IF EXISTS `ck_xuesheng`;
CREATE TABLE `ck_xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT '50',
  `louceng` varchar(100) DEFAULT NULL,
  `nianji` varchar(100) DEFAULT NULL,
  `banji` varchar(100) DEFAULT NULL,
  `sushe` varchar(100) DEFAULT NULL,
  `chuangpu` varchar(100) DEFAULT NULL,
  `xingming` varchar(100) DEFAULT NULL,
  `xingbie` varchar(100) DEFAULT NULL,
  `xuehao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_xuesheng
-- ----------------------------
INSERT INTO `ck_xuesheng` VALUES ('256', '22', null, '1510120578', '50', '6', '高二', '15', '638', '右外下 10', '魏子健', '1', '20161540');
INSERT INTO `ck_xuesheng` VALUES ('255', '22', null, '1510120578', '50', '6', '高二', '15', '638', '右外上 9', '谷腾杰', '1', '20161539');
INSERT INTO `ck_xuesheng` VALUES ('254', '22', null, '1510120578', '50', '6', '高二', '15', '638', '右内下 8', '张陶然', '1', '20161538');
INSERT INTO `ck_xuesheng` VALUES ('253', '22', null, '1510120578', '50', '6', '高二', '15', '638', '右内上 7', '潘兆瑞', '1', '20161537');
INSERT INTO `ck_xuesheng` VALUES ('252', '22', null, '1510120578', '50', '6', '高二', '15', '638', '中下 6', '许鹏飞', '1', '20161536');
INSERT INTO `ck_xuesheng` VALUES ('251', '22', null, '1510120578', '50', '6', '高二', '15', '638', '中上 5', '高士', '1', '20161535');
INSERT INTO `ck_xuesheng` VALUES ('250', '22', null, '1510120578', '50', '6', '高二', '15', '638', '左外下 4', '苗壮', '1', '20161534');
INSERT INTO `ck_xuesheng` VALUES ('249', '22', null, '1510120578', '50', '6', '高二', '15', '638', '左外上 3', '王大鹏', '1', '20161533');
INSERT INTO `ck_xuesheng` VALUES ('248', '22', null, '1510120578', '50', '6', '高二', '15', '638', '左内下 2', '耿艺培', '1', '20161532');
INSERT INTO `ck_xuesheng` VALUES ('247', '22', null, '1510120578', '50', '6', '高二', '15', '638', '左内上 1', '侯奕霖', '1', '20161531');
INSERT INTO `ck_xuesheng` VALUES ('246', '22', null, '1510120578', '50', '6', '高二', '15', '637', '右外下 10', '仝江岩', '1', '20161530');
INSERT INTO `ck_xuesheng` VALUES ('245', '22', null, '1510120578', '50', '6', '高二', '15', '637', '右外上 9', '贾晨晔', '1', '20161529');
INSERT INTO `ck_xuesheng` VALUES ('236', '22', null, '1510120578', '50', '2', '高二', '15', '224', '右外下 10', '李静晗', '2', '20161520');
INSERT INTO `ck_xuesheng` VALUES ('235', '22', null, '1510120578', '50', '2', '高二', '15', '224', '右外上 9', '邢若凝', '2', '20161519');
INSERT INTO `ck_xuesheng` VALUES ('234', '22', null, '1510120578', '50', '2', '高二', '15', '224', '右内下 8', '杨琳', '2', '20161518');
INSERT INTO `ck_xuesheng` VALUES ('233', '22', null, '1510120578', '50', '2', '高二', '15', '224', '右内上 7', '于雅婷', '2', '20161517');
INSERT INTO `ck_xuesheng` VALUES ('232', '22', null, '1510120578', '50', '2', '高二', '15', '224', '中下 6', '魏彤彤', '2', '20161516');
INSERT INTO `ck_xuesheng` VALUES ('231', '22', null, '1510120578', '50', '2', '高二', '15', '224', '中上 5', '段雨梦', '2', '20161515');
INSERT INTO `ck_xuesheng` VALUES ('230', '22', null, '1510120578', '50', '2', '高二', '15', '224', '左外下 4', '郭奥', '2', '20161514');
INSERT INTO `ck_xuesheng` VALUES ('229', '22', null, '1510120578', '50', '2', '高二', '15', '224', '左外上 3', '麦若冉', '2', '20161513');
INSERT INTO `ck_xuesheng` VALUES ('228', '22', null, '1510120578', '50', '2', '高二', '15', '224', '左内下 2', '张睿涵', '2', '20161512');
INSERT INTO `ck_xuesheng` VALUES ('227', '22', null, '1510120578', '50', '2', '高二', '15', '224', '左内上 1', '宋一晗', '2', '20161511');
INSERT INTO `ck_xuesheng` VALUES ('226', '22', null, '1510120578', '50', '2', '高二', '15', '223', '右外下 10', '郭涵婷', '2', '20161510');
INSERT INTO `ck_xuesheng` VALUES ('225', '22', null, '1510120578', '50', '2', '高二', '15', '223', '右外上 9', '王欣雅', '2', '20161509');
INSERT INTO `ck_xuesheng` VALUES ('224', '22', null, '1510120578', '50', '2', '高二', '15', '223', '右内下 8', '柏梦圆', '2', '20161508');
INSERT INTO `ck_xuesheng` VALUES ('223', '22', null, '1510120578', '50', '2', '高二', '15', '223', '右内上 7', '齐梦凡', '2', '20161507');
INSERT INTO `ck_xuesheng` VALUES ('217', '22', null, '1510120578', '50', '2', '高二', '15', '223', '左内上 1', '程一冉', '2', '20161501');
INSERT INTO `ck_xuesheng` VALUES ('218', '22', null, '1510120578', '50', '2', '高二', '15', '223', '左内下 2', '闫紫琪', '2', '20161502');
INSERT INTO `ck_xuesheng` VALUES ('219', '22', null, '1510120578', '50', '2', '高二', '15', '223', '左外上 3', '梁世怡', '2', '20161503');
INSERT INTO `ck_xuesheng` VALUES ('220', '22', null, '1510120578', '50', '2', '高二', '15', '223', '左外下 4', '贾梓寒', '2', '20161504');
INSERT INTO `ck_xuesheng` VALUES ('221', '22', null, '1510120578', '50', '2', '高二', '15', '223', '中上 5', '张安婷', '2', '20161505');
INSERT INTO `ck_xuesheng` VALUES ('222', '22', null, '1510120578', '50', '2', '高二', '15', '223', '中下 6', '田如玉', '2', '20161506');
INSERT INTO `ck_xuesheng` VALUES ('244', '22', null, '1510120578', '50', '6', '高二', '15', '637', '右内下 8', '邢议博', '1', '20161528');
INSERT INTO `ck_xuesheng` VALUES ('243', '22', null, '1510120578', '50', '6', '高二', '15', '637', '右内上 7', '米乙丙', '1', '20161527');
INSERT INTO `ck_xuesheng` VALUES ('242', '22', null, '1510120578', '50', '6', '高二', '15', '637', '中下 6', '张少龙', '1', '20161526');
INSERT INTO `ck_xuesheng` VALUES ('241', '22', null, '1510120578', '50', '6', '高二', '15', '637', '中上 5', '周亚龙', '1', '20161525');
INSERT INTO `ck_xuesheng` VALUES ('240', '22', null, '1510120578', '50', '6', '高二', '15', '637', '左外下 4', '李宜澎', '1', '20161524');
INSERT INTO `ck_xuesheng` VALUES ('239', '22', null, '1510120578', '50', '6', '高二', '15', '637', '左外上 3', '张海鑫', '1', '20161523');
INSERT INTO `ck_xuesheng` VALUES ('238', '22', null, '1510120578', '50', '6', '高二', '15', '637', '左内下 2', '郑金浩', '1', '20161522');
INSERT INTO `ck_xuesheng` VALUES ('237', '22', null, '1510120578', '50', '6', '高二', '15', '637', '左内上 1', '温子灏', '1', '20161521');

-- ----------------------------
-- Table structure for `ck_zhiri`
-- ----------------------------
DROP TABLE IF EXISTS `ck_zhiri`;
CREATE TABLE `ck_zhiri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT '50',
  `chuangpu` varchar(100) DEFAULT NULL,
  `sushe` varchar(100) DEFAULT NULL,
  `banji` varchar(100) DEFAULT NULL,
  `nianji` varchar(100) DEFAULT NULL,
  `louceng` varchar(100) DEFAULT NULL,
  `xuehao` varchar(100) DEFAULT NULL,
  `xingming` varchar(100) DEFAULT NULL,
  `xingbie` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=295 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_zhiri
-- ----------------------------
INSERT INTO `ck_zhiri` VALUES ('288', '22', null, '1510112490', '50', '右内上 7', '637', '15', '高二', '6', '20161527', '米乙丙', '1');
INSERT INTO `ck_zhiri` VALUES ('289', '22', null, '1510112490', '50', '中上 5', '637', '15', '高二', '6', '20161525', '周亚龙', '1');
INSERT INTO `ck_zhiri` VALUES ('290', '22', null, '1510112490', '50', '左内下 2', '637', '15', '高二', '6', '20161522', '郑金浩', '1');
INSERT INTO `ck_zhiri` VALUES ('291', '22', null, '1510120578', '50', '左内下 2', '223', '15', '高二', '2', '20161502', '闫紫琪', '2');
INSERT INTO `ck_zhiri` VALUES ('292', '22', null, '1510120578', '50', '右内上 7', '637', '15', '高二', '6', '20161527', '米乙丙', '1');
INSERT INTO `ck_zhiri` VALUES ('293', '22', null, '1510120578', '50', '右外上 9', '638', '15', '高二', '6', '20161539', '谷腾杰', '1');
INSERT INTO `ck_zhiri` VALUES ('294', '22', null, '1510120578', '50', '左外下 4', '637', '15', '高二', '6', '20161524', '李宜澎', '1');

-- ----------------------------
-- Table structure for `ck_zhuanye`
-- ----------------------------
DROP TABLE IF EXISTS `ck_zhuanye`;
CREATE TABLE `ck_zhuanye` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) DEFAULT NULL,
  `utime` varchar(20) DEFAULT NULL,
  `ctime` varchar(20) DEFAULT NULL,
  `num` int(11) DEFAULT '50',
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_zhuanye
-- ----------------------------
INSERT INTO `ck_zhuanye` VALUES ('1', '44', '1486711347', '1486711347', '50', '电脑班');
INSERT INTO `ck_zhuanye` VALUES ('2', '44', '1486711360', '1486711360', '50', '外语班');
INSERT INTO `ck_zhuanye` VALUES ('3', '44', '1486711374', '1486711374', '50', '会计考证班');
INSERT INTO `ck_zhuanye` VALUES ('4', '44', '1486711386', '1486711386', '50', '做账报税班');
INSERT INTO `ck_zhuanye` VALUES ('5', '44', '1486711402', '1486711402', '50', '成人学历班');
INSERT INTO `ck_zhuanye` VALUES ('6', '44', '1486711416', '1486711416', '50', '技工证书班');
