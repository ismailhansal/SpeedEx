-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306
-- Generation Time: Aug 09, 2025 at 09:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `speedex`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id_booking` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  `id_conducteur` int(11) NOT NULL,
  `id_vehicule` int(11) NOT NULL,
  `adresse_ramassage` varchar(200) NOT NULL,
  `adresse_destinataire` varchar(200) NOT NULL,
  `date_ramassage` date NOT NULL,
  `date_livraison` date NOT NULL,
  `prix` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id_booking`, `id_client`, `id_conducteur`, `id_vehicule`, `adresse_ramassage`, `adresse_destinataire`, `date_ramassage`, `date_livraison`, `prix`) VALUES
(1, 1, 1, 1, 'Twin Center, Boul. Mohamed Zerktouni, Casablanca, Casablanca-Settat 20, Morocco', 'Ain-Chock, Casablanca, Casablanca-Settat, Morocco', '2024-04-03', '2024-04-18', 48788);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `prenom`, `mobile`, `email`) VALUES
(1, 'hansal', 'ismail', '0700917099', 'ismail.hansal@emsi-edu.ma'),
(6, 'imad', 'benritounia', '0663031145', 'imad@gmail.com'),
(7, 'adam', 'hm', '5445', 'RFG@GMAIL.COM'),
(8, 'rhezouane', 'badr', '0661657845', 'badr@gmail.com'),
(9, 'lafhais', 'souhail', '068754214', 'souhail@gmail.com'),
(11, 'raj_ops', 'raj_ops', '0663458789', 'ismail.hansal@emsi-edu.ma');

-- --------------------------------------------------------

--
-- Table structure for table `conducteur`
--

CREATE TABLE `conducteur` (
  `id_conducteur` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `num_permis` varchar(30) NOT NULL,
  `date_expiration_permis` date NOT NULL,
  `date_embauche` date NOT NULL,
  `annees_experience` int(11) NOT NULL,
  `date_naissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conducteur`
--

INSERT INTO `conducteur` (`id_conducteur`, `nom`, `prenom`, `mobile`, `num_permis`, `date_expiration_permis`, `date_embauche`, `annees_experience`, `date_naissance`) VALUES
(1, 'aziz', 'ben', '066559749', '126798561', '2024-04-03', '2024-04-17', 10, '0000-00-00'),
(2, 'hansal', 'ismail', '0700917099', '841565784hgfdw', '2024-05-15', '2024-05-16', 2, '2024-04-30');

-- --------------------------------------------------------

--
-- Table structure for table `coordinateur`
--

CREATE TABLE `coordinateur` (
  `id_coordinateur` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `date_embauche` date NOT NULL,
  `annees_experience` int(11) NOT NULL,
  `date_naissance` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coordinateur`
--

INSERT INTO `coordinateur` (`id_coordinateur`, `username`, `password`, `nom`, `prenom`, `age`, `mobile`, `date_embauche`, `annees_experience`, `date_naissance`) VALUES
(2, 'hansal', 'hansal', 'hansal', 'ismail', 20, '0700917099', '0000-00-00', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `entretien`
--

CREATE TABLE `entretien` (
  `id_entretien` int(11) NOT NULL,
  `id_vehicule` int(11) NOT NULL,
  `id_technicien` int(11) NOT NULL,
  `date_entretien` date NOT NULL,
  `type_entretien` varchar(30) NOT NULL,
  `km_entretien` int(11) NOT NULL,
  `cout_entretien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entretien`
--

INSERT INTO `entretien` (`id_entretien`, `id_vehicule`, `id_technicien`, `date_entretien`, `type_entretien`, `km_entretien`, `cout_entretien`) VALUES
(55, 1, 1, '2024-05-23', 'vidange', 124874, 125789),
(87, 2, 1, '2024-05-09', 'carosserie', 16000, 20000),
(108, 3, 1, '2024-05-15', 'carosserie', 124874, 1548),
(109, 4, 1, '2024-05-15', 'vidange', 124874, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `technicien`
--

CREATE TABLE `technicien` (
  `id_technicien` int(11) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `age` varchar(30) NOT NULL,
  `mobile` int(11) NOT NULL,
  `date_naissance` date NOT NULL,
  `date_embauche` date NOT NULL,
  `annees_exeperience` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technicien`
--

INSERT INTO `technicien` (`id_technicien`, `nom`, `prenom`, `age`, `mobile`, `date_naissance`, `date_embauche`, `annees_exeperience`) VALUES
(1, 'onela', 'hamid', '20', 685457895, '2024-04-10', '2024-04-03', 5);

-- --------------------------------------------------------

--
-- Table structure for table `vehicule`
--

CREATE TABLE `vehicule` (
  `id_vehicule` int(11) NOT NULL,
  `matricule` varchar(30) NOT NULL,
  `marque` varchar(30) NOT NULL,
  `modele` varchar(30) NOT NULL,
  `num_chassis` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `couleur` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicule`
--

INSERT INTO `vehicule` (`id_vehicule`, `matricule`, `marque`, `modele`, `num_chassis`, `type`, `couleur`) VALUES
(1, '4de45fez', 'toyota', 'yaris', '545fdfd', 'voiture', 'rouge'),
(2, '78dz2zfop', 'honda', 'civic', 'dzf54897', 'voiture', 'blanc'),
(3, '87d5456d', 'mitsubishi', 'lancer', '458dfhkds', 'voiture', 'vert'),
(4, '6dzdzf854f', 'ford', 'focus', 'fe562ef121', 'voiture', 'noir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id_booking`),
  ADD KEY `id_client` (`id_client`),
  ADD KEY `id_vehicule` (`id_vehicule`),
  ADD KEY `id_conducteur` (`id_conducteur`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `conducteur`
--
ALTER TABLE `conducteur`
  ADD PRIMARY KEY (`id_conducteur`);

--
-- Indexes for table `coordinateur`
--
ALTER TABLE `coordinateur`
  ADD PRIMARY KEY (`id_coordinateur`);

--
-- Indexes for table `entretien`
--
ALTER TABLE `entretien`
  ADD PRIMARY KEY (`id_entretien`),
  ADD KEY `id_technicien` (`id_technicien`),
  ADD KEY `id_vehicule` (`id_vehicule`);

--
-- Indexes for table `technicien`
--
ALTER TABLE `technicien`
  ADD PRIMARY KEY (`id_technicien`);

--
-- Indexes for table `vehicule`
--
ALTER TABLE `vehicule`
  ADD PRIMARY KEY (`id_vehicule`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `conducteur`
--
ALTER TABLE `conducteur`
  MODIFY `id_conducteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coordinateur`
--
ALTER TABLE `coordinateur`
  MODIFY `id_coordinateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `entretien`
--
ALTER TABLE `entretien`
  MODIFY `id_entretien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `technicien`
--
ALTER TABLE `technicien`
  MODIFY `id_technicien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicule`
--
ALTER TABLE `vehicule`
  MODIFY `id_vehicule` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`id_vehicule`) REFERENCES `vehicule` (`id_vehicule`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`id_conducteur`) REFERENCES `conducteur` (`id_conducteur`);

--
-- Constraints for table `entretien`
--
ALTER TABLE `entretien`
  ADD CONSTRAINT `entretien_ibfk_1` FOREIGN KEY (`id_technicien`) REFERENCES `technicien` (`id_technicien`),
  ADD CONSTRAINT `entretien_ibfk_2` FOREIGN KEY (`id_vehicule`) REFERENCES `vehicule` (`id_vehicule`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
