--UC1-Ability to create address book database
create database address_bookk;
use address_bookk;

---UC2 : Ability create a address book table database
CREATE TABLE address_book_System(
id int IDENTITY(1,1) PRIMARY KEY,
First_Name varchar(50),
Last_Name varchar(50),
Address varchar(200),
City varchar(50),
State varchar(50),
Zip int,
Phone_Number bigint,
Email_Id varchar(200)
);
select * from address_book_System

---UC3 : Insert contacts in table
select * from address_book_System 
INSERT INTO address_book_System (First_Name,Last_Name,Address,City,State,Zip,Phone_Number,Email_Id) VALUES ('Konika','Singh','Pune','Nagpur','Maharashtra',4109,7777777777,'konika@gmail.com');
INSERT INTO address_book_System (First_Name,Last_Name,Address,City,State,Zip,Phone_Number,Email_Id) VALUES ('Sania','Rajput','Satara','Karad','Maharashtra',4401,1111111111,'sania@gmail.com');
INSERT INTO address_book_System (First_Name,Last_Name,Address,City,State,Zip,Phone_Number,Email_Id) VALUES ('Khoshbu','Patil','Tasgaon','Vita','Maharashtra',4112,2222222222,'khoshbu@gmail.com');
INSERT INTO address_book_System (First_Name,Last_Name,Address,City,State,Zip,Phone_Number,Email_Id) VALUES ('Payal','Jadhav','Vita','Palus','Maharashtra',4339,3333333333,'payal@gmail.com');
INSERT INTO address_book_System (First_Name,Last_Name,Address,City,State,Zip,Phone_Number,Email_Id) VALUES ('Kartik','Patil','Sangli','Tasgaon','Maharashtra',4429,4444444444,'kartik@gmail.com');

---UC4 : Edit existing contact using name
UPDATE address_book_System SET First_Name = 'Pooja' , Last_Name = 'Patil', Email_Id = 'pooja@gmail.com' where First_Name = 'Kartik';
select * from address_book_System

---UC5 : Delete person using first name
DELETE FROM address_book_System WHERE City = 'Karad';
select * from address_book_System

---UC6 : Ability to retrieve person belonging to a city or state 
SELECT * FROM address_book_System WHERE City='Nagpur';

---UC7 : Count size of addressbook by city and state
SELECT COUNT(City) as TotalContact FROM address_book_System;  
