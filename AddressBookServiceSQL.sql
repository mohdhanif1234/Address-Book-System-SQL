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
