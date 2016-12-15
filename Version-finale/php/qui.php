<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <link rel="icon" type="image/png" href="../img-layout/logo.png" />
  <link href="https://fonts.googleapis.com/css?family=Gentium+Book+Basic:400i" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
  <link rel="stylesheet" href="../styles/style.css">
  <script src='../js/jquery-3.1.1.min.js'></script>
  <title>Qui Sommes-nous</title>
</head>
<body id="blackyellow">
  <header class="clearfix who">
    <?php require ("header.php") ?>
  </header>
  <main>
    <section class="paragraphe">
      <div class="text">
        <p><strong>pulp</strong> est un cinéma en ligne dont la programmation, choisie avec soin, vous propose les plus <br> grands films cultes, classiques, indépendants et récompensés tombés dans le domaine public.<br> Notre site est un passeport vers le monde du cinéma. Chaque jour, nous nous efforcons de trouver <br> de nouveaux contenus à voir en toute legalité. Nous vous proposons également une sélection de <br> coups de coeur disponibles en VOD.</p>
      </div>
    </section>
    <section class="photo">
      <div class="w33">
        <img src="../img-content/tp.jpg" >
      </div>
      <div class="w33">
        <img src="../img-content/dp.jpg" >
      </div>
      <div class="w33">
        <img src="../img-content/brenda.jpg" >
      </div>
    </section>
    <section class="photo" id="photo">
      <div class="w33">
        <img src="../img-content/dim.jpg" >
      </div>
      <div class="w33">
        <img src="../img-content/julie.jpg" >
      </div>
      <div class="w33">
        <img src="../img-content/dylan.jpg">
      </div>
    </section>
  </main>
  <footer>
    <ul class="navfoot">
      <li><a href="#"><img src="../img-content/twi.png" alt=""></a></li>
      <li><a href="#"><img src="../img-content/fb.png" alt=""></a></li>
      <li><a href="#"><img src="../img-content/pt.png" alt=""></a></li>
      <li><a href="#"><img src="../img-content/insta.png" alt=""></a></li>
      <li><a href="#"><img src="../img-content/g+.png" alt=""></a></li>
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
