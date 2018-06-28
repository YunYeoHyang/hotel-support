CREATE DATABASE `house_renting`;
use `house_renting`;
#用户表
CREATE TABLE `user` (
  `uid` INT(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `uname` VARCHAR(20) DEFAULT NULL COMMENT '用户姓名',
  `upwd` VARCHAR(20) DEFAULT NULL COMMENT '用户密码',
  `uimg` VARCHAR(20) DEFAULT NULL COMMENT '用户头像',
  `uphone` VARCHAR(32) DEFAULT NULL COMMENT '用户手机号',
  `umail` VARCHAR(32) DEFAULT NULL COMMENT '用户邮箱',
  `uaddress` VARCHAR(32) DEFAULT NULL COMMENT '用户地址',
  `account` VARCHAR(32) DEFAULT NULL COMMENT '账户余额',
  `integration` INT(32) DEFAULT NULL COMMENT '用户积分',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


#订单表
CREATE TABLE `order` (
  `oid` INT(11) NOT NULL AUTO_INCREMENT COMMENT '订单ID',
  `hid` INT(11) DEFAULT NULL COMMENT '房屋ID',
  `uid` INT(11) NOT NULL COMMENT '下订单的用户ID',
  `viewdate` DATE DEFAULT NULL COMMENT '看房日期',
  `ostatue` INT(11) DEFAULT NULL COMMENT '订单状态ID',
  `ototal` DOUBLE DEFAULT NULL COMMENT '订单总额',
  `odiscount` DOUBLE DEFAULT NULL COMMENT '优惠金额',
  `integral` INT(11) DEFAULT NULL COMMENT '可获积分',
  PRIMARY KEY (`oid`),
  UNIQUE KEY `oid` (`oid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ;

#付款表
CREATE TABLE `pay` (
  `pid` INT(11) DEFAULT NULL COMMENT '付款ID',
  `ptotal` DOUBLE NOT NULL AUTO_INCREMENT COMMENT '付款总额',
  `ptype` VARCHAR(32) DEFAULT NULL COMMENT '支付方式',
  UNIQUE KEY `ptotal` (`ptotal`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

 #房屋表
CREATE TABLE `house` (
  `hid` INT(11) NOT NULL AUTO_INCREMENT COMMENT '房子ID',
  `uid` INT(11) DEFAULT NULL COMMENT '房东ID',
  `startdate` DATE DEFAULT NULL COMMENT '起租日期',
  `house_type` VARCHAR(32) DEFAULT NULL COMMENT '房子类型',
  `region_name` VARCHAR(32) DEFAULT NULL COMMENT '小区名称',
  `apartment` VARCHAR(32) DEFAULT NULL COMMENT '房屋户型',
  `rent_intention` INT(11) DEFAULT NULL COMMENT '租金意向',
  `status` INT(11) DEFAULT NULL COMMENT '房屋状态',
  `is_new` INT(11) DEFAULT NULL COMMENT '热门房源',
  `house_address` VARCHAR(32) DEFAULT NULL COMMENT '房屋地址',
  `house_img` VARCHAR(32) DEFAULT NULL COMMENT '房屋图片',
  PRIMARY KEY (`hid`),
  UNIQUE KEY `hid` (`hid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
 
 #收益表
CREATE TABLE `earn` (
  `uid` INT(11) DEFAULT NULL COMMENT '用户ID',
  `oid` INT(11) DEFAULT NULL COMMENT '订单ID(收入)',
  `pid` INT(11) DEFAULT NULL COMMENT '付款ID(支出)',
  `ptype` VARCHAR(32) DEFAULT NULL COMMENT '支付方式'
) ENGINE=INNODB DEFAULT CHARSET=utf8;
 
 #优惠券表
 CREATE TABLE `coupon` (
  `cid` INT(11) NOT NULL AUTO_INCREMENT COMMENT '优惠劵ID',
  `coupon_value` INT(11) NOT NULL COMMENT '优惠券面值',
  `coupon_startdate` DATE NOT NULL COMMENT '优惠券获得日期',
  `coupon_enddata` DATE NOT NULL COMMENT '优惠券的结束日期',
  `uid` INT(11) NOT NULL COMMENT '用户ID',
  `coupon_condition` INT(11) DEFAULT NULL COMMENT '使用条件',
  `coupon_status` INT(11) DEFAULT NULL COMMENT '优惠券状态',
  PRIMARY KEY (`cid`),
  UNIQUE KEY `cid` (`cid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
 
 #租房分类表
 CREATE TABLE `category` (
  `cid` INT NOT NULL AUTO_INCREMENT UNIQUE COMMENT '类型ID' PRIMARY KEY,
  `category_name` VARCHAR(32) DEFAULT NULL COMMENT '类型名称'
) ENGINE=INNODB DEFAULT CHARSET=utf8;
 
 #分类房屋中间表
 CREATE TABLE `category_house` (
  `category_id` INT(11) DEFAULT NULL COMMENT '类型ID',
  `house_id` INT(11) DEFAULT NULL COMMENT '房屋ID'
) ENGINE=INNODB DEFAULT CHARSET=utf8;

#加盟表
CREATE TABLE `join` (
  `join_id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '加盟ID',
  `uid` INT(11) DEFAULT NULL COMMENT '用户ID',
  `status` INT(11) DEFAULT NULL COMMENT '审核状态',
  `team_num` INT(11) DEFAULT NULL COMMENT '团队人数',
  `intermediary_num` INT(11) DEFAULT NULL COMMENT '线下中介店数量',
  UNIQUE KEY `join_id` (`join_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;


#推广表
CREATE TABLE `expand` (
  `expand_uid` INT(11) DEFAULT NULL COMMENT '用户ID',
  `expand_info` TEXT COMMENT '推广信息'
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `collection` (
  `uid` INT(11) DEFAULT NULL COMMENT '用户ID',
  `hid` INT(11) DEFAULT NULL COMMENT '房屋ID',
  `collect_date` DATE DEFAULT NULL COMMENT '收藏时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8;

#合同表
CREATE TABLE `contract` (
  `uid` INT(11) DEFAULT NULL COMMENT '用户ID',
  `hid` INT(11) DEFAULT NULL COMMENT '房屋ID',
  `contract_id` INT(11) NOT NULL AUTO_INCREMENT COMMENT '合同ID',
  `contract_startdate` DATE DEFAULT NULL COMMENT '合同开始日期',
  `contract_enddate` DATE DEFAULT NULL COMMENT '合同结束日期',
  `deposit` DOUBLE DEFAULT NULL COMMENT '押金',
  `monthly_rent` DOUBLE DEFAULT NULL COMMENT '每月租金',
  `payment` DOUBLE DEFAULT NULL COMMENT '本次支付',
  `otherfee` DOUBLE DEFAULT NULL COMMENT '其他费用',
  `platform_commission` DOUBLE DEFAULT NULL COMMENT '平台佣金',
  `rental` DOUBLE DEFAULT NULL COMMENT '房租',
  UNIQUE KEY `contract_id` (`contract_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

#团队表
CREATE TABLE `team` (
  `join_id` INT(11) DEFAULT NULL COMMENT '加盟ID',
  `hid` INT(11) DEFAULT NULL COMMENT '房屋ID',
  `join_date` DATE DEFAULT NULL COMMENT '注册时间',
  `consumption_status` INT(11) DEFAULT NULL COMMENT '消费状态'
) ENGINE=INNODB DEFAULT CHARSET=utf8;

#看房日程表
CREATE TABLE `schedule` (
  `hid` INT(11) DEFAULT NULL COMMENT '房屋ID',
  `uid` INT(11) DEFAULT NULL COMMENT '用户ID',
  `schedule_date` DATE DEFAULT NULL COMMENT '看房日期',
  `view_status` INT(11) DEFAULT NULL COMMENT '约看状态',
  `schedule_status` INT(11) DEFAULT NULL COMMENT '日程状态'
) ENGINE=INNODB DEFAULT CHARSET=utf8;

#地图位置表
CREATE TABLE `map` (
  `location_id` INT(11) DEFAULT NULL COMMENT '位置ID',
  `address_id` INT(11) DEFAULT NULL COMMENT '地址ID',
  `latitude` VARCHAR(32) DEFAULT NULL COMMENT '纬度',
  `Longitude` VARCHAR(32) DEFAULT NULL COMMENT '经度'
) ENGINE=INNODB DEFAULT CHARSET=utf8;