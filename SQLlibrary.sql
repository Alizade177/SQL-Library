create database DBLibrary

use DBLibrary
create table Books(
BookID int,
BookName nvarchar(20),
BookAuthor nvarchar(30),
BookPage int,
BookPrice float,
BookDate DateTime,
BookPublishingHouse nvarchar(20),
Tax int)

insert into Books values 
(1,'Sefiller','Victor Hugo',130,25,'2017-05-17 00:00:00','Ay',4),
(2,'Broken Glass','Alain Mabanckou',150,50.5,'2005-06-23 00:00:00','Gunes',5),
(3,'A Little Life','Hanya Yanagihara',230,45.8,'2016-03-20 00:00:00','Neptun',6),
(4,'Harvest','Jim Crace',155,30,'2013-01-15 00:00:00','Gunes',2),
(5,'Days Without','Sebastian Barry',120,25,'2004-05-28 00:00:00','Neptun',5),
(6,'Levels of Life','Julian Barnes',178,50,'2008-07-31 00:00:00','Ay',4),
(7,'White Horse','Jim Crace',113,20.75,'2012-02-02 00:00:00','Ay',6),
(8,'Friendship','Alain Mabanckou',224,34.5,'2019-04-16 00:00:00','Neptun',4),
(9,'To Paradise','Hanya Yanagihara',155,28.16,'2017-02-25 00:00:00','Gunes',6),
(10,'Carrie','Stephen King',175,21.4,'2018-09-24 00:00:00','Neptun',4)


select * from Books

insert into Books values
(11,'Works','Amy Clampitt',133,16.8,'2020-04-07 00:00:00.000','Ay',6),
(12,'Annie Dunne','Sebastian Barry',124,30,'2011-03-20 00:00:00.000','Neptun',2),
(13,'Wise Children','Angela Carter',85,40.6,'2018-11-29 00:00:00.000','Ay',4),
(14,'Hons and Rebels','Jessica Mitford',165,50,'2007-12-05 00:00:00.000','Gunes',4),
(15,'The Rommates','Hanya Yanagihara',123,50.5,'2009-08-12 00:00:00.000','Neptun',6),
(16,'Schwarze Venus','Joachim Kalka',98,60,'2004-03-13 00:00:00.000','Ay',4),
(17,'Harmony','Whitney Hanson',156,25.5,'2006-02-26 00:00:00.000','Ay',6),
(18,'Love','Angela Carter',145,45.9,'2018-02-14 00:00:00.000','Ay',4),
(19,'Les Djinns','Victor Hugo',141,47.2,'2002-07-17 00:00:00.000','Neptun',4),
(20,'The Shining','Stephen King',132,25.10,'1993-07-01 00:00:00.000','Ay',6),
(21,'Arcadia','Jim Crace',138,32.10,'2000-02-25 00:00:00.000','Gunes',4)



use Mekteb
select * from Sagird

Select UPPER(SagirdSoyad) + ' ' + LOWER(SagirdAd) as 'Soyad Ad',
POWER(SagirdBal,2) as 'Bal' from Sagird

use DBLibrary
--Select * from Books
select BookPublishingHouse from Books

select BookPublishingHouse,Count(BookName) as 'Say' from Books group by BookPublishingHouse

select LEFT(BookName,5) as 'kitab ad' from Books where LEN(BookName) < 8
select SUM(Tax * 1.7)  from Books

select BookAuthor,count(BookName) as 'KitabSayi' from Books group by BookAuthor

select BookPublishingHouse,MAX(Tax)  as 'Max Tax' from Books group by BookPublishingHouse

select BookPublishingHouse from Books group by BookPublishingHouse having SUM(BookPrice)>30


 