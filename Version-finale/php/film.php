<?php
require_once "connect.php";
$sql = "SELECT id, img, genre FROM films WHERE categorie LIKE '%Film%'";
//PDO php data object fournit une interface d'abstraction a l'acces de données
//var statement
$stmt = $pdo->prepare($sql);
$stmt->execute();
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="icon" type="image/png" href="../img-layout/logo.png" />
    <link href="https://fonts.googleapis.com/css?family=Gentium+Book+Basic:400i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link rel="stylesheet" href="../styles/style.css">
    <script src='../js/jquery-3.1.1.min.js'></script>
    <title>Films</title>
  </head>
  <body>
    <header class="clearfix mov">
      <?php require ("header.php") ?>
      <div class="title">
        <h2>A star is born<br>George cukor</h2>
        <span>Venez voir un chef-d'oeuvre</span>
      </div>
      <h2 id="film">Film</h2>
      <img src="../img-content/asib.png" />
    </header>
    <main>
      <h2 id="legende">Film</h2>
      <section class="list">
        <?php while($row = $stmt->fetch(PDO::FETCH_ASSOC)):?>
          <div class="affiche"><a href="showfilm.php?id=<?=$row['id']?>"><img src="../img-content/<?=$row['img']?>"></a></div>
        <?php endwhile;?>
      </section>
    </main>
    <footer>
      <?php require ("footer.php") ?>

    </footer>
    <script type="text/javascript">
      $("menu").hide();

      $(function (){
        $(window).scroll(function () {
          if ($(this).scrollTop()>100) {
            $('#menu').addClass("scroll");
          }
          else {
            $("#menu").removeClass("scroll");
          }
        });
      });
    </script>
  </body>
</html>
