-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : sam. 17 juin 2023 à 14:47
-- Version du serveur : 8.0.30
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `portail_restart`
--
CREATE DATABASE IF NOT EXISTS `portail_restart` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `portail_restart`;

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` int NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `enseignant` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `note` varchar(6) COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Base de données : `twitter`
--
CREATE DATABASE IF NOT EXISTS `twitter` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `twitter`;

-- --------------------------------------------------------

--
-- Structure de la table `tweets`
--

CREATE TABLE `tweets` (
  `id` int NOT NULL,
  `contenu` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tweets`
--

INSERT INTO `tweets` (`id`, `contenu`) VALUES
(4, 'Bonjour le monde!'),
(5, 'Dans la vie je m\'amuse beacoup'),
(6, 'Mais pas trop quand même'),
(7, 'Il faut savoir rester sage '),
(8, 'Wassup biatcheeeessssss'),
(9, 'Le Monde est beau'),
(10, 'Comment ca va aujourd\'hui ?'),
(11, 'I\'m cool about it '),
(12, 'I\'m French'),
(13, 'You suck'),
(14, 'J\'adore la France'),
(18, 'you '),
(19, 'you '),
(20, 'you and me '),
(21, 'me and you '),
(22, 'Red'),
(25, 'Blue'),
(26, 'Green'),
(27, 'White'),
(28, 'Red Green Blue '),
(29, 'Red Green'),
(30, 'I love that i can type anything and it will all fit nicely thanks to my insane css skills');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int NOT NULL,
  `nom` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `pseudo` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `mail` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `motdepasse` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `photo` text COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `pseudo`, `mail`, `motdepasse`, `photo`) VALUES
(1, 'Couturier Thibault', 'Loydam', 'tibo@loydam.fr', 'tata', 'https://picsum.photos/200/300'),
(2, 'Couturier Thibault', 'Loydam', 'rf@re.fr', 'frfrfr', 'https://picsum.photos/200/300'),
(3, 'Thibault ', 'tibo', 'intuile@fr.gt', 'thibut', 'https://picsum.photos/200/300');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tweets`
--
ALTER TABLE `tweets`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tweets`
--
ALTER TABLE `tweets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
