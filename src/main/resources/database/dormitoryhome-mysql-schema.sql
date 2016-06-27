create database dh;
use dh;

DROP TABLE IF EXISTS Repair;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Cart;
DROP TABLE IF EXISTS Address;
DROP TABLE IF EXISTS Account_Hash;
DROP TABLE IF EXISTS Item;
DROP TABLE IF EXISTS Account;


CREATE TABLE Account
(
    UID INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(20),
    password VARCHAR(20),
    email VARCHAR(30)
)ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE Account_Hash
(
    UID INT,
    username VARCHAR(20),
    hash VARCHAR(1000),
    email VARCHAR(30),
    foreign key(UID) references Account(UID) on delete no action on update no action
)ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE Item (
    UID INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR (20),
    img VARCHAR (100),
    quantity INT,
    price FLOAT ,
    brief VARCHAR (1024),
    category CHAR (2)
)ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE Repair (
    Repair_UID INT PRIMARY KEY AUTO_INCREMENT,
    Account_UID INT,
    name VARCHAR(20),
    problem VARCHAR(1000),
    address VARCHAR(100),
    status VARCHAR(100),
    foreign key(Account_UID) references Account(UID) on delete no action on update no action
)ENGINE=INNODB DEFAULT CHARSET=utf8;

Create Table Orders (
    Order_UID INT PRIMARY KEY AUTO_INCREMENT,
    Account_UID INT,
    Item_UID INT,
    quantity INT,
    ordertime datetime,
    status VARCHAR(10),
    address VARCHAR(100),
    foreign key(Account_UID) references Account(UID) on delete no action on update no action,
    foreign key(Item_UID) references Item(UID) on delete no action on update no action
)ENGINE=INNODB DEFAULT CHARSET=utf8;



create table Cart (
    Account_UID INT NOT NULL,
    Item_UID INT NOT NULL,
    quantity INT NOT NULL,
    primary key (Account_UID, Item_UID),
    FOREIGN KEY(Account_UID) REFERENCES Account(UID) on delete no action on update no action
)ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE Address
(
    UID INT PRIMARY KEY,
    address1 VARCHAR(100),
    address2 VARCHAR(100),
    address3 VARCHAR(100),
    foreign key(UID) references Account(UID) on delete no action on update no action
)ENGINE=INNODB DEFAULT CHARSET=utf8;