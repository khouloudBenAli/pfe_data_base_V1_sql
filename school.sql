-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 11 juin 2023 à 15:46
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
-- Structure de la table `acces_historique`
--

CREATE TABLE `acces_historique` (
  `id_hist` int(11) NOT NULL,
  `id_prof` varchar(30) DEFAULT NULL,
  `id_salle` varchar(30) DEFAULT NULL,
  `statut_acces` varchar(200) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `acces_historique`
--

INSERT INTO `acces_historique` (`id_hist`, `id_prof`, `id_salle`, `statut_acces`, `time`) VALUES
(16, '3004', 'salleA1', 'accepted', '2023-06-03 05:32:25'),
(17, '3005', 'salleA1', 'denied', '2023-06-03 05:32:45'),
(18, '3004', 'salleA1', 'accepted', '2023-06-06 07:29:16'),
(19, '3002', 'salleA1', 'denied', '2023-06-06 07:30:02');

-- --------------------------------------------------------

--
-- Structure de la table `acces_prof`
--

CREATE TABLE `acces_prof` (
  `id_acces` int(11) NOT NULL,
  `id_prof` varchar(30) DEFAULT NULL,
  `id_carte` varchar(30) NOT NULL,
  `id_salle` varchar(30) DEFAULT NULL,
  `description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `acces_prof`
--

INSERT INTO `acces_prof` (`id_acces`, `id_prof`, `id_carte`, `id_salle`, `description`) VALUES
(1, '3000', 'f0a9b419', 'salleA1', ''),
(2, '3000', 'f0a9b419', 'salleA2', ''),
(3, '3000', '', 'salleB1', ''),
(4, '3000', '', 'salleB3', ''),
(5, '3000', '', 'TPC1', ''),
(6, '3004', 'f3a39d92', 'salleA1', '');

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `id_admin` varchar(30) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `age` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id_admin`, `full_name`, `age`) VALUES
('2000', 'Hamdi Aloulou', '35'),
('2001', 'Bilel Belhadj', '22'),
('2002', 'Chawki Gharsellaoui', '24');

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
-- Structure de la table `device`
--

CREATE TABLE `device` (
  `mac` varchar(30) NOT NULL,
  `device_name` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `device`
--

INSERT INTO `device` (`mac`, `device_name`, `date`, `description`) VALUES
('98:F4:AB:B3:BB:88', 'device1', '29-05-2023', 'device generique pour collecte');

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
(2, '3001', '1B', 'salleC1', '2'),
(3, '3001', '1A', 'salleA1', '1');

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
('3000', '1111', 'present', '2023-06-04'),
('3000', '2222', 'present', '2023-06-04'),
('3001', '1111', 'Present', '2023-06-04'),
('3001', '2222', 'Present', '2023-06-04');

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
(1, '1111', 'Present', '2023-06-04'),
(2, '1111', 'Present', '2023-06-04'),
(3, '1111', 'Present', '2023-06-04'),
(4, '1111', 'Present', '2023-06-04'),
(5, '1111', 'Present', '2023-06-04'),
(6, '1111', 'Present', '2023-06-04');

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE `professeur` (
  `id_prof` varchar(30) NOT NULL,
  `full_name` varchar(30) NOT NULL,
  `age` varchar(30) NOT NULL,
  `id_carte` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`id_prof`, `full_name`, `age`, `id_carte`) VALUES
('3000', 'Ali Salhi', '48', 'f0a9b419'),
('3001', 'Sami Ben Ali', '30', 'd33132a0'),
('3002', 'chahin Ben Ali', '30', '93eca59f'),
('3003', 'Kamel Sghayer', '50', '211f1b26'),
('3004', 'Ali El Kamel', '22', 'f3a39d92'),
('3005', 'Ben Ali Khouloud', '22', '93f894a7'),
('3006', 'Najla Aouinet', '32', NULL),
('3007', 'Salma Lagili', '28', NULL);

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
('3001', '1111', 'monday'),
('3001', '2222', 'monday'),
('3001', '3333', 'monday'),
('3001', '4444', 'monday');

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
('salleA1', '1', 'salle de cours'),
('salleA2', '1', 'salle de cours'),
('salleA3', '1', 'salle de cours'),
('salleB1', '2', 'salle de cours'),
('salleB2', '2', 'salle de cours'),
('salleB3', '2', 'salle de cours'),
('salleC1', '3', 'salle de cours'),
('salleC2', '3', 'salle de cours'),
('salleC3', '3', 'salle de cours'),
('TPA1', '1', 'salle de travaux pratique'),
('TPA2', '1', 'salle de travaux pratique'),
('TPB1', '2', 'salle de travaux'),
('TPB2', '2', 'salle de travaux'),
('TPC1', '3', 'salle de travaux'),
('TPC2', '3', 'salle de travaux');

-- --------------------------------------------------------

--
-- Structure de la table `salle_device`
--

CREATE TABLE `salle_device` (
  `mac` varchar(30) NOT NULL,
  `id_salle` varchar(30) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `salle_device`
--

INSERT INTO `salle_device` (`mac`, `id_salle`, `description`) VALUES
('98:F4:AB:B3:BB:88', 'salleA1', '');

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
('salleB2', '1111'),
('salleB3', '4444'),
('salleC1', '2222'),
('salleC2', '3333');

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
('1A', '1111', '2023-06-05'),
('1A', '2222', '2023-06-05'),
('1A', '4444', '2023-06-05'),
('2B', '5555', '2023-06-05'),
('4B', '3333', '2023-06-05');

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
(11, 'James ', 'Brown', '22', '1B'),
(12, 'Emily ', 'Patel', '19', '1B'),
(13, 'Salem', 'Belges', '23', '6B'),
(14, 'Amale', 'Ben Salem', '21', '6B'),
(15, 'Jamil', 'Berhouma', '19', '6B'),
(16, 'Ranim', 'El Kamel', '20', '6B'),
(17, 'Bachaer', 'El Jbael', '23', '6B'),
(18, 'Khaled', 'Gharsaloui', '21', '6B'),
(19, 'Latifa', 'Ben Fathallah', '18', '6B'),
(20, 'Ali', 'Romdhani', '22', '6B'),
(23, 'Adel', 'Ben Brahim', '23', '6B'),
(24, 'Salima', 'benour', '23', '6B');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `id_prof` varchar(30) DEFAULT NULL,
  `id_admin` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`username`, `password`, `type`, `id_prof`, `id_admin`) VALUES
('AlSalhi00', 'Al3000', 'professeur', '3000', NULL),
('BiBelhadj01', 'Bi2001', 'admin', NULL, '2001'),
('ChGharsellaoui02', 'Ch2002', 'admin', NULL, '2002'),
('HaAloulou00', 'Ha2000', 'admin', NULL, '2000'),
('SaBenali01', 'Sa3001', 'professeur', '3001', NULL),
('SaLgili07', 'Sa3007', 'professeur', '3007', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acces_historique`
--
ALTER TABLE `acces_historique`
  ADD PRIMARY KEY (`id_hist`),
  ADD KEY `id_prof` (`id_prof`),
  ADD KEY `id_salle` (`id_salle`);

--
-- Index pour la table `acces_prof`
--
ALTER TABLE `acces_prof`
  ADD PRIMARY KEY (`id_acces`),
  ADD KEY `id_prof` (`id_prof`),
  ADD KEY `id_salle` (`id_salle`);

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id_classe`);

--
-- Index pour la table `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`mac`);

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
-- Index pour la table `salle_device`
--
ALTER TABLE `salle_device`
  ADD PRIMARY KEY (`mac`,`id_salle`),
  ADD KEY `id_salle` (`id_salle`);

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
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD KEY `id_admin` (`id_admin`),
  ADD KEY `id_prof` (`id_prof`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `acces_historique`
--
ALTER TABLE `acces_historique`
  MODIFY `id_hist` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `acces_prof`
--
ALTER TABLE `acces_prof`
  MODIFY `id_acces` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `emploi`
--
ALTER TABLE `emploi`
  MODIFY `id_emploi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3002;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `acces_historique`
--
ALTER TABLE `acces_historique`
  ADD CONSTRAINT `acces_historique_ibfk_1` FOREIGN KEY (`id_prof`) REFERENCES `professeur` (`id_prof`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `acces_historique_ibfk_2` FOREIGN KEY (`id_salle`) REFERENCES `salle` (`id_salle`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `acces_prof`
--
ALTER TABLE `acces_prof`
  ADD CONSTRAINT `acces_prof_ibfk_1` FOREIGN KEY (`id_prof`) REFERENCES `professeur` (`id_prof`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `acces_prof_ibfk_2` FOREIGN KEY (`id_salle`) REFERENCES `salle` (`id_salle`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Contraintes pour la table `salle_device`
--
ALTER TABLE `salle_device`
  ADD CONSTRAINT `salle_device_ibfk_1` FOREIGN KEY (`mac`) REFERENCES `device` (`mac`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `salle_device_ibfk_2` FOREIGN KEY (`id_salle`) REFERENCES `salle` (`id_salle`) ON DELETE CASCADE ON UPDATE CASCADE;

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

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `admin` (`id_admin`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`id_prof`) REFERENCES `professeur` (`id_prof`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
