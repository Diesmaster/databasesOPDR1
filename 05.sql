SELECT a.aname
FROM movie m, actor a, starring s
WHERE m.m_id = s.m_id AND a.a_id = s.a_id AND a.aname LIKE "JOHN FIST" AND m.age_req < 13;
--WHERE: movie of john fist, and minimum age is 12
