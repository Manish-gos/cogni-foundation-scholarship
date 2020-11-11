CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` char(68) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `enabled` tinyint(1) default '1',
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `authorities` (
  `username` varchar(50) NOT NULL,
  `authority` varchar(50) NOT NULL,
  UNIQUE KEY `authorities_idx_1` (`username`,`authority`),
  CONSTRAINT `authorities_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


CREATE TABLE `personal_info` (
  `sName` varchar(40) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `fName` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `catagory` varchar(45) NOT NULL,
  `aadhra_no` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `pin` int(11) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `hs_school` varchar(40) NOT NULL,
  `hs_board` varchar(45) NOT NULL,
  `hs_year` varchar(45) NOT NULL,
  `hs_mars` varchar(45) NOT NULL,
  `h_school` varchar(40) NOT NULL,
  `h_board` varchar(45) NOT NULL,
  `h_year` varchar(45) NOT NULL,
  `h_mars` varchar(45) NOT NULL,
  `bName` varchar(40) NOT NULL,
  `branch` varchar(45) NOT NULL,
  `ifsc` varchar(45) NOT NULL,
  `ac_no` varchar(45) NOT NULL,
  PRIMARY KEY  (`userName`),
  KEY `userName` (`userName`),
  CONSTRAINT `personal_info_ibfk_1` FOREIGN KEY (`userName`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `status` (
  `userName` varchar(40) NOT NULL,
  `status` varchar(45) NOT NULL default 'panding',
  PRIMARY KEY  (`userName`),
  CONSTRAINT `userName` FOREIGN KEY (`userName`) REFERENCES `personal_info` (`userName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




