-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 04 mai 2023 à 01:47
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `school`
--

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id_classe` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id_classe`, `description`) VALUES
('1A', 'premier'),
('1B', 'premier'),
('2A', 'deuxieme'),
('2B', 'deuxieme'),
('3A', 'troisieme'),
('3B', 'troisieme'),
('4A', 'quatrieme'),
('4B', 'quatrieme'),
('5A', 'cinquieme'),
('5B', 'cinquieme'),
('6A', 'sixieme'),
('6B', 'sixieme');

-- --------------------------------------------------------

--
-- Structure de la table `emploi`
--

CREATE TABLE `emploi` (
  `id_emploi` int(11) NOT NULL,
  `id_prof` varchar(30) NOT NULL,
  `id_classe` varchar(30) NOT NULL,
  `salle` varchar(30) NOT NULL,
  `num_seance` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `emploi`
--

INSERT INTO `emploi` (`id_emploi`, `id_prof`, `id_classe`, `salle`, `num_seance`) VALUES
(1, 'A', '1A', 'A_TD1', '1'),
(2, 'A', '1B', 'C_TD1', '2');

-- --------------------------------------------------------

--
-- Structure de la table `enseigner`
--

CREATE TABLE `enseigner` (
  `id_classe` varchar(30) NOT NULL,
  `id_prof` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `presence_prof`
--

CREATE TABLE `presence_prof` (
  `id_prof` varchar(30) NOT NULL,
  `id_seance` varchar(30) NOT NULL,
  `status_prof` varchar(30) NOT NULL,
  `jour` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `presence_prof`
--

INSERT INTO `presence_prof` (`id_prof`, `id_seance`, `status_prof`, `jour`) VALUES
('A', '1111', 'present', '2023-05-04'),
('A', '2222', 'present', '2023-05-04'),
('B', '1111', 'Present', '2023-05-04'),
('B', '2222', 'Present', '2023-05-04');

-- --------------------------------------------------------

--
-- Structure de la table `presence_student`
--

CREATE TABLE `presence_student` (
  `id_student` bigint(11) NOT NULL,
  `id_seance` varchar(30) NOT NULL,
  `status_student` varchar(30) NOT NULL,
  `jour` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `presence_student`
--

INSERT INTO `presence_student` (`id_student`, `id_seance`, `status_student`, `jour`) VALUES
(1, '1111', 'Present', '2023-05-04'),
(2, '1111', 'Present', '2023-05-04'),
(3, '1111', 'Present', '2023-05-04'),
(4, '2222', 'Present', '2023-05-04'),
(5, '2222', 'Present', '2023-05-04'),
(6, '4444', 'Present', '2023-05-04');

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE `professeur` (
  `id_prof` varchar(30) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `age` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`id_prof`, `full_name`, `age`) VALUES
('A', 'Ali Salhi', '48'),
('B', 'Bilel Balha', '30'),
('C', 'chahin Ben Ali', '30'),
('Ka', 'Kamel Sghayer', '50'),
('Kh', 'Khalil Ben Amor', '35'),
('M', 'Mohamed lkamel', '40'),
('N', 'Najla Aouinet', '32'),
('S', 'Salma Lagili', '28');

-- --------------------------------------------------------

--
-- Structure de la table `prof_seance`
--

CREATE TABLE `prof_seance` (
  `id_prof` varchar(30) NOT NULL,
  `id_seance` varchar(30) NOT NULL,
  `jour` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `prof_seance`
--

INSERT INTO `prof_seance` (`id_prof`, `id_seance`, `jour`) VALUES
('A', '1111', 'Monday'),
('A', '2222', 'Monday');

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `id_salle` varchar(30) NOT NULL,
  `etage` varchar(30) NOT NULL,
  `capacite` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id_salle`, `etage`, `capacite`) VALUES
('98:F4:AB:B3:BB:88', '2', '30'),
('A_C4', '1', '80'),
('A_TD1', '1', '30'),
('A_TP2', '1', '30'),
('B_C1', '2', '80'),
('C_TD1', '3', '40'),
('C_TD5', '3', '40'),
('C_TP1', '3', '20');

-- --------------------------------------------------------

--
-- Structure de la table `salle_seance`
--

CREATE TABLE `salle_seance` (
  `id_salle` varchar(30) NOT NULL,
  `id_seance` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `salle_seance`
--

INSERT INTO `salle_seance` (`id_salle`, `id_seance`) VALUES
('98:F4:AB:B3:BB:88', '4444'),
('A_C4', '3333'),
('A_TP2', '2222'),
('B_C1', '6666'),
('C_TD5', '1111'),
('C_TP1', '5555');

-- --------------------------------------------------------

--
-- Structure de la table `seance`
--

CREATE TABLE `seance` (
  `id_seance` varchar(30) NOT NULL,
  `heur_dep` time NOT NULL,
  `heur_fin` time NOT NULL,
  `num_seance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `seance`
--

INSERT INTO `seance` (`id_seance`, `heur_dep`, `heur_fin`, `num_seance`) VALUES
('1111', '08:15:00', '09:45:00', 1),
('2222', '10:00:00', '11:30:00', 2),
('3333', '11:40:00', '13:10:00', 3),
('4444', '13:20:00', '14:50:00', 4),
('5555', '15:00:00', '16:30:00', 5),
('6666', '16:45:00', '18:15:00', 6);

-- --------------------------------------------------------

--
-- Structure de la table `seance_classe`
--

CREATE TABLE `seance_classe` (
  `id_classe` varchar(30) NOT NULL,
  `id_seance` varchar(30) NOT NULL,
  `jour` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `seance_classe`
--

INSERT INTO `seance_classe` (`id_classe`, `id_seance`, `jour`) VALUES
('1A', '1111', '2023-05-04'),
('1A', '2222', '2023-05-04'),
('1A', '4444', '2023-05-04'),
('2B', '5555', '2023-05-04');

-- --------------------------------------------------------

--
-- Structure de la table `student`
--

CREATE TABLE `student` (
  `Id` bigint(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `age` varchar(30) NOT NULL,
  `id_classe` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `student`
--

INSERT INTO `student` (`Id`, `name`, `lastname`, `age`, `id_classe`) VALUES
(1, 'Ali', 'Med', '24', '1A'),
(2, 'Khouloud', 'Ben Ali', '22', '1A'),
(3, 'Bilel', 'Belhadj', '22', '1A'),
(4, 'Bachir', 'Bachir', '22', '1A'),
(5, 'Amal', 'kamel', '20', '1A'),
(6, 'Rawaa', 'Jaber', '23', '1A'),
(7, 'Sarah ', 'Johnson', '20', '1B'),
(8, 'David ', 'Lee', '21', '1B'),
(9, 'Samantha ', 'Williams', '22', '1B'),
(10, 'Daniel ', 'Kim', '23', '1B'),
(11, 'James ', 'Brown', '21', '1B'),
(12, 'Emily ', 'Patel', '20', '1B');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id_classe`);

--
-- Index pour la table `emploi`
--
ALTER TABLE `emploi`
  ADD PRIMARY KEY (`id_emploi`);

--
-- Index pour la table `enseigner`
--
ALTER TABLE `enseigner`
  ADD PRIMARY KEY (`id_classe`,`id_prof`),
  ADD KEY `id_prof` (`id_prof`),
  ADD KEY `id_classe` (`id_classe`);

--
-- Index pour la table `presence_prof`
--
ALTER TABLE `presence_prof`
  ADD PRIMARY KEY (`id_prof`,`id_seance`),
  ADD KEY `id_seance` (`id_seance`),
  ADD KEY `id_prof` (`id_prof`);

--
-- Index pour la table `presence_student`
--
ALTER TABLE `presence_student`
  ADD PRIMARY KEY (`id_student`,`id_seance`),
  ADD KEY `id_seance` (`id_seance`,`id_student`) USING BTREE;

--
-- Index pour la table `professeur`
--
ALTER TABLE `professeur`
  ADD PRIMARY KEY (`id_prof`);

--
-- Index pour la table `prof_seance`
--
ALTER TABLE `prof_seance`
  ADD PRIMARY KEY (`id_prof`,`id_seance`),
  ADD KEY `id_seance` (`id_seance`),
  ADD KEY `id_prof` (`id_prof`);

--
-- Index pour la table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id_salle`);

--
-- Index pour la table `salle_seance`
--
ALTER TABLE `salle_seance`
  ADD PRIMARY KEY (`id_salle`,`id_seance`),
  ADD KEY `id_seance` (`id_seance`),
  ADD KEY `id_salle` (`id_salle`);

--
-- Index pour la table `seance`
--
ALTER TABLE `seance`
  ADD PRIMARY KEY (`id_seance`);

--
-- Index pour la table `seance_classe`
--
ALTER TABLE `seance_classe`
  ADD PRIMARY KEY (`id_classe`,`id_seance`),
  ADD KEY `id_seance` (`id_seance`),
  ADD KEY `id_classe` (`id_classe`);

--
-- Index pour la table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_classe` (`id_classe`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `emploi`
--
ALTER TABLE `emploi`
  MODIFY `id_emploi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `enseigner`
--
ALTER TABLE `enseigner`
  ADD CONSTRAINT `enseigner_ibfk_1` FOREIGN KEY (`id_classe`) REFERENCES `classe` (`id_classe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enseigner_ibfk_2` FOREIGN KEY (`id_prof`) REFERENCES `professeur` (`id_prof`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `presence_prof`
--
ALTER TABLE `presence_prof`
  ADD CONSTRAINT `presence_prof_ibfk_1` FOREIGN KEY (`id_prof`) REFERENCES `professeur` (`id_prof`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presence_prof_ibfk_2` FOREIGN KEY (`id_seance`) REFERENCES `seance` (`id_seance`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `presence_student`
--
ALTER TABLE `presence_student`
  ADD CONSTRAINT `presence_student_ibfk_2` FOREIGN KEY (`id_seance`) REFERENCES `seance` (`id_seance`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `presence_student_ibfk_3` FOREIGN KEY (`id_student`) REFERENCES `student` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `prof_seance`
--
ALTER TABLE `prof_seance`
  ADD CONSTRAINT `prof_seance_ibfk_1` FOREIGN KEY (`id_prof`) REFERENCES `professeur` (`id_prof`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `prof_seance_ibfk_2` FOREIGN KEY (`id_seance`) REFERENCES `seance` (`id_seance`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `salle_seance`
--
ALTER TABLE `salle_seance`
  ADD CONSTRAINT `salle_seance_ibfk_1` FOREIGN KEY (`id_salle`) REFERENCES `salle` (`id_salle`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `salle_seance_ibfk_2` FOREIGN KEY (`id_seance`) REFERENCES `seance` (`id_seance`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `seance_classe`
--
ALTER TABLE `seance_classe`
  ADD CONSTRAINT `seance_classe_ibfk_1` FOREIGN KEY (`id_classe`) REFERENCES `classe` (`id_classe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seance_classe_ibfk_2` FOREIGN KEY (`id_seance`) REFERENCES `seance` (`id_seance`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`id_classe`) REFERENCES `classe` (`id_classe`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
