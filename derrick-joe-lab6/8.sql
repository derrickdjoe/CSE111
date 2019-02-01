SELECT COUNT(DISTINCT o_custkey)
FROM orders, customer
WHERE
c_custkey = o_custkey AND
o_orderkey NOT IN (SELECT DISTINCT o_orderkey FROM orders, lineitem, supplier, nation, region WHERE o_orderkey = l_orderkey AND l_suppkey = s_suppkey AND s_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name NOT IN('ASIA'))
