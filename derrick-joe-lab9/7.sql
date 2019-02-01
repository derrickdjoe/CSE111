SELECT c_nation, o_orderstatus, COUNT(*)
FROM Q1, Q5
WHERE
c_custkey == o_custkey AND
c_region == 'ASIA'
GROUP BY o_orderstatus, c_nation
ORDER BY c_nation