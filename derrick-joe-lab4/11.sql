SELECT r_name, s_name
FROM nation, supplier, region
WHERE
n_nationkey == s_nationkey AND
n_regionkey == r_regionkey
GROUP BY r_name
ORDER BY r_name, MAX(s_acctbal)
