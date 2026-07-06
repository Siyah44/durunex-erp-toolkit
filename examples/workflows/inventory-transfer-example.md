# Inventory Transfer Example

## Purpose

This workflow is used for warehouse-to-warehouse stock movement.

## Basic Steps

1. User creates transfer request.
2. Source warehouse stock is checked.
3. Authorization is checked.
4. Approval is checked if needed.
5. Transfer document is created.
6. Stock report is reviewed.

## Example

```text
Source warehouse: Raw Material
Target warehouse: Production
Document type: Stock Transfer
Status: Open / Approved / Completed
```

## Risk Points

- Negative stock
- Wrong warehouse
- Wrong item
- Wrong batch
- Transfer without approval
