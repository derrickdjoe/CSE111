CREATE TRIGGER t5 AFTER DELETE ON part
FOR EACH ROW
BEGIN
DELETE FROM partsupp WHERE ps_partkey = OLD.p_partkey;
DELETE FROM lineitem WHERE l_partkey = OLD.p_partkey;
END;

DELETE
FROM part
WHERE
p_partkey IN (SELECT ps_partkey FROM partsupp, supplier, nation WHERE s_nationkey = n_nationkey AND n_name IN ('FRANCE', 'GERMANY') AND s_suppkey = ps_suppkey);

SELECT AVG(ps_supplycost), n_name
FROM partsupp, supplier, nation, region
WHERE
n_nationkey = s_nationkey AND
s_suppkey = ps_suppkey AND
n_regionkey = r_regionkey AND
r_name = 'EUROPE'
GROUP BY n_name;
