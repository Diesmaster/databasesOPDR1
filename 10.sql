--same as last query only year has been substituted for genre
SELECT o.year
FROM (SELECT o2.year AS year, COUNT(*) as num
FROM oscar o2
GROUP BY o2.year) o
WHERE o.num in (SELECT MAX(o3.num)
FROM (SELECT COUNT(*) AS num
FROM oscar o3
GROUP BY o3.year) o3);
