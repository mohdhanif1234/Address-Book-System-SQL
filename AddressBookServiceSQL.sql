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

--UC-3: Inserting new contacts in the address book
insert into AddressBookTable values
('Alfreds','Futterkiste','Obere Str. 57','Berlin','Germany',764842,458721564,'abc12@gmail.com'),
('Ana','Trujillo','Avda. de la Constitution 2222','Mexico','USA',569142,3587215654,'pqr14@gmail.com'),
('Antonio','Moreno','Mataderos 2312','London','England',761942,258721564,'xyz12@gmail.com'),
('Thomas','Hardy','120 Hanover Sq.','Lulea','Sweden',231042,458721564,'def12@gmail.com');
select * from AddressBookTable;

--UC-4: Editing existing contact in the address book
update AddressBookTable set Phonenum=7845712874 where FirstName='Thomas';
update AddressBookTable set LastName='Gates' where FirstName='Ana';
update AddressBookTable set EmailId='rst123@gmail.com' where LastName='Futterkiste';
update AddressBookTable set ZipCode='751185' where FirstName='Thomas';
select * from AddressBookTable;

--UC-5: Deleting a person's details from the current address book
delete from AddressBookTable where FirstName='Ana';
select * from AddressBookTable;

--UC-6: Retrieving a person belonging to a city or state from the address book
select FirstName from AddressBookTable where City='Mexico' or StateName='Germany';

--UC-7: Ability to understand the size of address book by city and state
Select Count(City) as Size,City,StateName from AddressBookTable group by StateName,City;

--UC-8: Retrieving entries sorted alphabetically by person’s name for a given city
select FirstName from AddressBookTable where City='Mexico' order by FirstName;

--UC-9: Adding the new columns and adding the address book name and type
alter table AddressBookTable add 
AddressBookName varchar(50),
Type varchar(50);
select * from AddressBookTable;
--Updating the table
update AddressBookTable set AddressBookName='BestFriend',Type='Friend' where FirstName='Thomas';
update AddressBookTable set AddressBookName='Daughter',Type='Family' where FirstName='Ana';
update AddressBookTable set AddressBookName='CEO',Type='Profession' where FirstName='Antonio';

--UC-10: Retrieve count by type
select count(Type)as Count,Type  from AddressBookTable group by Type;

--UC-11: Inserting same contact as family and friend
insert into AddressBookTable values('Alfreds','Futterkiste','Obere Str. 57','Berlin','Germany',764842,458721564,'abc12@gmail.com','CloseFriend','Friend');
select * from AddressBookTable;
