DROP DATABASE IF EXISTS `webmatrix`;
CREATE DATABASE `webmatrix`;
USE `webmatrix`;

CREATE TABLE IF NOT EXISTS `tbl_algorithm` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtCategoryId` varchar(38) NOT NULL,
  `txtProjectCategory` varchar(50) DEFAULT NULL,
  `txtAlgorithmName` varchar(50) DEFAULT NULL,
  `txtAbstract` text,
  `txtRemark` varchar(500) DEFAULT NULL,
  `txtPDF` varchar(500) DEFAULT NULL,
  `txtPPT` varchar(500) DEFAULT NULL,
  `txtDOC` varchar(500) DEFAULT NULL,
  `txtIsActive` char(1) NOT NULL,
  PRIMARY KEY (`txtId`),
  KEY `tbl_algorithm_ibfk_1` (`txtCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `txtIndex` int(11) NOT NULL AUTO_INCREMENT,
  `txtId` varchar(38) NOT NULL,
  `txtStudentName` varchar(200) DEFAULT NULL,
  `txtContactNumber` varchar(200) DEFAULT NULL,
  `txtEmailId` varchar(200) DEFAULT NULL,
  `txtEnquiredFrom` text,
  `txtIsDelete` char(1) DEFAULT NULL,
  `txtEntryDate` datetime DEFAULT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtIndex`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;
 

CREATE TABLE IF NOT EXISTS `tbl_department` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtDeptName` varchar(38) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 

CREATE TABLE IF NOT EXISTS `tbl_employee` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtEmpName` varchar(50) DEFAULT NULL,
  `txtEmpEmail` varchar(50) DEFAULT NULL,
  `txtPhoneNo` varchar(15) DEFAULT NULL,
  `txtMobileNo` varchar(15) DEFAULT NULL,
  `txtPassword` varchar(15) DEFAULT NULL,
  `txtEmployeeRole` varchar(15) DEFAULT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 

CREATE TABLE IF NOT EXISTS `tbl_group_account` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtGroupId` varchar(38) DEFAULT NULL,
  `txtGroupCode` varchar(10) DEFAULT NULL,
  `txtProjectId` varchar(38) DEFAULT NULL,
  `txtPaidAmt` int(7) DEFAULT NULL,
  `txtRemark` varchar(250) DEFAULT NULL,
  `txtEntryDate` datetime DEFAULT NULL,
  `txtEnteredBy` varchar(38) DEFAULT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`),
  KEY `tbl_group_account_ibfk_1` (`txtGroupId`),
  KEY `tbl_group_account_ibfk_2` (`txtProjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 

