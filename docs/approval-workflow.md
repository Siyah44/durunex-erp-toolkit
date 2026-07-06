# Approval Workflow

Approval logic should be clear before coding starts.

## Basic Flow

```text
Document created
System checks approval rules
If no rule exists, document can continue
If rule exists, document waits for approval
Approver approves or rejects
Approved document continues
Rejected document stops
```

## Important Rules

- If there is no active approval template, the document should not be blocked.
- If there is an active matching approval template, the document should wait for approval.
- Approval rules should be visible and easy to explain.
- Approval result should be stored with date, user, and note.

## Example Conditions

Approval may be required when:

- Amount is above a limit
- Warehouse is specific
- Department is specific
- Vendor or customer is specific
- Discount rate is high
- Payment term is risky

## Risk

This can be misleading if every document is forced into approval.

Some documents may not need approval. Blocking everything slows down the business and creates unnecessary work.
