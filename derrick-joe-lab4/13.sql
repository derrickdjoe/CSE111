SELECT COUNT(DISTINCT o_orderkey)
FROM customer, nation, supplier, region, orders, lineitem
WHERE
c_nationkey == (SELECT c_nationkey FROM customer, nation WHERE c_nationkey == n_nationkey AND n_name == 'CANADA') AND
s_nationkey == n_nationkey AND
n_regionkey == r_regionkey AND
r_name == 'EUROPE' AND
c_custkey == o_custkey AND
o_orderkey == l_orderkey AND
l_suppkey == s_suppkey