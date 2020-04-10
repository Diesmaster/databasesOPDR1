SELECT o.genre
FROM (SELECT o2.genre AS genre, COUNT(*) as num
FROM oscar o2 --select the numbers of times won by that genre
GROUP BY o2.genre) o --and the genre and store it in o
WHERE o.num in (SELECT MAX(o3.num) --chose the one where the number is the same as the max number 
FROM (SELECT COUNT(*) AS num --store the max times something
FROM oscar o3 --has been won
GROUP BY o3.genre) o3);
