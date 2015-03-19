----
-- phpLiteAdmin database dump (http://phpliteadmin.googlecode.com)
-- phpLiteAdmin version: 1.9.5
-- Exported: 12:02am on March 20, 2015 (CET)
-- database file: ../protected/data/dendor_yii.db
----
BEGIN TRANSACTION;

----
-- Table structure for CatalogGroup
----
CREATE TABLE `CatalogGroup` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `parent_id` INTEGER NOT NULL,
  `image` VARCHAR(255) NOT NULL DEFAULT '',
  `url` VARCHAR(255) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `sorting` smallint(6) NOT NULL DEFAULT '0',
  `page_size` smallint(6) NOT NULL DEFAULT '10',
  `upload_path` VARCHAR(255) NOT NULL DEFAULT '',
  `deleted` tinyint(1) NOT NULL DEFAULT '0'
);

----
-- Data dump for CatalogGroup, a total of 11 rows
----
INSERT INTO "CatalogGroup" ("id","parent_id","image","url","active","sorting","page_size","upload_path","deleted") VALUES ('1','0','group.png','butterfly-valves','1','0','10','butterfly-valves','0');
INSERT INTO "CatalogGroup" ("id","parent_id","image","url","active","sorting","page_size","upload_path","deleted") VALUES ('2','0','group.png','cast-iron-valves','1','0','10','cast-iron-valves','0');
INSERT INTO "CatalogGroup" ("id","parent_id","image","url","active","sorting","page_size","upload_path","deleted") VALUES ('3','0','group.png','check-valves','1','0','10','check-valves','0');
INSERT INTO "CatalogGroup" ("id","parent_id","image","url","active","sorting","page_size","upload_path","deleted") VALUES ('4','0','group.png','solenoid-valves','1','0','10','solenoid-valves','0');
INSERT INTO "CatalogGroup" ("id","parent_id","image","url","active","sorting","page_size","upload_path","deleted") VALUES ('5','0','group.png','filters','1','0','10','filters','0');
INSERT INTO "CatalogGroup" ("id","parent_id","image","url","active","sorting","page_size","upload_path","deleted") VALUES ('6','0','group.png','compensators','1','0','10','compensators','0');
INSERT INTO "CatalogGroup" ("id","parent_id","image","url","active","sorting","page_size","upload_path","deleted") VALUES ('7','0','group.png','ball-valves','1','0','10','ball-valves','0');
INSERT INTO "CatalogGroup" ("id","parent_id","image","url","active","sorting","page_size","upload_path","deleted") VALUES ('8','0','group.png','actuators','1','0','10','actuators','0');
INSERT INTO "CatalogGroup" ("id","parent_id","image","url","active","sorting","page_size","upload_path","deleted") VALUES ('9','0','group.png','accessories','1','0','10','accessories','0');
INSERT INTO "CatalogGroup" ("id","parent_id","image","url","active","sorting","page_size","upload_path","deleted") VALUES ('10','0','group.png','fittings','1','0','10','fittings','0');
INSERT INTO "CatalogGroup" ("id","parent_id","image","url","active","sorting","page_size","upload_path","deleted") VALUES ('11','0','group.png','plungers','1','0','10','plungers','0');

----
-- Table structure for News
----
CREATE TABLE `News` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `category_id` INTEGER NOT NULL,
  `url` VARCHAR(255) DEFAULT '',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `publish_date` datetime DEFAULT NULL,
  `status` VARCHAR(255) DEFAULT '',
  `layout` VARCHAR(2555) DEFAULT '',
  `image` VARCHAR(255) DEFAULT NULL
);

----
-- Data dump for News, a total of 10 rows
----
INSERT INTO "News" ("id","category_id","url","created","updated","publish_date","status","layout","image") VALUES ('1','2','exhibition-in-spb','2015-02-04 14:12:58','2015-02-04 14:12:58','2015-02-04 14:12:58','published','','pipe-and-fittings-historical-information.jpg');
INSERT INTO "News" ("id","category_id","url","created","updated","publish_date","status","layout","image") VALUES ('2','2','exhibition-in-poland','2015-02-05 11:17:32','2015-02-05 11:17:32','2015-02-05 11:17:32','published','','');
INSERT INTO "News" ("id","category_id","url","created","updated","publish_date","status","layout","image") VALUES ('3','1','principle-of-operation-of-electromagnetic-valves','2015-02-05 11:44:02','2015-02-05 11:44:02','2015-02-05 11:44:02','published','','principle_operation_electromagnetic_valves.jpg');
INSERT INTO "News" ("id","category_id","url","created","updated","publish_date","status","layout","image") VALUES ('4','2','exhibition-in-moscow','2015-02-08 00:12:32','2015-02-08 00:12:32','2015-02-08 00:12:32','published','',NULL);
INSERT INTO "News" ("id","category_id","url","created","updated","publish_date","status","layout","image") VALUES ('5','2','exhibition-aqua-term-moscow-2015','2015-02-08 00:52:05','2015-02-08 00:52:05','2015-02-08 00:52:05','published','',NULL);
INSERT INTO "News" ("id","category_id","url","created","updated","publish_date","status","layout","image") VALUES ('6','1','selection-of-pipe-fittings','2015-02-09 00:15:06','2015-02-09 00:15:06','2015-02-09 00:15:06','published','',NULL);
INSERT INTO "News" ("id","category_id","url","created","updated","publish_date","status","layout","image") VALUES ('7','1','pipe-and-fittings-historical-information','2015-02-09 00:25:09','2015-02-09 00:25:09','2015-02-09 00:25:09','published','','pipe-and-fittings-historical-information.jpg');
INSERT INTO "News" ("id","category_id","url","created","updated","publish_date","status","layout","image") VALUES ('8','1','types-of-compensators','2015-03-19 23:30:11','2015-03-19 23:30:11','2015-03-19 23:30:11','published','','types-of-compensators.png');
INSERT INTO "News" ("id","category_id","url","created","updated","publish_date","status","layout","image") VALUES ('9','1','what-a-ball-valve','2015-03-19 23:36:52','2015-03-19 23:36:52','2015-03-19 23:36:52','published','','what-a-ball-valve.jpg');
INSERT INTO "News" ("id","category_id","url","created","updated","publish_date","status","layout","image") VALUES ('10','1','types-of-butterfly-valves','2015-03-19 23:38:57','2015-03-19 23:38:57','2015-03-19 23:38:57','published','','types-of-butterfly-valves.jpg');

----
-- Table structure for NewsCategory
----
CREATE TABLE `NewsCategory` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `parent_id` INTEGER NOT NULL,
  `url` VARCHAR(255) DEFAULT '',
  `full_url` TEXT,
  `layout` VARCHAR(255) DEFAULT '',
  `image` VARCHAR(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `page_size` smallint(6) DEFAULT NULL
);

----
-- Data dump for NewsCategory, a total of 2 rows
----
INSERT INTO "NewsCategory" ("id","parent_id","url","full_url","layout","image","created","updated","page_size") VALUES ('1','0','article','article','','','2015-01-28 15:24:19','2015-01-28 15:24:19','20');
INSERT INTO "NewsCategory" ("id","parent_id","url","full_url","layout","image","created","updated","page_size") VALUES ('2','0','exhibitions','exhibitions','','','2015-01-28 15:26:52','2015-01-28 15:26:52','20');

----
-- Table structure for PropertyDir
----
CREATE TABLE `PropertyDir` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `name` VARCHAR(255) DEFAULT '',
  `description` TEXT
);

----
-- Data dump for PropertyDir, a total of 0 rows
----

----
-- Table structure for PropertyValue
----
CREATE TABLE `PropertyValue` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `property_id` INTEGER NOT NULL,
  `entity_id` INTEGER NOT NULL
);

----
-- Data dump for PropertyValue, a total of 486 rows
----
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('1','1','1');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('2','2','1');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('3','3','1');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('4','4','1');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('5','5','1');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('6','5','2');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('7','6','1');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('8','7','1');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('9','8','1');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('10','8','1');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('11','8','1');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('12','9','1');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('13','9','1');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('14','9','1');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('15','10','1');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('16','1','2');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('17','2','2');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('18','3','2');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('19','4','2');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('20','6','2');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('21','9','2');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('22','9','2');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('23','9','2');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('24','7','2');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('25','10','2');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('26','8','2');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('27','8','2');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('28','8','2');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('29','11','2');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('30','11','2');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('31','1','3');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('32','2','3');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('33','3','3');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('34','4','3');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('35','5','3');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('36','6','3');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('37','7','3');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('38','8','3');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('41','9','3');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('42','9','3');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('43','9','3');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('44','10','3');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('45','11','3');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('46','11','3');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('47','1','4');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('48','2','4');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('49','3','4');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('50','4','4');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('51','5','4');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('52','6','4');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('53','7','4');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('54','8','4');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('55','8','4');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('56','8','4');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('57','9','4');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('58','9','4');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('59','9','4');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('60','10','4');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('63','1','5');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('64','2','5');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('65','3','5');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('66','4','5');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('67','5','5');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('68','6','5');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('69','7','5');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('71','8','5');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('72','8','5');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('73','9','5');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('74','9','5');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('75','9','5');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('76','10','5');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('79','1','6');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('80','2','6');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('81','3','6');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('82','4','6');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('83','5','6');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('84','6','6');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('85','7','6');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('86','8','6');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('87','8','6');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('88','9','6');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('89','9','6');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('90','9','6');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('91','10','6');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('94','1','7');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('95','2','7');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('96','3','7');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('97','4','7');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('98','5','7');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('99','6','7');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('100','7','7');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('101','8','7');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('102','8','7');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('103','9','7');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('104','9','7');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('105','9','7');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('106','10','7');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('107','1','8');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('108','2','8');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('109','3','8');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('110','4','8');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('111','5','8');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('112','6','8');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('113','7','8');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('114','8','8');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('115','8','8');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('116','9','8');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('117','9','8');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('118','9','8');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('119','10','8');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('120','1','9');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('121','2','9');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('122','3','9');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('123','4','9');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('124','5','9');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('125','6','9');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('126','7','9');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('127','8','9');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('128','8','9');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('129','9','9');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('130','9','9');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('131','9','9');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('132','10','9');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('134','1','10');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('135','2','10');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('136','3','10');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('137','4','10');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('138','6','10');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('139','7','10');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('140','8','10');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('141','8','10');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('142','9','10');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('143','9','10');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('144','10','10');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('145','11','10');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('146','5','10');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('147','1','11');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('148','2','11');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('149','3','11');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('150','4','11');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('151','6','11');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('152','7','11');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('153','8','11');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('155','9','11');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('156','9','11');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('157','10','11');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('158','11','11');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('159','5','11');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('160','1','12');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('161','2','12');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('162','3','12');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('163','4','12');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('164','6','12');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('165','7','12');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('166','8','12');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('167','8','12');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('168','9','12');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('169','9','12');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('170','10','12');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('171','11','12');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('172','5','12');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('173','9','12');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('174','1','13');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('175','2','13');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('176','3','13');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('177','4','13');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('178','5','13');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('179','6','13');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('180','9','13');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('181','9','13');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('182','11','13');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('183','7','13');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('184','10','13');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('185','1','14');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('186','2','14');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('187','3','14');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('188','4','14');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('189','5','14');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('190','6','14');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('191','9','14');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('192','9','14');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('193','9','14');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('194','11','14');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('195','7','14');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('196','10','14');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('197','1','15');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('198','2','15');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('199','3','15');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('200','4','15');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('201','5','15');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('202','6','15');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('203','9','15');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('204','9','15');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('205','9','15');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('206','11','15');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('207','7','15');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('208','10','15');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('209','1','16');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('210','2','16');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('211','3','16');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('212','4','16');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('213','5','16');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('214','6','16');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('215','9','16');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('216','9','16');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('217','11','16');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('218','7','16');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('219','10','16');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('220','1','17');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('221','3','17');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('222','4','17');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('223','5','17');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('224','6','17');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('225','9','17');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('226','9','17');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('227','9','17');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('228','7','17');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('229','10','17');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('230','10','17');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('231','1','18');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('232','3','18');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('233','4','18');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('234','5','18');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('235','6','18');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('236','9','18');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('237','9','18');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('238','9','18');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('239','7','18');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('240','10','18');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('241','10','18');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('242','1','19');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('243','3','19');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('244','4','19');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('245','5','19');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('246','6','19');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('247','9','19');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('249','9','19');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('250','7','19');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('251','10','19');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('253','1','20');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('254','3','20');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('255','4','20');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('256','5','20');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('257','6','20');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('258','9','20');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('259','9','20');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('260','9','20');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('261','7','20');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('262','10','20');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('263','1','21');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('264','3','21');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('265','4','21');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('266','5','21');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('267','6','21');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('268','9','21');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('269','9','21');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('270','9','21');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('271','7','21');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('272','10','21');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('273','10','21');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('274','1','22');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('275','3','22');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('276','4','22');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('277','5','22');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('278','6','22');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('279','9','22');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('280','9','22');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('281','9','22');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('282','7','22');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('283','10','22');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('284','10','22');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('285','1','23');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('286','2','23');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('287','3','23');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('288','4','23');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('289','5','23');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('290','6','23');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('291','9','23');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('292','9','23');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('293','9','23');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('294','11','23');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('295','7','23');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('296','10','23');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('297','1','24');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('298','2','24');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('299','3','24');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('300','4','24');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('301','5','24');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('302','6','24');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('303','9','24');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('304','9','24');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('305','7','24');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('306','10','24');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('307','1','25');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('308','2','25');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('309','3','25');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('310','4','25');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('311','5','25');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('312','6','25');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('313','9','25');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('314','9','25');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('315','8','25');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('316','9','25');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('317','11','25');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('318','7','25');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('319','10','25');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('320','1','26');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('321','2','26');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('322','3','26');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('323','4','26');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('324','5','26');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('325','6','26');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('326','9','26');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('327','9','26');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('328','8','26');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('329','9','26');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('330','11','26');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('331','7','26');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('332','10','26');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('333','1','27');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('334','2','27');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('335','3','27');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('336','4','27');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('337','5','27');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('338','6','27');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('339','9','27');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('340','9','27');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('341','9','27');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('342','11','27');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('343','7','27');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('344','10','27');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('345','8','27');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('346','1','28');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('347','2','28');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('348','3','28');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('349','4','28');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('350','5','28');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('351','6','28');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('352','9','28');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('353','9','28');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('354','9','28');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('355','11','28');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('356','7','28');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('357','10','28');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('358','8','28');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('359','1','29');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('360','3','29');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('361','5','29');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('362','6','29');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('363','9','29');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('364','9','29');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('365','11','29');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('366','8','29');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('367','8','29');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('368','12','29');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('369','12','29');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('370','3','30');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('371','5','30');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('372','6','30');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('373','9','30');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('374','11','30');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('375','8','30');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('376','12','30');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('377','12','30');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('378','1','31');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('379','2','31');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('380','3','31');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('381','4','31');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('382','5','31');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('383','6','31');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('384','9','31');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('385','9','31');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('386','7','31');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('387','10','31');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('388','1','32');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('389','2','32');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('390','3','32');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('391','4','32');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('392','5','32');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('393','6','32');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('394','9','32');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('395','9','32');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('396','7','32');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('397','10','32');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('398','1','33');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('399','2','33');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('400','3','33');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('401','4','33');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('402','5','33');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('403','6','33');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('404','9','33');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('405','9','33');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('406','7','33');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('408','1','34');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('409','2','34');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('410','3','34');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('411','4','34');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('412','5','34');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('413','6','34');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('414','9','34');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('415','9','34');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('416','7','34');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('417','10','34');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('418','8','34');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('419','1','35');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('420','2','35');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('421','3','35');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('422','4','35');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('423','5','35');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('424','6','35');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('425','9','35');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('426','9','35');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('427','7','35');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('428','1','36');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('429','2','36');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('430','3','36');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('431','4','36');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('432','5','36');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('433','6','36');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('434','9','36');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('435','9','36');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('436','7','36');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('437','10','36');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('438','1','37');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('439','2','37');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('440','3','37');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('441','4','37');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('442','6','37');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('443','9','37');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('444','11','37');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('445','7','37');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('446','10','37');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('447','1','38');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('448','2','38');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('449','3','38');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('450','4','38');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('451','6','38');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('452','9','38');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('453','11','38');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('454','7','38');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('455','10','38');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('456','1','39');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('457','2','39');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('458','3','39');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('459','4','39');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('460','6','39');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('461','9','39');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('462','11','39');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('463','7','39');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('464','10','39');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('465','1','40');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('466','2','40');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('467','3','40');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('468','4','40');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('469','6','40');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('470','9','40');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('471','11','40');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('472','7','40');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('473','10','40');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('474','1','41');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('475','7','41');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('476','1','42');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('477','2','42');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('478','3','42');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('479','4','42');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('480','5','42');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('481','6','42');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('482','9','42');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('483','9','42');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('484','9','42');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('485','7','42');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('486','1','43');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('487','2','43');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('488','6','43');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('489','9','43');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('490','9','43');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('491','7','43');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('492','10','43');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('493','5','43');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('494','1','44');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('495','2','44');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('496','5','44');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('497','6','44');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('498','9','44');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('499','7','44');
INSERT INTO "PropertyValue" ("id","property_id","entity_id") VALUES ('500','10','44');

----
-- Table structure for slider
----
CREATE TABLE `slider` (
  `id` INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  `data_slidr` VARCHAR(6) DEFAULT NULL,
  `img` VARCHAR(255) DEFAULT NULL,
  `link` VARCHAR(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1'
);

----
-- Data dump for slider, a total of 3 rows
----
INSERT INTO "slider" ("id","data_slidr","img","link","active") VALUES ('1','one','','butterfly-valves','1');
INSERT INTO "slider" ("id","data_slidr","img","link","active") VALUES ('2','two','','cast-iron-valves','1');
INSERT INTO "slider" ("id","data_slidr","img","link","active") VALUES ('3','three','','solenoid-valves','1');

----
-- Table structure for CatalogItemsTranslate
----
CREATE TABLE "CatalogItemsTranslate" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "object_id" integer NOT NULL,
  "language_id" integer NOT NULL,
  "name" text NULL DEFAULT '',
  "short_description" text NULL DEFAULT '',
  "full_description" text NULL DEFAULT '',
  "meta_title" text NULL DEFAULT '',
  "meta_keywords" text NULL DEFAULT '',
  "meta_description" text NULL DEFAULT ''
);

