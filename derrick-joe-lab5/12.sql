SELECT ROUND(SUM(ps_supplycost), 2)
FROM part, partsupp
WHERE
p_partkey == ps_partkey AND
p_retailprice < 1000 AND
p_partkey IN( SELECT l_partkey FROM lineitem, partsupp WHERE ps_suppkey == l_suppkey AND l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') AND
ps_suppkey NOT IN( SELECT DISTINCT ps_suppkey FROM partsupp, lineitem, part WHERE ps_partkey == p_partkey AND p_partkey == l_partkey AND ps_suppkey = l_suppkey AND l_extendedprice < 1000 AND l_shipdate BETWEEN '1995-00-00' AND '1995-12-50')