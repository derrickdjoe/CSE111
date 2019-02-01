SELECT c_name, ROUND(SUM(o_totalprice), 2), n_name
FROM customer, orders, nation
WHERE 
n_name == 'FRANCE' AND
n_nationkey == c_nationkey AND
c_custkey == o_custkey
GROUP BY c_name