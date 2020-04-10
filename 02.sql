SELECT a.age, a.name
FROM actor a
WHERE a.age < 18 OR a.age > 65
ORDER BY a.age ASC;
--find all actors with are less then 18 or more then 65
