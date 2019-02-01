SELECT COUNT(*)
FROM customer
WHERE
c_name IN (SELECT c_name FROM customer, orders WHERE c_custkey = o_custkey AND o_orderdate BETWEEN '1995-08-00' AND '1995-08-50' GROUP BY c_name HAVING COUNT(*) <= 2)