----
-- Data dump for CatalogItemsTranslate, a total of 132 rows
----
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('1','1','1','Przepustnica międzykołnierzowa 017W','Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.','<p>Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.
Przepustnice charakteryzują się kompaktową zwartą budową. Dzięki zastosowaniu specjalnego uszczelnienia kadłub oraz trzpień nie stykają się z przepuszczalnym czynnikiem a co jest równoznaczne ze zwiększeniem odporności i trwałości poszczególnych elementów składowych przepustnic.
Każdy typ przepustnic na żądanie jest kompletowany napędem elektrycznym, pneumatycznym lub ręcznym z przekładnią ślimakową.
Do głównych zalet przepustnic Dendor należą: mała masa, krótka zabudowa, doskonała szczelność w obu kierunkach przepływu, niezawodność i wysoka trwałość, minimalna strata ciśnień, łatwy montaż i demontaż, brak konieczności konserwacji. Nie wymagają one stosowania dodatkowych uszczelek na kołnierzu.</p>
','Przepustnica międzykołnierzowa 017W (dysk - żeliwo niklowane)','','Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Do głównych zalet prze');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('2','1','2','Затвор дисковый поворотный межфланцевый 017W','Дисковые поворотные затворы сегодня являются наиболее распространенным компонентом трубопроводов во всем мире. Высокая герметичность, надёжность и доступная цена на установку и обслуживание делают их идеальным решением для большинства трубопроводных систем.','<p>Дисковые поворотные затворы сегодня являются наиболее распространенным компонентом трубопроводов во всем мире. Высокая герметичность, надёжность и доступная цена на установку и обслуживание делают их идеальным решением для большинства трубопроводных систем.</p>

<p>Дисковые межфланцевые поворотные затворы 017W до ДУ 300 включительно, в заводском исполнении идут в комплекте с ручным управлением (ручкой). К затворам DN350 и более прилагается с редуктор. Все дисковые поворотные затворы Dendor Valve Industrial могут комплектоваться редуктором, электроприводом или пневмоприводом по заказу покупателя.</p>
','Затвор дисковый поворотный межфланцевый 017W','','Дисковые поворотные затворы сегодня являются наиболее распростр');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('3','1','3','Wafer Butterfly Valve 017W','Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.     ','<p>Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.<br />
On your request, the valves  can be fitted with electric/pneumatic actuators, gearboxes as well as automated control systems.
The main advantages of Dendor valves are: low weight, compact design, excellent tightness in both flow directions, reliability and high durability, minimal pressure loss, easy assembly and disassembly, limited maintenance. They do not require additional flange gaskets to be used.</p>
','Wafer butterfly valve 017W','','Wafer butterfly valve 017W');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('4','2','1','Przepustnica międzykołnierzowa 017W (dysk - stal nierdzewna)','Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.','<p>Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.
Przepustnice charakteryzują się kompaktową zwartą budową. Dzięki zastosowaniu specjalnego uszczelnienia kadłub oraz trzpień nie stykają się z przepuszczalnym czynnikiem a co jest równoznaczne ze zwiększeniem odporności i trwałości poszczególnych elementów składowych przepustnic.
Każdy typ przepustnic na żądanie jest kompletowany napędem elektrycznym, pneumatycznym lub ręcznym z przekładnią ślimakową.
Do głównych zalet przepustnic Dendor należą: mała masa, krótka zabudowa, doskonała szczelność w obu kierunkach przepływu, niezawodność i wysoka trwałość, minimalna strata ciśnień, łatwy montaż i demontaż, brak konieczności konserwacji. Nie wymagają one stosowania dodatkowych uszczelek na kołnierzu.</p>
','Przepustnica międzykołnierzowa 017W (dysk - stal nierdzewna)','','Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność pr');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('5','2','2','Затвор дисковый поворотный межфланцевый 017W (диск - нержавеющая сталь)','Дисковые поворотные затворы сегодня являются наиболее распространенным компонентом трубопроводов во всем мире. Высокая герметичность, надёжность и доступная цена на установку и обслуживание делают их идеальным решением для большинства трубопроводных систем.','<p>Дисковые поворотные затворы сегодня являются наиболее распространенным компонентом трубопроводов во всем мире. Высокая герметичность, надёжность и доступная цена на установку и обслуживание делают их идеальным решением для большинства трубопроводных систем.</p>

<p>Дисковые межфланцевые поворотные затворы 017W до ДУ 300 включительно, в заводском исполнении идут в комплекте с ручным управлением (ручкой). К затворам DN350 и более прилагается с редуктор. Все дисковые поворотные затворы Dendor Valve Industrial могут комплектоваться редуктором, электроприводом или пневмоприводом по заказу покупателя.</p>
','Затвор дисковый поворотный межфланцевый 017W, диск - нержавеющая сталь','','Затвор дисковый поворотный межфланцевый 017W, диск - нержавеющая сталь');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('6','2','3','Wafer Butterfly Valve 017W (stainless steel disc)','Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.     ','<p>Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.<br />
On your request, the valves  can be fitted with electric/pneumatic actuators, gearboxes as well as automated control systems.
The main advantages of Dendor valves are: low weight, compact design, excellent tightness in both flow directions, reliability and high durability, minimal pressure loss, easy assembly and disassembly, limited maintenance. They do not require additional flange gaskets to be used.</p>
','Wafer butterfly valve 017W, disc - stainless steel','','Wafer butterfly valve 017W, disc - stainless steel');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('7','3','1','Przepustnica międzykołnierzowa 017W (stal)','Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.','<p>Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.
Przepustnice charakteryzują się kompaktową zwartą budową. Dzięki zastosowaniu specjalnego uszczelnienia kadłub oraz trzpień nie stykają się z przepuszczalnym czynnikiem a co jest równoznaczne ze zwiększeniem odporności i trwałości poszczególnych elementów składowych przepustnic.
Każdy typ przepustnic na żądanie jest kompletowany napędem elektrycznym, pneumatycznym lub ręcznym z przekładnią ślimakową.
Do głównych zalet przepustnic Dendor należą: mała masa, krótka zabudowa, doskonała szczelność w obu kierunkach przepływu, niezawodność i wysoka trwałość, minimalna strata ciśnień, łatwy montaż i demontaż, brak konieczności konserwacji. Nie wymagają one stosowania dodatkowych uszczelek na kołnierzu.</p>
','Przepustnica międzykołnierzowa 017W, stal nierdzewna','','Przepustnica międzykołnierzowa 017W, stal nierdzewna');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('8','3','2','Затвор стальной дисковый поворотный межфланцевый 017W','Дисковые поворотные затворы сегодня являются наиболее распространенным компонентом трубопроводов во всем мире. Высокая герметичность, надёжность и доступная цена на установку и обслуживание делают их идеальным решением для большинства трубопроводных систем','<p>Дисковые поворотные затворы сегодня являются наиболее распространенным компонентом трубопроводов во всем мире. Высокая герметичность, надёжность и доступная цена на установку и обслуживание делают их идеальным решением для большинства трубопроводных систем.</p>

<p>Дисковые межфланцевые поворотные затворы 017W до ДУ 300 включительно, в заводском исполнении идут в комплекте с ручным управлением (ручкой). К затворам DN350 и более прилагается с редуктор. Все дисковые поворотные затворы Dendor Valve Industrial могут комплектоваться редуктором, электроприводом или пневмоприводом по заказу покупателя.</p>
','Затвор стальной дисковый поворотный межфланцевый 017W steel','','Затвор стальной дисковый поворотный межфланцевый 017W steel');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('9','3','3','Wafer Butterfly Valve 017W (stainless steel disc)','Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.     ','<p>Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.<br />
On your request, the valves  can be fitted with electric/pneumatic actuators, gearboxes as well as automated control systems.
The main advantages of Dendor valves are: low weight, compact design, excellent tightness in both flow directions, reliability and high durability, minimal pressure loss, easy assembly and disassembly, limited maintenance. They do not require additional flange gaskets to be used.</p>
','Wafer butterfly valve 017W steel','','Wafer butterfly valve 017W steel');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('10','4','1','Przepustnica międzykołnierzowa 031PW (dysk z tw. szt.)','Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.','<p>Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.
Przepustnice charakteryzują się kompaktową zwartą budową. Dzięki zastosowaniu specjalnego uszczelnienia kadłub oraz trzpień nie stykają się z przepuszczalnym czynnikiem a co jest równoznaczne ze zwiększeniem odporności i trwałości poszczególnych elementów składowych przepustnic.
Każdy typ przepustnic na żądanie jest kompletowany napędem elektrycznym, pneumatycznym lub ręcznym z przekładnią ślimakową.
Do głównych zalet przepustnic Dendor należą: mała masa, krótka zabudowa, doskonała szczelność w obu kierunkach przepływu, niezawodność i wysoka trwałość, minimalna strata ciśnień, łatwy montaż i demontaż, brak konieczności konserwacji. Nie wymagają one stosowania dodatkowych uszczelek na kołnierzu.</p>
','Przepustnica międzykołnierzowa (dysk z tw. szt.)','','Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność pr');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('11','4','2','Затвор ПВХ межфланцевый 031PW','Эта новая линейка дисковых поворотных затворов получает заслуженную похвалу в нашем ведущем ряде изделий, закрывающихся на четверть оборота, и предлагает альтернативный экономичный вариант взамен чугунных затворов, при этом нисколько не уступая им по устойчивости к коррозии.','<p>Эта новая линейка дисковых поворотных затворов получает заслуженную похвалу в нашем ведущем ряде изделий, закрывающихся на четверть оборота, и предлагает альтернативный экономичный вариант взамен чугунных затворов, при этом нисколько не уступая им по устойчивости к коррозии.</p>

<p>Недорогие полимерные материалы, легкий вес, отсутствие в конструкции тяжелых металлических частей, минимум подвижных деталей делают дисковый затвор 031PW простым в управлении и дешевым в монтаже.</p>

<p>Благодаря малому весу и простоте конструкции дискового затвора из пластика, монтаж производится быстрее, легче и не требует дополнительных расходов.</p>

<p>Затворы ПВХ доступны в размерах от 50 до 500 мм и оборудованы ручным рычагом или ручным редукторным приводом.</p>

<p>Малый крутящий момент позволяет легко управлять затвором рукояткой или редуктором. А в исполнении с электроприводом, затвором 031PW можно управлять дистанционно.</p>

<p>Сами затворы ПВХ рассчитаны на максимальное давление в 10 бар для всех типоразмеров, и рабочую температуру до 150°C.</p>
','Затвор ПВХ межфланцевый 031PW','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('12','4','3','Wafer Butterfly Valve 031PW (PVC disc)','Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.     ','<p>Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.<br />
On your request, the valves  can be fitted with electric/pneumatic actuators, gearboxes as well as automated control systems.
The main advantages of Dendor valves are: low weight, compact design, excellent tightness in both flow directions, reliability and high durability, minimal pressure loss, easy assembly and disassembly, limited maintenance. They do not require additional flange gaskets to be used.</p>
','Przepustnica międzykołnierzowa (dysk z tw. szt.)','','Dendor’s range of butterfly wafer valves allow for easy medium flow. They have been specifically designed to ensure ex');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('13','5','1','Przepustnica międzykołnierzowa z przekładnią 031PWG (dysk PVC)','Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.','<p>Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.
Przepustnice charakteryzują się kompaktową zwartą budową. Dzięki zastosowaniu specjalnego uszczelnienia kadłub oraz trzpień nie stykają się z przepuszczalnym czynnikiem a co jest równoznaczne ze zwiększeniem odporności i trwałości poszczególnych elementów składowych przepustnic.
Każdy typ przepustnic na żądanie jest kompletowany napędem elektrycznym, pneumatycznym lub ręcznym z przekładnią ślimakową.
Do głównych zalet przepustnic Dendor należą: mała masa, krótka zabudowa, doskonała szczelność w obu kierunkach przepływu, niezawodność i wysoka trwałość, minimalna strata ciśnień, łatwy montaż i demontaż, brak konieczności konserwacji. Nie wymagają one stosowania dodatkowych uszczelek na kołnierzu.</p>
','Przepustnica międzykołnierzowa z przekładnią 031PWG (dysk PVC)','','Niedrogie tworzywa sztuczne, mała masa, brak jakichkolwiek ciężkich części metalowych, minimum części ruchomych s');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('14','5','2','Дисковый затвор ПВХ с редуктором 031PVG','Затвор Dendor 031PW изготовлен из прочных полимерных материалов, таких как поливинил и полипропилен, что исключает возникновении коррозии, увеличивая срок службы изделия, и соответственно трубопровода.','<p>Недорогие полимерные материалы, легкий вес, отсутствие в конструкции тяжелых металлических частей, минимум подвижных деталей делают затвор Dendor 031PW простым в управлении и дешевым в монтаже.</p>

<p>Благодаря малому весу и простоте конструкции затвора, монтаж производится быстрее, легче и не требует дополнительных расходов.</p>

<p>Малый крутящий момент позволяет легко управлять затвором рукояткой или редуктором. А в исполнении с электроприводом Dendor, затвором 031PW можно управлять дистанционно.</p>

<p>Затвор Dendor 031PW изготовлен из прочных полимерных материалов, таких как поливинил и полипропилен, что исключает возникновении коррозии, увеличивая срок службы изделия, и соответственно трубопровода.</p>

<p>Низкая стоимость установки и обслуживания, прочные, легкие, компактные, а так же высокая герметичность — делают затворы Dendor 031PW идеальным решением для большинства трубопроводных систем.</p>
','Дисковый затвор ПВХ с редуктором 031PVG','','Затвор Dendor 031PW изготовлен из прочных полимерных материалов, таких');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('15','5','3','Wafer Butterfly Valve Gearbox Operated 031PWG (PVC disc)','Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.     ','<p>Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.<br />
On your request, the valves  can be fitted with electric/pneumatic actuators, gearboxes as well as automated control systems.
The main advantages of Dendor valves are: low weight, compact design, excellent tightness in both flow directions, reliability and high durability, minimal pressure loss, easy assembly and disassembly, limited maintenance. They do not require additional flange gaskets to be used.</p>
','Przepustnica międzykołnierzowa z przekładnią 031PWG (dysk PVC)','','Przepustnica międzykołnierzowa z przekładnią 031PWG (dysk PVC)');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('16','6','1','Przepustnica kołnierzowa 021F','Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.','<p>Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.
Przepustnice charakteryzują się kompaktową zwartą budową. Dzięki zastosowaniu specjalnego uszczelnienia kadłub oraz trzpień nie stykają się z przepuszczalnym czynnikiem a co jest równoznaczne ze zwiększeniem odporności i trwałości poszczególnych elementów składowych przepustnic.
Każdy typ przepustnic na żądanie jest kompletowany napędem elektrycznym, pneumatycznym lub ręcznym z przekładnią ślimakową.
Do głównych zalet przepustnic Dendor należą: mała masa, krótka zabudowa, doskonała szczelność w obu kierunkach przepływu, niezawodność i wysoka trwałość, minimalna strata ciśnień, łatwy montaż i demontaż, brak konieczności konserwacji. Nie wymagają one stosowania dodatkowych uszczelek na kołnierzu.</p>
','Przepustnica zwrotna kołnierzowa 021F','','Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność pr');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('17','6','2','Затвор дисковый поворотный фланцевый 021F','','<p>Дисковый фланцевый затвор модели 021F идеально подходят для монтажа на объекты, где по каким либо причинам невозможен монтаж межфланцевого затвора. Фланцевый затвор устанавливается на обычные плоские фланцы – это сокращает расходы на монтажные работы.</p>

<p>В основе корпуса дискового фланцевого затвора – чугун или сталь. Корпус покрывается долговечным эпоксидным полимерным покрытием, обеспечивающим 100%-ную защиту от коррозии. Седловое уплотнение может производиться из разных материалов в зависимости от назначения и подходит практически для любых условий применения.</p>
','Затвор дисковый поворотный фланцевый 021F','','Затвор дисковый поворотный фланцевый 021F');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('18','6','3','Wafer Butterfly Valve 021F','Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.  ','<p>Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.<br />
On your request, the valves  can be fitted with electric/pneumatic actuators, gearboxes as well as automated control systems.
The main advantages of Dendor valves are: low weight, compact design, excellent tightness in both flow directions, reliability and high durability, minimal pressure loss, easy assembly and disassembly, limited maintenance. They do not require additional flange gaskets to be used.</p>
','Wafer butterfly valve 021F','','Dendor’s range of butterfly wafer valves allows for easy medium flow. They have been specifically designed to ensure e');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('19','7','1','Przepustnica kołnierzowa mimośrodowa 023F','Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.','<p>Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.
Przepustnice charakteryzują się kompaktową zwartą budową. Dzięki zastosowaniu specjalnego uszczelnienia kadłub oraz trzpień nie stykają się z przepuszczalnym czynnikiem a co jest równoznaczne ze zwiększeniem odporności i trwałości poszczególnych elementów składowych przepustnic.
Każdy typ przepustnic na żądanie jest kompletowany napędem elektrycznym, pneumatycznym lub ręcznym z przekładnią ślimakową.
Do głównych zalet przepustnic Dendor należą: mała masa, krótka zabudowa, doskonała szczelność w obu kierunkach przepływu, niezawodność i wysoka trwałość, minimalna strata ciśnień, łatwy montaż i demontaż, brak konieczności konserwacji. Nie wymagają one stosowania dodatkowych uszczelek na kołnierzu.</p>
','Przepustnica kołnierzowa mimośrodowa 023F','','Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność pr');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('20','7','2','Затвор поворотный фланцевый с эксцентриситетом 023F','','<p>Главным преимуществом затворов с эксцентриситетом является практически полное отсутствие трения в запорном узле и герметичность в обоих направлениях. Данные преимущества делают затвор надёжным и долговечным устройством.</p>

<p>Абсолютная герметичность и безопасность при экстремальных перепадах температуры и давления гарантированы за счет оптимальной эксцентриковой конструкции поворотного затвора. Низкий крутящий момент при открытии/закрытии и газонепроницаемость являются также преимуществами данной конструкции. Имеется возможность быстрой и простой замены уплотнения без разборки самого затвора.</p>

<p>Корпус затвора литой, выполнен из чугуна или стали окрашенный долговечным эпоксидным полимерным составом, который на 100% предохраняет затвор от образования коррозии. Седловое уплотнение изготавливается из различных материалов, которые подходят практически для всех условий применения.</p>

<p>Затворы могут поставляться с несколькими вариантами седлового уплотнения и уплотнения диска: EPDM, NBR, VITON.</p>
','Затвор поворотный фланцевый с эксцентриситетом 023F','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('21','7','3','Eccentric Wafer Butterfly Valve 023F','Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium. ','<p>Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.<br />
On your request, the valves  can be fitted with electric/pneumatic actuators, gearboxes as well as automated control systems.
The main advantages of Dendor valves are: low weight, compact design, excellent tightness in both flow directions, reliability and high durability, minimal pressure loss, easy assembly and disassembly, limited maintenance. They do not require additional flange gaskets to be used.</p>
','Eccentric wafer butterfly valve 023F','','Dendor’s range of butterfly wafer valves allows for easy medium flow. They have been specifically designed to ensure e');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('22','8','1','Przepustnica kołnierzowa mimośrodowa do wspawania 027W','Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.','<p>Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.
Przepustnice charakteryzują się kompaktową zwartą budową. Dzięki zastosowaniu specjalnego uszczelnienia kadłub oraz trzpień nie stykają się z przepuszczalnym czynnikiem a co jest równoznaczne ze zwiększeniem odporności i trwałości poszczególnych elementów składowych przepustnic.
Każdy typ przepustnic na żądanie jest kompletowany napędem elektrycznym, pneumatycznym lub ręcznym z przekładnią ślimakową.
Do głównych zalet przepustnic Dendor należą: mała masa, krótka zabudowa, doskonała szczelność w obu kierunkach przepływu, niezawodność i wysoka trwałość, minimalna strata ciśnień, łatwy montaż i demontaż, brak konieczności konserwacji. Nie wymagają one stosowania dodatkowych uszczelek na kołnierzu.</p>
','Przepustnica kołnierzowa mimośrodowa do wspawania 027W','','Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność pr');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('23','8','2','Затвор стальной приварной с эксцентриситетом 027W','','<p>Дисковые стальные затворы с эксцентриситетом (стальные затворы с концами под приварку) предназначены для работы в качестве запорного устройства на трубопроводе в более жестких условиях.</p>

<p>Эксцентриситет снижает трение в узле затвора, благодаря этому затвор служит дольше.</p>

<p>Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет затвор от коррозии.</p>
','Затвор стальной приварной с эксцентриситетом 027W','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('24','8','3','Weld End Eccentric Butterfly Valve 027W','Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.     ','<p>Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.<br />
On your request, the valves  can be fitted with electric/pneumatic actuators, gearboxes as well as automated control systems.
The main advantages of Dendor valves are: low weight, compact design, excellent tightness in both flow directions, reliability and high durability, minimal pressure loss, easy assembly and disassembly, limited maintenance. They do not require additional flange gaskets to be used.</p>
','Weld-end eccentric butterfly valve 027W','','Dendor’s range of butterfly wafer valves allows for easy medium flow. They have been specifically designed to ensure e');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('25','9','1','Przepustnica kołnierzowa mimośrodowa 027F','Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.','<p>Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność przepustnic zapewnia dopasowany dysk do pierścienia uszczelniającego.
Przepustnice charakteryzują się kompaktową zwartą budową. Dzięki zastosowaniu specjalnego uszczelnienia kadłub oraz trzpień nie stykają się z przepuszczalnym czynnikiem a co jest równoznaczne ze zwiększeniem odporności i trwałości poszczególnych elementów składowych przepustnic.
Każdy typ przepustnic na żądanie jest kompletowany napędem elektrycznym, pneumatycznym lub ręcznym z przekładnią ślimakową.
Do głównych zalet przepustnic Dendor należą: mała masa, krótka zabudowa, doskonała szczelność w obu kierunkach przepływu, niezawodność i wysoka trwałość, minimalna strata ciśnień, łatwy montaż i demontaż, brak konieczności konserwacji. Nie wymagają one stosowania dodatkowych uszczelek na kołnierzu.</p>
','Przepustnica ze stali mimośrodowa do wspawania 027W','','Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealną szczelność pr');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('26','9','2','Затвор стальной фланцевый с эксцентриситетом 027F','','<p>Главным преимуществом затворов фланцевых с эксцентриситетом является практически полное отсутствие трения в запорном узле и герметичность в обоих направлениях. Данные преимущества делают затвор надёжным и долговечным устройством.</p>

<p>Абсолютная герметичность и безопасность при экстремальных перепадах температуры и давления гарантированы за счет оптимальной эксцентриковой конструкции поворотного затвора.</p>

<p>Низкий крутящий момент при открытии/закрытии и газонепроницаемость являются также преимуществами данной конструкции. Имеется возможность быстрой и простой замены уплотнения без разборки самого затвора.</p>

<p>Корпус затвора стальной окрашенный долговечным эпоксидным полимерным составом, который на 100% предохраняет затвор от образования коррозии.</p>

<p>Седловое уплотнение изготавливается из различных материалов, которые подходят практически для всех условий применения.</p>
','Затвор стальной фланцевый с эксцентриситетом 027F','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('27','9','3','Eccentric Wafer Butterfly Valve 027F','Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.     ','<p>Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightness and disable direct contact of body and pivot with permeable medium.<br />
On your request, the valves  can be fitted with electric/pneumatic actuators, gearboxes as well as automated control systems.
The main advantages of Dendor valves are: low weight, compact design, excellent tightness in both flow directions, reliability and high durability, minimal pressure loss, easy assembly and disassembly, limited maintenance. They do not require additional flange gaskets to be used.</p>
','Przepustnica ze stali mimośrodowa do wspawania 027W','','Wafer butterfly valves allow for easy medium flow. They have been specifically designed to ensure excellent leak-tightne');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('28','10','1','Zasuwa klinowa kołnierzowa 47GV','Zasuwy kołnierzowe z klinem gumowym model 47GV służą do odcinania przepływu czynnika roboczego. Są szeroko wykorzystywane w instalacjach przemysłowych, wodociągowych, c.o oraz innych do transportu wody.Kierunek przepływu: każdy.','<p>Zasuwy kołnierzowe z klinem gumowym model 47GV służą do odcinania przepływu czynnika roboczego. Są szeroko wykorzystywane w instalacjach przemysłowych, wodociągowych, c.o oraz innych do transportu wody.Kierunek przepływu: każdy.</p>
','Zasuwa klinowa z żeliwa kołnierzowa','','Zasuwy kołnierzowe z klinem gumowym model 47GV służą do odcinania przepływu czynnika roboczego. Są szeroko wykorzy');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('29','10','2','Задвижка клиновая фланцевая чугунная 47GV','Фланцевая чугунная задвижка с обрезиненным клином и не выдвижным шпинделем применяется для полного перекрытия потока рабочей среды. Клиновая задвижка является одним из распространенных типов трубопроводной арматуры, устанавливаемой на технологических и магистральных трубопроводах, транспортирующих воду. Направление потока – любое.','<p>Фланцевая чугунная задвижка с обрезиненным клином и не выдвижным шпинделем применяется для полного перекрытия потока рабочей среды. Клиновая задвижка является одним из распространенных типов трубопроводной арматуры, устанавливаемой на технологических и магистральных трубопроводах, транспортирующих воду. Направление потока – любое.</p>
','Задвижка клиновая фланцевая чугунная 47GV','','Фланцевая чугунная задвижка с обрезиненным клином и не выдвижным');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('30','10','3','Resilient Seated Gate Valve 47GV','Resilient gate valves can be used in a wide range of industrial applications','<p>Resilient gate valves can be used in a wide range of industrial applications. Our gate valves are a quality product you can rely on. We manufacture them from a wide range specialist material enabling them to be used in different applications especially where long service life, anti-corrosion and erosion is critical.</p>
','Zasuwa klinowa z żeliwa kołnierzowa','','Zasuwy kołnierzowe z klinem gumowym model 47GV służą do odcinania przepływu czynnika roboczego. Są szeroko wykorzy');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('31','11','1','Zasuwa klinowa kołnierzowa pod napęd 47GVA','Zasuwy kołnierzowe pod napęd elektryczny służą do odcinania przepływu czynników roboczych w postaci płynów: woda, glikol, powietrze, płyny techniczne oraz inne.','<p>Zasuwy kołnierzowe pod napęd elektryczny służą do odcinania przepływu czynników roboczych w postaci płynów: woda, glikol, powietrze, płyny techniczne oraz inne.</p>

<p>Sterowanie w tego typu zasuwach odbywa się w trybie zdalnym. Niektóre modele są kompletowane dodatkowymi urządzeniami, które pozwalają „włączać”/”wyłączać” przepływ czynnika w określonym czasie w trybie automatycznym.</p>
','Zasuwa klinowa z żeliwa kołnierzowa','','Zasuwy kołnierzowe z klinem gumowym model 47GV służą do odcinania przepływu czynnika roboczego. Są szeroko wykorzy');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('32','11','2','Задвижка клиновая под электропривод 47GVA','Фланцевые задвижки под электропривод применяются для полного перекрытия потока рабочей среды под действием электрического импульса. Являются одним из распространенных типов трубопроводной арматуры, устанавливаемой на технологических и магистральных трубопроводах, транспортирующих воду, технические жидкости, гликольные смеси, воздух и другие среды.','<p>Фланцевые задвижки под электропривод применяются для полного перекрытия потока рабочей среды под действием электрического импульса. Являются одним из распространенных типов трубопроводной арматуры, устанавливаемой на технологических и магистральных трубопроводах, транспортирующих воду, технические жидкости, гликольные смеси, воздух и другие среды.</p>

<p>Задвижки под электропривод могут приводиться в движение дистанционно. В некоторых системах электропривод задвижки комплектуется дополнительным оборудованием, позволяющим включать и выключать поток среды в определённое время суток в автоматическом режиме.</p>
','Задвижка клиновая под электропривод 47GVA','','Фланцевые задвижки под электропривод применяются для полного пе�');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('33','11','3','Gate Valve Actuator Operated 47GVA','Resilient gate valves can be used in a wide range of industrial applications','<p>Resilient gate valves can be used in a wide range of industrial applications. Our gate valves are a quality product you can rely on. We manufacture them from a wide range specialist material enabling them to be used in different applications especially where long service life, anti-corrosion and erosion is critical.</p>
','Zasuwa klinowa z żeliwa kołnierzowa','','Zasuwy kołnierzowe z klinem gumowym model 47GV służą do odcinania przepływu czynnika roboczego. Są szeroko wykorzy');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('34','12','1','Zasuwa nożowa międzykołnierzowa K51GV','Zasuwy nożowe są szeroko stosowane do regulacji, ale przede wszystkim zamykania /otwierania przepływu czynników roboczych o dużej gęstości, emulsji oraz czynników w postaci proszków i granulatów. Jest możliwe wykonanie zasuwy praktycznie o każdym przekroju, przy czym w otwartej pozycji, żadna z jej części nie występuje wewnątrz rury.','<p>Zasuwy nożowe są szeroko stosowane do regulacji, ale przede wszystkim zamykania /otwierania przepływu czynników roboczych o dużej gęstości, emulsji oraz czynników w postaci proszków i granulatów. Jest możliwe wykonanie zasuwy praktycznie o każdym przekroju, przy czym w otwartej pozycji, żadna z jej części nie występuje wewnątrz rury.</p>

<p>Zasuwy te są szeroko wykorzystywane w sieciach kanalizacyjnych, oczyszczalniach ścieków, przepompowniach ścieków, obiektach melioracyjnych, przemyśle celulozowo-papierniczym, wydobywczym, chemicznym, spożywczym - zwłaszcza wtedy, gdy nie jest wymagana: dokładna regulacja przepływającego czynnika roboczego i wysoka szczelność elementu odcinającego. Budowa zasuw nożowych umożliwia odcinanie mediów zawierających części stałe.</p>
','Zasuwa ze stali nożowa K51GV','','Zasuwy nożowe są szeroko stosowane do regulacji, ale przede wszystkim zamykania /otwierania przepływu czynników robo');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('35','12','2','Задвижка шиберная стальная K51GV','Шиберная задвижка отличается от обычной задвижки исполнением запорного элемента. В шиберной задвижке используется металлический клин или шибер, способный разрезать включения в жидкости, протекающей внутри тела задвижки.','<p>Шиберная задвижка отличается от обычной задвижки исполнением запорного элемента. В шиберной задвижке используется металлический клин или шибер, способный разрезать включения в жидкости, протекающей внутри тела задвижки.</p>

<p>Чугунные шиберные задвижки применяются в тех случаях, когда допускается одностороннее направление потока рабочей среды и не требуется высокая герметичность запорного органа. Они предназначены для установки в качестве запорных устройств на трубопроводах, транспортирующих канализационные стоки, шламы, пульпы и другие, загрязнённые механическими примесями среды.</p>

<p>Шиберные задвижки с запорным элементом, выполненным в виде металлической пластины небольшой толщины, широко применяются для регулирования потока, но основное их назначение — полное закрытие или открытие движения среды. Это обусловлено возможностью изготовления шиберной задвижки практически любого сечения при минимальной длине, при этом в открытом состоянии задвижка не содержит никаких элементов, выступающих внутрь трубы.</p>
','Задвижка шиберная стальная K51GV','','Шиберная задвижка отличается от обычной задвижки исполнением за�');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('36','12','3','Knife Gate Valve K51GV','Resilient gate valves can be used in a wide range of industrial applications','<p>Resilient gate valves can be used in a wide range of industrial applications. Our gate valves are a quality product you can rely on. We manufacture them from a wide range specialist material enabling them to be used in different applications especially where long service life, anti-corrosion and erosion is critical.</p>
','Zasuwa ze stali nożowa K51GV','','Zasuwy nożowe są szeroko stosowane do regulacji, ale przede wszystkim zamykania /otwierania przepływu czynników robo');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('37','13','1','Zawór zwrotny  międzykołnierzowy motylkowy 010C','Zawór zwrotny motylkowy międzykołnierzowy jest stosowany w instalacjach c.o, wodociagowych, chemicznych, spożywczych oraz innych w celu zapewnienia pełnej ochrony przed możliwością pojawienia się przepływu wstecznego.','<p>Zawór zwrotny motylkowy międzykołnierzowy jest stosowany w instalacjach c.o, wodociagowych, chemicznych, spożywczych oraz innych w celu zapewnienia pełnej ochrony przed możliwością pojawienia się przepływu wstecznego.</p>

<p>Zawór przewiduje możliwość montażu tak w pionie, jak i poziomie poprzez zaciskanie między kołnierzami. Kierunek przepływu wskazuje strzałka.</p>
','Zawór zwrotny motylkowy międzykołnierzowy 010C','','Zawór zwrotny motylkowy międzykołnierzowy jest stosowany w instalacjach c.o, wodociagowych, chemicznych, spożywczych');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('38','13','2','Обратный двухстворчатый клапан межфланцевый 010C','Обратный межфланцевый двухстворчатый клапан 010С предназначен для защиты трубопроводов от обратного потока рабочей среды. Подпружиненные двустворчатые клапаны этой модели широко используются в системах тепло- и водоснабжения, на предприятиях химической и пищевой промышленности и в других сферах производства.','<p>Обратный межфланцевый двухстворчатый клапан 010С предназначен для защиты трубопроводов от обратного потока рабочей среды. Подпружиненные двустворчатые клапаны этой модели широко используются в системах тепло- и водоснабжения, на предприятиях химической и пищевой промышленности и в других сферах производства.</p>

<p>Межфланцевый обратный двухстворчатый клапан может устанавливаться как в горизонтальном, так и в вертикальном положении. При монтаже клапан зажимается между фланцев. Направление потока среды указано на клапане стрелкой.</p>
','Обратный двухстворчатый клапан межфланцевый 010C','','Обратный межфланцевый двухстворчатый клапан 010С предназначен дл�');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('39','13','3','Duo Wafer Check Valve 010C','Check valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials.','<p>Check valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials. These valves feature long service life under harsh conditions in numerous industrial applications.</p>
','Zawór zwrotny motylkowy międzykołnierzowy 010C','','Zawór zwrotny motylkowy międzykołnierzowy jest stosowany w instalacjach c.o, wodociagowych, chemicznych, spożywczych');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('40','14','1','Zawór zwrotny kulowy kołnierzowy 012F','Zawory zwrotne kulowe stosowane są wszędzie tam gdzie wymagany jest przepływ medium tylko w jednym kierunku. Także często nazywane zaworami powrotnymi. Gdy następuje odwrócenie kierunku przepływu, ich zadaniem jest odcięcie rurociągu. Zawór powrotny pozostaje zamknięty, zanim medium zdąży zmienić kierunek przepływu, uniemożliwiając tym samym oddziaływanie sił ciśnienia na elementy konstrukcyjne znajdujące się po stronie dopływu do armatury zwrotnej. Stosowane są w instalacjach wodociągowych, c.o, przemysłowych, ale najczęściej w instalacjach kanalizacyjnych.','<p>Zawory zwrotne kulowe stosowane są wszędzie tam gdzie wymagany jest przepływ medium tylko w jednym kierunku. Także często nazywane zaworami powrotnymi. Gdy następuje odwrócenie kierunku przepływu, ich zadaniem jest odcięcie rurociągu. Zawór powrotny pozostaje zamknięty, zanim medium zdąży zmienić kierunek przepływu, uniemożliwiając tym samym oddziaływanie sił ciśnienia na elementy konstrukcyjne znajdujące się po stronie dopływu do armatury zwrotnej. Stosowane są w instalacjach wodociągowych, c.o, przemysłowych, ale najczęściej w instalacjach kanalizacyjnych.</p>

<p>Zawory powrotne mogą pracować w dowolnym położeniu montażowym: poziomie, pionie, skośnie, z przepływem medium ku górze czy dołowi. W pozycji pionowej kierunek przepływu powinien odbywać się wyłącznie ku dołowi. Zawór przewiduje międzykołnierzową zabudowę.</p>
','Zawór kulowy zwrotny kołnierzowy 012F','','Zawory zwrotne kulowe stosowane są wszędzie tam gdzie wymagany jest przepływ medium tylko w jednym kierunku. Także c');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('41','14','2','Обратный шаровой клапан для канализации 012F','Обратный шаровой клапан для защиты трубопровода от обратного потока рабочей среды также получил название «обратный клапан для канализации». В роли ограничителя обратного потока выступает стальной шар, покрытый защитным слоем. Шаровой клапан используется в самых разных отраслях промышленности, — но наиболее широкое применение он получил в канализационных установках.','<p>Обратный шаровой клапан для защиты трубопровода от обратного потока рабочей среды также получил название «обратный клапан для канализации». В роли ограничителя обратного потока выступает стальной шар, покрытый защитным слоем. Шаровой клапан используется в самых разных отраслях промышленности, — но наиболее широкое применение он получил в канализационных установках.</p>

<p>Канализационный обратный клапан устанавливается как в горизонтальном, так и в вертикальном положениях. При вертикальном положении поток должен быть направлен исключительно снизу вверх. Обратный шаровой клапан крепится к трубопроводу при помощи фланцев. Для правильной работы клапана направление движения среды должно совпадать с направлением, указанным на клапане.</p>
','Обратный шаровой клапан для канализации 012F','','Обратный шаровой клапан для защиты трубопровода от обратного пот');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('42','14','3','Ball Check Valve 012F','Check valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials.','<p><pCheck valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials. These valves feature long service life under harsh conditions in numerous industrial applications.</p></p>
','Zawór kulowy zwrotny kołnierzowy 012F','','Zawory zwrotne kulowe stosowane są wszędzie tam gdzie wymagany jest przepływ medium tylko w jednym kierunku. Także c');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('43','15','1','Zawór zwrotny klapowy międzykołnierzowy 008С','Zawory zwrotne międzykołnierzowe klapowe są stosowane w instalacjach przemysłowych w celu ochrony przed przepływem wstecznym. Otwarcie zaworu następuje pod ciśnieniem czynnika roboczego, natomiast podczas przepływu wstecznego dysk zaworu automatycznie się zamyka. W zależności od materiałów, z których wykonano podstawowe elementy zawory te mogą spełniać najprzeróżniejsze zadania technologiczne.','<p>Zawory zwrotne międzykołnierzowe klapowe są stosowane w instalacjach przemysłowych w celu ochrony przed przepływem wstecznym. Otwarcie zaworu następuje pod ciśnieniem czynnika roboczego, natomiast podczas przepływu wstecznego dysk zaworu automatycznie się zamyka. W zależności od materiałów, z których wykonano podstawowe elementy zawory te mogą spełniać najprzeróżniejsze zadania technologiczne.</p>
','Zawór zwrotny klapowy międzykołnierzowy 008С','','Zawory zwrotne międzykołnierzowe klapowe są stosowane w instalacjach przemysłowych w celu ochrony przed przepływem ');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('44','15','2','Одностворчатый обратный клапан межфланцевый 008С','Стальной межфланцевый одностворчатый обратный клапан используется для защиты трубопровода от обратного потока рабочей среды. Открытие клапана происходит под давлением рабочей среды, а при движении среды в обратном направлении диск клапана автоматически закрывается. Обратный одностворчатый клапан представлен в большом количестве типоразмеров, соответствующих широкому спектру технологических задач.','<p>Стальной межфланцевый одностворчатый обратный клапан используется для защиты трубопровода от обратного потока рабочей среды. Открытие клапана происходит под давлением рабочей среды, а при движении среды в обратном направлении диск клапана автоматически закрывается. Обратный одностворчатый клапан представлен в большом количестве типоразмеров, соответствующих широкому спектру технологических задач.</p>
','Одностворчатый обратный клапан межфланцевый 008С','','Стальной межфланцевый одностворчатый обратный клапан используе�');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('45','15','3','Wafer Swing Check Valve 008С','Checkl valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials. T','<p>Checkl valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials. These valves feature long service life under harsh conditions in numerous industrial applications.</p>
','Zawór zwrotny klapowy międzykołnierzowy 008С','','Zawory zwrotne międzykołnierzowe klapowe są stosowane w instalacjach przemysłowych w celu ochrony przed przepływem ');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('46','16','1','Zawór zwrotny kołnierzowy 015F','','
','Zawór zwrotny kołnierzowy','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('47','16','2','Клапан обратный фланцевый 015F','','
','Клапан обратный фланцевый 015F','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('48','16','3','Swing Check Valve 015F','Check valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials. T','<p>Check valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials. These valves feature long service life under harsh conditions in numerous industrial applications</p>
','Zawór zwrotny kołnierzowy','','Checkl valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials.');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('49','17','1','Zawór elektromagnetyczny bezpośredniego działania Vz','','
','Zawór elektromagnetyczny bezpośredniego działania Vz','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('50','17','2','Электромагнитный клапан прямого действия серии Vz','','
','Электромагнитный клапан прямого действия серии Vz','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('51','17','3','Solenoid Valve Vz','','
','Zawór elektromagnetyczny bezpośredniego działania Vz','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('52','18','1','Zawór elektromagnetyczny pośredniego działania Vp','','
','Zawór elektromagnetyczny pośredniego działania Vp','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('53','18','2','Клапан электромагнитный непрямого действия Vp','','
','Клапан электромагнитный непрямого действия Vp','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('54','18','3','Solenoid Valve Vp','','
','Zawór elektromagnetyczny pośredniego działania Vp','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('55','19','1','Zawór elektromagnetyczny kołnierzowy Vf','','
','Zawór elektromagnetyczny kołnierzowy Vf','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('56','19','2','Электромагнитный фланцевый клапан Vf','','
','Электромагнитный фланцевый клапан Vf','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('57','19','3','Solenoid Valve Vf','','
','Zawór elektromagnetyczny kołnierzowy Vf','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('58','20','1','Zawór elektromagnetyczny do spirytusu Vs','','
','Zawór elektromagnetyczny do spirytusu Vs','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('59','20','2','Электромагнитный клапан на спирт Vs','','
','Электромагнитный клапан на спирт Vs','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('60','20','3','Solenoid Valve Vs','','
','Zawór elektromagnetyczny do spirytusu Vs','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('61','21','1','Zawór elektromagnetyczny do pary Vg','','
','Zawór elektromagnetyczny do pary Vg','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('62','21','2','Электромагнитный клапан на пар Vg','','
','Электромагнитный клапан на пар Vg','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('63','21','3','Solenoid Valve Vg','','
','Zawór elektromagnetyczny do pary Vg','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('64','22','1','Zawór elektromagnetyczny PTFE Vt','','
','Zawór elektromagnetyczny PTFE Vt','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('65','22','2','Электромагнитный клапан тефлон Vt','','
','Электромагнитный клапан тефлон Vt','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('66','22','3','Solenoid Valve Vt','','
','Zawór elektromagnetyczny PTFE Vt','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('67','23','1','Filtr siatkowy 021Y','Filtry magnetyczne spełniają rolę filtra siatkowego, a ponadto dzięki zastosowaniu wkładu magnetycznego, usuwają z wody bardzo drobne zanieczyszczenia o własnościach magnetycznych, dlatego powinny być stosowane przede wszystkim przed urządzeniami pomiarowymi i urządzeniami automatycznej regulacji, a zwłaszcza przed licznikami ciepła. Woda przepływając przez filtr pozostawia zanieczyszczenia stałe na siatce, a szlam magnetyczny będący produktem korozji żelaza w sieciach cieplnych wyłapuje silne pole magnetyczne z magnesów stałych.','<p>Filtry magnetyczne spełniają rolę filtra siatkowego, a ponadto dzięki zastosowaniu wkładu magnetycznego, usuwają z wody bardzo drobne zanieczyszczenia o własnościach magnetycznych, dlatego powinny być stosowane przede wszystkim przed urządzeniami pomiarowymi i urządzeniami automatycznej regulacji, a zwłaszcza przed licznikami ciepła. Woda przepływając przez filtr pozostawia zanieczyszczenia stałe na siatce, a szlam magnetyczny będący produktem korozji żelaza w sieciach cieplnych wyłapuje silne pole magnetyczne z magnesów stałych.</p>

<p>Filtry siatkowe mają zwarty kadłub wykonany z żeliwa o wysokiej trwałości. Są stosowane w instalacjach wodnych, parowych, w instalacjach przewodzących płyny chemicznie obojętne. Oprócz tego są szeroko wykorzystywane w przemyśle spożywczym.</p>
','Filtr siatkowy z wkładem magnetycznym 021Y','','Filtry magnetyczne spełniają rolę filtra siatkowego, a ponadto dzięki zastosowaniu wkładu magnetycznego, usuwają z');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('68','23','2','Промышленный фильтр для воды 021Y','Фланцевый магнитный фильтр с диаметрами условного прохода от 50 до 400 мм предназначен для улавливания стойких механических примесей в трубопроводных системах тепло и водоснабжения. Кроме того, магнитный фильтр механической очистки воды находит широкое применение в пищевой и химической промышленности, а также в других отраслях.','<p>Фланцевый магнитный фильтр с диаметрами условного прохода от 50 до 400 мм предназначен для улавливания стойких механических примесей в трубопроводных системах тепло и водоснабжения. Кроме того, магнитный фильтр механической очистки воды находит широкое применение в пищевой и химической промышленности, а также в других отраслях.</p>

<p>Фильтр с магнитной вставкой улавливает ферромагнетики в холодной и горячей воде, а также в ряде других не агрессивных жидкостях.</p>

<p>Магнитные фильтры воды имеют литой корпус на основе высокопрочного ковкого чугуна. Этим обусловлена их прочность и термостойкость.</p>

<p>За счёт высокой твёрдости и прочности фильтроэлементов, магнитные промышленные фильтры для воды задерживают крупные абразивные включения, предотвращая преждевременный износ водоносных систем. Это делает их ценными для применения практически в любых промышленных системах – в особенности, если в качестве трубопровода используются фановые трубы на пластиковой основе.</p>
','Промышленный фильтр для воды 021Y','','Фланцевый магнитный фильтр с диаметрами условного прохода от 50 д�');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('69','23','3','Strainer w/magnetic insert 021Y','Strainers thanks to magnetic insert strainers enable fishing out all tiniest magnetic solids that is why they should be used in front of different gauges, automatic regulation equipment but most of all heat metres. 
','<p>Strainers thanks to magnetic insert strainers enable fishing out all tiniest magnetic solids that is why they should be used in front of different gauges, automatic regulation equipment but most of all heat metres. 
Strainers have tight cast iron body of high durability</p>
','Filtr siatkowy z wkładem magnetycznym 021Y','','Filtry magnetyczne spełniają rolę filtra siatkowego, a ponadto dzięki zastosowaniu wkładu magnetycznego, usuwają z');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('70','24','1','Kompensator gumowy kołnierzowyKMS','Kompensatory przeznaczone są do przejmowania wszelkiego rodzaju przemieszczeń. Kompensują wydłużenia cieplne rurociągów i korygują niewspółosiowość, izolują wibracje, tłumią hałas oraz pochłaniają energię uderzenia hydraulicznego.','<p>Kompensatory przeznaczone są do przejmowania wszelkiego rodzaju przemieszczeń. Kompensują wydłużenia cieplne rurociągów i korygują niewspółosiowość, izolują wibracje, tłumią hałas oraz pochłaniają energię uderzenia hydraulicznego.</p>
','Kompensator rurowo-kołnierzowy gumowy KMS','','Kompensatory przeznaczone są do przejmowania wszelkiego rodzaju przemieszczeń. Kompensują wydłużenia cieplne ruroci');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('71','24','2','Резиновые фланцевые компенсаторы KMS','Антивибрационные трубные компенсаторы предназначены для снижения шума, вибрации, гидравлических и ударов, для компенсации продольных и поперечных смещений и сдвигов трубопровода.','<p>Антивибрационные трубные компенсаторы предназначены для снижения шума, вибрации, гидравлических и ударов, для компенсации продольных и поперечных смещений и сдвигов трубопровода.</p>

<p>Компенсаторы – или вибровставки, – производятся из натуральных или синтетических материалов (полимеры, резина и другие). Резиновые компенсаторы имеют небольшой вес, просты в установке и обслуживании, отличаются высоким сопротивлением ударным нагрузкам. Компенсаторы для труб устанавливаются на длительный срок.</p>

<p>Антивибрационные компенсаторы не подвержены коррозии и способны выдерживать значительные механические нагрузки.</p>
','Резиновые фланцевые компенсаторы KMS','','Антивибрационные трубные компенсаторы предназначены для снижен�');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('72','24','3','Expansion Joint KMS','Dendor’s  Rubber expansion joints are designed to allow for expansion, contraction, lateral and angular movement of piping system.','<p>Dendor’s  Rubber expansion joints are designed to allow for expansion, contraction, lateral and angular movement of piping system. Excessive force arising within the pipeline is deflected by our rubber expansion joints before this can be passed on to adjacent components. They are effective in absorbing the energy of water hammer, vibrations and reducing noise as well.</p>
','Kompensator rurowo-kołnierzowy gumowy KMS','','Kompensatory przeznaczone są do przejmowania wszelkiego rodzaju przemieszczeń. Kompensują wydłużenia cieplne ruroci');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('73','25','1','Kurek kulowy kołnierzowy F3515','Kurek kulowy kołnierzowy F3515 pełni typową funkcję otwórz/zamknij ze względu na stromą charakterystykę uniemożliwiającą np. regulację przepływu czynnika.','<p>Kurek kulowy kołnierzowy F3515 pełni typową funkcję otwórz/zamknij ze względu na stromą charakterystykę uniemożliwiającą np. regulację przepływu czynnika.</p>
','Kurek kulowy kołnierzowy F3515','','Kurek kulowy kołnierzowy F3515 pełni typową funkcję otwórz/zamknij ze względu na stromą charakterystykę uniemoż');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('74','25','2','Кран шаровой фланцевый F3515','Фланцевый шаровый кран Dendor F3515 предназначен для перекрытия воды и других жидких сред в хозяйственных и промышленных трубопроводах. Широкий диапазон рабочих температур – от -40°C до +200°C позволяет использовать этот кран в городских системах отопления и горячего водоснабжения.
','<p>Фланцевый шаровый кран Dendor F3515 предназначен для перекрытия воды и других жидких сред в хозяйственных и промышленных трубопроводах. Широкий диапазон рабочих температур – от -40°C до +200°C позволяет использовать этот кран в городских системах отопления и горячего водоснабжения.</p>
','Кран шаровой фланцевый F3515','','Фланцевый шаровый кран Dendor F3515 предназначен для перекрытия воды и');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('75','25','3','Ball Valve F3515','Ball valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials.','<p>Ball valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials. These valves feature long service life under harsh conditions in numerous industrial applications.</p>
','Kurek kulowy kołnierzowy F3515','','Kurek kulowy kołnierzowy F3515 pełni typową funkcję otwórz/zamknij ze względu na stromą charakterystykę uniemoż');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('76','26','1','Kurek kulowy do wspawania W3515','Kurki kulowe do wspawania są używane do odcinania przepływu medium w przemysłowych instalacjach ciepłowniczych i wodociągowych oraz innych „Płynów grupy 2” wg Dyrektywy 97/23 /WE.','<p>Kurki kulowe do wspawania są używane do odcinania przepływu medium w przemysłowych instalacjach ciepłowniczych i wodociągowych oraz innych „Płynów grupy 2” wg Dyrektywy 97/23 /WE.</p>

<p>Kurki pełnią typową funkcję otwórz/zamknij ze względu na stromą charakterystykę uniemożliwiającą np. regulację przepływu czynnika.</p>
','Kurek kulowy do wspawania W3515','','Kurki kulowe do wspawania są używane do odcinania przepływu medium w przemysłowych instalacjach ciepłowniczych i wo');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('77','26','2','Кран шаровой приварной W3515','Приварной шаровый кран модели W 3515 применяется в качестве запорной арматуры в трубопроводах хозяйственного и промышленного назначения. Кран приваривается к трубопроводу и используется как надёжный запирающий элемент в системах перекачки питьевой и морской воды, воздуха, гликольных смесей и ряда других сред.','<p>Приварной шаровый кран модели W 3515 применяется в качестве запорной арматуры в трубопроводах хозяйственного и промышленного назначения. Кран приваривается к трубопроводу и используется как надёжный запирающий элемент в системах перекачки питьевой и морской воды, воздуха, гликольных смесей и ряда других сред.</p>

<p>Приварной шаровой кран находит широкое применение в системах городского отопления и водоснабжения, а также в промышленных трубопроводных системах.</p>
','Кран шаровой приварной W3515','','Приварной шаровый кран модели W 3515 применяется в качестве запорно');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('78','26','3','Weld End Ball Valve W3515','Ball valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials.
','<p>Ball valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials. These valves feature long service life under harsh conditions in numerous industrial applications.</p>
','Kurek kulowy do wspawania W3515','','Kurki kulowe do wspawania są używane do odcinania przepływu medium w przemysłowych instalacjach ciepłowniczych i wo');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('79','27','1','Kulowy kołnierzowy z przekładnią F3530','Kurki kulowe kołnierzowe z przekładnią ślimakową znajdują zastosowanie jako armatura zaporowa do zamykania i otwierania przepływu czynnika roboczego.','<p>Kurki kulowe kołnierzowe z przekładnią ślimakową znajdują zastosowanie jako armatura zaporowa do zamykania i otwierania przepływu czynnika roboczego.</p>
','Kulowy kołnierzowy z przekładnią','','Kurki kulowe kołnierzowe z przekładnią ślimakową znajdują zastosowanie jako armatura zaporowa do zamykania i otwie');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('80','27','2','Шаровой фланцевый кран с редуктором F3530','','
','Шаровой фланцевый кран с редуктором F3530','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('81','27','3','Ball Valve Gearbox Operated F3530','Ball valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials.','<p>Ball valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials. These valves feature long service life under harsh conditions in numerous industrial applications.</p>
','Kulowy kołnierzowy z przekładnią','','Kurki kulowe kołnierzowe z przekładnią ślimakową znajdują zastosowanie jako armatura zaporowa do zamykania i otwie');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('82','28','1','Kurek kulowy do wspawania z przekładnią W3530','','
','Kurek kulowy z przekładnią do wspawania W3530','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('83','28','2','Шаровой приварной кран с редуктором W3530','','
','Шаровой приварной кран с редуктором W3530','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('84','28','3','Weld End Ball Valve Gearbox Operated W3530','Ball valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials.','<p>Ball valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials. These valves feature long service life under harsh conditions in numerous industrial applications.</p>
','Kurek kulowy z przekładnią do wspawania W3530','','Ball valves are designed and manufactured as a top quality product, in a wide choice of corrosion resistant materials.');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('85','29','1','Napęd niepełnoobrotowy Qt','Napędy niepełnoobrotowe stosowane są wszędzie tam, gdzie konieczne jest zautomatyzowanie procesów za pomocą ruchu niepełnoobrotowego np. na przepustnicach czy zaworach kulowych.','<p>Napędy niepełnoobrotowe stosowane są wszędzie tam, gdzie konieczne jest zautomatyzowanie procesów za pomocą ruchu niepełnoobrotowego np. na przepustnicach czy zaworach kulowych.</p>

<p>Oferta napędów serii QT Dendor Valve Industrial umożliwia dopasowanie napędu do wymagań prawie każdego zadania w zakresie automatyzacji.</p>

<p>Napęd QT charakteryzuje wysoka dokładność i niezawodność zespołów napędowych. Przekładnia ślimakowa stosowana w napędach ręcznych zapewnia samoczynną blokadę napędu. Budowa napędu eliminuje konieczność zmiany smaru w przekładni.</p>
','Napęd niepełnoobrotowy Qt','','Napędy niepełnoobrotowe stosowane są wszędzie tam, gdzie konieczne jest zautomatyzowanie procesów za pomocą ruchu ');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('86','29','2','Электропривод неполнооборотный Qt','Неполноповоротный электропривод QT характеризует высокая точность и надёжность узлов привода. Надёжная червячная передача, используемая в редукторах привода QT, обеспечивает самоторможение привода. Замена смазки в редукторе не требуется.','<p>Электроприводы доступны в широком спектре вариаций по модификации и размерам.</p>

<p>Неполноповоротный электропривод QT характеризует высокая точность и надёжность узлов привода. Надёжная червячная передача, используемая в редукторах привода QT, обеспечивает самоторможение привода. Замена смазки в редукторе не требуется.</p>
','Электропривод неполнооборотный Qt','','Неполноповоротный электропривод QT характеризует высокая точнос�');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('87','29','3','Electric Actuator Qt','DENDOR provides part-turn electric actuators (Qt series). They are designed to provide a reliable position control of gate, stop valves as well as similar devices. ','<p>DENDOR provides part-turn electric actuators (Qt series). They are designed to provide a reliable position control of gate, stop valves as well as similar devices. Combining with 402 series valve gear-box made in our company can be used on quarter-turn applications, such as butterfly and ball valves. The valve actuators powered by electric have limit and torque switch in both end positions, in addition, they can output torque or thrust. The actuators are eqipped in temperature protection switch which will trip the actuator control circuit if motor windings overheat. Suitable for “clockwise closing” only, i.e. driven shaft turns clockwise to close the valve.</p>
','Napęd niepełnoobrotowy Qt','','Napędy niepełnoobrotowe stosowane są wszędzie tam, gdzie konieczne jest zautomatyzowanie procesów za pomocą ruchu ');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('88','30','1','Napęd wieloobrotowy Mt','','
','Napęd wieloobrotowy Mt','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('89','30','2','Электропривод многооборотный Mt','','
','Электропривод многооборотный Mt','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('90','30','3','Electric Actuator(rotary Mt','','
','Napęd wieloobrotowy','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('91','31','1','Łącznik rurowo-kołnierzowy FA-U13','Łącznik rurowo-kołnierzowy FA-U13 stosowany do łączenia rur (żeliwnych, stalowych, PVC, cementowo-azbestowych) z kołnierzem armatury wodociągowej.','<p>Łącznik rurowo-kołnierzowy FA-U13 stosowany do łączenia rur (żeliwnych, stalowych, PVC, cementowo-azbestowych) z kołnierzem armatury wodociągowej.</p>
','Łącznik rurowo-kołnierzowy FA-U13','','Łącznik rurowo-kołnierzowy FA-U13 stosowany do łączenia rur (żeliwnych, stalowych, PVC, cementowo-azbestowych) z k');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('92','31','2','Фланец обжимной универсальный FA-U13','Обжимной фланец используется в случаях соединения чугунных (СЧ и ВЧШГ), стальных, ПВХ, асбестоцементных труб с фланцевой арматурой.','<p>Обжимной фланец используется в случаях соединения чугунных (СЧ и ВЧШГ), стальных, ПВХ, асбестоцементных труб с фланцевой арматурой.</p>
','Фланец обжимной универсальный FA-U13','','Обжимной фланец используется в случаях соединения чугунных (СЧ и ');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('93','31','3','Flange Pipe Adaptor FA-U13','','
','Łącznik rurowo-kołnierzowy FA-U13','','Łącznik rurowo-kołnierzowy FA-U13 stosowany do łączenia rur (żeliwnych, stalowych, PVC, cementowo-azbestowych) z k');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('94','32','1','Łącznik rurowo-kołnierzowy (z pierścieniem zaciskowym) FA-R13','Łącznik rurowo-kołnierzowy FA-R13 stosowany do łączenia rur PE z kołnierzem armatury wodociągowej.','<p>Łącznik rurowo-kołnierzowy FA-R13 stosowany do łączenia rur PE z kołnierzem armatury wodociągowej.</p>
','Lącznik rurowo-kołnierzowy FA-R13','','Łącznik rurowo-kołnierzowy FA-R13 stosowany do łączenia rur PE z kołnierzem armatury wodociągowej.');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('95','32','2','Фланец обжимной фиксирующий FA-R13','','
','Фланец обжимной фиксирующий FA-R13','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('96','32','3','Flange Pipe Adaptor (w/compression ring) FA-R13','Łącznik rurowo-kołnierzowy FA-R13 stosowany do łączenia rur PE z kołnierzem armatury wodociągowej.','<p>Łącznik rurowo-kołnierzowy FA-R13 stosowany do łączenia rur PE z kołnierzem armatury wodociągowej.</p>
','Lącznik rurowo-kołnierzowy FA-R13','','Łącznik rurowo-kołnierzowy FA-R13 stosowany do łączenia rur PE z kołnierzem armatury wodociągowej.');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('97','33','1','Łącznik rurowy RC-U13','','
','Łącznik rurowy do rur PE RC-U13','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('98','33','2','Муфта соединительная универсальная RC-U13','','
','Муфта соединительная универсальная RC-U13','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('99','33','3','Flange Pipe Adaptor RC-U13','','
','Łącznik rurowy do rur PE RC-U13','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('100','34','1','Łącznik kołnierzowy(z pierścieniem zaciskowym) FA-Q13','Łącznik kołnierzowy FA-Q13 stosowany do łączenia rur PE, PVC z kołnierzem armatury wodociągowej.','<p>Łącznik kołnierzowy FA-Q13 stosowany do łączenia rur PE, PVC z kołnierzem armatury wodociągowej.</p>
','Łącznik kołnierzowy do rur FA-Q13','','Łącznik kołnierzowy FA-Q13 stosowany do łączenia rur PE, PVC z kołnierzem armatury wodociągowej.');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('101','34','2','Фланцевый адаптер FA-Q13','','
','Фланцевый адаптер FA-Q13','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('102','34','3','Flange Pipe Aadaptor (w/compression ring) FA-Q13','Łącznik kołnierzowy FA-Q13 stosowany do łączenia rur PE, PVC z kołnierzem armatury wodociągowej.','<p>Łącznik kołnierzowy FA-Q13 stosowany do łączenia rur PE, PVC z kołnierzem armatury wodociągowej.</p>
','Łącznik kołnierzowy do rur FA-Q13','','Łącznik kołnierzowy FA-Q13 stosowany do łączenia rur PE, PVC z kołnierzem armatury wodociągowej.');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('103','35','1','Łącznik rurowy (z pierścieniem zaciskowym) RC-R13','','
','Łącznik rurowy do rur PE i PCV RC-R13','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('104','35','2','Муфта соединительная фиксирующая RC-R13','','
','Муфта соединительная фиксирующая RC-R13','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('105','35','3','Pipe Adaptor (w/compression ring) RC-R13','','
','Łącznik rurowy do rur PE i PCV RC-R13','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('106','36','1','Wstawka kołnierzowa PR-U13','','
','Wstawka kołnierzowa PR-U13','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('107','36','2','Муфта соединительная фиксирующая RC-R13','','
','Муфта соединительная фиксирующая RC-R13','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('108','36','3','Dismantling Joint PR-U13','','
','Wstawka kołnierzowa PR-U13','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('109','37','1','Kolano kołnierzowe Q','','
','Kolanko dwukołnierzowe','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('110','37','2','Напорное фланцевое чугунное колено','Напорное фланцевое чугунное колено используются при необходимости изгиба трубопровода. Является фасонным изделием и находит применение в качестве соединительного элемента для газо- и водопроводов, а также промышленных трубопроводов','<p>Напорное фланцевое чугунное колено используются при необходимости изгиба трубопровода. Является фасонным изделием и находит применение в качестве соединительного элемента для газо- и водопроводов, а также промышленных трубопроводов</p>
','Напорное фланцевое чугунное колено','','Напорное фланцевое чугунное колено используются при необходимос');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('111','37','3','Bend Pipe Fitting Q','','
','Kolanko dwukołnierzowe','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('112','38','1','Zwężka kołnierzowa FFR','','<p>Zwiężka dwukołnierzowa jest stosowana do zredukowania średnicy przewodu w instalacjach do transportu różnego rodzaju mediów: woda pitna, woda morska, woda przemysłowa, glikol, substancje oleiste i mało agresywne, ścieki</p>
','Zwężka z żeliwa dwukołnierzowa','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('113','38','2','Чугунный напорный фланцевый переход','','<p>Компания реализует все виды трубопроводной арматуры для систем водо- и газоснабжения, канализационных систем и промышленных трубопроводов. В ассортимент продукции входит чугунный напорный фланцевый переход.</p>

<p>Переходы на чугунную трубу производства Dendor Valve Industrial широко используются в трубопроводах, транспортирующих следующие среды: питьевая и морская вода, вода для городского водоснабжения, воздух, гликольные смеси, сточные воды.</p>
','Чугунный напорный фланцевый переход','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('114','38','3','Flange Pipe Reducer FFR','','<p>Zwiężka dwukołnierzowa jest stosowana do zredukowania średnicy przewodu w instalacjach do transportu różnego rodzaju mediów: woda pitna, woda morska, woda przemysłowa, glikol, substancje oleiste i mało agresywne, ścieki</p>
','Zwężka z żeliwa dwukołnierzowa','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('115','39','1','Trójnik kołnierzowy T','Trójniki kołnierzowe są dostępne w różnych rozmiarach i modyfikacjach.','<p>Trójniki kołnierzowe są dostępne w różnych rozmiarach i modyfikacjach.</p>
','Trójnik kołnierzowy','','Trójniki kołnierzowe są dostępne w różnych rozmiarach i modyfikacjach.');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('116','39','2','Тройник чугунный напорный фланцевый','','<p>Компания реализует все виды арматуры для магистральных и технологических трубопроводов. В ассортименте компании – чугунные фланцевые тройники производства Dendor Valve Industrial. Фланцевый чугунный тройник доступен во множестве вариаций по размеру.</p>
','Тройник чугунный напорный фланцевый','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('117','39','3','Tee Pipe Fitting T','','
','Trójnik kołnierzowy','','Trójniki kołnierzowe są dostępne w różnych rozmiarach i modyfikacjach.');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('118','40','1','Czwórnik kołnierzowy TT ','','
','Крест напорный чугунный фланцевый','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('119','40','2','Крест напорный чугунный фланцевый','','
','Крест напорный чугунный фланцевый','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('120','40','3','Cross Pipe Fitting TT','','
','Крест напорный чугунный фланцевый','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('121','41','1','Рrzekładnie do przepustnic','','
','Рrzekładnie do przepustnic','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('122','41','2','Редукторы к затворам','','
','Рrzekładnie do przepustnic','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('123','41','3','Actuator Gearbox','','
','Рrzekładnie do przepustnic','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('124','42','1','Opaska naprawcza jednoklamrowa RC-Z17','','
','Муфта ремонтная однозамковая RC-Z17','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('125','42','2','Муфта ремонтная однозамковая RC-Z17','','
','Муфта ремонтная однозамковая RC-Z17','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('126','42','3','Hose Clamp RC-Z17','','
','Муфта ремонтная однозамковая RC-Z17','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('127','43','1','Zawór odpowietrzający jednokomorowy A10F','','
','Zawór odpowietrzający jednokomorowy A10F','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('128','43','2','Воздухоотводчик однокамерный A10F','','
','Воздухоотводчик однокамерный A10F','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('129','43','3','Single Orifice Air Release Valve A10','','
','Single orifice air release valves A10','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('130','44','1','Zawór odpowietrzający dwukomorowy A20F','','
','Zawór odpowietrzający dwukomorowy A20F','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('131','44','2','Воздухоотводчик двухкамерный A20F','','
','Воздухоотводчик двухкамерный A20F','','');
INSERT INTO "CatalogItemsTranslate" ("id","object_id","language_id","name","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('132','44','3','Double Orifice Air Release Valves A20F','','
','Double orifice air release valves A20F','','');

----
-- Table structure for CatalogGroupTranslate
----
CREATE TABLE "CatalogGroupTranslate" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "object_id" integer NOT NULL,
  "language_id" integer NOT NULL,
  "name" text NULL DEFAULT '',
  "description" text NULL DEFAULT '',
  "meta_title" text NULL DEFAULT '',
  "meta_description" text NULL DEFAULT '',
  "meta_keywords" text NULL DEFAULT ''
);

----
-- Data dump for CatalogGroupTranslate, a total of 33 rows
----
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('1','1','1','Przepustnice','<p>Przepustnice zwrotne znajdują szerokie zastosowanie ze względu na niskie koszty instalacji oraz swoją budowę umożliwiającą szczelność odcinania w obu kierunkach przepływu. Stosowanie przepustnic produkcji Dendor Valve Industrial pozwala zastąpić następujące elementy: zasuwy, zawory, kurki kulowe oraz inne urządzenia armatury zaporowo-regulacyjnej. Przepustnice te są wykonane z żeliwa i w zależności od średnicy są dostarczane w komplecie z dźwignią, kółkiem bądź napędem elektrycznym.</p>
','Przepustnice zwrotne','Przepustnice zwrotne znajdują szerokie zastosowanie ze względu na niskie koszty instalacji oraz swoją budowę umożli','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('2','1','2','Затворы дисковые','Наиболее распространенным видом запорной трубопроводной арматуры во всем мире является поворотный дисковый затвор. Преимущества этого изделия очевидны – это низкая стоимость монтажа и герметичное перекрытие потока в обоих направлениях. Дисковый затвор имеет минимум подвижных деталей, поэтому срок его службы значительно выше, чем у более сложных запорных систем. Дисковые поворотные затворы производства Dendor Valve Industrial с успехом заменяют задвижки, вентили, клапаны, шаровые краны и другие элементы запорно-регулирующей арматуры.','Затворы дисковые','Затворы дисковые поворотные фланцевые производства Dendor Valve Industrial','Затворы дисковые');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('3','1','3','Butterfly Valves','<p>Przepustnice zwrotne znajdują szerokie zastosowanie ze względu na niskie koszty instalacji oraz swoją budowę umożliwiającą szczelność odcinania w obu kierunkach przepływu. Stosowanie przepustnic produkcji Dendor Valve Industrial pozwala zastąpić następujące elementy: zasuwy, zawory, kurki kulowe oraz inne urządzenia armatury zaporowo-regulacyjnej. Przepustnice te są wykonane z żeliwa i w zależności od średnicy są dostarczane w komplecie z dźwignią, kółkiem bądź napędem elektrycznym.</p>
','Butterfly Valves (Wafer Type)','Przepustnice zwrotne znajdują szerokie zastosowanie ze względu na niskie koszty instalacji oraz swoją budowę umożli','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('4','2','1','Zasuwy','<p>Oprócz zasuw klinowych oferta Dendor Valve Industrial zawiera zasuwy nożowe służące do regulacji lub zamykania przepływu czynników roboczych o dużej gęstości, emulsji oraz czynników roboczych będących proszkami i granulatami. Zasuwy te są szeroko wykorzystywane w sieciach kanalizacyjnych, oczyszczalniach ścieków, przemyśle wydobywczym, chemicznym, spożywczym, szczególnie wtedy, gdy nie jest wymagana dokładna regulacja przepływającego czynnika roboczego. Ze względu na swoją budowę umożliwiają odcinanie mediów zawierających części stałe.</p>
','Zasuwy z żeliwa klinowe','Oprócz zasuw klinowych oferta Dendor Valve Industrial zawiera zasuwy nożowe służące do regulacji lub zamykania prze','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('5','2','2','Задвижки клиновые','<p>Чугунная задвижка представляет собой надежный вид запорной арматуры, поскольку она обеспечивает полное перекрывание трубопровода. В отличие от других типов запирающих элементов, у нее есть только два рабочих положения: «открыто» и «закрыто». В связи с этим, существуют определенные ограничения при монтаже. В частности, устанавливаться чугунная фланцевая задвижка может лишь в тех системах, где не нужна точная регулировка потока рабочей среды.</p>

<p>Самая распространенная конструкция такого элемента трубопровода – клиновая задвижка. Задвижка с обрезиненным клином проста в производстве, поэтому является более доступной по цене, чем более сложные запорные системы. Вместе с тем, чугунная задвижка с обрезиненным клином достаточно надёжно перекрывает движение потока среды в трубопроводе.</p>
','Задвижки клиновые','<p>Чугунная задвижка представляет собой надежный вид запорной арм','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('6','2','3','Gate Valves','<p>Oprócz zasuw klinowych oferta Dendor Valve Industrial zawiera zasuwy nożowe służące do regulacji lub zamykania przepływu czynników roboczych o dużej gęstości, emulsji oraz czynników roboczych będących proszkami i granulatami. Zasuwy te są szeroko wykorzystywane w sieciach kanalizacyjnych, oczyszczalniach ścieków, przemyśle wydobywczym, chemicznym, spożywczym, szczególnie wtedy, gdy nie jest wymagana dokładna regulacja przepływającego czynnika roboczego. Ze względu na swoją budowę umożliwiają odcinanie mediów zawierających części stałe.</p>
','Gate Valves','Oprócz zasuw klinowych oferta Dendor Valve Industrial zawiera zasuwy nożowe służące do regulacji lub zamykania prze','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('7','3','1','Zawory zwrotne','Zawory zwrotne przeznaczone są do zabezpieczenia instalacji przed strumieniem powrotnym czynnika roboczego w przypadku awarii pompy lub uszkodzeniu instalacji. Znajdują zastosowanie w: ciepłownictwie, energetyce, wodociągach i stacjach uzdatniania wody, przemyśle.','Zawory zwrotne','Zawory zwrotne przeznaczone są do zabezpieczenia instalacji przed strumieniem powrotnym czynnika roboczego w przypadku ','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('8','3','2','Обратные клапаны','<p>Обратный клапан — вид защитной трубопроводной арматуры, предназначенный для предотвращения обратного потока среды в трубопроводе. Обратный клапан для воды является автоматическим предохранительным устройством, не допускающим обратного оттока воды при внезапной остановке насоса.</p>

<p>Обратный клапан – фланцевый, проходной, пружинный или поворотный, — является составной частью любой инженерной системы и необходим для предотвращения последствий аварий и неисправностей насосной техники.</p>

<p>Запорный проходной клапан необходим для защиты трубопроводов, насосов и сосудов под давлением. Кроме того, межфланцевый обратный клапан существенно ограничивает течь рабочей среды из системы при разрушении её участка – используется в качестве предохранителя.</p>
','Обратные клапаны',' ','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('9','3','3','Check Valves','<p>Zawory zwrotne przeznaczone są do zabezpieczenia instalacji przed strumieniem powrotnym czynnika roboczego w przypadku awarii pompy lub uszkodzeniu instalacji. Znajdują zastosowanie w: ciepłownictwie, energetyce, wodociągach i stacjach uzdatniania wody, przemyśle.</p>
','Check Valves (Wafer Type)','Zawory zwrotne przeznaczone są do zabezpieczenia instalacji przed strumieniem powrotnym czynnika roboczego w przypadku ','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('10','4','1','Zawory elektromagnetyczne','Zawór elektromagnetyczny jest to zawór otwierany i zamykany sygnałem elektrycznym mogący kontrolować przepływ medium w układzie. Wymusza przyjęcie przez zawór sterowany pneumatycznie lub hydraulicznie skrajnej pozycji (otwarty/zamknięty), także na wypadek zaniku energii. Zawory tego typu są szeroko stosowane praktycznie w każdej gałęzi przemysłu.','Zawory elektromagnetyczne','Zawory elektromagnetyczne','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('11','4','2','Электромагнитные клапаны','Zawór elektromagnetyczny jest to zawór otwierany i zamykany sygnałem elektrycznym mogący kontrolować przepływ medium w układzie. Wymusza przyjęcie przez zawór sterowany pneumatycznie lub hydraulicznie skrajnej pozycji (otwarty/zamknięty), także na wypadek zaniku energii. Zawory tego typu są szeroko stosowane praktycznie w każdej gałęzi przemysłu.','Электромагнитные соленоидные клапаны','Электромагнитные клапаны','электромагнитные клапаны, соленоидные клапаны');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('12','4','3','Solenoid Valves','<p>Zawór elektromagnetyczny jest to zawór otwierany i zamykany sygnałem elektrycznym mogący kontrolować przepływ medium w układzie. Wymusza przyjęcie przez zawór sterowany pneumatycznie lub hydraulicznie skrajnej pozycji (otwarty/zamknięty), także na wypadek zaniku energii. Zawory tego typu są szeroko stosowane praktycznie w każdej gałęzi przemysłu.</p>
','Solenoid Valves','Solenoid Valves','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('13','5','1','Filtry przemysłowe','<p>Filtry siatkowe produkcji Dendor Valve Industrial są szeroko stosowane w instalacjach wodnych, cieplnych, przemyśle spożywczym i chemicznym. Stosowanie filtrów pozwala znacznie wydłużyć okres pracy urządzeń mających bezpośrednią styczność z wodą, gdyż skutecznie usuwają one zanieczyszczenia wszelkiego rodzaju.</p>
','Filtry przemysłowe','Filtry siatkowe produkcji Dendor Valve Industrial są szeroko stosowane w instalacjach wodnych, cieplnych, przemyśle','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('14','5','2','Промышленные фильтры','<p>Одним из актуальных направлений производства является изготовление фильтров для воды. Сетчатый фильтр производства Dendor находит широкое применение в системах водо- и теплоснабжения на хозяйственных и промышленных объектах.</p>
','Промышленные фильтры','<p>Одним из актуальных направлений производства является изготов�','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('15','5','3','Strainers','<p>Filtry siatkowe produkcji Dendor Valve Industrial są szeroko stosowane w instalacjach wodnych, cieplnych, przemyśle spożywczym i chemicznym. Stosowanie filtrów pozwala znacznie wydłużyć okres pracy urządzeń mających bezpośrednią styczność z wodą, gdyż skutecznie usuwają one zanieczyszczenia wszelkiego rodzaju.</p>
','Strainers','Strainers','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('16','6','1','Kompensatory','<p>Kompensatory produkcji Dendor Valve Industrial są produkowane z najwyższej jakości tworzyw sztucznych oraz surowców naturalnych.</p>

<p>Stosuje się je głównie w celu kompensacji przesunięć, które powodują zmianę długości poszczególnych segmentów rur, co może prowadzić do poważnych uszkodzeń instalacji. Zamontowane w konkretnym odcinku rury tłumią wszelkiego rodzaju drgania, szumy, łagodzą uderzenia wody. 
Charakteryzuje je wysoka wytrzymałość i nie ulegają one korozji.</p>
','Kompensatory','Kompensatory produkcji Dendor Valve Industrial są produkowane z najwyższej jakości tworzyw sztucznych oraz surowców naturalnych. ','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('17','6','2','Компенсаторы','<p>Резиновые антивибрационные компенсаторы – это гибкие фланцевые вставки, предохраняющие трубопровод от деформации в результате температурного воздействия и вибрации. Перепад температур в металлическом трубопроводе, мощные вибрации и другие факторы могут привести к изменению длины отдельных сегментов труб. Компенсаторы позволяют избежать повреждений при таких изменениях. Кроме того, гибкая вставка, установленная в конкретном сегменте трубы, снижает уровень шума и сглаживает гидравлические удары.</p>
','Компенсаторы','<p>Резиновые антивибрационные компенсаторы – это гибкие фланцевы','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('18','6','3','Expansion Joints','<p>Kompensatory produkcji Dendor Valve Industrial są produkowane z najwyższej jakości tworzyw sztucznych oraz surowców naturalnych. Stosuje się je głównie w celu kompensacji przesunięć, które powodują zmianę długości poszczególnych segmentów rur, co może prowadzić do poważnych uszkodzeń instalacji. Zamontowane w konkretnym odcinku rury tłumią wszelkiego rodzaju drgania, szumy, łagodzą uderzenia wody. Charakteryzuje je wysoka wytrzymałość i nie ulegają one korozji.</p>
','Expansion Joints','<p>Kompensatory produkcji Dendor Valve Industrial są produkowane z najwyższej jakości tworzyw sztucznych oraz surowc�','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('19','7','1','Kurki kulowe','<p>Kurki kulowe to zawory obrotowe, których wnętrze stanowi kula. Znajdują one zastosowanie jako armatura zaporowa do zamykania i otwierania przepływu, stąd też najważniejsze cechy, na które zwraca się uwagę to ich szczelność i trwałość. Właśnie one stanowią wyróżnik zaworów kulowych produkcji Dendor Valve Industrial.</p>
','Kurki kulowe','Kurki kulowe to zawory obrotowe, których wnętrze stanowi kula. Znajdują one zastosowanie jako armatura zaporowa do za','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('20','7','2','Шаровые краны','<p>Шаровые краны производства Dendor находят широчайшее применение в системах отопления и водоснабжения, в отдельных узлах промышленных и теплоэнергетических объектов, в других отраслях производства и городского хозяйства.</p>

<p>Шаровой кран для воды выгодно отличается от других видов запорной арматуры своим устройством. В качестве пробки, перекрывающей движение потока среды, здесь используется металлический шар со сквозным отверстием. Во время рабочего состояния отверстие в шаре направлено вдоль потока. Когда необходимо перекрыть поток, отверстие поворачивается на 90 градусов, перекрывая движение среды.</p>
','Шаровые краны','Шаровые краны производства Dendor','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('21','7','3','Ball Valve','<p>Kurki kulowe to zawory obrotowe, których wnętrze stanowi kula. Znajdują one zastosowanie jako armatura zaporowa do zamykania i otwierania przepływu, stąd też najważniejsze cechy, na które zwraca się uwagę to ich szczelność i trwałość. Właśnie one stanowią wyróżnik zaworów kulowych produkcji Dendor Valve Industrial.</p>
','Ball Valve','Kurki kulowe to zawory obrotowe, których wnętrze stanowi kula. Znajdują one zastosowanie jako armatura zaporowa do','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('22','8','1','Napędy elektryczne','<p>Napędy elektryczne produkcji Dendor Valve Industrial stosowane są wszędzie tam, gdzie dla automatyzacji pracy armatury konieczny jest ruch obrotowy.. W celu zabezpieczenia silnika przed przegrzaniem (do 140°С ) napędy wyposażono w termowyłączniki. Ponowne uruchomienie następuje po tym, jak temperatura spadnie do 90-120°С. Budowa napędów pozwala na dopasowanie do wymagań praktycznie każdego zadania w zakresie automatyzacji. W komplecie z napędem jest dostarczany pilot.</p>
','Napędy elektryczne','Napędy elektryczne produkcji Dendor Valve Industrial stosowane są wszędzie tam, gdzie dla automatyzacji pracy armatur','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('23','8','2','Электроприводы','<p>Компания DENDOR VALVE Industrial – ведущий европейский поставщик трубопроводной арматуры, оборудования для фильтрации и очистки воды, электроприводов и сопутствующей техники, – уже более 10 лет работает на российском рынке, снабжая предприятия и городские службы клапанами, кранами, электроприводами и другой новейшей техникой для инженерных систем. Одним из направлений деятельности компании в России является поставка электроприводов для запорной арматуры.</p>
','Электроприводы','<p>Компания DENDOR VALVE Industrial – ведущий европейский поставщик трубопр�','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('24','8','3','Electric Actuators','<p>Napędy elektryczne produkcji Dendor Valve Industrial stosowane są wszędzie tam, gdzie dla automatyzacji pracy armatury konieczny jest ruch obrotowy.. W celu zabezpieczenia silnika przed przegrzaniem (do 140°С ) napędy wyposażono w termowyłączniki. Ponowne uruchomienie następuje po tym, jak temperatura spadnie do 90-120°С. Budowa napędów pozwala na dopasowanie do wymagań praktycznie każdego zadania w zakresie automatyzacji. W komplecie z napędem jest dostarczany pilot.</p>
','Electric Actuators','Napędy elektryczne produkcji Dendor Valve Industrial stosowane są wszędzie tam, gdzie dla automatyzacji pracy arma','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('25','9','1','Akcesoria','<p>Akcesoria produkcji Dendor Valve Industrial są wytwarzane z metali i tworzyw sztucznych wysokiej jakości. W celu zwiększenia trwałości, szczelności, wydłużenia okresu pracy elementów, jak również zabezpieczenia przed korozją powierzchnie wyrobów są cynkowane, epoksydowane bądź powlekane inną warstwą ochronną. Oferujemy szeroki wybór membran zapasowych do elektrozaworów, cewki 12/24/220 V oraz inne części do armatury.</p>
','Akcesoria','Akcesoria produkcji Dendor Valve Industrial są wytwarzane z metali i tworzyw sztucznych wysokiej jakości. W celu zwię','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('26','9','2','Фланцы и фитинги','<p>Akcesoria produkcji Dendor Valve Industrial są wytwarzane z metali i tworzyw sztucznych wysokiej jakości. W celu zwiększenia trwałości, szczelności, wydłużenia okresu pracy elementów, jak również zabezpieczenia przed korozją powierzchnie wyrobów są cynkowane, epoksydowane bądź powlekane inną warstwą ochronną. Oferujemy szeroki wybór membran zapasowych do elektrozaworów, cewki 12/24/220 V oraz inne części do armatury.</p>
','Фланцы и фитинги','Akcesoria produkcji Dendor Valve Industrial są wytwarzane z metali i tworzyw sztucznych wysokiej jakości. W celu zwię','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('27','9','3','Couplings and Adaptors','<p>Akcesoria produkcji Dendor Valve Industrial są wytwarzane z metali i tworzyw sztucznych wysokiej jakości. W celu zwiększenia trwałości, szczelności, wydłużenia okresu pracy elementów, jak również zabezpieczenia przed korozją powierzchnie wyrobów są cynkowane, epoksydowane bądź powlekane inną warstwą ochronną. Oferujemy szeroki wybór membran zapasowych do elektrozaworów, cewki 12/24/220 V oraz inne części do armatury.</p>
','Couplings and Adaptors','Akcesoria produkcji Dendor Valve Industrial są wytwarzane z metali i tworzyw sztucznych wysokiej jakości. W celu zwię','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('28','10','1','Kształtki','<p>Чугунные напорные фланцевые тройники, колена, переходы и другие фасонные элементы трубопровода предназначены для соединения отдельных сегментов инженерных систем, транспортирующих воду, воздух и химические реактивы.</p>

<p>Фасонные элементы трубопровода производятся из высокопрочных материалов: цветных и черных металлов, а также полимеров. Для повышения прочности, герметичности и долговечности, на поверхность колен, тройников и переходов чугунных может наноситься слой цинка, эпоксидный полимерный состав и другие защитные покрытия. Это позволяет избежать коррозии и предотвратить преждевременное разрушение соединительных элементов.</p>
','Kształtki','Чугунные напорные фланцевые тройники, колена, переходы, кресты','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('29','10','2','Фасонные элементы','<p>Чугунные напорные фланцевые тройники, колена, переходы и другие фасонные элементы трубопровода предназначены для соединения отдельных сегментов инженерных систем, транспортирующих воду, воздух и химические реактивы.</p>

<p>Фасонные элементы трубопровода производятся из высокопрочных материалов: цветных и черных металлов, а также полимеров. Для повышения прочности, герметичности и долговечности, на поверхность колен, тройников и переходов чугунных может наноситься слой цинка, эпоксидный полимерный состав и другие защитные покрытия. Это позволяет избежать коррозии и предотвратить преждевременное разрушение соединительных элементов.</p>
','Фасонные элементы трубопровода','Чугунные напорные фланцевые тройники, колена, переходы, кресты','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('30','10','3','Pipe Fittings','<p>Чугунные напорные фланцевые тройники, колена, переходы и другие фасонные элементы трубопровода предназначены для соединения отдельных сегментов инженерных систем, транспортирующих воду, воздух и химические реактивы.</p>

<p>Фасонные элементы трубопровода производятся из высокопрочных материалов: цветных и черных металлов, а также полимеров. Для повышения прочности, герметичности и долговечности, на поверхность колен, тройников и переходов чугунных может наноситься слой цинка, эпоксидный полимерный состав и другие защитные покрытия. Это позволяет избежать коррозии и предотвратить преждевременное разрушение соединительных элементов.</p>
','Pipe Fittings','Чугунные напорные фланцевые тройники, колена, переходы, кресты','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('31','11','1','Zawór odpowietrzający','
','Zawór odpowietrzający','','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('32','11','2','Вантузы (воздухоотводчики)','
','Вантузы (воздухоотводчики)','','');
INSERT INTO "CatalogGroupTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('33','11','3','Air Release Valve','
','Air release valve','','');

----
-- Table structure for NewsCategoryTranslate
----
CREATE TABLE "NewsCategoryTranslate" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "object_id" integer NOT NULL,
  "language_id" integer NOT NULL,
  "name" text NULL DEFAULT '',
  "description" text NULL DEFAULT '',
  "meta_title" text NULL DEFAULT '',
  "meta_description" text NULL DEFAULT '',
  "meta_keywords" text NULL DEFAULT ''
);

----
-- Data dump for NewsCategoryTranslate, a total of 6 rows
----
INSERT INTO "NewsCategoryTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('1','2','1','Targi','exhibitions','Targi','exhibitions','');
INSERT INTO "NewsCategoryTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('2','2','2','Выставки','article','exhibitions','article','');
INSERT INTO "NewsCategoryTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('3','2','3','Exhibitions','article','exhibitions','article','');
INSERT INTO "NewsCategoryTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('4','1','1','Artykuł','','Artykuł','','');
INSERT INTO "NewsCategoryTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('5','1','2','Статьи','','Статьи','','');
INSERT INTO "NewsCategoryTranslate" ("id","object_id","language_id","name","description","meta_title","meta_description","meta_keywords") VALUES ('6','1','3','Article','','Article','','');

----
-- Table structure for PageTranslate
----
CREATE TABLE "PageTranslate" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "object_id" integer NOT NULL,
  "language_id" integer NOT NULL,
  "title" text NULL DEFAULT '',
  "short_description" text NULL DEFAULT '',
  "full_description" text NULL DEFAULT '',
  "meta_title" text NULL DEFAULT '',
  "meta_keywords" text NULL DEFAULT '',
  "meta_description" text NULL DEFAULT ''
);

----
-- Data dump for PageTranslate, a total of 9 rows
----
INSERT INTO "PageTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('1','1','1','home','','<p><span class="h1">D</span>ziałamy na rynku materiałów instalacyjnych w charakterze producenta i dostawcy urządzeń armatury przemysłowej.</p>

<p><span class="h1">E</span>lastycznie podchodzimy do potrzeb naszych Kontrahentów współpracując z dużymi i małymi przedsiębiorstwami.</p>

<p><span class="h1">N</span>adążamy za wdrażaniem nowych rozwiązań i materiałów zapewniających spełnianie najwyższych europejskich standardów technologicznych.</p>

<p><span class="h1">D</span>ążymy do doskonałości zarówno w sferze obsługi Klienta, jak i w sferze jakości naszych wyrobów stosując nadzór na wszystkich etapach produkcji.</p>

<p><span class="h1">O</span>ferujemy bezpieczne dla środowiska i energooszczędne urządzenia m.in. dla przemysłu papierniczego, cukierniczego, spożywczego, stoczniowego.</p>

<p><span class="h1">R</span>ealizujemy zamówienia w sposób rzetelny i kreatywny przyczyniając się do sukcesu Państwa firmy i dając obu stronom efekt synergii.</p>

<p>Zapraszamy Państwa do zapoznania się z naszą ofertą!</p>
','home','','');
INSERT INTO "PageTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('2','1','2','home','','<p><span class="h1">D</span>ziałamy na rynku materiałów instalacyjnych w charakterze producenta i dostawcy urządzeń armatury przemysłowej.</p>

<p><span class="h1">E</span>lastycznie podchodzimy do potrzeb naszych Kontrahentów współpracując z dużymi i małymi przedsiębiorstwami.</p>

<p><span class="h1">N</span>adążamy za wdrażaniem nowych rozwiązań i materiałów zapewniających spełnianie najwyższych europejskich standardów technologicznych.</p>

<p><span class="h1">D</span>ążymy do doskonałości zarówno w sferze obsługi Klienta, jak i w sferze jakości naszych wyrobów stosując nadzór na wszystkich etapach produkcji.</p>

<p><span class="h1">O</span>ferujemy bezpieczne dla środowiska i energooszczędne urządzenia m.in. dla przemysłu papierniczego, cukierniczego, spożywczego, stoczniowego.</p>

<p><span class="h1">R</span>ealizujemy zamówienia w sposób rzetelny i kreatywny przyczyniając się do sukcesu Państwa firmy i dając obu stronom efekt synergii.</p>

<p>Zapraszamy Państwa do zapoznania się z naszą ofertą!</p>
','home','','');
INSERT INTO "PageTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('3','1','3','home','','<p>Działamy na rynku materiałów instalacyjnych w charakterze producenta i dostawcy urządzeń armatury przemysłowej.</p>

<p>Elastycznie podchodzimy do potrzeb naszych Kontrahentów współpracując z dużymi i małymi przedsiębiorstwami.</p>

<p>Nadążamy za wdrażaniem nowych rozwiązań i materiałów zapewniających spełnianie najwyższych europejskich standardów technologicznych.</p>

<p>Dążymy do doskonałości zarówno w sferze obsługi Klienta, jak i w sferze jakości naszych wyrobów stosując nadzór na wszystkich etapach produkcji.</p>

<p>Oferujemy bezpieczne dla środowiska i energooszczędne urządzenia m.in. dla przemysłu papierniczego, cukierniczego, spożywczego, stoczniowego.</p>

<p>Realizujemy zamówienia w sposób rzetelny i kreatywny przyczyniając się do sukcesu Państwa firmy i dając obu stronom efekt synergii.</p>

<p>Zapraszamy Państwa do zapoznania się z naszą ofertą!</p>
','home','','');
INSERT INTO "PageTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('4','2','1','Armatura Przemysłowa marki Dendor Valve Industrial','','
','Armatura Przemysłowa marki Dendor Valve Industrial','','');
INSERT INTO "PageTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('5','2','2','Трубопроводная арматура Dendor Valve Industrial','','
','Трубопроводная запорная арматура','','');
INSERT INTO "PageTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('6','2','3','Armatura Przemysłowa marki Dendor Valve Industrial','','
','Armatura Przemysłowa marki Dendor Valve Industrial','','');
INSERT INTO "PageTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('7','3','1','O nas','','<div class="row-fluid">
<div class="span12">
<p><span class="h1">D</span>ziałamy na rynku materiałów instalacyjnych w charakterze producenta i dostawcy urządzeń armatury przemysłowej.</p>

<p><span class="h1">E</span>lastycznie podchodzimy do potrzeb naszych Kontrahentów współpracując z dużymi i małymi przedsiębiorstwami.</p>

<p><span class="h1">N</span>adążamy za wdrażaniem nowych rozwiązań i materiałów zapewniających spełnianie najwyższych europejskich standardów technologicznych.</p>

<p><span class="h1">D</span>ążymy do doskonałości zarówno w sferze obsługi Klienta, jak i w sferze jakości naszych wyrobów stosując nadzór na wszystkich etapach produkcji.</p>

<p><span class="h1">O</span>ferujemy bezpieczne dla środowiska i energooszczędne urządzenia m.in. dla przemysłu papierniczego, cukierniczego, spożywczego, stoczniowego.</p>

<p><span class="h1">R</span>ealizujemy zamówienia w sposób rzetelny i kreatywny przyczyniając się do sukcesu Państwa firmy i dając obu stronom efekt synergii.</p>
</div>
</div>

<div class="line line-dotted"></div>

<p>Firma Dendor Valve Industrail sp. z o.o jest producentem wysokiej jakości armatury, kształtek żeliwnych i systemów naprawczopołączeniowych dla sektora wodociągowego, kanalizacyjnego, ciepłowniczego oraz szeroko rozumianego przemysłu.</p>

<p>Ma potencjał umożliwiający wytworzenie oraz dostarczenie produktów i rozwiązań dostosowanych do potrzeb nawet najbardziej wymagających klientów.</p>

<p>Długoletnie doświadczenie zapewniło firmie wysoką pozycję na rynku, a znajomość trendów, wdrażanie nowych technologii i realizowanie potrzeb oraz wymagań nabywców, pozwoliło jej na stałe wpisać się na listę znaczących producentów i dystrybutorów armatury przemysłowej.</p>

<p>Spółka postawiła na wysoką jakość wyrobów dlatego obecnie unowocześnia całą infrastrukturę zakładu. Dendor ma szeroką sieć dystrybucji, odziały firmy znajdują się m.in. w Rosji, USA i Polsce.</p>

<p>Zapraszamy Państwa do zapoznania się z naszą ofertą!</p>
','O nas','','');
INSERT INTO "PageTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('8','3','2','О компании','','<div class="row-fluid">
<div class="span12">
<p><span class="h1">D</span>ziałamy na rynku materiałów instalacyjnych w charakterze producenta i dostawcy urządzeń armatury przemysłowej.</p>

<p><span class="h1">E</span>lastycznie podchodzimy do potrzeb naszych Kontrahentów współpracując z dużymi i małymi przedsiębiorstwami.</p>

<p><span class="h1">N</span>adążamy za wdrażaniem nowych rozwiązań i materiałów zapewniających spełnianie najwyższych europejskich standardów technologicznych.</p>

<p><span class="h1">D</span>ążymy do doskonałości zarówno w sferze obsługi Klienta, jak i w sferze jakości naszych wyrobów stosując nadzór na wszystkich etapach produkcji.</p>

<p><span class="h1">O</span>ferujemy bezpieczne dla środowiska i energooszczędne urządzenia m.in. dla przemysłu papierniczego, cukierniczego, spożywczego, stoczniowego.</p>

<p><span class="h1">R</span>ealizujemy zamówienia w sposób rzetelny i kreatywny przyczyniając się do sukcesu Państwa firmy i dając obu stronom efekt synergii.</p>
</div>
</div>

<div class="line line-dotted"></div>

<p>Firma Dendor Valve Industrail sp. z o.o jest producentem wysokiej jakości armatury, kształtek żeliwnych i systemów naprawczopołączeniowych dla sektora wodociągowego, kanalizacyjnego, ciepłowniczego oraz szeroko rozumianego przemysłu.</p>

<p>Ma potencjał umożliwiający wytworzenie oraz dostarczenie produktów i rozwiązań dostosowanych do potrzeb nawet najbardziej wymagających klientów.</p>

<p>Długoletnie doświadczenie zapewniło firmie wysoką pozycję na rynku, a znajomość trendów, wdrażanie nowych technologii i realizowanie potrzeb oraz wymagań nabywców, pozwoliło jej na stałe wpisać się na listę znaczących producentów i dystrybutorów armatury przemysłowej.</p>

<p>Spółka postawiła na wysoką jakość wyrobów dlatego obecnie unowocześnia całą infrastrukturę zakładu. Dendor ma szeroką sieć dystrybucji, odziały firmy znajdują się m.in. w Rosji, USA i Polsce.</p>

<p>Zapraszamy Państwa do zapoznania się z naszą ofertą!</p>
','О компании','','');
INSERT INTO "PageTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('9','3','3','About','','<div class="row-fluid">
<div class="span12">
<p><span class="h1">D</span>ziałamy na rynku materiałów instalacyjnych w charakterze producenta i dostawcy urządzeń armatury przemysłowej.</p>

<p><span class="h1">E</span>lastycznie podchodzimy do potrzeb naszych Kontrahentów współpracując z dużymi i małymi przedsiębiorstwami.</p>

<p><span class="h1">N</span>adążamy za wdrażaniem nowych rozwiązań i materiałów zapewniających spełnianie najwyższych europejskich standardów technologicznych.</p>

<p><span class="h1">D</span>ążymy do doskonałości zarówno w sferze obsługi Klienta, jak i w sferze jakości naszych wyrobów stosując nadzór na wszystkich etapach produkcji.</p>

<p><span class="h1">O</span>ferujemy bezpieczne dla środowiska i energooszczędne urządzenia m.in. dla przemysłu papierniczego, cukierniczego, spożywczego, stoczniowego.</p>

<p><span class="h1">R</span>ealizujemy zamówienia w sposób rzetelny i kreatywny przyczyniając się do sukcesu Państwa firmy i dając obu stronom efekt synergii.</p>
</div>
</div>

<div class="line line-dotted"></div>

<p>Firma Dendor Valve Industrail sp. z o.o jest producentem wysokiej jakości armatury, kształtek żeliwnych i systemów naprawczopołączeniowych dla sektora wodociągowego, kanalizacyjnego, ciepłowniczego oraz szeroko rozumianego przemysłu.</p>

<p>Ma potencjał umożliwiający wytworzenie oraz dostarczenie produktów i rozwiązań dostosowanych do potrzeb nawet najbardziej wymagających klientów.</p>

<p>Długoletnie doświadczenie zapewniło firmie wysoką pozycję na rynku, a znajomość trendów, wdrażanie nowych technologii i realizowanie potrzeb oraz wymagań nabywców, pozwoliło jej na stałe wpisać się na listę znaczących producentów i dystrybutorów armatury przemysłowej.</p>

<p>Spółka postawiła na wysoką jakość wyrobów dlatego obecnie unowocześnia całą infrastrukturę zakładu. Dendor ma szeroką sieć dystrybucji, odziały firmy znajdują się m.in. w Rosji, USA i Polsce.</p>

<p>Zapraszamy Państwa do zapoznania się z naszą ofertą!</p>
','About','','');

----
-- Table structure for PropertyDirTranslate
----
CREATE TABLE "PropertyDirTranslate" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "object_id" integer NOT NULL,
  "language_id" integer NOT NULL,
  "name" text NULL DEFAULT '',
  "description" text NULL DEFAULT ''
);

----
-- Data dump for PropertyDirTranslate, a total of 0 rows
----

----
-- Table structure for PropertyTranslate
----
CREATE TABLE "PropertyTranslate" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "object_id" integer NOT NULL,
  "language_id" integer NOT NULL,
  "name" text NULL DEFAULT '',
  "description" text NULL DEFAULT ''
);

----
-- Data dump for PropertyTranslate, a total of 36 rows
----
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('1','1','1','Zakres średnic','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('2','1','2','Условный диаметр','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('3','1','3','Size range','Size Range');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('4','2','1','Ciśnienia pracy','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('5','2','2','Раб. давление','Рабочее давление');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('6','2','3','Pressure rating','Pressure Rating');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('7','3','1','Temperatura','Working temperature');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('8','3','2','Темп.раб.','Рабочая температура');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('9','3','3','Temperature','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('10','4','1','max.t','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('11','4','2','Темп.макс.','Максимальная температура');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('12','4','3','Max.temp.','Maximum temperature');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('13','5','1','Typ','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('14','5','2','Тип','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('15','5','3','Model','Model Number');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('16','6','1','Zastosowanie','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('17','6','2','Назначение','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('18','6','3','Application','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('19','7','1','Media','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('20','7','2','Рабочая среда','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('21','7','3','Suitable medium','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('22','8','1','Typ wykonania','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('23','8','2','Конструктивное исполнение','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('24','8','3','Ancillaries','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('25','9','1','Wykonanie materiałowe','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('26','9','2','Материалы конструкции','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('27','9','3','Materials','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('28','10','1','Przyłącze','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('29','10','2','Тип присоединения','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('30','10','3','End connection','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('31','11','1','Zabezpieczenie','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('32','11','2','Защита от коррозии','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('33','11','3','Coating','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('34','12','1','Zasilanie','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('35','12','2','Питание','');
INSERT INTO "PropertyTranslate" ("id","object_id","language_id","name","description") VALUES ('36','12','3','Power','');

----
-- Table structure for PropertyValueTranslate
----
CREATE TABLE "PropertyValueTranslate" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "object_id" integer NOT NULL,
  "language_id" integer NOT NULL,
  "value" text NULL DEFAULT ''
);

----
-- Data dump for PropertyValueTranslate, a total of 1458 rows
----
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1','1','1','DN 32-1000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('2','1','2','DN 32-1000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('3','1','3','DN 32-1000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('4','2','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('5','2','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('6','2','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('7','3','1','-25°C do +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('8','3','2','от -25°C до +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('9','3','3','-25°C to +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('10','4','1',' +150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('11','4','2',' +150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('12','4','3',' +150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('13','5','1','017W');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('14','5','2','017w');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('15','5','3','017w');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('16','6','1','017W');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('17','6','2','017w');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('18','6','3','017w');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('19','7','1','spełnia rolę armatury odcinającej /zaporowej w instalacjach wodociągowych, ciepłowniczych, wentylacyjnych i klimatyzacyjnych, przeciwpożarowych oraz innych przemysłowych ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('20','7','2','Межфланцевые затворы являются арматурой общего назначения, используются в различных отраслях в качестве запорного устройства в системах теплоснабжения, водоснабжения и на разных магистральных трубопроводах, транспортирующих среды с часто применяемыми значениями давлений и температур.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('21','7','3','suitable to be used in various systems where the shut-off flow capability is required such as water and waste water service, H.V.A.C,  industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('22','8','1','woda zimna/gorąca, pitna, morska, powietrze, glikol oraz inne stosownie do uszczelnienia');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('23','8','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси и т.п.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('24','8','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('25','9','1','z dźwignią z podziałką');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('26','9','2','С регулировочной рукояткой и пронумерованным зубчатым сектором, возможен вариант исполнения с замком');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('27','9','3','Handlever w/scale');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('28','10','1','z przekładnią ślimakową ze wskaźnikiem otwarcia');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('29','10','2','Ручной штурвал-редуктор с индикатором открытия');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('30','10','3','Gearbox w/ opening indicator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('31','11','1','z napędem elektrycznym');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('32','11','2','Электропривод');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('33','11','3','Electric actuator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('34','12','1','kadłub – żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('35','12','2','Корпус - чугун GGG40 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('36','12','3','Body – Cast Ductile Iron ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('37','13','1','dysk – żeliwo sferoidalne, możliwe inne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('38','13','2','Диск - чугун GGG40');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('39','13','3','Disc – Cast Ductile Iron, others also available');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('40','14','1','uszczelnienie – EPDM, możliwe też: NBR, VITON, PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('41','14','2','Уплотнение - EPDM, NBR, VITON, PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('42','14','3','Seat - EPDM, also available: NBR, VITON, PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('43','15','1','międzykołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('44','15','2','Межфланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('45','15','3','to be installed between flanges');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('46','16','1','DN 32-1000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('47','16','2','DN 32-1000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('48','16','3','DN 32-1000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('49','17','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('50','17','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('51','17','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('52','18','1','od -25°C do +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('53','18','2','от -25°C до +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('54','18','3','-25°C to +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('55','19','1','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('56','19','2','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('57','19','3','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('58','20','1','spełnia rolę armatury odcinającej /zaporowej w instalacjach wodociągowych, ciepłowniczych, wentylacyjnych i klimatyzacyjnych, przeciwpożarowych oraz innych przemysłowych ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('59','20','2','Межфланцевые затворы являются арматурой общего назначения, используются в различных отраслях в качестве запорного устройства в системах теплоснабжения, водоснабжения и на разных магистральных трубопроводах, транспортирующих среды с часто применяемыми значениями давлений и температур.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('60','20','3','suitable to be used in various systems where the shut-off flow capability is required such as water and waste water service, H.V.A.C, industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('61','21','1','kadłub - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('62','21','2','Корпус - чугун GGG40 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('63','21','3','Body - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('64','22','1','dysk - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('65','22','2','Диск - нержавеющая сталь');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('66','22','3','Disc - Stainless S+teel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('67','23','1','uszczelnienie - EPDM, NBR, VITON, PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('68','23','2','Уплотнение - EPDM, NBR, VITON, PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('69','23','3','Seat - EPDM, also available: NBR, VITON, PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('70','24','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('71','24','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('72','24','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('73','25','1','międzykołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('74','25','2','Межфланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('75','25','3','to be installed between flanges');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('76','26','1','z dźwignią i podziałką');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('77','26','2','С регулировочной рукояткой и пронумерованным зубчатым сектором, возможен вариант исполнения с замком');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('78','26','3','Handlever w/scale');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('79','27','1','z przekładnią ślimakową ze wskaźnikiem otwarcia');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('80','27','2','Ручной штурвал-редуктор с индикатором открытия');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('81','27','3','Gearbox w/ opening indicator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('82','28','1','z napędem elektrycznym');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('83','28','2','Электропривод');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('84','28','3','Electric actuator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('85','29','1','kadłub jest epoksydowany co zapewnia długotrwałą eksploatację urządzenia');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('86','29','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет затвор от коррозии');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('87','29','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('88','30','1','');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('89','30','2','Рабочая среда с корпусом не контактируется.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('90','30','3','design disables direct contact of body and stem with permeable medium');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('91','31','1','DN 32-1000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('92','31','2','DN 32-1000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('93','31','3','DN 32-1000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('94','32','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('95','32','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('96','32','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('97','33','1','od -25°C do +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('98','33','2','от -25°C до +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('99','33','3','-25°C to +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('100','34','1','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('101','34','2','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('102','34','3','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('103','35','1','017W');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('104','35','2','017w');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('105','35','3','017w');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('106','36','1','spełnia rolę armatury odcinającej /zaporowej w instalacjach wodociągowych, ciepłowniczych, wentylacyjnych i klimatyzacyjnych, przeciwpożarowych oraz innych przemysłowych ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('107','36','2','Межфланцевые затворы являются арматурой общего назначения, используются в различных отраслях в качестве запорного устройства в системах теплоснабжения, водоснабжения и на разных магистральных трубопроводах, транспортирующих среды с часто применяемыми значениями давлений и температур.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('108','36','3','suitable to be used in various systems where the shut-off flow capability is required such as water and waste water service, H.V.A.C, industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('109','37','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('110','37','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('111','37','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('112','38','1','z dźwignią i podziałką');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('113','38','2','С регулировочной рукояткой и пронумерованным зубчатым сектором, возможен вариант исполнения с замком');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('114','38','3','Handlever w/scale');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('121','41','1','kadłub -stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('122','41','2','Корпус - сталь WCB');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('123','41','3','Body – Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('124','42','1','dysk - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('125','42','2','Диск - сталь WCB покрытая никелем');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('126','42','3','Disc – Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('127','43','1','uszczelnienie - EPDM, NBR, VITON, PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('128','43','2','Уплотнение - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('129','43','3','Seat - EPDM, also available: NBR, VITON, PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('130','44','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('131','44','2','Межфланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('132','44','3','to be installed between flanges');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('133','45','1','kadłub jest epoksydowany co zapewnia długotrwałą eksploatację urządzenia');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('134','45','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет затвор от коррозии');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('135','45','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('136','46','1','');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('137','46','2','Рабочая среда с корпусом не контактируется.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('138','46','3','design disables direct contact of body and stem permeable medium');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('139','47','1','DN 50-200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('140','47','2','DN 50-200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('141','47','3','DN 50-200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('142','48','1','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('143','48','2','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('144','48','3','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('145','49','1','od -50°C do +150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('146','49','2','от -50°C до +150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('147','49','3','-50°C to +150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('148','50','1','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('149','50','2','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('150','50','3','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('151','51','1','031PW');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('152','51','2','031PW');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('153','51','3','031PW');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('154','52','1','spełnia rolę armatury odcinającej /zaporowej w instalacjach wodociągowych, ciepłowniczych, wentylacyjnych i klimatyzacyjnych, przeciwpożarowych oraz innych przemysłowych ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('155','52','2','Затвор дисковый предназначен для полного перекрытия потока рабочей среды и является одним из распространенных типов трубопроводной арматуры устанавливаемой на системах тепло-водоснабжения, отопления, кондиционирования и вентиляции');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('156','52','3','suitable to be used in various systems where the shut-off flow capability is required such as water service, H.V.A.C,  industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('157','53','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('158','53','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси, слабоагрессивные среды.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('159','53','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('160','54','1','z dźwignią');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('161','54','2','Рукоятка');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('162','54','3','Handlever');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('163','55','1','z przekładnią');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('164','55','2','Редуктор');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('165','55','3','Gearbox');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('166','56','1','z napędem elektrycznym');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('167','56','2','Электропривод');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('168','56','3','Electric actuator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('169','57','1','kadłub -UPVC, CPVC, FRPP, PPR, PVDF, ABS');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('170','57','2','Корпус - UPVC, CPVC, FRPP, PPR, PVDF, ABS');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('171','57','3','Body - UPVC, CPVC, FRPP, PPR, PVDF, ABS');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('172','58','1','dysk - UPVC, CPVC, FRPP, PPR, PVDF, ABS');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('173','58','2','Диск - UPVC, CPVC, FRPP, PPR, PVDF, ABS');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('174','58','3','Disc - UPVC, CPVC, FRPP, PPR, PVDF, ABS');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('175','59','1','uszczelnienie - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('176','59','2','Уплотнение - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('177','59','3','Seat - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('178','60','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('179','60','2','Межфланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('180','60','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('187','63','1','DN 100-500');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('188','63','2','DN 100-500');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('189','63','3','DN 100-500');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('190','64','1','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('191','64','2','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('192','64','3','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('193','65','1','od -50°C do +150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('194','65','2','от -50°C до +150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('195','65','3','-50°C to +150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('196','66','1','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('197','66','2','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('198','66','3','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('199','67','1','031PWG');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('200','67','2','031PWG');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('201','67','3','031PWG');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('202','68','1','spełnia rolę armatury odcinającej /zaporowej w instalacjach wodociągowych, ciepłowniczych, wentylacyjnych i klimatyzacyjnych, przeciwpożarowych oraz innych przemysłowych ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('203','68','2','Затвор дисковый предназначен для полного перекрытия потока рабочей среды и является одним из распространенных типов трубопроводной арматуры устанавливаемой на системах тепло-водоснабжения, отопления, кондиционирования и вентиляции');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('204','68','3','suitable to be used in various systems where the shut-off flow capability is required such as water  service, H.V.A.C,  industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('205','69','1','woda zimna i goraca, pitna, morska, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('206','69','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси, слабоагрессивные среды.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('207','69','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('211','71','1','z przekładnią ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('212','71','2','Редуктор');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('213','71','3','Gearbox');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('214','72','1','z napędem elektrycznym');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('215','72','2','Электропривод');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('216','72','3','Electric actuator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('217','73','1',' kadłub - UPVC, CPVC, FRPP, PPR, PVDF, ABS ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('218','73','2','Корпус - UPVC, CPVC, FRPP, PPR, PVDF, ABS');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('219','73','3','Body - UPVC, CPVC, FRPP, PPR, PVDF, ABS ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('220','74','1',' dysk - UPVC, CPVC, FRPP, PPR, PVDF, ABS ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('221','74','2','Диск - UPVC, CPVC, FRPP, PPR, PVDF, ABS');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('222','74','3','Disc - UPVC, CPVC, FRPP, PPR, PVDF, ABS ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('223','75','1',' uszczelnienie - EPDM ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('224','75','2','Уплотнение - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('225','75','3','Seat - EPDM ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('226','76','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('227','76','2','Межфланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('228','76','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('235','79','1','DN 50-1400');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('236','79','2','DN 50-1200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('237','79','3','DN 50-1400');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('238','80','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('239','80','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('240','80','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('241','81','1','od -25°C do +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('242','81','2','от -25°C до +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('243','81','3','-25°C to +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('244','82','1','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('245','82','2','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('246','82','3','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('247','83','1','021F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('248','83','2','021F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('249','83','3','021F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('250','84','1','spełnia rolę armatury odcinającej /zaporowej w instalacjach wodociągowych, ciepłowniczych, wentylacyjnych i klimatyzacyjnych, przeciwpożarowych oraz innych przemysłowych');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('251','84','2','Фланцевые затворы являются арматурой общего назначения, используются в различных отраслях в качестве запорного устройства в системах теплоснабжения, водоснабжения и на разных магистральных трубопроводах, транспортирующих среды с часто применяемыми значениями давлений и температур.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('252','84','3','suitable to be used in various systems where the shut-off flow capability is required such as water and waste water service, H.V.A.C,  industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('253','85','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('254','85','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси и т.п.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('255','85','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('256','86','1','z przekładnią ślimakową i wskaźnikiem otwarcia');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('257','86','2','Ручной штурвал-редуктор с индикатором открытия');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('258','86','3','Gearbox w/ opening indicator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('259','87','1','z napędem elektrycznym');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('260','87','2','Электропривод');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('261','87','3','Electric actuator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('262','88','1','kadłub - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('263','88','2','Корпус - чугун GGG40 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('264','88','3','Body - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('265','89','1','dysk - żeliwo sferoidalne, możliwe też inne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('266','89','2','Диск - чугун GGG40, сталь, нержавеющая сталь');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('267','89','3','Body - Cast Ductile Iron, stainless steel also available');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('268','90','1',' uszczelnienie - EPDM, NBR, VITON, PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('269','90','2',' Уплотнитель - EPDM, NBR, VITON, PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('270','90','3','Seat - EPDM, NBR, VITON, PTFE also available');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('271','91','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('272','91','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('273','91','3','to be installed between flanges');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('280','94','1','DN 300-2000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('281','94','2','DN 100-2000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('282','94','3','DN 300-2000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('283','95','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('284','95','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('285','95','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('286','96','1','od -25°C do +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('287','96','2','от -25°C до +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('288','96','3','-25°C to +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('289','97','1','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('290','97','2','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('291','97','3','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('292','98','1','023F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('293','98','2','023F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('294','98','3','023F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('295','99','1','spełnia rolę armatury odcinającej /zaporowej w instalacjach wodociągowych, ciepłowniczych, wentylacyjnych i klimatyzacyjnych, przeciwpożarowych oraz innych przemysłowych');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('296','99','2','Чугунные фланцевые затворы с эксцентриситетом используются в различных отраслях в качестве запорного устройства в системах теплоснабжения, водоснабжения и на разных магистральных трубопроводах, транспортирующих среды с часто применяемыми значениями давлений и температур.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('297','99','3','suitable to be used in various systems where the shut-off flow capability is required such as water and waste water service, H.V.A.C,  industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('298','100','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('299','100','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('300','100','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('301','101','1','z przekładnią ślimakową i wskaźnikiem otwarcia');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('302','101','2','Ручной штурвал-редуктор с индикатором открытия');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('303','101','3','Gearbox w/ opening indicator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('304','102','1','z napędem elektrycznym');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('305','102','2','Электропривод');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('306','102','3','Electric actuator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('307','103','1','kadłub - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('308','103','2','Корпус - чугун GGG40 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('309','103','3','Body – ductile iron ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('310','104','1',' dysk - żeliwo sferoidalne, stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('311','104','2','Диск - чугун GGG40, сталь, нержавеющая сталь');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('312','104','3','Disc - ductile iron,stainless steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('313','105','1',' uszczelnienie - EPDM, NBR, VITON, PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('314','105','2',' Уплотнитель - EPDM, NBR, VITON, PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('315','105','3','Seats - EPDM, also available: NBR, VITON, PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('316','106','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('317','106','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('318','106','3','to be installed between flanges');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('319','107','1','DN 80-2000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('320','107','2','DN 200-2000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('321','107','3','DN 200-2000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('322','108','1','PN 16/25/40');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('323','108','2','PN 16, PN 25, PN 40');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('324','108','3','PN 16/25/40');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('325','109','1','od -40°C do +425°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('326','109','2','от -40°C до +425°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('327','109','3','-40°C to +425°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('328','110','1','+425°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('329','110','2','+425°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('330','110','3','+425°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('331','111','1','027W');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('332','111','2','027W');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('333','111','3','027W');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('334','112','1','spełnia rolę armatury odcinającej /zaporowej w instalacjach wodociągowych, ciepłowniczych, wentylacyjnych i klimatyzacyjnych, przeciwpożarowych oraz innych przemysłowych ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('335','112','2','Стальные затворы с тройным эксцентриситетом предназначены для работы в качестве запорного устройства на трубопроводе в жестких условиях рабочей среды');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('336','112','3','suitable to be used in various systems where the shut-off flow capability is required such as water service, H.V.A.C,  fire installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('337','113','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('338','113','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, пар, гликольные смеси, нефтепродукты, масла');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('339','113','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('340','114','1','z dźwignią i podziałką');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('341','114','2','Ручной штурвал-редуктор с индикатором открытия');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('342','114','3','Gearbox w/ opening indicator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('343','115','1','z napędem elektrycznym');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('344','115','2','Электропривод');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('345','115','3','Electric actuator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('346','116','1','kadłub - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('347','116','2','Корпус - литой, выполнен из стали с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('348','116','3','Body – stainless steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('349','117','1',' dysk - stal nierdzewna ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('350','117','2','Диск - сталь, нержавеющая сталь');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('351','117','3','Disc - stainless steel, others also available');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('352','118','1',' uszczelnienie - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('353','118','2','Уплотнитель - нержавеющая сталь');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('354','118','3','Seat – Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('355','119','1','przyspawane ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('356','119','2','Приварное');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('357','119','3','Weld end');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('358','120','1','DN 40-1200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('359','120','2','DN 40-1200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('360','120','3','DN 40-1200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('361','121','1','PN 16/25/40');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('362','121','2','PN 16 / 25 / 40');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('363','121','3','PN 16/25/40');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('364','122','1','od -40°C do +530°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('365','122','2','от -40°C дo +530°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('366','122','3','-40°C to +425°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('367','123','1','+530°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('368','123','2','+530°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('369','123','3','+425°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('370','124','1','027W');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('371','124','2','027F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('372','124','3','027W');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('373','125','1','spełnia rolę armatury odcinającej /zaporowej w instalacjach wodociągowych, ciepłowniczych, wentylacyjnych i klimatyzacyjnych, przeciwpożarowych oraz innych przemysłowych ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('374','125','2','Фланцевые затворы с эксцентриситетом используются в различных отраслях в качестве запорного устройства в системах теплоснабжения, водоснабжения и на разных магистральных трубопроводах, транспортирующих среды с часто применяемыми значениями давлений и температур.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('375','125','3','suitable to be used in various systems where the shut-off flow capability is required such as water service, H.V.A.C,  fire installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('376','126','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('377','126','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, пар, гликольные смеси, нефтепродукты, масла');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('378','126','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('379','127','1','przekładnia ręczna ze wskaźnikiem otwarcia');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('380','127','2','Ручной штурвал-редуктор с индикатором открытия');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('381','127','3','Gearbox w/opening indicator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('382','128','1','z napędem elektrycznym');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('383','128','2','Электропривод');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('384','128','3','Electric actuator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('385','129','1','kadłub - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('386','129','2','Корпус - литой, выполнен из стали с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('387','129','3','Body – Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('388','130','1',' dysk - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('389','130','2','Диск - нержавеющая сталь');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('390','130','3',' Disc - Stainless Steel, others also available');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('391','131','1',' uszczelnienie - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('392','131','2','Уплотнитель - нержавеющая сталь');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('393','131','3','Seat – Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('394','132','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('395','132','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('396','132','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('400','134','1','DN 40-1000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('401','134','2','DN 40-1000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('402','134','3','DN 40-1000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('403','135','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('404','135','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('405','135','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('406','136','1','od -25°C do +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('407','136','2','от -25°C до +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('408','136','3','od -25°C do +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('409','137','1','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('410','137','2','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('411','137','3','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('412','138','1','do zamykania przepływu czynników roboczych w instalacjach wodociągowych, ciepłowniczych, kanalizacyjnych, przeciwpożarowych oraz innych przemysłowych');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('413','138','2','Чугунная задвижка с обрезиненным клином предназначена для полного перекрытия потока рабочей среды и является одним из распространенных типов трубопроводной арматуры устанавливаемой на технологических и магистральных трубопроводах транспортирующих воду.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('414','138','3','suitable to be used in various systems where the shut-off flow capability is required such as water /waste water service, H.V.A.C,  industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('415','139','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('416','139','2','Воздух, гликольные смеси, морская вода, вода в системах холодного и горячего водоснабжения, питьевая вода, слабоагрессивные жидкости.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('417','139','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('418','140','1','kółko przekładnia');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('419','140','2','С маховиком (штурвалом)');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('420','140','3','Handwheel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('421','141','1','obudowa  trzpień niewznoszący');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('422','141','2','С удлиненным штоком');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('423','141','3','Gearbox');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('424','142','1','kadłub - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('425','142','2','Корпус - чугун GGG50 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('426','142','3','Body - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('427','143','1','klin - żeliwo sferoidalne, powłoka EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('428','143','2','Клин - чугун GGG50, покрытый EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('429','143','3','Wedge - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('430','144','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('431','144','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('432','144','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('433','145','1','kadłub epoksydowany pozwala na długotrwałą eksploatację.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('434','145','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет задвижку от коррозии');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('435','145','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('436','146','1','47GV');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('437','146','2','47GV');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('438','146','3','47GV');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('439','147','1','DN 50-800');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('440','147','2','DN 50-800');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('441','147','3','DN 40-1000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('442','148','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('443','148','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('444','148','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('445','149','1','od -20°C do +120°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('446','149','2','от -20°C до +120°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('447','149','3','-25°C to +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('448','150','1','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('449','150','2','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('450','150','3','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('451','151','1','zasuwy klinowe z klinem gumowym są szeroko wykorzystywane do zamykania przepływu czynników roboczych w przemysłowych instalacjach służących do transportu wody.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('452','151','2','Чугунная задвижка с обрезиненным клином предназначена для полного перекрытия потока рабочей среды и является одним из распространенных типов трубопроводной арматуры устанавливаемой на технологических и магистральных трубопроводах транспортирующих воду.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('453','151','3','suitable to be used in various systems where the shut-off flow capability is required such as water /waste water service, H.V.A.C,  industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('454','152','1','woda zimna i gorąca, woda pitna, woda morska, ścieki, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('455','152','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('456','152','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('457','153','1','napęd elektryczny');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('458','153','2','Электропривод');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('459','153','3','Electric actuator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('463','155','1','kadłub - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('464','155','2','Корпус - чугун GGG50 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('465','155','3','Body - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('466','156','1','klin - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('467','156','2','Клин - чугун GGG50, покрытый EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('468','156','3','Wedge – Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('469','157','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('470','157','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('471','157','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('472','158','1','kadłub epoksydowany pozwala na długotrwałą eksploatację.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('473','158','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет задвижку от коррозии');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('474','158','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('475','159','1','47GVA');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('476','159','2','47GVА');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('477','159','3','47GVA');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('478','160','1','DN 50-1000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('479','160','2','DN 50-1200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('480','160','3','DN 50-1000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('481','161','1','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('482','161','2','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('483','161','3','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('484','162','1','od -25°C do +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('485','162','2','от -25°C до +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('486','162','3','25°C to +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('487','163','1','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('488','163','2','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('489','163','3','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('490','164','1','
do zamykania przepływu czynników roboczych w instalacjach wodociągowych, kanalizacyjnych oraz innych przemysłowych');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('491','164','2','Задвижка шиберная предназначена для полного перекрытия рабочей среды в трубопроводе. Применяется для установки на канализационные очистные сооружения, а так же в целлюлозной, горнодобывающей, химической промышленности.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('492','164','3','suitable to be used in various systems where the shut-off flow capability is required such as water /waste water service, H.V.A.C,  industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('493','165','1','woda zimna i gorąca, woda pitna, woda morska, ścieki, emulsje, czynniki robocze w postaci proszków i granulatów, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('494','165','2','Вязкие жидкости, сыпучие продукты, вода в системах водоснабжения, канализации, кристаллизованные среды, цемент, сточные воды.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('495','165','3','Water, Waste Water, Powders, Granules, Oil, Water Emulsions');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('496','166','1','kólko');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('497','166','2','Редуктор');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('498','166','3','Handwheel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('499','167','1','przekładnia');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('500','167','2','С маховиком (штурвалом)');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('501','167','3','Gearbox');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('502','168','1','kadłub - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('503','168','2','Корпус - литая сталь с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('504','168','3','Body - Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('505','169','1','nóż - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('506','169','2','Нож - нержавеющая сталь');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('507','169','3','Wedge - Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('508','170','1','miedzykołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('509','170','2','Межфланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('510','170','3','to be installed between flanges');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('511','171','1','kadłub epoksydowany pozwala na długotrwałą eksploatację.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('512','171','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет задвижку от коррозии');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('513','171','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('514','172','1','K51GV');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('515','172','2','K51GV');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('516','172','3','K51GV');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('517','173','1','uszczelnienie - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('518','173','2','Уплотнитель - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('519','173','3','Seat - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('520','174','1','DN 40-800');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('521','174','2','DN 32-800');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('522','174','3','DN 32-800');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('523','175','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('524','175','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('525','175','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('526','176','1','od -25°C do +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('527','176','2','от -25°C до +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('528','176','3','-25°C to +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('529','177','1','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('530','177','2','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('531','177','3','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('532','178','1','010C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('533','178','2','010C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('534','178','3','010C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('535','179','1','zapewnia pełną ochronę przed możliwością pojawienia się przepływu wstecznego w instalacjach wodociągowych, ciepłowniczych, przeciwpożarowych oraz innych przemysłowych');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('536','179','2','Клапан обратный межфланцевый двустворчатый предназначен для предотвращения обратного потока рабочей среды в трубопроводных системах тепло и водоснабжения, пищевой, химической, и других областях промышленности.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('537','179','3','suitable to be used in various systems to prevent the medium from flowing back in the allowable pressure and temperature range such as water service, H.V.A.C, industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('538','180','1','kadłub - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('539','180','2','Корпус - чугун GGG40 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('540','180','3','Body - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('541','181','1','podwójna płytka - żeliwo sferoidalne, możliwe też inne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('542','181','2','Створки - чугун GGG40, сталь, нержавеющая сталь');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('543','181','3','Plate – Cast Ductile Iron, stainless steel also available');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('544','182','1','kadłub jest epoksydowany co zapewnia długotrwałą eksploatację urządzenia');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('545','182','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет затвор от коррозии.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('546','182','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('547','183','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('548','183','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси и т.п.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('549','183','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('550','184','1','międzykołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('551','184','2','Межфланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('552','184','3','to be installed between flanges');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('553','185','1','DN 32-500');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('554','185','2','DN 40-500');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('555','185','3','DN 32-500');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('556','186','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('557','186','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('558','186','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('559','187','1','od -25°C do +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('560','187','2','от -25°C до +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('561','187','3','-25°C to +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('562','188','1','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('563','188','2','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('564','188','3','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('565','189','1','012F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('566','189','2','012F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('567','189','3','012F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('568','190','1','zapewnia pełną ochronę przed możliwością pojawienia się przepływu wstecznego w instalacjach kanalizacyjnych, transportujących ścieki, odpływach deszczowych oraz instalacjach przemysłowych');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('569','190','2','Обратный фланцевый шаровой клапан предназначен для предотвращения обратного потока рабочей среды в трубопроводных системах канализации, сточных вод, а также пищевой, химической, и других областях промышленности.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('570','190','3','suitable to be used in various systems to prevent the medium from flowing back in the allowable pressure and temperature range such as water and waste water service, sewage, rain drains, industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('571','191','1','kadłub - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('572','191','2','Корпус - чугун GGG50 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('573','191','3','Body - Cast Ductile Iron ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('574','192','1','kula - stal nierdzewna powleczona EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('575','192','2','Шар - сталь покрытая EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('576','192','3','Ball – Stainless Steel,  others also available');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('577','193','1','uszczelnienie pokrywy - EPDM, NBR');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('578','193','2','Уплотнение крышки - EPDM, NBR');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('579','193','3','Seal Bonnet - EPDM, NBR');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('580','194','1','kadłub epoksydowany.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('581','194','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет клапан от коррозии');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('582','194','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('583','195','1','woda zimna i gorąca, woda przemysłowa, ścieki oraz inne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('584','195','2','Канализационные системы, ливневые стоки, трубопроводы транспортирующие сточные воды, техническая горячая и холодная вода ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('585','195','3','Fresh Water, Sea Water, Potable Water, Air, Glykol ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('586','196','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('587','196','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('588','196','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('589','197','1','DN 50-300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('590','197','2','DN 50-300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('591','197','3','DN 50-300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('592','198','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('593','198','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('594','198','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('595','199','1','od -40°C do +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('596','199','2','от -40°C до +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('597','199','3','-40°C to +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('598','200','1','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('599','200','2','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('600','200','3','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('601','201','1','008С');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('602','201','2','008С');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('603','201','3','008С');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('604','202','1','zapewnia pełną ochronę przed możliwością pojawienia się przepływu wstecznego w instalacjach wodociągowych, ciepłowniczych, przeciwpożarowych oraz innych przemysłowych');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('605','202','2','Клапан обратный межфланцевый стальной предназначен для предотвращения обратного потока рабочей среды в трубопроводных системах тепло и водоснабжения, пищевой, химической, и других областях промышленности.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('606','202','3','suitable to be used in various systems to prevent the medium from flowing back in the allowable pressure and temperature range such as water service, H.V.A.C, industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('607','203','1','kadłub - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('608','203','2','Корпус - сталь с коррозионностойким покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('609','203','3','Body – Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('610','204','1','dysk - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('611','204','2','Диск - сталь, нержавеющая сталь');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('612','204','3','Flap – Stainless Steel, others also available');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('613','205','1','uszczelka - EPDM, NBR, VITON');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('614','205','2','Уплотнитель - EPDM, NBR, VITON');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('615','205','3','Seat - EPDM, NBR, VITON');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('616','206','1','kadłub epoksydowany.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('617','206','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет клапан от коррозии');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('618','206','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('619','207','1','woda zimna i gorąca, woda morska, woda pitna, powietrze, glikol etc.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('620','207','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода. воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('621','207','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('622','208','1','międzykołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('623','208','2','Межфланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('624','208','3','to be installed between flanges');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('625','209','1','DN 50-300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('626','209','2','DN 50-300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('627','209','3','DN 50-300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('628','210','1','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('629','210','2','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('630','210','3','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('631','211','1','od -25°C do +90°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('632','211','2','от -25°C до +90°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('633','211','3','-25°C to +90°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('634','212','1','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('635','212','2','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('636','212','3','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('637','213','1','015F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('638','213','2','015F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('639','213','3','015F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('640','214','1','zapewnia pełną ochronę przed możliwością pojawienia się przepływu wstecznego w instalacjach kanalizacyjnych, przeciwpożarowych, transportujących ścieki, odpływach deszczowych oraz instalacjach przemysłowych');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('641','214','2','Обратный фланцевый клапан серии 015F предназначен для предотвращения обратного потока рабочей среды в трубопроводных системах тепло и водоснабжения, отопления, водоподготовки, пожаротушения, а так же в канализационных системах, ливневых стоках, трубопроводах, транспортирующих сточные воды.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('642','214','3','suitable to be used in various systems to prevent the medium from flowing back in the allowable pressure and temperature range such as water and waste water service, sewage, H.V.A.C, rain drains, industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('643','215','1','kadłub - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('644','215','2','Корпус - чугун с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('645','215','3','Body - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('646','216','1','klapa - żeliwo sferoidalne, możliwe też inne ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('647','216','2','Диск - чугун');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('648','216','3','Flap – Stainless Steel, others also available');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('649','217','1','kadłub jest epoksydowany co zapewnia długotrwałą eksploatację urządzenia');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('650','217','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет затвор от коррозии.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('651','217','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('652','218','1','woda zimna i gorąca, woda morska, woda pitna, powietrze, woda przemysłowa, ścieki, glikol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('653','218','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси, слабоагрессивные среды, сточные воды.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('654','218','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('655','219','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('656','219','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('657','219','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('658','220','1','DN 15-50');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('659','220','2','DN 15-50');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('660','220','3','DN 15-50');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('661','221','1','od -10°C do +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('662','221','2','от -10°C до +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('663','221','3','-10°C to +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('664','222','1','+130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('665','222','2','+130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('666','222','3','+130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('667','223','1','Vz');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('668','223','2','Vz');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('669','223','3','Vz');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('670','224','1','zawory elektromagnetyczne bezpośredniego działaniaprzeznaczone sa do dwupołozeniowego sterowania przepływem wody, powietrza, pary oraz innych gazów i olejów o maksymalnej lepkosci 2°E (11,8 cST), w różnego rodzaju instalacjach.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('671','224','2','Соленоидный электромагнитный клапан прямого действия предназначен для моментальной, автоматической подачи или перекрытия потока рабочей среды не зависящей от давления или скорости потока в трубопроводе.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('672','224','3','used to control the flow of water, air, steam and other gases and oils having a maximum viscosity of 2 ° E (11.8 cSt), in various types of industrial installations.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('673','225','1','korpus - mosiądz');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('674','225','2','Корпус клапана - выполнен из латуни');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('675','225','3','Body - Brass');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('676','226','1','elementy wewnętrzne - stal nierdzewna lub mosiądz');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('677','226','2','Внутренние детали - изготовлены из нержавеющей стали и латуни');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('678','226','3','Inside parts - Stainless Steel or Brass');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('679','227','1','uszczelnienie - VITON');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('680','227','2','Уплотнение - EPDM, VITON, NBR');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('681','227','3','Seat- VITON');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('682','228','1','instalacje wody zimnej i gorącej, c.o, woda morska, woda pitna, powietrze, glikol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('683','228','2','Вода в системах холодного и горячего водоснабжения, отопление, морская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('684','228','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('685','229','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('686','229','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('687','229','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('688','230','1','gwintowane');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('689','230','2','Муфтовое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('690','230','3','Threaded');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('691','231','1','DN 15-50');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('692','231','2','DN 15-50');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('693','231','3','DN 15-50');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('694','232','1','od -10°C do +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('695','232','2','от -10°C до +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('696','232','3','-10°C to +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('697','233','1','+130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('698','233','2','+130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('699','233','3','+130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('700','234','1','Vp');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('701','234','2','Vp');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('702','234','3','Vp');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('703','235','1','zawory elektromagnetyczne bezpośredniego działaniaprzeznaczone sa do dwupołozeniowego sterowania przepływem wody, powietrza, pary oraz innych gazów i olejów o maksymalnej lepkosci 2°E (11,8 cST), w różnego rodzaju instalacjach.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('704','235','2','Cоленоидный электромагнитный клапан непрямого действия предназначен для моментальной, автоматической подачи или перекрытия потока рабочей среды при использовании в работе давление в трубопроводе.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('705','235','3','used to control the flow of water, air, steam and other gases and oils having a maximum viscosity of 2 ° E (11.8 cSt), in various types of industrial installations.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('706','236','1','korpus - mosiądz');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('707','236','2','Корпус клапана - выполнен из латуни');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('708','236','3','Body - Brass');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('709','237','1','elementy wewnętrzne - stal nierdzewna lub mosiądz');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('710','237','2','Внутренние детали - изготовлены из нержавеющей стали и латуни');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('711','237','3','Inside parts - Stainless Steel or Brass');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('712','238','1','uszczelnienie - VITON');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('713','238','2','Уплотнение - EPDM, VITON, NBR');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('714','238','3','Seat - VITON');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('715','239','1','instalacje wody zimnej i gorącej, c.o, woda morska, woda pitna, powietrze, glikol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('716','239','2','Вода в системах холодного и горячего водоснабжения, отопление, морская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('717','239','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('718','240','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('719','240','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('720','240','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('721','241','1','gwintowane');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('722','241','2','Муфтовое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('723','241','3','Threaded');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('724','242','1','DN 50-150');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('725','242','2','DN 50-150');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('726','242','3','DN 50-150');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('727','243','1','od -10°C do +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('728','243','2','от -10°C до +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('729','243','3','-10°C to +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('730','244','1','+130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('731','244','2','+130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('732','244','3','+130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('733','245','1','Vf');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('734','245','2','Vf');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('735','245','3','Vf');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('736','246','1','zawory elektromagnetyczne bezpośredniego działaniaprzeznaczone sa do dwupołozeniowego sterowania przepływem wody, powietrza, pary oraz innych gazów i olejów o maksymalnej lepkosci 2°E (11,8 cST), w różnego rodzaju instalacjach.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('737','246','2','Электромагнитный фланцевый клапан предназначен для моментальной автоматической подачи или перекрытия потока рабочих жидкостей или газов.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('738','246','3','used to control the flow of water, air, steam and other gases and oils having a maximum viscosity of 2 ° E (11.8 cSt), in various types of industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('739','247','1','korpus - mosiądz');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('740','247','2','Корпус -латунь, нержавеющая сталь, чугун');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('741','247','3','Body - Brass');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('745','249','1','uszczelnienie - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('746','249','2','Уплотнение - EPDM, VITON, NBR');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('747','249','3','Seat - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('748','250','1','nstalacje wody zimnej i gorącej, c.o, woda morska, woda pitna, powietrze, glikol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('749','250','2','Вода в системах холодного и горячего водоснабжения, отопление, морская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('750','250','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('751','251','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('752','251','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('753','251','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('757','253','1','DN 15-50');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('758','253','2','DN 15-50');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('759','253','3','DN 15-50');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('760','254','1','od -10°C do +100°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('761','254','2','от -10°C до +100°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('762','254','3','-10°C to +100°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('763','255','1','+100°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('764','255','2','+100°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('765','255','3','+100°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('766','256','1','Vs');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('767','256','2','Vs');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('768','256','3','Vs');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('769','257','1','zawory elektromagnetyczne bezpośredniego działania przeznaczone są do dwupołożeniowego sterowania przepływem wody, powietrza, pary oraz innych gazów i olejów w różnego rodzaju instalacjach.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('770','257','2','Cоленоидный электромагнитный клапан на спирт предназначен для моментальной, автоматической подачи или перекрытия потока рабочей среды, совместимой с используемыми материалами уплотнений и мембраны, при наличии напряжения в катушке.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('771','257','3','used to control the flow of water, air, steam and other gases and oils having a maximum viscosity of 2 ° E (11.8 cSt), in various types of industrial installations.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('772','258','1','korpus - mosiądz');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('773','258','2','Корпус клапана - выполнен из латуни');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('774','258','3','Body - Brass');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('775','259','1','elementy wewnętrzne - stal nierdzewna lub mosiądz');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('776','259','2','Внутренние детали - изготовлены из нержавеющей стали и латуни');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('777','259','3','Inside parts - Stainless Steel or Brass');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('778','260','1','uszczelnienie - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('779','260','2','Уплотнение - EPDM, VITON, NBR');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('780','260','3','seat - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('781','261','1','instalacje wody zimnej i gorącej, c.o, woda morska, woda pitna, powietrze, glikol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('782','261','2','Вода в системах холодного водоснабжения, морская вода, питьевая вода, воздух, гликольные смеси, спирт, масла');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('783','261','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('784','262','1','gwintowane');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('785','262','2','Муфтовое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('786','262','3','Threaded');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('787','263','1','DN 15-50');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('788','263','2','DN 15-50');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('789','263','3','DN 15-50');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('790','264','1','od -10°C do +230°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('791','264','2','от -10°C до +230°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('792','264','3','-10°C to +230°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('793','265','1','+250°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('794','265','2','+250°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('795','265','3','+250°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('796','266','1','Vg');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('797','266','2','Vg');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('798','266','3','Vg');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('799','267','1','zawory elektromagnetyczne bezpośredniego działaniaprzeznaczone sa do dwupołozeniowego sterowania przepływem wody, powietrza, pary w różnego rodzaju instalacjach.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('800','267','2','Соленоидный электромагнитный клапан на пар предназначен для моментальной, автоматической подачи или перекрытия потока рабочей среды при наличии напряжения в катушке.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('801','267','3','used to control the flow of water, air, steam and other gases and oils having a maximum viscosity of 2 ° E (11.8 cSt), in various types of industrial installations.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('802','268','1','korpus - mosiądz');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('803','268','2','Корпус клапана - выполнен из латуни');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('804','268','3','Body - Brass');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('805','269','1','elementy wewnętrzne - stal nierdzewna lub mosiądz');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('806','269','2','Внутренние детали - изготовлены из нержавеющей стали и латуни');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('807','269','3','Inside parts - Stainless Steel or Brass');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('808','270','1','uszczelnienie - PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('809','270','2','Уплотнение - PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('810','270','3','Seat - PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('811','271','1','instalacje wody zimnej i gorącej, c.o, woda morska, woda pitna, powietrze, glikol, para');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('812','271','2','Вода в системах холодного и горячего водоснабжения, отопление, морская вода, питьевая вода, воздух, гликольные смеси, пар');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('813','271','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('814','272','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('815','272','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('816','272','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('817','273','1','gwintowane');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('818','273','2','Муфтовое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('819','273','3','Threaded');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('820','274','1','DN 15-50');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('821','274','2','DN 15-50');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('822','274','3','DN 15-50');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('823','275','1','od -10°C do +185°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('824','275','2','от -10°C до +185°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('825','275','3','-10°C to +185°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('826','276','1','+200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('827','276','2','+200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('828','276','3','+200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('829','277','1','Vt');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('830','277','2','Vt');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('831','277','3','Vt');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('832','278','1','zawory elektromagnetyczne bezpośredniego działaniaprzeznaczone sa do dwupołozeniowego sterowania przepływem wody, powietrza, pary oraz innych czynników w różnego rodzaju instalacjach.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('833','278','2','Cоленоидный электромагнитный клапан тефлон предназначен для моментальной, автоматической подачи или перекрытия потока рабочей среды, совместимой с используемыми материалами уплотнений и мембраны, при наличии напряжения в катушке.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('834','278','3','used to control the flow of water, air, steam and other gases and oils having a maximum viscosity of 2 ° E (11.8 cSt), in various types of industrial installations.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('835','279','1','korpus - mosiądz');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('836','279','2','Корпус клапана - выполнен из латуни');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('837','279','3','Body - Brass');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('838','280','1','elementy wewnętrzne - stal nierdzewna lub mosiądz');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('839','280','2','Внутренние детали - изготовлены из нержавеющей стали и латуни');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('840','280','3','Inside parts - Stainless Steel or Brass');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('841','281','1','uszczelnienie - TEFLON');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('842','281','2','Уплотнение - TEFLON');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('843','281','3','Seat - TEFLON');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('844','282','1','instalacje wody zimnej i gorącej, c.o, woda morska, woda pitna, powietrze, glikol, para');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('845','282','2','Вода в системах холодного и горячего водоснабжения, отопление, морская вода, питьевая вода, воздух, пар, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('846','282','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('847','283','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('848','283','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('849','283','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('850','284','1','gwintowane');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('851','284','2','Муфтовое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('852','284','3','Threaded');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('853','285','1','DN 32-400');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('854','285','2','DN 32-400');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('855','285','3','DN 32-400');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('856','286','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('857','286','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('858','286','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('859','287','1','od -25°C do +150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('860','287','2','от -25°C до +150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('861','287','3','-25°C to +150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('862','288','1','+180°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('863','288','2','+180°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('864','288','3','+180°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('865','289','1','021Y');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('866','289','2','021Y');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('867','289','3','021Y');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('868','290','1','do wyłapywania zanieczyszczeń stałych (w tym też o własnościach magnetycznych ) w instalacjach wodociągowych, c.o, przeciwpożarowych oraz innych przemysłowych');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('869','290','2','Фильтр сетчатый предназначен для улавливания стойких механических примесей в трубопроводных системах тепло и водоснабжения, пищевой. химической и других областях промышленности. Встроенная магнитная вставка позволяет улавливать ферромагнетики.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('870','290','3','to fish out all tiniest magnetic solids  in various systems such as waterworks, H.V.A.C, industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('871','291','1','korpus - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('872','291','2','Корпус - чугун GGG40 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('873','291','3','Body - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('874','292','1','siatka - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('875','292','2','Фильтрующий элемент - сетка из нержавеющей стали и стержень с магнитами');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('876','292','3','Screen – Stainless Steal');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('877','293','1','uszczelnienie pokrywy - metal + grafit');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('878','293','2','Уплотнение крышки - металлографит');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('879','293','3','Seal Bonnet - Metal + Graphit');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('880','294','1','korpus epoksydowany');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('881','294','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет фильтр от коррозии');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('882','294','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('883','295','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, para, glikol etc.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('884','295','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, пар, гликольные смеси и т.п.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('885','295','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('886','296','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('887','296','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('888','296','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('889','297','1','DN 32-1200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('890','297','2','DN 32-1200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('891','297','3','DN 32-1200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('892','298','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('893','298','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('894','298','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('895','299','1','od -25°C do +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('896','299','2','от -25°C до +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('897','299','3',':-25°C to +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('898','300','1',' +150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('899','300','2',' +150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('900','300','3',' +150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('901','301','1','KMS');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('902','301','2','KMS');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('903','301','3','KMS');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('904','302','1','do tłumienia wszelkiego rodzaju drgań, szumów, kompensowania przesunięć w instalacjach wodociągowych, c.o oraz innych przemysłowych.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('905','302','2','Компенсаторы предназначены для предотвращения передачи механических вибраций, гидроударов, шумов, расширений, в трубопроводных системах тепло и водоснабжения, пищевой, химической, и других областях промышленности.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('906','302','3','suitable to allow for expansion, contraction, lateral and angular movement of piping system. They are effective in absorbing the energy of water hammer, vibrations and reducing noise as well. ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('907','303','1','korpus - EPDM/NBR wzmocniony nylonem');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('908','303','2','Корпус - EPDM/NBR усиленный нейлоном');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('909','303','3','Body - EPDM/NBR reinforced with Nylon');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('910','304','1','kołnierze - stal przeciwkorozyjna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('911','304','2','Фланцы - сталь с коррозийным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('912','304','3','Flanges – Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('913','305','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol etc.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('914','305','2','Вода в системах холодного и горячего водоснабжения, отопления, моpская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('915','305','3','Water, Waste Water, Sea Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('916','306','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('917','306','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('918','306','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('919','307','1','DN 15-150');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('920','307','2','DN 15-150');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('921','307','3','DN 15-150');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('922','308','1','PN 16/25/40');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('923','308','2','PN 16/25/40');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('924','308','3','PN 16/25/40');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('925','309','1','od -40°C do +200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('926','309','2','от -40°C до +200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('927','309','3','-40°C to +200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('928','310','1','+200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('929','310','2','+200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('930','310','3','+200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('931','311','1','F3515');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('932','311','2','F3515');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('933','311','3','F3515');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('934','312','1','do odcinania dopływu mediów w instalacjach wody zimnej i gorącej, instalacjach ciepłowniczych oraz innych przemysłowych');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('935','312','2','Кран шаровый фланцевый предназначен для установки на магистральных трубопроводах и в системах городского и коммунального хозяйства в качестве запорного устройства.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('936','312','3','suitable to be used in various systems where the cut-off flow capability is required such as water service, H.V.A.C,  industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('937','313','1','korpus - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('938','313','2','Корпус - стальной, неразъемный');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('939','313','3','Body (dismantled) - Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('940','314','1','kula - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('941','314','2','Шаровая пробка - нержавеющая сталь');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('942','314','3','Ball – Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('943','315','1','rączka - stal');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('944','315','2','Запорный орган - пробка шаровая из стали');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('945','315','3','Handlever - Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('946','316','1','uszczelnienie - PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('947','316','2','Уплотнитель - PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('948','316','3','Seat – PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('949','317','1','farba epoksydowa');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('950','317','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет кран от коррозии');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('951','317','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('952','318','1','woda zimna i gorąca, woda morska, woda pitna, para, powietrze, glikol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('953','318','2','Вода в системах холодного и горячего водоснабжения, отопления, моpская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('954','318','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('955','319','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('956','319','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('957','319','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('958','320','1','DN 15-150');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('959','320','2','DN 15-150');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('960','320','3','DN 15-150');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('961','321','1','PN 16/25/40');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('962','321','2','PN 16/25/40');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('963','321','3','PN 16/25/40');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('964','322','1','od -40°C do +200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('965','322','2','от -40°C до +200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('966','322','3','-40°C to +200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('967','323','1','+200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('968','323','2','+200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('969','323','3','+200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('970','324','1','W3515');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('971','324','2','W3515');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('972','324','3','W3515');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('973','325','1','do odcinania dopływu mediów w instalacjach wodociągowych, instalacjach ciepłowniczych oraz innych przemysłowych');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('974','325','2','Кран шаровой приварной предназначен для установки на магистральных трубопроводах и в системах городского и коммунального хозяйства в качестве запорного устройства.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('975','325','3','suitable to be used in various systems where the cut-off flow capability is required such as water service, H.V.A.C,  industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('976','326','1','korpus - stal');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('977','326','2','Корпус - стальной, неразъемный');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('978','326','3','Body – Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('979','327','1','kula - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('980','327','2','Шаровая пробка - нержавеющая сталь');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('981','327','3','Body – Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('982','328','1','rączka - stal');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('983','328','2','Запорный орган - пробка шаровая');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('984','328','3','Handlever – Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('985','329','1','uszczelnienie - PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('986','329','2','Уплотнение - PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('987','329','3','Seat - PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('988','330','1','farba epoksydowa');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('989','330','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет кран от коррозии');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('990','330','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('991','331','1','woda zimna i gorąca, woda morska, woda pitna, para, powietrze, glikol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('992','331','2','Вода в системах холодного и горячего водоснабжения, отопления, моpская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('993','331','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('994','332','1','do wspawania');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('995','332','2','Приварное');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('996','332','3','Weld ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('997','333','1','DN 200-600');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('998','333','2','DN 200-600');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('999','333','3','DN 200-600');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1000','334','1','PN 16/25');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1001','334','2','PN 16/25');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1002','334','3','PN 16/25');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1003','335','1',' od -40°C do +200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1004','335','2','от -40°C до +200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1005','335','3',' -40°C to +200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1006','336','1','+200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1007','336','2','+200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1008','336','3','+200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1009','337','1','F3530');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1010','337','2','F3530');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1011','337','3','F3530');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1012','338','1','do odcinania dopływu mediów w instalacjach wodciagowych, instalacjach ciepłowniczych oraz innych przemysłowych. Przekładnie służą do sterowania kurków kulowych w których wymagany jest obrót trzpienia w zakresie 0-90Â° lub wielokrotny 360Â°');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1013','338','2','Краны шаровые с редуктором предназначены для установки на магистральных трубопроводах и в системах городского и коммунального хозяйства в качестве запорного устройства.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1014','338','3','suitable to be used in various systems where the cut-off flow capability is required such as water service, H.V.A.C,  industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1015','339','1','korpus - stal');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1016','339','2','Корпус - стальной, неразъемный');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1017','339','3','Body – Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1018','340','1','kula - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1019','340','2','Шаровая пробка - нержавеющая сталь');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1020','340','3','Ball – Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1021','341','1','uszczelnienie - PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1022','341','2','Уплотнение - PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1023','341','3','Seat - PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1024','342','1','farba epoksydowa');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1025','342','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет кран от коррозии');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1026','342','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1027','343','1','woda zimna i gorąca, woda morska, woda pitna, para, powietrze, glikol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1028','343','2','Вода в системах холодного и горячего водоснабжения, отопления, моpская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1029','343','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1030','344','1','do wspawania');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1031','344','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1032','344','3','Weld');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1033','345','1','z ręczną przekładnią ślimakową i wskaźnikiem otwarcia');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1034','345','2','Ручной штурвал-редуктор с индикатором открытия');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1035','345','3','Gearbox w/opening indicator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1036','346','1','DN 200-600');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1037','346','2','DN 200-600');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1038','346','3','DN 200-600');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1039','347','1','PN 16/25');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1040','347','2','PN 16/25');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1041','347','3','PN 16/25');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1042','348','1','od -40°C do +200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1043','348','2','от -40°C до +200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1044','348','3','od -40°C do +200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1045','349','1','+200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1046','349','2','+200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1047','349','3','+200°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1048','350','1','W3530');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1049','350','2','W3530');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1050','350','3','W3530');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1051','351','1','do odcinania dopływu mediów w instalacjach wodociągowych, instalacjach ciepłowniczych oraz innych przemysłowych. Przekładnie służą do sterowania kurków kulowych w których wymagany jest obrót trzpienia w zakresie 0-90Â° lub wielokrotny 360Â°');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1052','351','2','Кран шаровый с редуктором предназначен для установки на магистральных трубопроводах и в системах городского и коммунального хозяйства в качестве запорного устройства.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1053','351','3','suitable to be used in various systems where the cut-off flow capability is required such as water service, H.V.A.C,  industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1054','352','1','korpus - stal');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1055','352','2','Корпус - стальной, неразъемный');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1056','352','3','Body - Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1057','353','1','kula - stal nierdzewna');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1058','353','2','Шаровая пробка - нержавеющая сталь');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1059','353','3','Ball – Stainless Steel ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1060','354','1','uszczelnienie - PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1061','354','2','Уплотнение - PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1062','354','3','Seat - PTFE');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1063','355','1','farba epoksydowa');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1064','355','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет кран от коррозии');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1065','355','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1066','356','1','woda zimna i gorąca, woda morska, woda pitna, para, powietrze, glikol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1067','356','2','Вода в системах холодного и горячего водоснабжения, отопления, моpская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1068','356','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1069','357','1','do wspawania');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1070','357','2','Приварное');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1071','357','3','Weld');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1072','358','1','z ręczną przekładnią ślimakową i wskaźnikiem otwarcia');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1073','358','2','Ручной штурвал-редуктор с индикатором открытия');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1074','358','3','Gearbox w/ opening indicator');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1075','359','1','DN 40-2000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1076','359','2','DN 40-2000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1077','359','3','DN 40-2000');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1078','360','1',' od -30°C do +50°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1079','360','2','от -30°C до +50°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1080','360','3',' -30°C to +50°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1081','361','1','Qt');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1082','361','2','Qt');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1083','361','3','Qt');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1084','362','1','napędy serii QT stosowane są wszędzie tam, gdzie konieczne jest zautomatyzowanie procesów za pomocą ruchu niepełnoobrotowego, jak np. na przepustnicach czy zaworach kulowych. Możliwe jest dopasowanie napędu do wymagań prawie każdego zadania w zakresie automatyzacji.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1085','362','2','Электроприводы серии QT предназначены для дистанционного или местного управления трубопроводной запорно-регулирующей арматурой требующей поворота запорного органа в пределах 90°.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1086','362','3','used to provide a reliable position control of gate, stop valves as well as similar devices');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1087','363','1',' korpus - aluminium');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1088','363','2','Корпус - выполнен из аллюминия окрашенного антикоррозийным полимерным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1089','363','3',' Body – Aluminium');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1090','364','1',' kołnierze do zamontowania. Specjalne warianty wykonania na zapytanie');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1091','364','2','Присоединительные фланцы - для установки на арматуру, выполнены в соответствии с DIN EN ISO 5211 (по запросу возможны специальные исполнения)');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1092','364','3','Flanges ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1093','365','1','powłoka przeciwkorozyjna ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1094','365','2','Корпус окрашен высококачественным антикоррозийным полимерным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1095','365','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1096','366','1','ćwierćobrotowy (kąt obrotu 90°) ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1097','366','2','Четвертьоборотный (поворот на 90°)');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1098','366','3','quarter – turn (turn angle 90°), “clockwise closing” only ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1099','367','1','');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1100','367','2','Приводы серии QT , включая приводы со встроенными средствами управления, могут работать без ограничения в любом монтажном положении');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1101','367','3','');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1102','368','1','jednofazowe 220V ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1103','368','2','однофазное 220V');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1104','368','3','1-phased 220VAC');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1105','369','1','trójfazowe 380V');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1106','369','2','трехфазное 380V');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1107','369','3','3-phased 380VAC');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1108','370','1','od -30°C do +50°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1109','370','2','от -30°C до +50°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1110','370','3','-30°C to +50°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1111','371','1','Mt');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1112','371','2','Mt');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1113','371','3','Mt');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1114','372','1','napędy serii MT są stosowane do automatyzacji armatury zaporowej(m.in. zasuw i zaworów kulowych) gdzie kąt obrotu elementu zaporowego przekracza 360°');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1115','372','2','Электроприводы серии MT предназначены для дистанционного или местного управления трубопроводной запорно-регулирующей арматурой требующей поворота запорного органа более 360°.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1116','372','3','used to provide a reliable position control of gate, stop valves as well as similar devices');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1117','373','1',' korpus - aluminium, epoksydowany ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1118','373','2','Корпус - выполнен из аллюминия окрашенного антикоррозийным полимерным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1119','373','3','Body – Aluminium');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1120','374','1','powłoka przeciwkorozyjna ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1121','374','2','Корпус окрашен высококачественным антикоррозийным полимерным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1122','374','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1123','375','1','wieloobrotowy (kąt obrotu > 360°) ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1124','375','2','Многооборотный (поворот на 360°)');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1125','375','3','rotary (rotation angle exceeds 360°)');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1126','376','1','jednofazowe 220V ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1127','376','2','однофазное 220V');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1128','376','3','1-phased 220VAC');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1129','377','1','trójfazowe 380V');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1130','377','2','трехфазное 380V');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1131','377','3','3-phased 380VAC');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1132','378','1','DN 40-300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1133','378','2','DN 40-300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1134','378','3','DN 40-300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1135','379','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1136','379','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1137','379','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1138','380','1','od -20°C dо +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1139','380','2','от -20°C до +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1140','380','3','-20°C tо +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1141','381','1','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1142','381','2','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1143','381','3','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1144','382','1','FA-U13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1145','382','2','FA-U13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1146','382','3','FA-U13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1147','383','1','do łączenia rur (żeliwnych, stalowych, PVC, cementowo-azbestowych) z kołnierzem armatury wodociągowej.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1148','383','2','Обжимной фланец универсальный применяется для соединения чугунных (СЧ и ВЧШГ), стальных, ПВХ, асбестоцементных труб с фланцевой арматурой');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1149','383','3','used to connect plain ends of cast iron, steel, PVC, asbestos-cement pipes to valve''s flange.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1150','384','1',' korpus - żeliwo sferoidalne ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1151','384','2','Корпус - чугун GGG50 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1152','384','3','Body - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1153','385','1','uszczelka - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1154','385','2','Уплотнение - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1155','385','3','Seat - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1156','386','1','woda zimna i gorąca, woda morska, woda pitna, powietrze, glikol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1157','386','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1158','386','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1159','387','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1160','387','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1161','387','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1162','388','1','DN 50-600');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1163','388','2','DN 50-600');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1164','388','3','DN 50-600');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1165','389','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1166','389','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1167','389','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1168','390','1','od -25°C dо +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1169','390','2','от -20°C до +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1170','390','3',' -20°C tо +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1171','391','1','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1172','391','2','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1173','391','3','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1174','392','1','FA-R13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1175','392','2','FA-R13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1176','392','3','FA-R13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1177','393','1','do łączenia rur PE, PVC z kołnierzem armatury wodociągowej.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1178','393','2','Применяется для соединения ПЭ труб с фланцевой арматурой.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1179','393','3','used to connect PE pipes to valve''s flange');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1180','394','1','korpus - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1181','394','2','Корпус - чугун GGG50 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1182','394','3','Body - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1183','395','1','uszczelka - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1184','395','2','Уплотнение - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1185','395','3','Seat - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1186','396','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1187','396','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1188','396','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1189','397','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1190','397','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1191','397','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1192','398','1',' DN 50-400');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1193','398','2',' DN 40-600');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1194','398','3',' DN 40-600');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1195','399','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1196','399','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1197','399','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1198','400','1','od -25°C dо +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1199','400','2','от -20°C до +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1200','400','3','-20°C tо +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1201','401','1','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1202','401','2','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1203','401','3','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1204','402','1','RC-U13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1205','402','2','RC-U13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1206','402','3','RC-U13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1207','403','1','do łączenia rur (żeliwnych, stalowych, PVC, cementowo-azbestowych) z kołnierzem armatury wodociągowej.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1208','403','2','Соединительная муфта универсальная применяется для соединения чугунных (СЧ и ВЧШГ), стальных, ПВХ, асбестоцементных труб между собой.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1209','403','3','used to connect cast iron, steel, PVC, asbestos-cement pipes to valve''s  flange');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1210','404','1','korpus - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1211','404','2','Корпус - чугун GGG50 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1212','404','3','Body - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1213','405','1','uszczelka - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1214','405','2','Уплотнение - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1215','405','3','Seat - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1216','406','1','woda, powietrze, ciecze nieagresywne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1217','406','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1218','406','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1222','408','1','DN 50-400');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1223','408','2','DN 40-400');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1224','408','3','DN 40-400');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1225','409','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1226','409','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1227','409','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1228','410','1','od -25°C dо +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1229','410','2','от -20°C до +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1230','410','3','-20°C tо +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1231','411','1','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1232','411','2','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1233','411','3','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1234','412','1','FA-Q13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1235','412','2','FA-Q13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1236','412','3','FA-Q13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1237','413','1','do łączenia rur PE, PVC z kołnierzem armatury wodociągowej.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1238','413','2','Фланцевый адаптер применяется для соединения ПЭ и ПВХ труб с фланцевой арматурой.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1239','413','3','used to connect PE, PVC pipes to valve’s  flange.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1240','414','1','korpus - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1241','414','2','Корпус - чугун GGG50 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1242','414','3','Body - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1243','415','1','uszczelka - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1244','415','2','Уплотнение - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1245','415','3','Seat - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1246','416','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1247','416','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1248','416','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1249','417','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1250','417','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1251','417','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1252','418','1','z uszczelnieniem gumowym');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1253','418','2','Резиновое уплотнение');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1254','418','3','');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1255','419','1','DN 63-630');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1256','419','2','DN 50-630');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1257','419','3','DN 50-630');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1258','420','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1259','420','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1260','420','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1261','421','1','od -25°C dо +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1262','421','2','от -20°C до +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1263','421','3','od -20°C tо +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1264','422','1','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1265','422','2','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1266','422','3','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1267','423','1','RC-R13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1268','423','2','RC-R13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1269','423','3','RC-R13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1270','424','1','do łączenia rur PE, PVC z kołnierzem armatury wodociągowej.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1271','424','2','Соединительная муфта фиксирующая применяется для соединения ПЭ труб между собой.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1272','424','3','used to connect PE, PVC pipes ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1273','425','1','korpus - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1274','425','2','Корпус - чугун GGG50 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1275','425','3','Body - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1276','426','1','uszczelka - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1277','426','2','Уплотнение - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1278','426','3','Seat - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1279','427','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1280','427','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1281','427','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1282','428','1','DN 50-1200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1283','428','2','DN 50-1200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1284','428','3','DN 50-1200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1285','429','1','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1286','429','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1287','429','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1288','430','1','od -25°C dо +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1289','430','2','от -25°C до +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1290','430','3','-25°C tо +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1291','431','1','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1292','431','2','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1293','431','3','+80°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1294','432','1','PR-U13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1295','432','2','PR-U13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1296','432','3','PR-U13');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1297','433','1','do łączenia rur z kołnierzem armatury wodociągowej takiej jak  przepustnice, zasuwy, zawory itd.  ');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1298','433','2','Демонтажная вставка используется для удобства монтажа затворов, задвижек, клапанов обратных и пр. Обеспечивает компенсацию осевого смещения.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1299','433','3','used to provide offset, deflection and restraint for systems with misaligned flanges.
');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1300','434','1','korpus - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1301','434','2','Корпус - чугун GGG50 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1302','434','3','Body - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1303','435','1','uszczelka - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1304','435','2','Уплотнение - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1305','435','3','Seat - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1306','436','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1307','436','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1308','436','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1309','437','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1310','437','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1311','437','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1312','438','1','DN 50-300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1313','438','2','DN 50-200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1314','438','3','DN 50-200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1315','439','1','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1316','439','2','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1317','439','3','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1318','440','1','od -10°C do +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1319','440','2','от -10°C до +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1320','440','3','od -10°C do +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1321','441','1','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1322','441','2','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1323','441','3','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1324','442','1','do zmiany kierunku przepływu czynnika roboczego w instalacjach wodociągowych, ciepłowniczych, spożywczych oraz innych przemysłowych');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1325','442','2','Колено фланцевое чугунное используется в качестве соединительных деталей трубопровода, предназначенных для изменения направления потока среды в трубопроводных системах тепло и водоснабжения, пищевой, химической, и других областях промышленности.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1326','442','3','used in pipeline networks to transport two-phase fluid mixtures');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1327','443','1','korpus - żeliwo');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1328','443','2','Корпус - литой, выполнен из чугуна');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1329','443','3','Body(tight) - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1330','444','1','farba epoksydowa');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1331','444','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет колено от коррозии');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1332','444','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1333','445','1','woda zimna i gorąca, woda morska, woda pitna, powietrze, glikol, substancje mało agresywne, ciecze oleiste, ścieki');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1334','445','2','Вода в системах холодного и горячего водоснабжения, питьевая вода, морская вода, воздух, гликольные смеси, слабоагрессивные среды, вязкие среды, строчные воды');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1335','445','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1336','446','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1337','446','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1338','446','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1339','447','1','DN 65/50 - 200/150');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1340','447','2','DN 65/50 - 200/150');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1341','447','3','DN 65/50 - 200/150');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1342','448','1','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1343','448','2','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1344','448','3','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1345','449','1','od -10°C do +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1346','449','2','от -10°C до +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1347','449','3',' -10°C to +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1348','450','1','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1349','450','2','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1350','450','3','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1351','451','1','do zredukowania średnicy przewodu w instalacjach wodociągowych, ciepłowniczych, spożywczych oraz innych przemysłowych');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1352','451','2','Переход чугунный фланцевый используется в качестве соединительной детали трубопровода, предназначенной для соединения труб двух различных диаметров трубопроводных систем тепло и водоснабжения, пищевой, химической, и других областях промышленности.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1353','451','3','installed in drinking water instalations or other pipelines for wastewater or other neutral mediums');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1354','452','1','korpus - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1355','452','2','Корпус - литой, выполнен из чугуна');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1356','452','3','Body(tight) - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1357','453','1','farba epoksydowa');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1358','453','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет переход от коррозии');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1359','453','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1360','454','1','woda zimna i gorąca, woda morska, woda pitna, powietrze, glikol, substancje mało agresywne, ciecze oleiste, ścieki');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1361','454','2','Вода в системах холодного и горячего водоснабжения, питьевая вода, морская вода, воздух, гликольные смеси, слабоагрессивные среды, вязкие среды, строчные воды');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1362','454','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1363','455','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1364','455','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1365','455','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1366','456','1','DN 50/50 - 300/300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1367','456','2','DN 50/50 - 300/300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1368','456','3','DN 50/50 - 300/300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1369','457','1','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1370','457','2','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1371','457','3','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1372','458','1','od -10°C do +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1373','458','2','от -10°C до +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1374','458','3','-10°C to +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1375','459','1','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1376','459','2','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1377','459','3','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1378','460','1','do rozgałęzienia przewodu rurowego oraz do zamontowania armatury na sieci wodociągowej.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1379','460','2','Тройник фланцевый чугунный используется в качестве соединительной детали трубопровода, позволяющей подключать к основной трубе дополнительные ответвления трубопроводных систем тепло и водоснабжения, пищевой, химической, и других областях промышленности.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1380','460','3','used for connecting pipes or split the flow');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1381','461','1','korpus - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1382','461','2','Корпус - литой, выполнен из чугуна');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1383','461','3','Body(tight) - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1384','462','1','korpus epoksydowany pozwala na długotrwałą eksploatację urządzenia');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1385','462','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет тройник от коррозии');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1386','462','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1387','463','1','wody zimna i gorąca, woda morska, woda pitna, powietrze, glikol, substancje mało agresywne, ciecze oleiste, ścieki');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1388','463','2','Вода в системах холодного и горячего водоснабжения, питьевая вода, морская вода, воздух, гликольные смеси, слабоагрессивные среды, вязкие среды, строчные воды');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1389','463','3','Fresh Water, Sea Water, Potable Water, Air, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1390','464','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1391','464','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1392','464','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1393','465','1','DN 100-200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1394','465','2','DN 100-200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1395','465','3','DN 100-200');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1396','466','1','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1397','466','2','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1398','466','3','PN 10');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1399','467','1','od -10°C do +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1400','467','2','от -10°C до +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1401','467','3','-10°C to +70°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1402','468','1','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1403','468','2','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1404','468','3','+110°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1405','469','1','do rozgałęzienia przewodu rurowego oraz do zamontowania armatury na sieci wodociągowej.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1406','469','2','Крест фланцевый чугунный используется в качестве соединительных деталей трубопровода, предназначенных для изменения направления потока среды в трубопроводных системах тепло и водоснабжения, пищевой, химической, и других областях промышленности.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1407','469','3','used to connect pipes or split the flow in pipeline networks');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1408','470','1','korpus - zwarty, żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1409','470','2','Корпус - литой, выполнен из чугуна');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1410','470','3','Body(tight) - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1411','471','1','kadłub epoksydowany pozwala na długotrwałą eksploatację urządzenia');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1412','471','2','Корпус окрашен долговечным эпоксидным полимерным составом, который предохраняет колено от коррозии');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1413','471','3','Corrosion Protective Epoxy Coating');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1414','472','1','wody zimna i gorąca, woda morska, woda pitna, powietrze, glikol, substancje mało agresywne, ciecze oleiste, ścieki');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1415','472','2','Вода в системах холодного и горячего водоснабжения, питьевая вода, морская вода, воздух, гликольные смеси, слабоагрессивные среды, вязкие среды, строчные воды');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1416','472','3','Fresh Water, Sea Water, Potable Water, Air, Steam, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1417','473','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1418','473','2','Фланцевое');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1419','473','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1420','474','1','DN 40-300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1421','474','2','DN 40-300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1422','474','3','DN 40-300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1423','475','1','woda zimna i gorąca, woda morska, woda pitna, powietrze, glikol, substancje mało agresywne, ciecze oleiste, ścieki');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1424','475','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1425','475','3','Fresh Water, Sea Water, Potable Water, Air, Steam, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1426','476','1','OD 75-336');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1427','476','2','OD 75-336');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1428','476','3','OD 75-336');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1429','477','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1430','477','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1431','477','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1432','478','1','оd -25°C dо +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1433','478','2','от -25°C до +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1434','478','3','-25°C tо +130°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1435','479','1','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1436','479','2','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1437','479','3','+150°C');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1438','480','1','RC-Z17');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1439','480','2','RC-Z17');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1440','480','3','RC-Z17');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1441','481','1','do naprawy instalacji wodociągowych, kanalizacyjnych, gazowych i ciepłowniczych');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1442','481','2','Ремонтная муфта (однозамковая) предназначена для ремонта чугунных, стальных, ПВХ или ПЭ труб в системах водоснабжения, водоотведения и отопления. Применяется для устранения протечек трубопровода из-за трещин, отверстий, разрывов');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1443','481','3','used to repair all kinds of leakage in iron, steel, PVC, PE pipes in waterworks, H.V.A.C, industrial installations');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1444','482','1','korpus - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1445','482','2','Корпус - нержавеющая стать');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1446','482','3','Body – Stainless Steel');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1447','483','1','klamra - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1448','483','2','Замок - ковкий чугун (GGG50)');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1449','483','3','Clamp - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1450','484','1',' uszczelnienie - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1451','484','2','Уплотнение - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1452','484','3','Seat - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1453','485','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol itd.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1454','485','2','Вода, воздух, неагрессивные жидкости');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1455','485','3','Fresh Water, Air, Nonaggressive Fluids');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1456','486','1','DN 50-350');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1457','486','2','DN 50-350');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1458','486','3','DN 50-350');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1459','487','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1460','487','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1461','487','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1462','488','1','do odprowadzania zgromadzonego powietrza w instalacjach wodociagowych');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1463','488','2','Воздухоотводчик однокамерный A10F применяется для отвода воздуха из мест его скопления');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1464','488','3','used to release air pockets that collect at each high point of a full pressured pipeline.');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1465','489','1','korpus - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1466','489','2','Корпус - чугун GJS500 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1467','489','3','Body - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1468','490','1','uszczelnienie - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1469','490','2','Уплотнение - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1470','490','3','Seat - EPDM');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1471','491','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1472','491','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1473','491','3','Fresh Water, Sea Water, Potable Water, Air, Steam, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1474','492','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1475','492','2','Фланцевый');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1476','492','3','Flanged');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1477','493','1','A10F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1478','493','2','A10F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1479','493','3','A10F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1480','494','1','DN 40-300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1481','494','2','DN 40-300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1482','494','3','DN 40-300');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1483','495','1','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1484','495','2','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1485','495','3','PN 16');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1486','496','1','A20F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1487','496','2','A20F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1488','496','3','A20F');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1489','497','1','do odprowadzania zgromadzonego powietrza w instalacjach wodociągowych');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1490','497','2','Воздухоотводчик двухкамерный A20F применяется для отвода воздуха из мест его скопления');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1491','497','3','used to release air pockets that collect at each high point of a full pressured pipeline');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1492','498','1','Korpus - żeliwo sferoidalne');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1493','498','2','Корпус - чугун GGG50 с термообработанным эпоксидным покрытием');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1494','498','3','Body - Cast Ductile Iron');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1495','499','1','woda zimna i gorąca, woda pitna, woda morska, powietrze, glikol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1496','499','2','Вода в системах холодного и горячего водоснабжения, отопления, морская вода, питьевая вода, воздух, гликольные смеси');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1497','499','3','Fresh Water, Sea Water, Potable Water, Air, Steam, Glykol');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1498','500','1','kołnierzowe');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1499','500','2','Фланцевый');
INSERT INTO "PropertyValueTranslate" ("id","object_id","language_id","value") VALUES ('1500','500','3','Flanged');

----
-- Table structure for slider_translates
----
CREATE TABLE "slider_translates" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "object_id" integer NOT NULL,
  "language_id" integer NOT NULL,
  "name" text NULL DEFAULT '',
  "text" text NULL DEFAULT ''
);

----
-- Data dump for slider_translates, a total of 9 rows
----
INSERT INTO "slider_translates" ("id","object_id","language_id","name","text") VALUES ('1','1','1','Przepustnice zwrotne','Oferujemy przepustnice zwrotne wyprodukowane ze stali, żeliwa sferoidalnego, PVC. Kołnierzowe, bezkołnierzowe, do wspawania, mimośrodowe w zakresie średnic DN – od 32 do 2000.');
INSERT INTO "slider_translates" ("id","object_id","language_id","name","text") VALUES ('2','1','2','Дисковые поворотные затворы','Мы предлагаем дисковые поворотные затворы промышленного производства из стали, ковкого чугуна, ПВХ, фланцевые, межфланцевые, приварные, с эксцентриситетом, размером DN от 32 до 2000');
INSERT INTO "slider_translates" ("id","object_id","language_id","name","text") VALUES ('3','1','3','Butterfly valves','We offer Butterfly valves industrial production of steel, ductile iron, PVC, flange, flanged, welded, with eccentricity, size DN 32 to 2000.');
INSERT INTO "slider_translates" ("id","object_id","language_id","name","text") VALUES ('4','2','1','Zasuwy klinowe z uszczelnieniem gumowym','Oferujemy zasuwy klinowe z uszczelnieniem gumowym wykonane z żeliwa sferoidalnego i stali,  pod napęd,  z trzpieniem wznoszącym  z przekładnią, pod kółko i obudowę  w szerokim zakresie wymiarów i ciśnień. ');
INSERT INTO "slider_translates" ("id","object_id","language_id","name","text") VALUES ('5','2','2','Задвижки с обрезиненным клином','Мы предлагаем клиновые задвижки выполненные из чугуна и стали, под электропривод, с выдвижным штоком и редуктором, разнообразных размеров и под разное давление.');
INSERT INTO "slider_translates" ("id","object_id","language_id","name","text") VALUES ('6','2','3','Valves with rubber-wedge','We offer gate valves made of cast iron and steel for electric, rising stem and gear, a variety of sizes and under different pressures.');
INSERT INTO "slider_translates" ("id","object_id","language_id","name","text") VALUES ('7','3','1','zawory elektromagnetyczne','Oferujemy zawory elektromagnetyczne bezpośredniego działania i z serwosterowaniem,  do pary, i spirytusu,  o różnych materiałach uszczelnień które odpowiadają międzynarodowym standardom klasy ochrony.');
INSERT INTO "slider_translates" ("id","object_id","language_id","name","text") VALUES ('8','3','2','Клапаны электромагнитные','Oferujemy zawory elektromagnetyczne bezpośredniego działania i z serwosterowaniem,  do pary, i spirytusu,  o różnych materiałach uszczelnień które odpowiadają międzynarodowym standardom klasy ochrony.');
INSERT INTO "slider_translates" ("id","object_id","language_id","name","text") VALUES ('9','3','3','zawory elektromagnetyczne','Oferujemy zawory elektromagnetyczne bezpośredniego działania i z serwosterowaniem,  do pary, i spirytusu,  o różnych materiałach uszczelnień które odpowiadają międzynarodowym standardom klasy ochrony.');

----
-- Table structure for NewsTranslate
----
CREATE TABLE "NewsTranslate" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "object_id" integer NOT NULL,
  "language_id" integer NOT NULL,
  "title" text NULL DEFAULT '',
  "short_description" text NULL DEFAULT '',
  "full_description" text NULL DEFAULT '',
  "meta_title" text NULL DEFAULT '',
  "meta_keywords" text NULL DEFAULT '',
  "meta_description" text NULL DEFAULT ''
);

----
-- Data dump for NewsTranslate, a total of 30 rows
----
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('1','1','1','Międzynarodowe Targi "Aqua-Therm" w Sankt Petersburgu','Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu...','<p>Firma Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu.</p>

<p>Podczas targów firma zaprezentowała swoją nową produkcję oraz udoskonalone wersje urządzeń do instalacji i przemysłu. Mamy nadzieję, że udzielona przez naszych specjalistów informacja była wystarczająca. Zawsze jesteśmy do Państwa dyspozycji!</p>

<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko w Centrum Wystawienniczym „LENEXPO”!</p>
','Międzynarodowe Targi "Aqua-Therm" w Sankt Petersburgu','','Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, K');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('2','1','2','Międzynarodowe Targi "Aqua-Therm" w Sankt Petersburgu','Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu...','<p>Firma Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu.</p>

<p>Podczas targów firma zaprezentowała swoją nową produkcję oraz udoskonalone wersje urządzeń do instalacji i przemysłu. Mamy nadzieję, że udzielona przez naszych specjalistów informacja była wystarczająca. Zawsze jesteśmy do Państwa dyspozycji!</p>

<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko w Centrum Wystawienniczym „LENEXPO”!</p>
','Międzynarodowe Targi "Aqua-Therm" w Sankt Petersburgu','','Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, K');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('3','1','3','Międzynarodowe Targi "Aqua-Therm" w Sankt Petersburgu','Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu...','<p>Firma Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, Klimatyzacyjnych, Wentylacyjnych oraz urządzeń do basenów „Aqua-Therm St.Petersburg 2014” w dniach 09-12 kwietnia 2014 r. w Sankt Petersburgu.</p>

<p>Podczas targów firma zaprezentowała swoją nową produkcję oraz udoskonalone wersje urządzeń do instalacji i przemysłu. Mamy nadzieję, że udzielona przez naszych specjalistów informacja była wystarczająca. Zawsze jesteśmy do Państwa dyspozycji!</p>

<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko w Centrum Wystawienniczym „LENEXPO”!</p>
','Międzynarodowe Targi "Aqua-Therm" w Sankt Petersburgu','','Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Systemów Cieplnych, Wodociągowych, Sanitarnych, K');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('4','2','1','Targi WOD-KAN 20-22 maja 2014 r.','Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek)...','<p>Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek).</p>

<p>Była to dla nas doskonała okazja do zaprezentowania oferty handlowo-produkcyjnej firmy. Sądzimy, że zapoznanie się z naszą produkcja pozwoliło Państwu w pełni ocenić jej walory.</p>

<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko i zapraszamy do współpracy!</p>
','Targi WOD-KAN 20-22 maja 2014 r.','','Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do w');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('5','2','2','Targi WOD-KAN 20-22 maja 2014 r.','Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek)...','<p>Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek).</p>

<p>Była to dla nas doskonała okazja do zaprezentowania oferty handlowo-produkcyjnej firmy. Sądzimy, że zapoznanie się z naszą produkcja pozwoliło Państwu w pełni ocenić jej walory.</p>

<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko i zapraszamy do współpracy!</p>
','Targi WOD-KAN 20-22 maja 2014 r.','','Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do w');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('6','2','3','Targi WOD-KAN 20-22 maja 2014 r.','Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek)...','<p>Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do wodociągu i kanalizacji WOD-KAN 2014 w dniach 20-22 maja 2014 r (na terenie wystawienniczym Bydgoszcz Myślęcinek).</p>

<p>Była to dla nas doskonała okazja do zaprezentowania oferty handlowo-produkcyjnej firmy. Sądzimy, że zapoznanie się z naszą produkcja pozwoliło Państwu w pełni ocenić jej walory.</p>

<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko i zapraszamy do współpracy!</p>
','Targi WOD-KAN 20-22 maja 2014 r.','','Firma Dendor Valve Industrial po raz pierwszy wzięła udział w XXII Międzynarodowych Targach Maszyn i Urządzeń do w');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('7','3','1','Zasada działania zaworów elektromagnetycznych','Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu...','<p>Zawór elektromagnetyczny jest to zawór sterowany elektrycznie, najczęściej przepływem prądu.</p>

<p>W załezności od przenoszonych przepływów najczęściej wyróżnia się: zawory bezpośredniego działania i zawory z serwosterowaniem.</p>

<p>W zaworach bezpośredniego działania podanie napięcia na cewkę powoduje wytworzenie pola elektromagnetycznego. Pole to wymusza ruch trzpienia (to właśnie on otwiera lub zamyka przelot zaworu). W przypadku braku zasilania, trzpień za pomocą sprężyny zwrotnej wraca do pozycji wyjściowej. Przy większych średnicach wzrasta ciśnienie statyczne, które oddziałuje na element zamykający i do otwarcia zaworu wymagana jest większa siła. W takich sytuacjach stosuje się drugi typ zaworów - zawory elektromagnetyczne z serwosterowaniem. W zaworach tego typu elementem zamykającym i otwierającym przelot jest specjalna membrana – za pomocą sprężyny jest ona dociskana do gniazda zaworu. W środku membrany znajduje się niewielki otwór, który wyrównuje ciśnienie. W sytuacji równowagi ciśnień siła działania sprężyny jest wystarczająca do zamknięcia zaworu, nawet przy dużym ciśnieniu na jego wejściu. Podanie napięcia na cewkę powoduje ruch trzpienia i otwarcie kanalika, który łączy przestrzeń nad membraną z wejściem zaworu.</p>

<p>Dzięki różnicy ciśnień następuje całkowite otwarcie zaworu i przepływ medium. W przypadku braku napięcia następuje odwrotny ruch trzpienia, zamknięcie kanalika i wyrównanie ciśnień po obydwu stronach membrany. Sprężyna powoduje dociśnięcie membrany do gniazda i zamknięcie zaworu. Poprawne działanie tego typu zaworów jest możliwe przy zachowaniu pewnej minimalnej różnicy ciśnień między wlotem a wylotem, określonej w danych technicznych.</p>

<p>Zawory elektromagnetyczne dostępne są tak w wersji normalnie otwartej (NO) jak i normalnie zamkniętej (NZ).</p>
','Zasada działania zaworów elektromagnetycznych','','Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('8','3','2','Zasada działania zaworów elektromagnetycznych','Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu...','<p>Zawór elektromagnetyczny jest to zawór sterowany elektrycznie, najczęściej przepływem prądu.</p>

<p>W załezności od przenoszonych przepływów najczęściej wyróżnia się: zawory bezpośredniego działania i zawory z serwosterowaniem.</p>

<p>W zaworach bezpośredniego działania podanie napięcia na cewkę powoduje wytworzenie pola elektromagnetycznego. Pole to wymusza ruch trzpienia (to właśnie on otwiera lub zamyka przelot zaworu). W przypadku braku zasilania, trzpień za pomocą sprężyny zwrotnej wraca do pozycji wyjściowej. Przy większych średnicach wzrasta ciśnienie statyczne, które oddziałuje na element zamykający i do otwarcia zaworu wymagana jest większa siła. W takich sytuacjach stosuje się drugi typ zaworów - zawory elektromagnetyczne z serwosterowaniem. W zaworach tego typu elementem zamykającym i otwierającym przelot jest specjalna membrana – za pomocą sprężyny jest ona dociskana do gniazda zaworu. W środku membrany znajduje się niewielki otwór, który wyrównuje ciśnienie. W sytuacji równowagi ciśnień siła działania sprężyny jest wystarczająca do zamknięcia zaworu, nawet przy dużym ciśnieniu na jego wejściu. Podanie napięcia na cewkę powoduje ruch trzpienia i otwarcie kanalika, który łączy przestrzeń nad membraną z wejściem zaworu.</p>

<p>Dzięki różnicy ciśnień następuje całkowite otwarcie zaworu i przepływ medium. W przypadku braku napięcia następuje odwrotny ruch trzpienia, zamknięcie kanalika i wyrównanie ciśnień po obydwu stronach membrany. Sprężyna powoduje dociśnięcie membrany do gniazda i zamknięcie zaworu. Poprawne działanie tego typu zaworów jest możliwe przy zachowaniu pewnej minimalnej różnicy ciśnień między wlotem a wylotem, określonej w danych technicznych.</p>

<p>Zawory elektromagnetyczne dostępne są tak w wersji normalnie otwartej (NO) jak i normalnie zamkniętej (NZ).</p>
','Zasada działania zaworów elektromagnetycznych','','Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('9','3','3','Zasada działania zaworów elektromagnetycznych','Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu...','<p>Zawór elektromagnetyczny jest to zawór sterowany elektrycznie, najczęściej przepływem prądu.</p>

<p>W załezności od przenoszonych przepływów najczęściej wyróżnia się: zawory bezpośredniego działania i zawory z serwosterowaniem.</p>

<p>W zaworach bezpośredniego działania podanie napięcia na cewkę powoduje wytworzenie pola elektromagnetycznego. Pole to wymusza ruch trzpienia (to właśnie on otwiera lub zamyka przelot zaworu). W przypadku braku zasilania, trzpień za pomocą sprężyny zwrotnej wraca do pozycji wyjściowej. Przy większych średnicach wzrasta ciśnienie statyczne, które oddziałuje na element zamykający i do otwarcia zaworu wymagana jest większa siła. W takich sytuacjach stosuje się drugi typ zaworów - zawory elektromagnetyczne z serwosterowaniem. W zaworach tego typu elementem zamykającym i otwierającym przelot jest specjalna membrana – za pomocą sprężyny jest ona dociskana do gniazda zaworu. W środku membrany znajduje się niewielki otwór, który wyrównuje ciśnienie. W sytuacji równowagi ciśnień siła działania sprężyny jest wystarczająca do zamknięcia zaworu, nawet przy dużym ciśnieniu na jego wejściu. Podanie napięcia na cewkę powoduje ruch trzpienia i otwarcie kanalika, który łączy przestrzeń nad membraną z wejściem zaworu.</p>

<p>Dzięki różnicy ciśnień następuje całkowite otwarcie zaworu i przepływ medium. W przypadku braku napięcia następuje odwrotny ruch trzpienia, zamknięcie kanalika i wyrównanie ciśnień po obydwu stronach membrany. Sprężyna powoduje dociśnięcie membrany do gniazda i zamknięcie zaworu. Poprawne działanie tego typu zaworów jest możliwe przy zachowaniu pewnej minimalnej różnicy ciśnień między wlotem a wylotem, określonej w danych technicznych.</p>

<p>Zawory elektromagnetyczne dostępne są tak w wersji normalnie otwartej (NO) jak i normalnie zamkniętej (NZ).</p>
','Zasada działania zaworów elektromagnetycznych','','Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('10','4','1','Międzynarodowe Targi "EKWATEK 2014" w Moskwie','Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-06 czerwca 2014r. w ramach 11-go Międzynarodowego Forum EKWATEK w Moskwie...','<p>Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-06 czerwca 2014r. w ramach 11-go Międzynarodowego Forum EKWATEK w Moskwie.</p>

<p>Na stoisku firmy mogli Państwo zapoznać się z nowościami oraz udoskonalonymi wersjami naszych produktów. Mamy nadzieję, że udzielona przez naszych specjalistów informacja była wyczerpująca.</p>

<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko!</p>
','Międzynarodowe Targi "EKWATEK 2014" w Moskwie','','Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('11','4','2','Międzynarodowe Targi "EKWATEK 2014" w Moskwie','Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-06 czerwca 2014r. w ramach 11-go Międzynarodowego Forum EKWATEK w Moskwie...','<p>Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-06 czerwca 2014r. w ramach 11-go Międzynarodowego Forum EKWATEK w Moskwie.</p>

<p>Na stoisku firmy mogli Państwo zapoznać się z nowościami oraz udoskonalonymi wersjami naszych produktów. Mamy nadzieję, że udzielona przez naszych specjalistów informacja była wyczerpująca.</p>

<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko!</p>
','Międzynarodowe Targi "EKWATEK 2014" w Moskwie','','Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('12','4','3','Międzynarodowe Targi "EKWATEK 2014" w Moskwie','Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-06 czerwca 2014r. w ramach 11-go Międzynarodowego Forum EKWATEK w Moskwie...','<p>Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-06 czerwca 2014r. w ramach 11-go Międzynarodowego Forum EKWATEK w Moskwie.</p>

<p>Na stoisku firmy mogli Państwo zapoznać się z nowościami oraz udoskonalonymi wersjami naszych produktów. Mamy nadzieję, że udzielona przez naszych specjalistów informacja była wyczerpująca.</p>

<p>Serdecznie dziękujemy wszystkim którzy odwiedzili nasze stoisko!</p>
','Międzynarodowe Targi "EKWATEK 2014" w Moskwie','','Dendor Valve Industrial wzięła udział w Międzynarodowych Targach Wodnych Technologii „EKWATEK 2014” w dniach 03-');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('13','5','1','XIX Międzynarodowe Targi Aqua-Therm Moscow 2015','W dniach 3-6 lutego 2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „Кrokus Ekspo” w Moskwie...','<p>Szanowni Państwo!</p>

<p>W dniach 3-6.02.2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „Кrokus Ekspo” w Moskwie.</p>

<p>Targi Aqua-Therm Moscow są znaczącym wydarzeniem branżowym w całej Europie, jak również największą platformą spotkań biznesowych, miejscem prezentacji najnowszych produktów z zakresu armatury do instalacji przemysłowych dla sektora wodno-kanalizacyjnego – ciepłowniczego(WOD-KAN-CO), wyposażenia sanitarnego tak krajowych jak i zagranicznych producentów.</p>

<p>Podczas targów goście będą mogli zapoznać się z najnowszymi produktami firmy, udoskonalonymi wersjami urządzeń już istniejących na rynku oraz otrzymać niezbędną informację dotyczącą całej oferty produkcyjnej Dendor.</p>

<p>Stoisko firmy znajduje się w pawilonie 3, sala Nr 13, stoisko А213.</p>

<p>Adres: Moskwa, m.Krasnogorsk 16, skr.poczt.92, MVC „Krokus Ekspo” Serdecznie zapraszamy!</p>
','XIX Międzynarodowe Targi Aqua-Therm Moscow 2015','','W dniach 3-6 lutego 2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('14','5','2','XIX Międzynarodowe Targi Aqua-Therm Moscow 2015','W dniach 3-6 lutego 2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „Кrokus Ekspo” w Moskwie...','<p>Szanowni Państwo!</p>

<p>W dniach 3-6.02.2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „Кrokus Ekspo” w Moskwie.</p>

<p>Targi Aqua-Therm Moscow są znaczącym wydarzeniem branżowym w całej Europie, jak również największą platformą spotkań biznesowych, miejscem prezentacji najnowszych produktów z zakresu armatury do instalacji przemysłowych dla sektora wodno-kanalizacyjnego – ciepłowniczego(WOD-KAN-CO), wyposażenia sanitarnego tak krajowych jak i zagranicznych producentów.</p>

<p>Podczas targów goście będą mogli zapoznać się z najnowszymi produktami firmy, udoskonalonymi wersjami urządzeń już istniejących na rynku oraz otrzymać niezbędną informację dotyczącą całej oferty produkcyjnej Dendor.</p>

<p>Stoisko firmy znajduje się w pawilonie 3, sala Nr 13, stoisko А213.</p>

<p>Adres: Moskwa, m.Krasnogorsk 16, skr.poczt.92, MVC „Krokus Ekspo” Serdecznie zapraszamy!</p>
','XIX Międzynarodowe Targi Aqua-Therm Moscow 2015','','W dniach 3-6 lutego 2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('15','5','3','XIX Międzynarodowe Targi Aqua-Therm Moscow 2015','W dniach 3-6 lutego 2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „Кrokus Ekspo” w Moskwie...','<p>Szanowni Państwo!</p>

<p>W dniach 3-6.02.2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „Кrokus Ekspo” w Moskwie.</p>

<p>Targi Aqua-Therm Moscow są znaczącym wydarzeniem branżowym w całej Europie, jak również największą platformą spotkań biznesowych, miejscem prezentacji najnowszych produktów z zakresu armatury do instalacji przemysłowych dla sektora wodno-kanalizacyjnego – ciepłowniczego(WOD-KAN-CO), wyposażenia sanitarnego tak krajowych jak i zagranicznych producentów.</p>

<p>Podczas targów goście będą mogli zapoznać się z najnowszymi produktami firmy, udoskonalonymi wersjami urządzeń już istniejących na rynku oraz otrzymać niezbędną informację dotyczącą całej oferty produkcyjnej Dendor.</p>

<p>Stoisko firmy znajduje się w pawilonie 3, sala Nr 13, stoisko А213.</p>

<p>Adres: Moskwa, m.Krasnogorsk 16, skr.poczt.92, MVC „Krokus Ekspo” Serdecznie zapraszamy!</p>
','XIX Międzynarodowe Targi Aqua-Therm Moscow 2015','','W dniach 3-6 lutego 2015 odbędą się XIX Międzynarodowe Targi Aqua-Therm Moscow w Centrum Wystawienniczym (МVC) „');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('16','6','1','Dobór armatury instalacyjnej','Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej wyboru zależy skuteczność i funkcjonalność sieci instalacyjnych. Czym zatem dokładnie jest armatura instalacyjna? Są to różne urządzenia i akcesoria, które pozwalają w sposób właściwy zorganizować przepływające czynniki robocze (ciecze lub gazy) stosowane w przemyśle lub gospodarce komunalnej...','<p>Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej wyboru zależy skuteczność i funkcjonalność sieci instalacyjnych. Czym zatem dokładnie jest armatura instalacyjna? Są to różne urządzenia i akcesoria, które pozwalają w sposób właściwy zorganizować przepływające czynniki robocze (ciecze lub gazy) stosowane w przemyśle lub gospodarce komunalnej.</p>

<p>Jej montaż może być dokonywany na rurociągach, w kotłach, stacjach uzdatniania wody oraz instalacjach: wodociągowo-kanalizacyjnych, centralnego ogrzewania oraz przemysłowych, których zadaniem jest mieszanie, przekierowywanie, odprowadzanie bądź separacja cieczy, proszków lub granulatów. Ponadto wiele jej rodzajów jest przeznaczonych do zabezpieczenia instalacji przed zbyt wysokim ciśnieniem. Sądząc po imponującej liście stosowanych urządzeń można stwierdzić, że wybór armatury zaporowo-odcinającej jest zadaniem niezwykle odpowiedzialnym i trzeba być dobrze zorientowanym w całym asortymencie, aby dokonać właściwego wyboru.</p>

<p>Jednym z najbardziej rozpowszechnionych typów armatury instalacyjnej są regulatory przepływu. Za tym pojęciem kryją się zawory, kurki i zasuwy. Praktycznie każdy miał w swoim życiu styczność z tymi urządzeniami i wie do czego one służą. Niemniej jednak sztuką jest wybrać odpowiedni zawór lub zasuwę.</p>

<p>Najprostszym i najbardziej znanym regulatorem jest kurek kulowy - często nazywany błędnie zaworem kulowym, który kontroluje siłę przepływu strumienia cieczy lub gazu w instalacji. O popularności tych urządzeń zadecydowały ich doskonałe dane techniczne. Większość firm budowlanych preferuje właśnie ten typ kurków ze względu na łatwość montażu, niezawodność, dostosowanie do wielu różnych systemów. Przy wyborze konkretnego kurka powinno się mieć na względzie następujące parametry systemu: skład chemiczny czynnika roboczego oraz DN i PN.</p>

<p>\n\n</p>

<p>Innym popularnym rozwiązaniem w instalacjach są przepustnice zwrotne. Doskonale nadają się do instalacji niskociśnieniowych o dużej średnicy. Znajdują szerokie zastosowanie ze względu na niskie koszty montażu oraz swoją budowę umożliwiającą szczelność odcinania w obu kierunkach przepływu. Przy doborze przepustnicy powinno się uwzględniać zakres temperatur czynnika tak, aby materiał stosowany w uszczelnieniu był w stanie ją wytrzymać. Na ogół w charakterze uszczelnień jest stosowany EPDM, stal nierdzewna oraz specjalne stopy metali.</p>

<p>W sytuacji, gdy temperatura płynu lub pary jest wysoka o wiele skuteczniejszym rozwiązaniem będą specjalne zasuwy o odpowiedniej średnicy.</p>

<p>Ten typ armatury wykonuje się z różnych stopów i ma on szeroki zakres zastosowań łącznie z instalacjami, w których przepływ czynnika roboczego odbywa się pod wysokim ciśnieniem. Zasuwy zazwyczaj nie mają możliwości regulowania siły strumienia, jedynie pozwalają przełączać na pozycję: otwarte/zamknięte. Zdecydowana większość zasuw jest sterowana ręcznie, jednak są też modele, w których stosuje się napęd elektryczny. W przypadku zachowania bezpieczeństwa instalacji ważnym elementem są zawory zwrotne. Zapewniają one pełną ochronę przed możliwością pojawienia się przepływu wstecznego - na przykład w awarii pompy lub uszkodzeniu instalacji. W zależności od ciśnienia pracy, temperatury składu</p>
','Dobór armatury instalacyjnej','','Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej ');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('17','6','2','Dobór armatury instalacyjnej','Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej wyboru zależy skuteczność i funkcjonalność sieci instalacyjnych. Czym zatem dokładnie jest armatura instalacyjna? Są to różne urządzenia i akcesoria, które pozwalają w sposób właściwy zorganizować przepływające czynniki robocze (ciecze lub gazy) stosowane w przemyśle lub gospodarce komunalnej...','<p>Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej wyboru zależy skuteczność i funkcjonalność sieci instalacyjnych. Czym zatem dokładnie jest armatura instalacyjna? Są to różne urządzenia i akcesoria, które pozwalają w sposób właściwy zorganizować przepływające czynniki robocze (ciecze lub gazy) stosowane w przemyśle lub gospodarce komunalnej.</p>

<p>Jej montaż może być dokonywany na rurociągach, w kotłach, stacjach uzdatniania wody oraz instalacjach: wodociągowo-kanalizacyjnych, centralnego ogrzewania oraz przemysłowych, których zadaniem jest mieszanie, przekierowywanie, odprowadzanie bądź separacja cieczy, proszków lub granulatów. Ponadto wiele jej rodzajów jest przeznaczonych do zabezpieczenia instalacji przed zbyt wysokim ciśnieniem. Sądząc po imponującej liście stosowanych urządzeń można stwierdzić, że wybór armatury zaporowo-odcinającej jest zadaniem niezwykle odpowiedzialnym i trzeba być dobrze zorientowanym w całym asortymencie, aby dokonać właściwego wyboru.</p>

<p>Jednym z najbardziej rozpowszechnionych typów armatury instalacyjnej są regulatory przepływu. Za tym pojęciem kryją się zawory, kurki i zasuwy. Praktycznie każdy miał w swoim życiu styczność z tymi urządzeniami i wie do czego one służą. Niemniej jednak sztuką jest wybrać odpowiedni zawór lub zasuwę.</p>

<p>Najprostszym i najbardziej znanym regulatorem jest kurek kulowy - często nazywany błędnie zaworem kulowym, który kontroluje siłę przepływu strumienia cieczy lub gazu w instalacji. O popularności tych urządzeń zadecydowały ich doskonałe dane techniczne. Większość firm budowlanych preferuje właśnie ten typ kurków ze względu na łatwość montażu, niezawodność, dostosowanie do wielu różnych systemów. Przy wyborze konkretnego kurka powinno się mieć na względzie następujące parametry systemu: skład chemiczny czynnika roboczego oraz DN i PN.</p>

<p>\n\n</p>

<p>Innym popularnym rozwiązaniem w instalacjach są przepustnice zwrotne. Doskonale nadają się do instalacji niskociśnieniowych o dużej średnicy. Znajdują szerokie zastosowanie ze względu na niskie koszty montażu oraz swoją budowę umożliwiającą szczelność odcinania w obu kierunkach przepływu. Przy doborze przepustnicy powinno się uwzględniać zakres temperatur czynnika tak, aby materiał stosowany w uszczelnieniu był w stanie ją wytrzymać. Na ogół w charakterze uszczelnień jest stosowany EPDM, stal nierdzewna oraz specjalne stopy metali.</p>

<p>W sytuacji, gdy temperatura płynu lub pary jest wysoka o wiele skuteczniejszym rozwiązaniem będą specjalne zasuwy o odpowiedniej średnicy.</p>

<p>Ten typ armatury wykonuje się z różnych stopów i ma on szeroki zakres zastosowań łącznie z instalacjami, w których przepływ czynnika roboczego odbywa się pod wysokim ciśnieniem. Zasuwy zazwyczaj nie mają możliwości regulowania siły strumienia, jedynie pozwalają przełączać na pozycję: otwarte/zamknięte. Zdecydowana większość zasuw jest sterowana ręcznie, jednak są też modele, w których stosuje się napęd elektryczny. W przypadku zachowania bezpieczeństwa instalacji ważnym elementem są zawory zwrotne. Zapewniają one pełną ochronę przed możliwością pojawienia się przepływu wstecznego - na przykład w awarii pompy lub uszkodzeniu instalacji. W zależności od ciśnienia pracy, temperatury składu</p>
','Dobór armatury instalacyjnej','','Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej ');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('18','6','3','Dobór armatury instalacyjnej','Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej wyboru zależy skuteczność i funkcjonalność sieci instalacyjnych. Czym zatem dokładnie jest armatura instalacyjna? Są to różne urządzenia i akcesoria, które pozwalają w sposób właściwy zorganizować przepływające czynniki robocze (ciecze lub gazy) stosowane w przemyśle lub gospodarce komunalnej...','<p>Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej wyboru zależy skuteczność i funkcjonalność sieci instalacyjnych. Czym zatem dokładnie jest armatura instalacyjna? Są to różne urządzenia i akcesoria, które pozwalają w sposób właściwy zorganizować przepływające czynniki robocze (ciecze lub gazy) stosowane w przemyśle lub gospodarce komunalnej.</p>

<p>Jej montaż może być dokonywany na rurociągach, w kotłach, stacjach uzdatniania wody oraz instalacjach: wodociągowo-kanalizacyjnych, centralnego ogrzewania oraz przemysłowych, których zadaniem jest mieszanie, przekierowywanie, odprowadzanie bądź separacja cieczy, proszków lub granulatów. Ponadto wiele jej rodzajów jest przeznaczonych do zabezpieczenia instalacji przed zbyt wysokim ciśnieniem. Sądząc po imponującej liście stosowanych urządzeń można stwierdzić, że wybór armatury zaporowo-odcinającej jest zadaniem niezwykle odpowiedzialnym i trzeba być dobrze zorientowanym w całym asortymencie, aby dokonać właściwego wyboru.</p>

<p>Jednym z najbardziej rozpowszechnionych typów armatury instalacyjnej są regulatory przepływu. Za tym pojęciem kryją się zawory, kurki i zasuwy. Praktycznie każdy miał w swoim życiu styczność z tymi urządzeniami i wie do czego one służą. Niemniej jednak sztuką jest wybrać odpowiedni zawór lub zasuwę.</p>

<p>Najprostszym i najbardziej znanym regulatorem jest kurek kulowy - często nazywany błędnie zaworem kulowym, który kontroluje siłę przepływu strumienia cieczy lub gazu w instalacji. O popularności tych urządzeń zadecydowały ich doskonałe dane techniczne. Większość firm budowlanych preferuje właśnie ten typ kurków ze względu na łatwość montażu, niezawodność, dostosowanie do wielu różnych systemów. Przy wyborze konkretnego kurka powinno się mieć na względzie następujące parametry systemu: skład chemiczny czynnika roboczego oraz DN i PN.</p>

<p>\n\n</p>

<p>Innym popularnym rozwiązaniem w instalacjach są przepustnice zwrotne. Doskonale nadają się do instalacji niskociśnieniowych o dużej średnicy. Znajdują szerokie zastosowanie ze względu na niskie koszty montażu oraz swoją budowę umożliwiającą szczelność odcinania w obu kierunkach przepływu. Przy doborze przepustnicy powinno się uwzględniać zakres temperatur czynnika tak, aby materiał stosowany w uszczelnieniu był w stanie ją wytrzymać. Na ogół w charakterze uszczelnień jest stosowany EPDM, stal nierdzewna oraz specjalne stopy metali.</p>

<p>W sytuacji, gdy temperatura płynu lub pary jest wysoka o wiele skuteczniejszym rozwiązaniem będą specjalne zasuwy o odpowiedniej średnicy.</p>

<p>Ten typ armatury wykonuje się z różnych stopów i ma on szeroki zakres zastosowań łącznie z instalacjami, w których przepływ czynnika roboczego odbywa się pod wysokim ciśnieniem. Zasuwy zazwyczaj nie mają możliwości regulowania siły strumienia, jedynie pozwalają przełączać na pozycję: otwarte/zamknięte. Zdecydowana większość zasuw jest sterowana ręcznie, jednak są też modele, w których stosuje się napęd elektryczny. W przypadku zachowania bezpieczeństwa instalacji ważnym elementem są zawory zwrotne. Zapewniają one pełną ochronę przed możliwością pojawienia się przepływu wstecznego - na przykład w awarii pompy lub uszkodzeniu instalacji. W zależności od ciśnienia pracy, temperatury składu</p>
','Dobór armatury instalacyjnej','','Dobór armatury instalacyjnej jest bardzo ważnym etapem opracowania projektu, ponieważ od jakości i właściwego jej ');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('19','7','1','Zarys historyczny armatury instalacyjnej','Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu...','<p>Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu. Odpowiedź na pytanie, dlaczego tak ważną kwestią jest dla nas armatura instalacyjna jest już jasna, ale nasuwa się nam jeszcze jedna myśl: gdzie i przez kogo została ona wynaleziona? Poniżej postaramy się na to odpowiedzieć.</p>

<p>Starożytni ludzie obserwowali bobry budujące swoje tamy na rzekach; sami też używali pni drzew, gałęzi, gęstej trawy oraz głazów do regulowania przepływu wody. Systemy do nawadniania upraw i zapewnienia wody dla swoich osiedli wynaleźli Egipcjanie i Grecy, jednak to Rzymianie zaczęli stosować systemy kanałów, które różniły się znacznie od innych. Są powody, aby przypuszczać, że podpatrzyli je w jednym z podbitych krajów. W każdym razie to właśnie oni kontynuowali rozwój tej technologii poprzez zastosowanie kurków wykonanych z brązu - pozwalały one doprowadzać wodę do domów i innych obiektów.</p>

<p>Następny poziom rozwoju armatura instalacyjna osiągnęła dopiero podczas rewolucji przemysłowej. Para wodna stała się kluczowym czynnikiem mocy, której przetwarzanie pozwoliło ludzkości na zastąpienie pracy rąk robotników i zwierząt pociągowych maszynami przemysłowymi. Wraz z opatentowaniem silnika parowego armatura instalacyjna umożliwiła pompowanie wody z kopalni. Rozpoczął się szybki rozwój takich branż jak: górnictwo, rolnictwo, włókiennictwo, metalurgia, transport i wiele innych. Gospodarka przeżywała bezprecedensowy wzrost, polepszała się też sytuacja materialna zwykłych ludzi. Swój rozkwit przeżywała również armatura instalacyjna – na potrzeby przemysłu pojawiały się jej nowe rodzaje.</p>

<p>Współcześnie mamy do czynienia z pełnym zakresem urządzeń do instalacji i przemysłu. Wykonywane są one z takich materiałów jak PVC, stal nierdzewna, stal węglowa, żeliwo, brąz, mosiądz itp. Wymiary armatury są zróżnicowane, są mniejsze lub większe. Ciekawostką jest fakt, że największy zawór na świecie ma wagę 102 ton! W zależności od dziedziny zastosowania jest określany dany typ urządzenia, za którego pomocą uzyskuje się najlepsze wyniki.</p>

<p>Decydując się na wybór marki Dendor mogą być Państwo absolutnie pewni, że dokonali właściwego wyboru. Nasi wykwalifikowani specjaliści chętnie wyjaśnią Państwu wszystkie aspekty techniczne naszej armatury instalacyjnej i pomogą w jej doborze tak, aby w pełni spełnić Państwa oczekiwania.</p>
','Zarys historyczny armatury instalacyjnej','','Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('20','7','2','Zarys historyczny armatury instalacyjnej','Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu...','<p>Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu. Odpowiedź na pytanie, dlaczego tak ważną kwestią jest dla nas armatura instalacyjna jest już jasna, ale nasuwa się nam jeszcze jedna myśl: gdzie i przez kogo została ona wynaleziona? Poniżej postaramy się na to odpowiedzieć.</p>

<p>Starożytni ludzie obserwowali bobry budujące swoje tamy na rzekach; sami też używali pni drzew, gałęzi, gęstej trawy oraz głazów do regulowania przepływu wody. Systemy do nawadniania upraw i zapewnienia wody dla swoich osiedli wynaleźli Egipcjanie i Grecy, jednak to Rzymianie zaczęli stosować systemy kanałów, które różniły się znacznie od innych. Są powody, aby przypuszczać, że podpatrzyli je w jednym z podbitych krajów. W każdym razie to właśnie oni kontynuowali rozwój tej technologii poprzez zastosowanie kurków wykonanych z brązu - pozwalały one doprowadzać wodę do domów i innych obiektów.</p>

<p>Następny poziom rozwoju armatura instalacyjna osiągnęła dopiero podczas rewolucji przemysłowej. Para wodna stała się kluczowym czynnikiem mocy, której przetwarzanie pozwoliło ludzkości na zastąpienie pracy rąk robotników i zwierząt pociągowych maszynami przemysłowymi. Wraz z opatentowaniem silnika parowego armatura instalacyjna umożliwiła pompowanie wody z kopalni. Rozpoczął się szybki rozwój takich branż jak: górnictwo, rolnictwo, włókiennictwo, metalurgia, transport i wiele innych. Gospodarka przeżywała bezprecedensowy wzrost, polepszała się też sytuacja materialna zwykłych ludzi. Swój rozkwit przeżywała również armatura instalacyjna – na potrzeby przemysłu pojawiały się jej nowe rodzaje.</p>

<p>Współcześnie mamy do czynienia z pełnym zakresem urządzeń do instalacji i przemysłu. Wykonywane są one z takich materiałów jak PVC, stal nierdzewna, stal węglowa, żeliwo, brąz, mosiądz itp. Wymiary armatury są zróżnicowane, są mniejsze lub większe. Ciekawostką jest fakt, że największy zawór na świecie ma wagę 102 ton! W zależności od dziedziny zastosowania jest określany dany typ urządzenia, za którego pomocą uzyskuje się najlepsze wyniki.</p>

<p>Decydując się na wybór marki Dendor mogą być Państwo absolutnie pewni, że dokonali właściwego wyboru. Nasi wykwalifikowani specjaliści chętnie wyjaśnią Państwu wszystkie aspekty techniczne naszej armatury instalacyjnej i pomogą w jej doborze tak, aby w pełni spełnić Państwa oczekiwania.</p>
','Zarys historyczny armatury instalacyjnej','','Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('21','7','3','Zarys historyczny armatury instalacyjnej','Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu...','<p>Every day each of us has a contact with water</p>

<p>Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla nas niewidoczne. Udaje nam się jednak przejąć w pełni kontrolę na czymś, co wydaje się być niekontrolowane. W rozwiązywaniu takich zadań jak: regulowanie i sterowanie parą, wodą, powietrzem, cieczami żrącymi, gazami oraz innymi mediami odgrywa ona bardzo ważną rolę w naszym życiu. Odpowiedź na pytanie, dlaczego tak ważną kwestią jest dla nas armatura instalacyjna jest już jasna, ale nasuwa się nam jeszcze jedna myśl: gdzie i przez kogo została ona wynaleziona? Poniżej postaramy się na to odpowiedzieć.</p>

<p>Starożytni ludzie obserwowali bobry budujące swoje tamy na rzekach; sami też używali pni drzew, gałęzi, gęstej trawy oraz głazów do regulowania przepływu wody. Systemy do nawadniania upraw i zapewnienia wody dla swoich osiedli wynaleźli Egipcjanie i Grecy, jednak to Rzymianie zaczęli stosować systemy kanałów, które różniły się znacznie od innych. Są powody, aby przypuszczać, że podpatrzyli je w jednym z podbitych krajów. W każdym razie to właśnie oni kontynuowali rozwój tej technologii poprzez zastosowanie kurków wykonanych z brązu - pozwalały one doprowadzać wodę do domów i innych obiektów.</p>

<p>Następny poziom rozwoju armatura instalacyjna osiągnęła dopiero podczas rewolucji przemysłowej. Para wodna stała się kluczowym czynnikiem mocy, której przetwarzanie pozwoliło ludzkości na zastąpienie pracy rąk robotników i zwierząt pociągowych maszynami przemysłowymi. Wraz z opatentowaniem silnika parowego armatura instalacyjna umożliwiła pompowanie wody z kopalni. Rozpoczął się szybki rozwój takich branż jak: górnictwo, rolnictwo, włókiennictwo, metalurgia, transport i wiele innych. Gospodarka przeżywała bezprecedensowy wzrost, polepszała się też sytuacja materialna zwykłych ludzi. Swój rozkwit przeżywała również armatura instalacyjna – na potrzeby przemysłu pojawiały się jej nowe rodzaje.</p>

<p>Współcześnie mamy do czynienia z pełnym zakresem urządzeń do instalacji i przemysłu. Wykonywane są one z takich materiałów jak PVC, stal nierdzewna, stal węglowa, żeliwo, brąz, mosiądz itp. Wymiary armatury są zróżnicowane, są mniejsze lub większe. Ciekawostką jest fakt, że największy zawór na świecie ma wagę 102 ton! W zależności od dziedziny zastosowania jest określany dany typ urządzenia, za którego pomocą uzyskuje się najlepsze wyniki.</p>

<p>Decydując się na wybór marki Dendor mogą być Państwo absolutnie pewni, że dokonali właściwego wyboru. Nasi wykwalifikowani specjaliści chętnie wyjaśnią Państwu wszystkie aspekty techniczne naszej armatury instalacyjnej i pomogą w jej doborze tak, aby w pełni spełnić Państwa oczekiwania.</p>
','Zarys historyczny armatury instalacyjnej','','Codziennie każdy z nas ma kontakt z armaturą instalacyjną, ale jej funkcjonowanie w większości przypadków jest dla');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('22','8','1','Typy kompensatorów','Kompensatory przeznaczone są do przejmowania wszelkiego rodzaju przemieszczeń: osiowych, poprzecznych, kątowych i ich kombinacji. Oprócz tego izolują wibracje, tłumią hałas oraz pochłaniają energię uderzenia hydraulicznego. 
Obecnie na rynku armatury przemysłowej znajdują zastosowanie kilka typów kompensatorów. Różnice w budowie poszczególnych typów kompensatorów zależą od charakteru przepływającego charakteru czynnika roboczego.','<p>Kompensatory przeznaczone są do przejmowania wszelkiego rodzaju przemieszczeń: osiowych, poprzecznych, kątowych i ich kombinacji. Oprócz tego izolują wibracje, tłumią hałas oraz pochłaniają energię uderzenia hydraulicznego. 
Obecnie na rynku armatury przemysłowej znajdują zastosowanie kilka typów kompensatorów. Różnice w budowie poszczególnych typów kompensatorów zależą od charakteru przepływającego charakteru czynnika roboczego.</p>

<h3 class="h3">Gumowe</h3>

<p>Kompensatory gumowe składają się z mieszka wykonanego z różnego rodzaju elastomerów zbrojonych kordem syntetycznym oraz elementów mocujących do rurociągu. Kompensują wydłużenia cieplne rurociągów i korygują niewspółosiowość. 
Stosowane są we wszelkiego rodzaju instalacjach przemysłowych, w elektrowniach, również w technice grzewczej (węzły cieplne) i sanitarnej (oczyszczalnie, pompownie ścieków, stacje uzdatniania wody).</p>

<h3 class="h3">Stalowe</h3>

<p>Kompensatory stalowe składają się z wielowarstwowych mieszków stalowych oraz przyłączy: kołnierzowych lub do wspawania. Do produkcji stalowych kompensatorów jest używana stal nierdzewna, stopy metali tytanowych i niklowych. 
Rozróżnia się następujące rodzaje kompensatorów stalowych: uniwersalne, osiowe, poprzeczne, kątowe. 
Kompensatory stalowe stosuje się w celu kompensacji przesunięć, które powodują zmianę długości poszczególnych segmentów rur. Zamontowane w jej segmencie tłumią drgania, szumy, łagodzą uderzenia wody.</p>

<h3 class="h3">Tkaninowe</h3>

<p>Kompensatory tkaninowe składają się z kilku, a czasem nawet kilkunastu warstw. Odpowiednie warstwy od wewnętrznej do zewnętrznej dobierane są w zależności od charakterystyki medium. Kompensatory te są stosowane przede wszystkim w przypadku wysokich temperatur, sięgających 315°С, czasami nawet wyżej, głównie dla mediów sypkich i gazowych w wielu gałęziach przemysłu. Zapewniają prawidłową kompensację przemieszczeń mechanicznych i cieplnych w różnego typu przewodach: rurociągach gorącego powietrza, kanałach spalin, rurociągach transportujących pyły i wiele innych rodzajów mediów. Do produkcji tych kompensatorów są używane materiały nie zawierające azbestu. Produkuje się je na bazie materiałów silikonowych, z włókna szklanego, aramidowych i innych koniecznych dla prawidłowej pracy instalacji.</p>

<h3 class="h3">Teflonowe</h3>

<p>Kompensatory teflonowe zbudowane są z mieszka wielowarstwowego formowanego z PTFE (teflon) z zewnętrznymi pierścieniami stabilizującymi jego pracę. Stosuje się je wszędzie tam gdzie wymagana jest szczególna odporność chemiczna i temperaturowa, m.in. w przemyśle chemicznym, spożywczym i farmaceutycznym. Kompensują odkształcenia cieplne, naprężenia montażowe i wibracje.</p>
','Typy kompensatorów','','Kompensatory przeznaczone są do przejmowania wszelkiego rodzaju przemieszczeń: osiowych, poprzecznych, kątowych i ich');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('23','8','2','Typy kompensatorów','Kompensatory przeznaczone są do przejmowania wszelkiego rodzaju przemieszczeń: osiowych, poprzecznych, kątowych i ich kombinacji. Oprócz tego izolują wibracje, tłumią hałas oraz pochłaniają energię uderzenia hydraulicznego. 
Obecnie na rynku armatury przemysłowej znajdują zastosowanie kilka typów kompensatorów. Różnice w budowie poszczególnych typów kompensatorów zależą od charakteru przepływającego charakteru czynnika roboczego.','<p>Kompensatory przeznaczone są do przejmowania wszelkiego rodzaju przemieszczeń: osiowych, poprzecznych, kątowych i ich kombinacji. Oprócz tego izolują wibracje, tłumią hałas oraz pochłaniają energię uderzenia hydraulicznego. 
Obecnie na rynku armatury przemysłowej znajdują zastosowanie kilka typów kompensatorów. Różnice w budowie poszczególnych typów kompensatorów zależą od charakteru przepływającego charakteru czynnika roboczego.</p>

<h3>Gumowe</h3>

<p>Kompensatory gumowe składają się z mieszka wykonanego z różnego rodzaju elastomerów zbrojonych kordem syntetycznym oraz elementów mocujących do rurociągu. Kompensują wydłużenia cieplne rurociągów i korygują niewspółosiowość. 
Stosowane są we wszelkiego rodzaju instalacjach przemysłowych, w elektrowniach, również w technice grzewczej (węzły cieplne) i sanitarnej (oczyszczalnie, pompownie ścieków, stacje uzdatniania wody).</p>

<h3>Stalowe</h3>

<p>Kompensatory stalowe składają się z wielowarstwowych mieszków stalowych oraz przyłączy: kołnierzowych lub do wspawania. Do produkcji stalowych kompensatorów jest używana stal nierdzewna, stopy metali tytanowych i niklowych. 
Rozróżnia się następujące rodzaje kompensatorów stalowych: uniwersalne, osiowe, poprzeczne, kątowe. 
Kompensatory stalowe stosuje się w celu kompensacji przesunięć, które powodują zmianę długości poszczególnych segmentów rur. Zamontowane w jej segmencie tłumią drgania, szumy, łagodzą uderzenia wody.</p>

<h3>Tkaninowe</h3>

<p>Kompensatory tkaninowe składają się z kilku, a czasem nawet kilkunastu warstw. Odpowiednie warstwy od wewnętrznej do zewnętrznej dobierane są w zależności od charakterystyki medium. Kompensatory te są stosowane przede wszystkim w przypadku wysokich temperatur, sięgających 315°С, czasami nawet wyżej, głównie dla mediów sypkich i gazowych w wielu gałęziach przemysłu. Zapewniają prawidłową kompensację przemieszczeń mechanicznych i cieplnych w różnego typu przewodach: rurociągach gorącego powietrza, kanałach spalin, rurociągach transportujących pyły i wiele innych rodzajów mediów. Do produkcji tych kompensatorów są używane materiały nie zawierające azbestu. Produkuje się je na bazie materiałów silikonowych, z włókna szklanego, aramidowych i innych koniecznych dla prawidłowej pracy instalacji.</p>

<h3>Teflonowe</h3>

<p>Kompensatory teflonowe zbudowane są z mieszka wielowarstwowego formowanego z PTFE (teflon) z zewnętrznymi pierścieniami stabilizującymi jego pracę. Stosuje się je wszędzie tam gdzie wymagana jest szczególna odporność chemiczna i temperaturowa, m.in. w przemyśle chemicznym, spożywczym i farmaceutycznym. Kompensują odkształcenia cieplne, naprężenia montażowe i wibracje.</p>
','Typy kompensatorów','','Kompensatory przeznaczone są do przejmowania wszelkiego rodzaju przemieszczeń: osiowych, poprzecznych, kątowych i ich');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('24','8','3','Typy kompensatorów','Kompensatory przeznaczone są do przejmowania wszelkiego rodzaju przemieszczeń: osiowych, poprzecznych, kątowych i ich kombinacji. Oprócz tego izolują wibracje, tłumią hałas oraz pochłaniają energię uderzenia hydraulicznego. 
Obecnie na rynku armatury przemysłowej znajdują zastosowanie kilka typów kompensatorów. Różnice w budowie poszczególnych typów kompensatorów zależą od charakteru przepływającego charakteru czynnika roboczego.','<p>Kompensatory przeznaczone są do przejmowania wszelkiego rodzaju przemieszczeń: osiowych, poprzecznych, kątowych i ich kombinacji. Oprócz tego izolują wibracje, tłumią hałas oraz pochłaniają energię uderzenia hydraulicznego. 
Obecnie na rynku armatury przemysłowej znajdują zastosowanie kilka typów kompensatorów. Różnice w budowie poszczególnych typów kompensatorów zależą od charakteru przepływającego charakteru czynnika roboczego.</p>

<h3>Gumowe</h3>

<p>Kompensatory gumowe składają się z mieszka wykonanego z różnego rodzaju elastomerów zbrojonych kordem syntetycznym oraz elementów mocujących do rurociągu. Kompensują wydłużenia cieplne rurociągów i korygują niewspółosiowość. 
Stosowane są we wszelkiego rodzaju instalacjach przemysłowych, w elektrowniach, również w technice grzewczej (węzły cieplne) i sanitarnej (oczyszczalnie, pompownie ścieków, stacje uzdatniania wody).</p>

<h3>Stalowe</h3>

<p>Kompensatory stalowe składają się z wielowarstwowych mieszków stalowych oraz przyłączy: kołnierzowych lub do wspawania. Do produkcji stalowych kompensatorów jest używana stal nierdzewna, stopy metali tytanowych i niklowych. 
Rozróżnia się następujące rodzaje kompensatorów stalowych: uniwersalne, osiowe, poprzeczne, kątowe. 
Kompensatory stalowe stosuje się w celu kompensacji przesunięć, które powodują zmianę długości poszczególnych segmentów rur. Zamontowane w jej segmencie tłumią drgania, szumy, łagodzą uderzenia wody.</p>

<h3>Tkaninowe</h3>

<p>Kompensatory tkaninowe składają się z kilku, a czasem nawet kilkunastu warstw. Odpowiednie warstwy od wewnętrznej do zewnętrznej dobierane są w zależności od charakterystyki medium. Kompensatory te są stosowane przede wszystkim w przypadku wysokich temperatur, sięgających 315°С, czasami nawet wyżej, głównie dla mediów sypkich i gazowych w wielu gałęziach przemysłu. Zapewniają prawidłową kompensację przemieszczeń mechanicznych i cieplnych w różnego typu przewodach: rurociągach gorącego powietrza, kanałach spalin, rurociągach transportujących pyły i wiele innych rodzajów mediów. Do produkcji tych kompensatorów są używane materiały nie zawierające azbestu. Produkuje się je na bazie materiałów silikonowych, z włókna szklanego, aramidowych i innych koniecznych dla prawidłowej pracy instalacji.</p>

<h3>Teflonowe</h3>

<p>Kompensatory teflonowe zbudowane są z mieszka wielowarstwowego formowanego z PTFE (teflon) z zewnętrznymi pierścieniami stabilizującymi jego pracę. Stosuje się je wszędzie tam gdzie wymagana jest szczególna odporność chemiczna i temperaturowa, m.in. w przemyśle chemicznym, spożywczym i farmaceutycznym. Kompensują odkształcenia cieplne, naprężenia montażowe i wibracje.</p>
','Typy kompensatorów','','Kompensatory przeznaczone są do przejmowania wszelkiego rodzaju przemieszczeń: osiowych, poprzecznych, kątowych i ich');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('25','9','1','Kurek kulowy','Większości instalatorów słowo „kurek” kojarzy się z zaworem czerpalnym do zimnej wody usytuowanym nad zlewem lub zainstalowanym na końcu rurociągu z końcówką do węża do podlewania ogrodu. Jednak prawidłowa nazwa tej armatury powinna brzmieć „kurek kulowy”.','<p>Większości instalatorów słowo „kurek” kojarzy się z zaworem czerpalnym do zimnej wody usytuowanym nad zlewem lub zainstalowanym na końcu rurociągu z końcówką do węża do podlewania ogrodu. Jednak prawidłowa nazwa tej armatury powinna brzmieć „kurek kulowy”.</p>

<p>Kurek kulowy jest urządzeniem mechanicznym, które steruje procesem przepływu różnych mediów przez otwór w kuli. Kurek kulowy składa się z korpusu, gniazda wraz z kulą i wałka zwrotnego. Gdy zawór jest otwarty kula z wydrążonym w środku otworem przepuszcza medium, jeśli zaś obrócimy ją o 90º, zakryje gniazdo i zablokuje przepływ. Kurki pełnią typową funkcję otwórz/zamknij ze względu na stromą charakterystykę uniemożliwiającą regulację przepływu czynnika.</p>

<p>A kto pierwszy wynalazł kurek kulowy? Jednym z hamulców wzrostu produkcji przemysłowej po wojnie stały się zawory grzybkowe i zasuwy klinowe, powszechnie stosowane w instalacjach przemysłowych. Miały one zbyt duże przecieki (między innymi na dławnicach), co powodowało konieczność częstych wyłączeń. Zmuszało to producentów do poszukiwania nowych rozwiązań konstrukcyjnych. Pierwszy kurek kulowy został opatentowany w 1957 roku przez Zakłady Klingera w Niemczech i Austrii. Konstrukcja kurków była stale modernizowana, aż do stworzenia obecnie obowiązującego standardu o nazwie Ballostar i Ballostar A. Kurki te mają zastosowanie w instalacjach ciepłowniczych, elektrociepłowniach, zakładach celulozowo-papierniczych, zakładach chemicznych, a także w instalacjach przesyłu gazu. Mogą być montowane na rurociągach o średnicach od DN 10 do DN 1100. Wynalazcą zaworu był dr Hubert Klinger-Lohr, potomek Richarda Klingera.</p>

<p>Obecnie kurki te są powszechnie używane w naszym codziennym życiu. Na przykład są stosowane w bateriach zainstalowanych na naszych zlewach, wewnątrz pralek, zmywarek, w kominkach gazowych, wodociągach, lodówkach itp. Są stosowane w takich branżach jak: elektroniczna, energetyczna, motoryzacyjna, poligraficzna, tekstylna, medyczna, chemiczna i spożywcza oraz inne. Zazwyczaj od kurków kulowych wymaga się utrzymywanie wysokiego ciśnienia i temperatury ponad 250 stopni Celsjusza. Mają one prostą konstrukcję, a ich naprawa nie wymaga natychmiastowego demontażu.</p>

<p>Typowe kurki są wykonane ze stali, mosiądzu, żelaza, brązu lub PVC, a ich wymiary wahają się w zakresie od 5 do 600 mm, a nawet więcej. Dla bardziej skomplikowanych układów sterowania, które wykorzystują kurki kulowe w celu kontrolowania przepływu czynnika roboczego konieczne jest stosowanie napędów.</p>

<p>Obecnie rozróżnia się następujące rodzaje kurków kulowych:</p>

<ul>
<li>równoprzelotowe,</li>
<li>z redukowanym przelotem,</li>
<li>wielodrogowe,</li>
<li>o standardowym przelocie.</li>
<li>Istnieją również kurki trzydrogowe i czterodrogowe.</li>
</ul>

<p>Do podstawowych parametrów które określają wybór danego typu kurka należą: temperatura, ciśnienie, ilość dróg, wymiar, rodzaj materiału korpusu, krańcówki oraz miejsce montażu.</p>
','Kurek kulowy','','Większości instalatorów słowo „kurek” kojarzy się z zaworem czerpalnym do zimnej wody usytuowanym nad zlewem lu');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('26','9','2','Kurek kulowy','Większości instalatorów słowo „kurek” kojarzy się z zaworem czerpalnym do zimnej wody usytuowanym nad zlewem lub zainstalowanym na końcu rurociągu z końcówką do węża do podlewania ogrodu. Jednak prawidłowa nazwa tej armatury powinna brzmieć „kurek kulowy”.','<p>Większości instalatorów słowo „kurek” kojarzy się z zaworem czerpalnym do zimnej wody usytuowanym nad zlewem lub zainstalowanym na końcu rurociągu z końcówką do węża do podlewania ogrodu. Jednak prawidłowa nazwa tej armatury powinna brzmieć „kurek kulowy”.</p>

<p>Kurek kulowy jest urządzeniem mechanicznym, które steruje procesem przepływu różnych mediów przez otwór w kuli. Kurek kulowy składa się z korpusu, gniazda wraz z kulą i wałka zwrotnego. Gdy zawór jest otwarty kula z wydrążonym w środku otworem przepuszcza medium, jeśli zaś obrócimy ją o 90º, zakryje gniazdo i zablokuje przepływ. Kurki pełnią typową funkcję otwórz/zamknij ze względu na stromą charakterystykę uniemożliwiającą regulację przepływu czynnika.</p>

<p>A kto pierwszy wynalazł kurek kulowy? Jednym z hamulców wzrostu produkcji przemysłowej po wojnie stały się zawory grzybkowe i zasuwy klinowe, powszechnie stosowane w instalacjach przemysłowych. Miały one zbyt duże przecieki (między innymi na dławnicach), co powodowało konieczność częstych wyłączeń. Zmuszało to producentów do poszukiwania nowych rozwiązań konstrukcyjnych. Pierwszy kurek kulowy został opatentowany w 1957 roku przez Zakłady Klingera w Niemczech i Austrii. Konstrukcja kurków była stale modernizowana, aż do stworzenia obecnie obowiązującego standardu o nazwie Ballostar i Ballostar A. Kurki te mają zastosowanie w instalacjach ciepłowniczych, elektrociepłowniach, zakładach celulozowo-papierniczych, zakładach chemicznych, a także w instalacjach przesyłu gazu. Mogą być montowane na rurociągach o średnicach od DN 10 do DN 1100. Wynalazcą zaworu był dr Hubert Klinger-Lohr, potomek Richarda Klingera.</p>

<p>Obecnie kurki te są powszechnie używane w naszym codziennym życiu. Na przykład są stosowane w bateriach zainstalowanych na naszych zlewach, wewnątrz pralek, zmywarek, w kominkach gazowych, wodociągach, lodówkach itp. Są stosowane w takich branżach jak: elektroniczna, energetyczna, motoryzacyjna, poligraficzna, tekstylna, medyczna, chemiczna i spożywcza oraz inne. Zazwyczaj od kurków kulowych wymaga się utrzymywanie wysokiego ciśnienia i temperatury ponad 250 stopni Celsjusza. Mają one prostą konstrukcję, a ich naprawa nie wymaga natychmiastowego demontażu.</p>

<p>Typowe kurki są wykonane ze stali, mosiądzu, żelaza, brązu lub PVC, a ich wymiary wahają się w zakresie od 5 do 600 mm, a nawet więcej. Dla bardziej skomplikowanych układów sterowania, które wykorzystują kurki kulowe w celu kontrolowania przepływu czynnika roboczego konieczne jest stosowanie napędów.</p>

<p>Obecnie rozróżnia się następujące rodzaje kurków kulowych:</p>

<ul>
<li>równoprzelotowe,</li>
<li>z redukowanym przelotem,</li>
<li>wielodrogowe,</li>
<li>o standardowym przelocie.</li>
<li>Istnieją również kurki trzydrogowe i czterodrogowe.</li>
</ul>

<p>Do podstawowych parametrów które określają wybór danego typu kurka należą: temperatura, ciśnienie, ilość dróg, wymiar, rodzaj materiału korpusu, krańcówki oraz miejsce montażu.</p>
','Kurek kulowy','','Większości instalatorów słowo „kurek” kojarzy się z zaworem czerpalnym do zimnej wody usytuowanym nad zlewem lu');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('27','9','3','Kurek kulowy','Większości instalatorów słowo „kurek” kojarzy się z zaworem czerpalnym do zimnej wody usytuowanym nad zlewem lub zainstalowanym na końcu rurociągu z końcówką do węża do podlewania ogrodu. Jednak prawidłowa nazwa tej armatury powinna brzmieć „kurek kulowy”.','<p>Większości instalatorów słowo „kurek” kojarzy się z zaworem czerpalnym do zimnej wody usytuowanym nad zlewem lub zainstalowanym na końcu rurociągu z końcówką do węża do podlewania ogrodu. Jednak prawidłowa nazwa tej armatury powinna brzmieć „kurek kulowy”.</p>

<p>Kurek kulowy jest urządzeniem mechanicznym, które steruje procesem przepływu różnych mediów przez otwór w kuli. Kurek kulowy składa się z korpusu, gniazda wraz z kulą i wałka zwrotnego. Gdy zawór jest otwarty kula z wydrążonym w środku otworem przepuszcza medium, jeśli zaś obrócimy ją o 90º, zakryje gniazdo i zablokuje przepływ. Kurki pełnią typową funkcję otwórz/zamknij ze względu na stromą charakterystykę uniemożliwiającą regulację przepływu czynnika.</p>

<p>A kto pierwszy wynalazł kurek kulowy? Jednym z hamulców wzrostu produkcji przemysłowej po wojnie stały się zawory grzybkowe i zasuwy klinowe, powszechnie stosowane w instalacjach przemysłowych. Miały one zbyt duże przecieki (między innymi na dławnicach), co powodowało konieczność częstych wyłączeń. Zmuszało to producentów do poszukiwania nowych rozwiązań konstrukcyjnych. Pierwszy kurek kulowy został opatentowany w 1957 roku przez Zakłady Klingera w Niemczech i Austrii. Konstrukcja kurków była stale modernizowana, aż do stworzenia obecnie obowiązującego standardu o nazwie Ballostar i Ballostar A. Kurki te mają zastosowanie w instalacjach ciepłowniczych, elektrociepłowniach, zakładach celulozowo-papierniczych, zakładach chemicznych, a także w instalacjach przesyłu gazu. Mogą być montowane na rurociągach o średnicach od DN 10 do DN 1100. Wynalazcą zaworu był dr Hubert Klinger-Lohr, potomek Richarda Klingera.</p>

<p>Obecnie kurki te są powszechnie używane w naszym codziennym życiu. Na przykład są stosowane w bateriach zainstalowanych na naszych zlewach, wewnątrz pralek, zmywarek, w kominkach gazowych, wodociągach, lodówkach itp. Są stosowane w takich branżach jak: elektroniczna, energetyczna, motoryzacyjna, poligraficzna, tekstylna, medyczna, chemiczna i spożywcza oraz inne. Zazwyczaj od kurków kulowych wymaga się utrzymywanie wysokiego ciśnienia i temperatury ponad 250 stopni Celsjusza. Mają one prostą konstrukcję, a ich naprawa nie wymaga natychmiastowego demontażu.</p>

<p>Typowe kurki są wykonane ze stali, mosiądzu, żelaza, brązu lub PVC, a ich wymiary wahają się w zakresie od 5 do 600 mm, a nawet więcej. Dla bardziej skomplikowanych układów sterowania, które wykorzystują kurki kulowe w celu kontrolowania przepływu czynnika roboczego konieczne jest stosowanie napędów.</p>

<p>Obecnie rozróżnia się następujące rodzaje kurków kulowych:</p>

<ul>
<li>równoprzelotowe,</li>
<li>z redukowanym przelotem,</li>
<li>wielodrogowe,</li>
<li>o standardowym przelocie.</li>
<li>Istnieją również kurki trzydrogowe i czterodrogowe.</li>
</ul>

<p>Do podstawowych parametrów które określają wybór danego typu kurka należą: temperatura, ciśnienie, ilość dróg, wymiar, rodzaj materiału korpusu, krańcówki oraz miejsce montażu.</p>
','Kurek kulowy','','Większości instalatorów słowo „kurek” kojarzy się z zaworem czerpalnym do zimnej wody usytuowanym nad zlewem lu');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('28','10','1','Przepustnice','Przepustnice zwrotne stosowane są praktycznie w każdej branży gospodarki przemysłowej. Do ich produkcji używane jest stal węglowa i nierdzewna, żeliwo, tworzywo sztuczne. Spełniają one role armatury odcinającej i regulacyjnej w rurociągach transportujących płyny, gazy, powietrze, parę. Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealnie dopasowany dysk do pierścienia uszczelniającego gwarantuje wysoką szczelność.','<p>Przepustnice zwrotne stosowane są praktycznie w każdej branży gospodarki przemysłowej. Do ich produkcji używane jest stal węglowa i nierdzewna, żeliwo, tworzywo sztuczne. Spełniają one role armatury odcinającej i regulacyjnej w rurociągach transportujących płyny, gazy, powietrze, parę. Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealnie dopasowany dysk do pierścienia uszczelniającego gwarantuje wysoką szczelność.</p>

<p>Przepustnice odznaczają się zwartą, kompaktowa budową, dzięki zastosowaniu specjalnego uszczelnienia kadłuba oraz trzpienia nie stykają się z przepuszczalnym czynnikiem, co równa się ze zwiększeniem odporności i trwałości elementów składowych przepustnic.</p>

<p>Sterowanie przepustnic odbywa się za pomocą napędów ręcznych, pneumatycznych, elektrycznych lub elektrohydraulicznych.</p>

<p>Istnieją trzy rodzaje przepustnic zwrotnych:</p>

<ul>
<li>przepustnica zwrotna centryczna. Dysk przepustnicy jest wykonany z żeliwa lub stali nierdzewnej, siedlisko ma gumową powłokę.</li>
<li>przepustnica zwrotna z podwójnym mimośrodem. Dysk i siedlisko są wykonane z różnych materiałów. Ten typ jest uważany za jeden z najskuteczniejszych.</li>
<li>przepustnica zwrotna z potrójnym mimośrodem. Ten typ jest używany w instalacjach gdzie jest wymagany bardzo wysoki stopień szczelności, np. instalacje gazowe lub instalacje do przesyłania ropy. Dysk i siedlisko w tego typu przepustnicach posiadają powłokę ochronną.</li>
</ul>

<p>Przepustnice występują w wykonaniu: międzykołnierzowym i kołnierzowym. Międzykołnierzowe są montowane do kołnierza rury za pomocą otworów. Takie przepustnice znajdują zastosowanie w instalacjach wodociągowych. Przepustnice kołnierzowe stosuje się na końcu rurociągu.</p>

<p>Przy wyborze przepustnic o wysokiej jakości i szczelności do swoich potrzeb mogą Państwo zaufać marce Dendor.</p>
','Przepustnice','','Przepustnice zwrotne stosowane są praktycznie w każdej branży gospodarki przemysłowej. Do ich produkcji używane jes');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('29','10','2','Przepustnice','Przepustnice zwrotne stosowane są praktycznie w każdej branży gospodarki przemysłowej. Do ich produkcji używane jest stal węglowa i nierdzewna, żeliwo, tworzywo sztuczne. Spełniają one role armatury odcinającej i regulacyjnej w rurociągach transportujących płyny, gazy, powietrze, parę. Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealnie dopasowany dysk do pierścienia uszczelniającego gwarantuje wysoką szczelność.','<p>Przepustnice zwrotne stosowane są praktycznie w każdej branży gospodarki przemysłowej. Do ich produkcji używane jest stal węglowa i nierdzewna, żeliwo, tworzywo sztuczne. Spełniają one role armatury odcinającej i regulacyjnej w rurociągach transportujących płyny, gazy, powietrze, parę. Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealnie dopasowany dysk do pierścienia uszczelniającego gwarantuje wysoką szczelność.</p>

<p>Przepustnice odznaczają się zwartą, kompaktowa budową, dzięki zastosowaniu specjalnego uszczelnienia kadłuba oraz trzpienia nie stykają się z przepuszczalnym czynnikiem, co równa się ze zwiększeniem odporności i trwałości elementów składowych przepustnic.</p>

<p>Sterowanie przepustnic odbywa się za pomocą napędów ręcznych, pneumatycznych, elektrycznych lub elektrohydraulicznych.</p>

<p>Istnieją trzy rodzaje przepustnic zwrotnych:</p>

<ul>
<li>przepustnica zwrotna centryczna. Dysk przepustnicy jest wykonany z żeliwa lub stali nierdzewnej, siedlisko ma gumową powłokę.</li>
<li>przepustnica zwrotna z podwójnym mimośrodem. Dysk i siedlisko są wykonane z różnych materiałów. Ten typ jest uważany za jeden z najskuteczniejszych.</li>
<li>przepustnica zwrotna z potrójnym mimośrodem. Ten typ jest używany w instalacjach gdzie jest wymagany bardzo wysoki stopień szczelności, np. instalacje gazowe lub instalacje do przesyłania ropy. Dysk i siedlisko w tego typu przepustnicach posiadają powłokę ochronną.</li>
</ul>

<p>Przepustnice występują w wykonaniu: międzykołnierzowym i kołnierzowym. Międzykołnierzowe są montowane do kołnierza rury za pomocą otworów. Takie przepustnice znajdują zastosowanie w instalacjach wodociągowych. Przepustnice kołnierzowe stosuje się na końcu rurociągu.</p>

<p>Przy wyborze przepustnic o wysokiej jakości i szczelności do swoich potrzeb mogą Państwo zaufać marce Dendor.</p>
','Przepustnice','','Przepustnice zwrotne stosowane są praktycznie w każdej branży gospodarki przemysłowej. Do ich produkcji używane jes');
INSERT INTO "NewsTranslate" ("id","object_id","language_id","title","short_description","full_description","meta_title","meta_keywords","meta_description") VALUES ('30','10','3','Przepustnice','Przepustnice zwrotne stosowane są praktycznie w każdej branży gospodarki przemysłowej. Do ich produkcji używane jest stal węglowa i nierdzewna, żeliwo, tworzywo sztuczne. Spełniają one role armatury odcinającej i regulacyjnej w rurociągach transportujących płyny, gazy, powietrze, parę. Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealnie dopasowany dysk do pierścienia uszczelniającego gwarantuje wysoką szczelność.','<p>Przepustnice zwrotne stosowane są praktycznie w każdej branży gospodarki przemysłowej. Do ich produkcji używane jest stal węglowa i nierdzewna, żeliwo, tworzywo sztuczne. Spełniają one role armatury odcinającej i regulacyjnej w rurociągach transportujących płyny, gazy, powietrze, parę. Przepustnice są armaturą pozwalającą na swobodną regulację przepływu czynnika roboczego. Idealnie dopasowany dysk do pierścienia uszczelniającego gwarantuje wysoką szczelność.</p>

<p>Przepustnice odznaczają się zwartą, kompaktowa budową, dzięki zastosowaniu specjalnego uszczelnienia kadłuba oraz trzpienia nie stykają się z przepuszczalnym czynnikiem, co równa się ze zwiększeniem odporności i trwałości elementów składowych przepustnic.</p>

<p>Sterowanie przepustnic odbywa się za pomocą napędów ręcznych, pneumatycznych, elektrycznych lub elektrohydraulicznych.</p>

<p>Istnieją trzy rodzaje przepustnic zwrotnych:</p>

<ul>
<li>przepustnica zwrotna centryczna. Dysk przepustnicy jest wykonany z żeliwa lub stali nierdzewnej, siedlisko ma gumową powłokę.</li>
<li>przepustnica zwrotna z podwójnym mimośrodem. Dysk i siedlisko są wykonane z różnych materiałów. Ten typ jest uważany za jeden z najskuteczniejszych.</li>
<li>przepustnica zwrotna z potrójnym mimośrodem. Ten typ jest używany w instalacjach gdzie jest wymagany bardzo wysoki stopień szczelności, np. instalacje gazowe lub instalacje do przesyłania ropy. Dysk i siedlisko w tego typu przepustnicach posiadają powłokę ochronną.</li>
</ul>

<p>Przepustnice występują w wykonaniu: międzykołnierzowym i kołnierzowym. Międzykołnierzowe są montowane do kołnierza rury za pomocą otworów. Takie przepustnice znajdują zastosowanie w instalacjach wodociągowych. Przepustnice kołnierzowe stosuje się na końcu rurociągu.</p>

<p>Przy wyborze przepustnic o wysokiej jakości i szczelności do swoich potrzeb mogą Państwo zaufać marce Dendor.</p>
','Przepustnice','','Przepustnice zwrotne stosowane są praktycznie w każdej branży gospodarki przemysłowej. Do ich produkcji używane jes');

----
-- Table structure for CatalogItems
----
CREATE TABLE "CatalogItems" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "group_id" integer NOT NULL,
  "modification_id" integer NOT NULL DEFAULT '0',
  "created" numeric NULL,
  "publish" numeric NULL,
  "end_date" numeric NULL,
  "url" text NULL DEFAULT '',
  "image" text NULL DEFAULT '',
  "price" numeric NULL,
  "active" integer NOT NULL DEFAULT '1',
  "sorting" integer NULL DEFAULT '0',
  "deleted" integer NULL DEFAULT '0'
);

----
-- Data dump for CatalogItems, a total of 44 rows
----
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('1','1','0','2015-02-18 01:28:19','2015-02-18 01:28:19','0000-00-00 00:00:00','017w','017w.jpg','0','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('2','1','0','2015-03-01 16:01:52','2015-03-01 16:01:52','0000-00-00 00:00:00','017w-disk-vaw','017w-disk-vaw.jpg','0','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('3','1','0','','','','017w-steel','017w-steel.png','0','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('4','1','0','2015-03-03 01:29:48','2015-03-03 01:29:48','','031pw','031pw.jpg','0','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('5','1','0','2015-03-03 01:29:48','2015-03-03 01:29:48','','031pwg','031pwg.jpg','0','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('6','1','0','2015-03-03 01:29:48','2015-03-03 01:29:48','','021f','021f.jpg','0','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('7','1','0','2015-03-03 11:05:06','2015-03-03 11:05:06','','023f','023f.jpg','0','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('8','1','0','2015-03-03 11:18:14','2015-03-03 11:18:14','','027w','027w.jpg','0','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('9','1','0','2015-03-03 11:33:53','2015-03-03 11:33:53','','027f','027f.jpg','0','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('10','2','0','2015-03-04 10:15:59','2015-03-04 10:15:59','','47gv','47gv.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('11','2','0','2015-03-04 10:22:42','2015-03-04 10:22:42','','47gva','47gva.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('12','2','0','2015-03-04 10:46:22','2015-03-04 10:46:22','','k51gv','K51gv.png','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('13','3','0','2015-03-04 14:32:20','2015-03-04 14:32:20','','010c','010c.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('14','3','0','2015-03-04 14:41:14','2015-03-04 14:41:14','','012f','012f.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('15','3','0','2015-03-04 14:50:19','2015-03-04 14:50:19','','008c','008c.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('16','3','0','2015-03-04 15:08:53','2015-03-04 15:08:53','','015f','015f.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('17','4','0','2015-03-04 15:29:35','2015-03-04 15:29:35','','vz','vz.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('18','4','0','2015-03-04 15:58:19','2015-03-04 15:58:19','','vp','vp.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('19','4','0','2015-03-04 16:13:03','2015-03-04 16:13:03','','vf','vf.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('20','4','0','2015-03-04 16:22:55','2015-03-04 16:22:55','','vs','vs.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('21','4','0','2015-03-04 16:48:39','2015-03-04 16:48:39','','vg','vg.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('22','4','0','2015-03-04 16:58:11','2015-03-04 16:58:11','','vt','vt.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('23','5','0','2015-03-05 16:09:37','2015-03-05 16:09:37','','021y','021y.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('24','6','0','2015-03-05 16:42:18','2015-03-05 16:42:18','','kms','kms.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('25','7','0','2015-03-06 14:09:06','2015-03-06 14:09:06','','f3515','f3515.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('26','7','0','2015-03-06 14:26:36','2015-03-06 14:26:36','','w3515','w3515.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('27','7','0','2015-03-06 14:37:13','2015-03-06 14:37:13','','f3530','f3530.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('28','7','0','2015-03-06 15:05:34','2015-03-06 15:05:34','','w3530','w3530.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('29','8','0','2015-03-07 01:53:37','2015-03-07 01:53:37','','qt','qt.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('30','8','0','2015-03-07 02:37:41','2015-03-07 02:37:41','','mt','mt.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('31','9','0','2015-03-07 20:51:29','2015-03-07 20:51:29','','fa-u13','fa-u13.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('32','9','0','2015-03-07 21:13:11','2015-03-07 21:13:11','','fa-r13','fa-r13.png','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('33','9','0','2015-03-07 22:29:02','2015-03-07 22:29:02','','rc-u13','rc-u13.png','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('34','9','0','2015-03-07 23:04:56','2015-03-07 23:04:56','','fa-q13','fa-q13.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('35','9','0','2015-03-07 23:41:29','2015-03-07 23:41:29','','rc-r13','rc-r13.png','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('36','9','0','2015-03-08 00:31:20','2015-03-08 00:31:20','','pr-u13','pr-u13.png','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('37','10','0','2015-03-08 01:15:39','2015-03-08 01:15:39','','bend','bend.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('38','10','0','2015-03-08 01:30:47','2015-03-08 01:30:47','','transition','transition.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('39','10','0','2015-03-08 02:03:56','2015-03-08 02:03:56','','tee','tee.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('40','10','0','2015-03-08 02:16:15','2015-03-08 02:16:15','','cross','cross.png','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('41','1','0','2015-03-08 20:22:49','2015-03-08 20:22:49','','reduction','reduction.jpg','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('42','9','0','2015-03-08 20:29:40','2015-03-08 20:29:40','','rc-z17','rc-z17.png','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('43','11','0','2015-03-08 21:49:23','2015-03-08 21:49:23','','a10f','a10f.png','','1','0','0');
INSERT INTO "CatalogItems" ("id","group_id","modification_id","created","publish","end_date","url","image","price","active","sorting","deleted") VALUES ('44','11','0','2015-03-08 22:41:48','2015-03-08 22:41:48','','a20f','a20f.png','','1','0','0');

----
-- Table structure for Pages
----
CREATE TABLE "Pages" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "system_name" text NOT NULL DEFAULT '',
  "layout" text NULL DEFAULT '',
  "url" text NULL DEFAULT '',
  "created" numeric NULL,
  "status" text NULL DEFAULT '',
  "image" text NULL
);

----
-- Data dump for Pages, a total of 3 rows
----
INSERT INTO "Pages" ("id","system_name","layout","url","created","status","image") VALUES ('1','home','','home','2015-02-10 15:49:49','published','logo-blue193.png');
INSERT INTO "Pages" ("id","system_name","layout","url","created","status","image") VALUES ('2','productions','','catalog','2015-03-04 01:51:25','draft',NULL);
INSERT INTO "Pages" ("id","system_name","layout","url","created","status","image") VALUES ('3','about','','about','2015-03-09 00:50:10','published','logo_drib_blue.png');

----
-- Table structure for SystemLanguage
----
CREATE TABLE "SystemLanguage" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "name" text NULL DEFAULT '',
  "code" text NULL DEFAULT '',
  "locale" text NULL DEFAULT '',
  "default" integer NULL,
  "flag_name" text NULL,
  "active" integer(1) NOT NULL DEFAULT '1'
);

----
-- Data dump for SystemLanguage, a total of 3 rows
----
INSERT INTO "SystemLanguage" ("id","name","code","locale","default","flag_name","active") VALUES ('1','Poland','pl','pl_PL','1','pl.png','1');
INSERT INTO "SystemLanguage" ("id","name","code","locale","default","flag_name","active") VALUES ('2','Русский','ru','ru_RU','0','ru.png','1');
INSERT INTO "SystemLanguage" ("id","name","code","locale","default","flag_name","active") VALUES ('3','English','en','en_US','0','gb.png','1');

----
-- Table structure for Property
----
CREATE TABLE "Property" (
  "id" integer NOT NULL PRIMARY KEY AUTOINCREMENT,
  "dir_id" integer NOT NULL DEFAULT '0',
  "system_name" text NOT NULL,
  "type" integer NULL DEFAULT '1',
  "main" integer NULL DEFAULT '0',
  "hidden" integer NULL DEFAULT '0',
  "sorting" integer NULL DEFAULT '0',
  "deleted" integer NULL DEFAULT '0'
);

----
-- Data dump for Property, a total of 12 rows
----
INSERT INTO "Property" ("id","dir_id","system_name","type","main","hidden","sorting","deleted") VALUES ('1','0','dn','1','1','0','0','0');
INSERT INTO "Property" ("id","dir_id","system_name","type","main","hidden","sorting","deleted") VALUES ('2','0','pn','1','1','0','0','0');
INSERT INTO "Property" ("id","dir_id","system_name","type","main","hidden","sorting","deleted") VALUES ('3','0','work_temp','1','1','0','0','0');
INSERT INTO "Property" ("id","dir_id","system_name","type","main","hidden","sorting","deleted") VALUES ('4','0','max_temp','1','1','0','0','0');
INSERT INTO "Property" ("id","dir_id","system_name","type","main","hidden","sorting","deleted") VALUES ('5','0','article','1','1','0','0','0');
INSERT INTO "Property" ("id","dir_id","system_name","type","main","hidden","sorting","deleted") VALUES ('6','0','use','2','0','0','0','0');
INSERT INTO "Property" ("id","dir_id","system_name","type","main","hidden","sorting","deleted") VALUES ('7','0','environment','2','0','0','0','0');
INSERT INTO "Property" ("id","dir_id","system_name","type","main","hidden","sorting","deleted") VALUES ('8','0','performance','1','0','0','0','0');
INSERT INTO "Property" ("id","dir_id","system_name","type","main","hidden","sorting","deleted") VALUES ('9','0','materials','1','0','0','0','0');
INSERT INTO "Property" ("id","dir_id","system_name","type","main","hidden","sorting","deleted") VALUES ('10','0','connection','1','0','0','0','0');
INSERT INTO "Property" ("id","dir_id","system_name","type","main","hidden","sorting","deleted") VALUES ('11','0','corrosion','2','0','0','0','0');
INSERT INTO "Property" ("id","dir_id","system_name","type","main","hidden","sorting","deleted") VALUES ('12','0','power','1','0','0','0','0');
COMMIT;
