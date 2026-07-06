/*
Inventory By Warehouse

Purpose:
Shows item stock by warehouse.

Notes:
- SELECT only.
- Uses OITW and OITM.
*/

SELECT TOP 200
    T0.[ItemCode],
    T1.[ItemName],
    T0.[WhsCode],
    T0.[OnHand],
    T0.[IsCommited],
    T0.[OnOrder],
    (T0.[OnHand] - T0.[IsCommited] + T0.[OnOrder]) AS [AvailableQty]
FROM OITW T0
INNER JOIN OITM T1 ON T1.[ItemCode] = T0.[ItemCode]
WHERE T0.[OnHand] <> 0
   OR T0.[IsCommited] <> 0
   OR T0.[OnOrder] <> 0
ORDER BY
    T0.[WhsCode],
    T0.[ItemCode];
