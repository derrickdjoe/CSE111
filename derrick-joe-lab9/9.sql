SELECT COUNT(DISTINCT o_clerk)
FROM Q2, Q5, lineitem
WHERE
s_nation == 'RUSSIA' AND
s_suppkey == l_suppkey AND
l_orderkey == o_orderkey