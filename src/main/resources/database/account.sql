CREATE database dh;
use dh;

CREATE TABLE account (
uid INT PRIMARY KEY AUTO_INCREMENT,
username VARCHAR (20),
password VARCHAR (20),
email VARCHAR (30)
);

INSERT INTO account(username, password, email) VALUES ('alice', '123456', '123456@qq.com');
INSERT INTO account(username, password, email) VALUES ('bob', '1234567', '1234567@qq.com');
INSERT INTO account(username, password, email) VALUES ('cindy', '123456789', '123456789@qq.com');

