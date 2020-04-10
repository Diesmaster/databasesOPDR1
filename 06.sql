SELECT a.aname
FROM actor a
WHERE NOT EXISTS ( SELECT a.a_id  --if this is empty he did not win an oscar
FROM oscar o --and that would return true
WHERE a.a_id = o.a_id
);
