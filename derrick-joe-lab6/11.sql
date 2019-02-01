SELECT n_name
FROM nation, customer
WHERE
n_nationkey = c_nationkey
GROUP BY n_name
HAVING COUNT(c_custkey) = (SELECT COUNT(c_custkey) FROM nation, customer WHERE n_nationkey = c_nationkey GROUP BY n_name ORDER BY COUNT(c_custkey) DESC LIMIT 1)