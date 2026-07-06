# Architecture Notes

The toolkit follows a simple ERP module structure.

## Suggested Layers

```text
UI screen
API endpoint
Service class
Repository or query file
Database
```

## General Rule

Business rules should not be hidden inside the screen file.

A better structure is:

- Screen handles form display.
- API handles request and response.
- Service handles business decision.
- Query file or repository handles database access.

## Example

For a purchase approval process:

```text
purchase_form.php
purchase_api.php
PurchaseApprovalService.php
approval_queries.sql
```

## Why This Matters

When business rules stay in one place, the project is easier to test and safer to change.

If approval, authorization, posting control, and report logic are mixed inside one long file, every small change becomes risky.
