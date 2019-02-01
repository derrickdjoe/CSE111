DROP TRIGGER t10;

CREATE TRIGGER t10 AFTER INSERT ON orders
FOR EACH ROW
BEGIN
UPDATE orders SET o_orderdate = DATETIME('NOW', '+1 day');
END;

INSERT INTO orders
SELECT o_orderkey, o_custkey, o_orderstatus, o_totalprice, '', o_orderpriority, o_clerk, o_shippriority, o_comment
FROM orders
WHERE
o_orderdate LIKE '%1996-08%';

SELECT *
FROM orders
WHERE
o_orderdate LIKE '%2018%';

/*will return nothing if o_orderdate = DATETIME('NOW', '+1 day') b/c the DATETIME seconds field has changed, so use matcher 2018 as a hack*/
