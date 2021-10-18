--UC-1: Creating address book service
create database AddressBookService;
use AddressBookService;

--UC-2: Creating database table
create table AddressBookTable
(
FirstName varchar(100) not null,
LastName varchar(50),
Address varchar(200),
City varchar(150),
StateName varchar(100),
ZipCode int,
Phonenum bigint,
EmailId varchar(100)
);
