SELECT SUM(l_extendedprice * (1 - l_discount)) / (SELECT SUM(l_extendedprice * (1 - l_discount))
FROM lineitem, supplier, customer, nation n1, nation n2, region, orders
WHERE
c_nationkey == n1.n_nationkey AND
n1.n_regionkey == r_regionkey AND
r_name == 'EUROPE' AND
s_nationkey == n2.n_nationkey AND
n2.n_name NOT IN (SELECT r_name FROM region WHERE r_name == 'UNITED STATES') AND
c_custkey == o_custkey AND
o_orderkey == l_orderkey AND
l_suppkey == s_suppkey AND
l_shipdate BETWEEN '1996-00-00' AND '1996-12-50')
FROM lineitem, supplier, customer, nation n1, nation n2, region, orders
WHERE
c_nationkey == n1.n_nationkey AND
n1.n_regionkey == r_regionkey AND
r_name == 'EUROPE' AND
s_nationkey == n2.n_nationkey AND
n2.n_name == 'UNITED STATES' AND
c_custkey == o_custkey AND
o_orderkey == l_orderkey AND
l_suppkey == s_suppkey AND
l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'