<?php
// connecxion a l abase de données (phpmyadmin)
try{
    $pdo = new PDO('mysql:dbname=tuto;host=localhost','root','root');
} catch(PDOException $exception) {
    die($exception->getMessage());
}
$pdo->exec("SET NAMES UTF8");
