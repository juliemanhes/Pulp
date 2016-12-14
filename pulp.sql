-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Mer 14 Décembre 2016 à 12:55
-- Version du serveur :  5.5.42
-- Version de PHP :  7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `pulp`
--

-- --------------------------------------------------------

--
-- Structure de la table `documentaires`
--

CREATE TABLE `documentaires` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `realisateur` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `lien` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `documentaires`
--

INSERT INTO `documentaires` (`id`, `titre`, `realisateur`, `date`, `Description`, `lien`, `visible`) VALUES
(1, 'Streetwise', 'Martin Bell', '1984', ' On suit la vie de plusieurs ados voire pré-ados (ça va de 12 à 20 ans) vivant tant bien que mal sur le béton. Pour certains c''est un choix, ils sont encore en contact avec leur parent, pour d''autres, la vie en a décidé autrement...', '<iframe width="560" height="315" src="https://www.youtube.com/embed/5lTQgfXb87k" frameborder="0" allowfullscreen></iframe>', 1),
(2, 'Flyin'' Cut Sleeves\r\n', 'Henry Chalfant, Rita Fecher', '1993', 'Flyin’ Cut Sleeves est un docu sorti en 1993 d’une importance capitale pour la compréhension de la culture hip hop. En effet cette vidéo retrace l’histoire de la dure vie des habitants du Bronx dont le taux de chômage était de 60% à la fin des années 60.', '<iframe width="560" height="315" src="https://www.youtube.com/embed/wwFb5-mygJg" frameborder="0" allowfullscreen></iframe>', 1),
(3, 'Dirty girls', 'Michael Lucid', '1996', '« C’est la fille qui ne s’est pas douché depuis que Kurt Cobain est mort », siffle une camarade de classe des soeurs Harper et «  Amber, les jeunes « dirty-girls » de l’école de Crossroads de Santa Monica. Les lycéennes punks féministe font face à des paroles assassines de la part de ces « haters » lors de la distributions de leur « riot grrrl zine dans ce documentaire de 1996. Quand ce documentaire a été mis en ligne en 2013, il fut viral et leurs confidence continuent d’inspirer des generations d’outsider et de parias.', '<iframe width="560" height="315" src="https://www.youtube.com/embed/h3MxEHQk644" frameborder="0" allowfullscreen></iframe>', 1),
(4, 'Florida man', 'Sean Dunne', '2015', 'Le documentaire montre les hommes oubliés de Floride : les SDF, les alcooliques, tous ceux qui traînent dans les rues. Vous apprendrez beaucoup de ces hommes haut en couleur.', '<iframe width="560" height="315" src="https://www.youtube.com/embed/i67f8nVsdAI" frameborder="0" allowfullscreen></iframe>', 1),
(5, 'Grey gardens', 'The Maysles brothers', '1975', 'La brillante destinée de Jacqueline Bouvier, successivement épouse Kennedy et Onassis, laisse un sillage de paillettes, de richesses et de glamour. Tous les membres de sa famille ne furent pas logés à la même enseigne. Sa tante, Edith Deale, et sa cousine, une ancienne comédienne, furent expulsées, du vivant de Jackie, de leur maison de Long Island pour l''avoir totalement laissée à l''abandon...\r\n', '<iframe width="560" height="315" src="https://www.youtube.com/embed/UTNWgb75cIc" frameborder="0" allowfullscreen></iframe>', 1),
(6, 'Paris is burning', 'Jennie Livingston', '1990', 'Un documentaire sur les drag queens de New York. Des homosexuels noirs et des latinos se déguisent en femme et inventent une nouvelle danse imitant les poses des modèles sur les couvertures des magazines.', '<iframe width="560" height="315" src="https://www.youtube.com/embed/k70tlLetqqw" frameborder="0" allowfullscreen></iframe>', 1);

-- --------------------------------------------------------

--
-- Structure de la table `films`
--

