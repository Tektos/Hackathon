-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 13 Septembre 2014 à 18:11
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `rss`
--

-- --------------------------------------------------------

--
-- Structure de la table `Evenement`
--

CREATE TABLE IF NOT EXISTS `evenement` (
  `id_ev` int(11) NOT NULL AUTO_INCREMENT,
  `titre_ev` varchar(200) NOT NULL,
  `desc_ev` varchar(200) NOT NULL,
  `lien_ev` varchar(200) NOT NULL,
  PRIMARY KEY (`id_ev`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `Evenement`
--

INSERT INTO `Evenement` (`id_ev`, `titre_ev`, `desc_ev`, `lien_ev`) VALUES
(1, 'Rentrée associative du CPIE', '<img src="http://www.opalenews.com/vignette.png.php?w=158&h=200&img=medias/images/fjiqmgb24w.jpg" align="left" hspace="15" /><a href="http://www.opalenews.com/agenda/ateliers_91/">Ateliers</a><br />Le', 'http://www.opalenews.com/agenda/evenement_rentree-associative-du-cpie_25273'),
(2, 'Spectacle Olivier de Benoist', '<a href="http://www.opalenews.com/agenda/spectacles_4/">Spectacles</a><br />Le samedi 13 septembre 2014<br />à <a href="http://www.opalenews.com/agenda/ville_le-touquet-paris-plage_816/">Le Touquet-Pa', 'http://www.opalenews.com/agenda/evenement_spectacle-olivier-de-benoist_25403'),
(3, '6ème FORUM CALAIS PASS''SPORTS ', '<a href="http://www.opalenews.com/agenda/salons-et-foires_9/">Salons et foires</a> - <a href="http://www.opalenews.com/agenda/loisirs_12/">Loisirs</a><br />Jusqu''au samedi 13 septembre 2014<br />à <a ', 'http://www.opalenews.com/agenda/evenement_eme-forum-calais-passsports-_25515'),
(4, 'Soirée Country', '<img src="http://www.opalenews.com/vignette.png.php?w=158&h=200&img=medias/images/v9doy8dn5j.jpg" align="left" hspace="15" /><a href="http://www.opalenews.com/agenda/fetes_6/">Fêtes</a> - <a href="htt', 'http://www.opalenews.com/agenda/evenement_soiree-country_25524'),
(5, 'Découverte du monde agricole - STEENWERCK', '<img src="http://www.opalenews.com/vignette.png.php?w=158&h=200&img=medias/images/kx86tc0z9b.jpg" align="left" hspace="15" /><a href="http://www.opalenews.com/agenda/nature_116/">Nature</a><br />Le sa', 'http://www.opalenews.com/agenda/evenement_decouverte-du-monde-agricole-steenwerck_25539'),
(6, 'Rallye historique de boulogne sur mer', '<img src="http://www.opalenews.com/vignette.png.php?w=158&h=200&img=medias/images/few5o2ngru.jpg" align="left" hspace="15" /><a href="http://www.opalenews.com/agenda/animations_80/">Animations</a> - <', 'http://www.opalenews.com/agenda/evenement_rallye-historique-de-boulogne-sur-mer_13624'),
(7, 'Kermesse de la moule', '<img src="http://www.opalenews.com/vignette.png.php?w=158&h=200&img=medias/images/gtsbiast2x.jpg" align="left" hspace="15" /><a href="http://www.opalenews.com/agenda/fetes_6/">Fêtes</a> - <a href="htt', 'http://www.opalenews.com/agenda/evenement_kermesse-de-la-moule_17508'),
(8, 'North Session 2014', '<img src="http://www.opalenews.com/vignette.png.php?w=158&h=200&img=medias/images/8b95zuczcn.jpg" align="left" hspace="15" /><a href="http://www.opalenews.com/agenda/loisirs_12/">Loisirs</a> - <a href', 'http://www.opalenews.com/agenda/evenement_north-session-_24137'),
(9, 'Vente au déballage Place Crèvecoeur', '<img src="http://www.opalenews.com/vignette.png.php?w=158&h=200&img=medias/images/031n5xzndj.png" align="left" hspace="15" /><a href="http://www.opalenews.com/agenda/braderies_2/">Braderies</a><br />L', 'http://www.opalenews.com/agenda/evenement_vente-au-deballage-place-crevecoeur_25299'),
(10, 'Fête du Parc Naturel - 30éme Edition', '<img src="http://www.opalenews.com/vignette.png.php?w=158&h=200&img=medias/images/75aukhk23z.jpg" align="left" hspace="15" /><a href="http://www.opalenews.com/agenda/fetes_6/">Fêtes</a> - <a href="htt', 'http://www.opalenews.com/agenda/evenement_fete-du-parc-naturel-eme-edition_25359'),
(11, 'Marché flottant', '<img src="http://www.opalenews.com/vignette.png.php?w=158&h=200&img=medias/images/10vkz36rew.jpg" align="left" hspace="15" /><a href="http://www.opalenews.com/agenda/marches_81/">Marchés</a><br />Le d', 'http://www.opalenews.com/agenda/evenement_marche-flottant_25425'),
(12, 'Le Touquet-Paris-Plage Historique', '<img src="http://www.opalenews.com/vignette.png.php?w=158&h=200&img=medias/images/2jgj7di8b6.png" align="left" hspace="15" /><a href="http://www.opalenews.com/agenda/animations_80/">Animations</a> - <', 'http://www.opalenews.com/agenda/evenement_le-touquet-paris-plage-historique_25484'),
(13, 'Braderie des Hemmes', '<img src="http://www.opalenews.com/vignette.png.php?w=158&h=200&img=medias/images/n7lji7f3c4.jpg" align="left" hspace="15" /><a href="http://www.opalenews.com/agenda/braderies_2/">Braderies</a> - <a h', 'http://www.opalenews.com/agenda/evenement_braderie-des-hemmes_25485'),
(14, 'Raid international de la cote d''opale', '<img src="http://www.opalenews.com/vignette.png.php?w=158&h=200&img=medias/images/dfjme30qyb.jpg" align="left" hspace="15" /><a href="http://www.opalenews.com/agenda/aquatique_113/">Aquatique</a> - <a', 'http://www.opalenews.com/agenda/evenement_raid-international-de-la-cote-dopale_25487'),
(15, 'Exposition "Les chemins de l''Ecole"', '<img src="http://www.opalenews.com/vignette.png.php?w=158&h=200&img=medias/images/wgc9n6mesu.jpg" align="left" hspace="15" /><a href="http://www.opalenews.com/agenda/expositions_5/">Expositions</a><br', 'http://www.opalenews.com/agenda/evenement_exposition-les-chemins-de-lecole_25517');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
