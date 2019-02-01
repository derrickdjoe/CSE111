SELECT SUM(o_totalprice) FROM orders, customer, nation, region WHERE
o_custkey == c_custkey AND
c_nationkey == n_nationkey AND
n_regionkey == r_regionkey AND
r_regionkey == 3 AND 
o_orderdate BETWEEN '1996-00-00' AND '1997-00-00';
