SELECT s_name, s_acctbal FROM supplier WHERE s_acctbal == (SELECT MIN(s_acctbal) FROM supplier);
