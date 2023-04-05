SELECT balances.address, SUM(balances.amount * ( --Remember to delete this section
CASE
    WHEN balances.denom ='usdc' THEN 0.000001
    WHEN balances.denom ='swth' THEN 0.00000005
    WHEN balances.denom ='tmz' THEN 0.003
END
))
FROM balances
INNER JOIN (SELECT DISTINCT address FROM trades WHERE block_height>73000) AS t
on t.address = balances.address
GROUP BY balances.address
HAVING SUM(balances.amount * (
CASE
    WHEN balances.denom ='usdc' THEN 0.000001
    WHEN balances.denom ='swth' THEN 0.00000005
    WHEN balances.denom ='tmz' THEN 0.003
END
)) >= 500;

