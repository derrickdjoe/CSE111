SELECT c_nation, COUNT(*)
FROM Q1, orders
WHERE
c_region == 'EUROPE' AND
c_custkey == o_custkey
GROUP BY c_nation