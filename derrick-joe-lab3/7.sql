SELECT l_receiptdate, COUNT(*) as numorders FROM lineitem, customer, orders WHERE 
l_orderkey == o_orderkey AND
o_custkey == c_custkey AND
c_name == 'Customer#000000118'
GROUP BY l_receiptdate;
