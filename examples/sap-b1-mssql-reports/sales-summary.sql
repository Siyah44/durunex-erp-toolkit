/*
Sales Summary Report

Purpose:
Shows sales invoice totals by customer.

Notes:
- SELECT only.
- Test before using in production.
- Adjust table and field names according to your SAP Business One database.
*/

SELECT TOP 100
    T0.[CardCode],
    T0.[CardName],
    COUNT(T0.[DocEntry]) AS [InvoiceCount],
    SUM(T0.[DocTotal] - T0.[VatSum]) AS [NetTotal],
    SUM(T0.[VatSum]) AS [VatTotal],
    SUM(T0.[DocTotal]) AS [GrossTotal]
FROM OINV T0
WHERE T0.[CANCELED] = 'N'
GROUP BY
    T0.[CardCode],
    T0.[CardName]
ORDER BY
    [GrossTotal] DESC;
