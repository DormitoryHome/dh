CREATE TABLE Item (
UID INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR (20),
img VARCHAR (100),
quantity INT,
price FLOAT ,
brief VARCHAR (1024),
category CHAR (2)
)ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO Item(name, img, quantity, price, brief, category) VALUES ('薯片', '/images/1.jpg', 10, 5, '薯片', '11');
INSERT INTO Item(name, img, quantity, price, brief, category) VALUES ('可乐', '/images/2.jpg', 10, 5, '可乐', '11');
INSERT INTO Item(name, img, quantity, price, brief, category) VALUES ('薯片', '/images/1.jpg', 10, 5, '薯片', '11');
INSERT INTO Item(name, img, quantity, price, brief, category) VALUES ('薯片', '/images/1.jpg', 10, 5, '薯片', '11');
INSERT INTO Item(name, img, quantity, price, brief, category) VALUES ('薯片', '/images/1.jpg', 10, 5, '薯片', '11');


