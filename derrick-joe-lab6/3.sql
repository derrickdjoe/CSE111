SELECT COUNT(*)
FROM part
WHERE
p_name IN (SELECT p_name FROM part, supplier, partsupp, nation WHERE n_nationkey = s_nationkey AND s_suppkey = ps_suppkey AND ps_partkey = p_partkey AND n_name = 'CANADA' GROUP BY p_name HAVING COUNT(*) > 1)