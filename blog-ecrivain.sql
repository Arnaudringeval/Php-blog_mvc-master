-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 15 fév. 2021 à 14:39
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog-ecrivain`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `seen` tinyint(11) NOT NULL DEFAULT '0',
  `signals` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `comment`, `post_id`, `date`, `seen`, `signals`) VALUES
(93, 14, 'Pas mal !', 40, '2018-02-22 07:20:01', 0, 0),
(94, 14, 'Bof', 11, '2018-02-22 07:20:13', 0, 0),
(97, 19, 'ok, ça va!', 11, '2021-02-15 12:30:15', 1, 0),
(98, 19, 'ok cool bro', 40, '2021-02-15 12:58:43', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `body` longtext NOT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'post.png',
  `createdDate` datetime NOT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `image`, `createdDate`, `modifiedDate`) VALUES
(11, 'La switch, console du futur!!!', '<p>Cette console est tout simplement l\'avenir des consoles alliant jeux physiques, d&eacute;mat&eacute;rialis&eacute;, portable et cloud gaming</p>\r\n<p><img class=\"\" src=\"data:image/jpeg;base64,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\" alt=\"\" width=\"185\" height=\"273\" /></p>', 'switch.jpg', '2018-02-03 16:08:55', '2021-02-15 15:04:54'),
(24, 'Qu\'est-ce que le touring 1/10?', '<p>Pour connaitre le touring 1/10 je vais vous renvoyer directement vers un site qui en parle.<br />Il est encore en construction mais il sera une grande source de connaissance &agrave; l\'avenir pour vous.</p>\r\n<p><a href=\"https://touringrace.netlify.app/index.html\">https://touringrace.netlify.app/index.html</a></p>\r\n<p>J\'esp&egrave;re &ccedil;a pourra vous aider.</p>', 'Wolverine.jpg', '2021-02-15 14:32:00', '2021-02-15 14:43:23'),
(40, 'Enfin le retour des cartes Nvidia???', '<p>Effet d\'annonce ou réalité?\r\nLes RTX 3090 enfin de retour</p>\r\n<p><img class=\"\" src=\"static/source/téléchargement.jpg\" alt=\"\" width=\"245\" height=\"232\" /></p>\r\n<p>L\'avenir nous le dira mais tous les plus grand sites l\'annonce en stock</p>', 'RTX3090.JPG', '2021-02-15 12:32:25', NULL),
(46, 'le club du TTRCS', '<p>Le TTRCS est un club orient&eacute; loisir de Sceaux.</p>\r\n<p>il s\'y pratique le tout terrain 1/10 &eacute;lectrique sur une piste en terre dans le parc de la grenouill&egrave;re faisant parti du parc de Sceaux.</p>\r\n<p>On y pratique aussi le rally.</p>\r\n<p>Les membres font aussi des rencontres pour pratiquer ensemble le Scale.</p>\r\n<p>Le site :&nbsp;</p>\r\n<p><a href=\"https://www.ttrcs.fr/\">https://www.ttrcs.fr/</a></p>\r\n<p>le Forum :</p>\r\n<p>https://forum.ttrcs.fr/</p>', '46.JPG', '2021-02-15 15:12:18', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(120) NOT NULL,
  `password` char(60) NOT NULL,
  `admin` int(11) DEFAULT NULL,
  `pseudo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `admin`, `pseudo`) VALUES
(19, 'nonolehero@yahoo.fr', '61c981415dd3ed3f9b1a106a1117d41ff0185908', 0, 'nono'),
(22, 'admin@afpa.com', '73a38a4dd975c2d5a01919d300e634e70d9fd8c4', 0, 'Patrick'),
(21, 'afpa@afpa.fr', '1a340065606634b575ed162e9c434c27fe24a7c3', NULL, 'moi');

-- --------------------------------------------------------

--
-- Structure de la table `votes`
--

DROP TABLE IF EXISTS `votes`;
CREATE TABLE IF NOT EXISTS `votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `post_id` int(11) NOT NULL,
  `vote` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `votes`
--

INSERT INTO `votes` (`id`, `comment_id`, `user_id`, `post_id`, `vote`) VALUES
(136, 98, 'moi', 40, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
