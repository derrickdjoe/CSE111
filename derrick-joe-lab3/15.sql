SELECT n_name, strftime('%Y', o_orderdate), COUNT(*)
FROM nation, lineitem, supplier, orders
WHERE
o_orderpriority == '3-MEDIUM' AND
o_orderkey == l_orderkey AND
l_suppkey == s_suppkey AND
s_nationkey == n_nationkey
GROUP BY strftime('%Y', o_orderdate), n_name
ORDER BY n_name;
