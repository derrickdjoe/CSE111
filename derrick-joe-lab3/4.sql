SELECT MAX(ROUND(ABS(julianday(l_commitdate) - julianday(l_shipdate)))) FROM lineitem;
