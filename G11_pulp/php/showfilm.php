<?php

require_once "connect.php";



if(isset($_GET['id'])){
    $id = (int) $_GET['id'];
} else {
    header('Location: showfilm.php');
}
$sql = "SELECT
    `id`,
    `titre`,
    `realisateur`,
    `date`,
    `lien`,
    `description`,
    `genre`
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
      <meta charset="utf-8">
      <link rel="icon" type="image/png" href="../img-layout/logo.png" />
      <link href="https://fonts.googleapis.com/css?family=Gentium+Book+Basic:400i" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
      <link rel="stylesheet" href="../styles/style.css">
      <script src='../js/jquery-3.1.1.min.js'></script>
      <title>Catégorie Film</title>
    </head>

    <body id="blackyellow">
      <header class="clearfix mov">
        <?php require ("header.php") ?>
      </header>
      <main class="white" >
        <section>

        <?php while($row = $stmt->fetch(PDO::FETCH_ASSOC)):?>
            <div class="white posi">
              <ul>
                <h1 class="categorie">Film:</h1>
                <li>
                  <strong id="titre"><?=$row['titre']?></strong>
                </li>
                <li>
                  Un film de
                  <strong><?= $row['realisateur'] ?></strong>
                </li>
                <li>
                  Année :
                  <strong><?= $row['date'] ?></strong>
                </li>
                <li>
                  <strong id="genre"><?= $row['genre'] ?></strong>
                </li>
                <li>
                  <?= $row['description'] ?>
                </li>
                <li>
                  <strong><?=$row['lien']?></strong>
                </li>

              </ul>
            </div>
            <?php endwhile; ?>
            </section>
          </main>
          <footer>
            <?php require ("footer.php") ?>
          </footer>
    </body>

    </html>
