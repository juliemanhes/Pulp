<?php
require_once "connect.php";
$sql = "SELECT `id`, `img` FROM `films`";
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
        <header class="clearfix">
            <nav id="menu">
                <h1><a href="../index.php">PULP</a></h1>
                <ul class="nav">
                    <li><a href="qui.php" class="navlink">Qui sommes-nous?</a></li>
                    <li><a href="film.php" class="navlink log">Films</a></li>
                    <li><a href="webserie.php" class="navlink">Web series</a></li>
                    <li><a href="documentaire.php" class="navlink">Documentaires</a></li>
                    <li><a href="humour.php" class="navlink">Humour</a></li>
                    <li><a href="login.php" class="navlink log">Connexion</a></li>
                </ul>
            </nav>
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
                    <div class="affiche"><a href="../showFilm.php?id=<?=$row['id']?>"><img src="../img-content/<?=$row['img']?>"></a></div>
                    <?php endwhile;?>
            </section>
        </main>
        <footer>
            <ul class="navfoot">
                <li>
                    <a href="#"><img src="../img-content/twi.png" alt=""></a>
                </li>
                <li>
                    <a href="#"><img src="../img-content/fb.png" alt=""></a>
                </li>
                <li>
                    <a href="#"><img src="../img-content/pt.png" alt=""></a>
                </li>
                <li>
                    <a href="#"><img src="../img-content/insta.png" alt=""></a>
                </li>
                <li>
                    <a href="#"><img src="../img-content/g+.png" alt=""></a>
                </li>
            </ul>
        </footer>
        <script type="text/javascript">
            $("menu").hide();

            $(function () {
                $(window).scroll(function () {
                    if ($(this).scrollTop() > 100) {
                        $('#menu').addClass("scroll");
                    } else {
                        $("#menu").removeClass("scroll");
                    }
                });
            });
        </script>
    </body>

    </html>
