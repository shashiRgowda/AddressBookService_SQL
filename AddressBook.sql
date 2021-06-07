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

select * from AddressBook

insert into AddressBook values
('Shashi','Gowdru','KGF','Kolar','Karnataka',563101,8884540867,'shashi1232gmail.com'),
('Ashok','Chakra','Chintamani','Chickkaballapure','Karnataka',563125,8884540867,'shashi1232gmail.com'),
('Sohan','Reddy','vijayaNagara','Bengalore','Karnataka',563125,8884540867,'shashi1232gmail.com');

update AddressBook set zip = 563101 where firstname = 'shashi'

select * from AddressBook


Delete from AddressBook where firstname = 'Shashi'

select * from AddressBook where city = 'Bengalore' and  state = 'Karnataka'

select count(city) as 'count' from AddressBook where city = 'bengalore' 

select count(firstname) as 'count' from AddressBook where state = 'Karnataka' 

select * FROM AddressBook where city = 'KGF' order by (firstname)



alter table AddressBook Add AddressBookname varchar(20), after email;
alter table AddressBook Add AddressBooktype varchar(20), after AddressBookName;
update addressBook set AddressBookname = 'AddressBook 1' where firstname = 'Shashi';
update addressBook set AddressBookType = 'Friends' where firstname = 'Shashi';
update addressBook set AddressBookType = 'Friends' where firstname = 'Shashi';
update addressBook set AddressBookname = 'AddressBook 2' where firstname = 'Sohan';
update addressBook set AddressBookType = 'Family' where firstname = 'Sohan';

select count (Type) as 'Family' from AddressBook where Type = 'family'
select count (Type) as 'friends' from AddressBook where Type = 'friends'
select count (Type) as 'profession' from AddressBook where Type = 'frofession'

select * from AddressBook