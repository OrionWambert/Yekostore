-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 16 nov. 2017 à 21:32
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `yekostore`
--

-- --------------------------------------------------------

--
-- Structure de la table `articletbl`
--

CREATE TABLE `articletbl` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `idCategorie` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `quantite` int(11) NOT NULL,
  `date_publication` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `articletbl`
--

INSERT INTO `articletbl` (`id`, `nom`, `description`, `idCategorie`, `prix`, `quantite`, `date_publication`) VALUES
(1, 'Ordinateur Portable', 'Ordinateur Hp de 32gb ram  ', 2, 1500, 5, '2017-11-16 20:11:15'),
(2, 'Les Aventures de Tintin', 'Livre ecrit pas herge....', 1, 455, 5, '2017-11-16 20:15:52'),
(3, 'Sthethoscope', 'Meilleur sthethoscope du marche ....', 8, 55, 225, '2017-11-16 20:17:04'),
(4, 'Naruto Shippuden ', 'Manga Japonnais', 11, 55, 777, '2017-11-16 20:18:06'),
(5, 'Fauteil ', 'Fauteil fais a partir de peau de crocodile', 3, 60000, 2, '2017-11-16 20:19:20'),
(6, 'Samsung Tv', 'television a ecran plat avec ecran super Amoled', 2, 57000, 9, '2017-11-16 20:20:22'),
(7, 'Reseau--Niska', 'Music de nicka', 11, 550, 7, '2017-11-16 20:23:20'),
(8, 'Samsung galaxy S7 Edge', 'Smartphone de la marque Samsung', 2, 550, 7000, '2017-11-16 20:24:10'),
(9, 'Comment devenir un JAVA CHAMPION', 'livre de java', 1, 455, 2, '2017-11-16 20:28:29');

-- --------------------------------------------------------

--
-- Structure de la table `categorietbl`
--

CREATE TABLE `categorietbl` (
  `idC` int(11) NOT NULL,
  `nomC` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categorietbl`
--

INSERT INTO `categorietbl` (`idC`, `nomC`) VALUES
(1, 'livre'),
(2, 'machine'),
(3, 'meuble'),
(4, 'aliment'),
(5, 'cosmetique'),
(6, 'vetement'),
(7, 'maroquinerie'),
(8, 'medical'),
(9, 'ustensile'),
(10, 'boisson'),
(11, 'media');

-- --------------------------------------------------------

--
-- Structure de la table `usertbl`
--

CREATE TABLE `usertbl` (
  `id` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `prenom` varchar(60) NOT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `CompType` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `usertbl`
--

INSERT INTO `usertbl` (`id`, `nom`, `prenom`, `username`, `email`, `CompType`, `password`) VALUES
(1, 'WAMBERT', 'Orioon', 'Admin', 'wambertorion@gmail.com', 'A', '1234'),
(2, 'Bazolo', 'Ricken', 'rck07', 'ricken.bazolo@gmail.com', 'U', '4444');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articletbl`
--
ALTER TABLE `articletbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categorieFK` (`idCategorie`);

--
-- Index pour la table `categorietbl`
--
ALTER TABLE `categorietbl`
  ADD PRIMARY KEY (`idC`);

--
-- Index pour la table `usertbl`
--
ALTER TABLE `usertbl`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articletbl`
--
ALTER TABLE `articletbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `categorietbl`
--
ALTER TABLE `categorietbl`
  MODIFY `idC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT pour la table `usertbl`
--
ALTER TABLE `usertbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articletbl`
--
ALTER TABLE `articletbl`
  ADD CONSTRAINT `categorieFK` FOREIGN KEY (`idCategorie`) REFERENCES `categorietbl` (`idC`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
