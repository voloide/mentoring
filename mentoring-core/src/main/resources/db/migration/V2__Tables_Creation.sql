-- TABLE STRUCTURE FOR TABLE `CARRERS`
DROP TABLE IF EXISTS `CARRERS`;
CREATE TABLE `CARRERS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_AT` datetime NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `LIFE_CYCLE_STATUS` varchar(100) NOT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `UUID` varchar(50) NOT NULL,
  `CARRER_TYPE` varchar(50) NOT NULL,
  `POSITION` varchar(80) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8;

-- TABLE STRUCTURE FOR TABLE `DISTRICTS`
DROP TABLE IF EXISTS `DISTRICTS`;
CREATE TABLE `DISTRICTS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_AT` datetime NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `LIFE_CYCLE_STATUS` varchar(100) NOT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `UUID` varchar(50) NOT NULL,
  `DISTRICT` varchar(50) NOT NULL,
  `PROVINCE` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- TABLE STRUCTURE FOR TABLE `HEALTH_FACILITIES`
DROP TABLE IF EXISTS `HEALTH_FACILITIES`;
CREATE TABLE `HEALTH_FACILITIES` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_AT` datetime NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `LIFE_CYCLE_STATUS` varchar(100) NOT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `UUID` varchar(50) NOT NULL,
  `HEALTH_FACILITY` varchar(80) NOT NULL,
  `DISTRICT_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_kw7nq3kpv3uvclaxlw24wqfg2` (`DISTRICT_ID`),
  CONSTRAINT `FK_kw7nq3kpv3uvclaxlw24wqfg2` FOREIGN KEY (`DISTRICT_ID`) REFERENCES `DISTRICTS` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- TABLE STRUCTURE FOR TABLE `PROGRAMMATIC_AREAS`
DROP TABLE IF EXISTS `PROGRAMMATIC_AREAS`;
CREATE TABLE `PROGRAMMATIC_AREAS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_AT` datetime NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `LIFE_CYCLE_STATUS` varchar(100) NOT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `UUID` varchar(50) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_k5cgvh7u59596rnxos9wd4wjl` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- TABLE STRUCTURE FOR TABLE `TUTOREDS`
DROP TABLE IF EXISTS `TUTOREDS`;
CREATE TABLE `TUTOREDS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_AT` datetime NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `LIFE_CYCLE_STATUS` varchar(100) NOT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `UUID` varchar(50) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `PHONE_NUMBER` varchar(100) NOT NULL,
  `SURNAME` varchar(50) NOT NULL,
  `VERSION` int(11) DEFAULT NULL,
  `CARRER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_mmelsbvnb2fictgbf7lkomugl` (`CODE`),
  KEY `FK_allb4qoaputbxbex26qhgt6g1` (`CARRER_ID`),
  CONSTRAINT `FK_allb4qoaputbxbex26qhgt6g1` FOREIGN KEY (`CARRER_ID`) REFERENCES `CARRERS` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- TABLE STRUCTURE FOR TABLE `TUTORS`
DROP TABLE IF EXISTS `TUTORS`;
CREATE TABLE `TUTORS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_AT` datetime NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `LIFE_CYCLE_STATUS` varchar(100) NOT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `UUID` varchar(50) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `PHONE_NUMBER` varchar(50) NOT NULL,
  `SURNAME` varchar(50) NOT NULL,
  `CARRER_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_hsstv4qfr1tne50hemswa9okw` (`CODE`),
  KEY `FK_e1hyoncgd4kv7kin3t7k352dj` (`CARRER_ID`),
  CONSTRAINT `FK_e1hyoncgd4kv7kin3t7k352dj` FOREIGN KEY (`CARRER_ID`) REFERENCES `CARRERS` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- TABLE STRUCTURE FOR TABLE `FORMS`
DROP TABLE IF EXISTS `FORMS`;
CREATE TABLE `FORMS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_AT` datetime NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `LIFE_CYCLE_STATUS` varchar(100) NOT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `UUID` varchar(50) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `PROGRAMMATIC_AREA_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_jy18kqb3mfw4fqhub2skebd72` (`CODE`),
  KEY `FK_2vshqrp7tdm59cuwkxdmp2iuo` (`PROGRAMMATIC_AREA_ID`),
  CONSTRAINT `FK_2vshqrp7tdm59cuwkxdmp2iuo` FOREIGN KEY (`PROGRAMMATIC_AREA_ID`) REFERENCES `PROGRAMMATIC_AREAS` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- TABLE STRUCTURE FOR TABLE `QUESTIONS`
DROP TABLE IF EXISTS `QUESTIONS`;
CREATE TABLE `QUESTIONS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_AT` datetime NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `LIFE_CYCLE_STATUS` varchar(100) NOT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `UUID` varchar(50) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `QUESTION` varchar(255) NOT NULL,
  `QUESTION_CATEGORY` varchar(50) NOT NULL,
  `QUESTION_TYPE` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_p51wl254sfjbleebgfc8rxyly` (`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;

