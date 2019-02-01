SELECT n_name, COUNT(*)
FROM nation, supplier
WHERE
n_nationkey == s_nationkey
GROUP BY n_name