DROP TABLE `food`;
DROP TABLE `beer`;

CREATE TABLE `food` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `kind` varchar(50) DEFAULT NULL,
  `item_name` varchar(256) DEFAULT NULL,
  `prin_value` DECIMAL(10, 3) DEFAULT NULL,
  `one_prin_value` DECIMAL(10, 3) DEFAULT NULL,
  `one_amount` DECIMAL(10, 3) DEFAULT NULL,
  `unit_name` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `beer` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `maker` varchar(50) DEFAULT NULL,
  `kind` varchar(50) DEFAULT NULL,
  `item_name` varchar(256) DEFAULT NULL,
  `alcohol_content` DECIMAL(10, 3) DEFAULT NULL,
  `prin_value` DECIMAL(10, 3) DEFAULT NULL,
  `unit_name` varchar(50) DEFAULT NULL,
  `make_end_flg` DECIMAL(1, 0) DEFAULT '0',
  `not_write_flg` DECIMAL(1, 0) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;