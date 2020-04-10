SELECT st.sname, COUNT(*) --studio name and number of movies
FROM movie m, studio st
WHERE st.sname in (select st2.sname --where stio name made the mvoie
FROM studio st2
WHERE m.s_id = st2.s_id)
GROUP BY m.s_id --group by movies to count
