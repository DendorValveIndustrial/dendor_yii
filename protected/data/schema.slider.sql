DROP TABLE IF EXISTS slider;
CREATE TABLE IF NOT EXISTS slider (
  id int(11) NOT NULL AUTO_INCREMENT,
  data_slidr varchar(6) NOT NULL,
  name varchar(255) NOT NULL,
  text TEXT NOT NULL,
  img varchar(255),
  link varchar(255) NOT NULL,
  active tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

INSERT INTO slider (data_slidr, name, text, link) VALUES ('one', 'Przepustnice zwrotne', 'Oferujemy przepustnice zwrotne wyprodukowane ze stali, żeliwa sferoidalnego, PVC. Kołnierzowe, bezkołnierzowe, do wspawania, mimośrodowe w zakresie średnic DN – od 32 do 2000.', 'about');

DROP TABLE IF EXISTS slider_translates;
CREATE TABLE IF NOT EXISTS slider_translates (
  id int(11) NOT NULL AUTO_INCREMENT,
  slider_id int(11),
  lang varchar(6),
  name varchar(255) NOT NULL,
  text TEXT NOT NULL,
  PRIMARY KEY (id),
  KEY slider_id (slider_id)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

ALTER TABLE slider_translates
ADD CONSTRAINT slider_translate_ibfk_1 FOREIGN KEY (slider_id) REFERENCES slider (id) ON DELETE CASCADE ON UPDATE CASCADE;
