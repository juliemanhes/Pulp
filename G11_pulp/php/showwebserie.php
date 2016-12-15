<?php

require_once "connect.php";



if(isset($_GET['id'])){
    $id = (int) $_GET['id'];
} else {
    header('Location: showwebserie.php');
}
$sql = "SELECT
    `id`,
    `titre`,
    `lien`,
    `description`
FROM
    `films`
WHERE
  `id` = :id
";

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$stmt->execute();

?>

    <!DOCTYPE html>

    <html lang="fr">

    <head>
        <meta charset="UTF-8">
        <title>Catégorie Web Séries</title>
    </head>

    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="utf-8">
      <link rel="icon" type="image/png" href="../img-layout/logo.png" />
      <link href="https://fonts.googleapis.com/css?family=Gentium+Book+Basic:400i" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
      <link rel="stylesheet" href="../styles/style.css">
      <script src='../js/jquery-3.1.1.min.js'></script>
      <title>Web series</title>
    </head>

    <body id="blackyellow">
        <header class="clearfix wes">
            <nav id="menu">
              <?php require ("header.php") ?>
        </header>
        <main>

                <?php while($row = $stmt->fetch(PDO::FETCH_ASSOC)):?>
                  <div class="white posi">

                  <ul>
                    <h1 class="categorie">Web-Série:</h1>
                    <li>
                      <strong id="titre"><?=$row['titre']?></strong>
                    </li>
                    <li>
                      <strong><?= $row['description'] ?></strong>
                    </li>
                    <li>
                      <strong><?=$row['lien']?></strong>
                    </li>

                  </ul>
                  </div>
                    <?php endwhile; ?>
        </main>
        <footer>
          <?php require ("footer.php") ?>
        </footer>
    </body>

    </html>
