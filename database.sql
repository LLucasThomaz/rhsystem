CREATE DATABASE rhsystem;

CREATE TABLE user(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	cpf VARCHAR(12) NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE address(
	id INT PRIMARY KEY AUTO_INCREMENT,
	user_id INT,
	address VARCHAR(255) NOT NULL,
	telephone VARCHAR(20),
	instagram VARCHAR(255),
	linkedin VARCHAR(255),
	FOREIGN KEY (user_id) REFERENCES user(id)
);

CREATE TABLE schooling(
  id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  institution_name VARCHAR(255) NOT NULL,
  course_name VARCHAR(255) NOT NULL,
  year_completion INT,
  FOREIGN KEY (user_id) REFERENCES user(id)
);