SELECT balances.address
FROM balances
INNER JOIN trades
ON balances.address = trades.address
WHERE 