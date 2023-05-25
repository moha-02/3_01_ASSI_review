
---- CREATING THE TABLES AND INSERTING VALUES FOR THE SUBQUERYS EXAMPLE --------

create table Person(name text, age int, gender text);
insert into Person values('Amy', 21, 'female');
insert into Person values('Toni', 21, 'male');
insert into Person values('Maria', 21, 'female');
insert into Person values('Juan', 24, 'male');

create table Eats(name text, pizza text);
insert into Eats values('Amy', 'pepperoni');
insert into Eats values('Amy', 'mushroom');
insert into Eats values('Toni', 'mushroom');
insert into Eats values('Maria', 'pepperoni');
insert into Eats values('Juan', 'pepperoni');

----------------------------------------------------------------------------------------------------------------
--- CREATING THE TABLE  AND INSERTING VALUES FOR THE FROUPING AND AGGREGATION EXAMPLE ----------

CREATE TABLE sales(  
    product VARCHAR(50),
    unit_price FLOAT(10.10),
    quantity INT(10),
    total FLOAT(10.10)
);

insert into sales values('toy', 10.5,3,150);
insert into sales values('toy', 9.3,8,300);
insert into sales values('toy', 7.5,9,250);

insert into sales values('instrument', 7.5,9,250);
insert into sales values('instrument', 7.5,9,250);
insert into sales values('instrument', 7.5,9,250);

----------------------------------------------------------------------------------------------


