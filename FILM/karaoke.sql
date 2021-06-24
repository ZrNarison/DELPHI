-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 03 juin 2020 à 20:09
-- Version du serveur :  10.4.6-MariaDB
-- Version de PHP :  7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `karaoke`
--

-- --------------------------------------------------------

--
-- Structure de la table `acces`
--

CREATE TABLE `acces` (
  `Id` int(11) NOT NULL,
  `utilisateur` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `classement` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `acces`
--

INSERT INTO `acces` (`Id`, `utilisateur`, `code`, `classement`) VALUES
(0, 'GERENT', 'GRT', 'ADMIN	'),
(1, 'VENDEUR(SE)', 'CLT', 'VENDEUR');

-- --------------------------------------------------------

--
-- Structure de la table `facture_achat`
--

CREATE TABLE `facture_achat` (
  `num_a` int(11) NOT NULL,
  `date_a` date NOT NULL,
  `reglement_a` varchar(10) NOT NULL,
  `code_f` varchar(5) NOT NULL,
  `qte_a` varchar(30) NOT NULL,
  `ref_prod` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `facture_vente`
--

CREATE TABLE `facture_vente` (
  `numero_v` int(11) NOT NULL,
  `date_v` date NOT NULL,
  `reglement_v` varchar(15) NOT NULL,
  `code_cli` int(11) NOT NULL,
  `qte_v` varchar(30) NOT NULL,
  `ref_produ` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `code_four` varchar(5) NOT NULL,
  `nom_four` varchar(30) NOT NULL,
  `tel` char(10) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `inventaire`
--

CREATE TABLE `inventaire` (
  `num_inv` int(11) NOT NULL,
  `date_inv` date NOT NULL,
  `duree` time NOT NULL,
  `gerant` varchar(100) NOT NULL,
  `id_respo` int(11) NOT NULL,
  `qte_theor` varchar(20) NOT NULL,
  `qte_reel` varchar(20) NOT NULL,
  `ref_prod` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `reference` varchar(5) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `prix_achat` float NOT NULL,
  `prix_vente` float NOT NULL,
  `tva` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`reference`, `designation`, `prix_achat`, `prix_vente`, `tva`) VALUES
('CC-PM', 'COCA COLA', 140000, 150000, 0),
('sd-pm', 'SODA30Cl', 120000, 150000, 0);

-- --------------------------------------------------------

--
-- Structure de la table `respo`
--

CREATE TABLE `respo` (
  `id` int(11) NOT NULL,
  `nom_r` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `date_nais` date NOT NULL,
  `lieu_nais` varchar(100) NOT NULL,
  `cin` varchar(12) NOT NULL,
  `date_deliv` date NOT NULL,
  `lieu_deliv` varchar(100) NOT NULL,
  `pere` varchar(100) NOT NULL,
  `mere` varchar(100) NOT NULL,
  `diplo` varchar(100) NOT NULL,
  `id_soc` varchar(11) NOT NULL,
  `adres_r` varchar(100) NOT NULL,
  `email_r` varchar(80) NOT NULL,
  `tel_r` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `respo`
--

INSERT INTO `respo` (`id`, `nom_r`, `prenom`, `date_nais`, `lieu_nais`, `cin`, `date_deliv`, `lieu_deliv`, `pere`, `mere`, `diplo`, `id_soc`, `adres_r`, `email_r`, `tel_r`) VALUES
(6, 'HERY', 'HERY', '1991-06-01', 'IHOSY', '13113', '2009-06-01', 'IHOSY', '', 'MARIETTE', 'BACC', 'KARAOKE WES', 'AMBANIANDREFANA - IHOSY', '', '12');

-- --------------------------------------------------------

--
-- Structure de la table `societe`
--

CREATE TABLE `societe` (
  `id` varchar(11) NOT NULL,
  `nom_s` varchar(100) NOT NULL,
  `nif` varchar(100) NOT NULL,
  `stat` varchar(100) NOT NULL,
  `adres_s` varchar(100) NOT NULL,
  `email_s` varchar(100) NOT NULL,
  `tel_s` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `societe`
--

INSERT INTO `societe` (`id`, `nom_s`, `nif`, `stat`, `adres_s`, `email_s`, `tel_s`) VALUES
('KARAOKE WES', 'KARAOKE AMBANIANDREFANA', '121', '1212', 'AMBANIANDREFANA IHSY', 'Karaks@gmail.com', '12');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acces`
--
ALTER TABLE `acces`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `facture_achat`
--
ALTER TABLE `facture_achat`
  ADD PRIMARY KEY (`num_a`),
  ADD KEY `code_f` (`code_f`),
  ADD KEY `ref_prof` (`ref_prod`);

--
-- Index pour la table `facture_vente`
--
ALTER TABLE `facture_vente`
  ADD PRIMARY KEY (`numero_v`),
  ADD KEY `ref_pro` (`ref_produ`),
  ADD KEY `code_cli` (`code_cli`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`code_four`),
  ADD KEY `email` (`email`);

--
-- Index pour la table `inventaire`
--
ALTER TABLE `inventaire`
  ADD PRIMARY KEY (`num_inv`),
  ADD KEY `ref_prod` (`ref_prod`),
  ADD KEY `id_respo` (`id_respo`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`reference`);

--
-- Index pour la table `respo`
--
ALTER TABLE `respo`
  ADD PRIMARY KEY (`id`,`cin`),
  ADD KEY `id_soc` (`id_soc`);

--
-- Index pour la table `societe`
--
ALTER TABLE `societe`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acces`
--
ALTER TABLE `acces`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `facture_achat`
--
ALTER TABLE `facture_achat`
  MODIFY `num_a` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `facture_vente`
--
ALTER TABLE `facture_vente`
  MODIFY `numero_v` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `inventaire`
--
ALTER TABLE `inventaire`
  MODIFY `num_inv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `respo`
--
ALTER TABLE `respo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `facture_achat`
--
ALTER TABLE `facture_achat`
  ADD CONSTRAINT `facture_achat_ibfk_1` FOREIGN KEY (`code_f`) REFERENCES `fournisseur` (`code_four`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `facture_achat_ibfk_2` FOREIGN KEY (`ref_prod`) REFERENCES `produit` (`reference`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `facture_vente`
--
ALTER TABLE `facture_vente`
  ADD CONSTRAINT `facture_vente_ibfk_1` FOREIGN KEY (`ref_produ`) REFERENCES `produit` (`reference`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `inventaire`
--
ALTER TABLE `inventaire`
  ADD CONSTRAINT `inventaire_ibfk_1` FOREIGN KEY (`ref_prod`) REFERENCES `produit` (`reference`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `respo`
--
ALTER TABLE `respo`
  ADD CONSTRAINT `respo_ibfk_1` FOREIGN KEY (`id_soc`) REFERENCES `societe` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
