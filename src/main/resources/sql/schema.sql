CREATE TABLE country_code (
  id INT NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  code varchar(5) DEFAULT NULL,
  iso_code varchar(5) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  name varchar(20) DEFAULT NULL,
  description varchar(100) DEFAULT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE user (
  id INT NOT NULL AUTO_INCREMENT,
  username varchar(50) NOT NULL,
  password varchar(255) NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE user_role (
  user_id INT NOT NULL,
  role_id INT NOT NULL,
  CONSTRAINT fk_user_role_user_id FOREIGN KEY (user_id) REFERENCES user (id),
  CONSTRAINT fk_user_role_role_id FOREIGN KEY (role_id) REFERENCES role (id)
);