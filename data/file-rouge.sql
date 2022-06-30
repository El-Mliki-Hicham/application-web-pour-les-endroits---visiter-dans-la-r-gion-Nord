-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 22 juin 2022 à 12:48
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `file-rouge`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_categorie` int(10) UNSIGNED NOT NULL,
  `nom_categorie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_categorie` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_categorie`, `nom_categorie`, `photo_categorie`, `created_at`, `updated_at`) VALUES
(1, 'Plage', 'plage.jpg', NULL, NULL),
(2, 'Nature', 'nature.jpg', NULL, NULL),
(3, 'Medina kdima', 'medina-kdima.jpg', NULL, NULL),
(4, 'Archeologie', 'Archeologie.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `galeries`
--

CREATE TABLE `galeries` (
  `id_galerie` int(10) UNSIGNED NOT NULL,
  `photos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `videos` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_place` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `galeries`
--

INSERT INTO `galeries` (`id_galerie`, `photos`, `videos`, `id_place`, `created_at`, `updated_at`) VALUES
(1, 'axakar.jpg', '.', 1, NULL, NULL),
(2, 'axakar1.jpg', '.', 1, NULL, NULL),
(3, 'axakar2.jpg', '.', 1, NULL, NULL),
(4, 'axakar3.jpg', '.', 1, NULL, NULL),
(5, 'axakar4.jpg', '.', 1, NULL, NULL),
(6, 'axakar5.jpeg', '.', 1, NULL, NULL),
(7, 'principal.jpg', '.', 2, NULL, NULL),
(8, 'ba-kacem1.jpg', '.', 2, NULL, NULL),
(9, 'ba-kacem2.jpg', '.', 2, NULL, NULL),
(10, 'ba-kacem3.jpg', '.', 2, NULL, NULL),
(11, 'blanca.jpg', '.', 2, NULL, NULL),
(12, 'blanca2.jpg', '.', 6, NULL, NULL),
(13, 'blanca3.jpg', '.', 6, NULL, NULL),
(14, 'blanca4.jpg', '.', 6, NULL, NULL),
(15, 'blanca5.jpg', '.', 6, NULL, NULL),
(16, 'blanca6.jpg', '.', 6, NULL, NULL),
(17, 'merkala.jpg', '.', 3, NULL, NULL),
(18, 'merkala1.jpg', '.', 3, NULL, NULL),
(19, 'merkala2.jpg', '.', 3, NULL, NULL),
(20, 'merkala3.jpg', '.', 3, NULL, NULL),
(21, 'merkala4.jpg', '.', 3, NULL, NULL),
(22, 'merkala5.jpg', '.', 3, NULL, NULL),
(23, 'merkala6.jpg', '.', 3, NULL, NULL),
(24, 'merkala7.jpg', '.', 3, NULL, NULL),
(25, 'mrisat.jpg', '.', 4, NULL, NULL),
(26, 'mrisat1.jpg', '.', 4, NULL, NULL),
(27, 'mrisat2.jpg', '.', 4, NULL, NULL),
(28, 'mrisat3.jpg', '.', 4, NULL, NULL),
(29, 'municipal1.jpg', '.', 4, NULL, NULL),
(30, 'municipal2.jpg', '.', 4, NULL, NULL),
(31, 'playa municipal3.jpg', '.', 5, NULL, NULL),
(32, 'playa municipal4.jpg', '.', 5, NULL, NULL),
(33, 'playa municipal5.jpg', '.', 5, NULL, NULL),
(34, 'playa municipal6.jpg', '.', 5, NULL, NULL),
(35, 'playa municipal7.jpg', '.', 5, NULL, NULL),
(36, 'playa municipal8.jpg', '.', 5, NULL, NULL),
(38, 'playa municipal10.jpg', '.', 5, NULL, NULL),
(39, 'spartel1.jpg', '.', 9, NULL, NULL),
(40, 'spartel2.jpg', '.', 9, NULL, NULL),
(41, 'spartel3.jpg', '.', 9, NULL, NULL),
(42, 'spartel4.jpg', '.', 9, NULL, NULL),
(43, 'spartel5.jpg', '.', 9, NULL, NULL),
(44, 'spartel6.jpg', '.', 9, NULL, NULL),
(45, '7.jpg', '.', 9, NULL, NULL),
(46, 'spartel8.jpg', '.', 9, NULL, NULL),
(47, 'spartel9.jpg', '.', 9, NULL, NULL),
(48, 'spartel10.jpg', '.', 9, NULL, NULL),
(49, '1.jpeg', '.', 10, NULL, NULL),
(50, 'foret-diplomatique2.jpeg', '.', 10, NULL, NULL),
(51, 'foret-diplomatique3.jpeg', '.', 10, NULL, NULL),
(52, 'harris1.jpg', '.', 11, NULL, NULL),
(53, '2.jpg', '.', 11, NULL, NULL),
(54, 'harris3.jpg', '.', 11, NULL, NULL),
(55, 'harris4.jpg', '.', 11, NULL, NULL),
(56, 'harris5.jpg', '.', 11, NULL, NULL),
(57, 'harris6.jpg', '.', 11, NULL, NULL),
(58, 'mendoubia1.jpg', '.', 12, NULL, NULL),
(59, 'mendoubia2.jpg', '.', 12, NULL, NULL),
(60, 'mendoubia3.jpg', '.', 12, NULL, NULL),
(61, 'mendoubia4.jpg', '.', 12, NULL, NULL),
(62, '5.jpg', '.', 12, NULL, NULL),
(63, 'mendoubia6.jpg', '.', 12, NULL, NULL),
(64, 'mendoubia7.jpg', '.', 12, NULL, NULL),
(65, 'mendoubia8.jpg', '.', 12, NULL, NULL),
(66, 'rmilat.jpg', '.', 13, NULL, NULL),
(67, 'rmilat1.jpg', '.', 13, NULL, NULL),
(68, 'rmilat2.jpg', '.', 13, NULL, NULL),
(69, 'rmilat3.jpg', '.', 13, NULL, NULL),
(70, 'rmilat4.jpg', '.', 13, NULL, NULL),
(71, 'rmilat5.jpg', '.', 13, NULL, NULL),
(72, 'rmilat6.jpg', '.', 13, NULL, NULL),
(73, 'bab bhar1.jpg', '.', 17, NULL, NULL),
(74, 'bab bhar2.jpg', '.', 17, NULL, NULL),
(75, 'bab bhar3.jpg', '.', 17, NULL, NULL),
(76, 'bab bhar4.jpg', '.', 17, NULL, NULL),
(77, '9.jpg', '.', 17, NULL, NULL),
(78, 'dar baroud1.jpeg', '.', 18, NULL, NULL),
(79, 'dar baroud2.jpg', '.', 18, NULL, NULL),
(80, 'dar baroud3.jpg', '.', 18, NULL, NULL),
(81, 'dar baroud4.jpg', '.', 18, NULL, NULL),
(82, 'hafa1.jpg', '.', 19, NULL, NULL),
(83, 'hafa2.jpg', '.', 19, NULL, NULL),
(84, '3.jpg', '.', 19, NULL, NULL),
(85, 'hafa4.jpg', '.', 19, NULL, NULL),
(86, 'hafa5.jpg', '.', 19, NULL, NULL),
(87, 'hafa6.jpg', '.', 19, NULL, NULL),
(88, 'hanafta1.jpg', '.', 20, NULL, NULL),
(89, 'hanafta2.jpg', '.', 20, NULL, NULL),
(90, 'hanafta3.jpg', '.', 20, NULL, NULL),
(91, 'hanafta4.jpg', '.', 20, NULL, NULL),
(92, 'hanafta5.png', '.', 20, NULL, NULL),
(93, 'kasbah1.jpg', '.', 21, NULL, NULL),
(94, 'kasbah2.jpg', '.', 21, NULL, NULL),
(95, 'kasbah3.jpg', '.', 21, NULL, NULL),
(96, 'kasbah4.jpg', '.', 21, NULL, NULL),
(97, 'kasbah5.jpeg', '.', 21, NULL, NULL),
(98, 'kasbah6.jpg', '.', 21, NULL, NULL),
(99, 'kasbah7.jpg', '.', 21, NULL, NULL),
(100, 'kasbah8.jpg', '.', 21, NULL, NULL),
(101, 'place de grande1.jpg', '.', 22, NULL, NULL),
(102, 'place de grande2.jpg', '.', 22, NULL, NULL),
(103, 'place de grande3.jpg', '.', 22, NULL, NULL),
(104, 'place de grande4.jpg', '.', 22, NULL, NULL),
(105, 'place de grande5.jpg', '.', 22, NULL, NULL),
(107, 'place de grande7.jpg', '.', 22, NULL, NULL),
(108, 'place de grande8.jpg', '.', 22, NULL, NULL),
(109, 'place de grande9.jpg', '.', 22, NULL, NULL),
(110, 'Musee de la kasbah1.jpg', '.', 26, NULL, NULL),
(111, 'Musee de la kasbah2.jpg', '.', 26, NULL, NULL),
(112, 'Musee de la kasbah3.jpg', '.', 26, NULL, NULL),
(113, 'Musee de la kasbah4.jpg', '.', 26, NULL, NULL),
(114, 'Musee de la kasbah5.jpg', '.', 26, NULL, NULL),
(116, 'Musee de la kasbah7.jpeg', '.', 26, NULL, NULL),
(117, 'grottes1.jpg', '.', 25, NULL, NULL),
(118, 'grottes2.jpg', '.', 25, NULL, NULL),
(119, 'grottes3.jpg', '.', 25, NULL, NULL),
(120, 'grottes4.jpg', '.', 25, NULL, NULL),
(121, 'grottes5.jpeg', '.', 25, NULL, NULL),
(122, 'grottes6.JPG', '.', 25, NULL, NULL),
(123, 'grottes7.jpg', '.', 25, NULL, NULL),
(124, 'grottes8.jpg', '.', 25, NULL, NULL),
(125, 'grottes9.jpg', '.', 25, NULL, NULL),
(126, 'grottes10.jpg', '.', 25, NULL, NULL),
(127, 'grottes11.jpg', '.', 25, NULL, NULL),
(128, 'Borj En-Naam1.jpg', '.', 27, NULL, NULL),
(129, 'Borj En-Naam2.jpg', '.', 27, NULL, NULL),
(130, 'Borj En-Naam3.jpg', '.', 27, NULL, NULL),
(131, 'Borj En-Naam4.jpg', '.', 27, NULL, NULL),
(132, 'Borj En-Naam5.jpg', '.', 27, NULL, NULL),
(133, 'Borj En-Naam6.jpg', '.', 27, NULL, NULL),
(134, 'Borj En-Naam7.jpg', '.', 27, NULL, NULL),
(135, 'Borj En-Naam8.jfif', '.', 27, NULL, NULL),
(136, 'Borj En-Naam9.jpg', '.', 27, NULL, NULL),
(137, '1655889344.png', NULL, 25, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_30_103258_create_categories_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `places`
--

CREATE TABLE `places` (
  `id_place` int(10) UNSIGNED NOT NULL,
  `nom_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_categorie` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `places`
--

INSERT INTO `places` (`id_place`, `nom_place`, `photo_place`, `video_place`, `description_place`, `id_categorie`, `created_at`, `updated_at`) VALUES
(1, 'plage achakar', 'axakar.jpg', '.', 'Proche de Tanger 20 Km maxi, se trouve l\'une des plus jolies plages. Nommee plage d\'Achakar .\r\nAvec de vastes etendues de sables qui sont a la disposition des baigneurs.\r\nLa mer mediterranees etend sur trois kilometres de plage de sable fin qui se deroule', 1, NULL, NULL),
(2, 'plage ba kacem', 'principal.jpg', '.', 'Sidi Kacem est une ville de taille moyenne du Nord-Ouest du Maroc et capitale de la province du meme nom. Ses habitants, les Kacemis, sont au nombre de 90 000 (d\'apres recensement de 2015).  elle est située a l\'endroit ou la riviere Rdoom quitte les haute', 1, NULL, NULL),
(3, 'plage merkala', 'merkala.jpg', '.', 'La corniche de Merkala a Tanger est devenue un lieu de detente par excellence tres prise par les habitants et les visiteurs de la ville du Detroit durant le mois de Ramadan, qui leur sert d’exutoire pour evacuer le stress quotidien et pratiquer leurs acti', 1, NULL, NULL),
(4, 'plage mrisat', 'mrisat.jpg', '.', 'La peste Sarm est a la 32eme place sur 67 plages de la region de Tanger-Tetouan-Al Hoceima a 5,4 km de son centre, la ville de Tanger. C\'est l\'une des plages de la colonie de Nouinouich, a seulemet 1,9 km de son centre. La plage est situee dans une zone u', 1, NULL, NULL),
(5, 'plage municipal', 'municipal1.jpg', '.', 'La Plage Municipale de Tanger a recemment fait l\'objet d\'une renovation de ses equipements nautiques et d\'animations pour le plus grand bonheur des familles et des visiteurs de la ville. La Mer y est calme et chaude, avec de vastes edendues de sables pour', 1, NULL, NULL),
(6, 'playa blanca', 'blanca.jpg', '.', 'Playa Blanca est une petite plage naturelle, situee sur la cote d\'une magnifique baie. C\'est l\'une des plus belles plages de Tanger. Les visiteurs sont attirés par le sable fin et dore et la mer limpide, la possibilite de nager, de bronzer, de monter a do', 1, NULL, NULL),
(9, 'cap spartel', '7.jpg', '.', 'Le cap Spartel ou Ras Spartel est un promontoire de la cote du Maroc, situe a l\'entrée sud du detroit de Gibraltar, a 14 kilometres à l\'ouest de Tanger. Face au cap Spartel, a 44 km au nord, le cap Trafalgar marque l\'entree nord du detroit, sur la cote es', 2, NULL, NULL),
(10, 'foret diplomatique', '1.jpeg', '.', 'Les preparatifs de la premiere edition de la Course de la foret diplomatique de Tanger (10 km) reprennent de plus belle. Les organisateurs ont choisi dimanche 13 mars pour la tenue de cette premiere edition.', 2, NULL, NULL),
(11, 'jardins de villa harris', '2.jpg', '.', 'a la fin du XIXe siecle, un journaliste britannique, Walter Burton Harris, s’installa à Tanger. Il construit une maison de style hispano-mauresque sur un domaine de plusieurs hectares dans la region de Malabata. Ruines, les Britanniques cèdent sa propriet', 2, NULL, NULL),
(12, 'le jardin de la mendoubia', '5.jpg', '.', 'Le Jardin de la Mendoubia tient son nom du batiment qu\'il entoure et qui n\'est autre que le tribunal de commerce.\r\nLe visiteur sera fascine entre autres par l’architecture des lieux et par l’enormite d’un arbre centenaire se situant à l’entree de la Mando', 2, NULL, NULL),
(13, 'parc perdicaris', 'rmilat.jpg', '.', 'La foret de Perdicaris, plus connue sous le nom de foret de Rmilat, est un veritable parc botanique contenant des centaines d’especes, et offre une vue imprenable sur le Detroit de Gibraltar.\r\nUn lieu ideal à Tanger pour se ressourcer, passer des moments ', 2, NULL, NULL),
(17, 'bab bhar', '9.jpg', '.', 'L\'avis du Petit Fute sur  Bab Bhar Tanger \r\nD\'ici, la vue sur la mer est sans pareille. Bab Bahr signifie d\'ailleurs  porte de la mer . C\'est une des plus celebres portes de Tanger. On y decouvre une vue imprenable sur toute la baie, le port et le debut d', 3, NULL, NULL),
(18, 'dar baroud', 'dar baroud2.jpg', '.', 'Borj Dar El Baroud etait la fortification militaire la plus importante entourant Tanger. Situe a l’angle Nord-est de l’ancienne medina de la ville, le Borj contenait des magasins de munitions et de canons de differentes tailles, en plus de diverses fortif', 3, NULL, NULL),
(19, 'hafa', '3.jpg', '.', 'Cafe Hafa est un cafe a Tanger, au Maroc, situe le long de la falaise surplombant la baie de Tanger. Ouvert en 1921, le cafe a conserve son style des annees 1920 de la decoration et au fil des ans a ete visite par de nombreux ecrivains et chanteurs, de Pa', 3, NULL, NULL),
(20, 'hanafta', 'hanafta2.jpg', '.', 'Le cafe Hanafta devrait continuer d’abriter des soirees de musique andalouse les fins de semaine.', 3, NULL, NULL),
(21, 'kasbah', 'kasbah1.jpg', '.', 'La Kasbah de Tanger represente l’un des plus importants attraits de Tanger, ville maritime du Maroc situee sur la pointe nord du pays, face au detroit de Gibraltar, separant l’ocean Atlantique de la mer Mediterranee. Avec des remparts datant du 13eme siec', 3, NULL, NULL),
(22, 'place de grande 9', 'place de grande2.jpg', '.', 'Le Grand Socco ou Place du 9 avril 1947 est un rond-point circulaire historique separant l\'ancienne Medina du nouveau quartier du centre-ville de Tanger, au Maroc.\r\nLe terme, socco est une corruption espagnole du souk arabe (ou souk). Le Grand Socco est e', 3, NULL, NULL),
(25, 'grottes d\'hercule', 'grottes4.jpg', '.', 'Il s\'agit des Grottes d\'Hercule, situees a seulement 14 kilometres à l\'ouest du centre de Tanger. Les grottes d\'Hercule sont un lieu touristique bien connu depuis les annees 1920. Il s\'agit de grottes naturelles calcaires ouvertes sur la mer, dans lesquel', 4, NULL, NULL),
(26, 'Musee de la kasbah - Espace d\'art contemorain', 'Musee de la kasbah7.jpeg', '.', 'Situe dans l’enceinte de l’ancienne prison de la Kasbah, ce musee sera un lieu vivant de rencontres, d’echanges et de partages et presentera une programmation culturelle et des expositions liees a la region du nord.', 4, NULL, NULL),
(27, 'Borj En-Naam', 'Borj En-Naam1.jpg', '.', 'Ibn Batouta dispose enfin d’un centre a sa memoire. Situe a Borj Naam, dans la Kasbah de Tanger, le projet est pilote par la Societe d’amenagement du port de Tanger-Ville, SAPT. Il a pour objectif de presenter les grandes etapes des voyages et de la vie d', 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'nada', 'nada@gmail.com', NULL, '123', NULL, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_categorie`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `galeries`
--
ALTER TABLE `galeries`
  ADD PRIMARY KEY (`id_galerie`),
  ADD KEY `galeries_id_place_foreign` (`id_place`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id_place`),
  ADD KEY `places_id_categorie_foreign` (`id_categorie`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_categorie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `galeries`
--
ALTER TABLE `galeries`
  MODIFY `id_galerie` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `places`
--
ALTER TABLE `places`
  MODIFY `id_place` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `galeries`
--
ALTER TABLE `galeries`
  ADD CONSTRAINT `galeries_id_place_foreign` FOREIGN KEY (`id_place`) REFERENCES `places` (`id_place`) ON DELETE CASCADE;

--
-- Contraintes pour la table `places`
--
ALTER TABLE `places`
  ADD CONSTRAINT `places_id_categorie_foreign` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id_categorie`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
