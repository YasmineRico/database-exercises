CREATE DATABASE IF NOT EXISTS blog_app;
USE blog_app;

CREATE TABLE users(
                      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                      name VARCHAR (50) NOT NULL,
                      email VARCHAR (100),
                      job_title VARCHAR(100),
                      address VARCHAR(200),
                      creation_data TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
                      primary key(id)
);

#DESC only works in mysql, other sql servers use SHOW;
DESCRIBE users;

DROP TABLE blog_app.users;