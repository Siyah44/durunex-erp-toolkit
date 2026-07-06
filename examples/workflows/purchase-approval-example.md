# Purchase Approval Example

## Purpose

This workflow is used when a purchase document needs approval before continuing.

## Basic Steps

1. User creates a purchase request or purchase order.
2. System checks approval rules.
3. If no rule exists, document continues.
4. If a rule exists, document status becomes pending.
5. Authorized user approves or rejects.
6. Approved document continues to next step.

## Example Approval Conditions

| Condition | Approval Needed |
|---|---|
| Net amount above limit | Yes |
| New vendor | Yes |
| Special item group | Yes |
| Normal low amount purchase | No |

## Control Points

- Amount should be clearly defined.
- Currency should be checked.
- Approver should have permission.
- Approval date and user should be stored.
