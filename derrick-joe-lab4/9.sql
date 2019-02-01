SELECT COUNT(DISTINCT o_clerk)
FROM nation, supplier, orders, lineitem
WHERE
n_name == 'RUSSIA' AND
n_nationkey == s_nationkey AND
s_suppkey == l_suppkey AND
l_orderkey == o_orderkey