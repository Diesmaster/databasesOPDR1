SELECT a.aname
FROM actor a, oscar o
WHERE a.a_id = o.a_id AND a.genre = o.genre;
--were the oscar is won by the actor and the genre is the same
