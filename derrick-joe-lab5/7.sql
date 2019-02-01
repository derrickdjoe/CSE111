SELECT o_orderpriority, COUNT(o_orderkey)
FROM orders, lineitem
WHERE
o_orderkey == l_orderkey AND
(julianday(l_receiptdate) - julianday(l_commitdate)) < 0 AND
o_orderdate BETWEEN '1996-00-00' AND '1996-12-50'
GROUP BY
o_orderpriority