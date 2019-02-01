SELECT n.n_name, (-a.diff+b.diff)/a.diff, (c.diff-b.diff)/b.diff
FROM(
(SELECT n_name ,SUM(difference) as diff
FROM (
SELECT n_name,SUM(l_extendedprice) as difference
FROM lineitem,nation , supplier, customer, orders
WHERE l_suppkey = s_suppkey AND s_nationkey = n_nationkey AND c_nationkey <> n_nationkey AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_shipdate BETWEEN '1994-00-00' AND '1994-12-50'
GROUP BY n_name

UNION ALL

SELECT n_name, -1*(SUM(l_extendedprice)) as difference
FROM lineitem,nation , supplier, customer, orders
WHERE l_suppkey = s_suppkey AND c_nationkey = n_nationkey AND s_nationkey <> n_nationkey AND c_custkey = o_custkey AND l_orderkey = o_orderkey  AND l_shipdate BETWEEN '1994-00-00' AND '1994-12-50'
GROUP BY n_name
)
GROUP BY n_name
) as a
,
(SELECT n_name ,SUM(difference) as diff
FROM (
SELECT n_name,SUM(l_extendedprice) as difference
FROM lineitem,nation , supplier, customer, orders
WHERE l_suppkey = s_suppkey AND s_nationkey = n_nationkey AND c_nationkey <> n_nationkey AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_shipdate BETWEEN '1995-00-00' AND '1995-12-50'
GROUP BY n_name

UNION ALL

SELECT n_name, -1*(SUM(l_extendedprice)) as difference
FROM lineitem,nation , supplier, customer, orders
WHERE l_suppkey = s_suppkey AND c_nationkey = n_nationkey AND s_nationkey <> n_nationkey AND c_custkey = o_custkey AND l_orderkey = o_orderkey  AND l_shipdate BETWEEN '1995-00-00' AND '1995-12-50'
GROUP BY n_name
)
GROUP BY n_name
) as b
,
(SELECT n_name ,SUM(difference) as diff
FROM (
SELECT n_name,SUM(l_extendedprice) as difference
FROM lineitem,nation , supplier, customer, orders
WHERE l_suppkey = s_suppkey AND s_nationkey = n_nationkey AND c_nationkey <> n_nationkey AND c_custkey = o_custkey AND l_orderkey = o_orderkey AND l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'
GROUP BY n_name

UNION ALL

SELECT n_name, -1*(SUM(l_extendedprice)) as difference
FROM lineitem,nation , supplier, customer, orders
WHERE l_suppkey = s_suppkey AND c_nationkey = n_nationkey AND s_nationkey <> n_nationkey AND c_custkey = o_custkey AND l_orderkey = o_orderkey  AND l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'
GROUP BY n_name
)
GROUP BY n_name
) as c
,nation n
)
WHERE a.n_name = n.n_name AND b.n_name = n.n_name AND c.n_name = n.n_name
GROUP BY n.n_name

