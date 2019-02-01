SELECT c_name, COUNT(*)
FROM customer, nation, orders
WHERE
c_custkey == o_custkey AND
c_nationkey == n_nationkey AND
n_name == 'GERMANY' AND
o_orderdate BETWEEN '1995-01-00' AND '1995-12-50'
GROUP BY c_name