-- TABLE STRUCTURE FOR TABLE `FORMS_QUESTIONS`
DROP TABLE IF EXISTS `FORMS_QUESTIONS`;
CREATE TABLE `FORMS_QUESTIONS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_AT` datetime NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `LIFE_CYCLE_STATUS` varchar(100) NOT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `UUID` varchar(50) NOT NULL,
  `MANDATORY` bit(1) NOT NULL,
  `FORM_ID` bigint(20) NOT NULL,
  `QUESTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_5gfa1ao9vc4nymq9182408ig4` (`FORM_ID`,`QUESTION_ID`),
  KEY `FK_65y4ka36d6ei0qvtiwq1u0ssk` (`QUESTION_ID`),
  CONSTRAINT `FK_65y4ka36d6ei0qvtiwq1u0ssk` FOREIGN KEY (`QUESTION_ID`) REFERENCES `QUESTIONS` (`ID`),
  CONSTRAINT `FK_jva7738ctlcw665qamwx4is9j` FOREIGN KEY (`FORM_ID`) REFERENCES `FORMS` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8;

-- TABLE STRUCTURE FOR TABLE `MENTORSHIPS`
DROP TABLE IF EXISTS `MENTORSHIPS`;
CREATE TABLE `MENTORSHIPS` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_AT` datetime NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `LIFE_CYCLE_STATUS` varchar(100) NOT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `UUID` varchar(50) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `END_DATE` datetime NOT NULL,
  `START_DATE` datetime NOT NULL,
  `FORM_ID` bigint(20) NOT NULL,
  `HEALTH_FACILITY` bigint(20) NOT NULL,
  `TUTOR_ID` bigint(20) NOT NULL,
  `TUTORED_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_48bivb6gk85g6ja4m5b2ei8qk` (`CODE`),
  KEY `FK_4cc8ppcsw1shrfhfemrn5fc99` (`FORM_ID`),
  KEY `FK_bvd7qvkjc8oy675bf6yv6jud3` (`HEALTH_FACILITY`),
  KEY `FK_9nef3tncy87ucx3ea0mqy44bs` (`TUTOR_ID`),
  KEY `FK_nyxrqojuhntn8ruyjbjmgmp8n` (`TUTORED_ID`),
  CONSTRAINT `FK_4cc8ppcsw1shrfhfemrn5fc99` FOREIGN KEY (`FORM_ID`) REFERENCES `FORMS` (`ID`),
  CONSTRAINT `FK_9nef3tncy87ucx3ea0mqy44bs` FOREIGN KEY (`TUTOR_ID`) REFERENCES `TUTORS` (`ID`),
  CONSTRAINT `FK_bvd7qvkjc8oy675bf6yv6jud3` FOREIGN KEY (`HEALTH_FACILITY`) REFERENCES `HEALTH_FACILITIES` (`ID`),
  CONSTRAINT `FK_nyxrqojuhntn8ruyjbjmgmp8n` FOREIGN KEY (`TUTORED_ID`) REFERENCES `TUTOREDS` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- TABLE STRUCTURE FOR TABLE `ANSWERS`
DROP TABLE IF EXISTS `ANSWERS`;

CREATE TABLE `ANSWERS` (
  `TYPE` varchar(15) NOT NULL,
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `CREATED_AT` datetime NOT NULL,
  `CREATED_BY` varchar(50) NOT NULL,
  `LIFE_CYCLE_STATUS` varchar(100) NOT NULL,
  `UPDATED_AT` datetime DEFAULT NULL,
  `UPDATED_BY` varchar(50) DEFAULT NULL,
  `UUID` varchar(50) NOT NULL,
  `BOOLEAN_VALUE` bit(1) DEFAULT NULL,
  `TEXT_VALUE` varchar(180) DEFAULT NULL,
  `FORM_ID` bigint(20) NOT NULL,
  `MENTORSHIP_ID` bigint(20) NOT NULL,
  `QUESTION_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_8n7n313s9gw943qs6rhr7tb9c` (`FORM_ID`),
  KEY `FK_roww60bo2ki27wdeus9fc4kt` (`MENTORSHIP_ID`),
  KEY `FK_d9vax6lqppjc9upau668njk19` (`QUESTION_ID`),
  CONSTRAINT `FK_8n7n313s9gw943qs6rhr7tb9c` FOREIGN KEY (`FORM_ID`) REFERENCES `FORMS` (`ID`),
  CONSTRAINT `FK_d9vax6lqppjc9upau668njk19` FOREIGN KEY (`QUESTION_ID`) REFERENCES `QUESTIONS` (`ID`),
  CONSTRAINT `FK_roww60bo2ki27wdeus9fc4kt` FOREIGN KEY (`MENTORSHIP_ID`) REFERENCES `MENTORSHIPS` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=380 DEFAULT CHARSET=utf8;