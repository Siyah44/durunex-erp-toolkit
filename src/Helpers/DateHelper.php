<?php

namespace DuruNex\Helpers;

class DateHelper
{
    public static function today(): string
    {
        return date('Y-m-d');
    }

    public static function isValidSqlDate($date): bool
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

    public static function dateOrToday($date): string
    {
        if (self::isValidSqlDate($date)) {
            return $date;
        }

        return self::today();
    }
}
