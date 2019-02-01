SELECT DISTINCT(n_name) FROM nation, customer, orders WHERE 
n_nationkey == c_nationkey AND 
o_custkey == c_custkey AND
o_orderdate BETWEEN '1996-12-00' AND '1996-12-40';
