SELECT s_nation, COUNT(DISTINCT o_orderkey)
FROM Q2, Q5, lineitem
WHERE
s_region == 'AMERICA' AND
o_orderstatus == 'F' AND
o_orderkey == l_orderkey AND
l_suppkey == s_suppkey AND
o_orderyear BETWEEN '1995' AND '1995'
GROUP BY s_nation