/*
Open Sales Orders

Purpose:
Shows open sales order lines.

Notes:
- SELECT only.
- Adjust fields if your database has user-defined fields.
*/

SELECT TOP 200
    T0.[DocNum],
    T0.[DocDate],
    T0.[DocDueDate],
    T0.[CardCode],
    T0.[CardName],
    T1.[ItemCode],
    T1.[Dscription],
    T1.[Quantity],
    T1.[OpenQty],
    T1.[LineTotal],
    T0.[SlpCode]
FROM ORDR T0
INNER JOIN RDR1 T1 ON T1.[DocEntry] = T0.[DocEntry]
WHERE T0.[CANCELED] = 'N'
  AND T1.[LineStatus] = 'O'
ORDER BY
    T0.[DocDueDate],
    T0.[DocNum];
