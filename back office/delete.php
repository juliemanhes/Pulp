<?php
require_once "connect.php";
if(isset($_GET['id'])){
    $id = (int) $_GET['id'];
} else {
    header('Location: back-office.php');
}
$sql = "DELETE FROM
    `films` 
WHERE 
  id = :id
;";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$stmt->execute();
header('Location: back-office.php');