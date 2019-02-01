SELECT n_name, COUNT(*)
FROM nation, region, customer, orders
WHERE
r_name == 'EUROPE' AND
r_regionkey == n_regionkey AND
n_nationkey == c_nationkey AND
c_custkey == o_custkey
GROUP BY n_name