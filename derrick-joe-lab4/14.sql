SELECT r2.r_name, r1.r_name, SUM(l_extendedprice)
FROM region r1, region r2, lineitem, customer, nation n1, nation n2, supplier, orders
WHERE
l_orderkey == o_orderkey AND
o_custkey == c_custkey AND
c_nationkey == n1.n_nationkey AND 
n1.n_regionkey == r1.r_regionkey AND 
l_suppkey == s_suppkey AND
s_nationkey == n2.n_nationkey AND
n2.n_regionkey == r2.r_regionkey
GROUP BY r2.r_name, r1.r_name;