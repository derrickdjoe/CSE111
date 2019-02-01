SELECT n_name, COUNT(DISTINCT o_orderkey)
FROM nation, orders, supplier, region, lineitem
WHERE
s_nationkey == n_nationkey AND
n_regionkey == r_regionkey AND
r_name == 'AMERICA' AND
o_orderstatus == 'F' AND
o_orderkey == l_orderkey AND
l_suppkey == s_suppkey AND
o_orderdate BETWEEN '1995-01-00' AND '1995-12-50'
GROUP BY n_name