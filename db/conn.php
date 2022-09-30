<?php

$host = '127.0.0.1';
$db = 'attendee_db';
$user = 'root';
$pass = '';
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";

try {
    $pdo = new PDO($dsn, $user, $pass);
    // echo "Hello Database";
} catch (PDOException $e) {

    throw new PDOException($e->getMessage());
}

require_once 'crud.php';

$crud = new crud($pdo);