-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 07 nov. 2022 à 11:02
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
-- Base de données : `site_version_2021`
--

-- --------------------------------------------------------

--
-- Structure de la table `avatar_membre_inscrit`
--

CREATE TABLE `avatar_membre_inscrit` (
  `id_avatar` int(30) NOT NULL,
  `id_membre` int(11) NOT NULL,
  `lien_de_telechargement` blob NOT NULL,
  `taille_photo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `avatar_membre_inscrit`
--

INSERT INTO `avatar_membre_inscrit` (`id_avatar`, `id_membre`, `lien_de_telechargement`, `taille_photo`) VALUES
(1, 1, 0x6176617461725f6d656d6272655f696e73637269742f314b494e5345442e6a7067, 78513),
(2, 3, 0x6176617461725f6d656d6272655f696e73637269742f334946455441594f2e6a7067, 250618);

-- --------------------------------------------------------

--
-- Structure de la table `bac`
--

CREATE TABLE `bac` (
  `id_bac` int(11) NOT NULL,
  `serie` enum('A','B','C','D','E','F1','F2','F3','F4','G1','G2','G3','G4') NOT NULL,
  `annee` enum('BAC_2010','BAC_2011','BAC_2012','BAC_2013','BAC_2014','BAC_2015','BAC_2016','BAC_2017','BAC_2018','BAC_2019','BAC_2020','BAC_2021','BAC_2022','BAC_2023','BAC_2024','BAC_2025','BAC_2026','BAC_2027','BAC_2028','BAC_2029','BAC_2030') NOT NULL,
  `matiere` enum('SVT','MATHEMATIQUE','PCT','ANGLAIS','HIST-GEO','FRANCAIS','ESPAGNOL','ALLEMANDE','PHILOSOPHIE','ECONOMIE','GESTION') NOT NULL,
  `titre` varchar(255) NOT NULL,
  `categorie` enum('EXAMENS_BLANC','EXAMENS_BLANC_NATIONAL','EXAMENS_NATIONAL','EXAMENS') NOT NULL,
  `provenance` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `lien_de_telechargement` longblob NOT NULL,
  `taille_fichier` varchar(255) NOT NULL,
  `date_de_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `bepc`
--

CREATE TABLE `bepc` (
  `id_bepc` int(11) NOT NULL,
  `annee` enum('BEPC_2010','BEPC_2011','BEPC_2012','BEPC_2013','BEPC_2014','BEPC_2015','BEPC_2016','BEPC_2017','BEPC_2018','BEPC_2019','BEPC_2020','BEPC_2021','BEPC_2022','BEPC_2023','BEPC_2024','BEPC_2025','BEPC_2026','BEPC_2027','BEPC_2028','BEPC_2029','BEPC_2030') NOT NULL,
  `matiere` enum('SVT','MATHEMATIQUE','PCT','ANGLAIS','HIST-GEO','FRANCAIS','ESPAGNOL','ALLEMANDE','PHILOSOPHIE','ECONOMIE','GESTION') NOT NULL,
  `titre` varchar(255) NOT NULL,
  `categorie` enum('EXAMENS_BLANC','EXAMENS_BLANC_NATIONAL','EXAMENS_NATIONAL','EXAMENS') NOT NULL,
  `provenance` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `lien_de_telechargement` longblob NOT NULL,
  `taille_fichier` varchar(255) NOT NULL,
  `date_de_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cap`
--

CREATE TABLE `cap` (
  `id_cap` int(11) NOT NULL,
  `serie` enum('A','B','C','D','E','F1','F2','F3','F4','G1','G2','G3','G4') NOT NULL,
  `annee` enum('CAP_2010','CAP_2011','CAP_2012','CAP_2013','CAP_2014','CAP_2015','CAP_2016','CAP_2017','CAP_2018','CAP_2019','CAP_2020','CAP_2021','CAP_2022','CAP_2023','CAP_2024','CAP_2025','CAP_2026','CAP_2027','CAP_2028','CAP_2029','CAP_2030') NOT NULL,
  `matiere` enum('SVT','MATHEMATIQUE','PCT','ANGLAIS','HIST-GEO','FRANCAIS','ESPAGNOL','ALLEMANDE','PHILOSOPHIE','ECONOMIE','GESTION') NOT NULL,
  `titre` varchar(255) NOT NULL,
  `categorie` enum('EXAMENS_BLANC','EXAMENS_BLANC_NATIONAL','EXAMENS_NATIONAL','EXAMENS_BLANC_CAP','EXAMENS_BLANC_NATIONAL_CAP','EXAMENS_NATIONAL_CAP','EXAMENS') NOT NULL,
  `provenance` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `lien_de_telechargement` longblob NOT NULL,
  `taille_fichier` varchar(255) NOT NULL,
  `date_de_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cep`
--

CREATE TABLE `cep` (
  `id_cep` int(11) NOT NULL,
  `annee` enum('CEP_2010','CEP_2011','CEP_2012','CEP_2013','CEP_2014','CEP_2015','CEP_2016','CEP_2017','CEP_2018','CEP_2019','CEP_2020','CEP_2021','CEP_2022','CEP_2023','CEP_2024','CEP_2025','CEP_2026','CEP_2027','CEP_2028','CEP_2029','CEP_2030') NOT NULL,
  `matiere` enum('FRANÇAIS','MATHEMATIQUE','ES','EST','EA','EPS','ANGLAIS','EDUCATION_DE_LA_SEXUALITE') NOT NULL,
  `titre` varchar(255) NOT NULL,
  `categorie` enum('EXAMENS_BLANC','EXAMENS_BLANC_NATIONAL','EXAMENS_NATIONAL','EXAMENS') NOT NULL,
  `provenance` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `lien_de_telechargement` longblob NOT NULL,
  `taille_fichier` varchar(255) NOT NULL,
  `date_de_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cinquieme`
--

CREATE TABLE `cinquieme` (
  `id_cinquieme` int(11) NOT NULL,
  `matiere` enum('SVT','MATHEMATIQUE','PCT','ANGLAIS','HIST-GEO','FRANCAIS','ESPAGNOL','ALLEMANDE','PHILOSOPHIE','ECONOMIE','GESTION') NOT NULL,
  `titre` varchar(255) NOT NULL,
  `categorie` enum('COURS_SVT','COURS_MATHEMATIQUE','COURS_PCT','COURS_ANGLAIS','COURS_HIST-GEO','COURS_FRANCAIS','COURS_ESPAGNOL','COURS_ALLEMANDE','COURS_PHILOSOPHIE','COURS_ECONOMIE','COURS_GESTION','EXPOSE_SVT','EXPOSE_MATHEMATIQUE','EXPOSE_PCT','EXPOSE_ANGLAIS','EXPOSE_HIST-GEO','EXPOSE_FRANCAIS','EXPOSE_ESPAGNOL','EXPOSE_ALLEMANDE','EXPOSE_PHILOSOPHIE','EXPOSE_ECONOMIE','EXPOSE_GESTION','RESUME_COURS_SVT','RESUME_COURS_MATHEMATIQUE','RESUME_COURS_PCT','RESUME_COURS_ANGLAIS','RESUME_COURS_HIST-GEO','RESUME_COURS_FRANCAIS','RESUME_COURS_ESPAGNOL','RESUME_COURS_ALLEMANDE','RESUME_COURS_PHILOSOPHIE','RESUME_COURS_ECONOMIE','RESUME_COURS_GESTION','DEVOIRS_SVT','DEVOIRS_MATHEMATIQUE','DEVOIRS_PCT','DEVOIRS_ANGLAIS','DEVOIRS_HIST-GEO','DEVOIRS_FRANCAIS','DEVOIRS_ESPAGNOL','DEVOIRS_ALLEMANDE','DEVOIRS_PHILOSOPHIE','DEVOIRS_ECONOMIE','DEVOIRS_GESTION','FICHE_DE_COURS_SVT','FICHE_DE_COURS_MATHEMATIQUE','FICHE_DE_COURS_PCT','FICHE_DE_COURS_ANGLAIS','FICHE_DE_COURS_HIST-GEO','FICHE_DE_COURS_FRANCAIS','FICHE_DE_COURS_ESPAGNOL','FICHE_DE_COURS_ALLEMANDE','FICHE_DE_COURS_PHILOSOPHIE','FICHE_DE_COURS_ECONOMIE','FICHE_DE_COURS_GESTION','SUPPORT_DE_COURS_SVT','SUPPORT_DE_COURS_MATHEMATIQUE','SUPPORT_DE_COURS_PCT','SUPPORT_DE_COURS_ANGLAIS','SUPPORT_DE_COURS_HIST-GEO','SUPPORT_DE_COURS_FRANCAIS','SUPPORT_DE_COURS_ESPAGNOL','SUPPORT_DE_COURS_ALLEMANDE','SUPPORT_DE_COURS_PHILOSOPHIE','SUPPORT_DE_COURS_ECONOMIE','SUPPORT_DE_COURS_GESTION','INTERROGATIONS_SVT','INTERROGATIONS_MATHEMATIQUE','INTERROGATIONS_PCT','INTERROGATIONS_ANGLAIS','INTERROGATIONS_HIST-GEO','INTERROGATIONS_FRANCAIS','INTERROGATIONS_ESPAGNOL','INTERROGATIONS_ALLEMANDE','INTERROGATIONS_PHILOSOPHIE','INTERROGATIONS_ECONOMIE','INTERROGATIONS_GESTION','EXERCICES_SVT','EXERCICES_MATHEMATIQUE','EXERCICES_PCT','EXERCICES_ANGLAIS','EXERCICES_HIST-GEO','EXERCICES_FRANCAIS','EXERCICES_ESPAGNOL','EXERCICES_ALLEMANDE','EXERCICES_PHILOSOPHIE','EXERCICES_ECONOMIE','EXERCICES_GESTION') NOT NULL,
  `description` text NOT NULL,
  `lien_de_telechargement` longblob NOT NULL,
  `prix_de_vente` varchar(255) NOT NULL,
  `taille_fichier` varchar(255) NOT NULL,
  `date_de_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `compte_membre`
--

CREATE TABLE `compte_membre` (
  `id_compte_membre` int(6) NOT NULL,
  `id_membre` varchar(255) NOT NULL,
  `mon_solde` varchar(255) NOT NULL,
  `date_de_recharge` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `concours`
--

CREATE TABLE `concours` (
  `id_concours` int(11) NOT NULL,
  `pays` enum('BENIN','TOGO','NIGER','NIGERIA','MALI','COTE_D_IVOIRE','SENEGALE','CAMEROUNE','AUTRE') NOT NULL,
  `annee` enum('2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030') NOT NULL,
  `matiere` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `categorie` enum('CONCOURS_FONCTION_PUBLIQUE','CONCOURS_ENTREE_UNIVERSITE','TEST') NOT NULL,
  `description` text NOT NULL,
  `lien_de_telechargement` longblob NOT NULL,
  `taille_fichier` varchar(255) NOT NULL,
  `date_de_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `cours_primaire`
--

CREATE TABLE `cours_primaire` (
  `id_cours_primaire` int(11) NOT NULL,
  `matiere` enum('FRANÇAIS','MATHEMATIQUE','ES','EST','EA','EPS','ANGLAIS','EDUCATION_DE_LA_SEXUALITE') NOT NULL,
  `classe` enum('CI','CP','CE1','CE2','CM1','CM2') NOT NULL,
  `titre` varchar(255) NOT NULL,
  `categorie` enum('COURS_FRANÇAIS','COURS_MATHEMATIQUE','COURS_ES','COURS_EST','COURS_EA','COURS_EPS','COURS_ANGLAIS','COURS_SEXUALITE','RESUME_COURS_FRANÇAIS','RESUME_COURS_MATHEMATIQUE','RESUME_COURS_ES','RESUME_COURS_EST','RESUME_COURS_EA','RESUME_COURS_EPS','RESUME_COURS_ANGLAIS','RESUME_COURS_SEXUALITE','DEVOIRS_FRANÇAIS','DEVOIRS_MATHEMATIQUE','DEVOIRS_ES','DEVOIRS_EST','DEVOIRS_EA','DEVOIRS_EPS','DEVOIRS_ANGLAIS','DEVOIRS_SEXUALITE','FICHE_DE_COURS_FRANÇAIS','FICHE_DE_COURS_MATHEMATIQUE','FICHE_DE_COURS_ES','FICHE_DE_COURS_EST','FICHE_DE_COURS_EA','FICHE_DE_COURS_EPS','FICHE_DE_COURS_ANGLAIS','FICHE_DE_COURS_SEXUALITE','SUPPORT_DE_COURS_FRANÇAIS','SUPPORT_DE_COURS_MATHEMATIQUE','SUPPORT_DE_COURS_ES','SUPPORT_DE_COURS_EST','SUPPORT_DE_COURS_EA','SUPPORT_DE_COURS_EPS','SUPPORT_DE_COURS_ANGLAIS','SUPPORT_DE_COURS_SEXUALITE','EVALUATION_FORMATIVE_TRIMESTRIELLE_1','EVALUATION_FORMATIVE_TRIMESTRIELLE_2','EVALUATION_FORMATIVE_TRIMESTRIELLE_3','EXERCICES_FRANÇAIS','EXERCICES_MATHEMATIQUE','EXERCICES_ES','EXERCICES_EST','EXERCICES_EA','EXERCICES_EPS','EXERCICES_ANGLAIS','EXERCICES_SEXUALITE') NOT NULL,
  `description` text NOT NULL,
  `lien_de_telechargement` longblob NOT NULL,
  `taille_fichier` varchar(255) NOT NULL,
  `date_de_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `exercice_svt_6eme_partie1`
--

CREATE TABLE `exercice_svt_6eme_partie1` (
  `id_exercice_svt_6eme_partie1` int(11) NOT NULL,
  `contenue_de_exercice` text NOT NULL,
  `date_de_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `exercice_svt_6eme_partie1`
--

INSERT INTO `exercice_svt_6eme_partie1` (`id_exercice_svt_6eme_partie1`, `contenue_de_exercice`, `date_de_publication`) VALUES
(1, 'Explique comment les hormones ovariennes préparent l&#039;utérus à la nidation', '2022-08-07 14:45:34'),
(2, 'Montre comment le fonctionnement d&#039;un centre nerveux assure la coordination des muscles mis en jeu dans l&#039;accomplissement du réflexe rotulien. Un schéma d&#039;illustration est exigé.', '2022-08-07 14:45:37'),
(3, 'Explique en limitant l&#039;étude au neurone sensitif mis en jeu dans le reflexe myotatique, l &#039;origine et la propagation du message nerveux.', '2022-08-07 14:45:40'),
(4, 'Explique comment deux muscles antagonistes peuvent avoir des réactions inverses lors de l&#039;étirement de l&#039;un d&#039;entre eux.', '2022-08-07 14:45:44'),
(5, 'Explique comment deux muscles antagonistes peuvent avoir des réactions inverses lors de l&#039;étirement de l&#039;un d&#039;entre eux.', '2022-08-07 14:45:48'),
(6, 'Montre comment les ovaires interviennent dans l&#039;apparition des règles enfin de cycle et son absence au cours de la grossesse.', '2022-08-07 14:45:53'),
(7, 'Montre comment le fonctionnement d&#039;un centre nerveux assure la coordination des muscles mis en jeu dans l&#039;accomplissement du réflexe rotulien. Un schéma d&#039;illustration est exigé.', '2022-08-07 14:46:00'),
(8, 'Chez l&#039;homme, un coup sec appliqué sous la rotule, au niveau du tendon du muscle antérieur de la cuisse, provoque l&#039;extension de la jambe. Ceci est un test utilisé médicalement pour contrôler le bon état de la moelle épinière. Explique le rôle de la moelle épinière dans l&#039;accomplissement d&#039;un réflexe myotatique à innervation réciproque.', '2022-08-07 14:46:28'),
(9, 'Explique comment deux muscles antagonistes peuvent avoir des réactions inverses lors de l&#039;étirement de l&#039;un d&#039;entre eux.', '2022-08-07 14:46:34'),
(10, 'Montre comment les ovaires interviennent dans l&#039;apparition des règles enfin de cycle et son absence au cours de la grossesse.', '2022-08-07 14:46:38');

-- --------------------------------------------------------

--
-- Structure de la table `information`
--

CREATE TABLE `information` (
  `id_info` int(11) NOT NULL,
  `contenue` text NOT NULL,
  `lien_image_info` longblob NOT NULL,
  `taille_fichier` varchar(30) NOT NULL,
  `date_de_publication` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `membre_inscrit`
--

CREATE TABLE `membre_inscrit` (
  `id_membre` int(30) NOT NULL,
  `pseudo` varchar(150) NOT NULL,
  `genre` enum('Homme','Femme') NOT NULL,
  `nom` varchar(110) NOT NULL,
  `prenom` varchar(110) NOT NULL,
  `categorie` enum('eleve','professeur','maitre','etudiant') NOT NULL,
  `classe_matiere` enum('0','6e','5e','4e','3e','2nde','1ere','tle','ci','cp','ce1','ce2','cm1','cm2','00','svt','pct','maths','anglais','francais','hisgeo','philo','espagnole','allemande','economie','000','maitre_ci','maitre_cp','maitre_ce1','maitre_ce2','maitre_cm1','maitre_cm2','0000','1ere_annee','2eme_annee','Annee_de_Licence','Annee_de_Maitrise','Annee_de_Masteur','Annee_de_Doctorat') NOT NULL,
  `etablissement` varchar(110) NOT NULL,
  `pays` enum('0','united_states','canada','afghanistan','albania','algeria','american_samoa','andorra','angola','anguilla','antarctica','antigua_and_or_barbuda','argentina','armenia','aruba','australia','austria','azerbaijan','bahamas','bahrain','bangladesh','barbados','belarus','belgium','belize','benin','bermuda','bhutan','bolivia','bosnia_and_berzegovina','botswana','bouvet_island','brazil','brunei_darussalam','bulgaria','burkina _faso','burundi','cambodia','cameroon','cape_verde','cayman_islands','central_african _republic','chad','chile','china','christmas_island','cocos_keeling_islands','colombia','comoros','congo','cook _islands','cote_d_ivoire','croatia_hrvatska','cuba','cyprus','czech _republic','denmark','djibouti','dominica','dominican_republic','east_timor','ecuador','egypt','el _salvador','equatorial_guinea','eritrea','estonia','ethiopia','falkland_islands_malvinas',' faroe_islands','fiji','finland','france','france_metropolitan','french_guiana','french_polynesia','french_southern_territories','gabon','gambia','georgia','germany','ghana','gibraltar','greece','greenland','grenada','guadeloupe','guam','guatemala','guinea','guinea_bissau','guyana','haiti','heard_and_mc_donald_islands','honduras','hong _kong','hungary','iceland','india','indonesia','iran_islamic_republic _of','iraq','ireland','israel','italy','ivory_coast','jamaica','japan','jordan','kazakhstan','kenya','kiribati','korea_democratic_peoples_republic_of','korea _republic_of','kosovo','kuwait',' kyrgyzstan','lao_peoples_democratic_republic',' latvia','lebanon','lesotho','liberia','libyan_arab_jamahiriya','liechtenstein','lithuania','luxembourg','macau',' macedonia','madagascar','malawi','malaysia','maldives','mali','malta',' marshall _islands','martinique','mauritania','mauritius','mayotte','mexico','micronesia_federated_states_of','moldova _republic_of',' monaco',' mongolia','montenegro','montserrat','morocco','mozambique','myanmar','namibia','nauru','nepal','netherlands','netherlands_antilles','new_caledonia','new _zealand','nicaragua','niger','nigeria','niue','norfork_island','northern_mariana _islands','norway','oman','pakistan','palau','panama','papua_new _guinea','paraguay','peru','philippines','pitcairn','poland','portugal','puerto _rico','qatar','reunion','romania','russian_federation','rwanda','saint_kitts_and_nevis','saint_lucia','saint _vincent_and_the_grenadines','samoa','san_marino','sao_tome_and_principe','saudi _arabia','senegal','serbia','seychelles','sierra_leone','singapore','slovakia','slovenia','solomon _islands','somalia','south_africa','south_georgia_south_sandwich_islands','spain','sri_lanka','st_helena','st _pierre_and_miquelon','sudan','suriname','svalbarn_and_jan_mayen _islands','swaziland','sweden','switzerland','syrian_arab_republic','taiwan','tajikistan','tanzania_united _republic_of','thailand','togo','tokelau','tonga','trinidad_and_tobago','tunisia','turkey','turkmenistan','turks _and_caicos_islands','tuvalu','uganda','ukraine','united_arab_emirates','united_kingdom','united_states_minor _outlying_islands','uruguay','uzbekistan','vanuatu','vatican_city _state','venezuela','vietnam','yemen','yugoslavia','aaire','zambia','zimbabwe') NOT NULL,
  `email` varchar(110) NOT NULL,
  `telephone` varchar(110) NOT NULL,
  `motedepasse` varchar(255) NOT NULL,
  `confirmkey` varchar(255) NOT NULL,
  `uniqid` varchar(255) NOT NULL,
  `id_parrain` varchar(255) NOT NULL,
  `date_enregistrement` datetime(6) NOT NULL,
  `statue` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `membre_inscrit`
--

INSERT INTO `membre_inscrit` (`id_membre`, `pseudo`, `genre`, `nom`, `prenom`, `categorie`, `classe_matiere`, `etablissement`, `pays`, `email`, `telephone`, `motedepasse`, `confirmkey`, `uniqid`, `id_parrain`, `date_enregistrement`, `statue`) VALUES
(1, 'KINSED', 'Homme', 'KINHA', 'Edouard', 'professeur', 'svt', 'Lycée Paris5', 'france', 'kinsed2017@gmail.com', '+225582033445', '$2y$10$o71ootN0bEDIvMc2LWJBdOrtD3BNHq1lx7UjgOxnHcTD09duQpBxa', '1925231322291322852630522252722102728233018301099', '689111547', '0', '2022-07-09 16:10:43.000000', 1),
(2, 'MON AMOUR', 'Femme', 'JEZUTONDJI', 'Gloire de Dieu', 'eleve', '', 'Lycée Paris5', 'canada', 'kinsed2022@gmail.com', '+3398673273999', '$2y$10$Dotqp6o9zp.w2maoS27Nk.tcKhtgEF/4mPQkr5fmID/Uk9Rd4CE7C', '27241822724027273112224253029162622121232630201015299', '502672361', '0', '2022-07-20 11:16:14.000000', 0),
(3, 'IFETAYO', 'Femme', 'OGA', 'MICHELINE', 'etudiant', '2eme_annee', 'UAC BENIN', 'benin', 'micheline@gmail.com', '+229582033445', '$2y$10$FGDbaz0ZiU68c0yZtXPSfOCeSj7QeLdsHZUPeZ9Sn0/dTUIoMKAJi', '8132827232541941424222271016825251289432718171618', '707616825', '1', '2022-08-05 18:25:34.000000', 0);

-- --------------------------------------------------------

--
-- Structure de la table `premiere`
--

CREATE TABLE `premiere` (
  `id_premiere` int(11) NOT NULL,
  `serie` enum('A','B','C','D','E','F1','F2','F3','F4','G1','G2','G3','G4') NOT NULL,
  `matiere` enum('SVT','MATHEMATIQUE','PCT','ANGLAIS','HIST-GEO','FRANCAIS','ESPAGNOL','ALLEMANDE','PHILOSOPHIE','ECONOMIE','GESTION') NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `categorie` enum('COURS_SVT','COURS_MATHEMATIQUE','COURS_PCT','COURS_ANGLAIS','COURS_HIST-GEO','COURS_FRANCAIS','COURS_ESPAGNOL','COURS_ALLEMANDE','COURS_PHILOSOPHIE','COURS_ECONOMIE','COURS_GESTION','EXPOSE_SVT','EXPOSE_MATHEMATIQUE','EXPOSE_PCT','EXPOSE_ANGLAIS','EXPOSE_HIST-GEO','EXPOSE_FRANCAIS','EXPOSE_ESPAGNOL','EXPOSE_ALLEMANDE','EXPOSE_PHILOSOPHIE','EXPOSE_ECONOMIE','EXPOSE_GESTION','RESUME_COURS_SVT','RESUME_COURS_MATHEMATIQUE','RESUME_COURS_PCT','RESUME_COURS_ANGLAIS','RESUME_COURS_HIST-GEO','RESUME_COURS_FRANCAIS','RESUME_COURS_ESPAGNOL','RESUME_COURS_ALLEMANDE','RESUME_COURS_PHILOSOPHIE','RESUME_COURS_ECONOMIE','RESUME_COURS_GESTION','DEVOIRS_SVT','DEVOIRS_MATHEMATIQUE','DEVOIRS_PCT','DEVOIRS_ANGLAIS','DEVOIRS_HIST-GEO','DEVOIRS_FRANCAIS','DEVOIRS_ESPAGNOL','DEVOIRS_ALLEMANDE','DEVOIRS_PHILOSOPHIE','DEVOIRS_ECONOMIE','DEVOIRS_GESTION','FICHE_DE_COURS_SVT','FICHE_DE_COURS_MATHEMATIQUE','FICHE_DE_COURS_PCT','FICHE_DE_COURS_ANGLAIS','FICHE_DE_COURS_HIST-GEO','FICHE_DE_COURS_FRANCAIS','FICHE_DE_COURS_ESPAGNOL','FICHE_DE_COURS_ALLEMANDE','FICHE_DE_COURS_PHILOSOPHIE','FICHE_DE_COURS_ECONOMIE','FICHE_DE_COURS_GESTION','SUPPORT_DE_COURS_SVT','SUPPORT_DE_COURS_MATHEMATIQUE','SUPPORT_DE_COURS_PCT','SUPPORT_DE_COURS_ANGLAIS','SUPPORT_DE_COURS_HIST-GEO','SUPPORT_DE_COURS_FRANCAIS','SUPPORT_DE_COURS_ESPAGNOL','SUPPORT_DE_COURS_ALLEMANDE','SUPPORT_DE_COURS_PHILOSOPHIE','SUPPORT_DE_COURS_ECONOMIE','SUPPORT_DE_COURS_GESTION','INTERROGATIONS_SVT','INTERROGATIONS_MATHEMATIQUE','INTERROGATIONS_PCT','INTERROGATIONS_ANGLAIS','INTERROGATIONS_HIST-GEO','INTERROGATIONS_FRANCAIS','INTERROGATIONS_ESPAGNOL','INTERROGATIONS_ALLEMANDE','INTERROGATIONS_PHILOSOPHIE','INTERROGATIONS_ECONOMIE','INTERROGATIONS_GESTION','EXERCICES_SVT','EXERCICES_MATHEMATIQUE','EXERCICES_PCT','EXERCICES_ANGLAIS','EXERCICES_HIST-GEO','EXERCICES_FRANCAIS','EXERCICES_ESPAGNOL','EXERCICES_ALLEMANDE','EXERCICES_PHILOSOPHIE','EXERCICES_ECONOMIE','EXERCICES_GESTION') NOT NULL,
  `description` text NOT NULL,
  `lien_de_telechargement` longblob NOT NULL,
  `prix_de_vente` varchar(255) NOT NULL,
  `taille_fichier` varchar(255) NOT NULL,
  `date_de_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

CREATE TABLE `produits` (
  `id` int(11) NOT NULL,
  `nom` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `prix` decimal(7,2) NOT NULL,
  `prix_Réel` decimal(7,2) NOT NULL DEFAULT 0.00,
  `quantité` int(11) NOT NULL,
  `img` text NOT NULL,
  `date_ajou` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`id`, `nom`, `description`, `prix`, `prix_Réel`, `quantité`, `img`, `date_ajou`) VALUES
(1, 'Écouteur Bluetooth', '<p>Écouteur Bluetooth sans fil casque ecouteurs F9 écouteur stéréo HIFI sport casque Support iOS/Android téléphones HD appel.</p>\r\n<h3>Détails</h3>\r\n<ul>\r\n<li>Nom:\r\n	Casque Bluetooth F9</li><li>Couleur: noir</li><li>Matériel: ABS</li><li>Version bluetooth: V5.0</li><li>Affichage de la batterie: prise en charge d\'Android, IOS</li><li>Distance de\r\n	travail: 10 mètres</li><li>Sensibilité: 108 ± 2db</li><li>Impédance: 16 ± 5% Ω</li><li>Batterie: Casque 60mah</li><li>Batterie de chargement: 1200MAH</li><li>Utilisation continue du casque: 3-5 heures</li><li>Taille du bac de chargement: 8 * 5,5 ** 3CM</li>\r\n</ul>', '29.99', '0.00', 15, 'ecouteurBluetooth.png', '2021-10-13 17:55:22'),
(2, 'Support-Telephone', '<h3>Détails</h3>\r\n<ul>\r\n<li>Support pour votre smartphone! Flexible, il vous permet de tordre la tige afin de trouver la hauteur idéale et l’emplacement parfait où placer votre téléphone.<br>Support flexible universel pour Smartphones, téléphones portables et liseuses - 60 cm de hauteur </li><li>Installation on ne peut plus simple , il suffit de :\r\n<ol>\r\n <li>– Insérer la boule de la tige à l’arrière du support téléphone</li><li>– visser la molette pour bloquer l’angle de vue choisi</li><li>- clipper la pince sur la surface choisie (bord de table ou autre)</li><li>– placer le téléphone dans le support en pinçant pour ouvrir, et refermer doucement autour du téléphone</li>\r\n</ol>\r\n</li>\r\n</ul>', '14.99', '19.99', 34, 'Support-Telephone.jpg', '2021-10-13 18:52:49'),
(3, 'Headphones', '', '19.99', '0.00', 23, 'headphones.jpg', '2021-10-13 18:47:56'),
(4, 'Chargeur Rapide', '<div><h3>Détails Chargeur Rapide Haute Qualité Turbo Charger 18W avec Cable type-c.</h3>\r\nVous pouvez charger vos téléphones plus rapidement avec ce chargeur.<br> Vous pouvez vérifier les valeurs de sortie du produit nommé ...... dans la section des spécifications du produit. Ce chargeur peut être utilisé sur tous les modèles Type-c USB-C Input.<br>Permet une charge rapide des téléphones ou des appareils mobiles avec prise en charge de\r\n	la charge rapide. Vous pouvez également charger en toute sécurité d\'autres appareils.<br>Le chargeur peut fournir une puissance de charge différente pour différents appareils Android et iOS.</div>', '11.99', '0.00', 7, 'ChargeurRapide.jpg', '2021-10-13 17:42:04');

-- --------------------------------------------------------

--
-- Structure de la table `quatrieme`
--

CREATE TABLE `quatrieme` (
  `id_quatrieme` int(11) NOT NULL,
  `matiere` enum('SVT','MATHEMATIQUE','PCT','ANGLAIS','HIST-GEO','FRANCAIS','ESPAGNOL','ALLEMANDE','PHILOSOPHIE','ECONOMIE','GESTION') NOT NULL,
  `titre` varchar(255) NOT NULL,
  `categorie` enum('COURS_SVT','COURS_MATHEMATIQUE','COURS_PCT','COURS_ANGLAIS','COURS_HIST-GEO','COURS_FRANCAIS','COURS_ESPAGNOL','COURS_ALLEMANDE','COURS_PHILOSOPHIE','COURS_ECONOMIE','COURS_GESTION','EXPOSE_SVT','EXPOSE_MATHEMATIQUE','EXPOSE_PCT','EXPOSE_ANGLAIS','EXPOSE_HIST-GEO','EXPOSE_FRANCAIS','EXPOSE_ESPAGNOL','EXPOSE_ALLEMANDE','EXPOSE_PHILOSOPHIE','EXPOSE_ECONOMIE','EXPOSE_GESTION','RESUME_COURS_SVT','RESUME_COURS_MATHEMATIQUE','RESUME_COURS_PCT','RESUME_COURS_ANGLAIS','RESUME_COURS_HIST-GEO','RESUME_COURS_FRANCAIS','RESUME_COURS_ESPAGNOL','RESUME_COURS_ALLEMANDE','RESUME_COURS_PHILOSOPHIE','RESUME_COURS_ECONOMIE','RESUME_COURS_GESTION','DEVOIRS_SVT','DEVOIRS_MATHEMATIQUE','DEVOIRS_PCT','DEVOIRS_ANGLAIS','DEVOIRS_HIST-GEO','DEVOIRS_FRANCAIS','DEVOIRS_ESPAGNOL','DEVOIRS_ALLEMANDE','DEVOIRS_PHILOSOPHIE','DEVOIRS_ECONOMIE','DEVOIRS_GESTION','FICHE_DE_COURS_SVT','FICHE_DE_COURS_MATHEMATIQUE','FICHE_DE_COURS_PCT','FICHE_DE_COURS_ANGLAIS','FICHE_DE_COURS_HIST-GEO','FICHE_DE_COURS_FRANCAIS','FICHE_DE_COURS_ESPAGNOL','FICHE_DE_COURS_ALLEMANDE','FICHE_DE_COURS_PHILOSOPHIE','FICHE_DE_COURS_ECONOMIE','FICHE_DE_COURS_GESTION','SUPPORT_DE_COURS_SVT','SUPPORT_DE_COURS_MATHEMATIQUE','SUPPORT_DE_COURS_PCT','SUPPORT_DE_COURS_ANGLAIS','SUPPORT_DE_COURS_HIST-GEO','SUPPORT_DE_COURS_FRANCAIS','SUPPORT_DE_COURS_ESPAGNOL','SUPPORT_DE_COURS_ALLEMANDE','SUPPORT_DE_COURS_PHILOSOPHIE','SUPPORT_DE_COURS_ECONOMIE','SUPPORT_DE_COURS_GESTION','INTERROGATIONS_SVT','INTERROGATIONS_MATHEMATIQUE','INTERROGATIONS_PCT','INTERROGATIONS_ANGLAIS','INTERROGATIONS_HIST-GEO','INTERROGATIONS_FRANCAIS','INTERROGATIONS_ESPAGNOL','INTERROGATIONS_ALLEMANDE','INTERROGATIONS_PHILOSOPHIE','INTERROGATIONS_ECONOMIE','INTERROGATIONS_GESTION','EXERCICES_SVT','EXERCICES_MATHEMATIQUE','EXERCICES_PCT','EXERCICES_ANGLAIS','EXERCICES_HIST-GEO','EXERCICES_FRANCAIS','EXERCICES_ESPAGNOL','EXERCICES_ALLEMANDE','EXERCICES_PHILOSOPHIE','EXERCICES_ECONOMIE','EXERCICES_GESTION') NOT NULL,
  `description` text NOT NULL,
  `lien_de_telechargement` longblob NOT NULL,
  `prix_de_vente` varchar(255) NOT NULL,
  `taille_fichier` varchar(255) NOT NULL,
  `date_de_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `seconde`
--

CREATE TABLE `seconde` (
  `id_seconde` int(11) NOT NULL,
  `serie` enum('A','B','C','D','E','F1','F2','F3','F4','G1','G2','G3','G4') NOT NULL,
  `matiere` enum('SVT','MATHEMATIQUE','PCT','ANGLAIS','HIST-GEO','FRANCAIS','ESPAGNOL','ALLEMANDE','PHILOSOPHIE','ECONOMIE','GESTION') NOT NULL,
  `titre` varchar(255) NOT NULL,
  `categorie` enum('COURS_SVT','COURS_MATHEMATIQUE','COURS_PCT','COURS_ANGLAIS','COURS_HIST-GEO','COURS_FRANCAIS','COURS_ESPAGNOL','COURS_ALLEMANDE','COURS_PHILOSOPHIE','COURS_ECONOMIE','COURS_GESTION','EXPOSE_SVT','EXPOSE_MATHEMATIQUE','EXPOSE_PCT','EXPOSE_ANGLAIS','EXPOSE_HIST-GEO','EXPOSE_FRANCAIS','EXPOSE_ESPAGNOL','EXPOSE_ALLEMANDE','EXPOSE_PHILOSOPHIE','EXPOSE_ECONOMIE','EXPOSE_GESTION','RESUME_COURS_SVT','RESUME_COURS_MATHEMATIQUE','RESUME_COURS_PCT','RESUME_COURS_ANGLAIS','RESUME_COURS_HIST-GEO','RESUME_COURS_FRANCAIS','RESUME_COURS_ESPAGNOL','RESUME_COURS_ALLEMANDE','RESUME_COURS_PHILOSOPHIE','RESUME_COURS_ECONOMIE','RESUME_COURS_GESTION','DEVOIRS_SVT','DEVOIRS_MATHEMATIQUE','DEVOIRS_PCT','DEVOIRS_ANGLAIS','DEVOIRS_HIST-GEO','DEVOIRS_FRANCAIS','DEVOIRS_ESPAGNOL','DEVOIRS_ALLEMANDE','DEVOIRS_PHILOSOPHIE','DEVOIRS_ECONOMIE','DEVOIRS_GESTION','FICHE_DE_COURS_SVT','FICHE_DE_COURS_MATHEMATIQUE','FICHE_DE_COURS_PCT','FICHE_DE_COURS_ANGLAIS','FICHE_DE_COURS_HIST-GEO','FICHE_DE_COURS_FRANCAIS','FICHE_DE_COURS_ESPAGNOL','FICHE_DE_COURS_ALLEMANDE','FICHE_DE_COURS_PHILOSOPHIE','FICHE_DE_COURS_ECONOMIE','FICHE_DE_COURS_GESTION','SUPPORT_DE_COURS_SVT','SUPPORT_DE_COURS_MATHEMATIQUE','SUPPORT_DE_COURS_PCT','SUPPORT_DE_COURS_ANGLAIS','SUPPORT_DE_COURS_HIST-GEO','SUPPORT_DE_COURS_FRANCAIS','SUPPORT_DE_COURS_ESPAGNOL','SUPPORT_DE_COURS_ALLEMANDE','SUPPORT_DE_COURS_PHILOSOPHIE','SUPPORT_DE_COURS_ECONOMIE','SUPPORT_DE_COURS_GESTION','INTERROGATIONS_SVT','INTERROGATIONS_MATHEMATIQUE','INTERROGATIONS_PCT','INTERROGATIONS_ANGLAIS','INTERROGATIONS_HIST-GEO','INTERROGATIONS_FRANCAIS','INTERROGATIONS_ESPAGNOL','INTERROGATIONS_ALLEMANDE','INTERROGATIONS_PHILOSOPHIE','INTERROGATIONS_ECONOMIE','INTERROGATIONS_GESTION','EXERCICES_SVT','EXERCICES_MATHEMATIQUE','EXERCICES_PCT','EXERCICES_ANGLAIS','EXERCICES_HIST-GEO','EXERCICES_FRANCAIS','EXERCICES_ESPAGNOL','EXERCICES_ALLEMANDE','EXERCICES_PHILOSOPHIE','EXERCICES_ECONOMIE','EXERCICES_GESTION') NOT NULL,
  `description` text NOT NULL,
  `lien_de_telechargement` longblob NOT NULL,
  `prix_de_vente` varchar(255) NOT NULL,
  `taille_fichier` varchar(255) NOT NULL,
  `date_de_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `seconde`
--

INSERT INTO `seconde` (`id_seconde`, `serie`, `matiere`, `titre`, `categorie`, `description`, `lien_de_telechargement`, `prix_de_vente`, `taille_fichier`, `date_de_publication`) VALUES
(1, 'A', 'SVT', 'SA1 SVT', 'COURS_SVT', 'LE COURS DE LA SA1', 0x2e2e2f7365636f6e64652f646f73736965725f7365636f6e64652f5f534131205356545f5356545f434f5552535f5356545f53455249455f412e706466, '300', '264557', '2022-07-13 18:26:33'),
(2, 'A', 'SVT', 'SA2 SVT', 'COURS_SVT', 'LE COURS DE LA SA2', 0x2e2e2f7365636f6e64652f646f73736965725f7365636f6e64652f5f534132205356545f5356545f434f5552535f5356545f53455249455f412e706466, '500', '331719', '2022-07-14 09:54:08'),
(3, 'A', 'SVT', 'SA3 SVT', 'COURS_SVT', 'LE COURS DE LA SA3', 0x2e2e2f7365636f6e64652f646f73736965725f7365636f6e64652f5f534133205356545f5356545f434f5552535f5356545f53455249455f412e706466, '300', '536181', '2022-07-14 09:58:43'),
(4, 'A', 'SVT', 'SA4 SVT', 'COURS_SVT', 'LE COURS DE LA SA4 SVT', 0x2e2e2f7365636f6e64652f646f73736965725f7365636f6e64652f5f534134205356545f5356545f434f5552535f5356545f53455249455f412e706466, '250', '119226', '2022-07-14 10:01:20'),
(5, 'A', 'SVT', 'SA5 SVT', 'COURS_SVT', 'LE COURS DE LA SA5 SVT', 0x2e2e2f7365636f6e64652f646f73736965725f7365636f6e64652f5f534135205356545f5356545f434f5552535f5356545f53455249455f412e706466, '500', '69379', '2022-07-14 10:01:54');

-- --------------------------------------------------------

--
-- Structure de la table `sixieme`
--

CREATE TABLE `sixieme` (
  `id_sixieme` int(11) NOT NULL,
  `matiere` enum('SVT','MATHEMATIQUE','PCT','ANGLAIS','HIST-GEO','FRANCAIS','ESPAGNOL','ALLEMANDE','PHILOSOPHIE','ECONOMIE','GESTION') NOT NULL,
  `titre` varchar(255) NOT NULL,
  `categorie` enum('COURS_SVT','COURS_MATHEMATIQUE','COURS_PCT','COURS_ANGLAIS','COURS_HIST-GEO','COURS_FRANCAIS','COURS_ESPAGNOL','COURS_ALLEMANDE','COURS_PHILOSOPHIE','COURS_ECONOMIE','COURS_GESTION','EXPOSE_SVT','EXPOSE_MATHEMATIQUE','EXPOSE_PCT','EXPOSE_ANGLAIS','EXPOSE_HIST-GEO','EXPOSE_FRANCAIS','EXPOSE_ESPAGNOL','EXPOSE_ALLEMANDE','EXPOSE_PHILOSOPHIE','EXPOSE_ECONOMIE','EXPOSE_GESTION','RESUME_COURS_SVT','RESUME_COURS_MATHEMATIQUE','RESUME_COURS_PCT','RESUME_COURS_ANGLAIS','RESUME_COURS_HIST-GEO','RESUME_COURS_FRANCAIS','RESUME_COURS_ESPAGNOL','RESUME_COURS_ALLEMANDE','RESUME_COURS_PHILOSOPHIE','RESUME_COURS_ECONOMIE','RESUME_COURS_GESTION','DEVOIRS_SVT','DEVOIRS_MATHEMATIQUE','DEVOIRS_PCT','DEVOIRS_ANGLAIS','DEVOIRS_HIST-GEO','DEVOIRS_FRANCAIS','DEVOIRS_ESPAGNOL','DEVOIRS_ALLEMANDE','DEVOIRS_PHILOSOPHIE','DEVOIRS_ECONOMIE','DEVOIRS_GESTION','FICHE_DE_COURS_SVT','FICHE_DE_COURS_MATHEMATIQUE','FICHE_DE_COURS_PCT','FICHE_DE_COURS_ANGLAIS','FICHE_DE_COURS_HIST-GEO','FICHE_DE_COURS_FRANCAIS','FICHE_DE_COURS_ESPAGNOL','FICHE_DE_COURS_ALLEMANDE','FICHE_DE_COURS_PHILOSOPHIE','FICHE_DE_COURS_ECONOMIE','FICHE_DE_COURS_GESTION','SUPPORT_DE_COURS_SVT','SUPPORT_DE_COURS_MATHEMATIQUE','SUPPORT_DE_COURS_PCT','SUPPORT_DE_COURS_ANGLAIS','SUPPORT_DE_COURS_HIST-GEO','SUPPORT_DE_COURS_FRANCAIS','SUPPORT_DE_COURS_ESPAGNOL','SUPPORT_DE_COURS_ALLEMANDE','SUPPORT_DE_COURS_PHILOSOPHIE','SUPPORT_DE_COURS_ECONOMIE','SUPPORT_DE_COURS_GESTION','INTERROGATIONS_SVT','INTERROGATIONS_MATHEMATIQUE','INTERROGATIONS_PCT','INTERROGATIONS_ANGLAIS','INTERROGATIONS_HIST-GEO','INTERROGATIONS_FRANCAIS','INTERROGATIONS_ESPAGNOL','INTERROGATIONS_ALLEMANDE','INTERROGATIONS_PHILOSOPHIE','INTERROGATIONS_ECONOMIE','INTERROGATIONS_GESTION','EXERCICES_SVT','EXERCICES_MATHEMATIQUE','EXERCICES_PCT','EXERCICES_ANGLAIS','EXERCICES_HIST-GEO','EXERCICES_FRANCAIS','EXERCICES_ESPAGNOL','EXERCICES_ALLEMANDE','EXERCICES_PHILOSOPHIE','EXERCICES_ECONOMIE','EXERCICES_GESTION') NOT NULL,
  `description` text NOT NULL,
  `lien_de_telechargement` longblob NOT NULL,
  `prix_de_vente` varchar(255) NOT NULL,
  `taille_fichier` varchar(255) NOT NULL,
  `date_de_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `sixieme`
--

INSERT INTO `sixieme` (`id_sixieme`, `matiere`, `titre`, `categorie`, `description`, `lien_de_telechargement`, `prix_de_vente`, `taille_fichier`, `date_de_publication`) VALUES
(1, 'SVT', 'SA1 SVT', 'COURS_SVT', 'LE COURS DE LA SA1', 0x2e2e2f646f73736965725f73697869656d652f534131205356545f5356545f434f5552535f5356542e706466, '500', '136531', '2022-08-07 15:05:05'),
(2, 'ANGLAIS', 'SA1 anglais', 'EXPOSE_ANGLAIS', 'LE COURS DE LA SA2', 0x2e2e2f646f73736965725f73697869656d652f53413120616e676c6169735f414e474c4149535f4558504f53455f414e474c4149532e706466, '250', '1224870', '2022-08-07 15:06:18'),
(3, 'PCT', 'SA1 PCT', 'COURS_PCT', 'LE COURS DE LA SA1', 0x2e2e2f646f73736965725f73697869656d652f534131205043545f5043545f434f5552535f5043542e706466, '300', '136551', '2022-08-08 15:30:30'),
(4, 'MATHEMATIQUE', 'SA1 MATHS', 'COURS_MATHEMATIQUE', 'LE COURS DE LA SA1', 0x2e2e2f646f73736965725f73697869656d652f534131204d415448535f4d415448454d4154495155455f434f5552535f4d415448454d4154495155452e706466, '300', '287123', '2022-08-12 11:55:48'),
(5, 'ALLEMANDE', 'SA1 LLEMANDE', 'EXPOSE_ALLEMANDE', 'LE COURS DE LA SA1', 0x2e2e2f646f73736965725f73697869656d652f534131204c4c454d414e44455f414c4c454d414e44455f4558504f53455f414c4c454d414e44452e706466, '500', '76632', '2022-08-12 19:46:35'),
(6, 'SVT', 'SA2 SVT', 'COURS_SVT', 'LE COURS DE LA SA2', 0x2e2e2f646f73736965725f73697869656d652f534132205356545f5356545f434f5552535f5356542e706466, '300', '1816871', '2022-08-12 19:49:30'),
(7, 'ESPAGNOL', 'SA3 ESPAGNOLE', 'COURS_ESPAGNOL', 'LE COURS DE LA SA3 ESPAGNOL 23', 0x2e2e2f646f73736965725f73697869656d652f5341332045535041474e4f4c455f45535041474e4f4c5f434f5552535f45535041474e4f4c2e706466, '250', '76632', '2022-08-14 19:17:45'),
(8, 'SVT', 'LES POLES', 'COURS_SVT', 'LE COURS DE LA SA2', 0x2e2e2f646f73736965725f73697869656d652f4c455320504f4c45535f5356545f434f5552535f5356542e706466, '300', '76632', '2022-08-14 20:38:43'),
(9, 'HIST-GEO', 'SA1 HG', 'COURS_HIST-GEO', 'LE COURS DE LA SA1 HG', 0x2e2e2f646f73736965725f73697869656d652f5341312048475f484953542d47454f5f434f5552535f484953542d47454f2e706466, '500', '287123', '2022-08-14 20:43:35'),
(10, 'PCT', 'Concours', 'COURS_PCT', 'CONCOURS D&#039;ENTRÉE AU LYCÉE D&#039;ENSEIGNEMENT TECHNIQUE NIVEAU 2 , PCT 2019', 0x2e2e2f646f73736965725f73697869656d652f436f6e636f7572735f5043545f434f5552535f5043542e706466, '500', '144511', '2022-08-16 19:18:24');

-- --------------------------------------------------------

--
-- Structure de la table `terminale`
--

CREATE TABLE `terminale` (
  `id_terminale` int(11) NOT NULL,
  `serie` enum('A','B','C','D','E','F1','F2','F3','F4','G1','G2','G3','G4') NOT NULL,
  `matiere` enum('SVT','MATHEMATIQUE','PCT','ANGLAIS','HIST-GEO','FRANCAIS','ESPAGNOL','ALLEMANDE','PHILOSOPHIE','ECONOMIE','GESTION') NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `categorie` enum('COURS_SVT','COURS_MATHEMATIQUE','COURS_PCT','COURS_ANGLAIS','COURS_HIST-GEO','COURS_FRANCAIS','COURS_ESPAGNOL','COURS_ALLEMANDE','COURS_PHILOSOPHIE','COURS_ECONOMIE','COURS_GESTION','EXPOSE_SVT','EXPOSE_MATHEMATIQUE','EXPOSE_PCT','EXPOSE_ANGLAIS','EXPOSE_HIST-GEO','EXPOSE_FRANCAIS','EXPOSE_ESPAGNOL','EXPOSE_ALLEMANDE','EXPOSE_PHILOSOPHIE','EXPOSE_ECONOMIE','EXPOSE_GESTION','RESUME_COURS_SVT','RESUME_COURS_MATHEMATIQUE','RESUME_COURS_PCT','RESUME_COURS_ANGLAIS','RESUME_COURS_HIST-GEO','RESUME_COURS_FRANCAIS','RESUME_COURS_ESPAGNOL','RESUME_COURS_ALLEMANDE','RESUME_COURS_PHILOSOPHIE','RESUME_COURS_ECONOMIE','RESUME_COURS_GESTION','DEVOIRS_SVT','DEVOIRS_MATHEMATIQUE','DEVOIRS_PCT','DEVOIRS_ANGLAIS','DEVOIRS_HIST-GEO','DEVOIRS_FRANCAIS','DEVOIRS_ESPAGNOL','DEVOIRS_ALLEMANDE','DEVOIRS_PHILOSOPHIE','DEVOIRS_ECONOMIE','DEVOIRS_GESTION','FICHE_DE_COURS_SVT','FICHE_DE_COURS_MATHEMATIQUE','FICHE_DE_COURS_PCT','FICHE_DE_COURS_ANGLAIS','FICHE_DE_COURS_HIST-GEO','FICHE_DE_COURS_FRANCAIS','FICHE_DE_COURS_ESPAGNOL','FICHE_DE_COURS_ALLEMANDE','FICHE_DE_COURS_PHILOSOPHIE','FICHE_DE_COURS_ECONOMIE','FICHE_DE_COURS_GESTION','SUPPORT_DE_COURS_SVT','SUPPORT_DE_COURS_MATHEMATIQUE','SUPPORT_DE_COURS_PCT','SUPPORT_DE_COURS_ANGLAIS','SUPPORT_DE_COURS_HIST-GEO','SUPPORT_DE_COURS_FRANCAIS','SUPPORT_DE_COURS_ESPAGNOL','SUPPORT_DE_COURS_ALLEMANDE','SUPPORT_DE_COURS_PHILOSOPHIE','SUPPORT_DE_COURS_ECONOMIE','SUPPORT_DE_COURS_GESTION','INTERROGATIONS_SVT','INTERROGATIONS_MATHEMATIQUE','INTERROGATIONS_PCT','INTERROGATIONS_ANGLAIS','INTERROGATIONS_HIST-GEO','INTERROGATIONS_FRANCAIS','INTERROGATIONS_ESPAGNOL','INTERROGATIONS_ALLEMANDE','INTERROGATIONS_PHILOSOPHIE','INTERROGATIONS_ECONOMIE','INTERROGATIONS_GESTION','EXERCICES_SVT','EXERCICES_MATHEMATIQUE','EXERCICES_PCT','EXERCICES_ANGLAIS','EXERCICES_HIST-GEO','EXERCICES_FRANCAIS','EXERCICES_ESPAGNOL','EXERCICES_ALLEMANDE','EXERCICES_PHILOSOPHIE','EXERCICES_ECONOMIE','EXERCICES_GESTION') NOT NULL,
  `description` text NOT NULL,
  `lien_de_telechargement` longblob NOT NULL,
  `prix_de_vente` varchar(255) NOT NULL,
  `taille_fichier` varchar(255) NOT NULL,
  `date_de_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `troisieme`
--

CREATE TABLE `troisieme` (
  `id_troisieme` int(11) NOT NULL,
  `matiere` enum('SVT','MATHEMATIQUE','PCT','ANGLAIS','HIST-GEO','FRANCAIS','ESPAGNOL','ALLEMANDE','PHILOSOPHIE','ECONOMIE','GESTION') NOT NULL,
  `titre` varchar(255) NOT NULL,
  `categorie` enum('COURS_SVT','COURS_MATHEMATIQUE','COURS_PCT','COURS_ANGLAIS','COURS_HIST-GEO','COURS_FRANCAIS','COURS_ESPAGNOL','COURS_ALLEMANDE','COURS_PHILOSOPHIE','COURS_ECONOMIE','COURS_GESTION','EXPOSE_SVT','EXPOSE_MATHEMATIQUE','EXPOSE_PCT','EXPOSE_ANGLAIS','EXPOSE_HIST-GEO','EXPOSE_FRANCAIS','EXPOSE_ESPAGNOL','EXPOSE_ALLEMANDE','EXPOSE_PHILOSOPHIE','EXPOSE_ECONOMIE','EXPOSE_GESTION','RESUME_COURS_SVT','RESUME_COURS_MATHEMATIQUE','RESUME_COURS_PCT','RESUME_COURS_ANGLAIS','RESUME_COURS_HIST-GEO','RESUME_COURS_FRANCAIS','RESUME_COURS_ESPAGNOL','RESUME_COURS_ALLEMANDE','RESUME_COURS_PHILOSOPHIE','RESUME_COURS_ECONOMIE','RESUME_COURS_GESTION','DEVOIRS_SVT','DEVOIRS_MATHEMATIQUE','DEVOIRS_PCT','DEVOIRS_ANGLAIS','DEVOIRS_HIST-GEO','DEVOIRS_FRANCAIS','DEVOIRS_ESPAGNOL','DEVOIRS_ALLEMANDE','DEVOIRS_PHILOSOPHIE','DEVOIRS_ECONOMIE','DEVOIRS_GESTION','FICHE_DE_COURS_SVT','FICHE_DE_COURS_MATHEMATIQUE','FICHE_DE_COURS_PCT','FICHE_DE_COURS_ANGLAIS','FICHE_DE_COURS_HIST-GEO','FICHE_DE_COURS_FRANCAIS','FICHE_DE_COURS_ESPAGNOL','FICHE_DE_COURS_ALLEMANDE','FICHE_DE_COURS_PHILOSOPHIE','FICHE_DE_COURS_ECONOMIE','FICHE_DE_COURS_GESTION','SUPPORT_DE_COURS_SVT','SUPPORT_DE_COURS_MATHEMATIQUE','SUPPORT_DE_COURS_PCT','SUPPORT_DE_COURS_ANGLAIS','SUPPORT_DE_COURS_HIST-GEO','SUPPORT_DE_COURS_FRANCAIS','SUPPORT_DE_COURS_ESPAGNOL','SUPPORT_DE_COURS_ALLEMANDE','SUPPORT_DE_COURS_PHILOSOPHIE','SUPPORT_DE_COURS_ECONOMIE','SUPPORT_DE_COURS_GESTION','INTERROGATIONS_SVT','INTERROGATIONS_MATHEMATIQUE','INTERROGATIONS_PCT','INTERROGATIONS_ANGLAIS','INTERROGATIONS_HIST-GEO','INTERROGATIONS_FRANCAIS','INTERROGATIONS_ESPAGNOL','INTERROGATIONS_ALLEMANDE','INTERROGATIONS_PHILOSOPHIE','INTERROGATIONS_ECONOMIE','INTERROGATIONS_GESTION','EXERCICES_SVT','EXERCICES_MATHEMATIQUE','EXERCICES_PCT','EXERCICES_ANGLAIS','EXERCICES_HIST-GEO','EXERCICES_FRANCAIS','EXERCICES_ESPAGNOL','EXERCICES_ALLEMANDE','EXERCICES_PHILOSOPHIE','EXERCICES_ECONOMIE','EXERCICES_GESTION') NOT NULL,
  `description` text NOT NULL,
  `lien_de_telechargement` longblob NOT NULL,
  `prix_de_vente` varchar(255) NOT NULL,
  `taille_fichier` varchar(255) NOT NULL,
  `date_de_publication` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `universite`
--

CREATE TABLE `universite` (
  `id_universite` int(6) NOT NULL,
  `pays` enum('BENIN','TOGO','NIGER','NIGERIA','MALI','COTE_D_IVOIRE','SENEGALE','CAMEROUNE','AUTRE') NOT NULL,
  `niveau` enum('BTS','LICENCE1','LICENCE2','LICENCE3','MASTER','DOCTORAT') NOT NULL,
  `annee` enum('2010','2011','2012','2013','2014','2015','2016','2017','2018','2019','2020','2021','2022','2023','2024','2025','2026','2027','2028','2029','2030') NOT NULL,
  `filiere` varchar(255) NOT NULL,
  `matiere` varchar(255) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `categorie` enum('COURS','EXPOSE','RESUME_COURS','EXAMENS','MEMOIRS','EXERCICES') NOT NULL,
  `description` text NOT NULL,
  `lien_de_telechargement` longblob NOT NULL,
  `taille_fichier` varchar(60) NOT NULL,
  `date_de_publication` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `avatar_membre_inscrit`
--
ALTER TABLE `avatar_membre_inscrit`
  ADD PRIMARY KEY (`id_avatar`),
  ADD UNIQUE KEY `id_membre` (`id_membre`);

--
-- Index pour la table `bac`
--
ALTER TABLE `bac`
  ADD PRIMARY KEY (`id_bac`),
  ADD UNIQUE KEY `titre` (`titre`);

--
-- Index pour la table `bepc`
--
ALTER TABLE `bepc`
  ADD PRIMARY KEY (`id_bepc`),
  ADD UNIQUE KEY `titre` (`titre`);

--
-- Index pour la table `cap`
--
ALTER TABLE `cap`
  ADD PRIMARY KEY (`id_cap`),
  ADD UNIQUE KEY `titre` (`titre`);

--
-- Index pour la table `cep`
--
ALTER TABLE `cep`
  ADD PRIMARY KEY (`id_cep`),
  ADD UNIQUE KEY `titre` (`titre`);

--
-- Index pour la table `cinquieme`
--
ALTER TABLE `cinquieme`
  ADD PRIMARY KEY (`id_cinquieme`),
  ADD UNIQUE KEY `titre` (`titre`);

--
-- Index pour la table `compte_membre`
--
ALTER TABLE `compte_membre`
  ADD PRIMARY KEY (`id_compte_membre`);

--
-- Index pour la table `concours`
--
ALTER TABLE `concours`
  ADD PRIMARY KEY (`id_concours`),
  ADD UNIQUE KEY `titre` (`titre`);

--
-- Index pour la table `cours_primaire`
--
ALTER TABLE `cours_primaire`
  ADD PRIMARY KEY (`id_cours_primaire`),
  ADD UNIQUE KEY `titre` (`titre`);

--
-- Index pour la table `exercice_svt_6eme_partie1`
--
ALTER TABLE `exercice_svt_6eme_partie1`
  ADD PRIMARY KEY (`id_exercice_svt_6eme_partie1`);

--
-- Index pour la table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id_info`);

--
-- Index pour la table `membre_inscrit`
--
ALTER TABLE `membre_inscrit`
  ADD PRIMARY KEY (`id_membre`),
  ADD UNIQUE KEY `pseudo` (`pseudo`);

--
-- Index pour la table `premiere`
--
ALTER TABLE `premiere`
  ADD PRIMARY KEY (`id_premiere`),
  ADD UNIQUE KEY `titre` (`titre`);

--
-- Index pour la table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `quatrieme`
--
ALTER TABLE `quatrieme`
  ADD PRIMARY KEY (`id_quatrieme`),
  ADD UNIQUE KEY `titre` (`titre`);

--
-- Index pour la table `seconde`
--
ALTER TABLE `seconde`
  ADD PRIMARY KEY (`id_seconde`),
  ADD UNIQUE KEY `titre` (`titre`);

--
-- Index pour la table `sixieme`
--
ALTER TABLE `sixieme`
  ADD PRIMARY KEY (`id_sixieme`),
  ADD UNIQUE KEY `titre` (`titre`);

--
-- Index pour la table `terminale`
--
ALTER TABLE `terminale`
  ADD PRIMARY KEY (`id_terminale`),
  ADD UNIQUE KEY `titre` (`titre`);

--
-- Index pour la table `troisieme`
--
ALTER TABLE `troisieme`
  ADD PRIMARY KEY (`id_troisieme`),
  ADD UNIQUE KEY `titre` (`titre`);

--
-- Index pour la table `universite`
--
ALTER TABLE `universite`
  ADD PRIMARY KEY (`id_universite`),
  ADD UNIQUE KEY `titre` (`titre`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `avatar_membre_inscrit`
--
ALTER TABLE `avatar_membre_inscrit`
  MODIFY `id_avatar` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `bac`
--
ALTER TABLE `bac`
  MODIFY `id_bac` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `bepc`
--
ALTER TABLE `bepc`
  MODIFY `id_bepc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cap`
--
ALTER TABLE `cap`
  MODIFY `id_cap` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cep`
--
ALTER TABLE `cep`
  MODIFY `id_cep` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cinquieme`
--
ALTER TABLE `cinquieme`
  MODIFY `id_cinquieme` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `compte_membre`
--
ALTER TABLE `compte_membre`
  MODIFY `id_compte_membre` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `concours`
--
ALTER TABLE `concours`
  MODIFY `id_concours` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cours_primaire`
--
ALTER TABLE `cours_primaire`
  MODIFY `id_cours_primaire` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `exercice_svt_6eme_partie1`
--
ALTER TABLE `exercice_svt_6eme_partie1`
  MODIFY `id_exercice_svt_6eme_partie1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `information`
--
ALTER TABLE `information`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `membre_inscrit`
--
ALTER TABLE `membre_inscrit`
  MODIFY `id_membre` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `premiere`
--
ALTER TABLE `premiere`
  MODIFY `id_premiere` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `produits`
--
ALTER TABLE `produits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `quatrieme`
--
ALTER TABLE `quatrieme`
  MODIFY `id_quatrieme` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `seconde`
--
ALTER TABLE `seconde`
  MODIFY `id_seconde` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `sixieme`
--
ALTER TABLE `sixieme`
  MODIFY `id_sixieme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `terminale`
--
ALTER TABLE `terminale`
  MODIFY `id_terminale` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `troisieme`
--
ALTER TABLE `troisieme`
  MODIFY `id_troisieme` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `universite`
--
ALTER TABLE `universite`
  MODIFY `id_universite` int(6) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
