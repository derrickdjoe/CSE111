SELECT p_mfgr
FROM partsupp, supplier, part
WHERE
ps_availqty == (SELECT MIN(ps_availqty) FROM partsupp, supplier WHERE s_name == 'Supplier#000000053' AND s_suppkey == ps_suppkey) AND
ps_partkey == p_partkey AND
s_suppkey == ps_suppkey AND
s_name == 'Supplier#000000053'