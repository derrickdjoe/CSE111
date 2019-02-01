SELECT s_region, s_name
FROM Q2
GROUP BY s_region
ORDER BY s_region, MAX(s_acctbal)