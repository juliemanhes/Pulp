<?php
require_once "php/connect.php";
$sql = "SELECT id, img, genre FROM films WHERE genre LIKE '%selection%'";
//PDO php data object fournit une interface d'abstraction a l'acces de données
//var statement
$stmt = $pdo->prepare($sql);
$stmt->execute();
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="icon" type="image/png" href="img-layout/logo.png" />
    <link href="https://fonts.googleapis.com/css?family=Gentium+Book+Basic:400i" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link rel="stylesheet" href="styles/style.css">
    <script src='js/jquery-3.1.1.min.js'></script>
    <title>Pulp</title>
  </head>
  <body>
    <header class="clearfix">
      <nav id="menu">
          <h1><a href="index.php">PULP</a></h1>
        <ul class="nav">
          <li><a href="php/qui.php" class="navlink" id="who">Qui sommes-nous?</a></li>
          <li><a href="php/film.php" class="navlink" id="movie">Films</a></li>
          <li><a href="php/webserie.php" class="navlink" id="sries">Web series</a></li>
          <li><a href="php/documentaire.php" class="navlink" id="docs">Documentaires</a></li>
          <li><a href="php/humour.php" class="navlink" id="humo">Humour</a></li>
          <li><a href="php/search.php" class="navlink search" id="search">Rechercher</a></li>
        </ul>
      </nav>
      <div class="title">
        <h2>sweet sixteen<br>ken loach</h2>
        <span>Bientôt disponible</span>
      </div>
      <img src="img-content/accueilsweet16.jpg" alt="metropolis" width="100%" id="metro">
    </header>
    <main>
        <h2>NOTRE SELECTION VOD DE LA SEMAINE</h2>
        <section class="list2" id="sectionune">
          <?php while($row = $stmt->fetch(PDO::FETCH_ASSOC)):?>
            <div class="icon2"><a href="php/show2.php?id=<?=$row['id']?>"><img src="img-content/<?=$row['img']?>"></a></div>
          <?php endwhile;?>
        </section>
        <div class="trait3">
        </div>
    </main>
    <footer>
      <ul class="navfoot">
        <li><a href="https://twitter.com/?lang=fr"><img src="img-content/twi.png" ></a></li>
        <li><a href="https://www.facebook.com/"><img src="img-content/fb.png"></a></li>
        <li><a href="https://fr.pinterest.com/"><img src="img-content/pt.png" ></a></li>
        <li><a href="https://www.instagram.com/"><img src="img-content/insta.png" ></a></li>
        <li><a href="https://plus.google.com/?hl=fr"><img src="img-content/g+.png" ></a></li>
      </ul>


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
