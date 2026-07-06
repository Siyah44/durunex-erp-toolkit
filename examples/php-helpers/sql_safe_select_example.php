<?php
/**
 * Example: simple SELECT query with parameters.
 *
 * This file is only an example. Do not put real passwords or server details here.
 */

function get_customer_balance_example(PDO $pdo, $cardCode)
{
    $sql = "
        SELECT TOP 50
            T0.CardCode,
            T0.CardName,
            T0.Balance
        FROM OCRD T0
        WHERE T0.CardType = 'C'
          AND T0.CardCode = :CardCode
        ORDER BY T0.CardCode
    ";

    $stmt = $pdo->prepare($sql);
    $stmt->execute([
        ':CardCode' => $cardCode
    ]);

    return $stmt->fetchAll(PDO::FETCH_ASSOC);
}
