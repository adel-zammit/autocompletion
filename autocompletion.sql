-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 23 fév. 2021 à 15:29
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `autocompletion`
--

-- --------------------------------------------------------

--
-- Structure de la table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
CREATE TABLE IF NOT EXISTS `pokemon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(250) NOT NULL,
  `code` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pokemon`
--

INSERT INTO `pokemon` (`id`, `nom`, `code`, `description`) VALUES
(1, 'Alakazam', '1/102', 'Alakazam 1/101 est une carte du Set de Base sorti en 1996 au Japon arrivé en 2000 en France la liçence ayant une succès fulgurant '),
(2, 'Tortank', '2/102', 'Tortank est l\'évolution de Carapuce '),
(3, 'Leveinard', '3/102', 'Leveinard appartient au Set de Base'),
(4, 'Dracaufeu', '4/102	', 'Dracaufeu est l\'évolution de salaméche'),
(5, 'Mélofée', '5/102	', 'Mélofée ....'),
(6, 'Léviator', '6/102	', 'Léviator  .....'),
(7, 'Tygnon', '7/102', 'Tygnon est le petit frere de Mackogneur'),
(8, 'Mackogneur', '8/102', 'Macckogneur est l\'évolution de Tygnon'),
(9, 'Magnéton', '9/102', 'Magnéton Magnétick'),
(10, 'Mewtwo', '10/102', 'Mewtwo est l\'évolution de Mew'),
(11, 'Nidoking', '11/102', 'Nidoking rhinocéroce '),
(12, 'Feunard', '12/102', 'Feunard le renard de feu'),
(13, 'Tartard', '13/102', 'Tartard est l\'évolution de Tartare'),
(14, 'Raichu', '14/102', 'Raicha est le petit frére de Pikachu'),
(15, 'Florizarre', '15/102', 'Florizarre est l\'évolution de Bulbizarre'),
(16, 'Électhor', '16/102', 'Electhor'),
(17, 'Dardargnan', '17/102', 'Dardargnan'),
(18, 'Draco', '18/102', 'Draco'),
(19, 'Triopikeur', '19/102', 'Triopikeur ...'),
(20, 'Élektek', '20/102', 'Eletek Electhor'),
(21, 'Électrode', '21/102', 'Electrode ...'),
(22, 'Roucoups', '22/102', 'Rocoups ...'),
(23, 'Arcanin', '23/102', 'Arcanin ...'),
(24, 'Reptincel', '24/102', 'Reptincel est l\'évolution de Salamèche'),
(25, 'Lamantine', '25/102', 'Lamantine ...'),
(26, 'Minidraco', '26/102	', 'Minidraco petit frère de Draco '),
(27, 'Canarticho', '27/102', 'Canarticho ...'),
(28, 'Caninos', '28/102', 'Caninos ...'),
(29, 'Spectrum', '29/102', 'Spectrum ...'),
(30, 'Herbizarre', '30/102', 'Herbizzare ...'),
(31, 'Lippoutou', '31/102', 'Lippoutou'),
(32, 'Kadabra', '32/102', 'Kadabra  en lien avec Alakazam'),
(33, 'Coconfort', '33/102', 'Coconfort ....'),
(34, 'Machopeur', '34/102', 'Machopeur en lien avec Mackgneur'),
(35, 'Magicarpe', '35/102', 'Magicarpe ..'),
(36, 'Magmar', '36/102', 'Magmar ...'),
(37, 'Nidorino', '37/102', 'Nidorino fils de Nidoking'),
(38, 'Têtarte', '38/102', 'Tétarte  en lien avec tartar'),
(39, 'Porygon', '39/102', 'Porygon ...'),
(40, 'Rattatac', '40/102', 'Rattack ....'),
(41, 'Otaria', '41/102', 'Otaria ...'),
(42, 'Carabaffe', '42/102', 'Carabaffe en lien avec Carapuce'),
(43, 'Abra', '43/102', 'Abra en lien avec Kadabra'),
(44, 'Bulbizarre', '44/102', 'Bulbizarre en lien avec Herbizarre'),
(45, 'Chenipan', '45/102', 'Chenipan'),
(46, 'Salamèche', '46/102', 'Salaméche ...'),
(47, 'Taupiqueur', '47/102', 'Taupiqueur en lien avec Triopikeur'),
(48, 'Doduo', '48/102', 'Doduo'),
(49, 'Soporifik', '49/102', 'Soporifik ...'),
(50, 'Fantominus', '50/102', 'Fantominus ...');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
