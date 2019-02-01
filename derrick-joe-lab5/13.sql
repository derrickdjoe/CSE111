SELECT o_orderpriority, COUNT(DISTINCT o_orderkey)
FROM orders, lineitem
WHERE
(julianday(l_commitdate) - julianday(l_receiptdate)) < 0 AND
o_orderdate BETWEEN '1996-10-00' AND '1996-12-50' AND
l_orderkey == o_orderkey
GROUP BY
o_orderpriority