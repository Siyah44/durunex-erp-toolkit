# Payment Approval Example

## Purpose

This workflow is used before making vendor payments.

## Basic Steps

1. Payment request is prepared.
2. Vendor balance is checked.
3. Bank account is selected.
4. Approval rule is checked.
5. Payment waits for approval if required.
6. Approved payment can continue.

## Risk Points

- Duplicate payment
- Wrong vendor
- Wrong bank account
- Wrong currency
- Payment without approval
- Payment over balance

## Suggested Controls

- Check open vendor balance.
- Check same invoice is not already paid.
- Check bank account permission.
- Keep approval history.
