SELECT c_name, COUNT(*)
FROM Q1, Q5
WHERE
c_custkey == o_custkey AND
c_nation == 'GERMANY' AND
o_orderyear BETWEEN '1995' AND '1995'
GROUP BY c_name