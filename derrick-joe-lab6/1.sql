SELECT strftime ('%m', l_shipdate) , AVG(l_quantity)
FROM lineitem
WHERE
l_shipdate BETWEEN '1996-00-00' AND '1996-12-50'
GROUP BY strftime('%m', l_shipdate)