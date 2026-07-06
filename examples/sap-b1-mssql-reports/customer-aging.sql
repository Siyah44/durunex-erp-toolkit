/*
Customer Aging Report

Purpose:
Shows open customer balances by due date.

Notes:
- SELECT only.
- Basic example.
- Aging logic should be reviewed according to company rules.
*/

SELECT TOP 100
    T0.[CardCode],
    T0.[CardName],
    T0.[DocNum],
    T0.[DocDate],
    T0.[DocDueDate],
    T0.[DocTotal],
    T0.[PaidToDate],
    (T0.[DocTotal] - T0.[PaidToDate]) AS [OpenAmount],
    DATEDIFF(DAY, T0.[DocDueDate], GETDATE()) AS [DelayDays]
FROM OINV T0
WHERE T0.[CANCELED] = 'N'
  AND (T0.[DocTotal] - T0.[PaidToDate]) <> 0
ORDER BY
    T0.[DocDueDate],
    T0.[CardCode];
