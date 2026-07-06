# SAP Business One Inspired Workflows

This repository uses SAP Business One style document flow as a reference point.

It does not copy SAP Business One. It uses similar business concepts because many ERP users already understand this logic.

## Example Sales Flow

```text
Sales Quotation
Sales Order
Delivery
Sales Invoice
Collection
```

## Example Purchasing Flow

```text
Purchase Request
Purchase Order
Goods Receipt
Purchase Invoice
Payment
```

## Example Inventory Flow

```text
Warehouse Stock
Stock Transfer Request
Stock Transfer
Inventory Report
```

## Report Design Questions

Before writing a report, these questions should be clear:

| Question | Example |
|---|---|
| Which document? | Sales invoice, purchase invoice, order, delivery |
| Which amount? | Net, VAT included, discount included |
| Which date? | Posting date, document date, due date |
| Which status? | Open, closed, cancelled |
| Which user? | Salesperson, owner, creator |
| Which output? | Summary, detail, Excel, dashboard |
