SELECT r_name
FROM nation, supplier, customer, lineitem, orders, region
WHERE
n_nationkey = s_nationkey AND
c_nationkey = s_nationkey AND
n_regionkey = r_regionkey AND
l_suppkey = s_suppkey AND
l_orderkey = o_orderkey AND
c_custkey = o_custkey
GROUP BY r_name
ORDER BY SUM(l_extendedprice) DESC
LIMIT 1