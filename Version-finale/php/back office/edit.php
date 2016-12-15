<?php

require_once "connect.php";

if(isset($_GET['id'])){
    $id = (int) $_GET['id'];
} else {
    header('Location: back-office.php');
}
$sql = "SELECT
    `id`,
    `titre`,
    `realisateur`,
    `date`,
    `genre`
FROM
    `films`
WHERE
  id = :id
;";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_ASSOC);

if(!$row){
    header('Location : back-office.php');
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Modifier : <?=$row['titre']?></title>
</head>
<body>
<form action="dochange.php" method="post">
        <input type="hidden" name="id" value="<?=$row['id']?>">
    <h1>Modifier le film <?=$row['titre']?></h1>
    <p>
        <label for="nom">Titre</label><br>
        <input type="text" id="titre" name="titre" value="<?=$row['titre']?>">
    </p>
    <p>
        <label for="realisateur">Type</label><br>
        <input type="text" id="realisateur" name="realisateur" value="<?=$row['realisateur']?>">
    </p>
    <p>
        <label for="img">Date</label><br>
        <input type="text" id="img" name="epoque" value="<?=$row['date']?>">
    </p>
    <p>
        <label for="genre">Genre</label><br>
        <input type="text" id="genre" name="genre" value="><?=$row['genre']?>">
    </p>
    <p>
        <label for="image">Image</label><br>
        <input type="text" id="image" name="image" value="><?=$row['img']?>">
    </p>

    <p>
        <input type="submit" value="Modifier">
    </p>
</form>
</body>
</html>
