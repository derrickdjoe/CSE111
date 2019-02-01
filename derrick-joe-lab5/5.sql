SELECT s_name, p_size, MIN(ps_supplycost)
FROM supplier, partsupp, part, nation, region
WHERE
r_name == 'AMERICA' AND
r_regionkey == n_regionkey AND
n_nationkey == s_nationkey AND
s_suppkey == ps_suppkey AND
ps_partkey == p_partkey AND
p_type LIKE '%STEEL%'
GROUP BY
p_size
ORDER BY
s_name