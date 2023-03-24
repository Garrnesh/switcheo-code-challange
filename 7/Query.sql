SELECT balance.address, SUM(balance.amount*
CASE
    WHEN balances.denom=='usdc' THEN 0.000001
    WHEN balances.denom=='swth' THEN 0.00000005
    WHEN balances.denom=='tmz' THEN 0.003
END
)AS account_balance
FROM balances
GROUP BY balance.address
HAVING account_balance >= 500;
INNER JOIN (SELECT DISTINCT address FROM trades) AS t
on t.address = balance.address;