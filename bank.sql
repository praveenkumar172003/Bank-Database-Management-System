create database bank;
use bank;
create table users(ACCNO integer(5) primary key, NAME varchar(50), PHNO varchar(12), ACCTYPE varchar(10), AMOUNT integer(20),PASS integer(20) );
create table admins(USERNAME varchar(20) primary key, NAME varchar(50), PASS varchar(12));

select * from users;
select * from admins;
DELETE FROM users WHERE ACCNO=102;
insert into admins(USERNAME,NAME,PASS) values('SHAS','shankar',2020);
insert into users(ACCNO,NAME,PHNO,ACCTYPE,AMOUNT,PASS) values(102,'shas',999999999,'SAVINGS',1000,2000);
alter table users add column PASS integer(20);
insert into users(PASS)  select ACCNO from users where ACCNO=101; 