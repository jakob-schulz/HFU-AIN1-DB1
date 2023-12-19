drop table if exists titanic, tickets, embarked;

create table tickets(
  id int  primary key,
  name varchar(20)
);

create table embarked(
  id int  primary key,
  city varchar(20) unique
);


create  table titanic(
    class integer,
    survived integer,
    name varchar(82),
    gender varchar(6),
    age integer ,
    sibsp integer ,
    parch integer ,
    fare integer ,
    cabin varchar(15),
    boat varchar(7),
    body integer ,
    home varchar(50) ,
    id int primary key,
    embarked_id integer references embarked,
    ticket_id integer references tickets
);


insert into embarked (
select * 
from csvread('C:\Users\jakob\Desktop\Hochschule Furtwangen\1. Semester\Datenbanken\Aufgaben\Aufgabe 10/embarked.csv', null, 'charset=utf-8 fieldseparator=|'));

insert into tickets (
select * 
from csvread('C:\Users\jakob\Desktop\Hochschule Furtwangen\1. Semester\Datenbanken\Aufgaben\Aufgabe 10/tickets.csv', null, 'charset=utf-8 fieldseparator=|'));


insert into titanic (
select * 
from csvread('C:\Users\jakob\Desktop\Hochschule Furtwangen\1. Semester\Datenbanken\Aufgaben\Aufgabe 10/titanic.csv', null, 'charset=utf-8 fieldseparator=|'));


