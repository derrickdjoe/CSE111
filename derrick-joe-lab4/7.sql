SELECT n_name, o_orderstatus, COUNT(*)
FROM nation, customer, orders, region
WHERE
n_nationkey == c_nationkey AND
c_custkey == o_custkey AND
n_regionkey == r_regionkey AND
r_name == 'ASIA'
GROUP BY o_orderstatus, n_name
ORDER BY n_name