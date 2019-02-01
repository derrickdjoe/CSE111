SELECT s_name, COUNT(*)
FROM supplier, partsupp, part, nation
WHERE
s_suppkey == ps_suppkey AND
ps_partkey == p_partkey AND
p_size < 20 AND
s_nationkey == n_nationkey AND
n_name == 'BRAZIL'
GROUP BY s_name