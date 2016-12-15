<?php
require_once "connect.php";

$sql = "UPDATE
    `films`
    SET 
    `titre`= :titre, 
    `realisateur`= :realisateur, 
    `date`= :epoque, 
    `genre`= :genre
    WHERE
    id = :id;";


$stmt = $pdo->prepare($sql);
$stmt->bindValue(':titre', $_POST['titre'], PDO::PARAM_STR);
$stmt->bindValue(':realisateur', $_POST['realisateur'], PDO::PARAM_STR);
$stmt->bindValue(':epoque', (int)$_POST['epoque'], PDO::PARAM_INT);
$stmt->bindValue(':genre', $_POST['genre'], PDO::PARAM_STR);
$stmt->bindValue(':id', (int)$_POST['id'], PDO::PARAM_INT);
$stmt->execute();


header('Location: details.php?id='.$_POST['id']);
