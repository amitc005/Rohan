DROP DATABASE IF EXISTS `offsetmanager`;
CREATE DATABASE `offsetmanager`;
USE `offsetmanager`;


CREATE TABLE `tbl_gsm` (
  `gsm_id` int(11)  primary key auto_increment,
  `gsm_name` varchar(100) NOT NULL,
  `gsm_added_date` date NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'Y'
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `tbl_usertype` (
  `usertype_id` int(11)  primary key auto_increment,
  `usertype` varchar(100) NOT NULL,
  `usertype_added_date` date NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'Y'
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `tbl_lamination` (
  `lamination_id` int(11)  primary key auto_increment,
  `lamination_name` varchar(100) NOT NULL,
  `lamination_desc` varchar(250) NOT NULL,
  `lamination_added_date` DATE NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'Y'
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



CREATE TABLE `tbl_paper` (
  `paper_id` int(11)  primary key auto_increment,
  `paper_name` varchar(100) NOT NULL,
  `p_added_date` date NOT NULL,
  `is_active` char(1) NOT NULL
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

 
CREATE TABLE `tbl_postpress` (
  `postpress_id` int(11)  primary key auto_increment,
  `postpress_name` varchar(100) NOT NULL,
  `postpress_desc` text NOT NULL,
  `postpress_added_date` DATE NOT NULL,
  `is_active` char(1) NOT NULL default 'Y'
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `tbl_printing` (
  `printing_id` int(11)  primary key auto_increment,
  `printing_name` varchar(100) NOT NULL,
  `pt_added_date` date NOT NULL,
  `is_active` char(1) NOT NULL default 'Y'
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `tbl_qty` (
  `qty_id` int(11)  primary key auto_increment,
  `qty_name` varchar(100) NOT NULL,
  `qty_added_date` date NOT NULL,
  `is_active` char(1) NOT NULL default 'Y'
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



CREATE TABLE `tbl_sides` (
  `side_id` int(11)  primary key auto_increment,
  `side_name` varchar(100) NOT NULL,
  `side_added_date` date NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'Y'
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



CREATE TABLE `tbl_citylist` (
  `city_id` int(5)  primary key auto_increment,
  `city_name` varchar(100) DEFAULT NULL,
  `latitude` varchar(10) DEFAULT NULL,
  `longitude` varchar(10) DEFAULT NULL,
  `state_id` varchar(50) DEFAULT NULL,
  `is_active` char(1) NOT NULL default 'Y'
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



CREATE TABLE `tbl_district` (
  `district_id` int(5)  primary key auto_increment,
  `district_name` varchar(100) DEFAULT NULL,
  `latitude` varchar(10) DEFAULT NULL,
  `longitude` varchar(10) DEFAULT NULL,
  `state_id` varchar(50) NOT NULL,
  `is_active` char(1) NOT NULL default 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tbl_state` (
  `state_id` int(11)  primary key auto_increment,
  `state_name` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL default 'Y'
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



CREATE TABLE `tbl_card` (
  `card_id` int(5)  primary key auto_increment,
  `card_name` varchar(100) NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'Y'
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



CREATE TABLE `offsetuser` (
  `admin_id` int(11) primary key auto_increment,
  `user_type_id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `last_login` varchar(50) DEFAULT NULL,
  `action_permission` varchar(100) DEFAULT NULL,
  `page_permission` text,
  `intime` varchar(10) DEFAULT NULL,
  `outtime` varchar(10) DEFAULT NULL,
  `macid` varchar(50) DEFAULT NULL,
  `is_active` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `tbl_client` (
  `client_id` int(11)  primary key auto_increment,
  `client_name` varchar(30) NOT NULL,
  `client_address` text NOT NULL,
  `propriter_name` varchar(100) NOT NULL,
  `propriter_image` text NOT NULL,
  `firm_name` varchar(100) NOT NULL,
  `mobile_no` varchar(11) NOT NULL,
  `phone_no_1` varchar(30) NOT NULL,
  `postal_address` text NOT NULL,
  `phone_no_2` varchar(30) NOT NULL,
  `city_id` int(11) ,
  `district_id` int(11) ,
  `state_id` int(11) ,
  `client_added_date` DATE NOT NULL,
  `client_update_date` DATE NOT NULL,
  `is_active` char(1) NOT NULL DEFAULT 'Y',
  foreign key(`city_id`) references `tbl_citylist`(`city_id`)  ON DELETE CASCADE ON UPDATE CASCADE,
  foreign key(`district_id`) references `tbl_district`(`district_id`)  ON DELETE CASCADE ON UPDATE CASCADE,  
  foreign key(`state_id`) references `tbl_state`(`state_id`)  ON DELETE CASCADE ON UPDATE CASCADE  
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

 

CREATE TABLE `tbl_quotation` (
  `quotation_id` int(11)  primary key auto_increment,
  `client_id` int(11) ,
  `quotation_desc` text COLLATE utf8_unicode_ci,
  `quotation_added_date` DATE NOT NULL,
  `quotation_update_date` DATE NOT NULL,
  `read_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `is_active` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
   foreign key(`client_id`) references `tbl_client`(`client_id`)  ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `tbl_quotationhistory` (
  `id` int(11)  primary key auto_increment,
  `quotation_id` int(11),
  `requestquery` text,
  `replyanswer` text,
  `requestdate`  DATE NOT NULL,
  `replydate`  DATE NOT NULL,
  `hisstatus` varchar(10) DEFAULT NULL,
  `isactive` char(1) DEFAULT NULL,
   foreign key(`quotation_id`) references `tbl_quotation`(`quotation_id`)  ON DELETE CASCADE ON UPDATE CASCADE
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;




CREATE TABLE `tbl_order` (
  `order_id` int(11)  primary key auto_increment,
  `quotation_id` int(11),
  `client_id` int(11) ,
  `gsm_id` int(11) ,
  `lamination_id` int(11) ,
  `postpress_id` int(11) ,
  `printing_id` int(11) ,
  `qty_id` int(11) ,
  `side_id` int(11) ,
  `paper_id` int(11) ,
  `card_id` int(11) ,
  `comment` text,
  `requestdate`  DATE NOT NULL,
  `orderstatus` varchar(10) DEFAULT NULL,
  `isactive` char(1) DEFAULT NULL,
   foreign key(`quotation_id`) references `tbl_quotation`(`quotation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
   foreign key(`gsm_id`) references `tbl_gsm`(`gsm_id`)   ON DELETE CASCADE ON UPDATE CASCADE,				
   foreign key(`lamination_id`) references `tbl_lamination`(`lamination_id`)   ON DELETE CASCADE ON UPDATE CASCADE,
   foreign key(`paper_id`) references `tbl_paper`(`paper_id`)  ON DELETE CASCADE ON UPDATE CASCADE,
   foreign key(`postpress_id`) references `tbl_postpress`(`postpress_id`)   ON DELETE CASCADE ON UPDATE CASCADE,
   foreign key(`printing_id`) references `tbl_printing`(`printing_id`)   ON DELETE CASCADE ON UPDATE CASCADE,
   foreign key(`qty_id`) references `tbl_qty`(`qty_id`)  ON DELETE CASCADE ON UPDATE CASCADE,
   foreign key(`side_id`) references `tbl_sides`(`side_id`)   ON DELETE CASCADE ON UPDATE CASCADE,
   foreign key(`card_id`) references `tbl_card`(`card_id`)  ON DELETE CASCADE ON UPDATE CASCADE,
   foreign key(`client_id`) references `tbl_client`(`client_id`)   ON DELETE CASCADE ON UPDATE CASCADE
)  ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `tbl_order_status_history` (
  `id` int(11)  primary key auto_increment,
  `order_id` int(11),
  `orderstatus` varchar(10) DEFAULT NULL,
  `createdate` DATE DEFAULT NULL,
  `modifydate` DATE DEFAULT NULL,
  foreign key(`order_id`) references `tbl_order`(`order_id`)  ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

