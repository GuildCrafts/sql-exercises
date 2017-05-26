-- Solution SQL for the project from the Modifying databases with SQL course ("App impersonator")
CREATE TABLE `city` (
  ID INTEGER,
  Name TEXT,
  CountryCode TEXT,
  District TEXT);

INSERT INTO `city` VALUES
(1,'Kabul','AFG','Kabol'),
(2,'Qandahar','AFG','Qandahar'),
(3,'Herat','AFG','Herat'),
(4,'Mazar-e-Sharif','AFG','Balkh'),
(5,'Amsterdam','NLD','Noord-Holland');

UPDATE city SET District = 'North-Holland' WHERE District = 'Noord-Holland';
DELETE FROM city WHERE id = 1;