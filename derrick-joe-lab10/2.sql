CREATE TRIGGER t1 AFTER UPDATE ON customer 
WHEN OLD.c_acctbal <> NEW.c_acctbal
BEGIN
UPDATE customer SET c_comment = "Negative balance!!  Add money now!"
WHERE c_acctbal < 0;
END;

CREATE TRIGGER t2 AFTER UPDATE ON customer
WHEN OLD.c_acctbal <> NEW.c_acctbal
BEGIN
UPDATE customer SET c_comment = "removed alert"
WHERE c_acctbal > -1;
END;

UPDATE customer
SET c_acctbal = -100
WHERE 
c_nationkey IN (SELECT n_nationkey FROM nation, region WHERE n_regionkey = r_regionkey AND r_name = 'ASIA');

SELECT COUNT(*)
FROM customer, nation
WHERE
n_name = 'CHINA' AND
n_nationkey = c_nationkey AND
c_acctbal < 0;

UPDATE customer
SET c_acctbal = 100
WHERE
c_nationkey = (SELECT n_nationkey FROM nation WHERE n_name = 'JAPAN');

SELECT COUNT(*)
FROM customer, nation, region
WHERE
r_name = 'ASIA' AND
n_regionkey = r_regionkey AND
n_nationkey = c_nationkey AND
c_acctbal < 0;
