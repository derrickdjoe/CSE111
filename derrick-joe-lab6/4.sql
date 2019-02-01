SELECT COUNT(s_name)
FROM supplier
WHERE
s_name IN (SELECT s_name FROM nation, orders, part, supplier, partsupp WHERE n_nationkey = s_nationkey AND s_suppkey = ps_suppkey AND ps_partkey = p_partkey AND n_name = 'CANADA' GROUP BY s_name HAVING COUNT(DISTINCT p_name) >= 4)