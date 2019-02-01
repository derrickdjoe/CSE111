SELECT COUNT(*)
FROM supplier
WHERE s_name IN(SELECT s_name FROM nation, supplier, orders, customer, lineitem WHERE s_suppkey = l_suppkey AND l_orderkey = o_orderkey AND o_custkey = c_custkey AND c_nationkey = n_nationkey AND n_name IN ('GERMANY', 'FRANCE') GROUP BY s_name HAVING COUNT(o_orderkey) <= 30)