CREATE TABLE IF NOT EXISTS `tbl_group_queries` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtGroupId` varchar(38) DEFAULT NULL,
  `txtEnteryDate` datetime DEFAULT NULL,
  `txtProjectId` varchar(38) DEFAULT NULL,
  `txtQuery` text,
  `txtAttachment1` text,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`),
  KEY `tbl_group_queries_ibfk_1` (`txtGroupId`),
  KEY `tbl_group_queries_ibfk_2` (`txtProjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 

CREATE TABLE IF NOT EXISTS `tbl_group_queries_answer` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtQueriesId` varchar(38) DEFAULT NULL,
  `txtGroupId` varchar(38) NOT NULL,
  `txtProjectId` varchar(38) DEFAULT NULL,
  `txtAnswer` text,
  `txtAttachment1` text,
  `txtEnteredDate` varchar(38) DEFAULT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`),
  KEY `tbl_group_queries_answer_ibfk_1` (`txtQueriesId`),
  KEY `tbl_group_queries_answer_ibfk_2` (`txtProjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_schedules`
--

CREATE TABLE IF NOT EXISTS `tbl_group_schedules` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtGroupId` varchar(38) DEFAULT NULL,
  `txtSchedulesDate` datetime DEFAULT NULL,
  `txtSchedulesTopic` varchar(500) DEFAULT NULL,
  `txtDiscussionTime` varchar(50) NOT NULL,
  `txtTeacherName` varchar(50) DEFAULT NULL,
  `txtRemark` varchar(50) DEFAULT NULL,
  `txtIsCancled` char(1) NOT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`),
  KEY `tbl_group_schedules_ibfk_1` (`txtGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group_telecalling`
--

CREATE TABLE IF NOT EXISTS `tbl_group_telecalling` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtGroupId` varchar(38) DEFAULT NULL,
  `txtCallingSubjet` varchar(500) DEFAULT NULL,
  `txtCallingTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `txtCallerName` varchar(50) DEFAULT NULL,
  `txtConversation` text,
  PRIMARY KEY (`txtId`),
  KEY `tbl_group_telecalling_ibfk_1` (`txtGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inquiry_telecalling`
--

CREATE TABLE IF NOT EXISTS `tbl_inquiry_telecalling` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtInquiryId` varchar(38) DEFAULT NULL,
  `txtCallingSubjet` varchar(500) DEFAULT NULL,
  `txtCallingTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `txtCallerName` varchar(50) DEFAULT NULL,
  `txtConversation` text,
  PRIMARY KEY (`txtId`),
  KEY `tbl_group_telecalling_ibfk_1` (`txtInquiryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_internship`
--

CREATE TABLE IF NOT EXISTS `tbl_internship` (
  `txtIndex` int(11) NOT NULL AUTO_INCREMENT,
  `txtId` varchar(38) NOT NULL,
  `txtStudentName` varchar(200) DEFAULT NULL,
  `txtEmailId` varchar(200) DEFAULT NULL,
  `txtContactNumber` varchar(200) DEFAULT NULL,
  `txtCollegeName` varchar(30) NOT NULL,
  `txtBranchName` varchar(30) NOT NULL,
  `txtTechnologyName` varchar(30) NOT NULL,
  `txtEnquiredFrom` text,
  `txtIsActive` char(1) DEFAULT NULL,
  `txtEntryDate` datetime DEFAULT NULL,
  PRIMARY KEY (`txtIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobalert`
--

CREATE TABLE IF NOT EXISTS `tbl_jobalert` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtCompanyName` varchar(150) DEFAULT NULL,
  `txtExperiance` varchar(20) DEFAULT NULL,
  `txtAddress` varchar(500) NOT NULL,
  `txtEntryDate` datetime DEFAULT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logincounter`
--

CREATE TABLE IF NOT EXISTS `tbl_logincounter` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtEmailId` varchar(50) DEFAULT NULL,
  `txtFromIp` varchar(15) DEFAULT NULL,
  `txtLoginDate` datetime DEFAULT NULL,
  `txtUserType` varchar(10) NOT NULL,
  PRIMARY KEY (`txtId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outsource`
--

CREATE TABLE IF NOT EXISTS `tbl_outsource` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtCompanyName` varchar(50) DEFAULT NULL,
  `txtCompanyEmail` varchar(50) DEFAULT NULL,
  `txtCompanyPhoneNo` varchar(15) DEFAULT NULL,
  `txtCompanyMobileNo` varchar(15) DEFAULT NULL,
  `txtCompanyCity` varchar(20) DEFAULT NULL,
  `txtCompanyState` varchar(20) DEFAULT NULL,
  `txtCompanyAddress` varchar(50) DEFAULT NULL,
  `txtCompanyLandMark` varchar(50) DEFAULT NULL,
  `txtCompanyPinCode` char(6) DEFAULT NULL,
  `txtCompanyFounderName` varchar(50) DEFAULT NULL,
  `txtCompanyFounderEmail` varchar(50) DEFAULT NULL,
  `txtCompanyEmployee` varchar(38) DEFAULT NULL,
  `txtFromIp` varchar(15) DEFAULT NULL,
  `txtEntryDate` datetime DEFAULT NULL,
  `txtEnteredBy` varchar(38) DEFAULT NULL,
  `txtUpdateDate` datetime DEFAULT NULL,
  `txtUpdateBy` varchar(38) DEFAULT NULL,
  `txtIsDelete` char(1) DEFAULT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outsource_project`
--

CREATE TABLE IF NOT EXISTS `tbl_outsource_project` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtOutsourceId` varchar(38) DEFAULT NULL,
  `txtGroupId` char(38) NOT NULL,
  `txtProjectId` varchar(38) DEFAULT NULL,
  `txtAmount` varchar(50) DEFAULT NULL,
  `txtDeliveryDate` varchar(50) DEFAULT NULL,
  `txtRemark` varchar(50) DEFAULT NULL,
  `txtCol3Mark` varchar(50) DEFAULT NULL,
  `txtCol4Mark` varchar(50) DEFAULT NULL,
  `txtCol5Mark` varchar(50) DEFAULT NULL,
  `txtFromIp` varchar(15) DEFAULT NULL,
  `txtEntryDate` datetime DEFAULT NULL,
  `txtEnteredBy` varchar(38) DEFAULT NULL,
  `txtUpdateDate` datetime DEFAULT NULL,
  `txtUpdateBy` varchar(38) DEFAULT NULL,
  `txtIsDelete` char(1) DEFAULT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project`
--

CREATE TABLE IF NOT EXISTS `tbl_project` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtTechnologyName` varchar(50) DEFAULT NULL,
  `txtProjectCategory` varchar(200) NOT NULL,
  `txtProjectName` varchar(500) DEFAULT NULL,
  `txtAbstract` text,
  `txtSynopsis` varchar(500) DEFAULT NULL,
  `txtIeee` varchar(500) DEFAULT NULL,
  `txtPpt` varchar(500) DEFAULT NULL,
  `txtVideo` varchar(500) DEFAULT NULL,
  `txtThesis` varchar(500) DEFAULT NULL,
  `txtFlowDiagram` varchar(500) DEFAULT NULL,
  `txtEntryDate` datetime DEFAULT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`),
  KEY `tbl_project_ibfk_1` (`txtProjectCategory`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_bug`
--

CREATE TABLE IF NOT EXISTS `tbl_project_bug` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtGroupId` char(38) NOT NULL,
  `txtProjectId` varchar(38) DEFAULT NULL,
  `txtModulePath` varchar(500) NOT NULL,
  `txtDescription` text NOT NULL,
  `txtAttachment` varchar(500) DEFAULT NULL,
  `txtReplay` varchar(500) NOT NULL,
  `txtRAttachment` varchar(500) DEFAULT NULL,
  `txtIsActive` char(1) NOT NULL,
  PRIMARY KEY (`txtId`),
  KEY `tbl_project_bug_ibfk_1` (`txtGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_group`
--

CREATE TABLE IF NOT EXISTS `tbl_project_group` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtInquiryId` char(38) NOT NULL,
  `txtGroupCode` varchar(15) DEFAULT NULL,
  `txtProjectId` varchar(38) DEFAULT NULL,
  `txtGropuMember` int(1) DEFAULT NULL,
  `txtPassword` varchar(20) DEFAULT NULL,
  `txtProjectAmt` int(7) DEFAULT NULL,
  `txtPaidAmt` int(7) DEFAULT NULL,
  `txtBalanceAmt` int(7) DEFAULT NULL,
  `txtRemark` varchar(150) DEFAULT NULL,
  `txtIsDelete` char(1) DEFAULT NULL,
  `txtSession` int(4) NOT NULL,
  `txtEntryDate` datetime NOT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`),
  KEY `tbl_project_group_ibfk_2` (`txtProjectId`),
  KEY `tbl_project_group_ibfk_1` (`txtInquiryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_inquiry`
--

CREATE TABLE IF NOT EXISTS `tbl_project_inquiry` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtProjectCategory` char(38) NOT NULL,
  `txtEnquirySubject` varchar(300) DEFAULT NULL,
  `txtTechnologyName` varchar(30) NOT NULL,
  `txtEnquiryType` varchar(50) DEFAULT NULL,
  `txtPassword` varchar(20) DEFAULT NULL,
  `txtStudentName` varchar(200) DEFAULT NULL,
  `txtContactNumber` varchar(200) DEFAULT NULL,
  `txtEmailId` varchar(200) DEFAULT NULL,
  `txtCollegeName` varchar(30) NOT NULL,
  `txtCityName` varchar(50) NOT NULL,
  `txtProjectBudged` varchar(500) NOT NULL,
  `txtEnquiredFrom` text,
  `txtEntryDate` datetime DEFAULT NULL,
  `txtRemark` varchar(500) DEFAULT NULL,
  `txtIsGroup` char(1) NOT NULL,
  `txtIsFinal` char(1) NOT NULL,
  `txtIsDelete` char(1) DEFAULT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_inquiry_material`
--

CREATE TABLE IF NOT EXISTS `tbl_project_inquiry_material` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtInquiryId` varchar(38) DEFAULT NULL,
  `txtMaterialTitle` varchar(50) DEFAULT NULL,
  `txtAttchment` varchar(500) DEFAULT NULL,
  `txtEntryDate` datetime DEFAULT NULL,
  PRIMARY KEY (`txtId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_material`
--

CREATE TABLE IF NOT EXISTS `tbl_project_material` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtGroupId` varchar(38) DEFAULT NULL,
  `txtMaterialTitle` varchar(50) DEFAULT NULL,
  `txtAttchment` varchar(500) DEFAULT NULL,
  `txtEntryDate` datetime DEFAULT NULL,
  PRIMARY KEY (`txtId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_modules`
--

CREATE TABLE IF NOT EXISTS `tbl_project_modules` (
  `txtId` int(11) NOT NULL AUTO_INCREMENT,
  `txtDeptId` varchar(38) NOT NULL,
  `txtProjectId` varchar(38) DEFAULT NULL,
  `txtModuleName` varchar(200) DEFAULT NULL,
  `txtDescription` text,
  `txtModuleNo` varchar(15) NOT NULL,
  `txtEntryDate` datetime DEFAULT NULL,
  PRIMARY KEY (`txtId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=126 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_registration`
--

CREATE TABLE IF NOT EXISTS `tbl_project_registration` (
  `txtIndex` int(11) NOT NULL AUTO_INCREMENT,
  `txtId` varchar(38) NOT NULL,
  `txtStudentName` varchar(200) DEFAULT NULL,
  `txtEmailId` varchar(200) DEFAULT NULL,
  `txtContactNumber` varchar(200) DEFAULT NULL,
  `txtCollegeName` varchar(30) NOT NULL,
  `txtBranchName` varchar(30) NOT NULL,
  `txtTechnologyName` varchar(30) NOT NULL,
  `txtEnquiredFrom` text,
  `txtIsActive` char(1) DEFAULT NULL,
  `txtEntryDate` datetime DEFAULT NULL,
  PRIMARY KEY (`txtIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_requirement`
--

CREATE TABLE IF NOT EXISTS `tbl_project_requirement` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtInquiryId` varchar(38) DEFAULT NULL,
  `txtIeee` varchar(500) NOT NULL,
  `txtDescription` text NOT NULL,
  `txtEntryDate` datetime NOT NULL,
  `txtIsActive` char(1) NOT NULL,
  PRIMARY KEY (`txtId`),
  KEY `tbl_project_requirement_ibfk_1` (`txtInquiryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_status`
--

CREATE TABLE IF NOT EXISTS `tbl_project_status` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtGroupId` varchar(38) DEFAULT NULL,
  `txtStatusLevel` varchar(20) DEFAULT NULL,
  `txtStatusRemark` varchar(150) DEFAULT NULL,
  `txtStatusAttachment` varchar(500) NOT NULL,
  `txtEntryDate` datetime DEFAULT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`),
  KEY `txtGroupId` (`txtGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_updates`
--

CREATE TABLE IF NOT EXISTS `tbl_project_updates` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtGroupId` varchar(38) DEFAULT NULL,
  `txtProjectId` char(38) DEFAULT NULL,
  `txtDescription` text,
  `txtAttachmet` text,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`),
  KEY `tbl_project_updates_ibfk_1` (`txtProjectId`),
  KEY `tbl_project_updates_ibfk_2` (`txtGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quick_inquiry`
--

CREATE TABLE IF NOT EXISTS `tbl_quick_inquiry` (
  `txtIndex` int(11) NOT NULL AUTO_INCREMENT,
  `txtId` varchar(38) NOT NULL,
  `txtStudentName` varchar(200) DEFAULT NULL,
  `txtContactNumber` varchar(200) DEFAULT NULL,
  `txtEmailId` varchar(200) DEFAULT NULL,
  `txtEnquiredFrom` text,
  `txtIsDelete` char(1) DEFAULT NULL,
  `txtEntryDate` datetime DEFAULT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtIndex`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_snapshot`
--

CREATE TABLE IF NOT EXISTS `tbl_snapshot` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtProjectId` varchar(38) DEFAULT NULL,
  `txtSnapUrl` varchar(500) DEFAULT NULL,
  `txtDescription` text,
  PRIMARY KEY (`txtId`),
  KEY `tbl_snapshot_ibfk_1` (`txtProjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE IF NOT EXISTS `tbl_student` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtGroupId` varchar(38) DEFAULT NULL,
  `txtStudentName` varchar(50) DEFAULT NULL,
  `txtStudentEmail` varchar(50) DEFAULT NULL,
  `txtMobileNo` varchar(15) DEFAULT NULL,
  `txtAddress` varchar(50) DEFAULT NULL,
  `txtBirthDate` date DEFAULT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`),
  KEY `tbl_student_ibfk_1` (`txtGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tallychart`
--

CREATE TABLE IF NOT EXISTS `tbl_tallychart` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtTransactionType` varchar(10) NOT NULL,
  `txtPersonName` varchar(100) DEFAULT NULL,
  `txtAmount` int(7) DEFAULT NULL,
  `txtDescription` text,
  `txtEntryDate` datetime DEFAULT NULL,
  `txtEnteredBy` varchar(38) DEFAULT NULL,
  `txtIsDelete` char(1) DEFAULT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tallychart_1`
--

CREATE TABLE IF NOT EXISTS `tbl_tallychart_1` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtOtherId` varchar(38) NOT NULL,
  `txtOrgId` varchar(38) DEFAULT NULL,
  `txtTransactionType` varchar(10) NOT NULL,
  `txtPersonName` varchar(100) DEFAULT NULL,
  `txtAmount` int(7) DEFAULT NULL,
  `txtDescription` text,
  `txtFromIp` varchar(15) DEFAULT NULL,
  `txtEntryDate` datetime DEFAULT NULL,
  `txtEnteredBy` varchar(38) DEFAULT NULL,
  `txtUpdateDate` datetime DEFAULT NULL,
  `txtUpdateBy` varchar(38) DEFAULT NULL,
  `txtIsDelete` char(1) DEFAULT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tallychart_29_08_2015`
--

CREATE TABLE IF NOT EXISTS `tbl_tallychart_29_08_2015` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtTransactionType` varchar(10) NOT NULL,
  `txtPersonName` varchar(100) DEFAULT NULL,
  `txtAmount` int(7) DEFAULT NULL,
  `txtDescription` text,
  `txtEntryDate` datetime DEFAULT NULL,
  `txtEnteredBy` varchar(38) DEFAULT NULL,
  `txtIsDelete` char(1) DEFAULT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_task_allocation`
--

CREATE TABLE IF NOT EXISTS `tbl_task_allocation` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtToEmployee` varchar(38) DEFAULT NULL,
  `txtSubject` varchar(500) DEFAULT NULL,
  `txtAttachment` varchar(200) DEFAULT NULL,
  `txtDescription` text,
  `txtReply` text NOT NULL,
  `txtSuggession` varchar(500) NOT NULL,
  `txtUpload` varchar(500) NOT NULL,
  `txtIsActive` char(1) DEFAULT NULL,
  PRIMARY KEY (`txtId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_technology`
--

CREATE TABLE IF NOT EXISTS `tbl_technology` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtProjectCategory` varchar(500) DEFAULT NULL,
  `txtTechnologyDesc` text,
  `txtUrl` varchar(500) NOT NULL,
  PRIMARY KEY (`txtId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_worklog`
--

CREATE TABLE IF NOT EXISTS `tbl_worklog` (
  `txtId` varchar(38) NOT NULL,
  `txtDeptId` varchar(38) NOT NULL,
  `txtOtherPk` varchar(38) NOT NULL,
  `txtFromSection` varchar(50) DEFAULT NULL,
  `txtFromMenu` varchar(50) DEFAULT NULL,
  `txtDescription` text,
  `txtEntryDateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`txtId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_algorithm`
--
ALTER TABLE `tbl_algorithm`
  ADD CONSTRAINT `tbl_algorithm_ibfk_1` FOREIGN KEY (`txtCategoryId`) REFERENCES `tbl_technology` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_group_account`
--
ALTER TABLE `tbl_group_account`
  ADD CONSTRAINT `tbl_group_account_ibfk_1` FOREIGN KEY (`txtGroupId`) REFERENCES `tbl_project_group` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_group_account_ibfk_2` FOREIGN KEY (`txtProjectId`) REFERENCES `tbl_project` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_group_queries`
--
ALTER TABLE `tbl_group_queries`
  ADD CONSTRAINT `tbl_group_queries_ibfk_1` FOREIGN KEY (`txtGroupId`) REFERENCES `tbl_project_group` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_group_queries_ibfk_2` FOREIGN KEY (`txtProjectId`) REFERENCES `tbl_project` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_group_queries_answer`
--
ALTER TABLE `tbl_group_queries_answer`
  ADD CONSTRAINT `tbl_group_queries_answer_ibfk_1` FOREIGN KEY (`txtQueriesId`) REFERENCES `tbl_group_queries` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_group_queries_answer_ibfk_2` FOREIGN KEY (`txtProjectId`) REFERENCES `tbl_project` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_group_schedules`
--
ALTER TABLE `tbl_group_schedules`
  ADD CONSTRAINT `tbl_group_schedules_ibfk_1` FOREIGN KEY (`txtGroupId`) REFERENCES `tbl_project_group` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_group_telecalling`
--
ALTER TABLE `tbl_group_telecalling`
  ADD CONSTRAINT `tbl_group_telecalling_ibfk_1` FOREIGN KEY (`txtGroupId`) REFERENCES `tbl_project_group` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_inquiry_telecalling`
--
ALTER TABLE `tbl_inquiry_telecalling`
  ADD CONSTRAINT `tbl_inquiry_telecalling_ibfk_1` FOREIGN KEY (`txtInquiryId`) REFERENCES `tbl_project_inquiry` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD CONSTRAINT `tbl_project_ibfk_1` FOREIGN KEY (`txtProjectCategory`) REFERENCES `tbl_technology` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_project_bug`
--
ALTER TABLE `tbl_project_bug`
  ADD CONSTRAINT `tbl_project_bug_ibfk_1` FOREIGN KEY (`txtGroupId`) REFERENCES `tbl_project_group` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_project_group`
--
ALTER TABLE `tbl_project_group`
  ADD CONSTRAINT `tbl_project_group_ibfk_1` FOREIGN KEY (`txtInquiryId`) REFERENCES `tbl_project_inquiry` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_project_group_ibfk_2` FOREIGN KEY (`txtProjectId`) REFERENCES `tbl_project` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_project_requirement`
--
ALTER TABLE `tbl_project_requirement`
  ADD CONSTRAINT `tbl_project_requirement_ibfk_1` FOREIGN KEY (`txtInquiryId`) REFERENCES `tbl_project_inquiry` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_project_status`
--
ALTER TABLE `tbl_project_status`
  ADD CONSTRAINT `tbl_project_status_ibfk_1` FOREIGN KEY (`txtGroupId`) REFERENCES `tbl_project_group` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_project_updates`
--
ALTER TABLE `tbl_project_updates`
  ADD CONSTRAINT `tbl_project_updates_ibfk_1` FOREIGN KEY (`txtProjectId`) REFERENCES `tbl_project` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_project_updates_ibfk_2` FOREIGN KEY (`txtGroupId`) REFERENCES `tbl_project_group` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_snapshot`
--
ALTER TABLE `tbl_snapshot`
  ADD CONSTRAINT `tbl_snapshot_ibfk_1` FOREIGN KEY (`txtProjectId`) REFERENCES `tbl_project` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD CONSTRAINT `tbl_student_ibfk_1` FOREIGN KEY (`txtGroupId`) REFERENCES `tbl_project_group` (`txtId`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

