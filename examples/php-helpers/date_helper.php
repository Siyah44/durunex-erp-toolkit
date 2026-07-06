<?php
/**
 * Small date helper examples for ERP screens.
 */

function today_sql_date()
{
    return date('Y-m-d');
}

function is_valid_sql_date($date)
{
    if (!is_string($date) || strlen($date) !== 10) {
        return false;
    }

    $parts = explode('-', $date);

    if (count($parts) !== 3) {
        return false;
    }

    return checkdate((int)$parts[1], (int)$parts[2], (int)$parts[0]);
}

function date_or_today($date)
{
    if (is_valid_sql_date($date)) {
        return $date;
    }

    return today_sql_date();
}
