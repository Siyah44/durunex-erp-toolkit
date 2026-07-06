<?php

namespace DuruNex\Examples;

class AuthorizationExample
{
    public function canApprovePayment(array $permissions): bool
    {
        if (in_array('PAYMENT_APPROVE_DENY', $permissions, true)) {
            return false;
        }

        if (in_array('PAYMENT_APPROVE', $permissions, true)) {
            return true;
        }

        return false;
    }

    public function canViewModule(array $permissions, string $moduleCode): bool
    {
        return in_array($moduleCode . '_VIEW', $permissions, true);
    }
}
