SELECT s_name, COUNT(*)
FROM Q2, partsupp, part
WHERE
s_suppkey == ps_suppkey AND
ps_partkey == p_partkey AND
p_size < 20 AND
s_nation == 'BRAZIL'
GROUP BY s_name