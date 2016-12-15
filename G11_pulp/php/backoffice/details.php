<?php
require_once "../connect.php";
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
    `genre`,
    `description`,
     `img`
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
    header('Location: back-office.php');
}
?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Details de : <?=$row['nom']?></title>
    <style>
        .pokevisible{
            color: #128f27;
        }
        .pokecache{
            color: #ff9900;
        }
    </style>
</head>
<body>
<p><a href="back-office.php">&lt; Index</a></p>
<h1 class="<?=($row['visible']?'pokevisible':'pokecache');?>"><?=$row['titre']?></h1>
<h2>Titre</h2>
<p><?=$row['titre']?></p>
<h2>realisateur</h2>
<p><?=nl2br($row['realisateur']);?></p>
<h2>date</h2>
<p><?=$row['date']?></p>
<h2>genre</h2>
<p><?=$row['genre']?></p>
<h2>description</h2>
<p><?=$row['description']?></p>
<h2>Image</h2>
<?php
if ($row['img'] !== '') :
    ?>
    <img src="../img/<?=$row['img']?>" alt="" width="50">
<?php else :?>
    <img src="../img/Captain_Placeholder.jpg" alt="" width="200">
<?php endif;?>
</body>
</html>
