SELECT a.name, COUNT(m.profit)
FROM starring s, movie m, actor a,
WHERE a.a_id = s.a_id --find the movies from the actor
GROUP BY s.a_id ; --groupt them by that, count their provits
