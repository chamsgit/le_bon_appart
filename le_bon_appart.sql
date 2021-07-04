-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 19 juin 2021 à 01:03
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `le_bon_appart`
--

-- --------------------------------------------------------

--
-- Structure de la table `advert`
--

CREATE TABLE `advert` (
  `id_annonce` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `postal_code` int(8) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `type` enum('location','vente','','') NOT NULL DEFAULT '',
  `price` int(11) DEFAULT NULL,
  `reservation_message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `advert`
--

INSERT INTO `advert` (`id_annonce`, `title`, `description`, `postal_code`, `city`, `type`, `price`, `reservation_message`) VALUES
(1, 'Location appartement', 'ST GERMAIN EN LAYE AU COEUR DE LA VILLE POUR LES AMOUREUX DU CHARME ET DE L\'ATYPIQUE APPT 4 PIECES EN DUPLEX COMPRENANT: ENTREE, SEJOUR DBLE DONNANT SUR BELLE TERRASSE PLEIN SUD AVEC TOMMETTES, CHEMINEE ET PLAFOND CATHEDRALE, CUISINE. OUVERTE AMENAGEE', 78100, 'Saint-Germain-en-Laye', 'location', 2366, ''),
(2, 'Location appartement', 'ST GERMAIN EN LAYE AU COEUR DE LA VILLE POUR LES AMOUREUX DU CHARME  \r\n3 Pièces • 2 Chambres • 112 M²', 78200, 'Saint-Germain-en-Laye', 'vente', 500366, ''),
(3, 'Location appartement 3 pièces 2 chambres 53,09 m²', 'SAINT GERMAIN Centre 2\'RER~Superbe 3 pièces de 53.09m² en excellent état, Entrée, Séjour SUD avec parquet, Cuisine équipée, 2 Chambres avec parquet, Salle de douche, WC.', 78200, 'Saint-Germain-en-Laye', 'vente', 330366, 'Quartier Alsace à Saint-Germain-en-Laye (78100)'),
(4, 'Location appartement 3 pièces 2 chambres 53,09 m²', 'SAINT GERMAIN Centre 2\'RER~Superbe 3 pièces de 53.09m² en excellent état, Entrée, Séjour SUD avec parquet, Cuisine équipée, 2 Chambres avec parquet, Salle de douche, WC.', 78200, 'Saint-Germain-en-Laye', 'location', 330366, 'Quartier Alsace à Saint-Germain-en-Laye (78100)'),
(5, 'Location appartement 3 pièces ', 'SAINT GERMAIN Centre 2\'RER~Superbe 3 pièces de 53.09m² en excellent état, Entrée, Séjour SUD avec parquet, Cuisine équipée, 2 Chambres avec parquet, Salle de douche, WC.', 78200, 'Saint-Germain-en-Laye', 'location', 330366, 'Quartier Alsace à Saint-Germain-en-Laye (78100)'),
(6, 'Appartement ', '7 Pièces • 6 Chambres • 291 M²', 78400, 'Issy-les-Moulineaux', 'location', 7000, 'ssy-les-Moulineaux - Demeure familiale. Demeure familiale, datant de la fin du XIXe siècle, d\'une surface de 290 m² (dotée d\'un sous-sol de 105 m²), et entourée d\'un jardin, sans aucun vis-à-vis. '),
(7, 'Appartement ', '7 Pièces • 6 Chambres • 291 M²', 78400, 'Issy-les-Moulineaux', 'location', 7000, 'ssy-les-Moulineaux - Demeure familiale. Demeure familiale, datant de la fin du XIXe siècle, d\'une surface de 290 m² (dotée d\'un sous-sol de 105 m²), et entourée d\'un jardin, sans aucun vis-à-vis. '),
(8, 'Appartement ', '7 Pièces • 6 Chambres • 291 M²', 78400, 'Issy-les-Moulineaux', 'location', 7000, 'Issy-les-Moulineaux - Demeure familiale. Demeure familiale, datant de la fin du XIXe siècle, d\'une surface de 290 m² (dotée d\'un sous-sol de 105 m²), et entourée d\'un jardin, sans aucun vis-à-vis. '),
(9, 'Appartement ', '7 Pièces • 6 Chambres • 291 M²', 78400, 'Issy-les-Moulineaux', 'location', 7000, 'Issy-les-Moulineaux - Demeure familiale. Demeure familiale, datant de la fin du XIXe siècle, d\'une surface de 290 m² (dotée d\'un sous-sol de 105 m²), et entourée d\'un jardin, sans aucun vis-à-vis. '),
(10, 'Appartement ', '7 Pièces • 6 Chambres • 291 M²', 78400, 'Issy-les-Moulineaux', 'location', 7000, 'Issy-les-Moulineaux - Demeure familiale. Demeure familiale, datant de la fin du XIXe siècle, d\'une surface de 290 m² (dotée d\'un sous-sol de 105 m²), et entourée d\'un jardin, sans aucun vis-à-vis. '),
(11, 'Bastide • Aix-en-Provence', '15 Pièces • 8 Chambres • 600 M²', 78400, 'Aix-en-Provence', 'location', 3780000, 'SUPERBE ET TRÈS RARE- Aix-en-Provence, à 9 minutes du centre ville historique, quartier les Granettes, véritable Bastide du 18ème siècle de 600 m² environ, 3 pièces de réception en rez-de-chaussée, double cuisine, en étage, 8 chambres, salle de cocktail/b'),
(12, 'Bastide • Aix-en-Provence', '15 Pièces • 8 Chambres • 600 M²', 78400, 'Aix-en-Provence', 'location', 3780000, 'SUPERBE ET TRÈS RARE- Aix-en-Provence, à 9 minutes du centre ville historique, quartier les Granettes, véritable Bastide du 18ème siècle de 600 m² environ, 3 pièces de réception en rez-de-chaussée, double cuisine, en étage, 8 chambres, salle de cocktail/b'),
(13, 'Bastide • Aix-en-Provence', '15 Pièces • 8 Chambres • 600 M²', 78400, 'Aix-en-Provence', 'location', 3780000, 'SUPERBE ET TRÈS RARE- Aix-en-Provence, à 9 minutes du centre ville historique, quartier les Granettes, véritable Bastide du 18ème siècle de 600 m² environ, 3 pièces de réception en rez-de-chaussée, double cuisine, en étage, 8 chambres, salle de cocktail/b'),
(14, 'Bastide • Aix-en-Provence', '15 Pièces • 8 Chambres • 600 M²', 78400, 'Aix-en-Provence', 'location', 3780000, 'SUPERBE ET TRÈS RARE- Aix-en-Provence, à 9 minutes du centre ville historique, quartier les Granettes, véritable Bastide du 18ème siècle de 600 m² environ, 3 pièces de réception en rez-de-chaussée, double cuisine, en étage, 8 chambres, salle de cocktail/b'),
(15, 'Bastide • Aix-en-Provence', '15 Pièces • 8 Chambres • 600 M²', 78400, 'Aix-en-Provence', 'location', 3780000, 'SUPERBE ET TRÈS RARE- Aix-en-Provence, à 9 minutes du centre ville historique, quartier les Granettes, véritable Bastide du 18ème siècle de 600 m² environ, 3 pièces de réception en rez-de-chaussée, double cuisine, en étage, 8 chambres, salle de cocktail/b'),
(16, 'Bastide • Aix-en-Provence', '15 Pièces • 8 Chambres • 600 M²', 78400, 'Aix-en-Provence', 'location', 3780000, 'SUPERBE ET TRÈS RARE- Aix-en-Provence, à 9 minutes du centre ville historique, quartier les Granettes, véritable Bastide du 18ème siècle de 600 m² environ, 3 pièces de réception en rez-de-chaussée, double cuisine, en étage, 8 chambres, salle de cocktail/b'),
(17, 'Bastide • Aix-en-Provence', '15 Pièces • 8 Chambres • 600 M²', 78400, 'Aix-en-Provence', 'location', 3780000, 'SUPERBE ET TRÈS RARE- Aix-en-Provence, à 9 minutes du centre ville historique, quartier les Granettes, véritable Bastide du 18ème siècle de 600 m² environ, 3 pièces de réception en rez-de-chaussée, double cuisine, en étage, 8 chambres, salle de cocktail/b'),
(18, 'Bastide • Aix-en-Provence', '15 Pièces • 8 Chambres • 600 M²', 78400, 'Aix-en-Provence', 'location', 3780000, 'SUPERBE ET TRÈS RARE- Aix-en-Provence, à 9 minutes du centre ville historique, quartier les Granettes, véritable Bastide du 18ème siècle de 600 m² environ, 3 pièces de réception en rez-de-chaussée, double cuisine, en étage, 8 chambres, salle de cocktail/b'),
(19, 'Bastide • Aix-en-Provence', '15 Pièces • 8 Chambres • 600 M²', 78400, 'Aix-en-Provence', 'location', 3780000, 'SUPERBE ET TRÈS RARE- Aix-en-Provence, à 9 minutes du centre ville historique, quartier les Granettes, véritable Bastide du 18ème siècle de 600 m² environ, 3 pièces de réception en rez-de-chaussée, double cuisine, en étage, 8 chambres, salle de cocktail/b'),
(25, 'Quartier Alsace à Saint-Germain-en-Laye (78100)', 'Location appartement\r\n3 pièces\r\n2 chambres\r\n53,09 m²', 78100, 'SAINT GERMAIN ', 'vente', 3000000, ''),
(27, 'LOCATION APPART', 'SAINT GERMAIN Centre 2\'RER~Superbe 3 pièces de 53.09m² en excellent état, Entrée, Séjour SUD avec parquet, Cuisine équipée, 2 Chambres avec parquet, Salle de douche, WC.', 78100, 'SAINT GERM', 'vente', 6000, '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `advert`
--
ALTER TABLE `advert`
  ADD PRIMARY KEY (`id_annonce`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `advert`
--
ALTER TABLE `advert`
  MODIFY `id_annonce` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
