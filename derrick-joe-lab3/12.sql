SELECT r_name, count(*) AS occurances FROM nation, region, orders, customer WHERE
n_nationkey == c_nationkey AND
n_regionkey == r_regionkey AND
c_custkey == o_custkey AND
o_orderstatus == 'F'
GROUP BY r_name
ORDER BY occurances DESC, r_name;
