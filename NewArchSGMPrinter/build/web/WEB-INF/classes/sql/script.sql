DROP DATABASE IF EXISTS `offsetmanager`;
CREATE DATABASE `offsetmanager`;
USE `offsetmanager`;

CREATE TABLE `tbl_paper_lup`(
`id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(20),
`isActive` CHAR(1)
);

CREATE TABLE `tbl_side_lup`(
`id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(20),
`isActive` CHAR(1)
);

CREATE TABLE `tbl_lamination_lup`(
`id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(20),
`isActive` CHAR(1)
);

CREATE TABLE `tbl_gsm_lup`(
`id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(20),
`isActive` CHAR(1)
);

CREATE TABLE `tbl_tblt_lup`(
`id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(20),
`isActive` CHAR(1)
);

DROP TABLE IF EXISTS `tbl_client`;
CREATE TABLE `tbl_client`(
`c_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(20),
`contact` INT(10),
`email_id` VARCHAR(20),
`city` VARCHAR(20),
`shop_name` VARCHAR(20),
`office_address` VARCHAR(20)
);

DROP TABLE IF EXISTS `tbl_quotation`;
CREATE TABLE `tbl_quotation`(
`c_id` INT(11),
`q_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`quotation_for` VARCHAR(20),
`paper` VARCHAR(20),
`post_press` VARCHAR(20),
`other_desc` VARCHAR(20),
FOREIGN KEY(`c_id`) REFERENCES `tbl_client`(`c_id`) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order`(
`o_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`c_id` INT(11),
`q_id` INT(11),
`payment` VARCHAR(20),
`order_payment` VARCHAR(20),
FOREIGN KEY(`c_id`) REFERENCES `tbl_client`(`c_id`) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY(`q_id`) REFERENCES `tbl_quotation`(`q_id`) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS `tbl_account`;
CREATE TABLE `tbl_account`(
`a_id` INT(11) PRIMARY KEY AUTO_INCREMENT,
`c_id` INT(11),
`q_id` INT(11),
`o_id` INT(11),

`order_amount` VARCHAR(20),
`paid_amount` VARCHAR(20),
`balance_amount` VARCHAR(20),

FOREIGN KEY(`c_id`) REFERENCES `tbl_client`(`c_id`) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY(`q_id`) REFERENCES `tbl_quotation`(`q_id`) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY(`o_id`) REFERENCES `tbl_order`(`o_id`) ON UPDATE CASCADE ON DELETE CASCADE
);

DROP TABLE IF EXISTS `tbl_parcel`;
CREATE TABLE `tbl_parcel`(
`p_id` INT(11) PRIMARY KEY AUTO_INCREMENT,                                                                                

`c_id` INT(11),
`q_id` INT(11),
`o_id` INT(11),
`full_payment` VARCHAR(20),
`balance_amount` VARCHAR(20),
`delivery` VARCHAR(20),
`left_stock` VARCHAR(20),
`delivery_date` varchar(20),
FOREIGN KEY(`c_id`) REFERENCES `tbl_client`(`c_id`) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY(`q_id`) REFERENCES `tbl_quotation`(q_id) ON UPDATE CASCADE ON DELETE CASCADE,
FOREIGN KEY(`o_id`) REFERENCES `tbl_order`(`o_id`) ON UPDATE CASCADE ON DELETE CASCADE
);
