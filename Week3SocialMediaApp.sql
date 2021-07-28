DROP database if exists socialMediaApp;
create database if not exists socialMediaApp;
use socialMediaApp;

-- DROP TABLE IF EXISTS comment;
-- DROP TABLE IF EXISTS post;
-- DROP TABLE IF EXISTS user;

CREATE TABLE user (
			username varchar(50) NOT NULL,
            email varchar(50) NOT NULL,
            password varchar(50) NOT NULL,
            primary key (username)
);

CREATE TABLE post (
			post_id int NOT NULL auto_increment,
            username varchar(50) NOT NULL,
			post_date date NOT NULL,
            post_content varchar(255) NOT NULL,
            primary key (post_id),
            foreign key (username) references user(username)
);

CREATE TABLE comment (
			comment_id int NOT NULL auto_increment, 
            username varchar(50) NOT NULL,
            post_id int NOT NULL,
			comment_date date NOT NULL,
            comment_content varchar(255) NOT NULL,
            primary key (comment_id),
            foreign key (username) references user(username),
            foreign key (post_id) references post(post_id)
);