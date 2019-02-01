SELECT s_name, c_name
FROM supplier, orders, customer, lineitem
WHERE
c_custkey = o_custkey AND
o_orderkey = l_orderkey AND
l_suppkey = s_suppkey AND
o_totalprice = (SELECT MAX(o_totalprice) FROM orders WHERE o_orderstatus = 'F')
GROUP BY s_name
ORDER BY o_totalprice DESC