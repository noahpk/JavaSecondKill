DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '��ƷID',
  `goods_name` varchar(16) DEFAULT NULL COMMENT '��Ʒ����',
  `goods_title` varchar(64) DEFAULT NULL COMMENT '��Ʒ����',
  `goods_img` varchar(640) DEFAULT NULL COMMENT '��Ʒ��ͼƬ',
  `goods_detail` longtext COMMENT '��Ʒ���������',
  `goods_price` decimal(10,2) DEFAULT '0.00' COMMENT '��Ʒ����',
  `goods_stock` int(11) DEFAULT '0' COMMENT '��Ʒ��棬-1��ʾû������',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', 'iPhone', 'iPhone 11 Plus', 'https://img.pconline.com.cn/images/product/1048/1048848/z-5_sn8.jpg', 'ƻ���� �¿��ֻ�', '5998.00', '50');

-- ----------------------------
-- Table structure for miaosha_goods
-- ----------------------------
DROP TABLE IF EXISTS `miaosha_goods`;
CREATE TABLE `miaosha_goods` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '��ɱ����Ʒ��',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '��ƷId',
  `miaosha_price` decimal(10,2) DEFAULT '0.00' COMMENT '��ɱ��',
  `stock_count` int(11) DEFAULT NULL COMMENT '�������',
  `start_date` datetime DEFAULT NULL COMMENT '��ɱ��ʼʱ��',
  `end_date` datetime DEFAULT NULL COMMENT '��ɱ����ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of miaosha_goods
-- ----------------------------
INSERT INTO `miaosha_goods` VALUES ('1', '1', '4998.00', '4', '2020-07-16 10:25:18', '2021-07-16 13:25:22');

-- ----------------------------
-- Table structure for miaosha_order
-- ----------------------------
DROP TABLE IF EXISTS `miaosha_order`;
CREATE TABLE `miaosha_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '�û�ID',
  `order_id` bigint(20) DEFAULT NULL COMMENT '����ID',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '��ƷID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_uid_gid` (`user_id`,`goods_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1552 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of miaosha_order
-- ----------------------------
INSERT INTO `miaosha_order` VALUES ('1551', '13309133912', '1565', '1');

-- ----------------------------
-- Table structure for miaosha_user
-- ----------------------------
DROP TABLE IF EXISTS `miaosha_user`;
CREATE TABLE `miaosha_user` (
  `id` bigint(20) NOT NULL COMMENT '�û�ID���ֻ�����',
  `nickname` varchar(255) NOT NULL,
  `password` varchar(32) DEFAULT NULL COMMENT 'MD5(MD5(pass����+�̶�salt) + salt)',
  `salt` varchar(10) DEFAULT NULL,
  `head` varchar(128) DEFAULT NULL COMMENT 'ͷ���ƴ洢��ID',
  `register_date` datetime DEFAULT NULL COMMENT 'ע��ʱ��',
  `last_login_date` datetime DEFAULT NULL COMMENT '������¼ʱ��',
  `login_count` int(11) DEFAULT '0' COMMENT '��¼����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of miaosha_user
-- ----------------------------
INSERT INTO `miaosha_user` VALUES ('13309133912', 'zhaosi', '469fae703f3f86c3c86b0837682ea687', 'mysaltab', null, null, null, '0');

-- ----------------------------
-- Table structure for order_info
-- ----------------------------
DROP TABLE IF EXISTS `order_info`;
CREATE TABLE `order_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '�û�ID',
  `goods_id` bigint(20) DEFAULT NULL COMMENT '��ƷID',
  `delivery_addr_id` bigint(20) DEFAULT NULL COMMENT '�ջ��ַID',
  `goods_name` varchar(16) DEFAULT NULL COMMENT '�����������Ʒ����',
  `goods_count` int(11) DEFAULT '0' COMMENT '��Ʒ����',
  `goods_price` decimal(10,2) DEFAULT '0.00' COMMENT '��Ʒ����',
  `order_channel` tinyint(4) DEFAULT '0' COMMENT '1pc��2android��3ios',
  `status` tinyint(4) DEFAULT '0' COMMENT '����״̬��0�½�δ֧����1��֧����2�ѷ�����3���ջ���4���˿5�����',
  `create_date` datetime DEFAULT NULL COMMENT '�����Ĵ���ʱ��',
  `pay_date` datetime DEFAULT NULL COMMENT '֧��ʱ��',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1566 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of order_info
-- ----------------------------
INSERT INTO `order_info` VALUES ('1565', '13309133912', '1', null, 'iPhone', '1', '4998.00', '1', '0', '2020-07-16 10:39:53', null);