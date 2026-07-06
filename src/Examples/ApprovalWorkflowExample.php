<?php

namespace DuruNex\Examples;

class ApprovalWorkflowExample
{
    public function checkPurchaseApproval(float $netAmount, string $currency): string
    {
        if ($currency !== 'TRY') {
            return 'PENDING';
        }

        if ($netAmount >= 100000) {
            return 'PENDING';
        }

        return 'NOT_REQUIRED';
    }

    public function getStatusText(string $status): string
    {
        if ($status === 'PENDING') {
            return 'Waiting for approval';
        }

        if ($status === 'APPROVED') {
            return 'Approved';
        }

        if ($status === 'REJECTED') {
            return 'Rejected';
        }

        return 'Approval not required';
    }
}
