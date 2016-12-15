<?php

require_once "connect.php";


$sql = "SELECT `id`, `titre`, `realisateur`, `date`, `genre`, `img`, `visible`, `description`

FROM `films`";

$stmt = $pdo->prepare($sql);
$stmt->execute();
$row = $stmt->fetch(PDO::FETCH_ASSOC);
?>


<!DOCTYPE html>

<html lang="fr">

<head>
  <meta charset="utf-8">
  <link rel="icon" type="image/png" href="../../img-layout/logo.png" />
  <link href="https://fonts.googleapis.com/css?family=Gentium+Book+Basic:400i" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
  <link rel="stylesheet" href="../../styles/style.css">
  <title>Back-Office</title>
</head>
<style>
    img {
        width: 100%;
        /*height: 300px;*/
    }

    a {
          text-decoration: none;
          color:#000;

    }
</style>

<body class="back">


<form method="post" action="add.php">
    <fieldset>

        <legend>BACK-OFFICE</legend>

        <div>
            <label for="Titre">Titre</label>
            <input type="text" name="titre" id="titre2" placeholder="Film">
        </div>
        <div>
            <label for="realisateur">Réalisateur</label>
            <input type="text" name="realisateur" id="realisateur" placeholder="Réalisateur">
        </div>
        <div>
            <label for="date">Date</label>
            <input type="text" name="date" id="date" placeholder="Réalisateur">
        </div>
        <div>
            <label for="Genre">Genre</label>
            <input type="text" name="genre" id="genre" placeholder="Genre">
        </div>
        <div>
            <label for="description">Description</label>
            <input type="text" name="description" id="description" placeholder="description">
        </div>
        <div>
            <label for="image">Image</label>
            <input type="text" name="img" id="image" placeholder="description">
        </div>

        <hr>

       <input type="submit">

    </fieldset>
</form>
        <hr>
        <table>
            <thead>
                <th>Titre</th>
                <th>Réalisateur</th>
                <th>Date</th>
                <th>Genre</th>
                <th>Description</th>

            </thead>

        <?php while($row = $stmt->fetch(PDO::FETCH_ASSOC)):?>


            <tr>
                <td><?=$row['titre']?></td>
                <td><?=$row['realisateur']?></td>
                <td><?=$row['date']?></td>
                <td><?=$row['genre']?></td>
                <td><?=$row['description']?></td>
                <td>
                    <img src ="img/<?=$row['img']?>"/>
                </td>
                <td>
                        <a href="edit.php?id=<?=$row['id']?>">Modifier</a>
                </td>
                <td>
                        <a href="delete.php?id=<?=$row['id']?>">Supprimer</a>
                <td>
                        <?php if($row['visible'] == 0):?>
                            <a href="afficher.php?id=<?=$row['id']?>">Afficher</a>
                        <?php else: ?>
                            <a href="cacher.php?id=<?=$row['id']?>">Cacher</a>
                        <?php endif ?>
                </td>
            </tr>


         <?php endwhile; ?>
        </table>




        <hr>




</body>

</html>
