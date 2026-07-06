/*
Bank Balance Summary

Purpose:
Shows account balances for bank related accounts.

Notes:
- SELECT only.
- Account code prefix may change by company chart of accounts.
- Common Turkish chart of accounts uses 102 for banks.
*/

SELECT TOP 100
    T0.[AcctCode],
    T0.[AcctName],
    T0.[CurrTotal],
    T0.[ActCurr]
FROM OACT T0
WHERE T0.[AcctCode] LIKE '102%'
ORDER BY
    T0.[AcctCode];
