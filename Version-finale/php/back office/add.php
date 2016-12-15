<?php


require_once "connect.php";
$sql = "INSERT INTO `films`
(`titre`, `realisateur`, `genre`, `date`,`description`, `img`)
VALUES
(:titre, :realisateur, :genre, :epoque, :description, :img);";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':titre', $_POST['titre'], PDO::PARAM_STR);
$stmt->bindValue(':realisateur', $_POST['realisateur'], PDO::PARAM_STR);
$stmt->bindValue(':epoque', (int)$_POST['date'], PDO::PARAM_INT);
$stmt->bindValue(':genre', $_POST['genre'], PDO::PARAM_STR);
$stmt->bindValue(':description', $_POST['description'], PDO::PARAM_STR);
$stmt->bindValue(':img', $_POST['img'], PDO::PARAM_STR);
$stmt->execute();

header('Location: back-office.php');