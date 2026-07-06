# Authorization Model

Authorization should answer a simple question:

Who can do what?

## Basic Permission Types

```text
View
Create
Update
Approve
Cancel
Export
Print
```

## Suggested Rule

Deny should be stronger than allow.

If a user gets permission from one role but is denied from another rule, the deny rule should win.

## Example

| User | Module | Action | Result |
|---|---|---|---|
| SalesUser | Sales Order | View | Allowed |
| SalesUser | Sales Order | Approve | Denied |
| FinanceUser | Payment | Approve | Allowed |
| WarehouseUser | Stock Transfer | Create | Allowed |

## Menu Visibility

Menu visibility and action permission should not be confused.

A user may see a menu but may not have permission to approve or export.

## Risk

Only hiding a menu is not enough security.

The API or backend action must also check permission.
