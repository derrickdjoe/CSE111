SELECT COUNT(DISTINCT o_orderkey)
FROM Q1, Q2, orders, lineitem
WHERE
c_nation == (SELECT c_nation FROM Q1 WHERE c_nation == 'CANADA') AND
s_region == 'EUROPE' AND
c_custkey == o_custkey AND
o_orderkey == l_orderkey AND
l_suppkey == s_suppkey