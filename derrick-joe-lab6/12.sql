SELECT n_name
FROM nation, orders, customer
WHERE
c_custkey = o_custkey AND
c_nationkey = n_nationkey
GROUP BY n_name
HAVING COUNT(o_totalprice) = (SELECT COUNT(o_totalprice) FROM orders, nation, customer WHERE c_custkey = o_custkey AND c_nationkey = n_nationkey GROUP BY n_name ORDER BY COUNT(o_totalprice) DESC LIMIT 1)