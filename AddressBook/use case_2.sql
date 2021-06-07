create database Address_Book_Service

select * from sys.databases;

use Address_Book_Service

create table AddressBook
(
firstname varchar(30) not null,
lastname varchar(30) not null,
address varchar(30) not null,
city varchar(30) not null,
state varchar(30) not null,
zip int not null,
phonenumber varchar(15) not null,
email varchar(30) not null,
);