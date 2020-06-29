DROP TABLE IF EXISTS billionaires;

CREATE TABLE billionaires (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  first_name VARCHAR(250) NOT NULL,
  last_name VARCHAR(250) NOT NULL,
  career VARCHAR(250) DEFAULT NULL
);

INSERT INTO billionaires (first_name, last_name, career) VALUES
  ('Aliko', 'Dangote', 'Billionaire Industrialist'),
  ('Bill', 'Gates', 'Billionaire Tech Entrepreneur'),
  ('Folrunsho', 'Alakija', 'Billionaire Oil Magnate');


CREATE TABLE IF NOT EXISTS ARVORE_DIRETORIOS  (
  ID INT AUTO_INCREMENT  PRIMARY KEY,
  NAME VARCHAR(250) NOT NULL,
  PARENT_ID INT NOT NULL,
  CONTENT BLOB NULL
);

INSERT INTO ARVORE_DIRETORIOS  SELECT * FROM (
SELECT 0, 'ROOT', -1, NULL
) X WHERE NOT EXISTS(SELECT * FROM ARVORE_DIRETORIOS);
