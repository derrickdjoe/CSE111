SELECT s_name, s_acctbal FROM supplier, nation, region WHERE
s_nationkey == n_nationkey AND
n_regionkey == r_regionkey AND
r_regionkey == 2 AND
s_acctbal > 1000;
