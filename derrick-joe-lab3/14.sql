SELECT SUM(CASE WHEN o_orderpriority LIKE '1-URGENT' THEN 1 ELSE 0 END) 
FROM nation, customer, orders
WHERE
o_orderpriority == '1-URGENT' AND
o_custkey == c_custkey AND
c_nationkey == n_nationkey AND
n_name == 'BRAZIL' AND
o_orderdate BETWEEN '1994-00-00' AND '1997-12-99';
