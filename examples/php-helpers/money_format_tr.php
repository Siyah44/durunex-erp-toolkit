<?php
/**
 * Simple Turkish money parser example.
 *
 * Examples:
 * 7500       -> 7500.00
 * 7.500,25   -> 7500.25
 * 7500,25    -> 7500.25
 * 7.500      -> 7500.00
 */

function parse_money_tr($value)
{
    $value = trim((string)$value);

    if ($value === '') {
        return 0.0;
    }

    $value = str_replace(' ', '', $value);

    $hasComma = strpos($value, ',') !== false;
    $hasDot = strpos($value, '.') !== false;

    if ($hasComma && $hasDot) {
        $value = str_replace('.', '', $value);
        $value = str_replace(',', '.', $value);
        return (float)$value;
    }

    if ($hasComma) {
        $value = str_replace(',', '.', $value);
        return (float)$value;
    }

    if ($hasDot) {
        $parts = explode('.', $value);

        if (count($parts) === 2 && strlen($parts[1]) <= 2) {
            return (float)$value;
        }

        $value = str_replace('.', '', $value);
        return (float)$value;
    }

    return (float)$value;
}

function format_money_tr($value)
{
    return number_format((float)$value, 2, ',', '.');
}
