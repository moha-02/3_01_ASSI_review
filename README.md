# 3_01_ASSI_review
Project to recover the UNIT 05: Introduction to SQL 2


## OBJECTIVES🎯

- THREE WAY LOGIC
- AGGREGATION AND GROUPING
- SUBQUERYS
- UNION & INTERSECT 

## TECHNOLOGIES 🛠

-MariaDB 

## THREE WAY LOGIC 🔂

SQL uses a three-valued logic: besides true and false, the result of logical expressions can also be unknown. SQL's three valued logic is a consequence of supporting null to mark absent data. If a null value affects the result of a logical expression, the result is neither true nor false but unknown.
IN THIS EXAMPLE WE CAN SEE HOW THE NULL VALUE COULD WORK, IT COULD MEAN:
  - AN ATRIBUTE CAMO HAS CANT BE EMPTY
  - IT COULD BE ANYTHING
  - COMPARISON TO TRUE OR FALSE


Nothing equals null
~~~
select null = 1;
select null = null;
~~~
Logical Operations Involving Unknown
~~~
In logical connections (and, or), unknown behaves like the null value in comparisons: The result is unknown if it depends on an operand that is unknown.

select (null=1) or (1=1);

A similar case applies to the and operator: and connections are false as soon as any operand is false. The result of the following expression is therefore false:

select (null=1) and (1=0);
~~~

## AGGREGATION AND GROUPING 🔗

- GROUP BY: groups the result by a specified atribute.
- ORDER BY ASC(ascending)/DESC(descending): ordwers the result query on an ascending or descending order.
- FUNCTIONS: sql predefined functions that ar very usefull in ouer qyerys for example AVG(), SUM(), MIN(), MAX(), COUNT().
- HAVING: its used with the group by statment instead of WHERE.
~~~
SELECT 
    product,
    AVG(unit_price) AS avg_price,
    SUM(quantity) AS tot_pieces,
    SUM(total) AS total_gain
FROM sales
GROUP BY product
HAVING SUM(total) > 40000
ORDER BY total_gain DESC
~~~

## SUBQUERYS 🔄
Subqueries (also known as inner queries or nested queries) are a tool for performing multi-step operations.

~~~
 In this query we can see 2 subquerys working together, each subquery executes a query, thre result of the subquerys is used to perfomr the MAIN query
 
 In this case we try to fins all the femal that eat pepperoni pizza and mushroom pizza. The first subquery find the ones that east pepperoni pizza and the second query finds the ones that eat musgroom pizza, the MAIN query connects the 2 subquerys throught an and.
select name
from Person
where gender='female'
and exists (select Eats.name from Eats
            where Eats.name=Person.name
            and pizza='pepperoni')
and exists (select Eats.name from Eats
            where Eats.name=Person.name
            and pizza='mushroom')
~~~

## UNION & INTERSECT ♾

With the standard set operations UNION, INTERSECT, and EXCEPT/MINUS, you can combine the results from two or more SELECT statements to build more complex queries.

- Union: Set operation that returns rows from two query expressions, regardless of whether the rows come from one or both expressions.
- Intersect: Set operation that returns the rows that come from two query expressions .
- 
~~~
The INTERSECT operator takes precedence over the UNION and EXCEPT operators when a combination of operators is used in the same query: 

This query evaluates  the intersection of eats  and person, and then joins the result with sales. It will return the name of the persons and the products.

SELECT name FROM eats
INTERSECT
SELECT name FROM person
UNION
SELECT product FROM sales;

This oder query evaluates  the intersection of eats  and sales, and then joins the result with persona. It will return only the name of the persons from persona, since there is no common column between the tables eats and sales.

SELECT name FROM eats
INTERSECT
SELECT total FROM sales
UNION
SELECT name FROM person;
~~~





