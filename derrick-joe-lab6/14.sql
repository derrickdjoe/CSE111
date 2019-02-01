SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'ALGERIA' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('ALGERIA') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'ALGERIA' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('ALGERIA') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'
UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'ARGENTINA' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('ARGENTINA') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'ARGENTINA' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('ARGENTINA') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'ARGENTINA' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('ARGENTINA') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'ARGENTINA' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('ARGENTINA') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'BRAZIL' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('BRAZIL') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'BRAZIL' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('BRAZIL') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'CANADA' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('CANADA') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'CANADA' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('CANADA') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'CHINA' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('CHINA') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'CHINA' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('CHINA') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'EGYPT' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('EGYPT') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'EGYPT' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('EGYPT') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'ETHIOPIA' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('ETHIOPIA') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'ETHIOPIA' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('ETHIOPIA') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'FRANCE' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('FRANCE') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'ARGENTINA' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('ARGENTINA') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'FRANCE' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('FRANCE') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'ARGENTINA' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('ARGENTINA') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'GERMANY' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('GERMANY') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'GERMANY' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('GERMANY') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'INDIA' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('INDIA') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'INDIA' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('INDIA') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'INDONESIA' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('INDONESIA') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'INDONESIA' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('INDONESIA') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'IRAN' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('IRAN') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'IRAN' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('IRAN') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'IRAQ' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('IRAQ') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'IRAQ' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('IRAQ') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'JAPAN' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('JAPAN') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'JAPAN' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('JAPAN') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'JORDAN' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('JORDAN') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'JORDAN' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('JORDAN') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'KENYA' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('KENYA') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'KENYA' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('KENYA') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'MOROCCO' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('MOROCCO') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'MOROCCO' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('MOROCCO') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'MOZAMBIQUE' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('MOZAMBIQUE') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'MOZAMBIQUE' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('MOZAMBIQUE') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'PERU' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('PERU') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'PERU' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('PERU') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'ROMANIA' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('ROMANIA') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'ROMANIA' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('ROMANIA') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'RUSSIA' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('RUSSIA') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'RUSSIA' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('RUSSIA') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'SAUDI ARABIA' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('SAUDI ARABIA') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'SAUDI ARABIA' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('SAUDI ARABIA') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'UNITED KINGDOM' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('UNITED KINGDOM') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'UNITED KINGDOM' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('UNITED KINGDOM') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'UNITED STATES' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('UNITED STATES') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'UNITED STATES' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('UNITED STATES') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'

UNION SELECT n1.n_name, (SELECT SUM(l2.l_extendedprice)
FROM nation n3, nation n4, orders o2, supplier s2, customer c2, lineitem l2
WHERE
n3.n_name = 'VIETNAM' AND
n3.n_nationkey = s2.s_nationkey AND
s2.s_suppkey = l2.l_suppkey AND
l2.l_orderkey = o2.o_orderkey AND
o2.o_custkey = c2.c_custkey AND
c2.c_nationkey = n4.n_nationkey AND
n4.n_name NOT IN ('VIETNAM') AND
l2.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50') - SUM(l1.l_extendedprice)
FROM nation n1, nation n2, customer c1, supplier s1, orders o1, lineitem l1
WHERE
n1.n_name = 'VIETNAM' AND
n1.n_nationkey = c1.c_nationkey AND
c1.c_custkey = o1.o_custkey AND
o1.o_orderkey = l1.l_orderkey AND
l1.l_suppkey = s1.s_suppkey AND
s1.s_nationkey = n2.n_nationkey AND
n2.n_name NOT IN ('VIETNAM') AND
l1.l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'
GROUP BY n1.n_name