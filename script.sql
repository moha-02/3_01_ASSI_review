--- THREE WAY LOGIC
select null;

select null = 1;

select null = null;

select (null=1) or (1=1);

select (null=1) and (1=0);

-------------------------------------------------

--- AGGREGATION AND GROUPING
SELECT 
    product,
    AVG(unit_price) AS avg_price,
    SUM(quantity) AS tot_pieces,
    SUM(total) AS total_gain
FROM sales
GROUP BY product
HAVING SUM(total) > 40000
ORDER BY total_gain DESC

-------------------------------------------------

--- SUBQUERYS
select name
from Person
where gender='female'
and exists (select Eats.name from Eats
            where Eats.name=Person.name
            and pizza='pepperoni')
and exists (select Eats.name from Eats
            where Eats.name=Person.name
            and pizza='mushroom')

--------------------------------------------

--- UNION & INTERSECT 

select * from t1
union
select * from t2
intersect
select * from t3
order by c1;
