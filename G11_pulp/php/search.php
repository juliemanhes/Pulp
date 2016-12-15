<?php
require_once "connect.php";
 $sql = "SELECT titre, img ,id
 FROM `films`
 WHERE titre
 LIKE :search
 ";
 //PDO php data object fournit une interface d'abstraction a l'acces de données
 //var statement
 $stmt = $pdo->prepare($sql);
//associe une valeur a un parametre
 $stmt->bindValue(':search', '%'.$_POST['search'].'%');
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
    <title>Search</title>
  </head>
  <body id="blackyellow">
    <header class="clearfix search">
      <?php require ("header.php") ?>
    </header>
    <main id="mainlog">
      <form method="post">
        <input type="text" name="search" placeholder="Votre recherche" class="w75">
        <input type="submit" name="submit" value="Rechercher"class="w25">
      </form>
      <section>

        <?php while($row = $stmt->fetch(PDO::FETCH_ASSOC)):?>
            <div class="affiche"><a href="show.php?id=<?=$row['id']?>"><img src="../img-content/<?=$row['img']?>"></a></div>
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
