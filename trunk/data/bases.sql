-- phpMyAdmin SQL Dump
-- version 2.11.7
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mer 25 Mars 2009 à 20:38
-- Version du serveur: 5.0.27
-- Version de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


CREATE TABLE IF NOT EXISTS `centre_interet` (
  `id` int(11) NOT NULL auto_increment,
  `id_classe` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `nb_seance` varchar(25) NOT NULL,
  `liste_capa` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;


INSERT INTO `centre_interet` (`id`, `id_classe`, `titre`, `question`, `nb_seance`, `liste_capa`) VALUES
(1, 1, 'D&#233;couverte de l&apos;objet technique', 'A quel besoin r&#233;pond un objet technique', '3s', '1:2:4:21:25'),
(2, 1, 'Structure g&#233;n&#233;rale de l&apos;objet technique', 'Un objet technique, de quoi est-il constitu&#233;', '4s', '7:8:15:31'),
(3, 1, 'Fonctions &#233;l&#233;mentaires d&apos;un objet technique', 'Un objet technique comment fonctionne t&apos;il', '2x3s', '9:11:12:16:29:30:31'),
(4, 1, 'Des solutions techniques pour une mÃªme fonction', 'Pourquoi existe t&apos;il tant de solutions diff&#233;rentes pour r&#233;pondre &#224; des besoins identiques', '4s', '10:16:17:18:22:23:26:32:34:38'),
(5, 1, 'R&#233;alisation d&apos;un objet technique', 'Un objet technique je le r&#233;alise comment', '3x3s', '19:18:37:41:42:39:43:44:45:40'),
(6, 1, 'Les carcat&#233;ristiques d&apos;un objet technique', 'Cet objet technique pourquoi me convient-il', '4s', '3:5:6:14:20:24:27:36'),
(7, 2, 'L''environnement construit du collÃ¨ge', 'Comment est construit l''environnement du collÃ¨ge', '4s', '46:62:70:71:72:75'),
(8, 2, 'Des fonctions assurÃ©es par les ouvrages aux solutions techniques', 'Quelles sont les particularitÃ©s des ouvrages de notre environnement', '4s', '47:48:51:52:53:73:74:79'),
(9, 2, 'StabilitÃ© d''une structure', 'Pourquoi un ouvrage ne s''effondre t&apos;il pas', '7s', '49:54:56:57:59:61:78:85'),
(10, 2, 'R&#233;alisation d&apos;une maquette structurelle', 'Comment franchir un obstacle par une voie de passage ou de circulation', '9s', '48:54:49:56:57:61:60:59:80:81:78:82:86:89:83:84:90'),
(11, 2, 'Organisation fonctionnelle', 'Comment est structur&#233;e une unit&#233; d&apos;habitation', '4s', '46:49:51:52:50:60:66:65:68:67:69:77'),
(12, 2, 'Agencement, am&#233;nagement', 'Comment agencer un espace', '7s', '46:57:58:50:51:56:52:65:66:68:67:69:77:87:88'),
(13, 3, 'Histoire et g&#233;ographie des solutions techniques', 'Comment le contexte historique influt-il sur la conception', '2s', '95:108:109:110'),
(14, 3, 'Prise en compte des contraintes dans la conception', 'Comment les contraintes sont-elles prises en compte dans la conception d&apos;un objet technique', '2s', '94:95:96:101:104'),
(15, 3, 'Source d&apos;&#233;nergie, conversion d&apos;&#233;nergie', 'Quelle est la source d&apos;&#233;nergie ext&#233;rieure utilis&#233;e par l&apos;objet technique et quel est l&apos;&#233;l&#233;ment qui permet de la convertir', '3s', '92:93:102:105:106:112'),
(16, 3, 'Transmission et/ou conversion de l&apos;&#233;nergie', 'Par quoi et comment est transmise et/ou transform&#233;e l&apos;&#233;nergie dans un objet technique', '4s', '91:92:93:99:98:103:105:106:111:112'),
(17, 3, 'Acquisition et transmission de l&apos;information', 'Par quoi et comment est sont r&#233;alis&#233;es l&apos;acquisition et la transmission de l&apos;information', '4s', '91:92:93:102:113:114:118:120'),
(18, 3, 'R&#233;gulation du milieu ambiant', 'Par quoi et comment est r&#233;gul&#233;e l&apos;&#233;nergie pour am&#233;liorer le confort de l&apos;utilisateur', '2s', '91:92:93:102:103:105:106:107:111:112:113'),
(19, 3, 'Commande ou pilotage', 'Par quoi et comment est command&#233;e un objet technique', '4s', '91:92:93:102:111:112:115:116:117'),
(20, 3, 'Conception et r&#233;alisation d&apos;un syst&#232;me automatique', 'Comment g&#233;rer un projet de conception et la r&#233;alisation d&apos;un syst&#232;me automatis&#233;', '6s', '94:95:96:97:99:100:103:121:122:123:124:125:126:127:128');

--
-- Base de données: `comp_techno`
--

-- --------------------------------------------------------

--
-- Structure de la table `capacites`
--

CREATE TABLE IF NOT EXISTS `capacites` (
  `id` int(11) NOT NULL auto_increment,
  `connaissance` varchar(255) NOT NULL,
  `capacite` varchar(255) NOT NULL,
  `niveau` int(11) NOT NULL,
  `id_contenu` int(11) NOT NULL,
  `id_classe` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=172 ;

--
-- Contenu de la table `capacites`
--

INSERT INTO `capacites` (`id`, `connaissance`, `capacite`, `niveau`, `id_contenu`, `id_classe`) VALUES
(1, 'Objet technique.', 'Distinguer en le justifiant objet et objet technique.', 1, 1, 1),
(2, 'Besoin.', 'Mettre en relation besoin et objet technique.', 1, 1, 1),
(3, 'Fonction.', 'Distinguer fonction d&apos;usage et fonction d&apos;estime.', 1, 1, 1),
(4, 'Fonction.', '&eacute;noncer la fonction d&apos;usage d&apos;un objet technique.', 1, 1, 1),
(5, 'Fonction.', '&eacute;noncer les crit&egrave;res li&eacute;s aux fonctions d&apos;estime pour un objet technique.', 1, 1, 1),
(6, 'Valeur.', 'Identifier les composantes de la valeur d&apos;un objet technique : prix, fiabilit&eacute;, disponibilit&eacute;, d&eacute;lai.', 1, 1, 1),
(7, 'Principe g&eacute;n&eacute;ral de fonctionnement.', 'D&eacute;crire le principe g&eacute;n&eacute;ral de fonctionnement d&apos;un objet technique.', 2, 1, 1),
(8, 'Principe g&eacute;n&eacute;ral de fonctionnement.', 'Identifier les principaux &eacute;l&eacute;ments qui constituent l&apos;objet technique.', 1, 1, 1),
(9, 'Fonction technique, solution technique.', 'Dresser la liste des fonctions techniques qui participent &agrave; la fonction d&apos;usage.', 1, 1, 1),
(10, 'Fonction technique, solution technique.', 'Identifier des solutions techniques qui assurent une fonction technique.', 2, 1, 1),
(11, 'Mode de repr&eacute;sentation : croquis, vues 2D, perspective, mod&egrave;le num&eacute;rique 3D.', 'Identifier, &agrave; partir d&apos;une repr&eacute;sentation, les &eacute;l&eacute;ments qui assurent une fonction technique.', 2, 1, 1),
(12, 'Mode de repr&eacute;sentation : croquis, vues 2D, perspective, mod&egrave;le num&eacute;rique 3D.', 'D&eacute;crire graphiquement &agrave; l&apos;aide de croquis &agrave; main lev&eacute;e ou de sch&eacute;mas le fonctionnement observ&eacute; des &eacute;l&eacute;ments constituant une fonction technique.', 2, 1, 1),
(13, 'Informations et caract&eacute;ristiques techniques.', 'Distinguer, dans une notice, les informations qui rel&egrave;vent de la mise en service d&apos;un produit, de son utilisation, de son entretien, ainsi que les r&egrave;gles de s&eacute;curit&eacute; &agrave; observer.', 1, 1, 1),
(14, 'Informations et caract&eacute;ristiques techniques.', 'Extraire d&apos;une fiche produit les caract&eacute;ristiques techniques. ', 2, 1, 1),
(15, 'Mat&eacute;riaux usuels : m&eacute;talliques, organiques, c&eacute;ramiques.', 'Indiquer &agrave; quelle famille appartient un mat&eacute;riau.', 1, 2, 1),
(16, 'Caract&eacute;ristiques physiques des mat&eacute;riaux.', 'Mettre en &eacute;vidence &agrave; l&apos;aide d&apos;un protocole exp&eacute;rimental quelques propri&eacute;t&eacute;s de mat&eacute;riaux.', 1, 2, 1),
(17, 'Caract&eacute;ristiques physiques des mat&eacute;riaux.', 'Classer les mat&eacute;riaux par rapport &agrave; l&apos;une de leurs caract&eacute;ristiques.', 1, 2, 1),
(18, 'Relations entre formes, mat&eacute;riaux et proc&eacute;d&eacute;s de r&eacute;alisation', 'Identifier les relations formes - mat&eacute;riaux - proc&eacute;d&eacute;s de r&eacute;alisation.', 1, 2, 1),
(19, 'Caract&eacute;ristiques &eacute;conomiques des mat&eacute;riaux', 'Mettre en relation le choix d&apos;un mat&eacute;riau pour un usage donn&eacute;, son co&ucirc;t et sa capacit&eacute; de valorisation.', 1, 2, 1),
(20, 'Contraintes environnementales.', 'Identifier l&apos;impact de l&apos;emploi de certains mat&eacute;riaux sur l&apos;environnement dans les diff&eacute;rentes &eacute;tapes de la vie de l&apos;objet.', 1, 2, 1),
(21, 'Nature de l&apos;&eacute;nergie de fonctionnement : m&eacute;canique, &eacute;lectrique, thermique, musculaire, hydraulique.', 'Indiquer la nature des &eacute;nergies utilis&eacute;es pour le fonctionnement de l&apos;objet technique.', 1, 3, 1),
(22, 'El&eacute;ments de stockage (pile chimique, accumulateur, r&eacute;serve naturelle...) de distribution (m&eacute;canismes, fils conducteurs &eacute;lectriques, tuyaux, canalisations) et de transformation (moteur, v&eacute;rin) de l&apos;&eacute;nergie.', 'Identifier les &eacute;l&eacute;ments de stockage, de distribution, et de transformation de l&apos;&eacute;nergie.', 1, 3, 1),
(23, 'El&eacute;ments de stockage (pile chimique, accumulateur, r&eacute;serve naturelle...) de distribution (m&eacute;canismes, fils conducteurs &eacute;lectriques, tuyaux, canalisations) et de transformation (moteur, v&eacute;rin) de l&apos;&eacute;nergie.', 'Repr&eacute;senter la circulation de l&apos;&eacute;nergie dans un objet technique par un croquis.', 2, 3, 1),
(24, 'Impact sur l&apos;environnement : d&eacute;gradation de l&apos;air, de l&apos;eau et du sol.', 'Indiquer le caract&egrave;re plus ou moins polluant de la source d&apos;&eacute;nergie utilis&eacute;e pour le fonctionnement de l&apos;objet technique.', 1, 3, 1),
(25, 'Familles d&apos;objets.', 'Citer des objets r&eacute;pondant &agrave; une m&ecirc;me fonction d&apos;usage.', 1, 4, 1),
(26, 'Avanc&eacute;es technologiques.', 'Identifier quelques &eacute;volutions techniques et esth&eacute;tiques.', 1, 4, 1),
(27, 'Avanc&eacute;es technologiques.', 'Situer dans le temps ces &eacute;volutions.', 1, 4, 1),
(28, 'Serveurs. Postes de travail. Terminaux mobiles. P&eacute;riph&eacute;riques. Logiciels.', 'Identifier les principaux composants mat&eacute;riels et logiciels d&apos;un environnement informatique.', 1, 5, 1),
(29, 'Acquisition et restitution des donn&eacute;es.', 'Entrer des informations : clavier, lecture magn&eacute;tique, scanneur, appareil photo.', 3, 5, 1),
(30, 'Acquisition et restitution des donn&eacute;es.', 'Restituer des informations : affichage (&eacute;crans...), impression (encre, 3D, braille...), son, pilotage de machines... ', 3, 5, 1),
(31, 'Stockage des donn&eacute;es, arborescence. M&eacute;moire. Unit&eacute; de stockage.', 'Recenser des donn&eacute;es, les classer, les identifier, les stocker, les retrouver dans une arborescence.', 3, 5, 1),
(32, 'Stockage des donn&eacute;es, arborescence. M&eacute;moire. Unit&eacute; de stockage.', 'Distinguer le r&ocirc;le des diff&eacute;rents types de m&eacute;moire.', 3, 5, 1),
(33, 'Consultation de documents num&eacute;riques.', 'ouvrir et consulter des documents existants (textes, sch&eacute;mas, animations, repr&eacute;sentations volumiques...), extraire les informations utiles.', 3, 5, 1),
(34, 'Cr&eacute;ation et transmission de documents num&eacute;riques.', 'Composer, pr&eacute;senter un document num&eacute;rique (message, texte mis en page, tableaux, sch&eacute;ma, composition graphique) et le communiquer &agrave; un destinataire par des moyens &eacute;lectroniques. ', 3, 5, 1),
(35, 'Cr&eacute;ation et transmission de documents num&eacute;riques.', 'Pr&eacute;senter dans un document num&eacute;rique les &eacute;tapes d&apos;une d&eacute;marche ou d&apos;un raisonnement.', 3, 5, 1),
(36, 'Recherche d&apos;informations sur la toile.', 'Retrouver une ou plusieurs informations &agrave; partir d&apos;adresses URL donn&eacute;es.', 2, 5, 1),
(37, 'Modes de repr&eacute;sentation (images, projections, cotes, symboles).', 'Extraire d&apos;un dessin, d&apos;un plan, d&apos;un sch&eacute;ma, d&apos;un &eacute;clat&eacute; ou d&apos;une nomenclature les informations utiles pour la fabrication ou l&apos;assemblage.', 2, 6, 1),
(38, 'Formes permises par les proc&eacute;d&eacute;s de fabrication (usinage, d&eacute;coupage, formage)./ Mise en position et maintien d&apos;une pi&egrave;ce', 'Associer un proc&eacute;d&eacute; de fabrication &agrave; une forme.', 2, 6, 1),
(39, 'Formes permises par les proc&eacute;d&eacute;s de fabrication (usinage, d&eacute;coupage, formage)./ Mise en position et maintien d&apos;une pi&egrave;ce', 'R&eacute;aliser en suivant un protocole donn&eacute;.|', 2, 6, 1),
(40, 'Formes permises par les proc&eacute;d&eacute;s de fabrication (usinage, d&eacute;coupage, formage)./ Mise en position et maintien d&apos;une pi&egrave;ce', 'Utiliser rationnellement mat&eacute;riels et outillages dans le respect des r&egrave;gles de s&eacute;curit&eacute;.', 2, 6, 1),
(41, 'Proc&eacute;d&eacute;s d&apos;assemblage :soudage, rivetage, collage, embo&icirc;tement, vissage.', 'R&eacute;aliser un assemblage ou tout ou partie d&apos;un objet technique en suivant une proc&eacute;dure formalis&eacute;e.', 2, 6, 1),
(42, 'Proc&eacute;d&eacute;s d&apos;assemblage :soudage, rivetage, collage, embo&icirc;tement, vissage.', 'Effectuer un geste technique en respectant les consignes.', 2, 6, 1),
(43, 'Proc&eacute;d&eacute;s d&apos;assemblage :soudage, rivetage, collage, embo&icirc;tement, vissage.', 'Tester le fonctionnement.', 2, 6, 1),
(44, 'Mesure dimensionnelle (diam&egrave;tre, distance), unit&eacute;.', 'Mesurer et contr&ocirc;ler &agrave; l&apos;aide d&apos;instruments de mesure, d&apos;un gabarit.', 2, 6, 1),
(45, 'Mesure dimensionnelle (diam&egrave;tre, distance), unit&eacute;.', 'Confronter le r&eacute;sultat &agrave; celui attendu.', 2, 6, 1),
(46, 'Fonction.', 'Identifier des fonctions assur&eacute;es par un objet technique.', 1, 1, 2),
(47, 'Solutions techniques.', 'Identifier la solution technique retenue pour r&eacute;aliser une fonction de service.', 1, 1, 2),
(48, 'Solutions techniques.', 'Comparer, sur diff&eacute;rents objets techniques, les solutions techniques retenues pour r&eacute;pondre &agrave; une m&ecirc;me fonction de service.', 1, 1, 2),
(49, 'Solutions techniques.', 'Modifier tout ou partie d&apos;une structure ou d&apos;un assemblage pour satisfaire une fonction de service donn&eacute;e.', 2, 1, 2),
(50, 'Solutions techniques.', 'R&eacute;aliser cette modification &agrave; l&apos;aide d&apos;un logiciel. ', 3, 1, 2),
(51, 'Contraintes (fonctionnement,dur&eacute;e de vie,s&eacute;curit&eacute;,esth&eacute;tique et ergonomie,d&eacute;veloppement durable).', 'Mettre en relation les contraintes &agrave; respecter et les solutions techniques retenues.', 1, 1, 2),
(52, 'Contraintes (fonctionnement,dur&eacute;e de vie,s&eacute;curit&eacute;,esth&eacute;tique et ergonomie,d&eacute;veloppement durable).', 'Relier les choix esth&eacute;tiques au style artistique en vigueur au moment de la cr&eacute;ation.', 1, 1, 2),
(53, 'Contexte social et &eacute;conomique.', 'Identifier, de mani&egrave;re qualitative,l&apos;influence d&apos;un contexte social et &eacute;conomique sur la conception et la commercialisation d&apos;un objet technique simple.', 1, 1, 2),
(54, 'Croquis, sch&eacute;ma, codes de repr&eacute;sentation.', 'Traduire sous forme de croquis l&apos;organisation structurelle d&apos;un objet technique.', 2, 1, 2),
(55, 'Croquis, sch&eacute;ma, codes de repr&eacute;sentation.', 'Traduire sous forme de sch&eacute;ma les fonctions assur&eacute;es par un objet technique.', 1, 1, 2),
(56, 'Mod&eacute;lisation du r&eacute;el maquette, mod&egrave;les g&eacute;om&eacute;trique et num&eacute;rique) et repr&eacute;sentation en conception assist&eacute;e par ordinateur.', 'R&eacute;aliser   la   maquette   num&eacute;rique   d&apos;un volume &eacute;l&eacute;mentaire.', 3, 1, 2),
(57, 'Mod&eacute;lisation du r&eacute;el maquette, mod&egrave;les g&eacute;om&eacute;trique et num&eacute;rique) et repr&eacute;sentation en conception assist&eacute;e par ordinateur.', 'Modifier une repr&eacute;sentation num&eacute;rique d&apos;un volume simple avec un logiciel de conception assist&eacute;e par ordinateur.', 2, 1, 2),
(58, 'Mod&eacute;lisation du r&eacute;el maquette, mod&egrave;les g&eacute;om&eacute;trique et num&eacute;rique) et repr&eacute;sentation en conception assist&eacute;e par ordinateur.', 'Associer une repr&eacute;sentation 3D &agrave; une repr&eacute;sentation 2D.', 2, 1, 2),
(59, 'Propri&eacute;t&eacute;s des mat&eacute;riaux : - propri&eacute;t&eacute;s intrins&egrave;ques (aspect physique, propri&eacute;t&eacute;s m&eacute;caniques, acoustiques, thermiques).', 'Mettre en place et interpr&eacute;ter un essai pour d&eacute;finir, de fa?on qualitative, une propri&eacute;t&eacute; donn&eacute;e.', 2, 2, 2),
(60, 'Propri&eacute;t&eacute;s des mat&eacute;riaux : - propri&eacute;t&eacute;s intrins&egrave;ques (aspect physique, propri&eacute;t&eacute;s m&eacute;caniques, acoustiques, thermiques).', 'Classer de mani&egrave;re qualitative plusieurs mat&eacute;riaux selon une propri&eacute;t&eacute; simple &agrave; respecter.', 2, 2, 2),
(61, 'Propri&eacute;t&eacute;s m&eacute;caniques et esth&eacute;tiques d&apos;une structure: r&eacute;sistance, d&eacute;formation, esth&eacute;tique.', 'Mettre en relation, dans une structure, une ou des propri&eacute;t&eacute;s avec les formes, les mat&eacute;riaux et les efforts mis en jeu.', 2, 2, 2),
(62, 'Origine des mati&egrave;res premi&egrave;res et disponibilit&eacute; des mat&eacute;riaux.', 'Identifier l&apos;origine des mati&egrave;res premi&egrave;res et leur disponibilit&eacute;.', 1, 2, 2),
(63, 'Origine des mati&egrave;res premi&egrave;res et disponibilit&eacute; des mat&eacute;riaux.', 'Associer le mat&eacute;riau de l&apos;objet technique &agrave; la (ou aux) mati&egrave;re(s) premi&egrave;re(s).', 1, 2, 2),
(64, 'Origine des mati&egrave;res premi&egrave;res et disponibilit&eacute; des mat&eacute;riaux.', 'Identifier l&apos;impact d&apos;une transformation et d&apos;un recyclage en terme de d&eacute;veloppement durable.', 1, 2, 2),
(65, 'Cha&icirc;ne d&apos;&eacute;nergie : alimentation, distribution,stockage, transformation,transport de l&apos;&eacute;nergie.', 'Rep&eacute;rer, sur un objet technique, les &eacute;nergies d&apos;entr&eacute;e et de sortie.', 2, 3, 2),
(66, 'Cha&icirc;ne d&apos;&eacute;nergie : alimentation, distribution,stockage, transformation,transport de l&apos;&eacute;nergie.', 'Rep&eacute;rer les transformations &eacute;nerg&eacute;tiques.', 1, 3, 2),
(67, 'Cha&icirc;ne d&apos;&eacute;nergie : alimentation, distribution,stockage, transformation,transport de l&apos;&eacute;nergie.', 'Identifier, sur un objet technique, les diff&eacute;rents &eacute;l&eacute;ments de la cha&icirc;ne d&apos;&eacute;nergie et les rep&eacute;rer sur un sch&eacute;ma structurel.', 1, 3, 2),
(68, 'Economie d&apos;&eacute;nergie, pertes.', 'Identifier des solutions qui permettent de r&eacute;duire les pertes &eacute;nerg&eacute;tiques.', 1, 3, 2),
(69, 'Economie d&apos;&eacute;nergie, pertes.', 'Caract&eacute;riser l&apos;impact environnemental de ces &eacute;conomies.', 1, 3, 2),
(70, 'Evolution d&apos;objets techniques dans un contexte historique et socio &eacute;conomique.', 'Identifier l&apos;&eacute;volution des besoins.', 1, 4, 2),
(71, 'Evolution des styles en fonction des principes techniques et des tendances artistiques.', 'Rep&eacute;rer sur une famille d&apos;objets techniques,l&apos;&eacute;volution des principes techniques ou des choix artistiques.', 1, 4, 2),
(72, 'Evolution des styles en fonction des principes techniques et des tendances artistiques.', 'Associer les grands inventeurs, ing&eacute;nieurs et artistes et leurs r&eacute;alisations.', 1, 4, 2),
(73, 'Evolution des outils et des machines.', 'Diff&eacute;rencier outil et machine.', 1, 4, 2),
(74, 'Evolution des outils et des machines.', 'Mettre en relation une t&acirc;che avec diff&eacute;rents outils et machines utilis&eacute;es au cours des &acirc;ges.', 1, 4, 2),
(75, 'Environnement informatique : serveurs, postes de travail, terminaux mobiles, p&eacute;riph&eacute;riques, logiciels.', 'Distinguer les fonctions et &eacute;noncer les caract&eacute;ristiques essentielles des composants mat&eacute;riels et logiciels d&apos;un environnement informatique.', 2, 5, 2),
(76, 'Organisation fonctionnelle des r&eacute;seaux.', 'Identifier les principes de base de l&apos;organisation et du fonctionnement d&apos;un r&eacute;seau.', 2, 5, 2),
(77, 'Outils de base (forum,t&eacute;l&eacute;chargement, vote en ligne, publication, messagerie interne, r&eacute;pertoires?) d&apos;un environnement d&apos;un espace num&eacute;rique de travail (ENT).', 'Entrer dans un ENT, identifier les services pour un travail collectif et utiliser les principales fonctionnalit&eacute;s des outils propres &agrave; un ENT.', 3, 5, 2),
(78, 'Outils logiciels (traitement de textes, tableur-grapheur, de pr&eacute;sentation, de cr&eacute;ation et de visualisation 3D)', 'Organiser des informations pour les utiliser. Produire, composer et diffuser des documents.', 3, 5, 2),
(79, 'Moteur de recherche, mot cl&eacute;, op&eacute;rateurs de recherche', 'Rechercher, recenser, s&eacute;lectionner et organiser des informations pour les utiliser.', 1, 5, 2),
(80, 'Propri&eacute;t&eacute; intellectuelle. Copyright et copyleft.', 'Identifier les sources (auteur, date, titre, lien vers la ressource).', 1, 5, 2),
(81, 'Propri&eacute;t&eacute; intellectuelle. Copyright et copyleft.', 'Identifier les droits d&apos;utilisation et de partage des ressources et des outils num&eacute;riques, ainsi que les risques encourus en cas de non respect des r&egrave;gles et proc&eacute;dures d&apos;utilisation.', 1, 5, 2),
(82, 'Contraintes li&eacute;es aux proc&eacute;d&eacute;s de fabrication, de contr&ocirc;le et de validation.', 'Associer les formes, l&apos;aspect et la structure d&apos;un composant &agrave; un proc&eacute;d&eacute; de r&eacute;alisation.', 1, 6, 2),
(83, 'Contraintes li&eacute;es aux proc&eacute;d&eacute;s de fabrication, de contr&ocirc;le et de validation.', 'Enoncer les contraintes de s&eacute;curit&eacute; li&eacute;es &agrave; la mise en ?uvre d&apos;un proc&eacute;d&eacute; de r&eacute;alisation.', 2, 6, 2),
(84, 'Contraintes li&eacute;es aux proc&eacute;d&eacute;s de fabrication, de contr&ocirc;le et de validation.', 'Proposer un contr&ocirc;le pour la r&eacute;alisation future (pi&egrave;ces, assemblage, produit fini).', 2, 6, 2),
(85, 'Prototype, maquette.', 'Distinguer l&apos;usage d&apos;une maquette et d&apos;un prototype dans le d&eacute;veloppement d&apos;un objet technique.', 2, 6, 2),
(86, 'Prototype, maquette.', 'Participer &agrave; la r&eacute;alisation de la maquette d&apos;un objet technique.', 3, 6, 2),
(87, 'Echelles.', 'Transf&eacute;rer les donn&eacute;es d&apos;un plan sur une maquette ou dans la r&eacute;alit&eacute;.', 3, 6, 2),
(88, 'Echelles.', 'Relever des dimensions sur l&apos;objet technique r&eacute;el et les adapter &agrave; la r&eacute;alisation d&apos;une maquette ou d&apos;un plan.', 3, 6, 2),
(89, 'Processus op&eacute;ratoire de r&eacute;alisation d&apos;un objet technique.', 'Situer son action sur un planning de r&eacute;alisation d&apos;un objet technique.', 3, 6, 2),
(90, 'Ant&eacute;riorit&eacute;s et ordonnancement.', 'Justifier des ant&eacute;riorit&eacute;s des op&eacute;rations de fabrication ou d&apos;assemblage.', 2, 6, 2),
(91, 'Repr&eacute;sentation fonctionnelle.', 'D&eacute;crire sous forme sch&eacute;matique, le fonctionnement de l&apos;objet technique.', 1, 1, 3),
(92, 'Repr&eacute;sentation fonctionnelle.', 'Associer &agrave; chaque bloc fonctionnel les composants r&eacute;alisant une fonction.', 2, 1, 3),
(93, 'Repr&eacute;sentation fonctionnelle.', '&eacute;tablir un croquis du circuit d&apos;alimentation &eacute;nerg&eacute;tique et un croquis du circuit informationnel d&apos;un objet technique.', 3, 1, 3),
(94, 'Contraintes( fonctionnement, s&eacute;curit&eacute;, esth&eacute;tique, ergonomie, d&eacute;veloppement durable.)', 'Mettre en relation des contraintes que l&apos;objet technique doit respecter et les solutions techniques retenues.', 2, 1, 3),
(95, 'Contraintes &eacute;conomiques : co&ucirc;t global.', 'Identifier les &eacute;l&eacute;ments qui d&eacute;terminent le co&ucirc;t d&apos;un objet technique.', 1, 1, 3),
(96, 'Solution technique.', 'Rechercher et d&eacute;crire plusieurs solutions techniques pour r&eacute;pondre &agrave; une fonction donn&eacute;e.', 2, 1, 3),
(97, 'Solution technique.', 'Choisir et r&eacute;aliser une solution technique.', 3, 1, 3),
(98, 'Repr&eacute;sentation structurelle : mod&eacute;lisation du r&eacute;el (maquette,mod&egrave;les g&eacute;om&eacute;trique et num&eacute;rique).', 'Rechercher et s&eacute;lectionner un &eacute;l&eacute;ment dans une biblioth&egrave;que de constituants pour l&apos;int&eacute;grer dans une maquette num&eacute;rique.', 3, 1, 3),
(99, 'Repr&eacute;sentation structurelle : mod&eacute;lisation du r&eacute;el (maquette,mod&egrave;les g&eacute;om&eacute;trique et num&eacute;rique).', 'Cr&eacute;er une repr&eacute;sentation num&eacute;rique d&apos;un objet technique simple avec un logiciel de conception assist&eacute;e par ordinateur. ', 3, 1, 3),
(100, 'Planification des activit&eacute;s.', 'Cr&eacute;er et justifier tout ou partie d&apos;un planning.', 2, 1, 3),
(101, 'Propri&eacute;t&eacute;s des mat&eacute;riaux : (aspect physique,propri&eacute;t&eacute;s m&eacute;caniques,&eacute;lectriques,thermique, aptitude &agrave; la mise en forme).', 'Classer de mani&egrave;re qualitative plusieurs mat&eacute;riaux selon une propri&eacute;t&eacute; simple impos&eacute;e par les contraintes que doit satisfaire l&apos;objet technique.', 3, 2, 3),
(102, 'Propri&eacute;t&eacute;s des mat&eacute;riaux : (aspect physique,propri&eacute;t&eacute;s m&eacute;caniques,&eacute;lectriques,thermique, aptitude &agrave; la mise en forme).', 'Mettre en place et interpr&eacute;ter un essai pour mettre en &eacute;vidence une propri&eacute;t&eacute; &eacute;lectrique ou thermique donn&eacute;e.', 2, 2, 3),
(103, 'Propri&eacute;t&eacute;s des mat&eacute;riaux : (aspect physique,propri&eacute;t&eacute;s m&eacute;caniques,&eacute;lectriques,thermique, aptitude &agrave; la mise en forme).', 'V&eacute;rifier la capacit&eacute; de mat&eacute;riaux &agrave; satisfaire une propri&eacute;t&eacute; donn&eacute;e.', 1, 2, 3),
(104, 'Caract&eacute;ristiques &eacute;conomiques des mat&eacute;riaux : co&ucirc;t, valorisation (au sens de l&apos;&eacute;cologie).', 'Mettre en relation le choix d&apos;un mat&eacute;riau pour un usage donn&eacute;, son co&ucirc;t et sa capacit&eacute; de valorisation.', 2, 2, 3),
(105, 'Efficacit&eacute; &eacute;nerg&eacute;tique.', 'Comparer les quantit&eacute;s d&apos;&eacute;nergie consomm&eacute;e par deux objets techniques.', 2, 3, 3),
(106, 'Efficacit&eacute; &eacute;nerg&eacute;tique.', 'Indiquer la nature des &eacute;nergies utilis&eacute;es pour le fonctionnement de l&apos;objet technique.', 2, 3, 3),
(107, 'Gestion de l&apos;&eacute;nergie, r&eacute;gulation.', 'Identifier dans la cha&icirc;ne de l&apos;&eacute;nergie les composants qui participent &agrave; la gestion de l&apos;&eacute;nergie et du confort.', 1, 3, 3),
(108, 'Adaptation aux besoins et &agrave; la soci&eacute;t&eacute;.', 'Associer l&apos;utilisation d&apos;un objet technique &agrave; une &eacute;poque, &agrave; une r&eacute;gion du globe.', 2, 4, 3),
(109, 'Adaptation aux besoins et &agrave; la soci&eacute;t&eacute;.', 'Comparer les choix esth&eacute;tiques et ergonomiques d&apos;objets techniques d&apos;&eacute;poques diff&eacute;rentes."', 2, 4, 3),
(110, 'Evolution des solutions techniques :(non-m&eacute;canis&eacute;es,m&eacute;canis&eacute;es,automatiques,informatis&eacute;es).', 'Rep&eacute;rer dans les &eacute;tapes de l&apos;&eacute;volution des solutions techniques la nature et l&apos;importance de l&apos;intervention humaine &agrave; c&ocirc;t&eacute; du d&eacute;veloppement de l&apos;automatisation.', 2, 4, 3),
(111, 'Cha&icirc;ne d&apos;informations.Cha&icirc;ne d&apos;&eacute;nergie.', 'Rep&eacute;rer, &agrave; partir du fonctionnement d&apos;un syst&egrave;me automatique la cha&icirc;ne : d&apos;informations (acqu&eacute;rir, traiter,transmettre), d&apos;&eacute;nergie (alimenter, distribuer, convertir, transmettre).', 1, 5, 3),
(112, 'Cha&icirc;ne d&apos;informations.Cha&icirc;ne d&apos;&eacute;nergie.', 'Identifier les &eacute;l&eacute;ments qui les composent.', 1, 5, 3),
(113, 'Forme du signal : information analogique, information num&eacute;rique.', 'Identifier les modes et dispositifs d&apos;acquisition de signaux, de donn&eacute;es.', 1, 5, 3),
(114, 'Forme du signal : information analogique, information num&eacute;rique.', 'Identifier la nature d&apos;une information et du signal qui la porte.', 1, 5, 3),
(115, 'Traitement du signal : algorithme, organigramme, programme.', 'Identifier les &eacute;tapes d&apos;un programme de commande repr&eacute;sent&eacute; sous forme graphique.', 1, 5, 3),
(116, 'Traitement du signal : algorithme, organigramme, programme.', 'Modifier la repr&eacute;sentation du programme de commande d&apos;un syst&egrave;me pour r&eacute;pondre &agrave; un besoin particulier et valider le r&eacute;sultat obtenu.', 2, 5, 3),
(117, 'Commande d&apos;un objet technique et logique combinatoire de base : ET, OU, NON.', 'Identifier une condition logique de commande.', 2, 5, 3),
(118, 'Interface. Mode de transmission avec ou sans fil.', 'Identifier les composants d&apos;une interface entre cha&icirc;ne d&apos;&eacute;nergie et cha&icirc;ne d&apos;informations (r&eacute;els ou objets graphiques virtuels).', 2, 5, 3),
(119, 'Transport du signal : (lumi&egrave;re, infrarouge, ondes : hertziennes, ultrasons, &eacute;lectrique)', 'Rep&eacute;rer le mode de transmission pour une application donn&eacute;e.', 1, 5, 3),
(120, 'Transport du signal : (lumi&egrave;re, infrarouge, ondes : hertziennes, ultrasons, &eacute;lectrique)', 'Associer un mode de transmission &agrave; un besoin donn&eacute;.', 1, 5, 3),
(121, 'Poste de travail ? R&egrave;gles de s&eacute;curit&eacute;.', 'Identifier et classer les contraintes de fonctionnement, d&apos;utilisation, de s&eacute;curit&eacute; du poste de travail.', 2, 6, 3),
(122, 'Poste de travail ? R&egrave;gles de s&eacute;curit&eacute;.', 'Organiser le poste de travail.', 3, 6, 3),
(123, 'Contraintes li&eacute;es aux proc&eacute;d&eacute;s et modes de fabrication : formes possibles, pr&eacute;cision accessible. Contraintes li&eacute;es aux proc&eacute;d&eacute;s de contr&ocirc;le et de validation.', '&eacute;noncer les contraintes techniques li&eacute;es &agrave; la mise en oeuvre d&apos;un proc&eacute;d&eacute; de r&eacute;alisation.', 2, 6, 3),
(124, 'Contraintes li&eacute;es aux proc&eacute;d&eacute;s et modes de fabrication : formes possibles, pr&eacute;cision accessible. Contraintes li&eacute;es aux proc&eacute;d&eacute;s de contr&ocirc;le et de validation.', 'Mettre en relation des caract&eacute;ristiques g&eacute;om&eacute;triques d&apos;un &eacute;l&eacute;ment et son proc&eacute;d&eacute; de r&eacute;alisation.', 2, 6, 3),
(125, 'Contraintes li&eacute;es aux proc&eacute;d&eacute;s et modes de fabrication : formes possibles, pr&eacute;cision accessible. Contraintes li&eacute;es aux proc&eacute;d&eacute;s de contr&ocirc;le et de validation.', 'Pr&eacute;parer un protocole de test et/ou de contr&ocirc;le en fonction des moyens disponibles.', 2, 6, 3),
(126, 'Contraintes li&eacute;es aux proc&eacute;d&eacute;s et modes de fabrication : formes possibles, pr&eacute;cision accessible. Contraintes li&eacute;es aux proc&eacute;d&eacute;s de contr&ocirc;le et de validation.', 'Effectuer un contr&ocirc;le qualit&eacute; de la r&eacute;alisation pour chaque op&eacute;ration importante.', 3, 6, 3),
(127, 'Processus de r&eacute;alisation (fabrication, assemblage,configuration) d&apos;un objet technique.', 'R&eacute;aliser tout ou partie du prototype ou de la maquette d&apos;un objet technique.', 3, 6, 3),
(128, 'Processus de r&eacute;alisation (fabrication, assemblage,configuration) d&apos;un objet technique.', 'Compl&eacute;ter ou modifier un planning pour adapter la r&eacute;alisation d&apos;un objet technique en fonction d&apos;al&eacute;as.', 2, 6, 3),
(129, 'Besoin.', 'Formaliser sans ambigu&iuml;t&eacute; une description du besoin.', 3, 1, 4),
(130, 'Repr&eacute;sentation fonctionnelle.', '&eacute;noncer et d&eacute;crire sous forme graphique des fonctions que l&apos;objet technique doit satisfaire. ', 2, 1, 4),
(131, 'Repr&eacute;sentation fonctionnelle.', 'D&eacute;finir les crit&egrave;res d&apos;appr&eacute;ciation d&apos;une ou plusieurs fonctions.', 2, 1, 4),
(132, 'Contraintes (fonctionnement, dur&eacute;e de vie, s&eacute;curit&eacute;, esth&eacute;tique, ergonomie, environnement, d&eacute;veloppement durable, aspects &eacute;conomiques budget et co&ucirc;t) :', 'Dresser la liste des contraintes &agrave; respecter. ', 3, 1, 4),
(133, 'Contraintes (fonctionnement, dur&eacute;e de vie, s&eacute;curit&eacute;, esth&eacute;tique, ergonomie, environnement, d&eacute;veloppement durable, aspects &eacute;conomiques budget et co&ucirc;t) :', 'Pour quelques contraintes choisies, d&eacute;finir le niveau que doit respecter l&apos;objet technique &agrave; concevoir.', 3, 1, 4),
(134, 'Contraintes (fonctionnement, dur&eacute;e de vie, s&eacute;curit&eacute;, esth&eacute;tique, ergonomie, environnement, d&eacute;veloppement durable, aspects &eacute;conomiques budget et co&ucirc;t) :', '&eacute;valuer le co&ucirc;t d&apos;une solution technique et d&apos;un objet technique dans le cadre d&apos;une r&eacute;alisation au coll&egrave;ge.', 2, 1, 4),
(135, 'Cahier des charges simplifi&eacute;.', 'R&eacute;diger ou compl&eacute;ter un cahier des charges simplifi&eacute; de l&apos;objet technique.', 2, 1, 4),
(136, 'Solution technique.', 'Proposer des solutions techniques diff&eacute;rentes qui r&eacute;alisent une m&ecirc;me fonction.', 3, 1, 4),
(137, 'Solution technique.', 'Valider une solution technique propos&eacute;e.', 3, 1, 4),
(138, 'Solution technique.', 'Choisir et r&eacute;aliser une ou plusieurs solutions techniques permettant de r&eacute;aliser une fonction donn&eacute;e.', 3, 1, 4),
(139, 'Repr&eacute;sentation structurelle.Mod&eacute;lisation du r&eacute;el.', 'R&eacute;aliser un sch&eacute;ma, un dessin scientifique ou technique par une repr&eacute;sentation num&eacute;rique &agrave; l&apos;aide d&apos;un logiciel de conception assist&eacute;e par ordinateur, en respectant les conventions.', 3, 1, 4),
(140, 'Planification, ant&eacute;riorit&eacute;, chronologie des op&eacute;rations', 'G&eacute;rer l&apos;organisation et la coordination du projet.', 3, 1, 4),
(141, 'Crit&egrave;res de choix d&apos;un mat&eacute;riau pour une solution technique donn&eacute;e.', 'Identifier les relations principales entre solutions, mat&eacute;riaux et proc&eacute;d&eacute;s de r&eacute;alisation.', 2, 2, 4),
(142, 'La mise en forme des mat&eacute;riaux.', 'Identifier quelques proc&eacute;d&eacute;s permettant de mettre en forme le mat&eacute;riau au niveau industriel et au niveau artisanal.', 1, 2, 4),
(143, 'M&eacute;thodologie de choix de mat&eacute;riaux', 'Identifier les propri&eacute;t&eacute;s pertinentes des mat&eacute;riaux &agrave; prendre en compte pour r&eacute;pondre aux contraintes du cahier des charges.', 1, 2, 4),
(144, 'M&eacute;thodologie de choix de mat&eacute;riaux', 'Hi&eacute;rarchiser les propri&eacute;t&eacute;s.', 2, 2, 4),
(145, 'M&eacute;thodologie de choix de mat&eacute;riaux', 'Choisir un mat&eacute;riau dans une liste fournie en fonction d&apos;un crit&egrave;re d&eacute;fini dans le cahier des charges.', 3, 2, 4),
(146, 'Origine des mati&egrave;res premi&egrave;res et disponibilit&eacute; des mat&eacute;riaux.', 'Identifier l&apos;origine des mati&egrave;res premi&egrave;res et leur disponibilit&eacute;.', 3, 2, 4),
(147, 'Origine des mati&egrave;res premi&egrave;res et disponibilit&eacute; des mat&eacute;riaux.', 'Identifier l&apos;impact d&apos;une transformation et d&apos;un recyclage en terme de d&eacute;veloppement durable.', 2, 2, 4),
(148, 'Caract&eacute;ristiques d&apos;une source d&apos;&eacute;nergie. Crit&egrave;res de choix &eacute;nerg&eacute;tiques.', 'Identifier les caract&eacute;ristiques de diff&eacute;rentes sources d&apos;&eacute;nergie possibles pour l&apos;objet technique.', 2, 3, 4),
(149, 'Caract&eacute;ristiques d&apos;une source d&apos;&eacute;nergie. Crit&egrave;res de choix &eacute;nerg&eacute;tiques.', 'Choisir, pour une application donn&eacute;e, une &eacute;nergie adapt&eacute;e au besoin.', 3, 3, 4),
(150, 'Sources et disponibilit&eacute;s des ressources &eacute;nerg&eacute;tiques (fossile, nucl&eacute;aire, renouvelables)', 'Identifier les grandes familles de sources d&apos;&eacute;nergies.', 1, 3, 4),
(151, 'Impact sur l&apos;environnement (d&eacute;gradation de l&apos;air, de l&apos;eau et du sol.)', 'Indiquer le caract&egrave;re plus ou moins polluant de la source d&apos;&eacute;nergie utilis&eacute;e pour le fonctionnement de l&apos;objet technique.', 2, 3, 4),
(152, 'Dur&eacute;e de vie. Cycle de vie d&apos;un objet technique.', 'Rep&eacute;rer pour un objet technique donn&eacute;, sa dur&eacute;e de vie et les conditions r&eacute;elles ou imagin&eacute;es de sa disparition ', 1, 4, 4),
(153, 'Progr&egrave;s technique, inventions et innovations, d&eacute;veloppement durable.', 'Situer dans le temps les inventions en rapport avec l&apos;objet technique &eacute;tudi&eacute;.', 2, 4, 4),
(154, 'Progr&egrave;s technique, inventions et innovations, d&eacute;veloppement durable.', 'Rep&eacute;rer le ou les progr&egrave;s apport&eacute;s par cet objet.', 2, 4, 4),
(155, 'Progr&egrave;s technique, inventions et innovations, d&eacute;veloppement durable.', 'Rep&eacute;rer dans un objet technique donn&eacute; une ou des &eacute;volutions dans les principes techniques de construction (mat&eacute;riaux, &eacute;nergies, structures, design, proc&eacute;d&eacute;s).', 2, 4, 4),
(156, 'Progr&egrave;s technique, inventions et innovations, d&eacute;veloppement durable.', 'Rep&eacute;rer les &eacute;poques et identifier les mesures qui ont entrain&eacute; l&apos;homme &agrave; prendre conscience de la protection de l&apos;environnement.', 1, 4, 4),
(157, 'Veille technologique.', 'Organiser une veille technologique.', 1, 4, 4),
(158, 'Messageries diverses, flux audio ou vid&eacute;o.', 'Choisir un mode de dialogue ou de diffusion adapt&eacute; &agrave; un besoin de communication ', 2, 5, 4),
(159, 'Outils de travail collaboratif : liste de diffusion, forum, blog,partage de documents, partage d&apos;applications. Planification, calendrier. Identit&eacute; num&eacute;rique, mot de passe, identifiant.', 'Choisir et utiliser les services ou les outils adapt&eacute;s aux t&acirc;ches &agrave; r&eacute;aliser dans un travail de groupe ou pour un travail collaboratif.', 2, 5, 4),
(160, 'Outils de travail collaboratif : liste de diffusion, forum, blog,partage de documents, partage d&apos;applications. Planification, calendrier. Identit&eacute; num&eacute;rique, mot de passe, identifiant.', 'Rechercher l&apos;information utile dans le plan d&apos;actions, le suivi des modifications et la planification des travaux &agrave; livrer.', 3, 5, 4),
(161, 'Outils de travail collaboratif : liste de diffusion, forum, blog,partage de documents, partage d&apos;applications. Planification, calendrier. Identit&eacute; num&eacute;rique, mot de passe, identifiant.', 'G&eacute;rer son espace num&eacute;rique : structure des donn&eacute;es, espace m&eacute;moire, sauvegarde et versions, droits d&apos;acc&egrave;s aux documents num&eacute;riques.', 3, 5, 4),
(162, 'Document multim&eacute;dia. Nature et caract&eacute;ristiques des documents multim&eacute;dias.', 'Distinguer les diff&eacute;rents types de documents multim&eacute;dias en fonction de	leurs usages.', 1, 5, 4),
(163, 'Document multim&eacute;dia. Nature et caract&eacute;ristiques des documents multim&eacute;dias.', 'Choisir et justifier un format de fichier pour r&eacute;aliser un document multim&eacute;dia.', 2, 5, 4),
(164, 'Document multim&eacute;dia. Nature et caract&eacute;ristiques des documents multim&eacute;dias.', 'Cr&eacute;er et sc&eacute;nariser un document multim&eacute;dia en r&eacute;ponse &agrave; un projet de publication, mobilisant plusieurs m&eacute;dias.', 3, 5, 4),
(165, 'Propri&eacute;t&eacute;s des mat&eacute;riaux et proc&eacute;d&eacute;s de r&eacute;alisation.', 'Justifier le choix d&apos;un mat&eacute;riau au regard de contraintes de r&eacute;alisation.', 2, 6, 4),
(166, 'Contraintes li&eacute;es aux proc&eacute;d&eacute;s et modes de r&eacute;alisation. Contraintes li&eacute;es aux proc&eacute;d&eacute;s de contr&ocirc;le et de validation.', '&eacute;noncer les contraintes li&eacute;es &agrave; la mise en oeuvre d&apos;un proc&eacute;d&eacute; de r&eacute;alisation et notamment celle li&eacute;es &agrave; la s&eacute;curit&eacute;.', 3, 6, 4),
(167, 'Contraintes li&eacute;es aux proc&eacute;d&eacute;s et modes de r&eacute;alisation. Contraintes li&eacute;es aux proc&eacute;d&eacute;s de contr&ocirc;le et de validation.', 'R&eacute;diger les consignes relatives &agrave; la s&eacute;curit&eacute; dans une fiche de proc&eacute;dure d&apos;une op&eacute;ration. ', 3, 6, 4),
(168, 'Contraintes li&eacute;es aux proc&eacute;d&eacute;s et modes de r&eacute;alisation. Contraintes li&eacute;es aux proc&eacute;d&eacute;s de contr&ocirc;le et de validation.', 'D&eacute;finir &agrave; l&apos;avance les contr&ocirc;les &agrave; effectuer pour toute op&eacute;ration de fabrication ou d&apos;assemblage.', 3, 6, 4),
(169, 'Planning de r&eacute;alisation. Processus de r&eacute;alisation. Ant&eacute;riorit&eacute;s et ordonnancement', 'Cr&eacute;er le planning de r&eacute;alisation du prototype.', 3, 6, 4),
(170, 'Planning de r&eacute;alisation. Processus de r&eacute;alisation. Ant&eacute;riorit&eacute;s et ordonnancement', 'Concevoir le processus de r&eacute;alisation.', 3, 6, 4),
(171, 'Planning de r&eacute;alisation. Processus de r&eacute;alisation. Ant&eacute;riorit&eacute;s et ordonnancement', 'Conduire la r&eacute;alisation du prototype.', 3, 6, 4);

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `id` int(11) NOT NULL auto_increment,
  `classe` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `classes`
--

INSERT INTO `classes` (`id`, `classe`) VALUES
(1, '6eme'),
(2, '5eme'),
(3, '4eme'),
(4, '3eme');

-- --------------------------------------------------------

--
-- Structure de la table `contenus`
--

CREATE TABLE IF NOT EXISTS `contenus` (
  `id` int(11) NOT NULL auto_increment,
  `contenu` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `contenus`
--

INSERT INTO `contenus` (`id`, `contenu`) VALUES
(1, 'Analyse du fonctionnement d''un objet technique'),
(2, 'Les matériaux utilisés'),
(3, 'Les énergies mises en oeuvre'),
(4, 'L''évolution de l''objet technique'),
(5, 'La communication et la gestion de l''information'),
(6, 'Les processus de réalisation d''un objet technique');
