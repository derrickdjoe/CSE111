SELECT n_name, COUNT(*), AVG(s_acctbal) AS numsupplier FROM nation, supplier WHERE
s_nationkey == n_nationkey
GROUP BY n_name
HAVING COUNT(*) >= 5;
