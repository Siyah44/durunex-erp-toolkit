/*
Purchase Summary Report

Purpose:
Shows purchase invoice totals by vendor.

Notes:
- SELECT only.
- Uses OPCH purchase invoice header.
*/

SELECT TOP 100
    T0.[CardCode],
    T0.[CardName],
    COUNT(T0.[DocEntry]) AS [InvoiceCount],
    SUM(T0.[DocTotal] - T0.[VatSum]) AS [NetTotal],
    SUM(T0.[VatSum]) AS [VatTotal],
    SUM(T0.[DocTotal]) AS [GrossTotal]
FROM OPCH T0
WHERE T0.[CANCELED] = 'N'
GROUP BY
    T0.[CardCode],
    T0.[CardName]
ORDER BY
    [GrossTotal] DESC;