CREATE TABLE `films` (
  `id` int(15) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `realisateur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` int(11) NOT NULL,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lien` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `films`
--

INSERT INTO `films` (`id`, `titre`, `realisateur`, `date`, `genre`, `description`, `img`, `lien`) VALUES
(1, 'M', 'Fritz Lang', 1932, 'thriller/drame', 'Toute la presse ne parle que de ça : le maniaque tueur d’enfants, qui terrorise la ville depuis quelques temps, vient de faire une nouvelle victime. Chargé de l’enquête, le commissaire Lohmann multiplie les rafles dans les bas-fonds. Gênée par toute cette agitation la pègre décide de retrouver elle-même le criminel : elle charge les mendiants et les clochards de surveiller chaque coin de rue…\r\n', 'm-le-maudit.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/-WefkWf0UP4" frameborder="0" allowfullscreen></iframe>\r\n'),
(2, '12 Angry Men', 'Sydney Lumet', 1957, 'drame judiciaire\r\n', 'Un jeune homme d''origine modeste est accusé du meurtre de son père et risque la peine de mort. Le jury composé de douze hommes se retire pour délibérer et procède immédiatement à un vote : onze votent coupable, or la décision doit être prise à l''unanimité. Le juré qui a voté non-coupable, sommé de se justifier, explique qu''il a un doute et que la vie d''un homme mérite quelques heures de discussion. Il s''emploie alors à les convaincre un par un.\r\n', '12-angry-men.jpg', '<iframe src="https://archive.org/embed/12AngryMen1957" width="640" height="480" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>\r\n'),
(3, 'The Phantom of the Opera', 'Rupert Julian', 1925, 'fantastique, épouvante/horreur\r\n', 'Erik, être à moitié fou rejeté par la société, vit dans les sous-sols désaffectés de l''opéra Garnier à Paris. Amoureux d''une des cantatrices, il intrigue pour qu''elle obtienne le premier rôle, avant de lui réclamer son amour en retour. Mais celle-ci, découvrant la profonde laideur de celui qu''on appelle le Fantôme de l''Opéra, cherche par tous les moyens à échapper à son emprise, avec l''aide de son prétendant.\r\n', 'phantom-of-opera.jpg', '<iframe src="https://archive.org/embed/ThePhantomoftheOpera" width="640" height="480" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>\r\n'),
(4, 'Night of the Living Dead', 'George A. Romero', 1968, 'épouvante/horreur', 'Johnny et Barbra sont tous deux venus fleurir la tombe de leur père dans un petit cimetière de campagne. Soudain, ils sont attaqués par un étrange vagabond. L''altercation tourne au drame : Johnny est tué. Terrorisée, Barbra s''enfuit et trouve refuge dans une maison isolée. \r\n', 'night-of-the-living-dead.jpeg', '<iframe src="https://archive.org/embed/night_of_the_living_dead_dvd" width="640" height="480" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>\r\n'),
(5, 'The Vagabond', 'Charlie Chaplin', 1915, 'comédie', 'Charlot, un vagabond, sauve une jolie jeune fille de trois voleurs. Pour le remercier, elle l''invite à la ferme de son père. Celui-ci lui offre alors un travail, que Charlot accepte. Mais il ne connaît rien aux métiers de la ferme, et enchaîne les gaffes.\r\n', 'the-vagabond.jpg', '<iframe src="https://archive.org/embed/CC_1916_07_10_TheVagabond" width="640" height="480" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>\r\n'),
(6, 'A Star is Born', 'George Cukor', 1954, 'drame/film d’amour', '\r\nNorman Maine, acteur vieillissant et alcoolique, décèle en Esther Blodgett, une jeune chanteuse, un talent qui ne demande qu''à s''épanouir. Mais Norman, une fois marié à Esther, étoile naissante de la comédie musicale, supporte mal le succès de sa femme et se remet à boire…\r\n', 'a-star-is-born.jpg', '<iframe src="https://archive.org/embed/AStarIsBorn" width="640" height="480" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>\r\n'),
(7, 'L’Idiot', 'Akira Kurosawa', 1951, 'drame', 'Kameda revient de la guerre, atteint d''épilepsie et considéré comme affaibli mentalement. Il rencontre Akama dans le train et découvre qu''ils se rendent tous deux à Hokkaido. Akama pense rejoindre Taeko, une femme manipulatrice mais promise à un autre et dont Kameda va aussi tomber amoureux. Cependant, Kameda est également attiré par Ayako, jeune femme dont la famille omniprésente intervient dans les relations de tous ces personnages. \r\n', 'l-idiot.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/2dNfidUdUMA" frameborder="0" allowfullscreen></iframe>\r\n'),
(8, 'The Stranger', 'Orson Welles', 1946, 'drame, policier, thriller\r\n', 'Wilson, inspecteur de police chargé de retrouver les criminels de guerre allemands, fait relâcher Meinike, ancien chef d''un camp d''extermination, et le surveille jusqu’à Harper, village américain où l''Allemand retrouve son ancien supérieur, Franz Kindler. Franz, vivant sous le nom de Charles Rankin, est devenu un honorable professeur de collège et épouse Mary, fille du respectable juge Longstreet. Pour éviter les indiscrétions de Meinike, Charles le supprime. Wilson mène l’enquête…\r\n', 'the-stranger.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/yw4spvcbQOo" frameborder="0" allowfullscreen></iframe>'),
(9, 'Dr. Strangelove', 'Stanley Kubrick ', 1964, 'comédie, guerre', 'L''histoire se déroule en pleine guerre froide. Le général de l’Armée de l’air américaine Jack D. Ripper, frappé de folie paranoïaque, décide d’envoyer ses B-52 frapper l’URSS. Le président des États-Unis (interprété par Peter Sellers) commande une réunion d''urgence dans la salle souterraine de commandement stratégique pour tenter d''éviter une guerre nucléaire.\r\n', 'dr-strangelove.jpeg', '<iframe src="https://archive.org/embed/DRStrangelove_20130616" width="640" height="480" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>\r\n'),
(10, 'The 39 Steps', 'Alfred Hitchcock', 1935, 'policier, comédie, espionnage, thriller\r\n', 'À Londres, le Canadien Richard Hannay rencontre, au terme d''un spectacle musical interrompu bien singulièrement, une demoiselle qui se prétend poursuivie. Il accepte de la cacher chez lui, où l''on assassine cette dernière. Craignant d''être accusé, il comprend qu''il ne pourra prouver son innocence de ce meurtre que s''il s''implique dans une intrigue d’espionnage.\r\n', '39-steps.jpg', '<iframe src="https://archive.org/embed/the39steps_ipod" width="640" height="480" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>\r\n'),
(11, 'Macbeth', 'Orson Welles', 1948, 'drame, guerre\r\n', 'Assoiffé de pouvoir et poussé par son épouse, Macbeth assassine Duncan, le roi d''Écosse. En s''emparant du trône, il accomplit la prophétie des trois sorcières qu''il avait rencontrées de retour de combat. Malcolm, fils de Duncan, parvient à s''enfuir en compagnie du noble Macduff, dont Macbeth a fait massacrer toute la famille. Le roi sanguinaire décide également de se débarrasser de Banquo, que les sorcières donnaient comme son successeur, et de sa descendance…\r\n', 'macbeth.jpg', '<iframe src="https://archive.org/embed/Macbeth_Orson_Welles" width="640" height="480" frameborder="0" webkitallowfullscreen="true" mozallowfullscreen="true" allowfullscreen></iframe>\r\n'),
(12, 'Nosferatu', 'Friedrich Wilhelm Murnau', 1922, 'épouvante/horreur\r\n', 'À Wisborg en 18385, Thomas Hutter, un jeune clerc de notaire ayant fait un heureux mariage avec Ellen, doit partir pour la Transylvanie afin de vendre une propriété au comte Orlok qui désire avoir une résidence dans la ville. Après un périple sur une terre d’ombres, le jeune homme est accueilli au sein d’un sinistre château par le comte. \r\n', 'nosferatu.jpg', 'À Wisborg en 18385, Thomas Hutter, un jeune clerc de notaire ayant fait un heureux mariage avec Ellen, doit partir pour la Transylvanie afin de vendre une propriété au comte Orlok qui désire avoir une résidence dans la ville. Après un périple sur une terre d’ombres, le jeune homme est accueilli au sein d’un sinistre château par le comte. \r\n');

-- --------------------------------------------------------

--
-- Structure de la table `humour`
--

CREATE TABLE `humour` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `lien` varchar(255) NOT NULL,
  `visible` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `humour`
--

INSERT INTO `humour` (`id`, `titre`, `description`, `img`, `lien`, `visible`) VALUES
(1, 'Bref', 'Les chroniques extraordinaires d’un homme ordinaire. Dans la vie, au début on naît, à la fin on meurt, pendant ce temps là, il se passe des trucs.\r\nCélibataire tous les matins mais pas forcément tous les soirs, ce mec dont on ne connaît pas le nom partage sa vie avec nous par de brèves anecdotes. Son introspection est souvent troublée par les rencontres qu’il fait et par son entourage.\r\n', 'bref.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLlFikkv2B2ffwYiFQJmcao3RKtw1DFMz5" frameborder="0" allowfullscreen></iframe>', 1),
(2, 'Palmashow', 'Le Palmashow est un duo d''humoristes composé de Grégoire Ludig et David Marsais. Ils se sont fait connaître grâce à Internet puis D8 grâce à Palmashow l’émission. Leur style est drôle, parfois mordant, mais jamais méchant.\r\n', 'palmashow.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLrQ4023koCJqqt5LbOpOD-EGkrEJb5yxW" frameborder="0" allowfullscreen></iframe>', 1),
(3, 'Bloqués', '« En attendant qu''il se passe quelque chose, ils ont décidé de ne rien faire. »\r\nDeux hommes interprétés par les Casseurs Flowters (Orelsan & Gringe) discutent dans un canapé en attendant qu''il se passe quelque chose. Comme le présente Navo, le concept est ultra simple : « “Bloqués”, c''est "Un plan fixe. Un canapé. Deux personnages. »', 'bloques.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLpyLrExgrk_kLds1wVCLtGaQbXfzuf2Ax" frameborder="0" allowfullscreen></iframe>', 1),
(4, 'Flanders Company', 'Il s''agit d''une série humoristique avec de nombreux éléments en lien avec le fantastique et plus particulièrement l''univers des super-vilains, qui parodie souvent des personnages de comics, mangas, films ou jeux vidéo.\r\n', 'flanders-company.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLpyLrExgrk_lyWl1EDNOp6FvhNOUBkIb6" frameborder="0" allowfullscreen></iframe>', 1),
(5, 'Bapt et Gaël', 'Bapt&Gael est un duo de deux Youtubers formé par Gael Mectoob et Baptiste Lorber faisant des vidéo à l''humour assez obscène, voire « pipi-caca ». \r\nIls sont les fondateurs de "Dix Minutes à Perdre", une chaîne très populaire clôturée en juin 2013 à cause d''une perte de mot de passe, c’est dommage.\r\n', 'bapt-gael.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PL-CQtpSbsGq3hm8RPhFZSoTWQcgXCYUX1" frameborder="0" allowfullscreen></iframe>\r\n', 1),
(6, 'Woop', 'Non, Le Woop'' n''est pas le pseudo affectueux donné à l''actrice Woopi Goldberg. Derrière ce nom étrange se cache en réalité un tout nouveau collectif d''humoristes, aux parcours très différents, mais tous réunis dans un seul et même but : faire travailler vos abdominaux et vos zygomatiques !\r\n', 'woop.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLCse298EzVW-Zbj6qqgXmuJqxGfRQbEcF" frameborder="0" allowfullscreen></iframe>', 1),
(7, 'Norman', 'Norman incarne « Monsieur tout le monde » et parle de sujets quotidiens avec sa première vidéo en solo, « Le Club de ping pong ». Deux mois plus tard, il publie sa vidéo qui est restée la plus populaire pendant longtemps, « Les Bilingues », qui rencontre un franc succès et marque le début de sa notoriété. Ses vidéos ont été vues plusieurs millions de fois. \r\n', 'norman.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLuNz4odMTDg5CGhGh8JoTfEa6N_kFJcPi" frameborder="0" allowfullscreen></iframe>', 1),
(8, 'Studio Bagel', ' Née de la volonté d’un contenu « Premium » sur YouTube, Studio Bagel s''impose comme une des chaînes les plus populaires en France (hors chaînes musicales). Son succès est surtout dû aux comédiens, très connus sur YouTube comme Natoo, Jérôme Niel, Kemar… Sketchs, parodies, fausses bandes annonces et un maximum de rires son au rendez-vous dans leurs vidéos.\r\n', 'studio-bagel.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PL4b_uORiJNrGlHnBaVpTKaJk6xlheVtLr" frameborder="0" allowfullscreen></iframe>', 1),
(9, 'AndyRaconte', 'La chaîne YouTube d’Andy dépasse les 2 millions d''abonnés le 10 novembre 20152. En juillet 2016, elle est la deuxième youtubeuse féminine française, devant EnjoyPhoenix et derrière Natoo. Elle fait des vidéos sur des situations de la vie quotidienne, surtout du point de vue des femmes. \r\n', 'andy-raconte.png', '<iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLblsIXcr80w_xEZGbi-b6IgpImaCMswgF" frameborder="0" allowfullscreen></iframe>', 1),
(10, 'Les Recettes pompettes', 'Monsieur Poulpe et son invité tentent de réaliser une recette de cuisine tout en buvant des shooters de vodka. Monsieur Poulpe et l''invité finissent par goûter le plat, avant que l''animateur annonce qu''il ramène ce dernier à sa voiture. Suite aux polémiques entourant le lancement de l''émission, Monsieur Poulpe précise que les invités sont en fait raccompagnés par une voiture avec chauffeur.', 'recettes-pompettes.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/videoseries?list=PLvxbM7cWJlt_viTrE_RW89zS7QcmYaqja" frameborder="0" allowfullscreen></iframe>', 1);

-- --------------------------------------------------------

--
-- Structure de la table `selection-de-la-semaine`
--

CREATE TABLE `selection-de-la-semaine` (
  `id` int(11) NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lien` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `selection-de-la-semaine`
--

INSERT INTO `selection-de-la-semaine` (`id`, `titre`, `lien`) VALUES
(1, 'Mother', '<iframe src=''http://www.allocine.fr/_video/iblogvision.aspx?cmedia=18943772'' style=''width:640px; height:360px''>    </iframe>    <br />    <a href="http://www.allocine.fr/film/fichefilm_gen_cfilm=135521.html" target="_blank">Mother</a>    <br/>    <a href="http://www.allocine.fr/video/player_gen_cmedia=18943772&cfilm=135521.html"><strong>Mother</strong> Bande-annonce VO</a> '),
(2, 'Old Boy\r\n', '<iframe src=''http://www.allocine.fr/_video/iblogvision.aspx?cmedia=18369111'' style=''width:640px; height:360px''>    </iframe>    <br />    <a href="http://www.allocine.fr/film/fichefilm_gen_cfilm=54137.html" target="_blank">Old Boy</a>    <br/>    <a href="http://www.allocine.fr/video/player_gen_cmedia=18369111&cfilm=54137.html"><strong>Old Boy</strong> Bande-annonce VF</a>'),
(3, 'Festen', '<iframe src=''http://www.allocine.fr/_video/iblogvision.aspx?cmedia=19465979'' style=''width:640px; height:360px''>    </iframe>    <br />    <a href="http://www.allocine.fr/film/fichefilm_gen_cfilm=18644.html" target="_blank">Festen</a>    <br/>    <a href="http://www.allocine.fr/video/player_gen_cmedia=19465979&cfilm=18644.html"><strong>Festen</strong> Bande-annonce VO</a> '),
(4, 'La folle histoire de Max et Léon\r\n', '<iframe width="560" height="315" src="https://www.youtube.com/embed/SYUFS4PnDdI" frameborder="0" allowfullscreen></iframe>'),
(5, 'La Traversée de Paris\r\n', '<iframe width="560" height="315" src="https://www.youtube.com/embed/UDECF5PYpxo" frameborder="0" allowfullscreen></iframe>'),
(6, 'Magnolia', '<div id=''blogvision''>    <iframe src=''http://www.allocine.fr/_video/iblogvision.aspx?cmedia=19448347'' style=''width:640px; height:360px''>    </iframe>    <br />    <a href="http://www.allocine.fr/film/fichefilm_gen_cfilm=22858.html" target="_blank">Magnolia</a>    <br/>    <a href="http://www.allocine.fr/video/player_gen_cmedia=19448347&cfilm=22858.html"><strong>Magnolia</strong> Bande-annonce VF</a>  </div>');

-- --------------------------------------------------------

--
-- Structure de la table `test1`
--

CREATE TABLE `test1` (
  `id` int(11) NOT NULL,
  `descrip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `titre` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `webseries`
--

CREATE TABLE `webseries` (
  `id` int(11) NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lien` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `webseries`
--

INSERT INTO `webseries` (`id`, `titre`, `description`, `img`, `lien`, `visible`) VALUES
(1, 'Ulysse', '2038. 14 ans après la fin d''une guerre mondiale aussi dévastatrice que mystérieuse, une jeune orpheline - Elena - reçoit un carnet qui pourrait bien tout expliquer. Ce carnet raconte l''histoire d''un jeune homme unique : Ulysse.\r\n', 'ulysse.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/kW8DpS5wbRs" frameborder="0" allowfullscreen></iframe>\r\nhttps://www.youtube.com/user/ulyssewebserie\r\n', 1),
(2, 'Visiteur du futur\r\n', 'Les aventures de Raph, jeune homme ordinaire tourmenté par les apparitions répétées d’un mystérieux personnage prétendant venir du futur et plus précisément, de 2550 ! Il va alors lui révéler que les plus infimes actions de son existence peuvent avoir un impact désastreux sur le futur et tenter d’échapper à la redoutable Brigade Temporelle.\r\n', 'visiteur-du-futur.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/FsCJpx8E9LE" frameborder="0" allowfullscreen></iframe>\r\nhttps://www.youtube.com/user/watchthevisitor', 1),
(3, 'Les Kassos\r\n', 'Ils font partie de votre adolescence et vous en gardez une image pure et innocente. Si vous souhaitez la conserver, ne lisez pas les lignes qui vont suivre. Et ne cliquez pas non plus sur la vidéo ci-dessus. Car la dernière série de El Diablo, le créateur des Lascars, et Balak va détruire votre enfance.\r\nSachatte, Dragon Boule, Zizimir, Power Rogers ou encore le Petit Prince. Ces noms vous sont familiers et pour cause. Les Kassos, la web-série de Canal +, a remis au goût du jour les personnages de votre enfance avec un succès si fulgurant que les auteurs en sortent une BD ce mercredi.\r\nPhysiquement, les héros n''ont pas pris une ride. En revanche, psychologiquement parlant, c''est (beaucoup) plus compliqué. La crise est passée par là et les héros souffrent de dépression, chômage, alcoolisme, sexe, crise de nerf... En un mot, ils sont "au bout du rouleau". Heureusement pour eux, "quand dans leur vie ça va mal, ils vont voir l''assistante sociale."\r\n“L’idée de base s’inspirait des sketchs ''Les Petites annonces'' d’Elie Semmoun. Après, on s’est dit que ce serait plus drôle de reprendre les personnages de notre enfance, c’est-à-dire des années 80, et de casser un peu le vernis pour en faire des Kassos. Et puis il y avait aussi un petit côté nostalgique: c’était des personnages presque oubliés…", explique David Alric, propriétaire de Bobby Prod, qui produit la série.\r\nLes Kassos, c''est vraiment trash. Le Lapin du métro a des tendances sado-masochistes, Zizimir entretient d''étranges relations avec ses jeunes fans, Papi Fougasse est atteint de la maladie d''Alzheimer, les Téléboubizes sont défoncés et l''assistante sociale - une voix-off à l''accent antillais prononcé qui n''a pas la langue dans sa poche - ne remplit pas exactement ses fonctions. Un parti-pris assumé, qui a séduit les internautes.\r\n', 'les-kassos.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/HKyq4_VIGkk?list=PLPkQoAsYuIp1HrM3LP3dkST_7YjIhvTIM" frameborder="0" allowfullscreen></iframe>\r\nhttps://www.youtube.com/user/LesKassosCanal/featured\r\n', 1),
(4, 'Warpzone Project \r\n', 'Et si les auteurs étaient en réalité les véritables Historiens de ce monde ? Et si les pouvoirs décrits dans leurs œuvres étaient tous accessibles, mais que l''école et les médias nous mentaient pour nous persuader qu''ils n''existaient pas ? Tout cela parce qu''il deviendrait difficile de gérer plusieurs milliards de super héros et de super vilains ? Serez-vous l''élu qui découvrira le secret du WarpZone Project ?\r\nProduction: Olydri Studio / Scenario: Fabien Fournier / Réalisation: Fabien Fournier\r\n', 'warpzone-project.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/YMo7vP3tGxE" frameborder="0" allowfullscreen></iframe>\r\nhttps://www.youtube.com/playlist?list=PLcSjKfSVEgz8mn1JShbhtcPWH3zJzTQiu', 1),
(5, 'The Guild\r\n', 'Créée par l’actrice geek Felicia Day en 2007, «The Guild» suit ainsi les aventures de Codex, prêtresse de la guilde des Chevaliers du Bien, et de ses compagnons virtuels Zaboo, Vork, Bladezz, TinkerBalla et Clara. L’arrivée inattendue de Zaboo  chez Codex va conduire les membres de la guilde à se rencontrer en vrai pour la première fois… et à se retrouver dans des situations cocasses. \r\n', 'the-guild.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/grCTXGW3sxQ" frameborder="0" allowfullscreen></iframe>\r\nhttps://www.youtube.com/channel/UCt9S9nd8hATsfRjRlrcyklw', 1),
(6, 'Noob', 'Après avoir vu une publicité, une joueuse se lance dans la création d''un avatar pour Horizon 1.0, un célèbre mmorpg très en vogue actuellement. Lors de sa découverte du jeu, elle fait la rencontre de Sparadrap, un prêtre très spécial.\r\nNOOB, est la première web-série live Française sur le thème des MMORPG. Il s''agit d''une shortcom humoristique pour les geek, nerds, nolifes, gamers, mais pas uniquement.\r\n', 'noob.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/q1Wh8yrVzns" frameborder="0" allowfullscreen></iframe>\r\nhttps://www.youtube.com/playlist?list=PL3726779FA0725AFE', 1),
(7, 'Realer ', 'Suite à une étrange rencontre le personnage principal (Koss) reçoit le pouvoir de modifier le présent.\r\n', 'realer.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/9caIXsW85Fo" frameborder="0" allowfullscreen></iframe>\r\nhttps://www.youtube.com/watch?v=dxg87ECe9qw', 1),
(8, 'En passant pécho', 'En passant pécho raconte les aventures de deux dealers. Une websérie drôle et sans tabous.\r\nRéalisation: Ken et Ryu\r\nRéalisées par Julien Hollande, ces vidéos racontent l''histoire d''une bande de dealers déjantés accros à la cocaïne et aux embrouilles. \r\n"J''ai plein de coke, et plein de stock de choix différent ; de quoi remettre sur pied François Mitterrand." La chanson du générique, interprété par le groupe de rap montpelliérain Set&Match, pose le décor. Sur internet, la web-série "En passant pécho" \r\nrencontre un franc succès. Les Inrocks rappellent que l''un de ses deux réalisateurs, Ken & Ryu, est en fait le fils cadet de François Hollande et Ségolène Royal, Julien Hollande\r\nDes films réalisés "en toute discrétion"\r\n\r\n"En toute discrétion, celui-ci réalise depuis plusieurs années des films qui traitent en particulier du thème de la drogue", explique le magazine. Julien Hollande est passé par l''Ecole supérieure de réalisation audiovisuelle (Esra) où il a rencontré le coréalisateur de la série. Les quatre épisodes publiés à ce jour comptabilisent déjà huit millions de vues. La projection en avant-première des deux derniers épisodes (5 et 6) à la Bellevilloise, à Paris, aura lieu mercredi 17 septembre.\r\n\r\n', 'en-passant-pecho.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/YBcwG9G6oHU" frameborder="0" allowfullscreen></iframe>\r\nhttps://www.youtube.com/user/enpassantpecho\r\n', 1),
(9, 'Hero corp \r\n', 'Les super-héros, échoués dans une contrée inconnue après un terrible naufrage, sont séparés... Une nouvelle vie, parmi les civils, de nouvelles règles et John, leur leader qui les quitte pour se réfugier dans un monastère... Il va falloir se retrouver, reformer le groupe et créer une nouvelle agence avec de nouvelles règles... Hoodwink a fait main basse sur Hero Corp, il fait régner sa loi sur Montréal et veut l’étendre sur le monde... Et alors que rôdent des bêtes sauvages, qu’il faut sauver des civils, ramener John vers sa mission, on ne sait jamais d’où vient le danger et qui sont les ennemis. Jane, la mère de John et Eraste préparent sous terre l''avènement de leur maître, Hypnos… Au coeur de cette troisième saison, riche en action, secrets et mystères, l’amour va naître... Une nouvelle aventure pour certains... Une révélation... Et la certitude qu’un autre destin est en marche.\r\n\r\nRéalisation: Simon Astier\r\n', 'hero-corp.png', '<iframe width="560" height="315" src="https://www.youtube.com/embed/6SFy78parQ0" frameborder="0" allowfullscreen></iframe>\r\nhttps://www.youtube.com/playlist?list=PL6HEq98t5FznEOAFEI0mYcqc21815ZAF4', 1),
(10, 'J’ai jamais su dire non ', 'Tom est un jeune homme sans beaucoup de volonté et incapable de dire non aux gens. Son incapacité à s''imposer le conduit, malgré lui, à coucher avec sa patronne Roxane sans grande résistance. Refusant de garder pour lui cet événement troublant, sa petite amie Emma en est rapidement informée et décide de quitter Tom. Seul et désespéré dans son appartement, Tom voit débarquer son pote Mitch s''imposant comme colocataire envahissant et sans-gêne. Dispensé de paiement, Mitch décide d''appliquer sur Tom sa nouvelle méthode psychiatrique: "La Psycho-Balls Therapy". Avec (ou bien plus souvent malgré) l''aide de Mitch, Tom décide de reprendre le contrôle de sa vie...\r\n', 'j-ai-jamais-su-dire-non.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/aPmY05b_YYg" frameborder="0" allowfullscreen></iframe>\r\nhttps://www.youtube.com/playlist?list=PLCXezCpiPku4TrOh-QbJkbk-H4p3FwwpE', 1),
(11, 'La théorie des Balls\r\n', 'Spin-off de J''ai Jamais Su Dire Non, concentré autour du personnage de Mitch, qui essaye de publier sa théorie, la Théorie des Balls, afin de conquérir son amour du lycée.\r\nMitch, devenu DRH dans l''entreprise de Stan (clochard étant en fait un riche patron héritier d''une grosse fortune familiale), décide de créer en parallèle de son travail et grâce à ses employés, la "théorie des Balls"; une théorie soi-disant scientifique qui explique le comportement des gens grâce à des particules quantiques (les "Balls") qui influent sur notre personnalité et nos relations.\r\nMitch essaie donc de faire publier sa thèse dans la maison d''édition de son ancienne amie de lycée Héloïse, devenue éditrice. Mais entre un patron hyperactif, un comptable amateur de pornographie et bien d''autres employés tous plus incompétents les uns que les autres, la théorie des Balls devient vite un défi de taille.\r\nProduction: Endemol Beyond et Frenchnerd Productions\r\nScenario: Slimane-Baptiste Berhoun, François Descraques & Raphaël Descraques\r\nRéalisation: Slimane-Baptiste Berhoun', 'la-theorie-des-balls.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/7qvdWI3d10E" frameborder="0" allowfullscreen></iframe>\r\nhttps://www.youtube.com/playlist?list=PLCXezCpiPku7be3P4njsjJKZtI5W3dNj8\r\n', 1),
(12, 'Nexus VI\r\n', 'Embarquez à bord du Nexus VI pour votre chronique spécialisée dans la Science Fiction sous toutes ses formes (Cinéma, Littérature, Jeux vidéo, Animés) ! Chaque mois, le Capt’ain et son équipage vous présenteront soit une œuvre à part entière (bonne ou mauvaise) soit un grand thème de la SF.\r\n', 'nexus-vi.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/sO1KAH-mwRI" frameborder="0" allowfullscreen></iframe>\r\nhttps://www.youtube.com/channel/UC8-UThnwzBI5ApzVG4MY7VQ', 1),
(13, 'Les Segpa', 'Les segpa Débarquent sur YouTube,\r\n\r\nEntrée dans l''univers de la pire des classes, aucun profs n''a réussi a canaliser cette classe de Segpa, Le rectorat laisse donc une dernière chance a M.Perruchon directrice du collège Robyn Van Persie, de trouver une équipe pédagogique capable de dompté cette classe.\r\n\r\nAvec Bouchra Beno, Ichem Boogy, Charly Nyobe, Said Bogota, Kader Bueno, Moussa Maaskri, Bengous, Ariles ( c ca ke jet reproche), Lawari Potter, Walid Ninho, Willax et plein d’autres...\r\n', 'les-segpa.jpg', '<iframe width="560" height="315" src="https://www.youtube.com/embed/h6K-PVELkXc" frameborder="0" allowfullscreen></iframe>\r\nhttps://www.youtube.com/channel/UCEFMeaiqldP1jBEzZKMYhSA', 1),
(14, 'Les Deguns', 'Nordine et Karim sont deux jeunes de quartier qui ne font pas grand chose de leur vie... Mais un jour ils vont se réveiller et décider de se lancer dans différentes activités. Le problème est que tout ce qu''ils entreprennent, se transforme vite en carnage total. Née fin 2012, l''idée de la série "Les Déguns" a été créée par Nordine Salhi et Karim Jebli.\r\n', 'les-deguns.png', '<iframe width="560" height="315" src="https://www.youtube.com/embed/mqr183-rfCQ" frameborder="0" allowfullscreen></iframe>\r\nhttps://www.youtube.com/user/lesdegunstv\r\n', 1);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `documentaires`
--
ALTER TABLE `documentaires`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `humour`
--
ALTER TABLE `humour`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `selection-de-la-semaine`
--
ALTER TABLE `selection-de-la-semaine`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `test1`
--
ALTER TABLE `test1`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `webseries`
--
ALTER TABLE `webseries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `documentaires`
--
ALTER TABLE `documentaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `humour`
--
ALTER TABLE `humour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `selection-de-la-semaine`
--
ALTER TABLE `selection-de-la-semaine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `test1`
--
ALTER TABLE `test1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `webseries`
--
ALTER TABLE `webseries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;