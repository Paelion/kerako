-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  jeu. 09 jan. 2020 à 11:01
-- Version du serveur :  5.7.26
-- Version de PHP :  7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `kerako`
--

-- --------------------------------------------------------

--
-- Structure de la table `kr_commentmeta`
--

CREATE TABLE `kr_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `kr_comments`
--

CREATE TABLE `kr_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `kr_comments`
--

INSERT INTO `kr_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-12-05 10:10:19', '2019-12-05 09:10:19', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `kr_links`
--

CREATE TABLE `kr_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `kr_options`
--

CREATE TABLE `kr_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `kr_options`
--

INSERT INTO `kr_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/kerako', 'yes'),
(2, 'home', 'http://localhost:8888/kerako', 'yes'),
(3, 'blogname', 'atelier-kerako', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'pauline.aelion@edu.devinci.fr', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:156:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:11:\"boutique/?$\";s:27:\"index.php?post_type=product\";s:41:\"boutique/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"boutique/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"boutique/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"categorie-produit/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"categorie-produit/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"categorie-produit/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"categorie-produit/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"categorie-produit/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:58:\"etiquette-produit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:53:\"etiquette-produit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:34:\"etiquette-produit/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:46:\"etiquette-produit/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:28:\"etiquette-produit/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"produit/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produit/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produit/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produit/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produit/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produit/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produit/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produit/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"produit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"produit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"produit/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produit/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"produit/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produit/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produit/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"produit/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produit/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produit/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produit/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produit/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produit/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produit/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:41:\"navz-photo-gallery/navz-photo-gallery.php\";i:2;s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";i:3;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'themeKerako', 'yes'),
(41, 'stylesheet', 'themeKerako', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1591089019', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'kr_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'fr_FR', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:14:{i:1578567511;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1578568220;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1578569640;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1578574110;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578574120;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578584910;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578595710;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1578604220;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1578610800;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578647419;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578647429;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578647432;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1580990400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1575539309;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(136, 'can_compress_scripts', '1', 'no'),
(148, 'current_theme', 'themeKerako', 'yes'),
(149, 'theme_mods_themeKerako', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:12:\"primary_menu\";i:2;s:11:\"footer_menu\";i:3;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1576139094;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(162, 'recently_activated', 'a:0:{}', 'yes'),
(168, 'theme_mods_twentynineteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1576139099;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(170, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(185, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:29:\"pauline.aelion@edu.devinci.fr\";s:7:\"version\";s:5:\"5.3.2\";s:9:\"timestamp\";i:1576744554;}', 'no'),
(194, 'woocommerce_store_address', 'test', 'yes'),
(195, 'woocommerce_store_address_2', '', 'yes'),
(196, 'woocommerce_store_city', 'saint quentin', 'yes'),
(197, 'woocommerce_default_country', 'FR:*', 'yes'),
(198, 'woocommerce_store_postcode', '', 'yes'),
(199, 'woocommerce_allowed_countries', 'all', 'yes'),
(200, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(201, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(202, 'woocommerce_ship_to_countries', '', 'yes'),
(203, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(204, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(205, 'woocommerce_calc_taxes', 'no', 'yes'),
(206, 'woocommerce_enable_coupons', 'yes', 'yes'),
(207, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(208, 'woocommerce_currency', 'EUR', 'yes'),
(209, 'woocommerce_currency_pos', 'right', 'yes'),
(210, 'woocommerce_price_thousand_sep', ' ', 'yes'),
(211, 'woocommerce_price_decimal_sep', ',', 'yes'),
(212, 'woocommerce_price_num_decimals', '2', 'yes'),
(213, 'woocommerce_shop_page_id', '264', 'yes'),
(214, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(215, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(216, 'woocommerce_placeholder_image', '42', 'yes'),
(217, 'woocommerce_weight_unit', 'kg', 'yes'),
(218, 'woocommerce_dimension_unit', 'cm', 'yes'),
(219, 'woocommerce_enable_reviews', 'yes', 'yes'),
(220, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(221, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(222, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(223, 'woocommerce_review_rating_required', 'yes', 'no'),
(224, 'woocommerce_manage_stock', 'yes', 'yes'),
(225, 'woocommerce_hold_stock_minutes', '60', 'no'),
(226, 'woocommerce_notify_low_stock', 'yes', 'no'),
(227, 'woocommerce_notify_no_stock', 'yes', 'no'),
(228, 'woocommerce_stock_email_recipient', 'pauline.aelion@edu.devinci.fr', 'no'),
(229, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(230, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(231, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(232, 'woocommerce_stock_format', '', 'yes'),
(233, 'woocommerce_file_download_method', 'force', 'no'),
(234, 'woocommerce_downloads_require_login', 'no', 'no'),
(235, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(236, 'woocommerce_prices_include_tax', 'no', 'yes'),
(237, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(238, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(239, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(240, 'woocommerce_tax_classes', '', 'yes'),
(241, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(242, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(243, 'woocommerce_price_display_suffix', '', 'yes'),
(244, 'woocommerce_tax_total_display', 'itemized', 'no'),
(245, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(246, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(247, 'woocommerce_ship_to_destination', 'billing', 'no'),
(248, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(249, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(250, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(251, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(252, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(253, 'woocommerce_registration_generate_username', 'yes', 'no'),
(254, 'woocommerce_registration_generate_password', 'yes', 'no'),
(255, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(256, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(257, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(258, 'woocommerce_registration_privacy_policy_text', 'Vos données personnelles seront utilisées pour vous accompagner au cours de votre visite du site web, gérer l’accès à votre compte, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
(259, 'woocommerce_checkout_privacy_policy_text', 'Vos données personnelles seront utilisées pour le traitement de votre commande, vous accompagner au cours de votre visite du site web, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
(260, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(261, 'woocommerce_trash_pending_orders', '', 'no'),
(262, 'woocommerce_trash_failed_orders', '', 'no'),
(263, 'woocommerce_trash_cancelled_orders', '', 'no'),
(264, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(265, 'woocommerce_email_from_name', 'atelier-kerako', 'no'),
(266, 'woocommerce_email_from_address', 'pauline.aelion@edu.devinci.fr', 'no'),
(267, 'woocommerce_email_header_image', '', 'no'),
(268, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(269, 'woocommerce_email_base_color', '#96588a', 'no'),
(270, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(271, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(272, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(273, 'woocommerce_cart_page_id', '265', 'no'),
(274, 'woocommerce_checkout_page_id', '266', 'no'),
(275, 'woocommerce_myaccount_page_id', '267', 'no'),
(276, 'woocommerce_terms_page_id', '', 'no'),
(277, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(278, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(279, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(280, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(281, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(282, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(283, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(284, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(285, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(286, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(287, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(288, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(289, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(290, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(291, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(292, 'woocommerce_api_enabled', 'no', 'yes'),
(293, 'woocommerce_allow_tracking', 'no', 'no'),
(294, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(295, 'woocommerce_single_image_width', '600', 'yes'),
(296, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(297, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(298, 'woocommerce_demo_store', 'no', 'no'),
(299, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"produit\";s:13:\"category_base\";s:17:\"categorie-produit\";s:8:\"tag_base\";s:17:\"etiquette-produit\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(300, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(301, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(302, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(303, 'product_cat_children', 'a:0:{}', 'yes'),
(304, 'default_product_cat', '17', 'yes'),
(307, 'woocommerce_version', '3.8.1', 'yes'),
(308, 'woocommerce_db_version', '3.8.1', 'yes'),
(309, 'woocommerce_admin_notices', 'a:0:{}', 'yes'),
(310, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(311, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(312, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(313, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(314, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(315, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(316, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(317, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(318, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(319, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(320, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(321, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(322, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(327, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(328, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(329, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(373, 'acf_version', '5.8.7', 'yes'),
(597, 'new_admin_email', 'pauline.aelion@edu.devinci.fr', 'yes'),
(704, '_transient_product_query-transient-version', '1576833966', 'yes'),
(949, 'recovery_mode_email_last_sent', '1576750005', 'yes'),
(1245, 'woocommerce_product_type', 'physical', 'yes'),
(1247, 'woocommerce_stripe_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:14:\"create_account\";b:0;s:5:\"email\";b:0;}', 'yes'),
(1248, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;}', 'yes'),
(1249, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(1250, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(1251, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(1253, 'wc_stripe_show_style_notice', 'no', 'yes'),
(1254, 'wc_stripe_show_sca_notice', 'no', 'yes'),
(1255, 'wc_stripe_version', '4.3.1', 'yes'),
(1256, '_transient_shipping-transient-version', '1576833386', 'yes'),
(1257, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:7:\"Forfait\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"10\";}', 'yes'),
(1258, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:7:\"Forfait\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"10\";}', 'yes'),
(1277, '_transient_product-transient-version', '1576833966', 'yes'),
(1287, 'category_children', 'a:0:{}', 'yes'),
(1288, '_transient_timeout_wc_term_counts', '1579426182', 'no'),
(1289, '_transient_wc_term_counts', 'a:1:{i:17;s:1:\"2\";}', 'no'),
(1300, '_transient_timeout_wc_shipping_method_count_legacy', '1579426696', 'no'),
(1301, '_transient_wc_shipping_method_count_legacy', 'a:2:{s:7:\"version\";s:10:\"1576833386\";s:5:\"value\";i:2;}', 'no'),
(1367, '_transient_timeout_wc_low_stock_count', '1579433244', 'no'),
(1368, '_transient_wc_low_stock_count', '0', 'no'),
(1369, '_transient_timeout_wc_outofstock_count', '1579433244', 'no'),
(1370, '_transient_wc_outofstock_count', '0', 'no'),
(1376, 'dismissed_update_core', 'a:1:{s:11:\"5.3.2|fr_FR\";b:1;}', 'no'),
(1465, '_transient_timeout_external_ip_address_::1', '1579100663', 'no'),
(1466, '_transient_external_ip_address_::1', '176.136.236.181', 'no'),
(1479, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1578562393;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `kr_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1481, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1578562396;s:7:\"checked\";a:6:{s:41:\"navz-photo-gallery/navz-photo-gallery.php\";s:5:\"1.6.5\";s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.8.1\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:5:\"4.3.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:6:{s:41:\"navz-photo-gallery/navz-photo-gallery.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/navz-photo-gallery\";s:4:\"slug\";s:18:\"navz-photo-gallery\";s:6:\"plugin\";s:41:\"navz-photo-gallery/navz-photo-gallery.php\";s:11:\"new_version\";s:5:\"1.6.5\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/navz-photo-gallery/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/navz-photo-gallery.1.6.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/navz-photo-gallery/assets/icon-128x128.png?rev=1561241\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/navz-photo-gallery/assets/banner-772x250.png?rev=1561242\";}s:11:\"banners_rtl\";a:0:{}}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.8.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/woocommerce-gateway-stripe\";s:4:\"slug\";s:26:\"woocommerce-gateway-stripe\";s:6:\"plugin\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:11:\"new_version\";s:5:\"4.3.1\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/woocommerce-gateway-stripe/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-stripe.4.3.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-256x256.png?rev=1917495\";s:2:\"1x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-128x128.png?rev=1917495\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-1544x500.png?rev=1917495\";s:2:\"1x\";s:81:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-772x250.png?rev=1917495\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(1673, '_site_transient_timeout_theme_roots', '1578564194', 'no'),
(1674, '_site_transient_theme_roots', 'a:5:{s:11:\"themeKerako\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(1675, '_transient_timeout__woocommerce_helper_updates', '1578605594', 'no'),
(1676, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1578562394;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(1677, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1578562396;s:7:\"checked\";a:5:{s:11:\"themeKerako\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.0\";}s:8:\"response\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `kr_postmeta`
--

CREATE TABLE `kr_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `kr_postmeta`
--

INSERT INTO `kr_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1575540922:1'),
(6, 1, '_edit_lock', '1575541834:1'),
(7, 8, '_menu_item_type', 'custom'),
(8, 8, '_menu_item_menu_item_parent', '0'),
(9, 8, '_menu_item_object_id', '8'),
(10, 8, '_menu_item_object', 'custom'),
(11, 8, '_menu_item_target', ''),
(12, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(13, 8, '_menu_item_xfn', ''),
(14, 8, '_menu_item_url', 'http://localhost:8888/kerako/'),
(15, 8, '_menu_item_orphaned', '1576139558'),
(16, 9, '_menu_item_type', 'post_type'),
(17, 9, '_menu_item_menu_item_parent', '0'),
(18, 9, '_menu_item_object_id', '2'),
(19, 9, '_menu_item_object', 'page'),
(20, 9, '_menu_item_target', ''),
(21, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(22, 9, '_menu_item_xfn', ''),
(23, 9, '_menu_item_url', ''),
(24, 9, '_menu_item_orphaned', '1576139558'),
(25, 10, '_edit_lock', '1576775001:1'),
(26, 12, '_menu_item_type', 'post_type'),
(27, 12, '_menu_item_menu_item_parent', '0'),
(28, 12, '_menu_item_object_id', '10'),
(29, 12, '_menu_item_object', 'page'),
(30, 12, '_menu_item_target', ''),
(31, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 12, '_menu_item_xfn', ''),
(33, 12, '_menu_item_url', ''),
(34, 12, '_menu_item_orphaned', '1576139942'),
(35, 13, '_edit_lock', '1576775016:1'),
(36, 16, '_edit_lock', '1578562856:1'),
(37, 18, '_edit_lock', '1578562711:1'),
(38, 20, '_menu_item_type', 'post_type'),
(39, 20, '_menu_item_menu_item_parent', '0'),
(40, 20, '_menu_item_object_id', '18'),
(41, 20, '_menu_item_object', 'page'),
(42, 20, '_menu_item_target', ''),
(43, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 20, '_menu_item_xfn', ''),
(45, 20, '_menu_item_url', ''),
(47, 21, '_menu_item_type', 'post_type'),
(48, 21, '_menu_item_menu_item_parent', '0'),
(49, 21, '_menu_item_object_id', '16'),
(50, 21, '_menu_item_object', 'page'),
(51, 21, '_menu_item_target', ''),
(52, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 21, '_menu_item_xfn', ''),
(54, 21, '_menu_item_url', ''),
(56, 22, '_menu_item_type', 'post_type'),
(57, 22, '_menu_item_menu_item_parent', '0'),
(58, 22, '_menu_item_object_id', '13'),
(59, 22, '_menu_item_object', 'page'),
(60, 22, '_menu_item_target', ''),
(61, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 22, '_menu_item_xfn', ''),
(63, 22, '_menu_item_url', ''),
(65, 23, '_menu_item_type', 'post_type'),
(66, 23, '_menu_item_menu_item_parent', '0'),
(67, 23, '_menu_item_object_id', '10'),
(68, 23, '_menu_item_object', 'page'),
(69, 23, '_menu_item_target', ''),
(70, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 23, '_menu_item_xfn', ''),
(72, 23, '_menu_item_url', ''),
(76, 25, '_wp_attached_file', '2019/12/loupe.png'),
(77, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:256;s:4:\"file\";s:17:\"2019/12/loupe.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"loupe-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(78, 26, '_edit_lock', '1576859763:1'),
(79, 28, '_edit_lock', '1576145916:1'),
(80, 30, '_edit_lock', '1576145944:1'),
(81, 32, '_menu_item_type', 'post_type'),
(82, 32, '_menu_item_menu_item_parent', '0'),
(83, 32, '_menu_item_object_id', '30'),
(84, 32, '_menu_item_object', 'page'),
(85, 32, '_menu_item_target', ''),
(86, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 32, '_menu_item_xfn', ''),
(88, 32, '_menu_item_url', ''),
(89, 32, '_menu_item_orphaned', '1576146186'),
(99, 34, '_menu_item_type', 'post_type'),
(100, 34, '_menu_item_menu_item_parent', '0'),
(101, 34, '_menu_item_object_id', '26'),
(102, 34, '_menu_item_object', 'page'),
(103, 34, '_menu_item_target', ''),
(104, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 34, '_menu_item_xfn', ''),
(106, 34, '_menu_item_url', ''),
(108, 35, '_menu_item_type', 'post_type'),
(109, 35, '_menu_item_menu_item_parent', '0'),
(110, 35, '_menu_item_object_id', '18'),
(111, 35, '_menu_item_object', 'page'),
(112, 35, '_menu_item_target', ''),
(113, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 35, '_menu_item_xfn', ''),
(115, 35, '_menu_item_url', ''),
(116, 35, '_menu_item_orphaned', '1576146186'),
(126, 37, '_menu_item_type', 'post_type'),
(127, 37, '_menu_item_menu_item_parent', '0'),
(128, 37, '_menu_item_object_id', '18'),
(129, 37, '_menu_item_object', 'page'),
(130, 37, '_menu_item_target', ''),
(131, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(132, 37, '_menu_item_xfn', ''),
(133, 37, '_menu_item_url', ''),
(135, 38, '_wp_attached_file', '2019/12/test1-scaled.jpg'),
(136, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1708;s:4:\"file\";s:24:\"2019/12/test1-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"test1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"test1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"test1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"test1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"test1-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:19:\"test1-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:9:\"test1.jpg\";}'),
(137, 39, '_wp_attached_file', '2019/12/test2-scaled.jpg'),
(138, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:24:\"2019/12/test2-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"test2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"test2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"test2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"test2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"test2-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:19:\"test2-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:9:\"test2.jpg\";}'),
(139, 40, '_wp_attached_file', '2019/12/test3-scaled.jpg'),
(140, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:24:\"2019/12/test3-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"test3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"test3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"test3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"test3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"test3-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:19:\"test3-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:9:\"test3.jpg\";}'),
(141, 41, '_wp_attached_file', '2019/12/her-scaled.jpg'),
(142, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2048;s:6:\"height\";i:2560;s:4:\"file\";s:22:\"2019/12/her-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"her-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"her-819x1024.jpg\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"her-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"her-768x960.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"her-1229x1536.jpg\";s:5:\"width\";i:1229;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:17:\"her-1638x2048.jpg\";s:5:\"width\";i:1638;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:7:\"her.jpg\";}'),
(143, 42, '_wp_attached_file', 'woocommerce-placeholder.png'),
(144, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 26, '_wp_page_template', 'page-contact.php'),
(146, 16, '_wp_page_template', 'page-vintage.php'),
(147, 47, '_edit_last', '1'),
(148, 47, '_edit_lock', '1576671395:1'),
(149, 16, '_edit_last', '1'),
(150, 16, 'table', 'Afficher le contenu'),
(151, 16, '_table', 'field_5df67a4ca5136'),
(152, 49, 'table', 'ceci s\'affiche'),
(153, 49, '_table', 'field_5df67a4ca5136'),
(156, 51, 'table', 'ceci s\'affiche\r\n\r\ndsdfdsfx\r\n\r\ndsdxsx'),
(157, 51, '_table', 'field_5df67a4ca5136'),
(158, 52, '_wp_attached_file', '2019/12/alexandra_gorn_JIUjvqe2ZHg_uns.png'),
(159, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:283;s:4:\"file\";s:42:\"2019/12/alexandra_gorn_JIUjvqe2ZHg_uns.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"alexandra_gorn_JIUjvqe2ZHg_uns-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"alexandra_gorn_JIUjvqe2ZHg_uns-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"alexandra_gorn_JIUjvqe2ZHg_uns-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 53, '_wp_attached_file', '2019/12/behzad_ghaffarian_nhWgZNV85LQ_@2x.png'),
(161, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1098;s:6:\"height\";i:774;s:4:\"file\";s:45:\"2019/12/behzad_ghaffarian_nhWgZNV85LQ_@2x.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"behzad_ghaffarian_nhWgZNV85LQ_@2x-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"behzad_ghaffarian_nhWgZNV85LQ_@2x-1024x722.png\";s:5:\"width\";i:1024;s:6:\"height\";i:722;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"behzad_ghaffarian_nhWgZNV85LQ_@2x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"behzad_ghaffarian_nhWgZNV85LQ_@2x-768x541.png\";s:5:\"width\";i:768;s:6:\"height\";i:541;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:45:\"behzad_ghaffarian_nhWgZNV85LQ_@2x-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:45:\"behzad_ghaffarian_nhWgZNV85LQ_@2x-600x423.png\";s:5:\"width\";i:600;s:6:\"height\";i:423;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"behzad_ghaffarian_nhWgZNV85LQ_@2x-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:45:\"behzad_ghaffarian_nhWgZNV85LQ_@2x-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:45:\"behzad_ghaffarian_nhWgZNV85LQ_@2x-600x423.png\";s:5:\"width\";i:600;s:6:\"height\";i:423;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"behzad_ghaffarian_nhWgZNV85LQ_@2x-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 54, '_wp_attached_file', '2019/12/Capture.png'),
(163, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:467;s:6:\"height\";i:453;s:4:\"file\";s:19:\"2019/12/Capture.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Capture-300x291.png\";s:5:\"width\";i:300;s:6:\"height\";i:291;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Capture-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"Capture-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"Capture-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"Capture-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"Capture-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 55, '_wp_attached_file', '2019/12/dane_deaner_qRfMB_IOQjE_unspla.png'),
(165, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:549;s:6:\"height\";i:387;s:4:\"file\";s:42:\"2019/12/dane_deaner_qRfMB_IOQjE_unspla.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"dane_deaner_qRfMB_IOQjE_unspla-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"dane_deaner_qRfMB_IOQjE_unspla-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"dane_deaner_qRfMB_IOQjE_unspla-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"dane_deaner_qRfMB_IOQjE_unspla-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:42:\"dane_deaner_qRfMB_IOQjE_unspla-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"dane_deaner_qRfMB_IOQjE_unspla-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(166, 56, '_wp_attached_file', '2019/12/davide_cantelli_ajisKc2uuFk_un.png'),
(167, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:549;s:6:\"height\";i:387;s:4:\"file\";s:42:\"2019/12/davide_cantelli_ajisKc2uuFk_un.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"davide_cantelli_ajisKc2uuFk_un-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"davide_cantelli_ajisKc2uuFk_un-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"davide_cantelli_ajisKc2uuFk_un-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"davide_cantelli_ajisKc2uuFk_un-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:42:\"davide_cantelli_ajisKc2uuFk_un-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"davide_cantelli_ajisKc2uuFk_un-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(168, 57, '_wp_attached_file', '2019/12/forme3.png'),
(169, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:137;s:6:\"height\";i:137;s:4:\"file\";s:18:\"2019/12/forme3.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"forme3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"forme3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 58, '_wp_attached_file', '2019/12/hal_gatewood_Vfml26Iy4mI_unspl.png'),
(171, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:549;s:6:\"height\";i:387;s:4:\"file\";s:42:\"2019/12/hal_gatewood_Vfml26Iy4mI_unspl.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"hal_gatewood_Vfml26Iy4mI_unspl-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"hal_gatewood_Vfml26Iy4mI_unspl-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"hal_gatewood_Vfml26Iy4mI_unspl-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"hal_gatewood_Vfml26Iy4mI_unspl-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:42:\"hal_gatewood_Vfml26Iy4mI_unspl-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"hal_gatewood_Vfml26Iy4mI_unspl-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 59, '_wp_attached_file', '2019/12/hutomo_abrianto_X5BWooeO4Cw_un.png'),
(173, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1917;s:6:\"height\";i:692;s:4:\"file\";s:42:\"2019/12/hutomo_abrianto_X5BWooeO4Cw_un.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"hutomo_abrianto_X5BWooeO4Cw_un-300x108.png\";s:5:\"width\";i:300;s:6:\"height\";i:108;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"hutomo_abrianto_X5BWooeO4Cw_un-1024x370.png\";s:5:\"width\";i:1024;s:6:\"height\";i:370;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"hutomo_abrianto_X5BWooeO4Cw_un-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"hutomo_abrianto_X5BWooeO4Cw_un-768x277.png\";s:5:\"width\";i:768;s:6:\"height\";i:277;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:43:\"hutomo_abrianto_X5BWooeO4Cw_un-1536x554.png\";s:5:\"width\";i:1536;s:6:\"height\";i:554;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"hutomo_abrianto_X5BWooeO4Cw_un-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:42:\"hutomo_abrianto_X5BWooeO4Cw_un-600x217.png\";s:5:\"width\";i:600;s:6:\"height\";i:217;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"hutomo_abrianto_X5BWooeO4Cw_un-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:42:\"hutomo_abrianto_X5BWooeO4Cw_un-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:42:\"hutomo_abrianto_X5BWooeO4Cw_un-600x217.png\";s:5:\"width\";i:600;s:6:\"height\";i:217;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"hutomo_abrianto_X5BWooeO4Cw_un-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 60, '_wp_attached_file', '2019/12/jean_philippe_delberghe_feijc_.png'),
(175, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:283;s:4:\"file\";s:42:\"2019/12/jean_philippe_delberghe_feijc_.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"jean_philippe_delberghe_feijc_-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"jean_philippe_delberghe_feijc_-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"jean_philippe_delberghe_feijc_-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(176, 61, '_wp_attached_file', '2019/12/Logo_blanc.png'),
(177, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:162;s:6:\"height\";i:123;s:4:\"file\";s:22:\"2019/12/Logo_blanc.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"Logo_blanc-150x123.png\";s:5:\"width\";i:150;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"Logo_blanc-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"Logo_blanc-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(178, 62, '_wp_attached_file', '2019/12/mitch_moondae_zXFtsdi9dIc_unsp.png'),
(179, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:549;s:6:\"height\";i:387;s:4:\"file\";s:42:\"2019/12/mitch_moondae_zXFtsdi9dIc_unsp.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"mitch_moondae_zXFtsdi9dIc_unsp-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"mitch_moondae_zXFtsdi9dIc_unsp-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"mitch_moondae_zXFtsdi9dIc_unsp-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"mitch_moondae_zXFtsdi9dIc_unsp-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:42:\"mitch_moondae_zXFtsdi9dIc_unsp-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"mitch_moondae_zXFtsdi9dIc_unsp-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(180, 63, '_wp_attached_file', '2019/12/phillip_goldsberry_fZuleEfeA1Q.png'),
(181, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:283;s:4:\"file\";s:42:\"2019/12/phillip_goldsberry_fZuleEfeA1Q.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"phillip_goldsberry_fZuleEfeA1Q-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"phillip_goldsberry_fZuleEfeA1Q-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"phillip_goldsberry_fZuleEfeA1Q-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(182, 64, '_wp_attached_file', '2019/12/robert_anasch_wj2UvbOtRbY_unsp.png'),
(183, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:549;s:6:\"height\";i:387;s:4:\"file\";s:42:\"2019/12/robert_anasch_wj2UvbOtRbY_unsp.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"robert_anasch_wj2UvbOtRbY_unsp-300x211.png\";s:5:\"width\";i:300;s:6:\"height\";i:211;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"robert_anasch_wj2UvbOtRbY_unsp-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:42:\"robert_anasch_wj2UvbOtRbY_unsp-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"robert_anasch_wj2UvbOtRbY_unsp-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:42:\"robert_anasch_wj2UvbOtRbY_unsp-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"robert_anasch_wj2UvbOtRbY_unsp-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(184, 65, '_wp_attached_file', '2019/12/ruslan_bardash_4kTbAMRAHtQ_uns.png'),
(185, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:283;s:4:\"file\";s:42:\"2019/12/ruslan_bardash_4kTbAMRAHtQ_uns.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"ruslan_bardash_4kTbAMRAHtQ_uns-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"ruslan_bardash_4kTbAMRAHtQ_uns-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"ruslan_bardash_4kTbAMRAHtQ_uns-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(186, 66, '_wp_attached_file', '2019/12/tache-e1576677041314.png'),
(187, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:957;s:6:\"height\";i:772;s:4:\"file\";s:32:\"2019/12/tache-e1576677041314.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"tache-e1576677041314-300x242.png\";s:5:\"width\";i:300;s:6:\"height\";i:242;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"tache-e1576677041314-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"tache-e1576677041314-768x620.png\";s:5:\"width\";i:768;s:6:\"height\";i:620;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:4:{s:4:\"file\";s:32:\"tache-e1576677041314-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"tache-e1576677041314-600x484.png\";s:5:\"width\";i:600;s:6:\"height\";i:484;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"tache-e1576677041314-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"tache-e1576677041314-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"tache-e1576677041314-600x484.png\";s:5:\"width\";i:600;s:6:\"height\";i:484;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"tache-e1576677041314-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 67, '_wp_attached_file', '2019/12/toa_heftiba_FV3GConVSss_unspla.png'),
(189, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:283;s:4:\"file\";s:42:\"2019/12/toa_heftiba_FV3GConVSss_unspla.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"toa_heftiba_FV3GConVSss_unspla-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"toa_heftiba_FV3GConVSss_unspla-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"toa_heftiba_FV3GConVSss_unspla-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(190, 70, 'table', '67'),
(191, 70, '_table', 'field_5df6860a06a89'),
(192, 71, '_edit_lock', '1578562715:1'),
(193, 73, '_edit_last', '1'),
(194, 73, '_edit_lock', '1578562713:1'),
(195, 71, '_wp_page_template', 'index.php'),
(196, 71, '_edit_last', '1'),
(197, 71, 'slider', ''),
(198, 71, '_slider', 'field_5df6abbcdefd6'),
(199, 71, 'best', '65'),
(200, 71, '_best', 'field_5df6abdcdefd7'),
(201, 71, 'best_title', ''),
(202, 71, '_best_title', 'field_5df6ac03defd8'),
(203, 71, 'best_desc', ''),
(204, 71, '_best_desc', 'field_5df6ac22defd9'),
(205, 71, 'story', '66'),
(206, 71, '_story', 'field_5df6ac62defda'),
(207, 71, 'story_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis turpis sapien. Vestibulum mollis                     orci cursus nisl pulvinar tempus. Quisque leo orci, scelerisque ut felis ut, viverra euismod augue.                     Ut et urna tincidunt, lobortis odio eget, facilisis lorem. Praesent facilisis leo vel lectus tempor,                     eu tempor odio ornare. Aenean facilisis est et felis eleifend mattis. Nam vulputate blandit lacus,                     et mattis nibh volutpat nec. Nulla ac massa iaculis, fringilla dolor sit amet, euismod justo. Class                     aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam volutpat                     nulla ante, vel pulvinar lorem ultricies in. \r\n\r\n\r\nQuisque eget nulla a enim condimentum tempor a ac arcu.                     In hac habitasse platea dictumst.                      Sed cursus sit amet leo id laoreet. Proin vel feugiat libero. Praesent a purus sed massa facilisis                     efficitur. Maecenas laoreet lobortis sem sed consequat. Integer rutrum risus ac nibh ultrices, ut                     maximus nulla finibus. Sed viverra eleifend odio mattis rhoncus. Sed vehicula vestibulum                     euismod.'),
(208, 71, '_story_desc', 'field_5df6ac78defdb'),
(209, 71, 'categories', ''),
(210, 71, '_categories', 'field_5df6aca1defdc'),
(211, 71, 'categories_title', ''),
(212, 71, '_categories_title', 'field_5df6acb2defdd'),
(213, 71, 'categories_desc', ''),
(214, 71, '_categories_desc', 'field_5df6acc7defde'),
(215, 84, 'slider', '65'),
(216, 84, '_slider', 'field_5df6abbcdefd6'),
(217, 84, 'best', ''),
(218, 84, '_best', 'field_5df6abdcdefd7'),
(219, 84, 'best_title', ''),
(220, 84, '_best_title', 'field_5df6ac03defd8'),
(221, 84, 'best_desc', ''),
(222, 84, '_best_desc', 'field_5df6ac22defd9'),
(223, 84, 'story', ''),
(224, 84, '_story', 'field_5df6ac62defda'),
(225, 84, 'story_desc', ''),
(226, 84, '_story_desc', 'field_5df6ac78defdb'),
(227, 84, 'categories', ''),
(228, 84, '_categories', 'field_5df6aca1defdc'),
(229, 84, 'categories_title', ''),
(230, 84, '_categories_title', 'field_5df6acb2defdd'),
(231, 84, 'categories_desc', ''),
(232, 84, '_categories_desc', 'field_5df6acc7defde'),
(233, 85, 'slider', ''),
(234, 85, '_slider', 'field_5df6abbcdefd6'),
(235, 85, 'best', '65'),
(236, 85, '_best', 'field_5df6abdcdefd7'),
(237, 85, 'best_title', ''),
(238, 85, '_best_title', 'field_5df6ac03defd8'),
(239, 85, 'best_desc', ''),
(240, 85, '_best_desc', 'field_5df6ac22defd9'),
(241, 85, 'story', ''),
(242, 85, '_story', 'field_5df6ac62defda'),
(243, 85, 'story_desc', ''),
(244, 85, '_story_desc', 'field_5df6ac78defdb'),
(245, 85, 'categories', ''),
(246, 85, '_categories', 'field_5df6aca1defdc'),
(247, 85, 'categories_title', ''),
(248, 85, '_categories_title', 'field_5df6acb2defdd'),
(249, 85, 'categories_desc', ''),
(250, 85, '_categories_desc', 'field_5df6acc7defde'),
(251, 86, 'slider', ''),
(252, 86, '_slider', 'field_5df6abbcdefd6'),
(253, 86, 'best', '65'),
(254, 86, '_best', 'field_5df6abdcdefd7'),
(255, 86, 'best_title', ''),
(256, 86, '_best_title', 'field_5df6ac03defd8'),
(257, 86, 'best_desc', ''),
(258, 86, '_best_desc', 'field_5df6ac22defd9'),
(259, 86, 'story', ''),
(260, 86, '_story', 'field_5df6ac62defda'),
(261, 86, 'story_desc', ''),
(262, 86, '_story_desc', 'field_5df6ac78defdb'),
(263, 86, 'categories', ''),
(264, 86, '_categories', 'field_5df6aca1defdc'),
(265, 86, 'categories_title', ''),
(266, 86, '_categories_title', 'field_5df6acb2defdd'),
(267, 86, 'categories_desc', ''),
(268, 86, '_categories_desc', 'field_5df6acc7defde'),
(269, 87, 'table', '67'),
(270, 87, '_table', 'field_5df6860a06a89'),
(271, 89, 'table', '67'),
(272, 89, '_table', 'field_5df6860a06a89'),
(273, 91, 'table', '67'),
(274, 91, '_table', 'field_5df67a4ca5136'),
(275, 16, 'table_img', '67'),
(276, 16, '_table_img', 'field_5df6860a06a89'),
(277, 91, 'table_img', '67'),
(278, 91, '_table_img', 'field_5df6860a06a89'),
(279, 92, 'table', 'Afficher le contenu'),
(280, 92, '_table', 'field_5df67a4ca5136'),
(281, 92, 'table_img', '67'),
(282, 92, '_table_img', 'field_5df6860a06a89'),
(283, 13, '_wp_page_template', 'page-realisation.php'),
(284, 10, '_wp_page_template', 'page-creation.php'),
(285, 93, '_edit_last', '1'),
(286, 93, '_edit_lock', '1576686300:1'),
(287, 94, '_edit_last', '1'),
(288, 94, '_edit_lock', '1576679647:1'),
(289, 13, '_edit_last', '1'),
(290, 13, 'galerie', '62'),
(291, 13, '_galerie', 'field_5df88ffe448d0'),
(292, 97, 'galerie', '64'),
(293, 97, '_galerie', 'field_5df88ce328c10'),
(294, 99, 'galerie', '64'),
(295, 99, '_galerie', 'field_5df88ce328c10'),
(298, 103, 'galerie', '60'),
(299, 103, '_galerie', 'field_5df88ffe448d0'),
(300, 104, 'galerie', '62'),
(301, 104, '_galerie', 'field_5df88ffe448d0'),
(302, 30, '_wp_trash_meta_status', 'publish'),
(303, 30, '_wp_trash_meta_time', '1576571326'),
(304, 30, '_wp_desired_post_slug', 'cgv'),
(305, 28, '_wp_trash_meta_status', 'publish'),
(306, 28, '_wp_trash_meta_time', '1576571332'),
(307, 28, '_wp_desired_post_slug', 'mentions-legales'),
(308, 2, '_wp_trash_meta_status', 'publish'),
(309, 2, '_wp_trash_meta_time', '1576571335'),
(310, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(311, 106, '_edit_lock', '1576571238:1'),
(312, 106, '_wp_page_template', 'page-produit-single.php'),
(313, 108, '_edit_lock', '1576571259:1'),
(314, 108, '_wp_page_template', 'page-pannier.php'),
(315, 110, '_edit_lock', '1578562739:1'),
(316, 110, '_wp_page_template', 'page-client-co.php'),
(317, 112, '_edit_lock', '1578562802:1'),
(318, 112, '_wp_page_template', 'page-client-compte.php'),
(319, 114, '_edit_lock', '1576571347:1'),
(320, 114, '_wp_page_template', 'page-blog.php'),
(321, 116, '_edit_lock', '1576571366:1'),
(322, 116, '_wp_page_template', 'page-article-single.php'),
(323, 118, '_edit_last', '1'),
(324, 118, '_edit_lock', '1578562382:1'),
(325, 119, '_edit_last', '1'),
(326, 119, '_edit_lock', '1576571432:1'),
(327, 120, '_edit_last', '1'),
(328, 120, '_edit_lock', '1576571453:1'),
(329, 121, '_edit_last', '1'),
(330, 121, '_edit_lock', '1576571504:1'),
(331, 123, '_edit_last', '1'),
(332, 123, '_edit_lock', '1576571534:1'),
(333, 124, '_edit_last', '1'),
(334, 124, '_edit_lock', '1576571560:1'),
(335, 125, '_edit_last', '1'),
(336, 125, '_edit_lock', '1576571578:1'),
(337, 126, '_edit_last', '1'),
(338, 126, '_edit_lock', '1578562710:1'),
(343, 16, 'img', '67'),
(344, 16, '_img', 'field_5df6860a06a89'),
(351, 13, 'img', '65'),
(352, 13, '_img', 'field_5df88ce328c10'),
(353, 104, 'img', ''),
(354, 104, '_img', 'field_5df88ce328c10'),
(355, 130, 'galerie', '62'),
(356, 130, '_galerie', 'field_5df88ffe448d0'),
(357, 130, 'img', '65'),
(358, 130, '_img', 'field_5df88ce328c10'),
(359, 132, 'galerie', '62'),
(360, 132, '_galerie', 'field_5df88ffe448d0'),
(361, 132, 'img', '65'),
(362, 132, '_img', 'field_5df88ce328c10'),
(371, 71, 'slider_1', '59'),
(372, 71, '_slider_1', 'field_5df6abbcdefd6'),
(373, 71, 'slider_2', '58'),
(374, 71, '_slider_2', 'field_5dfa1a5ca8876'),
(375, 71, 'slider_3', '59'),
(376, 71, '_slider_3', 'field_5dfa1a5da8877'),
(377, 137, 'slider', ''),
(378, 137, '_slider', 'field_5df6abbcdefd6'),
(379, 137, 'best', '65'),
(380, 137, '_best', 'field_5df6abdcdefd7'),
(381, 137, 'best_title', ''),
(382, 137, '_best_title', 'field_5df6ac03defd8'),
(383, 137, 'best_desc', ''),
(384, 137, '_best_desc', 'field_5df6ac22defd9'),
(385, 137, 'story', ''),
(386, 137, '_story', 'field_5df6ac62defda'),
(387, 137, 'story_desc', ''),
(388, 137, '_story_desc', 'field_5df6ac78defdb'),
(389, 137, 'categories', ''),
(390, 137, '_categories', 'field_5df6aca1defdc'),
(391, 137, 'categories_title', ''),
(392, 137, '_categories_title', 'field_5df6acb2defdd'),
(393, 137, 'categories_desc', ''),
(394, 137, '_categories_desc', 'field_5df6acc7defde'),
(395, 137, 'slider_1', '59'),
(396, 137, '_slider_1', 'field_5df6abbcdefd6'),
(397, 137, 'slider_2', '59'),
(398, 137, '_slider_2', 'field_5dfa1a5ca8876'),
(399, 137, 'slider_3', '59'),
(400, 137, '_slider_3', 'field_5dfa1a5da8877'),
(401, 71, 'img', '59'),
(402, 71, '_img', 'field_5df6abbcdefd6'),
(429, 139, 'slider', ''),
(430, 139, '_slider', 'field_5df6abbcdefd6'),
(431, 139, 'best', '65'),
(432, 139, '_best', 'field_5df6abdcdefd7'),
(433, 139, 'best_title', ''),
(434, 139, '_best_title', 'field_5df6ac03defd8'),
(435, 139, 'best_desc', ''),
(436, 139, '_best_desc', 'field_5df6ac22defd9'),
(437, 139, 'story', ''),
(438, 139, '_story', 'field_5df6ac62defda'),
(439, 139, 'story_desc', ''),
(440, 139, '_story_desc', 'field_5df6ac78defdb'),
(441, 139, 'categories', ''),
(442, 139, '_categories', 'field_5df6aca1defdc'),
(443, 139, 'categories_title', ''),
(444, 139, '_categories_title', 'field_5df6acb2defdd'),
(445, 139, 'categories_desc', ''),
(446, 139, '_categories_desc', 'field_5df6acc7defde'),
(447, 139, 'slider_1', '59'),
(448, 139, '_slider_1', 'field_5df6abbcdefd6'),
(449, 139, 'slider_2', '58'),
(450, 139, '_slider_2', 'field_5dfa1a5ca8876'),
(451, 139, 'slider_3', '59'),
(452, 139, '_slider_3', 'field_5dfa1a5da8877'),
(453, 139, 'img', '59'),
(454, 139, '_img', 'field_5df6abbcdefd6'),
(455, 140, 'slider', ''),
(456, 140, '_slider', 'field_5df6abbcdefd6'),
(457, 140, 'best', '65'),
(458, 140, '_best', 'field_5df6abdcdefd7'),
(459, 140, 'best_title', ''),
(460, 140, '_best_title', 'field_5df6ac03defd8'),
(461, 140, 'best_desc', ''),
(462, 140, '_best_desc', 'field_5df6ac22defd9'),
(463, 140, 'story', ''),
(464, 140, '_story', 'field_5df6ac62defda'),
(465, 140, 'story_desc', ''),
(466, 140, '_story_desc', 'field_5df6ac78defdb'),
(467, 140, 'categories', ''),
(468, 140, '_categories', 'field_5df6aca1defdc'),
(469, 140, 'categories_title', ''),
(470, 140, '_categories_title', 'field_5df6acb2defdd'),
(471, 140, 'categories_desc', ''),
(472, 140, '_categories_desc', 'field_5df6acc7defde'),
(473, 140, 'slider_1', '59'),
(474, 140, '_slider_1', 'field_5df6abbcdefd6'),
(475, 140, 'slider_2', '58'),
(476, 140, '_slider_2', 'field_5dfa1a5ca8876'),
(477, 140, 'slider_3', '59'),
(478, 140, '_slider_3', 'field_5dfa1a5da8877'),
(479, 140, 'img', '59'),
(480, 140, '_img', 'field_5df6abbcdefd6'),
(481, 141, 'slider', ''),
(482, 141, '_slider', 'field_5df6abbcdefd6'),
(483, 141, 'best', '65'),
(484, 141, '_best', 'field_5df6abdcdefd7'),
(485, 141, 'best_title', ''),
(486, 141, '_best_title', 'field_5df6ac03defd8'),
(487, 141, 'best_desc', ''),
(488, 141, '_best_desc', 'field_5df6ac22defd9'),
(489, 141, 'story', ''),
(490, 141, '_story', 'field_5df6ac62defda'),
(491, 141, 'story_desc', ''),
(492, 141, '_story_desc', 'field_5df6ac78defdb'),
(493, 141, 'categories', ''),
(494, 141, '_categories', 'field_5df6aca1defdc'),
(495, 141, 'categories_title', ''),
(496, 141, '_categories_title', 'field_5df6acb2defdd'),
(497, 141, 'categories_desc', ''),
(498, 141, '_categories_desc', 'field_5df6acc7defde'),
(499, 141, 'slider_1', '59'),
(500, 141, '_slider_1', 'field_5df6abbcdefd6'),
(501, 141, 'slider_2', '58'),
(502, 141, '_slider_2', 'field_5dfa1a5ca8876'),
(503, 141, 'slider_3', '59'),
(504, 141, '_slider_3', 'field_5dfa1a5da8877'),
(505, 141, 'img', '59'),
(506, 141, '_img', 'field_5df6abbcdefd6'),
(533, 144, '_edit_last', '1'),
(534, 144, '_edit_lock', '1576673272:1'),
(535, 144, '_wp_trash_meta_status', 'publish'),
(536, 144, '_wp_trash_meta_time', '1576673422'),
(537, 144, '_wp_desired_post_slug', 'group_5dfa203d1e3cb'),
(538, 145, '_wp_trash_meta_status', 'publish'),
(539, 145, '_wp_trash_meta_time', '1576673422'),
(540, 145, '_wp_desired_post_slug', 'field_5dfa2041bc7af'),
(541, 146, '_wp_trash_meta_status', 'publish'),
(542, 146, '_wp_trash_meta_time', '1576673422'),
(543, 146, '_wp_desired_post_slug', 'field_5dfa20509952e'),
(544, 71, 'best_1', '62'),
(545, 71, '_best_1', 'field_5df6abdcdefd7'),
(546, 71, 'best_2', '58'),
(547, 71, '_best_2', 'field_5dfa20af2a168'),
(548, 71, 'best_3', '56'),
(549, 71, '_best_3', 'field_5dfa20b22a169'),
(550, 149, 'slider', ''),
(551, 149, '_slider', 'field_5df6abbcdefd6'),
(552, 149, 'best', '65'),
(553, 149, '_best', 'field_5df6abdcdefd7'),
(554, 149, 'best_title', ''),
(555, 149, '_best_title', 'field_5df6ac03defd8'),
(556, 149, 'best_desc', ''),
(557, 149, '_best_desc', 'field_5df6ac22defd9'),
(558, 149, 'story', ''),
(559, 149, '_story', 'field_5df6ac62defda'),
(560, 149, 'story_desc', ''),
(561, 149, '_story_desc', 'field_5df6ac78defdb'),
(562, 149, 'categories', ''),
(563, 149, '_categories', 'field_5df6aca1defdc'),
(564, 149, 'categories_title', ''),
(565, 149, '_categories_title', 'field_5df6acb2defdd'),
(566, 149, 'categories_desc', ''),
(567, 149, '_categories_desc', 'field_5df6acc7defde'),
(568, 149, 'slider_1', '59'),
(569, 149, '_slider_1', 'field_5df6abbcdefd6'),
(570, 149, 'slider_2', '58'),
(571, 149, '_slider_2', 'field_5dfa1a5ca8876'),
(572, 149, 'slider_3', '59'),
(573, 149, '_slider_3', 'field_5dfa1a5da8877'),
(574, 149, 'img', '59'),
(575, 149, '_img', 'field_5df6abbcdefd6'),
(576, 149, 'best_1', '62'),
(577, 149, '_best_1', 'field_5df6abdcdefd7'),
(578, 149, 'best_2', '58'),
(579, 149, '_best_2', 'field_5dfa20af2a168'),
(580, 149, 'best_3', ''),
(581, 149, '_best_3', 'field_5dfa20b22a169'),
(582, 150, 'slider', ''),
(583, 150, '_slider', 'field_5df6abbcdefd6'),
(584, 150, 'best', '65'),
(585, 150, '_best', 'field_5df6abdcdefd7'),
(586, 150, 'best_title', '');
INSERT INTO `kr_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(587, 150, '_best_title', 'field_5df6ac03defd8'),
(588, 150, 'best_desc', ''),
(589, 150, '_best_desc', 'field_5df6ac22defd9'),
(590, 150, 'story', ''),
(591, 150, '_story', 'field_5df6ac62defda'),
(592, 150, 'story_desc', ''),
(593, 150, '_story_desc', 'field_5df6ac78defdb'),
(594, 150, 'categories', ''),
(595, 150, '_categories', 'field_5df6aca1defdc'),
(596, 150, 'categories_title', ''),
(597, 150, '_categories_title', 'field_5df6acb2defdd'),
(598, 150, 'categories_desc', ''),
(599, 150, '_categories_desc', 'field_5df6acc7defde'),
(600, 150, 'slider_1', '59'),
(601, 150, '_slider_1', 'field_5df6abbcdefd6'),
(602, 150, 'slider_2', '58'),
(603, 150, '_slider_2', 'field_5dfa1a5ca8876'),
(604, 150, 'slider_3', '59'),
(605, 150, '_slider_3', 'field_5dfa1a5da8877'),
(606, 150, 'img', '59'),
(607, 150, '_img', 'field_5df6abbcdefd6'),
(608, 150, 'best_1', '62'),
(609, 150, '_best_1', 'field_5df6abdcdefd7'),
(610, 150, 'best_2', '58'),
(611, 150, '_best_2', 'field_5dfa20af2a168'),
(612, 150, 'best_3', '62'),
(613, 150, '_best_3', 'field_5dfa20b22a169'),
(614, 71, 'best_title_1', 'Article en vedette 1'),
(615, 71, '_best_title_1', 'field_5df6ac03defd8'),
(616, 71, 'best_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(617, 71, '_best_desc_1', 'field_5df6ac22defd9'),
(618, 71, 'best_title_2', 'Article en vedette 2'),
(619, 71, '_best_title_2', 'field_5dfa246dfa453'),
(620, 71, 'best_desc_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(621, 71, '_best_desc_2', 'field_5dfa2491fa454'),
(622, 71, 'best_title_3', 'Article en vedette 1'),
(623, 71, '_best_title_3', 'field_5dfa246cfa452'),
(624, 71, 'best_desc_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(625, 71, '_best_desc_3', 'field_5dfa2493fa455'),
(626, 155, 'slider', ''),
(627, 155, '_slider', 'field_5df6abbcdefd6'),
(628, 155, 'best', '65'),
(629, 155, '_best', 'field_5df6abdcdefd7'),
(630, 155, 'best_title', ''),
(631, 155, '_best_title', 'field_5df6ac03defd8'),
(632, 155, 'best_desc', ''),
(633, 155, '_best_desc', 'field_5df6ac22defd9'),
(634, 155, 'story', ''),
(635, 155, '_story', 'field_5df6ac62defda'),
(636, 155, 'story_desc', ''),
(637, 155, '_story_desc', 'field_5df6ac78defdb'),
(638, 155, 'categories', ''),
(639, 155, '_categories', 'field_5df6aca1defdc'),
(640, 155, 'categories_title', ''),
(641, 155, '_categories_title', 'field_5df6acb2defdd'),
(642, 155, 'categories_desc', ''),
(643, 155, '_categories_desc', 'field_5df6acc7defde'),
(644, 155, 'slider_1', '59'),
(645, 155, '_slider_1', 'field_5df6abbcdefd6'),
(646, 155, 'slider_2', '58'),
(647, 155, '_slider_2', 'field_5dfa1a5ca8876'),
(648, 155, 'slider_3', '59'),
(649, 155, '_slider_3', 'field_5dfa1a5da8877'),
(650, 155, 'img', '59'),
(651, 155, '_img', 'field_5df6abbcdefd6'),
(652, 155, 'best_1', '62'),
(653, 155, '_best_1', 'field_5df6abdcdefd7'),
(654, 155, 'best_2', '58'),
(655, 155, '_best_2', 'field_5dfa20af2a168'),
(656, 155, 'best_3', '62'),
(657, 155, '_best_3', 'field_5dfa20b22a169'),
(658, 155, 'best_title_1', 'Article en vedette 1'),
(659, 155, '_best_title_1', 'field_5df6ac03defd8'),
(660, 155, 'best_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(661, 155, '_best_desc_1', 'field_5df6ac22defd9'),
(662, 155, 'best_title_2', 'Article en vedette 2'),
(663, 155, '_best_title_2', 'field_5dfa246dfa453'),
(664, 155, 'best_desc_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(665, 155, '_best_desc_2', 'field_5dfa2491fa454'),
(666, 155, 'best_title_3', 'Article en vedette 1'),
(667, 155, '_best_title_3', 'field_5dfa246cfa452'),
(668, 155, 'best_desc_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(669, 155, '_best_desc_3', 'field_5dfa2493fa455'),
(670, 71, 'new_1', '63'),
(671, 71, '_new_1', 'field_5dfa278e86a4a'),
(672, 71, 'new_2', '52'),
(673, 71, '_new_2', 'field_5dfa27b786a4b'),
(674, 71, 'new_3', '67'),
(675, 71, '_new_3', 'field_5dfa27bd86a4c'),
(676, 71, 'new_4', '60'),
(677, 71, '_new_4', 'field_5dfa27c086a4d'),
(678, 71, 'new_5', '65'),
(679, 71, '_new_5', 'field_5dfa27c286a4e'),
(680, 162, 'slider', ''),
(681, 162, '_slider', 'field_5df6abbcdefd6'),
(682, 162, 'best', '65'),
(683, 162, '_best', 'field_5df6abdcdefd7'),
(684, 162, 'best_title', ''),
(685, 162, '_best_title', 'field_5df6ac03defd8'),
(686, 162, 'best_desc', ''),
(687, 162, '_best_desc', 'field_5df6ac22defd9'),
(688, 162, 'story', ''),
(689, 162, '_story', 'field_5df6ac62defda'),
(690, 162, 'story_desc', ''),
(691, 162, '_story_desc', 'field_5df6ac78defdb'),
(692, 162, 'categories', ''),
(693, 162, '_categories', 'field_5df6aca1defdc'),
(694, 162, 'categories_title', ''),
(695, 162, '_categories_title', 'field_5df6acb2defdd'),
(696, 162, 'categories_desc', ''),
(697, 162, '_categories_desc', 'field_5df6acc7defde'),
(698, 162, 'slider_1', '59'),
(699, 162, '_slider_1', 'field_5df6abbcdefd6'),
(700, 162, 'slider_2', '58'),
(701, 162, '_slider_2', 'field_5dfa1a5ca8876'),
(702, 162, 'slider_3', '59'),
(703, 162, '_slider_3', 'field_5dfa1a5da8877'),
(704, 162, 'img', '59'),
(705, 162, '_img', 'field_5df6abbcdefd6'),
(706, 162, 'best_1', '62'),
(707, 162, '_best_1', 'field_5df6abdcdefd7'),
(708, 162, 'best_2', '58'),
(709, 162, '_best_2', 'field_5dfa20af2a168'),
(710, 162, 'best_3', '62'),
(711, 162, '_best_3', 'field_5dfa20b22a169'),
(712, 162, 'best_title_1', 'Article en vedette 1'),
(713, 162, '_best_title_1', 'field_5df6ac03defd8'),
(714, 162, 'best_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(715, 162, '_best_desc_1', 'field_5df6ac22defd9'),
(716, 162, 'best_title_2', 'Article en vedette 2'),
(717, 162, '_best_title_2', 'field_5dfa246dfa453'),
(718, 162, 'best_desc_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(719, 162, '_best_desc_2', 'field_5dfa2491fa454'),
(720, 162, 'best_title_3', 'Article en vedette 1'),
(721, 162, '_best_title_3', 'field_5dfa246cfa452'),
(722, 162, 'best_desc_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(723, 162, '_best_desc_3', 'field_5dfa2493fa455'),
(724, 162, 'new_1', '63'),
(725, 162, '_new_1', 'field_5dfa278e86a4a'),
(726, 162, 'new_2', '52'),
(727, 162, '_new_2', 'field_5dfa27b786a4b'),
(728, 162, 'new_3', '67'),
(729, 162, '_new_3', 'field_5dfa27bd86a4c'),
(730, 162, 'new_4', '60'),
(731, 162, '_new_4', 'field_5dfa27c086a4d'),
(732, 162, 'new_5', '65'),
(733, 162, '_new_5', 'field_5dfa27c286a4e'),
(734, 163, 'slider', ''),
(735, 163, '_slider', 'field_5df6abbcdefd6'),
(736, 163, 'best', '65'),
(737, 163, '_best', 'field_5df6abdcdefd7'),
(738, 163, 'best_title', ''),
(739, 163, '_best_title', 'field_5df6ac03defd8'),
(740, 163, 'best_desc', ''),
(741, 163, '_best_desc', 'field_5df6ac22defd9'),
(742, 163, 'story', '66'),
(743, 163, '_story', 'field_5df6ac62defda'),
(744, 163, 'story_desc', ''),
(745, 163, '_story_desc', 'field_5df6ac78defdb'),
(746, 163, 'categories', ''),
(747, 163, '_categories', 'field_5df6aca1defdc'),
(748, 163, 'categories_title', ''),
(749, 163, '_categories_title', 'field_5df6acb2defdd'),
(750, 163, 'categories_desc', ''),
(751, 163, '_categories_desc', 'field_5df6acc7defde'),
(752, 163, 'slider_1', '59'),
(753, 163, '_slider_1', 'field_5df6abbcdefd6'),
(754, 163, 'slider_2', '58'),
(755, 163, '_slider_2', 'field_5dfa1a5ca8876'),
(756, 163, 'slider_3', '59'),
(757, 163, '_slider_3', 'field_5dfa1a5da8877'),
(758, 163, 'img', '59'),
(759, 163, '_img', 'field_5df6abbcdefd6'),
(760, 163, 'best_1', '62'),
(761, 163, '_best_1', 'field_5df6abdcdefd7'),
(762, 163, 'best_2', '58'),
(763, 163, '_best_2', 'field_5dfa20af2a168'),
(764, 163, 'best_3', '62'),
(765, 163, '_best_3', 'field_5dfa20b22a169'),
(766, 163, 'best_title_1', 'Article en vedette 1'),
(767, 163, '_best_title_1', 'field_5df6ac03defd8'),
(768, 163, 'best_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(769, 163, '_best_desc_1', 'field_5df6ac22defd9'),
(770, 163, 'best_title_2', 'Article en vedette 2'),
(771, 163, '_best_title_2', 'field_5dfa246dfa453'),
(772, 163, 'best_desc_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(773, 163, '_best_desc_2', 'field_5dfa2491fa454'),
(774, 163, 'best_title_3', 'Article en vedette 1'),
(775, 163, '_best_title_3', 'field_5dfa246cfa452'),
(776, 163, 'best_desc_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(777, 163, '_best_desc_3', 'field_5dfa2493fa455'),
(778, 163, 'new_1', '63'),
(779, 163, '_new_1', 'field_5dfa278e86a4a'),
(780, 163, 'new_2', '52'),
(781, 163, '_new_2', 'field_5dfa27b786a4b'),
(782, 163, 'new_3', '67'),
(783, 163, '_new_3', 'field_5dfa27bd86a4c'),
(784, 163, 'new_4', '60'),
(785, 163, '_new_4', 'field_5dfa27c086a4d'),
(786, 163, 'new_5', '65'),
(787, 163, '_new_5', 'field_5dfa27c286a4e'),
(788, 164, 'slider', ''),
(789, 164, '_slider', 'field_5df6abbcdefd6'),
(790, 164, 'best', '65'),
(791, 164, '_best', 'field_5df6abdcdefd7'),
(792, 164, 'best_title', ''),
(793, 164, '_best_title', 'field_5df6ac03defd8'),
(794, 164, 'best_desc', ''),
(795, 164, '_best_desc', 'field_5df6ac22defd9'),
(796, 164, 'story', '66'),
(797, 164, '_story', 'field_5df6ac62defda'),
(798, 164, 'story_desc', ''),
(799, 164, '_story_desc', 'field_5df6ac78defdb'),
(800, 164, 'categories', ''),
(801, 164, '_categories', 'field_5df6aca1defdc'),
(802, 164, 'categories_title', ''),
(803, 164, '_categories_title', 'field_5df6acb2defdd'),
(804, 164, 'categories_desc', ''),
(805, 164, '_categories_desc', 'field_5df6acc7defde'),
(806, 164, 'slider_1', '59'),
(807, 164, '_slider_1', 'field_5df6abbcdefd6'),
(808, 164, 'slider_2', '58'),
(809, 164, '_slider_2', 'field_5dfa1a5ca8876'),
(810, 164, 'slider_3', '59'),
(811, 164, '_slider_3', 'field_5dfa1a5da8877'),
(812, 164, 'img', '59'),
(813, 164, '_img', 'field_5df6abbcdefd6'),
(814, 164, 'best_1', '62'),
(815, 164, '_best_1', 'field_5df6abdcdefd7'),
(816, 164, 'best_2', '58'),
(817, 164, '_best_2', 'field_5dfa20af2a168'),
(818, 164, 'best_3', '62'),
(819, 164, '_best_3', 'field_5dfa20b22a169'),
(820, 164, 'best_title_1', 'Article en vedette 1'),
(821, 164, '_best_title_1', 'field_5df6ac03defd8'),
(822, 164, 'best_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(823, 164, '_best_desc_1', 'field_5df6ac22defd9'),
(824, 164, 'best_title_2', 'Article en vedette 2'),
(825, 164, '_best_title_2', 'field_5dfa246dfa453'),
(826, 164, 'best_desc_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(827, 164, '_best_desc_2', 'field_5dfa2491fa454'),
(828, 164, 'best_title_3', 'Article en vedette 1'),
(829, 164, '_best_title_3', 'field_5dfa246cfa452'),
(830, 164, 'best_desc_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(831, 164, '_best_desc_3', 'field_5dfa2493fa455'),
(832, 164, 'new_1', '63'),
(833, 164, '_new_1', 'field_5dfa278e86a4a'),
(834, 164, 'new_2', '52'),
(835, 164, '_new_2', 'field_5dfa27b786a4b'),
(836, 164, 'new_3', '67'),
(837, 164, '_new_3', 'field_5dfa27bd86a4c'),
(838, 164, 'new_4', '60'),
(839, 164, '_new_4', 'field_5dfa27c086a4d'),
(840, 164, 'new_5', '65'),
(841, 164, '_new_5', 'field_5dfa27c286a4e'),
(842, 66, '_wp_attachment_backup_sizes', 'a:10:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:965;s:6:\"height\";i:785;s:4:\"file\";s:9:\"tache.png\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:17:\"tache-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:17:\"tache-300x244.png\";s:5:\"width\";i:300;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:17:\"tache-768x625.png\";s:5:\"width\";i:768;s:6:\"height\";i:625;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"woocommerce_thumbnail-orig\";a:5:{s:4:\"file\";s:17:\"tache-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:23:\"woocommerce_single-orig\";a:4:{s:4:\"file\";s:17:\"tache-600x488.png\";s:5:\"width\";i:600;s:6:\"height\";i:488;s:9:\"mime-type\";s:9:\"image/png\";}s:34:\"woocommerce_gallery_thumbnail-orig\";a:4:{s:4:\"file\";s:17:\"tache-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"shop_catalog-orig\";a:4:{s:4:\"file\";s:17:\"tache-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"shop_single-orig\";a:4:{s:4:\"file\";s:17:\"tache-600x488.png\";s:5:\"width\";i:600;s:6:\"height\";i:488;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"shop_thumbnail-orig\";a:4:{s:4:\"file\";s:17:\"tache-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(843, 71, 'story_her', '212'),
(844, 71, '_story_her', 'field_5dfa2f3910edc'),
(845, 166, 'slider', ''),
(846, 166, '_slider', 'field_5df6abbcdefd6'),
(847, 166, 'best', '65'),
(848, 166, '_best', 'field_5df6abdcdefd7'),
(849, 166, 'best_title', ''),
(850, 166, '_best_title', 'field_5df6ac03defd8'),
(851, 166, 'best_desc', ''),
(852, 166, '_best_desc', 'field_5df6ac22defd9'),
(853, 166, 'story', '66'),
(854, 166, '_story', 'field_5df6ac62defda'),
(855, 166, 'story_desc', ''),
(856, 166, '_story_desc', 'field_5df6ac78defdb'),
(857, 166, 'categories', ''),
(858, 166, '_categories', 'field_5df6aca1defdc'),
(859, 166, 'categories_title', ''),
(860, 166, '_categories_title', 'field_5df6acb2defdd'),
(861, 166, 'categories_desc', ''),
(862, 166, '_categories_desc', 'field_5df6acc7defde'),
(863, 166, 'slider_1', '59'),
(864, 166, '_slider_1', 'field_5df6abbcdefd6'),
(865, 166, 'slider_2', '58'),
(866, 166, '_slider_2', 'field_5dfa1a5ca8876'),
(867, 166, 'slider_3', '59'),
(868, 166, '_slider_3', 'field_5dfa1a5da8877'),
(869, 166, 'img', '59'),
(870, 166, '_img', 'field_5df6abbcdefd6'),
(871, 166, 'best_1', '62'),
(872, 166, '_best_1', 'field_5df6abdcdefd7'),
(873, 166, 'best_2', '58'),
(874, 166, '_best_2', 'field_5dfa20af2a168'),
(875, 166, 'best_3', '62'),
(876, 166, '_best_3', 'field_5dfa20b22a169'),
(877, 166, 'best_title_1', 'Article en vedette 1'),
(878, 166, '_best_title_1', 'field_5df6ac03defd8'),
(879, 166, 'best_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(880, 166, '_best_desc_1', 'field_5df6ac22defd9'),
(881, 166, 'best_title_2', 'Article en vedette 2'),
(882, 166, '_best_title_2', 'field_5dfa246dfa453'),
(883, 166, 'best_desc_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(884, 166, '_best_desc_2', 'field_5dfa2491fa454'),
(885, 166, 'best_title_3', 'Article en vedette 1'),
(886, 166, '_best_title_3', 'field_5dfa246cfa452'),
(887, 166, 'best_desc_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(888, 166, '_best_desc_3', 'field_5dfa2493fa455'),
(889, 166, 'new_1', '63'),
(890, 166, '_new_1', 'field_5dfa278e86a4a'),
(891, 166, 'new_2', '52'),
(892, 166, '_new_2', 'field_5dfa27b786a4b'),
(893, 166, 'new_3', '67'),
(894, 166, '_new_3', 'field_5dfa27bd86a4c'),
(895, 166, 'new_4', '60'),
(896, 166, '_new_4', 'field_5dfa27c086a4d'),
(897, 166, 'new_5', '65'),
(898, 166, '_new_5', 'field_5dfa27c286a4e'),
(899, 166, 'story_her', '54'),
(900, 166, '_story_her', 'field_5dfa2f3910edc'),
(901, 71, 'categorie_1', '64'),
(902, 71, '_categorie_1', 'field_5df6aca1defdc'),
(903, 71, 'categorie_2', '53'),
(904, 71, '_categorie_2', 'field_5dfa31653a253'),
(905, 71, 'categorie_3', '55'),
(906, 71, '_categorie_3', 'field_5dfa31673a254'),
(907, 169, 'slider', ''),
(908, 169, '_slider', 'field_5df6abbcdefd6'),
(909, 169, 'best', '65'),
(910, 169, '_best', 'field_5df6abdcdefd7'),
(911, 169, 'best_title', ''),
(912, 169, '_best_title', 'field_5df6ac03defd8'),
(913, 169, 'best_desc', ''),
(914, 169, '_best_desc', 'field_5df6ac22defd9'),
(915, 169, 'story', '66'),
(916, 169, '_story', 'field_5df6ac62defda'),
(917, 169, 'story_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis turpis sapien. Vestibulum mollis                     orci cursus nisl pulvinar tempus. Quisque leo orci, scelerisque ut felis ut, viverra euismod augue.                     Ut et urna tincidunt, lobortis odio eget, facilisis lorem. Praesent facilisis leo vel lectus tempor,                     eu tempor odio ornare. Aenean facilisis est et felis eleifend mattis. Nam vulputate blandit lacus,                     et mattis nibh volutpat nec. Nulla ac massa iaculis, fringilla dolor sit amet, euismod justo. Class                     aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam volutpat                     nulla ante, vel pulvinar lorem ultricies in. Quisque eget nulla a enim condimentum tempor a ac arcu.                     In hac habitasse platea dictumst.                      Sed cursus sit amet leo id laoreet. Proin vel feugiat libero. Praesent a purus sed massa facilisis                     efficitur. Maecenas laoreet lobortis sem sed consequat. Integer rutrum risus ac nibh ultrices, ut                     maximus nulla finibus. Sed viverra eleifend odio mattis rhoncus. Sed vehicula vestibulum                     euismod.'),
(918, 169, '_story_desc', 'field_5df6ac78defdb'),
(919, 169, 'categories', ''),
(920, 169, '_categories', 'field_5df6aca1defdc'),
(921, 169, 'categories_title', ''),
(922, 169, '_categories_title', 'field_5df6acb2defdd'),
(923, 169, 'categories_desc', ''),
(924, 169, '_categories_desc', 'field_5df6acc7defde'),
(925, 169, 'slider_1', '59'),
(926, 169, '_slider_1', 'field_5df6abbcdefd6'),
(927, 169, 'slider_2', '58'),
(928, 169, '_slider_2', 'field_5dfa1a5ca8876'),
(929, 169, 'slider_3', '59'),
(930, 169, '_slider_3', 'field_5dfa1a5da8877'),
(931, 169, 'img', '59'),
(932, 169, '_img', 'field_5df6abbcdefd6'),
(933, 169, 'best_1', '62'),
(934, 169, '_best_1', 'field_5df6abdcdefd7'),
(935, 169, 'best_2', '58'),
(936, 169, '_best_2', 'field_5dfa20af2a168'),
(937, 169, 'best_3', '62'),
(938, 169, '_best_3', 'field_5dfa20b22a169'),
(939, 169, 'best_title_1', 'Article en vedette 1'),
(940, 169, '_best_title_1', 'field_5df6ac03defd8'),
(941, 169, 'best_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(942, 169, '_best_desc_1', 'field_5df6ac22defd9'),
(943, 169, 'best_title_2', 'Article en vedette 2'),
(944, 169, '_best_title_2', 'field_5dfa246dfa453'),
(945, 169, 'best_desc_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(946, 169, '_best_desc_2', 'field_5dfa2491fa454'),
(947, 169, 'best_title_3', 'Article en vedette 1'),
(948, 169, '_best_title_3', 'field_5dfa246cfa452'),
(949, 169, 'best_desc_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(950, 169, '_best_desc_3', 'field_5dfa2493fa455'),
(951, 169, 'new_1', '63'),
(952, 169, '_new_1', 'field_5dfa278e86a4a'),
(953, 169, 'new_2', '52'),
(954, 169, '_new_2', 'field_5dfa27b786a4b'),
(955, 169, 'new_3', '67'),
(956, 169, '_new_3', 'field_5dfa27bd86a4c'),
(957, 169, 'new_4', '60'),
(958, 169, '_new_4', 'field_5dfa27c086a4d'),
(959, 169, 'new_5', '65'),
(960, 169, '_new_5', 'field_5dfa27c286a4e'),
(961, 169, 'story_her', '54'),
(962, 169, '_story_her', 'field_5dfa2f3910edc'),
(963, 169, 'categorie_1', ''),
(964, 169, '_categorie_1', 'field_5df6aca1defdc'),
(965, 169, 'categorie_2', ''),
(966, 169, '_categorie_2', 'field_5dfa31653a253'),
(967, 169, 'categorie_3', ''),
(968, 169, '_categorie_3', 'field_5dfa31673a254'),
(969, 170, 'slider', ''),
(970, 170, '_slider', 'field_5df6abbcdefd6'),
(971, 170, 'best', '65'),
(972, 170, '_best', 'field_5df6abdcdefd7'),
(973, 170, 'best_title', ''),
(974, 170, '_best_title', 'field_5df6ac03defd8'),
(975, 170, 'best_desc', ''),
(976, 170, '_best_desc', 'field_5df6ac22defd9'),
(977, 170, 'story', '66'),
(978, 170, '_story', 'field_5df6ac62defda'),
(979, 170, 'story_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis turpis sapien. Vestibulum mollis                     orci cursus nisl pulvinar tempus. Quisque leo orci, scelerisque ut felis ut, viverra euismod augue.                     Ut et urna tincidunt, lobortis odio eget, facilisis lorem. Praesent facilisis leo vel lectus tempor,                     eu tempor odio ornare. Aenean facilisis est et felis eleifend mattis. Nam vulputate blandit lacus,                     et mattis nibh volutpat nec. Nulla ac massa iaculis, fringilla dolor sit amet, euismod justo. Class                     aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam volutpat                     nulla ante, vel pulvinar lorem ultricies in. Quisque eget nulla a enim condimentum tempor a ac arcu.                     In hac habitasse platea dictumst.                      Sed cursus sit amet leo id laoreet. Proin vel feugiat libero. Praesent a purus sed massa facilisis                     efficitur. Maecenas laoreet lobortis sem sed consequat. Integer rutrum risus ac nibh ultrices, ut                     maximus nulla finibus. Sed viverra eleifend odio mattis rhoncus. Sed vehicula vestibulum                     euismod.'),
(980, 170, '_story_desc', 'field_5df6ac78defdb'),
(981, 170, 'categories', ''),
(982, 170, '_categories', 'field_5df6aca1defdc'),
(983, 170, 'categories_title', ''),
(984, 170, '_categories_title', 'field_5df6acb2defdd'),
(985, 170, 'categories_desc', ''),
(986, 170, '_categories_desc', 'field_5df6acc7defde'),
(987, 170, 'slider_1', '59'),
(988, 170, '_slider_1', 'field_5df6abbcdefd6'),
(989, 170, 'slider_2', '58'),
(990, 170, '_slider_2', 'field_5dfa1a5ca8876'),
(991, 170, 'slider_3', '59'),
(992, 170, '_slider_3', 'field_5dfa1a5da8877'),
(993, 170, 'img', '59'),
(994, 170, '_img', 'field_5df6abbcdefd6'),
(995, 170, 'best_1', '62'),
(996, 170, '_best_1', 'field_5df6abdcdefd7'),
(997, 170, 'best_2', '58'),
(998, 170, '_best_2', 'field_5dfa20af2a168'),
(999, 170, 'best_3', '56'),
(1000, 170, '_best_3', 'field_5dfa20b22a169'),
(1001, 170, 'best_title_1', 'Article en vedette 1'),
(1002, 170, '_best_title_1', 'field_5df6ac03defd8'),
(1003, 170, 'best_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1004, 170, '_best_desc_1', 'field_5df6ac22defd9'),
(1005, 170, 'best_title_2', 'Article en vedette 2'),
(1006, 170, '_best_title_2', 'field_5dfa246dfa453'),
(1007, 170, 'best_desc_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1008, 170, '_best_desc_2', 'field_5dfa2491fa454'),
(1009, 170, 'best_title_3', 'Article en vedette 1'),
(1010, 170, '_best_title_3', 'field_5dfa246cfa452'),
(1011, 170, 'best_desc_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1012, 170, '_best_desc_3', 'field_5dfa2493fa455'),
(1013, 170, 'new_1', '63'),
(1014, 170, '_new_1', 'field_5dfa278e86a4a'),
(1015, 170, 'new_2', '52'),
(1016, 170, '_new_2', 'field_5dfa27b786a4b'),
(1017, 170, 'new_3', '67'),
(1018, 170, '_new_3', 'field_5dfa27bd86a4c'),
(1019, 170, 'new_4', '60'),
(1020, 170, '_new_4', 'field_5dfa27c086a4d'),
(1021, 170, 'new_5', '65'),
(1022, 170, '_new_5', 'field_5dfa27c286a4e'),
(1023, 170, 'story_her', '54'),
(1024, 170, '_story_her', 'field_5dfa2f3910edc'),
(1025, 170, 'categorie_1', '64'),
(1026, 170, '_categorie_1', 'field_5df6aca1defdc'),
(1027, 170, 'categorie_2', '53'),
(1028, 170, '_categorie_2', 'field_5dfa31653a253'),
(1029, 170, 'categorie_3', '55'),
(1030, 170, '_categorie_3', 'field_5dfa31673a254'),
(1031, 171, '_edit_lock', '1576679492:1'),
(1032, 173, '_edit_lock', '1576679503:1'),
(1033, 175, '_menu_item_type', 'post_type'),
(1034, 175, '_menu_item_menu_item_parent', '0'),
(1035, 175, '_menu_item_object_id', '173'),
(1036, 175, '_menu_item_object', 'page'),
(1037, 175, '_menu_item_target', ''),
(1038, 175, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1039, 175, '_menu_item_xfn', ''),
(1040, 175, '_menu_item_url', ''),
(1042, 176, '_menu_item_type', 'post_type'),
(1043, 176, '_menu_item_menu_item_parent', '0'),
(1044, 176, '_menu_item_object_id', '171'),
(1045, 176, '_menu_item_object', 'page'),
(1046, 176, '_menu_item_target', ''),
(1047, 176, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(1048, 176, '_menu_item_xfn', ''),
(1049, 176, '_menu_item_url', ''),
(1051, 10, '_edit_last', '1'),
(1052, 10, 'gallerie', '63,65,67'),
(1053, 18, '_wp_page_template', 'page-histoire.php'),
(1054, 18, '_edit_last', '1'),
(1055, 18, 'portrait_img', '54'),
(1056, 18, '_portrait_img', 'field_5dfa557f7c3d6'),
(1057, 18, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1058, 18, '_portrait_desc', 'field_5dfa55e8a00e0'),
(1059, 183, 'portrait_img', '54'),
(1060, 183, '_portrait_img', 'field_5dfa557f7c3d6'),
(1061, 183, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1062, 183, '_portrait_desc', 'field_5dfa55e8a00e0'),
(1063, 185, 'portrait_img', '54'),
(1064, 185, '_portrait_img', 'field_5dfa557f7c3d6'),
(1065, 185, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1066, 185, '_portrait_desc', 'field_5dfa55e8a00e0'),
(1067, 18, 'atelier_img', '212'),
(1068, 18, '_atelier_img', 'field_5dfa5708b5a32'),
(1069, 18, 'atelier_desc', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n\r\nNé d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n\r\nA travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. \r\n\r\nClin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(1070, 18, '_atelier_desc', 'field_5dfa571bb5a33'),
(1071, 188, 'portrait_img', '54'),
(1072, 188, '_portrait_img', 'field_5dfa557f7c3d6'),
(1073, 188, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1074, 188, '_portrait_desc', 'field_5dfa55e8a00e0'),
(1075, 188, 'atelier_img', '67'),
(1076, 188, '_atelier_img', 'field_5dfa5708b5a32'),
(1077, 188, 'atelier_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1078, 188, '_atelier_desc', 'field_5dfa571bb5a33'),
(1079, 189, '_wp_attached_file', '2019/12/alexandra-gorn-1mPkRa-qM_U-unsplash-scaled.jpg'),
(1080, 189, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1709;s:6:\"height\";i:2560;s:4:\"file\";s:54:\"2019/12/alexandra-gorn-1mPkRa-qM_U-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"alexandra-gorn-1mPkRa-qM_U-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"alexandra-gorn-1mPkRa-qM_U-unsplash-684x1024.jpg\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"alexandra-gorn-1mPkRa-qM_U-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"alexandra-gorn-1mPkRa-qM_U-unsplash-768x1150.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:49:\"alexandra-gorn-1mPkRa-qM_U-unsplash-1025x1536.jpg\";s:5:\"width\";i:1025;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:49:\"alexandra-gorn-1mPkRa-qM_U-unsplash-1367x2048.jpg\";s:5:\"width\";i:1367;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"alexandra-gorn-1mPkRa-qM_U-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:47:\"alexandra-gorn-1mPkRa-qM_U-unsplash-600x899.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:899;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"alexandra-gorn-1mPkRa-qM_U-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"alexandra-gorn-1mPkRa-qM_U-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:47:\"alexandra-gorn-1mPkRa-qM_U-unsplash-600x899.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:899;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"alexandra-gorn-1mPkRa-qM_U-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:39:\"alexandra-gorn-1mPkRa-qM_U-unsplash.jpg\";}'),
(1081, 190, '_wp_attached_file', '2019/12/alexandra-gorn-JIUjvqe2ZHg-unsplash-1-scaled.jpg'),
(1082, 190, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:56:\"2019/12/alexandra-gorn-JIUjvqe2ZHg-unsplash-1-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-1-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-1-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:51:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-1-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:51:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-1-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:49:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:49:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-1-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:49:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:49:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:49:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-1-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:49:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:41:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-1.jpg\";}'),
(1083, 191, '_wp_attached_file', '2019/12/alexandra-gorn-JIUjvqe2ZHg-unsplash-scaled.jpg'),
(1084, 191, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:54:\"2019/12/alexandra-gorn-JIUjvqe2ZHg-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:49:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:49:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:47:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:47:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"alexandra-gorn-JIUjvqe2ZHg-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:39:\"alexandra-gorn-JIUjvqe2ZHg-unsplash.jpg\";}'),
(1085, 192, '_wp_attached_file', '2019/12/behzad-ghaffarian-nhWgZNV85LQ-unsplash-scaled.jpg'),
(1086, 192, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:2357;s:4:\"file\";s:57:\"2019/12/behzad-ghaffarian-nhWgZNV85LQ-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-1024x943.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:943;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-768x707.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:707;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:52:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-1536x1414.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1414;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:52:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-2048x1886.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1886;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:50:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-600x553.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:553;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:50:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:50:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-600x553.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:553;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:42:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash.jpg\";}'),
(1087, 193, '_wp_attached_file', '2019/12/benjamin-child-GWe0dlVD9e0-unsplash-scaled.jpg'),
(1088, 193, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:54:\"2019/12/benjamin-child-GWe0dlVD9e0-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"benjamin-child-GWe0dlVD9e0-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"benjamin-child-GWe0dlVD9e0-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"benjamin-child-GWe0dlVD9e0-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"benjamin-child-GWe0dlVD9e0-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:49:\"benjamin-child-GWe0dlVD9e0-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:49:\"benjamin-child-GWe0dlVD9e0-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"benjamin-child-GWe0dlVD9e0-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:47:\"benjamin-child-GWe0dlVD9e0-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"benjamin-child-GWe0dlVD9e0-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"benjamin-child-GWe0dlVD9e0-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:47:\"benjamin-child-GWe0dlVD9e0-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"benjamin-child-GWe0dlVD9e0-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:39:\"benjamin-child-GWe0dlVD9e0-unsplash.jpg\";}'),
(1089, 194, '_wp_attached_file', '2019/12/Capture-1.png'),
(1090, 194, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:331;s:6:\"height\";i:305;s:4:\"file\";s:21:\"2019/12/Capture-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Capture-1-300x276.png\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Capture-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"Capture-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"Capture-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"Capture-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"Capture-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1091, 195, '_wp_attached_file', '2019/12/christopher-jolly-GqbU78bdJFM-unsplash-scaled.jpg');
INSERT INTO `kr_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1092, 195, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:57:\"2019/12/christopher-jolly-GqbU78bdJFM-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"christopher-jolly-GqbU78bdJFM-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:51:\"christopher-jolly-GqbU78bdJFM-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"christopher-jolly-GqbU78bdJFM-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"christopher-jolly-GqbU78bdJFM-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:52:\"christopher-jolly-GqbU78bdJFM-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:52:\"christopher-jolly-GqbU78bdJFM-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"christopher-jolly-GqbU78bdJFM-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:50:\"christopher-jolly-GqbU78bdJFM-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"christopher-jolly-GqbU78bdJFM-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:50:\"christopher-jolly-GqbU78bdJFM-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:50:\"christopher-jolly-GqbU78bdJFM-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"christopher-jolly-GqbU78bdJFM-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:42:\"christopher-jolly-GqbU78bdJFM-unsplash.jpg\";}'),
(1093, 196, '_wp_attached_file', '2019/12/coeur.png'),
(1094, 196, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1436;s:6:\"height\";i:1202;s:4:\"file\";s:17:\"2019/12/coeur.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"coeur-300x251.png\";s:5:\"width\";i:300;s:6:\"height\";i:251;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"coeur-1024x857.png\";s:5:\"width\";i:1024;s:6:\"height\";i:857;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"coeur-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"coeur-768x643.png\";s:5:\"width\";i:768;s:6:\"height\";i:643;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"coeur-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"coeur-600x502.png\";s:5:\"width\";i:600;s:6:\"height\";i:502;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"coeur-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"coeur-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"coeur-600x502.png\";s:5:\"width\";i:600;s:6:\"height\";i:502;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"coeur-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1095, 197, '_wp_attached_file', '2019/12/content-pixie-31Sws6llA2g-unsplash-scaled.jpg'),
(1096, 197, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:53:\"2019/12/content-pixie-31Sws6llA2g-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"content-pixie-31Sws6llA2g-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"content-pixie-31Sws6llA2g-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"content-pixie-31Sws6llA2g-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"content-pixie-31Sws6llA2g-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:48:\"content-pixie-31Sws6llA2g-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:48:\"content-pixie-31Sws6llA2g-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:46:\"content-pixie-31Sws6llA2g-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:46:\"content-pixie-31Sws6llA2g-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:46:\"content-pixie-31Sws6llA2g-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:46:\"content-pixie-31Sws6llA2g-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:46:\"content-pixie-31Sws6llA2g-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:46:\"content-pixie-31Sws6llA2g-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:38:\"content-pixie-31Sws6llA2g-unsplash.jpg\";}'),
(1097, 198, '_wp_attached_file', '2019/12/dane-deaner-qRfMB-IOQjE-unsplash-scaled.jpg'),
(1098, 198, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2048;s:6:\"height\";i:2560;s:4:\"file\";s:51:\"2019/12/dane-deaner-qRfMB-IOQjE-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-240x300.jpg\";s:5:\"width\";i:240;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"dane-deaner-qRfMB-IOQjE-unsplash-819x1024.jpg\";s:5:\"width\";i:819;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-768x960.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"dane-deaner-qRfMB-IOQjE-unsplash-1229x1536.jpg\";s:5:\"width\";i:1229;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:46:\"dane-deaner-qRfMB-IOQjE-unsplash-1638x2048.jpg\";s:5:\"width\";i:1638;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-600x750.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-600x750.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:750;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:36:\"dane-deaner-qRfMB-IOQjE-unsplash.jpg\";}'),
(1099, 199, '_wp_attached_file', '2019/12/davide-cantelli-ajisKc2uuFk-unsplash-scaled.jpg'),
(1100, 199, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:2285;s:4:\"file\";s:55:\"2019/12/davide-cantelli-ajisKc2uuFk-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"davide-cantelli-ajisKc2uuFk-unsplash-300x268.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:268;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"davide-cantelli-ajisKc2uuFk-unsplash-1024x914.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:914;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"davide-cantelli-ajisKc2uuFk-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"davide-cantelli-ajisKc2uuFk-unsplash-768x685.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:685;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:50:\"davide-cantelli-ajisKc2uuFk-unsplash-1536x1371.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1371;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:50:\"davide-cantelli-ajisKc2uuFk-unsplash-2048x1828.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1828;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"davide-cantelli-ajisKc2uuFk-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"davide-cantelli-ajisKc2uuFk-unsplash-600x536.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"davide-cantelli-ajisKc2uuFk-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"davide-cantelli-ajisKc2uuFk-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"davide-cantelli-ajisKc2uuFk-unsplash-600x536.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"davide-cantelli-ajisKc2uuFk-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:40:\"davide-cantelli-ajisKc2uuFk-unsplash.jpg\";}'),
(1101, 200, '_wp_attached_file', '2019/12/di_an_h-g_8MrEZAvyE-unsplash-scaled.jpg'),
(1102, 200, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:47:\"2019/12/di_an_h-g_8MrEZAvyE-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"di_an_h-g_8MrEZAvyE-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"di_an_h-g_8MrEZAvyE-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"di_an_h-g_8MrEZAvyE-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"di_an_h-g_8MrEZAvyE-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:42:\"di_an_h-g_8MrEZAvyE-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:42:\"di_an_h-g_8MrEZAvyE-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:40:\"di_an_h-g_8MrEZAvyE-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:40:\"di_an_h-g_8MrEZAvyE-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:40:\"di_an_h-g_8MrEZAvyE-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:40:\"di_an_h-g_8MrEZAvyE-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:40:\"di_an_h-g_8MrEZAvyE-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:40:\"di_an_h-g_8MrEZAvyE-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:32:\"di_an_h-g_8MrEZAvyE-unsplash.jpg\";}'),
(1103, 201, '_wp_attached_file', '2019/12/element5-digital-2cwqJgtQ3D0-unsplash-scaled.jpg'),
(1104, 201, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1709;s:6:\"height\";i:2560;s:4:\"file\";s:56:\"2019/12/element5-digital-2cwqJgtQ3D0-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:49:\"element5-digital-2cwqJgtQ3D0-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:50:\"element5-digital-2cwqJgtQ3D0-unsplash-684x1024.jpg\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:49:\"element5-digital-2cwqJgtQ3D0-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:50:\"element5-digital-2cwqJgtQ3D0-unsplash-768x1151.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1151;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:51:\"element5-digital-2cwqJgtQ3D0-unsplash-1025x1536.jpg\";s:5:\"width\";i:1025;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:51:\"element5-digital-2cwqJgtQ3D0-unsplash-1367x2048.jpg\";s:5:\"width\";i:1367;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:49:\"element5-digital-2cwqJgtQ3D0-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:49:\"element5-digital-2cwqJgtQ3D0-unsplash-600x899.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:899;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:49:\"element5-digital-2cwqJgtQ3D0-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:49:\"element5-digital-2cwqJgtQ3D0-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:49:\"element5-digital-2cwqJgtQ3D0-unsplash-600x899.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:899;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:49:\"element5-digital-2cwqJgtQ3D0-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:41:\"element5-digital-2cwqJgtQ3D0-unsplash.jpg\";}'),
(1105, 202, '_wp_attached_file', '2019/12/fb.png'),
(1106, 202, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1394;s:6:\"height\";i:1284;s:4:\"file\";s:14:\"2019/12/fb.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"fb-300x276.png\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"fb-1024x943.png\";s:5:\"width\";i:1024;s:6:\"height\";i:943;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"fb-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"fb-768x707.png\";s:5:\"width\";i:768;s:6:\"height\";i:707;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"fb-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"fb-600x553.png\";s:5:\"width\";i:600;s:6:\"height\";i:553;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"fb-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"fb-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"fb-600x553.png\";s:5:\"width\";i:600;s:6:\"height\";i:553;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"fb-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1107, 203, '_wp_attached_file', '2019/12/forme3-1.png'),
(1108, 203, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:938;s:6:\"height\";i:938;s:4:\"file\";s:20:\"2019/12/forme3-1.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"forme3-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"forme3-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"forme3-1-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"forme3-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"forme3-1-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"forme3-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"forme3-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:20:\"forme3-1-600x600.png\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"forme3-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1109, 204, '_wp_attached_file', '2019/12/franck-v-HUYJZLfIMOA-unsplash-scaled.jpg'),
(1110, 204, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1988;s:4:\"file\";s:48:\"2019/12/franck-v-HUYJZLfIMOA-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"franck-v-HUYJZLfIMOA-unsplash-300x233.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"franck-v-HUYJZLfIMOA-unsplash-1024x795.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:795;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"franck-v-HUYJZLfIMOA-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:41:\"franck-v-HUYJZLfIMOA-unsplash-768x597.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:597;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:43:\"franck-v-HUYJZLfIMOA-unsplash-1536x1193.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1193;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:43:\"franck-v-HUYJZLfIMOA-unsplash-2048x1591.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1591;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"franck-v-HUYJZLfIMOA-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:41:\"franck-v-HUYJZLfIMOA-unsplash-600x466.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:466;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"franck-v-HUYJZLfIMOA-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:41:\"franck-v-HUYJZLfIMOA-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:41:\"franck-v-HUYJZLfIMOA-unsplash-600x466.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:466;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"franck-v-HUYJZLfIMOA-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:33:\"franck-v-HUYJZLfIMOA-unsplash.jpg\";}'),
(1111, 205, '_wp_attached_file', '2019/12/ggg.png'),
(1112, 205, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1433;s:6:\"height\";i:2346;s:4:\"file\";s:15:\"2019/12/ggg.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"ggg-183x300.png\";s:5:\"width\";i:183;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"ggg-625x1024.png\";s:5:\"width\";i:625;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"ggg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"ggg-768x1257.png\";s:5:\"width\";i:768;s:6:\"height\";i:1257;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:16:\"ggg-938x1536.png\";s:5:\"width\";i:938;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:17:\"ggg-1251x2048.png\";s:5:\"width\";i:1251;s:6:\"height\";i:2048;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"ggg-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"ggg-600x982.png\";s:5:\"width\";i:600;s:6:\"height\";i:982;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"ggg-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"ggg-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"ggg-600x982.png\";s:5:\"width\";i:600;s:6:\"height\";i:982;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"ggg-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1113, 206, '_wp_attached_file', '2019/12/hal-gatewood-Vfml26Iy4mI-unsplash-scaled.jpg'),
(1114, 206, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1706;s:4:\"file\";s:52:\"2019/12/hal-gatewood-Vfml26Iy4mI-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"hal-gatewood-Vfml26Iy4mI-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"hal-gatewood-Vfml26Iy4mI-unsplash-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"hal-gatewood-Vfml26Iy4mI-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"hal-gatewood-Vfml26Iy4mI-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:47:\"hal-gatewood-Vfml26Iy4mI-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:47:\"hal-gatewood-Vfml26Iy4mI-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:45:\"hal-gatewood-Vfml26Iy4mI-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:45:\"hal-gatewood-Vfml26Iy4mI-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"hal-gatewood-Vfml26Iy4mI-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:45:\"hal-gatewood-Vfml26Iy4mI-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:45:\"hal-gatewood-Vfml26Iy4mI-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"hal-gatewood-Vfml26Iy4mI-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:37:\"hal-gatewood-Vfml26Iy4mI-unsplash.jpg\";}'),
(1115, 207, '_wp_attached_file', '2019/12/hutomo-abrianto-X5BWooeO4Cw-unsplash-scaled.jpg'),
(1116, 207, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:55:\"2019/12/hutomo-abrianto-X5BWooeO4Cw-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"hutomo-abrianto-X5BWooeO4Cw-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"hutomo-abrianto-X5BWooeO4Cw-unsplash-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"hutomo-abrianto-X5BWooeO4Cw-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"hutomo-abrianto-X5BWooeO4Cw-unsplash-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:50:\"hutomo-abrianto-X5BWooeO4Cw-unsplash-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:50:\"hutomo-abrianto-X5BWooeO4Cw-unsplash-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"hutomo-abrianto-X5BWooeO4Cw-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"hutomo-abrianto-X5BWooeO4Cw-unsplash-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"hutomo-abrianto-X5BWooeO4Cw-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"hutomo-abrianto-X5BWooeO4Cw-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"hutomo-abrianto-X5BWooeO4Cw-unsplash-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"hutomo-abrianto-X5BWooeO4Cw-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:40:\"hutomo-abrianto-X5BWooeO4Cw-unsplash.jpg\";}'),
(1117, 208, '_wp_attached_file', '2019/12/ian-dooley-_-JR5TxKNSo-unsplash-scaled.jpg'),
(1118, 208, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:50:\"2019/12/ian-dooley-_-JR5TxKNSo-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"ian-dooley-_-JR5TxKNSo-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"ian-dooley-_-JR5TxKNSo-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"ian-dooley-_-JR5TxKNSo-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"ian-dooley-_-JR5TxKNSo-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:45:\"ian-dooley-_-JR5TxKNSo-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:45:\"ian-dooley-_-JR5TxKNSo-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"ian-dooley-_-JR5TxKNSo-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"ian-dooley-_-JR5TxKNSo-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"ian-dooley-_-JR5TxKNSo-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:43:\"ian-dooley-_-JR5TxKNSo-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:43:\"ian-dooley-_-JR5TxKNSo-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:43:\"ian-dooley-_-JR5TxKNSo-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:35:\"ian-dooley-_-JR5TxKNSo-unsplash.jpg\";}'),
(1119, 209, '_wp_attached_file', '2019/12/kirill-9uH-hM0VwPg-unsplash-scaled.jpg'),
(1120, 209, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:2560;s:4:\"file\";s:46:\"2019/12/kirill-9uH-hM0VwPg-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"kirill-9uH-hM0VwPg-unsplash-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"kirill-9uH-hM0VwPg-unsplash-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"kirill-9uH-hM0VwPg-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"kirill-9uH-hM0VwPg-unsplash-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:41:\"kirill-9uH-hM0VwPg-unsplash-1152x1536.jpg\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:41:\"kirill-9uH-hM0VwPg-unsplash-1536x2048.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"kirill-9uH-hM0VwPg-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"kirill-9uH-hM0VwPg-unsplash-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"kirill-9uH-hM0VwPg-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:39:\"kirill-9uH-hM0VwPg-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:39:\"kirill-9uH-hM0VwPg-unsplash-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:39:\"kirill-9uH-hM0VwPg-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:31:\"kirill-9uH-hM0VwPg-unsplash.jpg\";}'),
(1121, 210, '_wp_attached_file', '2019/12/liana-mikah-RECZjSWMPVI-unsplash-scaled.jpg'),
(1122, 210, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1707;s:6:\"height\";i:2560;s:4:\"file\";s:51:\"2019/12/liana-mikah-RECZjSWMPVI-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"liana-mikah-RECZjSWMPVI-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"liana-mikah-RECZjSWMPVI-unsplash-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"liana-mikah-RECZjSWMPVI-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"liana-mikah-RECZjSWMPVI-unsplash-768x1152.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"liana-mikah-RECZjSWMPVI-unsplash-1024x1536.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:46:\"liana-mikah-RECZjSWMPVI-unsplash-1365x2048.jpg\";s:5:\"width\";i:1365;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"liana-mikah-RECZjSWMPVI-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:44:\"liana-mikah-RECZjSWMPVI-unsplash-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"liana-mikah-RECZjSWMPVI-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"liana-mikah-RECZjSWMPVI-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"liana-mikah-RECZjSWMPVI-unsplash-600x900.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:900;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"liana-mikah-RECZjSWMPVI-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:36:\"liana-mikah-RECZjSWMPVI-unsplash.jpg\";}'),
(1123, 211, '_wp_attached_file', '2019/12/mahbod-akhzami-jc9dkaaEYr4-unsplash-scaled.jpg'),
(1124, 211, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:54:\"2019/12/mahbod-akhzami-jc9dkaaEYr4-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"mahbod-akhzami-jc9dkaaEYr4-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"mahbod-akhzami-jc9dkaaEYr4-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"mahbod-akhzami-jc9dkaaEYr4-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"mahbod-akhzami-jc9dkaaEYr4-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:49:\"mahbod-akhzami-jc9dkaaEYr4-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:49:\"mahbod-akhzami-jc9dkaaEYr4-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"mahbod-akhzami-jc9dkaaEYr4-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:47:\"mahbod-akhzami-jc9dkaaEYr4-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"mahbod-akhzami-jc9dkaaEYr4-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"mahbod-akhzami-jc9dkaaEYr4-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:47:\"mahbod-akhzami-jc9dkaaEYr4-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"mahbod-akhzami-jc9dkaaEYr4-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:39:\"mahbod-akhzami-jc9dkaaEYr4-unsplash.jpg\";}'),
(1125, 212, '_wp_attached_file', '2019/12/maison.png'),
(1126, 212, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1335;s:6:\"height\";i:1219;s:4:\"file\";s:18:\"2019/12/maison.png\";s:5:\"sizes\";a:10:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"maison-300x274.png\";s:5:\"width\";i:300;s:6:\"height\";i:274;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"maison-1024x935.png\";s:5:\"width\";i:1024;s:6:\"height\";i:935;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"maison-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"maison-768x701.png\";s:5:\"width\";i:768;s:6:\"height\";i:701;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"maison-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"maison-600x548.png\";s:5:\"width\";i:600;s:6:\"height\";i:548;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"maison-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"maison-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"maison-600x548.png\";s:5:\"width\";i:600;s:6:\"height\";i:548;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"maison-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1127, 213, '_wp_attached_file', '2019/12/michael-warf-f8egRYt5RGk-unsplash-scaled.jpg');
INSERT INTO `kr_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1128, 213, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1920;s:4:\"file\";s:52:\"2019/12/michael-warf-f8egRYt5RGk-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"michael-warf-f8egRYt5RGk-unsplash-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"michael-warf-f8egRYt5RGk-unsplash-1024x768.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"michael-warf-f8egRYt5RGk-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"michael-warf-f8egRYt5RGk-unsplash-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:47:\"michael-warf-f8egRYt5RGk-unsplash-1536x1152.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1152;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:47:\"michael-warf-f8egRYt5RGk-unsplash-2048x1536.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:45:\"michael-warf-f8egRYt5RGk-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:45:\"michael-warf-f8egRYt5RGk-unsplash-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"michael-warf-f8egRYt5RGk-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:45:\"michael-warf-f8egRYt5RGk-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:45:\"michael-warf-f8egRYt5RGk-unsplash-600x450.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:450;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"michael-warf-f8egRYt5RGk-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:37:\"michael-warf-f8egRYt5RGk-unsplash.jpg\";}'),
(1129, 214, '_wp_attached_file', '2019/12/olena-sergienko-gxKL334bUK4-unsplash-scaled.jpg'),
(1130, 214, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:2560;s:4:\"file\";s:55:\"2019/12/olena-sergienko-gxKL334bUK4-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"olena-sergienko-gxKL334bUK4-unsplash-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"olena-sergienko-gxKL334bUK4-unsplash-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"olena-sergienko-gxKL334bUK4-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:49:\"olena-sergienko-gxKL334bUK4-unsplash-768x1024.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:50:\"olena-sergienko-gxKL334bUK4-unsplash-1152x1536.jpg\";s:5:\"width\";i:1152;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:50:\"olena-sergienko-gxKL334bUK4-unsplash-1536x2048.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"olena-sergienko-gxKL334bUK4-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"olena-sergienko-gxKL334bUK4-unsplash-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"olena-sergienko-gxKL334bUK4-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"olena-sergienko-gxKL334bUK4-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"olena-sergienko-gxKL334bUK4-unsplash-600x800.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"olena-sergienko-gxKL334bUK4-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:40:\"olena-sergienko-gxKL334bUK4-unsplash.jpg\";}'),
(1131, 215, '_wp_attached_file', '2019/12/patrick-perkins-3wylDrjxH-E-unsplash-scaled.jpg'),
(1132, 215, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1905;s:4:\"file\";s:55:\"2019/12/patrick-perkins-3wylDrjxH-E-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"patrick-perkins-3wylDrjxH-E-unsplash-300x223.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:223;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"patrick-perkins-3wylDrjxH-E-unsplash-1024x762.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:762;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"patrick-perkins-3wylDrjxH-E-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"patrick-perkins-3wylDrjxH-E-unsplash-768x571.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:571;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:50:\"patrick-perkins-3wylDrjxH-E-unsplash-1536x1143.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:50:\"patrick-perkins-3wylDrjxH-E-unsplash-2048x1524.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1524;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"patrick-perkins-3wylDrjxH-E-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"patrick-perkins-3wylDrjxH-E-unsplash-600x446.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:446;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"patrick-perkins-3wylDrjxH-E-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"patrick-perkins-3wylDrjxH-E-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"patrick-perkins-3wylDrjxH-E-unsplash-600x446.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:446;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"patrick-perkins-3wylDrjxH-E-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:40:\"patrick-perkins-3wylDrjxH-E-unsplash.jpg\";}'),
(1133, 216, '_wp_attached_file', '2019/12/phillip-goldsberry-fZuleEfeA1Q-unsplash-scaled.jpg'),
(1134, 216, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:58:\"2019/12/phillip-goldsberry-fZuleEfeA1Q-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"phillip-goldsberry-fZuleEfeA1Q-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:52:\"phillip-goldsberry-fZuleEfeA1Q-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"phillip-goldsberry-fZuleEfeA1Q-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:51:\"phillip-goldsberry-fZuleEfeA1Q-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:53:\"phillip-goldsberry-fZuleEfeA1Q-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:53:\"phillip-goldsberry-fZuleEfeA1Q-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:51:\"phillip-goldsberry-fZuleEfeA1Q-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:51:\"phillip-goldsberry-fZuleEfeA1Q-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:51:\"phillip-goldsberry-fZuleEfeA1Q-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:51:\"phillip-goldsberry-fZuleEfeA1Q-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:51:\"phillip-goldsberry-fZuleEfeA1Q-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:51:\"phillip-goldsberry-fZuleEfeA1Q-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:43:\"phillip-goldsberry-fZuleEfeA1Q-unsplash.jpg\";}'),
(1135, 217, '_wp_attached_file', '2019/12/réseaubla5nc.png'),
(1136, 217, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2021;s:6:\"height\";i:2018;s:4:\"file\";s:26:\"2019/12/réseaubla5nc.png\";s:5:\"sizes\";a:11:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"réseaubla5nc-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"réseaubla5nc-1024x1022.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1022;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"réseaubla5nc-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"réseaubla5nc-768x767.png\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:28:\"réseaubla5nc-1536x1534.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1534;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"réseaubla5nc-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"réseaubla5nc-600x599.png\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"réseaubla5nc-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"réseaubla5nc-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"réseaubla5nc-600x599.png\";s:5:\"width\";i:600;s:6:\"height\";i:599;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"réseaubla5nc-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1137, 218, '_wp_attached_file', '2019/12/robert-anasch-wj2UvbOtRbY-unsplash-1-scaled.jpg'),
(1138, 218, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1706;s:4:\"file\";s:55:\"2019/12/robert-anasch-wj2UvbOtRbY-unsplash-1-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"robert-anasch-wj2UvbOtRbY-unsplash-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:49:\"robert-anasch-wj2UvbOtRbY-unsplash-1-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"robert-anasch-wj2UvbOtRbY-unsplash-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"robert-anasch-wj2UvbOtRbY-unsplash-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:50:\"robert-anasch-wj2UvbOtRbY-unsplash-1-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:50:\"robert-anasch-wj2UvbOtRbY-unsplash-1-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:48:\"robert-anasch-wj2UvbOtRbY-unsplash-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:48:\"robert-anasch-wj2UvbOtRbY-unsplash-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:48:\"robert-anasch-wj2UvbOtRbY-unsplash-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:48:\"robert-anasch-wj2UvbOtRbY-unsplash-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:48:\"robert-anasch-wj2UvbOtRbY-unsplash-1-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:48:\"robert-anasch-wj2UvbOtRbY-unsplash-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:40:\"robert-anasch-wj2UvbOtRbY-unsplash-1.jpg\";}'),
(1139, 219, '_wp_attached_file', '2019/12/robert-anasch-wj2UvbOtRbY-unsplash-scaled.jpg'),
(1140, 219, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1706;s:4:\"file\";s:53:\"2019/12/robert-anasch-wj2UvbOtRbY-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"robert-anasch-wj2UvbOtRbY-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:47:\"robert-anasch-wj2UvbOtRbY-unsplash-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"robert-anasch-wj2UvbOtRbY-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"robert-anasch-wj2UvbOtRbY-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:48:\"robert-anasch-wj2UvbOtRbY-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:48:\"robert-anasch-wj2UvbOtRbY-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:46:\"robert-anasch-wj2UvbOtRbY-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:46:\"robert-anasch-wj2UvbOtRbY-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:46:\"robert-anasch-wj2UvbOtRbY-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:46:\"robert-anasch-wj2UvbOtRbY-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:46:\"robert-anasch-wj2UvbOtRbY-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:46:\"robert-anasch-wj2UvbOtRbY-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:38:\"robert-anasch-wj2UvbOtRbY-unsplash.jpg\";}'),
(1141, 220, '_wp_attached_file', '2019/12/roman-bozhko-OXXsAafHDeo-unsplash-scaled.jpg'),
(1142, 220, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1708;s:4:\"file\";s:52:\"2019/12/roman-bozhko-OXXsAafHDeo-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"roman-bozhko-OXXsAafHDeo-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"roman-bozhko-OXXsAafHDeo-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"roman-bozhko-OXXsAafHDeo-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"roman-bozhko-OXXsAafHDeo-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:47:\"roman-bozhko-OXXsAafHDeo-unsplash-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:47:\"roman-bozhko-OXXsAafHDeo-unsplash-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:45:\"roman-bozhko-OXXsAafHDeo-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:45:\"roman-bozhko-OXXsAafHDeo-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"roman-bozhko-OXXsAafHDeo-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:45:\"roman-bozhko-OXXsAafHDeo-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:45:\"roman-bozhko-OXXsAafHDeo-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:45:\"roman-bozhko-OXXsAafHDeo-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:37:\"roman-bozhko-OXXsAafHDeo-unsplash.jpg\";}'),
(1143, 221, '_wp_attached_file', '2019/12/samantha-gades-XDaa1RPb6n8-unsplash-scaled.jpg'),
(1144, 221, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1709;s:6:\"height\";i:2560;s:4:\"file\";s:54:\"2019/12/samantha-gades-XDaa1RPb6n8-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"samantha-gades-XDaa1RPb6n8-unsplash-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"samantha-gades-XDaa1RPb6n8-unsplash-684x1024.jpg\";s:5:\"width\";i:684;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"samantha-gades-XDaa1RPb6n8-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"samantha-gades-XDaa1RPb6n8-unsplash-768x1150.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:1150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:49:\"samantha-gades-XDaa1RPb6n8-unsplash-1025x1536.jpg\";s:5:\"width\";i:1025;s:6:\"height\";i:1536;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:49:\"samantha-gades-XDaa1RPb6n8-unsplash-1367x2048.jpg\";s:5:\"width\";i:1367;s:6:\"height\";i:2048;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:47:\"samantha-gades-XDaa1RPb6n8-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:47:\"samantha-gades-XDaa1RPb6n8-unsplash-600x899.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:899;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:47:\"samantha-gades-XDaa1RPb6n8-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:47:\"samantha-gades-XDaa1RPb6n8-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:47:\"samantha-gades-XDaa1RPb6n8-unsplash-600x899.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:899;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:47:\"samantha-gades-XDaa1RPb6n8-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:39:\"samantha-gades-XDaa1RPb6n8-unsplash.jpg\";}'),
(1145, 222, '_wp_attached_file', '2019/12/toa-heftiba-FV3GConVSss-unsplash-scaled.jpg'),
(1146, 222, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:51:\"2019/12/toa-heftiba-FV3GConVSss-unsplash-scaled.jpg\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"toa-heftiba-FV3GConVSss-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:45:\"toa-heftiba-FV3GConVSss-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"toa-heftiba-FV3GConVSss-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:44:\"toa-heftiba-FV3GConVSss-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:46:\"toa-heftiba-FV3GConVSss-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:46:\"toa-heftiba-FV3GConVSss-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:44:\"toa-heftiba-FV3GConVSss-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:44:\"toa-heftiba-FV3GConVSss-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:44:\"toa-heftiba-FV3GConVSss-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:44:\"toa-heftiba-FV3GConVSss-unsplash-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:44:\"toa-heftiba-FV3GConVSss-unsplash-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:44:\"toa-heftiba-FV3GConVSss-unsplash-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:36:\"toa-heftiba-FV3GConVSss-unsplash.jpg\";}'),
(1147, 223, '_wp_attached_file', '2019/12/bc.png'),
(1148, 223, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3427;s:6:\"height\";i:1747;s:4:\"file\";s:14:\"2019/12/bc.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"bc-300x153.png\";s:5:\"width\";i:300;s:6:\"height\";i:153;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"bc-1024x522.png\";s:5:\"width\";i:1024;s:6:\"height\";i:522;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"bc-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"bc-768x392.png\";s:5:\"width\";i:768;s:6:\"height\";i:392;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:15:\"bc-1536x783.png\";s:5:\"width\";i:1536;s:6:\"height\";i:783;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:16:\"bc-2048x1044.png\";s:5:\"width\";i:2048;s:6:\"height\";i:1044;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:14:\"bc-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:14:\"bc-600x306.png\";s:5:\"width\";i:600;s:6:\"height\";i:306;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:14:\"bc-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:14:\"bc-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:14:\"bc-600x306.png\";s:5:\"width\";i:600;s:6:\"height\";i:306;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:14:\"bc-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1149, 92, 'img', '67'),
(1150, 92, '_img', 'field_5df6860a06a89'),
(1213, 71, 'background_image', '223'),
(1214, 71, '_background_image', 'field_5dfb9da5b173e'),
(1215, 230, 'slider', ''),
(1216, 230, '_slider', 'field_5df6abbcdefd6'),
(1217, 230, 'best', '65'),
(1218, 230, '_best', 'field_5df6abdcdefd7'),
(1219, 230, 'best_title', ''),
(1220, 230, '_best_title', 'field_5df6ac03defd8'),
(1221, 230, 'best_desc', ''),
(1222, 230, '_best_desc', 'field_5df6ac22defd9'),
(1223, 230, 'story', '66'),
(1224, 230, '_story', 'field_5df6ac62defda'),
(1225, 230, 'story_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis turpis sapien. Vestibulum mollis                     orci cursus nisl pulvinar tempus. Quisque leo orci, scelerisque ut felis ut, viverra euismod augue.                     Ut et urna tincidunt, lobortis odio eget, facilisis lorem. Praesent facilisis leo vel lectus tempor,                     eu tempor odio ornare. Aenean facilisis est et felis eleifend mattis. Nam vulputate blandit lacus,                     et mattis nibh volutpat nec. Nulla ac massa iaculis, fringilla dolor sit amet, euismod justo. Class                     aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam volutpat                     nulla ante, vel pulvinar lorem ultricies in. Quisque eget nulla a enim condimentum tempor a ac arcu.                     In hac habitasse platea dictumst.                      Sed cursus sit amet leo id laoreet. Proin vel feugiat libero. Praesent a purus sed massa facilisis                     efficitur. Maecenas laoreet lobortis sem sed consequat. Integer rutrum risus ac nibh ultrices, ut                     maximus nulla finibus. Sed viverra eleifend odio mattis rhoncus. Sed vehicula vestibulum                     euismod.'),
(1226, 230, '_story_desc', 'field_5df6ac78defdb'),
(1227, 230, 'categories', ''),
(1228, 230, '_categories', 'field_5df6aca1defdc'),
(1229, 230, 'categories_title', ''),
(1230, 230, '_categories_title', 'field_5df6acb2defdd'),
(1231, 230, 'categories_desc', ''),
(1232, 230, '_categories_desc', 'field_5df6acc7defde'),
(1233, 230, 'slider_1', '59'),
(1234, 230, '_slider_1', 'field_5df6abbcdefd6'),
(1235, 230, 'slider_2', '58'),
(1236, 230, '_slider_2', 'field_5dfa1a5ca8876'),
(1237, 230, 'slider_3', '59'),
(1238, 230, '_slider_3', 'field_5dfa1a5da8877'),
(1239, 230, 'img', '59'),
(1240, 230, '_img', 'field_5df6abbcdefd6'),
(1241, 230, 'best_1', '62'),
(1242, 230, '_best_1', 'field_5df6abdcdefd7'),
(1243, 230, 'best_2', '58'),
(1244, 230, '_best_2', 'field_5dfa20af2a168'),
(1245, 230, 'best_3', '56'),
(1246, 230, '_best_3', 'field_5dfa20b22a169'),
(1247, 230, 'best_title_1', 'Article en vedette 1'),
(1248, 230, '_best_title_1', 'field_5df6ac03defd8'),
(1249, 230, 'best_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1250, 230, '_best_desc_1', 'field_5df6ac22defd9'),
(1251, 230, 'best_title_2', 'Article en vedette 2'),
(1252, 230, '_best_title_2', 'field_5dfa246dfa453'),
(1253, 230, 'best_desc_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1254, 230, '_best_desc_2', 'field_5dfa2491fa454'),
(1255, 230, 'best_title_3', 'Article en vedette 1'),
(1256, 230, '_best_title_3', 'field_5dfa246cfa452'),
(1257, 230, 'best_desc_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1258, 230, '_best_desc_3', 'field_5dfa2493fa455'),
(1259, 230, 'new_1', '63'),
(1260, 230, '_new_1', 'field_5dfa278e86a4a'),
(1261, 230, 'new_2', '52'),
(1262, 230, '_new_2', 'field_5dfa27b786a4b'),
(1263, 230, 'new_3', '67'),
(1264, 230, '_new_3', 'field_5dfa27bd86a4c'),
(1265, 230, 'new_4', '60'),
(1266, 230, '_new_4', 'field_5dfa27c086a4d'),
(1267, 230, 'new_5', '65'),
(1268, 230, '_new_5', 'field_5dfa27c286a4e'),
(1269, 230, 'story_her', '54'),
(1270, 230, '_story_her', 'field_5dfa2f3910edc'),
(1271, 230, 'categorie_1', '64'),
(1272, 230, '_categorie_1', 'field_5df6aca1defdc'),
(1273, 230, 'categorie_2', '53'),
(1274, 230, '_categorie_2', 'field_5dfa31653a253'),
(1275, 230, 'categorie_3', '55'),
(1276, 230, '_categorie_3', 'field_5dfa31673a254'),
(1277, 230, 'background_image', '223'),
(1278, 230, '_background_image', 'field_5dfb9da5b173e'),
(1279, 231, 'slider', ''),
(1280, 231, '_slider', 'field_5df6abbcdefd6'),
(1281, 231, 'best', '65'),
(1282, 231, '_best', 'field_5df6abdcdefd7'),
(1283, 231, 'best_title', ''),
(1284, 231, '_best_title', 'field_5df6ac03defd8'),
(1285, 231, 'best_desc', ''),
(1286, 231, '_best_desc', 'field_5df6ac22defd9'),
(1287, 231, 'story', '66'),
(1288, 231, '_story', 'field_5df6ac62defda'),
(1289, 231, 'story_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis turpis sapien. Vestibulum mollis                     orci cursus nisl pulvinar tempus. Quisque leo orci, scelerisque ut felis ut, viverra euismod augue.                     Ut et urna tincidunt, lobortis odio eget, facilisis lorem. Praesent facilisis leo vel lectus tempor,                     eu tempor odio ornare. Aenean facilisis est et felis eleifend mattis. Nam vulputate blandit lacus,                     et mattis nibh volutpat nec. Nulla ac massa iaculis, fringilla dolor sit amet, euismod justo. Class                     aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam volutpat                     nulla ante, vel pulvinar lorem ultricies in. Quisque eget nulla a enim condimentum tempor a ac arcu.                     In hac habitasse platea dictumst.                      Sed cursus sit amet leo id laoreet. Proin vel feugiat libero. Praesent a purus sed massa facilisis                     efficitur. Maecenas laoreet lobortis sem sed consequat. Integer rutrum risus ac nibh ultrices, ut                     maximus nulla finibus. Sed viverra eleifend odio mattis rhoncus. Sed vehicula vestibulum                     euismod.'),
(1290, 231, '_story_desc', 'field_5df6ac78defdb'),
(1291, 231, 'categories', ''),
(1292, 231, '_categories', 'field_5df6aca1defdc'),
(1293, 231, 'categories_title', ''),
(1294, 231, '_categories_title', 'field_5df6acb2defdd'),
(1295, 231, 'categories_desc', ''),
(1296, 231, '_categories_desc', 'field_5df6acc7defde'),
(1297, 231, 'slider_1', '59'),
(1298, 231, '_slider_1', 'field_5df6abbcdefd6'),
(1299, 231, 'slider_2', '58'),
(1300, 231, '_slider_2', 'field_5dfa1a5ca8876'),
(1301, 231, 'slider_3', '59'),
(1302, 231, '_slider_3', 'field_5dfa1a5da8877'),
(1303, 231, 'img', '59'),
(1304, 231, '_img', 'field_5df6abbcdefd6'),
(1305, 231, 'best_1', '62'),
(1306, 231, '_best_1', 'field_5df6abdcdefd7'),
(1307, 231, 'best_2', '58'),
(1308, 231, '_best_2', 'field_5dfa20af2a168'),
(1309, 231, 'best_3', '56'),
(1310, 231, '_best_3', 'field_5dfa20b22a169'),
(1311, 231, 'best_title_1', 'Article en vedette 1'),
(1312, 231, '_best_title_1', 'field_5df6ac03defd8'),
(1313, 231, 'best_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1314, 231, '_best_desc_1', 'field_5df6ac22defd9'),
(1315, 231, 'best_title_2', 'Article en vedette 2'),
(1316, 231, '_best_title_2', 'field_5dfa246dfa453'),
(1317, 231, 'best_desc_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1318, 231, '_best_desc_2', 'field_5dfa2491fa454'),
(1319, 231, 'best_title_3', 'Article en vedette 1'),
(1320, 231, '_best_title_3', 'field_5dfa246cfa452'),
(1321, 231, 'best_desc_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1322, 231, '_best_desc_3', 'field_5dfa2493fa455'),
(1323, 231, 'new_1', '63'),
(1324, 231, '_new_1', 'field_5dfa278e86a4a'),
(1325, 231, 'new_2', '52'),
(1326, 231, '_new_2', 'field_5dfa27b786a4b'),
(1327, 231, 'new_3', '67'),
(1328, 231, '_new_3', 'field_5dfa27bd86a4c'),
(1329, 231, 'new_4', '60'),
(1330, 231, '_new_4', 'field_5dfa27c086a4d'),
(1331, 231, 'new_5', '65'),
(1332, 231, '_new_5', 'field_5dfa27c286a4e'),
(1333, 231, 'story_her', '212'),
(1334, 231, '_story_her', 'field_5dfa2f3910edc'),
(1335, 231, 'categorie_1', '64'),
(1336, 231, '_categorie_1', 'field_5df6aca1defdc'),
(1337, 231, 'categorie_2', '53'),
(1338, 231, '_categorie_2', 'field_5dfa31653a253'),
(1339, 231, 'categorie_3', '55'),
(1340, 231, '_categorie_3', 'field_5dfa31673a254'),
(1341, 231, 'background_image', '223'),
(1342, 231, '_background_image', 'field_5dfb9da5b173e'),
(1343, 232, 'slider', ''),
(1344, 232, '_slider', 'field_5df6abbcdefd6'),
(1345, 232, 'best', '65'),
(1346, 232, '_best', 'field_5df6abdcdefd7'),
(1347, 232, 'best_title', ''),
(1348, 232, '_best_title', 'field_5df6ac03defd8'),
(1349, 232, 'best_desc', ''),
(1350, 232, '_best_desc', 'field_5df6ac22defd9'),
(1351, 232, 'story', '66'),
(1352, 232, '_story', 'field_5df6ac62defda'),
(1353, 232, 'story_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis turpis sapien. Vestibulum mollis                     orci cursus nisl pulvinar tempus. Quisque leo orci, scelerisque ut felis ut, viverra euismod augue.                     Ut et urna tincidunt, lobortis odio eget, facilisis lorem. Praesent facilisis leo vel lectus tempor,                     eu tempor odio ornare. Aenean facilisis est et felis eleifend mattis. Nam vulputate blandit lacus,                     et mattis nibh volutpat nec. Nulla ac massa iaculis, fringilla dolor sit amet, euismod justo. Class                     aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam volutpat                     nulla ante, vel pulvinar lorem ultricies in. \r\n\r\n\r\nQuisque eget nulla a enim condimentum tempor a ac arcu.                     In hac habitasse platea dictumst.                      Sed cursus sit amet leo id laoreet. Proin vel feugiat libero. Praesent a purus sed massa facilisis                     efficitur. Maecenas laoreet lobortis sem sed consequat. Integer rutrum risus ac nibh ultrices, ut                     maximus nulla finibus. Sed viverra eleifend odio mattis rhoncus. Sed vehicula vestibulum                     euismod.'),
(1354, 232, '_story_desc', 'field_5df6ac78defdb'),
(1355, 232, 'categories', ''),
(1356, 232, '_categories', 'field_5df6aca1defdc'),
(1357, 232, 'categories_title', ''),
(1358, 232, '_categories_title', 'field_5df6acb2defdd'),
(1359, 232, 'categories_desc', ''),
(1360, 232, '_categories_desc', 'field_5df6acc7defde'),
(1361, 232, 'slider_1', '59'),
(1362, 232, '_slider_1', 'field_5df6abbcdefd6'),
(1363, 232, 'slider_2', '58'),
(1364, 232, '_slider_2', 'field_5dfa1a5ca8876'),
(1365, 232, 'slider_3', '59'),
(1366, 232, '_slider_3', 'field_5dfa1a5da8877'),
(1367, 232, 'img', '59'),
(1368, 232, '_img', 'field_5df6abbcdefd6'),
(1369, 232, 'best_1', '62'),
(1370, 232, '_best_1', 'field_5df6abdcdefd7'),
(1371, 232, 'best_2', '58'),
(1372, 232, '_best_2', 'field_5dfa20af2a168'),
(1373, 232, 'best_3', '56'),
(1374, 232, '_best_3', 'field_5dfa20b22a169'),
(1375, 232, 'best_title_1', 'Article en vedette 1'),
(1376, 232, '_best_title_1', 'field_5df6ac03defd8'),
(1377, 232, 'best_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1378, 232, '_best_desc_1', 'field_5df6ac22defd9'),
(1379, 232, 'best_title_2', 'Article en vedette 2'),
(1380, 232, '_best_title_2', 'field_5dfa246dfa453'),
(1381, 232, 'best_desc_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1382, 232, '_best_desc_2', 'field_5dfa2491fa454'),
(1383, 232, 'best_title_3', 'Article en vedette 1'),
(1384, 232, '_best_title_3', 'field_5dfa246cfa452'),
(1385, 232, 'best_desc_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1386, 232, '_best_desc_3', 'field_5dfa2493fa455'),
(1387, 232, 'new_1', '63'),
(1388, 232, '_new_1', 'field_5dfa278e86a4a'),
(1389, 232, 'new_2', '52'),
(1390, 232, '_new_2', 'field_5dfa27b786a4b'),
(1391, 232, 'new_3', '67'),
(1392, 232, '_new_3', 'field_5dfa27bd86a4c'),
(1393, 232, 'new_4', '60'),
(1394, 232, '_new_4', 'field_5dfa27c086a4d'),
(1395, 232, 'new_5', '65'),
(1396, 232, '_new_5', 'field_5dfa27c286a4e'),
(1397, 232, 'story_her', '212'),
(1398, 232, '_story_her', 'field_5dfa2f3910edc'),
(1399, 232, 'categorie_1', '64'),
(1400, 232, '_categorie_1', 'field_5df6aca1defdc'),
(1401, 232, 'categorie_2', '53'),
(1402, 232, '_categorie_2', 'field_5dfa31653a253'),
(1403, 232, 'categorie_3', '55'),
(1404, 232, '_categorie_3', 'field_5dfa31673a254'),
(1405, 232, 'background_image', '223'),
(1406, 232, '_background_image', 'field_5dfb9da5b173e'),
(1407, 71, 'story_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu consectetur dui. Quisque vulputate blandit fermentum. Maecenas tincidunt sed lacus a dictum. Praesent ultrices ullamcorper nunc, id accumsan dui accumsan ut. Ut ullamcorper faucibus ligula a tincidunt. Aenean risus urna, finibus eget mauris nec, vehicula euismod odio. Nullam pellentesque, metus et aliquam rutrum, velit ligula mollis ex, id scelerisque risus justo pretium odio. Suspendisse a lobortis nulla. Nunc efficitur ac dui suscipit faucibus. Nullam pellentesque, metus et aliquam rutrum, velit ligula mollis ex, id scelerisque risus justo pretium odio. Suspendisse a lobortis nulla. Nunc efficitur ac dui suscipit faucibus. '),
(1408, 71, '_story_desc_1', 'field_5df6ac78defdb'),
(1409, 71, 'story_desc_2', 'Vivamus porta condimentum tortor ac gravida. Aliquam eu dui nec neque cursus maximus. Maecenas auctor laoreet purus, vel commodo elit. Donec eu est sit amet enim faucibus finibus. Nulla volutpat sollicitudin arcu, non ultricies est blandit et. Donec accumsan mi tellus, eget tincidunt sem tristique in.'),
(1410, 71, '_story_desc_2', 'field_5dfbaae7acd61'),
(1411, 234, 'slider', ''),
(1412, 234, '_slider', 'field_5df6abbcdefd6'),
(1413, 234, 'best', '65'),
(1414, 234, '_best', 'field_5df6abdcdefd7'),
(1415, 234, 'best_title', ''),
(1416, 234, '_best_title', 'field_5df6ac03defd8'),
(1417, 234, 'best_desc', ''),
(1418, 234, '_best_desc', 'field_5df6ac22defd9'),
(1419, 234, 'story', '66'),
(1420, 234, '_story', 'field_5df6ac62defda'),
(1421, 234, 'story_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis turpis sapien. Vestibulum mollis                     orci cursus nisl pulvinar tempus. Quisque leo orci, scelerisque ut felis ut, viverra euismod augue.                     Ut et urna tincidunt, lobortis odio eget, facilisis lorem. Praesent facilisis leo vel lectus tempor,                     eu tempor odio ornare. Aenean facilisis est et felis eleifend mattis. Nam vulputate blandit lacus,                     et mattis nibh volutpat nec. Nulla ac massa iaculis, fringilla dolor sit amet, euismod justo. Class                     aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam volutpat                     nulla ante, vel pulvinar lorem ultricies in. \r\n\r\n\r\nQuisque eget nulla a enim condimentum tempor a ac arcu.                     In hac habitasse platea dictumst.                      Sed cursus sit amet leo id laoreet. Proin vel feugiat libero. Praesent a purus sed massa facilisis                     efficitur. Maecenas laoreet lobortis sem sed consequat. Integer rutrum risus ac nibh ultrices, ut                     maximus nulla finibus. Sed viverra eleifend odio mattis rhoncus. Sed vehicula vestibulum                     euismod.'),
(1422, 234, '_story_desc', 'field_5df6ac78defdb'),
(1423, 234, 'categories', ''),
(1424, 234, '_categories', 'field_5df6aca1defdc'),
(1425, 234, 'categories_title', ''),
(1426, 234, '_categories_title', 'field_5df6acb2defdd'),
(1427, 234, 'categories_desc', ''),
(1428, 234, '_categories_desc', 'field_5df6acc7defde'),
(1429, 234, 'slider_1', '59'),
(1430, 234, '_slider_1', 'field_5df6abbcdefd6'),
(1431, 234, 'slider_2', '58'),
(1432, 234, '_slider_2', 'field_5dfa1a5ca8876'),
(1433, 234, 'slider_3', '59'),
(1434, 234, '_slider_3', 'field_5dfa1a5da8877'),
(1435, 234, 'img', '59'),
(1436, 234, '_img', 'field_5df6abbcdefd6'),
(1437, 234, 'best_1', '62'),
(1438, 234, '_best_1', 'field_5df6abdcdefd7'),
(1439, 234, 'best_2', '58'),
(1440, 234, '_best_2', 'field_5dfa20af2a168'),
(1441, 234, 'best_3', '56'),
(1442, 234, '_best_3', 'field_5dfa20b22a169'),
(1443, 234, 'best_title_1', 'Article en vedette 1'),
(1444, 234, '_best_title_1', 'field_5df6ac03defd8'),
(1445, 234, 'best_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1446, 234, '_best_desc_1', 'field_5df6ac22defd9'),
(1447, 234, 'best_title_2', 'Article en vedette 2'),
(1448, 234, '_best_title_2', 'field_5dfa246dfa453'),
(1449, 234, 'best_desc_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1450, 234, '_best_desc_2', 'field_5dfa2491fa454'),
(1451, 234, 'best_title_3', 'Article en vedette 1'),
(1452, 234, '_best_title_3', 'field_5dfa246cfa452'),
(1453, 234, 'best_desc_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1454, 234, '_best_desc_3', 'field_5dfa2493fa455'),
(1455, 234, 'new_1', '63'),
(1456, 234, '_new_1', 'field_5dfa278e86a4a'),
(1457, 234, 'new_2', '52'),
(1458, 234, '_new_2', 'field_5dfa27b786a4b'),
(1459, 234, 'new_3', '67'),
(1460, 234, '_new_3', 'field_5dfa27bd86a4c'),
(1461, 234, 'new_4', '60'),
(1462, 234, '_new_4', 'field_5dfa27c086a4d'),
(1463, 234, 'new_5', '65'),
(1464, 234, '_new_5', 'field_5dfa27c286a4e'),
(1465, 234, 'story_her', '212'),
(1466, 234, '_story_her', 'field_5dfa2f3910edc'),
(1467, 234, 'categorie_1', '64'),
(1468, 234, '_categorie_1', 'field_5df6aca1defdc'),
(1469, 234, 'categorie_2', '53'),
(1470, 234, '_categorie_2', 'field_5dfa31653a253'),
(1471, 234, 'categorie_3', '55'),
(1472, 234, '_categorie_3', 'field_5dfa31673a254'),
(1473, 234, 'background_image', '223'),
(1474, 234, '_background_image', 'field_5dfb9da5b173e'),
(1475, 234, 'story_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pelle\r\nntesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui.'),
(1476, 234, '_story_desc_1', 'field_5df6ac78defdb'),
(1477, 234, 'story_desc_2', 'Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravidapurus, ve'),
(1478, 234, '_story_desc_2', 'field_5dfbaae7acd61'),
(1479, 235, 'slider', ''),
(1480, 235, '_slider', 'field_5df6abbcdefd6'),
(1481, 235, 'best', '65'),
(1482, 235, '_best', 'field_5df6abdcdefd7'),
(1483, 235, 'best_title', ''),
(1484, 235, '_best_title', 'field_5df6ac03defd8'),
(1485, 235, 'best_desc', ''),
(1486, 235, '_best_desc', 'field_5df6ac22defd9'),
(1487, 235, 'story', '66'),
(1488, 235, '_story', 'field_5df6ac62defda');
INSERT INTO `kr_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1489, 235, 'story_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis turpis sapien. Vestibulum mollis                     orci cursus nisl pulvinar tempus. Quisque leo orci, scelerisque ut felis ut, viverra euismod augue.                     Ut et urna tincidunt, lobortis odio eget, facilisis lorem. Praesent facilisis leo vel lectus tempor,                     eu tempor odio ornare. Aenean facilisis est et felis eleifend mattis. Nam vulputate blandit lacus,                     et mattis nibh volutpat nec. Nulla ac massa iaculis, fringilla dolor sit amet, euismod justo. Class                     aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam volutpat                     nulla ante, vel pulvinar lorem ultricies in. \r\n\r\n\r\nQuisque eget nulla a enim condimentum tempor a ac arcu.                     In hac habitasse platea dictumst.                      Sed cursus sit amet leo id laoreet. Proin vel feugiat libero. Praesent a purus sed massa facilisis                     efficitur. Maecenas laoreet lobortis sem sed consequat. Integer rutrum risus ac nibh ultrices, ut                     maximus nulla finibus. Sed viverra eleifend odio mattis rhoncus. Sed vehicula vestibulum                     euismod.'),
(1490, 235, '_story_desc', 'field_5df6ac78defdb'),
(1491, 235, 'categories', ''),
(1492, 235, '_categories', 'field_5df6aca1defdc'),
(1493, 235, 'categories_title', ''),
(1494, 235, '_categories_title', 'field_5df6acb2defdd'),
(1495, 235, 'categories_desc', ''),
(1496, 235, '_categories_desc', 'field_5df6acc7defde'),
(1497, 235, 'slider_1', '59'),
(1498, 235, '_slider_1', 'field_5df6abbcdefd6'),
(1499, 235, 'slider_2', '58'),
(1500, 235, '_slider_2', 'field_5dfa1a5ca8876'),
(1501, 235, 'slider_3', '59'),
(1502, 235, '_slider_3', 'field_5dfa1a5da8877'),
(1503, 235, 'img', '59'),
(1504, 235, '_img', 'field_5df6abbcdefd6'),
(1505, 235, 'best_1', '62'),
(1506, 235, '_best_1', 'field_5df6abdcdefd7'),
(1507, 235, 'best_2', '58'),
(1508, 235, '_best_2', 'field_5dfa20af2a168'),
(1509, 235, 'best_3', '56'),
(1510, 235, '_best_3', 'field_5dfa20b22a169'),
(1511, 235, 'best_title_1', 'Article en vedette 1'),
(1512, 235, '_best_title_1', 'field_5df6ac03defd8'),
(1513, 235, 'best_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1514, 235, '_best_desc_1', 'field_5df6ac22defd9'),
(1515, 235, 'best_title_2', 'Article en vedette 2'),
(1516, 235, '_best_title_2', 'field_5dfa246dfa453'),
(1517, 235, 'best_desc_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1518, 235, '_best_desc_2', 'field_5dfa2491fa454'),
(1519, 235, 'best_title_3', 'Article en vedette 1'),
(1520, 235, '_best_title_3', 'field_5dfa246cfa452'),
(1521, 235, 'best_desc_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1522, 235, '_best_desc_3', 'field_5dfa2493fa455'),
(1523, 235, 'new_1', '63'),
(1524, 235, '_new_1', 'field_5dfa278e86a4a'),
(1525, 235, 'new_2', '52'),
(1526, 235, '_new_2', 'field_5dfa27b786a4b'),
(1527, 235, 'new_3', '67'),
(1528, 235, '_new_3', 'field_5dfa27bd86a4c'),
(1529, 235, 'new_4', '60'),
(1530, 235, '_new_4', 'field_5dfa27c086a4d'),
(1531, 235, 'new_5', '65'),
(1532, 235, '_new_5', 'field_5dfa27c286a4e'),
(1533, 235, 'story_her', '212'),
(1534, 235, '_story_her', 'field_5dfa2f3910edc'),
(1535, 235, 'categorie_1', '64'),
(1536, 235, '_categorie_1', 'field_5df6aca1defdc'),
(1537, 235, 'categorie_2', '53'),
(1538, 235, '_categorie_2', 'field_5dfa31653a253'),
(1539, 235, 'categorie_3', '55'),
(1540, 235, '_categorie_3', 'field_5dfa31673a254'),
(1541, 235, 'background_image', '223'),
(1542, 235, '_background_image', 'field_5dfb9da5b173e'),
(1543, 235, 'story_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu consectetur dui. Quisque vulputate blandit fermentum. Maecenas tincidunt sed lacus a dictum. Praesent ultrices ullamcorper nunc, id accumsan dui accumsan ut. Ut ullamcorper faucibus ligula a tincidunt. Aenean risus urna, finibus eget mauris nec, vehicula euismod odio. Nullam pellentesque, metus et aliquam rutrum, velit ligula mollis ex, id scelerisque risus justo pretium odio. Suspendisse a lobortis nulla. Nunc efficitur ac dui suscipit faucibus. Morbi sollicitudin elit ac nunc aliquet scelerisque. Nam pharetra tristique augue et aliquet. Maecenas sit amet molestie nisl. Aenean suscipit in ante et tincidunt.'),
(1544, 235, '_story_desc_1', 'field_5df6ac78defdb'),
(1545, 235, 'story_desc_2', 'Vivamus porta condimentum tortor ac gravida. Aliquam eu dui nec neque cursus maximus. Maecenas auctor laoreet purus, vel commodo elit. Donec eu est sit amet enim faucibus finibus. Nulla volutpat sollicitudin arcu, non ultricies est blandit et. Donec accumsan mi tellus, eget tincidunt sem tristique in.'),
(1546, 235, '_story_desc_2', 'field_5dfbaae7acd61'),
(1547, 236, 'slider', ''),
(1548, 236, '_slider', 'field_5df6abbcdefd6'),
(1549, 236, 'best', '65'),
(1550, 236, '_best', 'field_5df6abdcdefd7'),
(1551, 236, 'best_title', ''),
(1552, 236, '_best_title', 'field_5df6ac03defd8'),
(1553, 236, 'best_desc', ''),
(1554, 236, '_best_desc', 'field_5df6ac22defd9'),
(1555, 236, 'story', '66'),
(1556, 236, '_story', 'field_5df6ac62defda'),
(1557, 236, 'story_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis turpis sapien. Vestibulum mollis                     orci cursus nisl pulvinar tempus. Quisque leo orci, scelerisque ut felis ut, viverra euismod augue.                     Ut et urna tincidunt, lobortis odio eget, facilisis lorem. Praesent facilisis leo vel lectus tempor,                     eu tempor odio ornare. Aenean facilisis est et felis eleifend mattis. Nam vulputate blandit lacus,                     et mattis nibh volutpat nec. Nulla ac massa iaculis, fringilla dolor sit amet, euismod justo. Class                     aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam volutpat                     nulla ante, vel pulvinar lorem ultricies in. \r\n\r\n\r\nQuisque eget nulla a enim condimentum tempor a ac arcu.                     In hac habitasse platea dictumst.                      Sed cursus sit amet leo id laoreet. Proin vel feugiat libero. Praesent a purus sed massa facilisis                     efficitur. Maecenas laoreet lobortis sem sed consequat. Integer rutrum risus ac nibh ultrices, ut                     maximus nulla finibus. Sed viverra eleifend odio mattis rhoncus. Sed vehicula vestibulum                     euismod.'),
(1558, 236, '_story_desc', 'field_5df6ac78defdb'),
(1559, 236, 'categories', ''),
(1560, 236, '_categories', 'field_5df6aca1defdc'),
(1561, 236, 'categories_title', ''),
(1562, 236, '_categories_title', 'field_5df6acb2defdd'),
(1563, 236, 'categories_desc', ''),
(1564, 236, '_categories_desc', 'field_5df6acc7defde'),
(1565, 236, 'slider_1', '59'),
(1566, 236, '_slider_1', 'field_5df6abbcdefd6'),
(1567, 236, 'slider_2', '58'),
(1568, 236, '_slider_2', 'field_5dfa1a5ca8876'),
(1569, 236, 'slider_3', '59'),
(1570, 236, '_slider_3', 'field_5dfa1a5da8877'),
(1571, 236, 'img', '59'),
(1572, 236, '_img', 'field_5df6abbcdefd6'),
(1573, 236, 'best_1', '62'),
(1574, 236, '_best_1', 'field_5df6abdcdefd7'),
(1575, 236, 'best_2', '58'),
(1576, 236, '_best_2', 'field_5dfa20af2a168'),
(1577, 236, 'best_3', '56'),
(1578, 236, '_best_3', 'field_5dfa20b22a169'),
(1579, 236, 'best_title_1', 'Article en vedette 1'),
(1580, 236, '_best_title_1', 'field_5df6ac03defd8'),
(1581, 236, 'best_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1582, 236, '_best_desc_1', 'field_5df6ac22defd9'),
(1583, 236, 'best_title_2', 'Article en vedette 2'),
(1584, 236, '_best_title_2', 'field_5dfa246dfa453'),
(1585, 236, 'best_desc_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1586, 236, '_best_desc_2', 'field_5dfa2491fa454'),
(1587, 236, 'best_title_3', 'Article en vedette 1'),
(1588, 236, '_best_title_3', 'field_5dfa246cfa452'),
(1589, 236, 'best_desc_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1590, 236, '_best_desc_3', 'field_5dfa2493fa455'),
(1591, 236, 'new_1', '63'),
(1592, 236, '_new_1', 'field_5dfa278e86a4a'),
(1593, 236, 'new_2', '52'),
(1594, 236, '_new_2', 'field_5dfa27b786a4b'),
(1595, 236, 'new_3', '67'),
(1596, 236, '_new_3', 'field_5dfa27bd86a4c'),
(1597, 236, 'new_4', '60'),
(1598, 236, '_new_4', 'field_5dfa27c086a4d'),
(1599, 236, 'new_5', '65'),
(1600, 236, '_new_5', 'field_5dfa27c286a4e'),
(1601, 236, 'story_her', '212'),
(1602, 236, '_story_her', 'field_5dfa2f3910edc'),
(1603, 236, 'categorie_1', '64'),
(1604, 236, '_categorie_1', 'field_5df6aca1defdc'),
(1605, 236, 'categorie_2', '53'),
(1606, 236, '_categorie_2', 'field_5dfa31653a253'),
(1607, 236, 'categorie_3', '55'),
(1608, 236, '_categorie_3', 'field_5dfa31673a254'),
(1609, 236, 'background_image', '223'),
(1610, 236, '_background_image', 'field_5dfb9da5b173e'),
(1611, 236, 'story_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu consectetur dui. Quisque vulputate blandit fermentum. Maecenas tincidunt sed lacus a dictum. Praesent ultrices ullamcorper nunc, id accumsan dui accumsan ut. Ut ullamcorper faucibus ligula a tincidunt. Aenean risus urna, finibus eget mauris nec, vehicula euismod odio. Nullam pellentesque, metus et aliquam rutrum, velit ligula mollis ex, id scelerisque risus justo pretium odio. Suspendisse a lobortis nulla. Nunc efficitur ac dui suscipit faucibus. '),
(1612, 236, '_story_desc_1', 'field_5df6ac78defdb'),
(1613, 236, 'story_desc_2', 'Vivamus porta condimentum tortor ac gravida. Aliquam eu dui nec neque cursus maximus. Maecenas auctor laoreet purus, vel commodo elit. Donec eu est sit amet enim faucibus finibus. Nulla volutpat sollicitudin arcu, non ultricies est blandit et. Donec accumsan mi tellus, eget tincidunt sem tristique in.'),
(1614, 236, '_story_desc_2', 'field_5dfbaae7acd61'),
(1615, 237, 'slider', ''),
(1616, 237, '_slider', 'field_5df6abbcdefd6'),
(1617, 237, 'best', '65'),
(1618, 237, '_best', 'field_5df6abdcdefd7'),
(1619, 237, 'best_title', ''),
(1620, 237, '_best_title', 'field_5df6ac03defd8'),
(1621, 237, 'best_desc', ''),
(1622, 237, '_best_desc', 'field_5df6ac22defd9'),
(1623, 237, 'story', '66'),
(1624, 237, '_story', 'field_5df6ac62defda'),
(1625, 237, 'story_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis turpis sapien. Vestibulum mollis                     orci cursus nisl pulvinar tempus. Quisque leo orci, scelerisque ut felis ut, viverra euismod augue.                     Ut et urna tincidunt, lobortis odio eget, facilisis lorem. Praesent facilisis leo vel lectus tempor,                     eu tempor odio ornare. Aenean facilisis est et felis eleifend mattis. Nam vulputate blandit lacus,                     et mattis nibh volutpat nec. Nulla ac massa iaculis, fringilla dolor sit amet, euismod justo. Class                     aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam volutpat                     nulla ante, vel pulvinar lorem ultricies in. \r\n\r\n\r\nQuisque eget nulla a enim condimentum tempor a ac arcu.                     In hac habitasse platea dictumst.                      Sed cursus sit amet leo id laoreet. Proin vel feugiat libero. Praesent a purus sed massa facilisis                     efficitur. Maecenas laoreet lobortis sem sed consequat. Integer rutrum risus ac nibh ultrices, ut                     maximus nulla finibus. Sed viverra eleifend odio mattis rhoncus. Sed vehicula vestibulum                     euismod.'),
(1626, 237, '_story_desc', 'field_5df6ac78defdb'),
(1627, 237, 'categories', ''),
(1628, 237, '_categories', 'field_5df6aca1defdc'),
(1629, 237, 'categories_title', ''),
(1630, 237, '_categories_title', 'field_5df6acb2defdd'),
(1631, 237, 'categories_desc', ''),
(1632, 237, '_categories_desc', 'field_5df6acc7defde'),
(1633, 237, 'slider_1', '59'),
(1634, 237, '_slider_1', 'field_5df6abbcdefd6'),
(1635, 237, 'slider_2', '58'),
(1636, 237, '_slider_2', 'field_5dfa1a5ca8876'),
(1637, 237, 'slider_3', '59'),
(1638, 237, '_slider_3', 'field_5dfa1a5da8877'),
(1639, 237, 'img', '59'),
(1640, 237, '_img', 'field_5df6abbcdefd6'),
(1641, 237, 'best_1', '62'),
(1642, 237, '_best_1', 'field_5df6abdcdefd7'),
(1643, 237, 'best_2', '58'),
(1644, 237, '_best_2', 'field_5dfa20af2a168'),
(1645, 237, 'best_3', '56'),
(1646, 237, '_best_3', 'field_5dfa20b22a169'),
(1647, 237, 'best_title_1', 'Article en vedette 1'),
(1648, 237, '_best_title_1', 'field_5df6ac03defd8'),
(1649, 237, 'best_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1650, 237, '_best_desc_1', 'field_5df6ac22defd9'),
(1651, 237, 'best_title_2', 'Article en vedette 2'),
(1652, 237, '_best_title_2', 'field_5dfa246dfa453'),
(1653, 237, 'best_desc_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1654, 237, '_best_desc_2', 'field_5dfa2491fa454'),
(1655, 237, 'best_title_3', 'Article en vedette 1'),
(1656, 237, '_best_title_3', 'field_5dfa246cfa452'),
(1657, 237, 'best_desc_3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis condimentum elit, in laoreet nunc. Mauris in semper arcu, ornare commodo velit.'),
(1658, 237, '_best_desc_3', 'field_5dfa2493fa455'),
(1659, 237, 'new_1', '63'),
(1660, 237, '_new_1', 'field_5dfa278e86a4a'),
(1661, 237, 'new_2', '52'),
(1662, 237, '_new_2', 'field_5dfa27b786a4b'),
(1663, 237, 'new_3', '67'),
(1664, 237, '_new_3', 'field_5dfa27bd86a4c'),
(1665, 237, 'new_4', '60'),
(1666, 237, '_new_4', 'field_5dfa27c086a4d'),
(1667, 237, 'new_5', '65'),
(1668, 237, '_new_5', 'field_5dfa27c286a4e'),
(1669, 237, 'story_her', '212'),
(1670, 237, '_story_her', 'field_5dfa2f3910edc'),
(1671, 237, 'categorie_1', '64'),
(1672, 237, '_categorie_1', 'field_5df6aca1defdc'),
(1673, 237, 'categorie_2', '53'),
(1674, 237, '_categorie_2', 'field_5dfa31653a253'),
(1675, 237, 'categorie_3', '55'),
(1676, 237, '_categorie_3', 'field_5dfa31673a254'),
(1677, 237, 'background_image', '223'),
(1678, 237, '_background_image', 'field_5dfb9da5b173e'),
(1679, 237, 'story_desc_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu consectetur dui. Quisque vulputate blandit fermentum. Maecenas tincidunt sed lacus a dictum. Praesent ultrices ullamcorper nunc, id accumsan dui accumsan ut. Ut ullamcorper faucibus ligula a tincidunt. Aenean risus urna, finibus eget mauris nec, vehicula euismod odio. Nullam pellentesque, metus et aliquam rutrum, velit ligula mollis ex, id scelerisque risus justo pretium odio. Suspendisse a lobortis nulla. Nunc efficitur ac dui suscipit faucibus. Nullam pellentesque, metus et aliquam rutrum, velit ligula mollis ex, id scelerisque risus justo pretium odio. Suspendisse a lobortis nulla. Nunc efficitur ac dui suscipit faucibus. '),
(1680, 237, '_story_desc_1', 'field_5df6ac78defdb'),
(1681, 237, 'story_desc_2', 'Vivamus porta condimentum tortor ac gravida. Aliquam eu dui nec neque cursus maximus. Maecenas auctor laoreet purus, vel commodo elit. Donec eu est sit amet enim faucibus finibus. Nulla volutpat sollicitudin arcu, non ultricies est blandit et. Donec accumsan mi tellus, eget tincidunt sem tristique in.'),
(1682, 237, '_story_desc_2', 'field_5dfbaae7acd61'),
(1683, 239, 'galerie', '62'),
(1684, 239, '_galerie', 'field_5df88ffe448d0'),
(1685, 239, 'img', '65'),
(1686, 239, '_img', 'field_5df88ce328c10'),
(1687, 240, 'table', 'Afficher le contenu'),
(1688, 240, '_table', 'field_5df67a4ca5136'),
(1689, 240, 'table_img', '67'),
(1690, 240, '_table_img', 'field_5df6860a06a89'),
(1691, 240, 'img', '67'),
(1692, 240, '_img', 'field_5df6860a06a89'),
(1693, 241, 'portrait_img', '54'),
(1694, 241, '_portrait_img', 'field_5dfa557f7c3d6'),
(1695, 241, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1696, 241, '_portrait_desc', 'field_5dfa55e8a00e0'),
(1697, 241, 'atelier_img', '67'),
(1698, 241, '_atelier_img', 'field_5dfa5708b5a32'),
(1699, 241, 'atelier_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1700, 241, '_atelier_desc', 'field_5dfa571bb5a33'),
(1701, 242, '_wp_attached_file', '2019/12/Logo_blanc-1.png'),
(1702, 242, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:162;s:6:\"height\";i:123;s:4:\"file\";s:24:\"2019/12/Logo_blanc-1.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Logo_blanc-1-150x123.png\";s:5:\"width\";i:150;s:6:\"height\";i:123;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Logo_blanc-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"Logo_blanc-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1703, 243, '_edit_last', '1'),
(1704, 243, '_edit_lock', '1576787171:1'),
(1705, 243, '_wp_trash_meta_status', 'publish'),
(1706, 243, '_wp_trash_meta_time', '1576787338'),
(1707, 243, '_wp_desired_post_slug', 'group_5dfbdd1a91cad'),
(1708, 244, '_wp_trash_meta_status', 'publish'),
(1709, 244, '_wp_trash_meta_time', '1576787338'),
(1710, 244, '_wp_desired_post_slug', 'field_5dfbdd1e8fc08'),
(1711, 245, '_wp_trash_meta_status', 'publish'),
(1712, 245, '_wp_trash_meta_time', '1576787338'),
(1713, 245, '_wp_desired_post_slug', 'field_5dfbdd2f8fc09'),
(1714, 246, '_wp_trash_meta_status', 'publish'),
(1715, 246, '_wp_trash_meta_time', '1576787338'),
(1716, 246, '_wp_desired_post_slug', 'field_5dfbdd398fc0a'),
(1717, 254, '_wp_attached_file', '2019/12/dane-deaner-qRfMB-IOQjE-unsplash-e1576843607987.png'),
(1718, 254, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1822;s:6:\"height\";i:399;s:4:\"file\";s:59:\"2019/12/dane-deaner-qRfMB-IOQjE-unsplash-e1576843607987.png\";s:5:\"sizes\";a:12:{s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"dane-deaner-qRfMB-IOQjE-unsplash-e1576843607987-300x66.png\";s:5:\"width\";i:300;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:60:\"dane-deaner-qRfMB-IOQjE-unsplash-e1576843607987-1024x224.png\";s:5:\"width\";i:1024;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"dane-deaner-qRfMB-IOQjE-unsplash-e1576843607987-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:59:\"dane-deaner-qRfMB-IOQjE-unsplash-e1576843607987-768x168.png\";s:5:\"width\";i:768;s:6:\"height\";i:168;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:60:\"dane-deaner-qRfMB-IOQjE-unsplash-e1576843607987-1536x336.png\";s:5:\"width\";i:1536;s:6:\"height\";i:336;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:45:\"dane-deaner-qRfMB-IOQjE-unsplash-2048x391.png\";s:5:\"width\";i:2048;s:6:\"height\";i:391;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:4:{s:4:\"file\";s:59:\"dane-deaner-qRfMB-IOQjE-unsplash-e1576843607987-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:59:\"dane-deaner-qRfMB-IOQjE-unsplash-e1576843607987-600x131.png\";s:5:\"width\";i:600;s:6:\"height\";i:131;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:59:\"dane-deaner-qRfMB-IOQjE-unsplash-e1576843607987-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:59:\"dane-deaner-qRfMB-IOQjE-unsplash-e1576843607987-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:59:\"dane-deaner-qRfMB-IOQjE-unsplash-e1576843607987-600x131.png\";s:5:\"width\";i:600;s:6:\"height\";i:131;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:59:\"dane-deaner-qRfMB-IOQjE-unsplash-e1576843607987-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1719, 18, 'histoire_separator', '222'),
(1720, 18, '_histoire_separator', 'field_5dfbe52f46aa1'),
(1721, 18, 'histoire_info_1', 'LLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies. Sed vitae orci at ante volutpat porta. Maecenas ultrices ex leo, id tempus est ultricies feugiat.'),
(1722, 18, '_histoire_info_1', 'field_5dfbe54246aa2'),
(1723, 18, 'histoire_info_img_1', '215'),
(1724, 18, '_histoire_info_img_1', 'field_5dfbe55946aa4'),
(1725, 18, 'histoire_info_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies. Sed vitae orci at ante volutpat porta. Maecenas ultrices ex leo, id tempus est ultricies feugiat.'),
(1726, 18, '_histoire_info_2', 'field_5dfbe55546aa3'),
(1727, 18, 'histoire_info_img_2', '259'),
(1728, 18, '_histoire_info_img_2', 'field_5dfbe56e46aa5'),
(1729, 255, 'portrait_img', '54'),
(1730, 255, '_portrait_img', 'field_5dfa557f7c3d6'),
(1731, 255, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1732, 255, '_portrait_desc', 'field_5dfa55e8a00e0'),
(1733, 255, 'atelier_img', '212'),
(1734, 255, '_atelier_img', 'field_5dfa5708b5a32'),
(1735, 255, 'atelier_desc', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n\r\nNé d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n\r\nA travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. \r\n\r\nClin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(1736, 255, '_atelier_desc', 'field_5dfa571bb5a33'),
(1737, 255, 'histoire_separator', '254'),
(1738, 255, '_histoire_separator', 'field_5dfbe52f46aa1'),
(1739, 255, 'histoire_info_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1740, 255, '_histoire_info_1', 'field_5dfbe54246aa2'),
(1741, 255, 'histoire_info_img_1', '215'),
(1742, 255, '_histoire_info_img_1', 'field_5dfbe55946aa4'),
(1743, 255, 'histoire_info_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1744, 255, '_histoire_info_2', 'field_5dfbe55546aa3'),
(1745, 255, 'histoire_info_img_2', '192'),
(1746, 255, '_histoire_info_img_2', 'field_5dfbe56e46aa5'),
(1747, 257, 'portrait_img', '54'),
(1748, 257, '_portrait_img', 'field_5dfa557f7c3d6'),
(1749, 257, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1750, 257, '_portrait_desc', 'field_5dfa55e8a00e0'),
(1751, 257, 'atelier_img', '212'),
(1752, 257, '_atelier_img', 'field_5dfa5708b5a32'),
(1753, 257, 'atelier_desc', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n\r\nNé d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n\r\nA travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. \r\n\r\nClin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(1754, 257, '_atelier_desc', 'field_5dfa571bb5a33'),
(1755, 257, 'histoire_separator', '222'),
(1756, 257, '_histoire_separator', 'field_5dfbe52f46aa1'),
(1757, 257, 'histoire_info_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1758, 257, '_histoire_info_1', 'field_5dfbe54246aa2'),
(1759, 257, 'histoire_info_img_1', '215'),
(1760, 257, '_histoire_info_img_1', 'field_5dfbe55946aa4'),
(1761, 257, 'histoire_info_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1762, 257, '_histoire_info_2', 'field_5dfbe55546aa3'),
(1763, 257, 'histoire_info_img_2', '192'),
(1764, 257, '_histoire_info_img_2', 'field_5dfbe56e46aa5'),
(1765, 18, 'separator_im', '222'),
(1766, 18, '_separator_im', 'field_5dfbe52f46aa1'),
(1767, 258, 'portrait_img', '54'),
(1768, 258, '_portrait_img', 'field_5dfa557f7c3d6'),
(1769, 258, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1770, 258, '_portrait_desc', 'field_5dfa55e8a00e0'),
(1771, 258, 'atelier_img', '212'),
(1772, 258, '_atelier_img', 'field_5dfa5708b5a32'),
(1773, 258, 'atelier_desc', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n\r\nNé d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n\r\nA travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. \r\n\r\nClin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(1774, 258, '_atelier_desc', 'field_5dfa571bb5a33'),
(1775, 258, 'histoire_separator', '222'),
(1776, 258, '_histoire_separator', 'field_5dfbe52f46aa1'),
(1777, 258, 'histoire_info_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1778, 258, '_histoire_info_1', 'field_5dfbe54246aa2'),
(1779, 258, 'histoire_info_img_1', '215'),
(1780, 258, '_histoire_info_img_1', 'field_5dfbe55946aa4'),
(1781, 258, 'histoire_info_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1782, 258, '_histoire_info_2', 'field_5dfbe55546aa3'),
(1783, 258, 'histoire_info_img_2', '192'),
(1784, 258, '_histoire_info_img_2', 'field_5dfbe56e46aa5'),
(1785, 258, 'separator_im', '254'),
(1786, 258, '_separator_im', 'field_5dfbe52f46aa1'),
(1787, 259, '_wp_attached_file', '2019/12/behzad-ghaffarian-nhWgZNV85LQ-unsplash.png'),
(1788, 259, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:593;s:6:\"height\";i:411;s:4:\"file\";s:50:\"2019/12/behzad-ghaffarian-nhWgZNV85LQ-unsplash.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:50:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-300x208.png\";s:5:\"width\";i:300;s:6:\"height\";i:208;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:50:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:50:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:50:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:50:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:50:\"behzad-ghaffarian-nhWgZNV85LQ-unsplash-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1789, 260, 'portrait_img', '54'),
(1790, 260, '_portrait_img', 'field_5dfa557f7c3d6'),
(1791, 260, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1792, 260, '_portrait_desc', 'field_5dfa55e8a00e0'),
(1793, 260, 'atelier_img', '212'),
(1794, 260, '_atelier_img', 'field_5dfa5708b5a32'),
(1795, 260, 'atelier_desc', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n\r\nNé d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n\r\nA travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. \r\n\r\nClin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(1796, 260, '_atelier_desc', 'field_5dfa571bb5a33'),
(1797, 260, 'histoire_separator', '222'),
(1798, 260, '_histoire_separator', 'field_5dfbe52f46aa1'),
(1799, 260, 'histoire_info_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1800, 260, '_histoire_info_1', 'field_5dfbe54246aa2'),
(1801, 260, 'histoire_info_img_1', '215'),
(1802, 260, '_histoire_info_img_1', 'field_5dfbe55946aa4'),
(1803, 260, 'histoire_info_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1804, 260, '_histoire_info_2', 'field_5dfbe55546aa3'),
(1805, 260, 'histoire_info_img_2', '259'),
(1806, 260, '_histoire_info_img_2', 'field_5dfbe56e46aa5'),
(1807, 260, 'separator_im', '254'),
(1808, 260, '_separator_im', 'field_5dfbe52f46aa1'),
(1809, 261, 'portrait_img', '54'),
(1810, 261, '_portrait_img', 'field_5dfa557f7c3d6'),
(1811, 261, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1812, 261, '_portrait_desc', 'field_5dfa55e8a00e0'),
(1813, 261, 'atelier_img', '212'),
(1814, 261, '_atelier_img', 'field_5dfa5708b5a32'),
(1815, 261, 'atelier_desc', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n\r\nNé d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n\r\nA travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. \r\n\r\nClin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(1816, 261, '_atelier_desc', 'field_5dfa571bb5a33'),
(1817, 261, 'histoire_separator', '222'),
(1818, 261, '_histoire_separator', 'field_5dfbe52f46aa1'),
(1819, 261, 'histoire_info_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1820, 261, '_histoire_info_1', 'field_5dfbe54246aa2'),
(1821, 261, 'histoire_info_img_1', '215'),
(1822, 261, '_histoire_info_img_1', 'field_5dfbe55946aa4'),
(1823, 261, 'histoire_info_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1824, 261, '_histoire_info_2', 'field_5dfbe55546aa3'),
(1825, 261, 'histoire_info_img_2', '259'),
(1826, 261, '_histoire_info_img_2', 'field_5dfbe56e46aa5'),
(1827, 261, 'separator_im', '222'),
(1828, 261, '_separator_im', 'field_5dfbe52f46aa1'),
(1829, 18, 'separateur_img', '254'),
(1830, 18, '_separateur_img', 'field_5dfbf05f7da31'),
(1831, 263, 'portrait_img', '54'),
(1832, 263, '_portrait_img', 'field_5dfa557f7c3d6'),
(1833, 263, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1834, 263, '_portrait_desc', 'field_5dfa55e8a00e0'),
(1835, 263, 'atelier_img', '212'),
(1836, 263, '_atelier_img', 'field_5dfa5708b5a32'),
(1837, 263, 'atelier_desc', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n\r\nNé d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n\r\nA travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. \r\n\r\nClin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(1838, 263, '_atelier_desc', 'field_5dfa571bb5a33'),
(1839, 263, 'histoire_separator', '222'),
(1840, 263, '_histoire_separator', 'field_5dfbe52f46aa1'),
(1841, 263, 'histoire_info_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1842, 263, '_histoire_info_1', 'field_5dfbe54246aa2'),
(1843, 263, 'histoire_info_img_1', '215'),
(1844, 263, '_histoire_info_img_1', 'field_5dfbe55946aa4');
INSERT INTO `kr_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1845, 263, 'histoire_info_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1846, 263, '_histoire_info_2', 'field_5dfbe55546aa3'),
(1847, 263, 'histoire_info_img_2', '259'),
(1848, 263, '_histoire_info_img_2', 'field_5dfbe56e46aa5'),
(1849, 263, 'separator_im', '222'),
(1850, 263, '_separator_im', 'field_5dfbe52f46aa1'),
(1851, 263, 'separateur_img', '254'),
(1852, 263, '_separateur_img', 'field_5dfbf05f7da31'),
(1853, 268, '_edit_last', '1'),
(1854, 268, '_edit_lock', '1576833743:1'),
(1855, 268, '_regular_price', '160'),
(1856, 268, 'total_sales', '0'),
(1857, 268, '_tax_status', 'taxable'),
(1858, 268, '_tax_class', ''),
(1859, 268, '_manage_stock', 'no'),
(1860, 268, '_backorders', 'no'),
(1861, 268, '_sold_individually', 'no'),
(1862, 268, '_virtual', 'no'),
(1863, 268, '_downloadable', 'no'),
(1864, 268, '_download_limit', '-1'),
(1865, 268, '_download_expiry', '-1'),
(1866, 268, '_stock', NULL),
(1867, 268, '_stock_status', 'instock'),
(1868, 268, '_wc_average_rating', '0'),
(1869, 268, '_wc_review_count', '0'),
(1870, 268, '_product_version', '3.8.1'),
(1871, 268, '_price', '160'),
(1872, 264, '_edit_lock', '1576835262:1'),
(1873, 268, '_thumbnail_id', '214'),
(1874, 271, '_edit_last', '1'),
(1875, 271, '_edit_lock', '1578562724:1'),
(1876, 271, '_thumbnail_id', '211'),
(1877, 271, 'total_sales', '0'),
(1878, 271, '_tax_status', 'taxable'),
(1879, 271, '_tax_class', ''),
(1880, 271, '_manage_stock', 'no'),
(1881, 271, '_backorders', 'no'),
(1882, 271, '_sold_individually', 'no'),
(1883, 271, '_virtual', 'no'),
(1884, 271, '_downloadable', 'no'),
(1885, 271, '_download_limit', '-1'),
(1886, 271, '_download_expiry', '-1'),
(1887, 271, '_stock', NULL),
(1888, 271, '_stock_status', 'instock'),
(1889, 271, '_wc_average_rating', '0'),
(1890, 271, '_wc_review_count', '0'),
(1891, 271, '_product_version', '3.8.1'),
(1892, 271, '_regular_price', '100'),
(1893, 271, '_price', '100'),
(1894, 266, '_edit_lock', '1578562705:1'),
(1895, 266, '_wp_page_template', ''),
(1896, 266, '_edit_last', '1'),
(1897, 266, 'slider_1', ''),
(1898, 266, '_slider_1', 'field_5df6abbcdefd6'),
(1899, 266, 'slider_2', ''),
(1900, 266, '_slider_2', 'field_5dfa1a5ca8876'),
(1901, 266, 'slider_3', ''),
(1902, 266, '_slider_3', 'field_5dfa1a5da8877'),
(1903, 266, 'best_1', ''),
(1904, 266, '_best_1', 'field_5df6abdcdefd7'),
(1905, 266, 'best_title_1', ''),
(1906, 266, '_best_title_1', 'field_5df6ac03defd8'),
(1907, 266, 'best_2', ''),
(1908, 266, '_best_2', 'field_5dfa20af2a168'),
(1909, 266, 'best_title_2', ''),
(1910, 266, '_best_title_2', 'field_5dfa246dfa453'),
(1911, 266, 'best_3', ''),
(1912, 266, '_best_3', 'field_5dfa20b22a169'),
(1913, 266, 'best_title_3', ''),
(1914, 266, '_best_title_3', 'field_5dfa246cfa452'),
(1915, 266, 'new_1', ''),
(1916, 266, '_new_1', 'field_5dfa278e86a4a'),
(1917, 266, 'new_2', ''),
(1918, 266, '_new_2', 'field_5dfa27b786a4b'),
(1919, 266, 'new_3', ''),
(1920, 266, '_new_3', 'field_5dfa27bd86a4c'),
(1921, 266, 'new_4', ''),
(1922, 266, '_new_4', 'field_5dfa27c086a4d'),
(1923, 266, 'new_5', ''),
(1924, 266, '_new_5', 'field_5dfa27c286a4e'),
(1925, 266, 'story', ''),
(1926, 266, '_story', 'field_5df6ac62defda'),
(1927, 266, 'story_her', ''),
(1928, 266, '_story_her', 'field_5dfa2f3910edc'),
(1929, 266, 'story_desc_1', ''),
(1930, 266, '_story_desc_1', 'field_5df6ac78defdb'),
(1931, 266, 'story_desc_2', ''),
(1932, 266, '_story_desc_2', 'field_5dfbaae7acd61'),
(1933, 266, 'categorie_1', ''),
(1934, 266, '_categorie_1', 'field_5df6aca1defdc'),
(1935, 266, 'categorie_2', ''),
(1936, 266, '_categorie_2', 'field_5dfa31653a253'),
(1937, 266, 'categorie_3', ''),
(1938, 266, '_categorie_3', 'field_5dfa31673a254'),
(1939, 266, 'background_image', ''),
(1940, 266, '_background_image', 'field_5dfb9da5b173e'),
(1941, 273, 'slider_1', ''),
(1942, 273, '_slider_1', 'field_5df6abbcdefd6'),
(1943, 273, 'slider_2', ''),
(1944, 273, '_slider_2', 'field_5dfa1a5ca8876'),
(1945, 273, 'slider_3', ''),
(1946, 273, '_slider_3', 'field_5dfa1a5da8877'),
(1947, 273, 'best_1', ''),
(1948, 273, '_best_1', 'field_5df6abdcdefd7'),
(1949, 273, 'best_title_1', ''),
(1950, 273, '_best_title_1', 'field_5df6ac03defd8'),
(1951, 273, 'best_2', ''),
(1952, 273, '_best_2', 'field_5dfa20af2a168'),
(1953, 273, 'best_title_2', ''),
(1954, 273, '_best_title_2', 'field_5dfa246dfa453'),
(1955, 273, 'best_3', ''),
(1956, 273, '_best_3', 'field_5dfa20b22a169'),
(1957, 273, 'best_title_3', ''),
(1958, 273, '_best_title_3', 'field_5dfa246cfa452'),
(1959, 273, 'new_1', ''),
(1960, 273, '_new_1', 'field_5dfa278e86a4a'),
(1961, 273, 'new_2', ''),
(1962, 273, '_new_2', 'field_5dfa27b786a4b'),
(1963, 273, 'new_3', ''),
(1964, 273, '_new_3', 'field_5dfa27bd86a4c'),
(1965, 273, 'new_4', ''),
(1966, 273, '_new_4', 'field_5dfa27c086a4d'),
(1967, 273, 'new_5', ''),
(1968, 273, '_new_5', 'field_5dfa27c286a4e'),
(1969, 273, 'story', ''),
(1970, 273, '_story', 'field_5df6ac62defda'),
(1971, 273, 'story_her', ''),
(1972, 273, '_story_her', 'field_5dfa2f3910edc'),
(1973, 273, 'story_desc_1', ''),
(1974, 273, '_story_desc_1', 'field_5df6ac78defdb'),
(1975, 273, 'story_desc_2', ''),
(1976, 273, '_story_desc_2', 'field_5dfbaae7acd61'),
(1977, 273, 'categorie_1', ''),
(1978, 273, '_categorie_1', 'field_5df6aca1defdc'),
(1979, 273, 'categorie_2', ''),
(1980, 273, '_categorie_2', 'field_5dfa31653a253'),
(1981, 273, 'categorie_3', ''),
(1982, 273, '_categorie_3', 'field_5dfa31673a254'),
(1983, 273, 'background_image', ''),
(1984, 273, '_background_image', 'field_5dfb9da5b173e'),
(1985, 18, 'atelier_desc_para1', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n'),
(1986, 18, '_atelier_desc_para1', 'field_5dfa571bb5a33'),
(1987, 18, 'atelier_desc_para2', 'Né d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n'),
(1988, 18, '_atelier_desc_para2', 'field_5dfcb09a25f81'),
(1989, 18, 'atelier_desc_para3', 'A travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. '),
(1990, 18, '_atelier_desc_para3', 'field_5dfcb0a625f82'),
(1991, 18, 'atelier_desc_para4', 'Clin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(1992, 18, '_atelier_desc_para4', 'field_5dfcb0ba40fba'),
(1993, 277, 'portrait_img', '54'),
(1994, 277, '_portrait_img', 'field_5dfa557f7c3d6'),
(1995, 277, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(1996, 277, '_portrait_desc', 'field_5dfa55e8a00e0'),
(1997, 277, 'atelier_img', '212'),
(1998, 277, '_atelier_img', 'field_5dfa5708b5a32'),
(1999, 277, 'atelier_desc', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n\r\nNé d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n\r\nA travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. \r\n\r\nClin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(2000, 277, '_atelier_desc', 'field_5dfa571bb5a33'),
(2001, 277, 'histoire_separator', '222'),
(2002, 277, '_histoire_separator', 'field_5dfbe52f46aa1'),
(2003, 277, 'histoire_info_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(2004, 277, '_histoire_info_1', 'field_5dfbe54246aa2'),
(2005, 277, 'histoire_info_img_1', '215'),
(2006, 277, '_histoire_info_img_1', 'field_5dfbe55946aa4'),
(2007, 277, 'histoire_info_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(2008, 277, '_histoire_info_2', 'field_5dfbe55546aa3'),
(2009, 277, 'histoire_info_img_2', '259'),
(2010, 277, '_histoire_info_img_2', 'field_5dfbe56e46aa5'),
(2011, 277, 'separator_im', '222'),
(2012, 277, '_separator_im', 'field_5dfbe52f46aa1'),
(2013, 277, 'separateur_img', '254'),
(2014, 277, '_separateur_img', 'field_5dfbf05f7da31'),
(2015, 277, 'atelier_desc_para1', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n'),
(2016, 277, '_atelier_desc_para1', 'field_5dfa571bb5a33'),
(2017, 277, 'atelier_desc_para2', 'Né d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n'),
(2018, 277, '_atelier_desc_para2', 'field_5dfcb09a25f81'),
(2019, 277, 'atelier_desc_para3', 'A travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. '),
(2020, 277, '_atelier_desc_para3', 'field_5dfcb0a625f82'),
(2021, 277, 'atelier_desc_para4', 'Clin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(2022, 277, '_atelier_desc_para4', 'field_5dfcb0ba40fba'),
(2023, 278, 'portrait_img', '54'),
(2024, 278, '_portrait_img', 'field_5dfa557f7c3d6'),
(2025, 278, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(2026, 278, '_portrait_desc', 'field_5dfa55e8a00e0'),
(2027, 278, 'atelier_img', '212'),
(2028, 278, '_atelier_img', 'field_5dfa5708b5a32'),
(2029, 278, 'atelier_desc', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n\r\nNé d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n\r\nA travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. \r\n\r\nClin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(2030, 278, '_atelier_desc', 'field_5dfa571bb5a33'),
(2031, 278, 'histoire_separator', '222'),
(2032, 278, '_histoire_separator', 'field_5dfbe52f46aa1'),
(2033, 278, 'histoire_info_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(2034, 278, '_histoire_info_1', 'field_5dfbe54246aa2'),
(2035, 278, 'histoire_info_img_1', '215'),
(2036, 278, '_histoire_info_img_1', 'field_5dfbe55946aa4'),
(2037, 278, 'histoire_info_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(2038, 278, '_histoire_info_2', 'field_5dfbe55546aa3'),
(2039, 278, 'histoire_info_img_2', '259'),
(2040, 278, '_histoire_info_img_2', 'field_5dfbe56e46aa5'),
(2041, 278, 'separator_im', '222'),
(2042, 278, '_separator_im', 'field_5dfbe52f46aa1'),
(2043, 278, 'separateur_img', '254'),
(2044, 278, '_separateur_img', 'field_5dfbf05f7da31'),
(2045, 278, 'atelier_desc_para1', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n'),
(2046, 278, '_atelier_desc_para1', 'field_5dfa571bb5a33'),
(2047, 278, 'atelier_desc_para2', 'Né d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n'),
(2048, 278, '_atelier_desc_para2', 'field_5dfcb09a25f81'),
(2049, 278, 'atelier_desc_para3', 'A travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. '),
(2050, 278, '_atelier_desc_para3', 'field_5dfcb0a625f82'),
(2051, 278, 'atelier_desc_para4', 'Clin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(2052, 278, '_atelier_desc_para4', 'field_5dfcb0ba40fba'),
(2053, 254, '_wp_attachment_backup_sizes', 'a:13:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:2101;s:6:\"height\";i:401;s:4:\"file\";s:36:\"dane-deaner-qRfMB-IOQjE-unsplash.png\";}s:14:\"thumbnail-orig\";a:4:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"medium-orig\";a:4:{s:4:\"file\";s:43:\"dane-deaner-qRfMB-IOQjE-unsplash-300x57.png\";s:5:\"width\";i:300;s:6:\"height\";i:57;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"medium_large-orig\";a:4:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-768x147.png\";s:5:\"width\";i:768;s:6:\"height\";i:147;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"large-orig\";a:4:{s:4:\"file\";s:45:\"dane-deaner-qRfMB-IOQjE-unsplash-1024x195.png\";s:5:\"width\";i:1024;s:6:\"height\";i:195;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"1536x1536-orig\";a:4:{s:4:\"file\";s:45:\"dane-deaner-qRfMB-IOQjE-unsplash-1536x293.png\";s:5:\"width\";i:1536;s:6:\"height\";i:293;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"2048x2048-orig\";a:4:{s:4:\"file\";s:45:\"dane-deaner-qRfMB-IOQjE-unsplash-2048x391.png\";s:5:\"width\";i:2048;s:6:\"height\";i:391;s:9:\"mime-type\";s:9:\"image/png\";}s:26:\"woocommerce_thumbnail-orig\";a:5:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:23:\"woocommerce_single-orig\";a:4:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-600x115.png\";s:5:\"width\";i:600;s:6:\"height\";i:115;s:9:\"mime-type\";s:9:\"image/png\";}s:34:\"woocommerce_gallery_thumbnail-orig\";a:4:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:17:\"shop_catalog-orig\";a:4:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"shop_single-orig\";a:4:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-600x115.png\";s:5:\"width\";i:600;s:6:\"height\";i:115;s:9:\"mime-type\";s:9:\"image/png\";}s:19:\"shop_thumbnail-orig\";a:4:{s:4:\"file\";s:44:\"dane-deaner-qRfMB-IOQjE-unsplash-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}'),
(2054, 279, 'portrait_img', '54'),
(2055, 279, '_portrait_img', 'field_5dfa557f7c3d6'),
(2056, 279, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(2057, 279, '_portrait_desc', 'field_5dfa55e8a00e0'),
(2058, 279, 'atelier_img', '212'),
(2059, 279, '_atelier_img', 'field_5dfa5708b5a32'),
(2060, 279, 'atelier_desc', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n\r\nNé d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n\r\nA travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. \r\n\r\nClin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(2061, 279, '_atelier_desc', 'field_5dfa571bb5a33'),
(2062, 279, 'histoire_separator', '222'),
(2063, 279, '_histoire_separator', 'field_5dfbe52f46aa1'),
(2064, 279, 'histoire_info_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(2065, 279, '_histoire_info_1', 'field_5dfbe54246aa2'),
(2066, 279, 'histoire_info_img_1', '215'),
(2067, 279, '_histoire_info_img_1', 'field_5dfbe55946aa4'),
(2068, 279, 'histoire_info_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(2069, 279, '_histoire_info_2', 'field_5dfbe55546aa3'),
(2070, 279, 'histoire_info_img_2', '259'),
(2071, 279, '_histoire_info_img_2', 'field_5dfbe56e46aa5'),
(2072, 279, 'separator_im', '222'),
(2073, 279, '_separator_im', 'field_5dfbe52f46aa1'),
(2074, 279, 'separateur_img', '254'),
(2075, 279, '_separateur_img', 'field_5dfbf05f7da31'),
(2076, 279, 'atelier_desc_para1', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n'),
(2077, 279, '_atelier_desc_para1', 'field_5dfa571bb5a33'),
(2078, 279, 'atelier_desc_para2', 'Né d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n'),
(2079, 279, '_atelier_desc_para2', 'field_5dfcb09a25f81'),
(2080, 279, 'atelier_desc_para3', 'A travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. '),
(2081, 279, '_atelier_desc_para3', 'field_5dfcb0a625f82'),
(2082, 279, 'atelier_desc_para4', 'Clin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(2083, 279, '_atelier_desc_para4', 'field_5dfcb0ba40fba'),
(2084, 280, 'portrait_img', '54'),
(2085, 280, '_portrait_img', 'field_5dfa557f7c3d6'),
(2086, 280, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(2087, 280, '_portrait_desc', 'field_5dfa55e8a00e0'),
(2088, 280, 'atelier_img', '212'),
(2089, 280, '_atelier_img', 'field_5dfa5708b5a32'),
(2090, 280, 'atelier_desc', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n\r\nNé d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n\r\nA travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. \r\n\r\nClin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(2091, 280, '_atelier_desc', 'field_5dfa571bb5a33'),
(2092, 280, 'histoire_separator', '222'),
(2093, 280, '_histoire_separator', 'field_5dfbe52f46aa1'),
(2094, 280, 'histoire_info_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(2095, 280, '_histoire_info_1', 'field_5dfbe54246aa2'),
(2096, 280, 'histoire_info_img_1', '215'),
(2097, 280, '_histoire_info_img_1', 'field_5dfbe55946aa4'),
(2098, 280, 'histoire_info_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(2099, 280, '_histoire_info_2', 'field_5dfbe55546aa3'),
(2100, 280, 'histoire_info_img_2', '259'),
(2101, 280, '_histoire_info_img_2', 'field_5dfbe56e46aa5'),
(2102, 280, 'separator_im', '222'),
(2103, 280, '_separator_im', 'field_5dfbe52f46aa1'),
(2104, 280, 'separateur_img', '254'),
(2105, 280, '_separateur_img', 'field_5dfbf05f7da31'),
(2106, 280, 'atelier_desc_para1', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n'),
(2107, 280, '_atelier_desc_para1', 'field_5dfa571bb5a33'),
(2108, 280, 'atelier_desc_para2', 'Né d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n'),
(2109, 280, '_atelier_desc_para2', 'field_5dfcb09a25f81'),
(2110, 280, 'atelier_desc_para3', 'A travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. '),
(2111, 280, '_atelier_desc_para3', 'field_5dfcb0a625f82'),
(2112, 280, 'atelier_desc_para4', 'Clin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(2113, 280, '_atelier_desc_para4', 'field_5dfcb0ba40fba'),
(2114, 281, 'portrait_img', '54'),
(2115, 281, '_portrait_img', 'field_5dfa557f7c3d6'),
(2116, 281, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(2117, 281, '_portrait_desc', 'field_5dfa55e8a00e0'),
(2118, 281, 'atelier_img', '212'),
(2119, 281, '_atelier_img', 'field_5dfa5708b5a32'),
(2120, 281, 'atelier_desc', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n\r\nNé d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n\r\nA travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. \r\n\r\nClin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(2121, 281, '_atelier_desc', 'field_5dfa571bb5a33'),
(2122, 281, 'histoire_separator', '222'),
(2123, 281, '_histoire_separator', 'field_5dfbe52f46aa1'),
(2124, 281, 'histoire_info_1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(2125, 281, '_histoire_info_1', 'field_5dfbe54246aa2'),
(2126, 281, 'histoire_info_img_1', '215'),
(2127, 281, '_histoire_info_img_1', 'field_5dfbe55946aa4'),
(2128, 281, 'histoire_info_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(2129, 281, '_histoire_info_2', 'field_5dfbe55546aa3'),
(2130, 281, 'histoire_info_img_2', '259'),
(2131, 281, '_histoire_info_img_2', 'field_5dfbe56e46aa5'),
(2132, 281, 'separator_im', '222'),
(2133, 281, '_separator_im', 'field_5dfbe52f46aa1'),
(2134, 281, 'separateur_img', '254'),
(2135, 281, '_separateur_img', 'field_5dfbf05f7da31'),
(2136, 281, 'atelier_desc_para1', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n'),
(2137, 281, '_atelier_desc_para1', 'field_5dfa571bb5a33'),
(2138, 281, 'atelier_desc_para2', 'Né d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n'),
(2139, 281, '_atelier_desc_para2', 'field_5dfcb09a25f81'),
(2140, 281, 'atelier_desc_para3', 'A travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. '),
(2141, 281, '_atelier_desc_para3', 'field_5dfcb0a625f82'),
(2142, 281, 'atelier_desc_para4', 'Clin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(2143, 281, '_atelier_desc_para4', 'field_5dfcb0ba40fba'),
(2144, 282, 'portrait_img', '54'),
(2145, 282, '_portrait_img', 'field_5dfa557f7c3d6'),
(2146, 282, 'portrait_desc', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies'),
(2147, 282, '_portrait_desc', 'field_5dfa55e8a00e0'),
(2148, 282, 'atelier_img', '212'),
(2149, 282, '_atelier_img', 'field_5dfa5708b5a32'),
(2150, 282, 'atelier_desc', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n\r\nNé d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n\r\nA travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. \r\n\r\nClin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(2151, 282, '_atelier_desc', 'field_5dfa571bb5a33'),
(2152, 282, 'histoire_separator', '222'),
(2153, 282, '_histoire_separator', 'field_5dfbe52f46aa1'),
(2154, 282, 'histoire_info_1', 'LLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies. Sed vitae orci at ante volutpat porta. Maecenas ultrices ex leo, id tempus est ultricies feugiat.'),
(2155, 282, '_histoire_info_1', 'field_5dfbe54246aa2'),
(2156, 282, 'histoire_info_img_1', '215'),
(2157, 282, '_histoire_info_img_1', 'field_5dfbe55946aa4'),
(2158, 282, 'histoire_info_2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus venenatis et enim et faucibus. Proin ultrices ipsum nisi, pellentesque efficitur sem pulvinar vel. In egestas, odio ut dictum rutrum, odio lectus dignissim odio, ac malesuada augue sem quis justo. Donec sed nisl dapibus, sodales eros in, imperdiet dui. Duis auctor felis non risus accumsan, quis gravida risus auctor. In hac habitasse platea dictumst. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur gravida faucibus odio eget tempor. In eget lacinia diam. Nam vitae sagittis velit, non vestibulum turpis. Mauris non vestibulum risus. Fusce imperdiet facilisis enim, a aliquam sapien tincidunt sed. Nunc lobortis at dolor eget dictum. Maecenas cursus vel velit non ultricies. Sed vitae orci at ante volutpat porta. Maecenas ultrices ex leo, id tempus est ultricies feugiat.'),
(2159, 282, '_histoire_info_2', 'field_5dfbe55546aa3'),
(2160, 282, 'histoire_info_img_2', '259'),
(2161, 282, '_histoire_info_img_2', 'field_5dfbe56e46aa5'),
(2162, 282, 'separator_im', '222'),
(2163, 282, '_separator_im', 'field_5dfbe52f46aa1'),
(2164, 282, 'separateur_img', '254'),
(2165, 282, '_separateur_img', 'field_5dfbf05f7da31'),
(2166, 282, 'atelier_desc_para1', 'L’atelier kerako est une jeune marque francaise de mobilier et d’objets de décoration.  \r\n'),
(2167, 282, '_atelier_desc_para1', 'field_5dfa571bb5a33'),
(2168, 282, 'atelier_desc_para2', 'Né d’une envie d’autre chose et d’un besoin de sens, ATELIER KERAKO propose des créations originales ainsi que des objets vintages restaurés ou transformés dans un style éclectique et optimiste. \r\n'),
(2169, 282, '_atelier_desc_para2', 'field_5dfcb09a25f81'),
(2170, 282, 'atelier_desc_para3', 'A travers une démarche éthique (utilisation de bois certifiés et contrôlés, utilisation de produits respectueux de l’environnement, fabrication française et artisanale), nous souhaitons que chaque client puisse consommer responsable et réduire son impact sur l’environnement tout en se faisant plaisir. '),
(2171, 282, '_atelier_desc_para3', 'field_5dfcb0a625f82'),
(2172, 282, 'atelier_desc_para4', 'Clin d’œil à la Nouvelle Zélande, à sa nature préservée et protégée et à sa langue maori : notre nom est la contraction de Kē, qui signifie différent, autre, et de Rākau, l’arbre. '),
(2173, 282, '_atelier_desc_para4', 'field_5dfcb0ba40fba'),
(2174, 26, '_edit_last', '1'),
(2175, 26, 'tel', '06.06.06.06.06'),
(2176, 26, '_tel', 'field_5dfccc7ec482c'),
(2177, 26, 'mail', 'test.test@gmail.com'),
(2178, 26, '_mail', 'field_5dfccc98c482d'),
(2179, 285, 'tel', ''),
(2180, 285, '_tel', 'field_5dfccc7ec482c'),
(2181, 285, 'mail', ''),
(2182, 285, '_mail', 'field_5dfccc98c482d'),
(2183, 286, 'tel', '06.06.06.06.06'),
(2184, 286, '_tel', 'field_5dfccc7ec482c'),
(2185, 286, 'mail', 'test.test@gmail.com'),
(2186, 286, '_mail', 'field_5dfccc98c482d'),
(2187, 267, '_edit_lock', '1578563827:1'),
(2188, 267, '_wp_page_template', '');

-- --------------------------------------------------------

--
-- Structure de la table `kr_posts`
--

CREATE TABLE `kr_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `kr_posts`
--

INSERT INTO `kr_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-12-05 10:10:19', '2019-12-05 09:10:19', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>fffffffffffffff</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2019-12-05 11:32:54', '2019-12-05 10:32:54', '', 0, 'http://localhost:8888/kerako/?p=1', 0, 'post', '', 1),
(2, 1, '2019-12-05 10:10:19', '2019-12-05 09:10:19', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost:8888/kerako/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2019-12-17 09:28:55', '2019-12-17 08:28:55', '', 0, 'http://localhost:8888/kerako/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-12-05 10:10:19', '2019-12-05 09:10:19', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost:8888/kerako.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous vous rendez sur la page de connexion, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2019-12-05 10:10:19', '2019-12-05 09:10:19', '', 0, 'http://localhost:8888/kerako/?page_id=3', 0, 'page', '', 0),
(5, 1, '2019-12-05 11:17:39', '2019-12-05 10:17:39', '', 'essai article', '', 'publish', 'open', 'open', '', 'essai-article', '', '', '2019-12-05 11:17:39', '2019-12-05 10:17:39', '', 0, 'http://localhost:8888/kerako/?p=5', 0, 'post', '', 0),
(6, 1, '2019-12-05 11:17:39', '2019-12-05 10:17:39', '', 'essai article', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2019-12-05 11:17:39', '2019-12-05 10:17:39', '', 5, 'http://localhost:8888/kerako/2019/12/05/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2019-12-05 11:32:54', '2019-12-05 10:32:54', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>fffffffffffffff</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-12-05 11:32:54', '2019-12-05 10:32:54', '', 1, 'http://localhost:8888/kerako/2019/12/05/1-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2019-12-12 09:32:38', '0000-00-00 00:00:00', '', 'Accueil', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-12 09:32:38', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/kerako/?p=8', 1, 'nav_menu_item', '', 0),
(9, 1, '2019-12-12 09:32:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-12 09:32:38', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/kerako/?p=9', 1, 'nav_menu_item', '', 0),
(10, 1, '2019-12-12 09:38:36', '2019-12-12 08:38:36', '', 'Création', '', 'publish', 'closed', 'closed', '', 'creation', '', '', '2019-12-19 18:03:20', '2019-12-19 17:03:20', '', 0, 'http://localhost:8888/kerako/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-12-12 09:38:36', '2019-12-12 08:38:36', '', 'Création', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-12 09:38:36', '2019-12-12 08:38:36', '', 10, 'http://localhost:8888/kerako/2019/12/12/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-12-12 09:39:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-12 09:39:02', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/kerako/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2019-12-12 09:40:27', '2019-12-12 08:40:27', '', 'Upcycling', '', 'publish', 'closed', 'closed', '', 'realisations', '', '', '2019-12-19 18:03:35', '2019-12-19 17:03:35', '', 0, 'http://localhost:8888/kerako/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-12-12 09:40:27', '2019-12-12 08:40:27', '', 'Réalisations', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-12-12 09:40:27', '2019-12-12 08:40:27', '', 13, 'http://localhost:8888/kerako/2019/12/12/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-12-12 09:40:36', '2019-12-12 08:40:36', '', 'Créations', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-12 09:40:36', '2019-12-12 08:40:36', '', 10, 'http://localhost:8888/kerako/2019/12/12/10-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-12-12 09:40:47', '2019-12-12 08:40:47', '', 'Vintages', '', 'publish', 'closed', 'closed', '', 'vintage', '', '', '2019-12-19 18:03:48', '2019-12-19 17:03:48', '', 0, 'http://localhost:8888/kerako/?page_id=16', 0, 'page', '', 0),
(17, 1, '2019-12-12 09:40:47', '2019-12-12 08:40:47', '', 'Vintage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-12 09:40:47', '2019-12-12 08:40:47', '', 16, 'http://localhost:8888/kerako/2019/12/12/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-12-12 09:41:04', '2019-12-12 08:41:04', '', 'Notre histoire', '', 'publish', 'closed', 'closed', '', 'mon-histoire', '', '', '2019-12-20 13:32:40', '2019-12-20 12:32:40', '', 0, 'http://localhost:8888/kerako/?page_id=18', 0, 'page', '', 0),
(19, 1, '2019-12-12 09:41:04', '2019-12-12 08:41:04', '', 'Mon histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-12 09:41:04', '2019-12-12 08:41:04', '', 18, 'http://localhost:8888/kerako/2019/12/12/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-12-12 09:41:18', '2019-12-12 08:41:18', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2019-12-19 18:04:15', '2019-12-19 17:04:15', '', 0, 'http://localhost:8888/kerako/?p=20', 4, 'nav_menu_item', '', 0),
(21, 1, '2019-12-12 09:41:18', '2019-12-12 08:41:18', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2019-12-19 18:04:15', '2019-12-19 17:04:15', '', 0, 'http://localhost:8888/kerako/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2019-12-12 09:41:18', '2019-12-12 08:41:18', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-12-19 18:04:14', '2019-12-19 17:04:14', '', 0, 'http://localhost:8888/kerako/?p=22', 2, 'nav_menu_item', '', 0),
(23, 1, '2019-12-12 09:41:18', '2019-12-12 08:41:18', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2019-12-19 18:04:14', '2019-12-19 17:04:14', '', 0, 'http://localhost:8888/kerako/?p=23', 1, 'nav_menu_item', '', 0),
(25, 1, '2019-12-12 10:05:26', '2019-12-12 09:05:26', '', 'loupe', '', 'inherit', 'open', 'closed', '', 'loupe', '', '', '2019-12-12 10:05:26', '2019-12-12 09:05:26', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/loupe.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2019-12-12 11:20:44', '2019-12-12 10:20:44', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-12-20 15:36:16', '2019-12-20 14:36:16', '', 0, 'http://localhost:8888/kerako/?page_id=26', 0, 'page', '', 0),
(27, 1, '2019-12-12 11:20:44', '2019-12-12 10:20:44', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-12-12 11:20:44', '2019-12-12 10:20:44', '', 26, 'http://localhost:8888/kerako/2019/12/12/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-12-12 11:21:00', '2019-12-12 10:21:00', '', 'Mentions Légales', '', 'trash', 'closed', 'closed', '', 'mentions-legales__trashed', '', '', '2019-12-17 09:28:52', '2019-12-17 08:28:52', '', 0, 'http://localhost:8888/kerako/?page_id=28', 0, 'page', '', 0),
(29, 1, '2019-12-12 11:21:00', '2019-12-12 10:21:00', '', 'Mentions Légales', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-12-12 11:21:00', '2019-12-12 10:21:00', '', 28, 'http://localhost:8888/kerako/2019/12/12/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-12-12 11:21:12', '2019-12-12 10:21:12', '', 'CGV', '', 'trash', 'closed', 'closed', '', 'cgv__trashed', '', '', '2019-12-17 09:28:46', '2019-12-17 08:28:46', '', 0, 'http://localhost:8888/kerako/?page_id=30', 0, 'page', '', 0),
(31, 1, '2019-12-12 11:21:12', '2019-12-12 10:21:12', '', 'CGV', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-12-12 11:21:12', '2019-12-12 10:21:12', '', 30, 'http://localhost:8888/kerako/2019/12/12/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-12-12 11:23:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-12 11:23:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/kerako/?p=32', 1, 'nav_menu_item', '', 0),
(34, 1, '2019-12-12 11:23:40', '2019-12-12 10:23:40', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2019-12-18 15:34:29', '2019-12-18 14:34:29', '', 0, 'http://localhost:8888/kerako/?p=34', 2, 'nav_menu_item', '', 0),
(35, 1, '2019-12-12 11:23:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-12 11:23:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/kerako/?p=35', 1, 'nav_menu_item', '', 0),
(37, 1, '2019-12-12 11:23:40', '2019-12-12 10:23:40', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2019-12-18 15:34:29', '2019-12-18 14:34:29', '', 0, 'http://localhost:8888/kerako/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2019-12-12 12:14:27', '2019-12-12 11:14:27', '', 'test1', '', 'inherit', 'open', 'closed', '', 'test1', '', '', '2019-12-12 12:14:27', '2019-12-12 11:14:27', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/test1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-12-12 12:14:40', '2019-12-12 11:14:40', '', 'test2', '', 'inherit', 'open', 'closed', '', 'test2', '', '', '2019-12-12 12:14:40', '2019-12-12 11:14:40', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/test2.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-12-12 12:14:47', '2019-12-12 11:14:47', '', 'test3', '', 'inherit', 'open', 'closed', '', 'test3', '', '', '2019-12-12 12:14:47', '2019-12-12 11:14:47', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/test3.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-12-12 12:14:54', '2019-12-12 11:14:54', '', 'her', '', 'inherit', 'open', 'closed', '', 'her', '', '', '2019-12-12 12:14:54', '2019-12-12 11:14:54', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/her.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-12-13 13:48:30', '2019-12-13 12:48:30', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2019-12-13 13:48:30', '2019-12-13 12:48:30', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2019-12-15 19:14:06', '2019-12-15 18:14:06', '<!-- wp:html -->\nhellowolrd!\n<!-- /wp:html -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-12-15 19:14:06', '2019-12-15 18:14:06', '', 26, 'http://localhost:8888/kerako/2019/12/15/26-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2019-12-15 19:14:46', '2019-12-15 18:14:46', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-12-15 19:14:46', '2019-12-15 18:14:46', '', 26, 'http://localhost:8888/kerako/2019/12/15/26-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-12-15 19:15:16', '2019-12-15 18:15:16', '<!-- wp:image {\"id\":40,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/kerako/wp-content/uploads/2019/12/test3-1024x683.jpg\" alt=\"\" class=\"wp-image-40\"/></figure>\n<!-- /wp:image -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-12-15 19:15:16', '2019-12-15 18:15:16', '', 26, 'http://localhost:8888/kerako/2019/12/15/26-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-12-15 19:27:54', '2019-12-15 18:27:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-vintage.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Vintage', 'vintage', 'publish', 'closed', 'closed', '', 'group_5df67a3adc7bb', '', '', '2019-12-18 13:05:10', '2019-12-18 12:05:10', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=47', 0, 'acf-field-group', '', 0),
(48, 1, '2019-12-15 19:27:54', '2019-12-15 18:27:54', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'table', 'table', 'publish', 'closed', 'closed', '', 'field_5df67a4ca5136', '', '', '2019-12-15 20:01:05', '2019-12-15 19:01:05', '', 47, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=48', 0, 'acf-field', '', 0),
(49, 1, '2019-12-15 19:29:56', '2019-12-15 18:29:56', '', 'Vintage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-15 19:29:56', '2019-12-15 18:29:56', '', 16, 'http://localhost:8888/kerako/2019/12/15/16-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-12-15 19:53:08', '2019-12-15 18:53:08', '', 'Vintage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-15 19:53:08', '2019-12-15 18:53:08', '', 16, 'http://localhost:8888/kerako/2019/12/15/16-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-12-15 20:07:26', '2019-12-15 19:07:26', '', 'alexandra_gorn_JIUjvqe2ZHg_uns', '', 'inherit', 'open', 'closed', '', 'alexandra_gorn_jiujvqe2zhg_uns', '', '', '2019-12-18 14:22:02', '2019-12-18 13:22:02', '', 71, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/alexandra_gorn_JIUjvqe2ZHg_uns.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2019-12-15 20:07:27', '2019-12-15 19:07:27', '', 'behzad_ghaffarian_nhWgZNV85LQ_@2x', '', 'inherit', 'open', 'closed', '', 'behzad_ghaffarian_nhwgznv85lq_2x', '', '', '2019-12-18 15:03:56', '2019-12-18 14:03:56', '', 71, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/behzad_ghaffarian_nhWgZNV85LQ_@2x.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2019-12-15 20:07:33', '2019-12-15 19:07:33', '', 'Capture', '', 'inherit', 'open', 'closed', '', 'capture', '', '', '2019-12-18 14:53:33', '2019-12-18 13:53:33', '', 71, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/Capture.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2019-12-15 20:07:35', '2019-12-15 19:07:35', '', 'dane_deaner_qRfMB_IOQjE_unspla', '', 'inherit', 'open', 'closed', '', 'dane_deaner_qrfmb_ioqje_unspla', '', '', '2019-12-18 15:03:56', '2019-12-18 14:03:56', '', 71, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/dane_deaner_qRfMB_IOQjE_unspla.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2019-12-15 20:07:37', '2019-12-15 19:07:37', '', 'davide_cantelli_ajisKc2uuFk_un', '', 'inherit', 'open', 'closed', '', 'davide_cantelli_ajiskc2uufk_un', '', '', '2019-12-18 15:03:56', '2019-12-18 14:03:56', '', 71, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/davide_cantelli_ajisKc2uuFk_un.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2019-12-15 20:07:39', '2019-12-15 19:07:39', '', 'forme3', '', 'inherit', 'open', 'closed', '', 'forme3', '', '', '2019-12-15 20:07:39', '2019-12-15 19:07:39', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/forme3.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2019-12-15 20:07:39', '2019-12-15 19:07:39', '', 'hal_gatewood_Vfml26Iy4mI_unspl', '', 'inherit', 'open', 'closed', '', 'hal_gatewood_vfml26iy4mi_unspl', '', '', '2019-12-18 13:40:30', '2019-12-18 12:40:30', '', 71, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/hal_gatewood_Vfml26Iy4mI_unspl.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2019-12-15 20:07:40', '2019-12-15 19:07:40', '', 'hutomo_abrianto_X5BWooeO4Cw_un', '', 'inherit', 'open', 'closed', '', 'hutomo_abrianto_x5bwooeo4cw_un', '', '', '2019-12-18 13:27:24', '2019-12-18 12:27:24', '', 71, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/hutomo_abrianto_X5BWooeO4Cw_un.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2019-12-15 20:07:43', '2019-12-15 19:07:43', '', 'jean_philippe_delberghe_feijc_', '', 'inherit', 'open', 'closed', '', 'jean_philippe_delberghe_feijc_', '', '', '2019-12-17 09:23:50', '2019-12-17 08:23:50', '', 13, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/jean_philippe_delberghe_feijc_.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2019-12-15 20:07:44', '2019-12-15 19:07:44', '', 'Logo_blanc', '', 'inherit', 'open', 'closed', '', 'logo_blanc', '', '', '2019-12-15 20:07:44', '2019-12-15 19:07:44', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/Logo_blanc.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2019-12-15 20:07:44', '2019-12-15 19:07:44', '', 'mitch_moondae_zXFtsdi9dIc_unsp', '', 'inherit', 'open', 'closed', '', 'mitch_moondae_zxftsdi9dic_unsp', '', '', '2019-12-17 09:25:08', '2019-12-17 08:25:08', '', 13, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/mitch_moondae_zXFtsdi9dIc_unsp.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2019-12-15 20:07:45', '2019-12-15 19:07:45', '', 'phillip_goldsberry_fZuleEfeA1Q', '', 'inherit', 'open', 'closed', '', 'phillip_goldsberry_fzuleefea1q', '', '', '2019-12-17 09:23:50', '2019-12-17 08:23:50', '', 13, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/phillip_goldsberry_fZuleEfeA1Q.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2019-12-15 20:07:46', '2019-12-15 19:07:46', '', 'robert_anasch_wj2UvbOtRbY_unsp', '', 'inherit', 'open', 'closed', '', 'robert_anasch_wj2uvbotrby_unsp', '', '', '2019-12-17 09:09:25', '2019-12-17 08:09:25', '', 13, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/robert_anasch_wj2UvbOtRbY_unsp.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2019-12-15 20:07:47', '2019-12-15 19:07:47', '', 'ruslan_bardash_4kTbAMRAHtQ_uns', '', 'inherit', 'open', 'closed', '', 'ruslan_bardash_4ktbamrahtq_uns', '', '', '2019-12-15 23:01:57', '2019-12-15 22:01:57', '', 71, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/ruslan_bardash_4kTbAMRAHtQ_uns.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2019-12-15 20:07:48', '2019-12-15 19:07:48', '', 'tache', '', 'inherit', 'open', 'closed', '', 'tache', '', '', '2019-12-18 14:36:07', '2019-12-18 13:36:07', '', 71, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/tache.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2019-12-15 20:07:49', '2019-12-15 19:07:49', '', 'toa_heftiba_FV3GConVSss_unspla', '', 'inherit', 'open', 'closed', '', 'toa_heftiba_fv3gconvsss_unspla', '', '', '2019-12-15 20:15:28', '2019-12-15 19:15:28', '', 16, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/toa_heftiba_FV3GConVSss_unspla.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2019-12-15 20:15:08', '2019-12-15 19:15:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:10:\"insert img\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_5df6860a06a89', '', '', '2019-12-18 13:00:47', '2019-12-18 12:00:47', '', 47, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=69', 1, 'acf-field', '', 0),
(70, 1, '2019-12-15 20:15:28', '2019-12-15 19:15:28', '', 'Vintage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-15 20:15:28', '2019-12-15 19:15:28', '', 16, 'http://localhost:8888/kerako/2019/12/15/16-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-12-15 22:54:38', '2019-12-15 21:54:38', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2019-12-19 18:00:59', '2019-12-19 17:00:59', '', 0, 'http://localhost:8888/kerako/?page_id=71', 0, 'page', '', 0),
(72, 1, '2019-12-15 22:54:38', '2019-12-15 21:54:38', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-15 22:54:38', '2019-12-15 21:54:38', '', 71, 'http://localhost:8888/kerako/2019/12/15/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"index.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Accueil', 'accueil', 'publish', 'closed', 'closed', '', 'group_5df6abb2a1152', '', '', '2019-12-19 17:53:00', '2019-12-19 16:53:00', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=73', 0, 'acf-field-group', '', 0),
(74, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:12:\"insert image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'slider_1', 'slider_1', 'publish', 'closed', 'closed', '', 'field_5df6abbcdefd6', '', '', '2019-12-18 13:46:18', '2019-12-18 12:46:18', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=74', 0, 'acf-field', '', 0),
(75, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'best_1', 'best_1', 'publish', 'closed', 'closed', '', 'field_5df6abdcdefd7', '', '', '2019-12-18 13:51:53', '2019-12-18 12:51:53', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=75', 3, 'acf-field', '', 0),
(76, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'best_title_1', 'best_title_1', 'publish', 'closed', 'closed', '', 'field_5df6ac03defd8', '', '', '2019-12-18 14:08:26', '2019-12-18 13:08:26', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=76', 4, 'acf-field', '', 0),
(78, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'story', 'story', 'publish', 'closed', 'closed', '', 'field_5df6ac62defda', '', '', '2019-12-18 14:36:57', '2019-12-18 13:36:57', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=78', 14, 'acf-field', '', 0),
(79, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'story_desc_1', 'story_desc_1', 'publish', 'closed', 'closed', '', 'field_5df6ac78defdb', '', '', '2019-12-19 17:53:00', '2019-12-19 16:53:00', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=79', 16, 'acf-field', '', 0),
(80, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'categorie_1', 'categorie_1', 'publish', 'closed', 'closed', '', 'field_5df6aca1defdc', '', '', '2019-12-19 17:53:00', '2019-12-19 16:53:00', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=80', 18, 'acf-field', '', 0),
(84, 1, '2019-12-15 23:01:57', '2019-12-15 22:01:57', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-15 23:01:57', '2019-12-15 22:01:57', '', 71, 'http://localhost:8888/kerako/2019/12/15/71-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-12-15 23:06:44', '2019-12-15 22:06:44', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-15 23:06:44', '2019-12-15 22:06:44', '', 71, 'http://localhost:8888/kerako/2019/12/15/71-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-12-15 23:07:16', '2019-12-15 22:07:16', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-15 23:07:16', '2019-12-15 22:07:16', '', 71, 'http://localhost:8888/kerako/2019/12/15/71-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-12-15 23:08:48', '2019-12-15 22:08:48', '', 'Vintage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-15 23:08:48', '2019-12-15 22:08:48', '', 16, 'http://localhost:8888/kerako/2019/12/15/16-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-12-15 23:09:45', '2019-12-15 22:09:45', '', 'Vintage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-15 23:09:45', '2019-12-15 22:09:45', '', 16, 'http://localhost:8888/kerako/2019/12/15/16-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-12-15 23:10:54', '2019-12-15 22:10:54', '', 'Vintage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-15 23:10:54', '2019-12-15 22:10:54', '', 16, 'http://localhost:8888/kerako/2019/12/15/16-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2019-12-15 23:15:02', '2019-12-15 22:15:02', '', 'Vintage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-15 23:15:02', '2019-12-15 22:15:02', '', 16, 'http://localhost:8888/kerako/2019/12/15/16-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-12-16 20:52:38', '2019-12-16 19:52:38', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"page-creation.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Creation', 'creation', 'publish', 'closed', 'closed', '', 'group_5df7e07203f5b', '', '', '2019-12-18 17:02:14', '2019-12-18 16:02:14', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=93', 0, 'acf-field-group', '', 0),
(94, 1, '2019-12-16 20:52:52', '2019-12-16 19:52:52', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:20:\"page-realisation.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Realisation', 'realisation', 'publish', 'closed', 'closed', '', 'group_5df7e08a3173a', '', '', '2019-12-18 13:36:41', '2019-12-18 12:36:41', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=94', 0, 'acf-field-group', '', 0),
(95, 1, '2019-12-17 09:08:56', '2019-12-17 08:08:56', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:10:\"insert img\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'img', 'img', 'publish', 'closed', 'closed', '', 'field_5df88ce328c10', '', '', '2019-12-18 13:36:41', '2019-12-18 12:36:41', '', 94, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=95', 0, 'acf-field', '', 0),
(97, 1, '2019-12-17 09:09:25', '2019-12-17 08:09:25', '', 'Réalisations', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-12-17 09:09:25', '2019-12-17 08:09:25', '', 13, 'http://localhost:8888/kerako/2019/12/17/13-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-12-17 09:12:42', '2019-12-17 08:12:42', '', 'Réalisations', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-12-17 09:12:42', '2019-12-17 08:12:42', '', 13, 'http://localhost:8888/kerako/2019/12/17/13-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2019-12-17 09:21:33', '2019-12-17 08:21:33', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'galerie', 'galerie', 'publish', 'closed', 'closed', '', 'field_5df88fee448cf', '', '', '2019-12-17 09:21:33', '2019-12-17 08:21:33', '', 94, 'http://localhost:8888/kerako/?post_type=acf-field&p=101', 1, 'acf-field', '', 0),
(102, 1, '2019-12-17 09:21:33', '2019-12-17 08:21:33', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'galerie', 'galerie', 'publish', 'closed', 'closed', '', 'field_5df88ffe448d0', '', '', '2019-12-17 09:21:33', '2019-12-17 08:21:33', '', 94, 'http://localhost:8888/kerako/?post_type=acf-field&p=102', 2, 'acf-field', '', 0),
(103, 1, '2019-12-17 09:23:50', '2019-12-17 08:23:50', '', 'Réalisations', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-12-17 09:23:50', '2019-12-17 08:23:50', '', 13, 'http://localhost:8888/kerako/2019/12/17/13-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-12-17 09:25:08', '2019-12-17 08:25:08', '', 'Réalisations', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-12-17 09:25:08', '2019-12-17 08:25:08', '', 13, 'http://localhost:8888/kerako/2019/12/17/13-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2019-12-17 09:28:55', '2019-12-17 08:28:55', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href=\"http://localhost:8888/kerako/wp-admin/\">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-12-17 09:28:55', '2019-12-17 08:28:55', '', 2, 'http://localhost:8888/kerako/2019/12/17/2-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2019-12-17 09:29:41', '2019-12-17 08:29:41', '', 'Produit', '', 'publish', 'closed', 'closed', '', 'produit', '', '', '2019-12-17 09:29:41', '2019-12-17 08:29:41', '', 0, 'http://localhost:8888/kerako/?page_id=106', 0, 'page', '', 0),
(107, 1, '2019-12-17 09:29:41', '2019-12-17 08:29:41', '', 'Produit', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-12-17 09:29:41', '2019-12-17 08:29:41', '', 106, 'http://localhost:8888/kerako/2019/12/17/106-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2019-12-17 09:30:02', '2019-12-17 08:30:02', '', 'Panier', '', 'publish', 'closed', 'closed', '', 'panier', '', '', '2019-12-17 09:30:02', '2019-12-17 08:30:02', '', 0, 'http://localhost:8888/kerako/?page_id=108', 0, 'page', '', 0),
(109, 1, '2019-12-17 09:30:02', '2019-12-17 08:30:02', '', 'Panier', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2019-12-17 09:30:02', '2019-12-17 08:30:02', '', 108, 'http://localhost:8888/kerako/2019/12/17/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2019-12-17 09:30:37', '2019-12-17 08:30:37', '', 'Client connexion', '', 'publish', 'closed', 'closed', '', 'client-connexion', '', '', '2019-12-17 09:30:37', '2019-12-17 08:30:37', '', 0, 'http://localhost:8888/kerako/?page_id=110', 0, 'page', '', 0),
(111, 1, '2019-12-17 09:30:37', '2019-12-17 08:30:37', '', 'Client connexion', '', 'inherit', 'closed', 'closed', '', '110-revision-v1', '', '', '2019-12-17 09:30:37', '2019-12-17 08:30:37', '', 110, 'http://localhost:8888/kerako/2019/12/17/110-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2019-12-17 09:31:08', '2019-12-17 08:31:08', '', 'Client compte', '', 'publish', 'closed', 'closed', '', 'client-compte', '', '', '2019-12-17 09:31:08', '2019-12-17 08:31:08', '', 0, 'http://localhost:8888/kerako/?page_id=112', 0, 'page', '', 0),
(113, 1, '2019-12-17 09:31:08', '2019-12-17 08:31:08', '', 'Client compte', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2019-12-17 09:31:08', '2019-12-17 08:31:08', '', 112, 'http://localhost:8888/kerako/2019/12/17/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2019-12-17 09:31:27', '2019-12-17 08:31:27', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2019-12-17 09:31:27', '2019-12-17 08:31:27', '', 0, 'http://localhost:8888/kerako/?page_id=114', 0, 'page', '', 0),
(115, 1, '2019-12-17 09:31:27', '2019-12-17 08:31:27', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2019-12-17 09:31:27', '2019-12-17 08:31:27', '', 114, 'http://localhost:8888/kerako/2019/12/17/114-revision-v1/', 0, 'revision', '', 0),
(116, 1, '2019-12-17 09:31:46', '2019-12-17 08:31:46', '', 'Blog article', '', 'publish', 'closed', 'closed', '', 'blog-article', '', '', '2019-12-17 09:31:46', '2019-12-17 08:31:46', '', 0, 'http://localhost:8888/kerako/?page_id=116', 0, 'page', '', 0),
(117, 1, '2019-12-17 09:31:46', '2019-12-17 08:31:46', '', 'Blog article', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2019-12-17 09:31:46', '2019-12-17 08:31:46', '', 116, 'http://localhost:8888/kerako/2019/12/17/116-revision-v1/', 0, 'revision', '', 0),
(118, 1, '2019-12-17 09:32:38', '2019-12-17 08:32:38', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-contact.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'group_5df89298b6aae', '', '', '2019-12-20 14:29:04', '2019-12-20 13:29:04', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=118', 0, 'acf-field-group', '', 0),
(119, 1, '2019-12-17 09:32:54', '2019-12-17 08:32:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-blog.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Blog', 'blog', 'publish', 'closed', 'closed', '', 'group_5df892aa77ea7', '', '', '2019-12-17 09:32:54', '2019-12-17 08:32:54', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=119', 0, 'acf-field-group', '', 0),
(120, 1, '2019-12-17 09:33:14', '2019-12-17 08:33:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"page-article-single.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'ArticleSingle', 'articlesingle', 'publish', 'closed', 'closed', '', 'group_5df892b8dfcc9', '', '', '2019-12-17 09:33:14', '2019-12-17 08:33:14', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=120', 0, 'acf-field-group', '', 0),
(121, 1, '2019-12-17 09:34:05', '2019-12-17 08:34:05', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"page-produit-single.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'ProduitSingle', 'produitsingle', 'publish', 'closed', 'closed', '', 'group_5df892d605e5d', '', '', '2019-12-17 09:34:05', '2019-12-17 08:34:05', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=121', 0, 'acf-field-group', '', 0),
(123, 1, '2019-12-17 09:34:36', '2019-12-17 08:34:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-pannier.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Panier', 'panier', 'publish', 'closed', 'closed', '', 'group_5df8930d0237d', '', '', '2019-12-17 09:34:36', '2019-12-17 08:34:36', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=123', 0, 'acf-field-group', '', 0),
(124, 1, '2019-12-17 09:35:01', '2019-12-17 08:35:01', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"page-client-co.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'ClientConnexion', 'clientconnexion', 'publish', 'closed', 'closed', '', 'group_5df8931f29449', '', '', '2019-12-17 09:35:01', '2019-12-17 08:35:01', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=124', 0, 'acf-field-group', '', 0),
(125, 1, '2019-12-17 09:35:18', '2019-12-17 08:35:18', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"page-client-compte.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'ClientCompte', 'clientcompte', 'publish', 'closed', 'closed', '', 'group_5df893386fb3b', '', '', '2019-12-17 09:35:18', '2019-12-17 08:35:18', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=125', 0, 'acf-field-group', '', 0);
INSERT INTO `kr_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(126, 1, '2019-12-17 09:35:45', '2019-12-17 08:35:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"page-histoire.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Histoire', 'histoire', 'publish', 'closed', 'closed', '', 'group_5df8934b1d529', '', '', '2019-12-20 13:08:12', '2019-12-20 12:08:12', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=126', 0, 'acf-field-group', '', 0),
(130, 1, '2019-12-18 13:06:51', '2019-12-18 12:06:51', '', 'Réalisations', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-12-18 13:06:51', '2019-12-18 12:06:51', '', 13, 'http://localhost:8888/kerako/2019/12/18/13-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2019-12-18 13:07:36', '2019-12-18 12:07:36', '', 'Réalisations', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-12-18 13:07:36', '2019-12-18 12:07:36', '', 13, 'http://localhost:8888/kerako/2019/12/18/13-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2019-12-18 13:24:37', '2019-12-18 12:24:37', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:12:\"insert image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'slider_2', 'slider_2', 'publish', 'closed', 'closed', '', 'field_5dfa1a5ca8876', '', '', '2019-12-18 13:53:23', '2019-12-18 12:53:23', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=135', 1, 'acf-field', '', 0),
(136, 1, '2019-12-18 13:24:37', '2019-12-18 12:24:37', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:12:\"insert image\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'slider_3', 'slider_3', 'publish', 'closed', 'closed', '', 'field_5dfa1a5da8877', '', '', '2019-12-18 13:53:23', '2019-12-18 12:53:23', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=136', 2, 'acf-field', '', 0),
(137, 1, '2019-12-18 13:27:24', '2019-12-18 12:27:24', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-18 13:27:24', '2019-12-18 12:27:24', '', 71, 'http://localhost:8888/kerako/2019/12/18/71-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2019-12-18 13:40:30', '2019-12-18 12:40:30', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-18 13:40:30', '2019-12-18 12:40:30', '', 71, 'http://localhost:8888/kerako/2019/12/18/71-revision-v1/', 0, 'revision', '', 0),
(140, 1, '2019-12-18 13:41:10', '2019-12-18 12:41:10', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-18 13:41:10', '2019-12-18 12:41:10', '', 71, 'http://localhost:8888/kerako/2019/12/18/71-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2019-12-18 13:41:59', '2019-12-18 12:41:59', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-18 13:41:59', '2019-12-18 12:41:59', '', 71, 'http://localhost:8888/kerako/2019/12/18/71-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2019-12-18 13:49:18', '2019-12-18 12:49:18', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'header', 'header', 'trash', 'closed', 'closed', '', 'group_5dfa203d1e3cb__trashed', '', '', '2019-12-18 13:50:22', '2019-12-18 12:50:22', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=144', 0, 'acf-field-group', '', 0),
(145, 1, '2019-12-18 13:49:18', '2019-12-18 12:49:18', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'logo', 'logo', 'trash', 'closed', 'closed', '', 'field_5dfa2041bc7af__trashed', '', '', '2019-12-18 13:50:22', '2019-12-18 12:50:22', '', 144, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=145', 0, 'acf-field', '', 0),
(146, 1, '2019-12-18 13:49:31', '2019-12-18 12:49:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'loupe', 'loupe', 'trash', 'closed', 'closed', '', 'field_5dfa20509952e__trashed', '', '', '2019-12-18 13:50:22', '2019-12-18 12:50:22', '', 144, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=146', 1, 'acf-field', '', 0),
(147, 1, '2019-12-18 13:51:53', '2019-12-18 12:51:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'best_2', 'best_2', 'publish', 'closed', 'closed', '', 'field_5dfa20af2a168', '', '', '2019-12-18 14:21:11', '2019-12-18 13:21:11', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=147', 5, 'acf-field', '', 0),
(148, 1, '2019-12-18 13:51:53', '2019-12-18 12:51:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'best_3', 'best_3', 'publish', 'closed', 'closed', '', 'field_5dfa20b22a169', '', '', '2019-12-18 14:21:11', '2019-12-18 13:21:11', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=148', 7, 'acf-field', '', 0),
(149, 1, '2019-12-18 13:58:12', '2019-12-18 12:58:12', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-18 13:58:12', '2019-12-18 12:58:12', '', 71, 'http://localhost:8888/kerako/2019/12/18/71-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2019-12-18 14:04:53', '2019-12-18 13:04:53', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-18 14:04:53', '2019-12-18 13:04:53', '', 71, 'http://localhost:8888/kerako/2019/12/18/71-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2019-12-18 14:07:52', '2019-12-18 13:07:52', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'best_title_2', 'best_title_2', 'publish', 'closed', 'closed', '', 'field_5dfa246dfa453', '', '', '2019-12-18 14:21:11', '2019-12-18 13:21:11', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=151', 6, 'acf-field', '', 0),
(152, 1, '2019-12-18 14:07:52', '2019-12-18 13:07:52', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'best_title_3', 'best_title_3', 'publish', 'closed', 'closed', '', 'field_5dfa246cfa452', '', '', '2019-12-18 14:21:11', '2019-12-18 13:21:11', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=152', 8, 'acf-field', '', 0),
(155, 1, '2019-12-18 14:09:19', '2019-12-18 13:09:19', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-18 14:09:19', '2019-12-18 13:09:19', '', 71, 'http://localhost:8888/kerako/2019/12/18/71-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2019-12-18 14:21:11', '2019-12-18 13:21:11', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'new_1', 'new_1', 'publish', 'closed', 'closed', '', 'field_5dfa278e86a4a', '', '', '2019-12-18 14:21:11', '2019-12-18 13:21:11', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&p=157', 9, 'acf-field', '', 0),
(158, 1, '2019-12-18 14:21:11', '2019-12-18 13:21:11', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'new_2', 'new_2', 'publish', 'closed', 'closed', '', 'field_5dfa27b786a4b', '', '', '2019-12-18 14:21:11', '2019-12-18 13:21:11', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&p=158', 10, 'acf-field', '', 0),
(159, 1, '2019-12-18 14:21:11', '2019-12-18 13:21:11', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'new_3', 'new_3', 'publish', 'closed', 'closed', '', 'field_5dfa27bd86a4c', '', '', '2019-12-18 14:21:11', '2019-12-18 13:21:11', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&p=159', 11, 'acf-field', '', 0),
(160, 1, '2019-12-18 14:21:11', '2019-12-18 13:21:11', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'new_4', 'new_4', 'publish', 'closed', 'closed', '', 'field_5dfa27c086a4d', '', '', '2019-12-18 14:21:11', '2019-12-18 13:21:11', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&p=160', 12, 'acf-field', '', 0),
(161, 1, '2019-12-18 14:21:11', '2019-12-18 13:21:11', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'new_5', 'new_5', 'publish', 'closed', 'closed', '', 'field_5dfa27c286a4e', '', '', '2019-12-18 14:21:11', '2019-12-18 13:21:11', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&p=161', 13, 'acf-field', '', 0),
(162, 1, '2019-12-18 14:22:02', '2019-12-18 13:22:02', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-18 14:22:02', '2019-12-18 13:22:02', '', 71, 'http://localhost:8888/kerako/2019/12/18/71-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2019-12-18 14:36:07', '2019-12-18 13:36:07', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-18 14:36:07', '2019-12-18 13:36:07', '', 71, 'http://localhost:8888/kerako/2019/12/18/71-revision-v1/', 0, 'revision', '', 0),
(164, 1, '2019-12-18 14:50:09', '2019-12-18 13:50:09', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-18 14:50:09', '2019-12-18 13:50:09', '', 71, 'http://localhost:8888/kerako/2019/12/18/71-revision-v1/', 0, 'revision', '', 0),
(165, 1, '2019-12-18 14:53:11', '2019-12-18 13:53:11', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'story_her', 'story_her', 'publish', 'closed', 'closed', '', 'field_5dfa2f3910edc', '', '', '2019-12-18 14:53:11', '2019-12-18 13:53:11', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&p=165', 15, 'acf-field', '', 0),
(166, 1, '2019-12-18 14:53:33', '2019-12-18 13:53:33', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-18 14:53:33', '2019-12-18 13:53:33', '', 71, 'http://localhost:8888/kerako/2019/12/18/71-revision-v1/', 0, 'revision', '', 0),
(167, 1, '2019-12-18 15:02:19', '2019-12-18 14:02:19', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'categorie_2', 'categorie_2', 'publish', 'closed', 'closed', '', 'field_5dfa31653a253', '', '', '2019-12-19 17:53:00', '2019-12-19 16:53:00', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=167', 19, 'acf-field', '', 0),
(168, 1, '2019-12-18 15:02:19', '2019-12-18 14:02:19', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'categorie_3', 'categorie_3', 'publish', 'closed', 'closed', '', 'field_5dfa31673a254', '', '', '2019-12-19 17:53:00', '2019-12-19 16:53:00', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=168', 20, 'acf-field', '', 0),
(169, 1, '2019-12-18 15:03:08', '2019-12-18 14:03:08', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-18 15:03:08', '2019-12-18 14:03:08', '', 71, 'http://localhost:8888/kerako/2019/12/18/71-revision-v1/', 0, 'revision', '', 0),
(170, 1, '2019-12-18 15:03:56', '2019-12-18 14:03:56', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-18 15:03:56', '2019-12-18 14:03:56', '', 71, 'http://localhost:8888/kerako/2019/12/18/71-revision-v1/', 0, 'revision', '', 0),
(171, 1, '2019-12-18 15:33:53', '2019-12-18 14:33:53', '', 'Mentions légales', '', 'publish', 'closed', 'closed', '', 'mentions-legales', '', '', '2019-12-18 15:33:53', '2019-12-18 14:33:53', '', 0, 'http://localhost:8888/kerako/?page_id=171', 0, 'page', '', 0),
(172, 1, '2019-12-18 15:33:53', '2019-12-18 14:33:53', '', 'Mentions légales', '', 'inherit', 'closed', 'closed', '', '171-revision-v1', '', '', '2019-12-18 15:33:53', '2019-12-18 14:33:53', '', 171, 'http://localhost:8888/kerako/2019/12/18/171-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2019-12-18 15:34:03', '2019-12-18 14:34:03', '', 'CVG', '', 'publish', 'closed', 'closed', '', 'cvg', '', '', '2019-12-18 15:34:03', '2019-12-18 14:34:03', '', 0, 'http://localhost:8888/kerako/?page_id=173', 0, 'page', '', 0),
(174, 1, '2019-12-18 15:34:03', '2019-12-18 14:34:03', '', 'CVG', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2019-12-18 15:34:03', '2019-12-18 14:34:03', '', 173, 'http://localhost:8888/kerako/2019/12/18/173-revision-v1/', 0, 'revision', '', 0),
(175, 1, '2019-12-18 15:34:26', '2019-12-18 14:34:26', ' ', '', '', 'publish', 'closed', 'closed', '', '175', '', '', '2019-12-18 15:34:29', '2019-12-18 14:34:29', '', 0, 'http://localhost:8888/kerako/?p=175', 4, 'nav_menu_item', '', 0),
(176, 1, '2019-12-18 15:34:26', '2019-12-18 14:34:26', ' ', '', '', 'publish', 'closed', 'closed', '', '176', '', '', '2019-12-18 15:34:29', '2019-12-18 14:34:29', '', 0, 'http://localhost:8888/kerako/?p=176', 3, 'nav_menu_item', '', 0),
(177, 1, '2019-12-18 17:01:34', '2019-12-18 16:01:34', 'a:7:{s:4:\"type\";s:13:\"photo_gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:15:\"fields[gallerie\";a:1:{s:10:\"edit_modal\";s:7:\"Default\";}s:10:\"edit_modal\";s:7:\"Default\";}', 'gallerie', 'gallerie', 'publish', 'closed', 'closed', '', 'field_5dfa4cf29d9f1', '', '', '2019-12-18 17:01:34', '2019-12-18 16:01:34', '', 93, 'http://localhost:8888/kerako/?post_type=acf-field&p=177', 0, 'acf-field', '', 0),
(181, 1, '2019-12-18 17:36:44', '2019-12-18 16:36:44', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'portrait_img', 'portrait_img', 'publish', 'closed', 'closed', '', 'field_5dfa557f7c3d6', '', '', '2019-12-20 12:30:16', '2019-12-20 11:30:16', '', 126, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=181', 5, 'acf-field', '', 0),
(182, 1, '2019-12-18 17:38:29', '2019-12-18 16:38:29', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'portrait_desc', 'portrait_desc', 'publish', 'closed', 'closed', '', 'field_5dfa55e8a00e0', '', '', '2019-12-20 12:30:16', '2019-12-20 11:30:16', '', 126, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=182', 6, 'acf-field', '', 0),
(183, 1, '2019-12-18 17:39:21', '2019-12-18 16:39:21', '', 'Mon histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-18 17:39:21', '2019-12-18 16:39:21', '', 18, 'http://localhost:8888/kerako/2019/12/18/18-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2019-12-18 17:39:46', '2019-12-18 16:39:46', '', 'Mon histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-18 17:39:46', '2019-12-18 16:39:46', '', 18, 'http://localhost:8888/kerako/2019/12/18/18-revision-v1/', 0, 'revision', '', 0),
(186, 1, '2019-12-18 17:43:16', '2019-12-18 16:43:16', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'atelier_img', 'atelier_img', 'publish', 'closed', 'closed', '', 'field_5dfa5708b5a32', '', '', '2019-12-19 22:03:44', '2019-12-19 21:03:44', '', 126, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=186', 0, 'acf-field', '', 0),
(187, 1, '2019-12-18 17:43:16', '2019-12-18 16:43:16', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'atelier_desc_para1', 'atelier_desc_para1', 'publish', 'closed', 'closed', '', 'field_5dfa571bb5a33', '', '', '2019-12-20 12:29:52', '2019-12-20 11:29:52', '', 126, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=187', 1, 'acf-field', '', 0),
(188, 1, '2019-12-18 17:43:47', '2019-12-18 16:43:47', '', 'Mon histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-18 17:43:47', '2019-12-18 16:43:47', '', 18, 'http://localhost:8888/kerako/2019/12/18/18-revision-v1/', 0, 'revision', '', 0),
(189, 1, '2019-12-19 12:03:59', '2019-12-19 11:03:59', '', 'alexandra-gorn-1mPkRa-qM_U-unsplash', '', 'inherit', 'open', 'closed', '', 'alexandra-gorn-1mpkra-qm_u-unsplash', '', '', '2019-12-19 12:03:59', '2019-12-19 11:03:59', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/alexandra-gorn-1mPkRa-qM_U-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(190, 1, '2019-12-19 12:04:13', '2019-12-19 11:04:13', '', 'alexandra-gorn-JIUjvqe2ZHg-unsplash (1)', '', 'inherit', 'open', 'closed', '', 'alexandra-gorn-jiujvqe2zhg-unsplash-1', '', '', '2019-12-19 12:04:13', '2019-12-19 11:04:13', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/alexandra-gorn-JIUjvqe2ZHg-unsplash-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(191, 1, '2019-12-19 12:04:24', '2019-12-19 11:04:24', '', 'alexandra-gorn-JIUjvqe2ZHg-unsplash', '', 'inherit', 'open', 'closed', '', 'alexandra-gorn-jiujvqe2zhg-unsplash', '', '', '2019-12-19 12:04:24', '2019-12-19 11:04:24', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/alexandra-gorn-JIUjvqe2ZHg-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(192, 1, '2019-12-19 12:04:35', '2019-12-19 11:04:35', '', 'behzad-ghaffarian-nhWgZNV85LQ-unsplash', '', 'inherit', 'open', 'closed', '', 'behzad-ghaffarian-nhwgznv85lq-unsplash', '', '', '2019-12-19 22:06:47', '2019-12-19 21:06:47', '', 18, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/behzad-ghaffarian-nhWgZNV85LQ-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(193, 1, '2019-12-19 12:04:43', '2019-12-19 11:04:43', '', 'benjamin-child-GWe0dlVD9e0-unsplash', '', 'inherit', 'open', 'closed', '', 'benjamin-child-gwe0dlvd9e0-unsplash', '', '', '2019-12-19 12:04:43', '2019-12-19 11:04:43', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/benjamin-child-GWe0dlVD9e0-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(194, 1, '2019-12-19 12:04:54', '2019-12-19 11:04:54', '', 'Capture', '', 'inherit', 'open', 'closed', '', 'capture-2', '', '', '2019-12-19 12:04:54', '2019-12-19 11:04:54', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/Capture-1.png', 0, 'attachment', 'image/png', 0),
(195, 1, '2019-12-19 12:04:55', '2019-12-19 11:04:55', '', 'christopher-jolly-GqbU78bdJFM-unsplash', '', 'inherit', 'open', 'closed', '', 'christopher-jolly-gqbu78bdjfm-unsplash', '', '', '2019-12-19 12:04:55', '2019-12-19 11:04:55', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/christopher-jolly-GqbU78bdJFM-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(196, 1, '2019-12-19 12:05:07', '2019-12-19 11:05:07', '', 'coeur', '', 'inherit', 'open', 'closed', '', 'coeur', '', '', '2019-12-19 12:05:07', '2019-12-19 11:05:07', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/coeur.png', 0, 'attachment', 'image/png', 0),
(197, 1, '2019-12-19 12:05:09', '2019-12-19 11:05:09', '', 'content-pixie-31Sws6llA2g-unsplash', '', 'inherit', 'open', 'closed', '', 'content-pixie-31sws6lla2g-unsplash', '', '', '2019-12-19 12:05:09', '2019-12-19 11:05:09', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/content-pixie-31Sws6llA2g-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(198, 1, '2019-12-19 12:05:22', '2019-12-19 11:05:22', '', 'dane-deaner-qRfMB-IOQjE-unsplash', '', 'inherit', 'open', 'closed', '', 'dane-deaner-qrfmb-ioqje-unsplash', '', '', '2019-12-19 12:05:22', '2019-12-19 11:05:22', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/dane-deaner-qRfMB-IOQjE-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(199, 1, '2019-12-19 12:05:28', '2019-12-19 11:05:28', '', 'davide-cantelli-ajisKc2uuFk-unsplash', '', 'inherit', 'open', 'closed', '', 'davide-cantelli-ajiskc2uufk-unsplash', '', '', '2019-12-19 12:05:28', '2019-12-19 11:05:28', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/davide-cantelli-ajisKc2uuFk-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(200, 1, '2019-12-19 12:05:38', '2019-12-19 11:05:38', '', 'di_an_h-g_8MrEZAvyE-unsplash', '', 'inherit', 'open', 'closed', '', 'di_an_h-g_8mrezavye-unsplash', '', '', '2019-12-19 12:05:38', '2019-12-19 11:05:38', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/di_an_h-g_8MrEZAvyE-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2019-12-19 12:05:50', '2019-12-19 11:05:50', '', 'element5-digital-2cwqJgtQ3D0-unsplash', '', 'inherit', 'open', 'closed', '', 'element5-digital-2cwqjgtq3d0-unsplash', '', '', '2019-12-19 12:05:50', '2019-12-19 11:05:50', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/element5-digital-2cwqJgtQ3D0-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(202, 1, '2019-12-19 12:06:02', '2019-12-19 11:06:02', '', 'fb', '', 'inherit', 'open', 'closed', '', 'fb', '', '', '2019-12-19 12:06:02', '2019-12-19 11:06:02', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/fb.png', 0, 'attachment', 'image/png', 0),
(203, 1, '2019-12-19 12:06:07', '2019-12-19 11:06:07', '', 'forme3', '', 'inherit', 'open', 'closed', '', 'forme3-2', '', '', '2019-12-19 12:06:07', '2019-12-19 11:06:07', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/forme3-1.png', 0, 'attachment', 'image/png', 0),
(204, 1, '2019-12-19 12:06:08', '2019-12-19 11:06:08', '', 'franck-v-HUYJZLfIMOA-unsplash', '', 'inherit', 'open', 'closed', '', 'franck-v-huyjzlfimoa-unsplash', '', '', '2019-12-19 12:06:08', '2019-12-19 11:06:08', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/franck-v-HUYJZLfIMOA-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(205, 1, '2019-12-19 12:06:18', '2019-12-19 11:06:18', '', 'ggg', '', 'inherit', 'open', 'closed', '', 'ggg', '', '', '2019-12-19 12:06:18', '2019-12-19 11:06:18', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/ggg.png', 0, 'attachment', 'image/png', 0),
(206, 1, '2019-12-19 12:06:24', '2019-12-19 11:06:24', '', 'hal-gatewood-Vfml26Iy4mI-unsplash', '', 'inherit', 'open', 'closed', '', 'hal-gatewood-vfml26iy4mi-unsplash', '', '', '2019-12-19 12:06:24', '2019-12-19 11:06:24', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/hal-gatewood-Vfml26Iy4mI-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(207, 1, '2019-12-19 12:06:29', '2019-12-19 11:06:29', '', 'hutomo-abrianto-X5BWooeO4Cw-unsplash', '', 'inherit', 'open', 'closed', '', 'hutomo-abrianto-x5bwooeo4cw-unsplash', '', '', '2019-12-19 12:06:29', '2019-12-19 11:06:29', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/hutomo-abrianto-X5BWooeO4Cw-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(208, 1, '2019-12-19 12:06:40', '2019-12-19 11:06:40', '', 'ian-dooley-_-JR5TxKNSo-unsplash', '', 'inherit', 'open', 'closed', '', 'ian-dooley-_-jr5txknso-unsplash', '', '', '2019-12-19 12:06:40', '2019-12-19 11:06:40', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/ian-dooley-_-JR5TxKNSo-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(209, 1, '2019-12-19 12:06:52', '2019-12-19 11:06:52', '', 'kirill-9uH-hM0VwPg-unsplash', '', 'inherit', 'open', 'closed', '', 'kirill-9uh-hm0vwpg-unsplash', '', '', '2019-12-19 12:06:52', '2019-12-19 11:06:52', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/kirill-9uH-hM0VwPg-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(210, 1, '2019-12-19 12:06:59', '2019-12-19 11:06:59', '', 'liana-mikah-RECZjSWMPVI-unsplash', '', 'inherit', 'open', 'closed', '', 'liana-mikah-reczjswmpvi-unsplash', '', '', '2019-12-19 12:06:59', '2019-12-19 11:06:59', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/liana-mikah-RECZjSWMPVI-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(211, 1, '2019-12-19 12:07:12', '2019-12-19 11:07:12', '', 'mahbod-akhzami-jc9dkaaEYr4-unsplash', '', 'inherit', 'open', 'closed', '', 'mahbod-akhzami-jc9dkaaeyr4-unsplash', '', '', '2019-12-19 12:07:12', '2019-12-19 11:07:12', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/mahbod-akhzami-jc9dkaaEYr4-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(212, 1, '2019-12-19 12:07:21', '2019-12-19 11:07:21', '', 'maison', '', 'inherit', 'open', 'closed', '', 'maison', '', '', '2019-12-19 17:11:29', '2019-12-19 16:11:29', '', 71, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/maison.png', 0, 'attachment', 'image/png', 0),
(213, 1, '2019-12-19 12:07:24', '2019-12-19 11:07:24', '', 'michael-warf-f8egRYt5RGk-unsplash', '', 'inherit', 'open', 'closed', '', 'michael-warf-f8egryt5rgk-unsplash', '', '', '2019-12-19 12:07:24', '2019-12-19 11:07:24', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/michael-warf-f8egRYt5RGk-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(214, 1, '2019-12-19 12:07:35', '2019-12-19 11:07:35', '', 'olena-sergienko-gxKL334bUK4-unsplash', '', 'inherit', 'open', 'closed', '', 'olena-sergienko-gxkl334buk4-unsplash', '', '', '2019-12-20 10:20:23', '2019-12-20 09:20:23', '', 268, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/olena-sergienko-gxKL334bUK4-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(215, 1, '2019-12-19 12:07:47', '2019-12-19 11:07:47', '', 'patrick-perkins-3wylDrjxH-E-unsplash', '', 'inherit', 'open', 'closed', '', 'patrick-perkins-3wyldrjxh-e-unsplash', '', '', '2019-12-19 22:06:47', '2019-12-19 21:06:47', '', 18, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/patrick-perkins-3wylDrjxH-E-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(216, 1, '2019-12-19 12:07:52', '2019-12-19 11:07:52', '', 'phillip-goldsberry-fZuleEfeA1Q-unsplash', '', 'inherit', 'open', 'closed', '', 'phillip-goldsberry-fzuleefea1q-unsplash', '', '', '2019-12-19 12:07:52', '2019-12-19 11:07:52', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/phillip-goldsberry-fZuleEfeA1Q-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(217, 1, '2019-12-19 12:08:02', '2019-12-19 11:08:02', '', 'réseaubla5nc', '', 'inherit', 'open', 'closed', '', 'reseaubla5nc', '', '', '2019-12-19 12:08:02', '2019-12-19 11:08:02', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/réseaubla5nc.png', 0, 'attachment', 'image/png', 0),
(218, 1, '2019-12-19 12:08:06', '2019-12-19 11:08:06', '', 'robert-anasch-wj2UvbOtRbY-unsplash (1)', '', 'inherit', 'open', 'closed', '', 'robert-anasch-wj2uvbotrby-unsplash-1', '', '', '2019-12-19 12:08:06', '2019-12-19 11:08:06', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/robert-anasch-wj2UvbOtRbY-unsplash-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(219, 1, '2019-12-19 12:08:13', '2019-12-19 11:08:13', '', 'robert-anasch-wj2UvbOtRbY-unsplash', '', 'inherit', 'open', 'closed', '', 'robert-anasch-wj2uvbotrby-unsplash', '', '', '2019-12-19 12:08:13', '2019-12-19 11:08:13', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/robert-anasch-wj2UvbOtRbY-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(220, 1, '2019-12-19 12:08:19', '2019-12-19 11:08:19', '', 'roman-bozhko-OXXsAafHDeo-unsplash', '', 'inherit', 'open', 'closed', '', 'roman-bozhko-oxxsaafhdeo-unsplash', '', '', '2019-12-19 12:08:19', '2019-12-19 11:08:19', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/roman-bozhko-OXXsAafHDeo-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(221, 1, '2019-12-19 12:08:39', '2019-12-19 11:08:39', '', 'samantha-gades-XDaa1RPb6n8-unsplash', '', 'inherit', 'open', 'closed', '', 'samantha-gades-xdaa1rpb6n8-unsplash', '', '', '2019-12-19 12:08:39', '2019-12-19 11:08:39', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/samantha-gades-XDaa1RPb6n8-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(222, 1, '2019-12-19 12:08:51', '2019-12-19 11:08:51', '', 'toa-heftiba-FV3GConVSss-unsplash', '', 'inherit', 'open', 'closed', '', 'toa-heftiba-fv3gconvsss-unsplash', '', '', '2019-12-19 22:18:50', '2019-12-19 21:18:50', '', 18, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/toa-heftiba-FV3GConVSss-unsplash.jpg', 0, 'attachment', 'image/jpeg', 0),
(223, 1, '2019-12-19 12:13:41', '2019-12-19 11:13:41', '', 'bc', '', 'inherit', 'open', 'closed', '', 'bc', '', '', '2019-12-19 16:57:03', '2019-12-19 15:57:03', '', 71, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/bc.png', 0, 'attachment', 'image/png', 0),
(229, 1, '2019-12-19 16:56:43', '2019-12-19 15:56:43', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'background_image', 'background_image', 'publish', 'closed', 'closed', '', 'field_5dfb9da5b173e', '', '', '2019-12-19 17:53:00', '2019-12-19 16:53:00', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=229', 21, 'acf-field', '', 0),
(230, 1, '2019-12-19 16:57:03', '2019-12-19 15:57:03', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-19 16:57:03', '2019-12-19 15:57:03', '', 71, 'http://localhost:8888/kerako/2019/12/19/71-revision-v1/', 0, 'revision', '', 0),
(231, 1, '2019-12-19 17:11:29', '2019-12-19 16:11:29', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-19 17:11:29', '2019-12-19 16:11:29', '', 71, 'http://localhost:8888/kerako/2019/12/19/71-revision-v1/', 0, 'revision', '', 0),
(232, 1, '2019-12-19 17:52:14', '2019-12-19 16:52:14', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-19 17:52:14', '2019-12-19 16:52:14', '', 71, 'http://localhost:8888/kerako/2019/12/19/71-revision-v1/', 0, 'revision', '', 0),
(233, 1, '2019-12-19 17:53:00', '2019-12-19 16:53:00', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'story_desc_2', 'story_desc_2', 'publish', 'closed', 'closed', '', 'field_5dfbaae7acd61', '', '', '2019-12-19 17:53:00', '2019-12-19 16:53:00', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&p=233', 17, 'acf-field', '', 0),
(234, 1, '2019-12-19 17:53:35', '2019-12-19 16:53:35', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-19 17:53:35', '2019-12-19 16:53:35', '', 71, 'http://localhost:8888/kerako/2019/12/19/71-revision-v1/', 0, 'revision', '', 0),
(235, 1, '2019-12-19 17:54:29', '2019-12-19 16:54:29', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-19 17:54:29', '2019-12-19 16:54:29', '', 71, 'http://localhost:8888/kerako/2019/12/19/71-revision-v1/', 0, 'revision', '', 0),
(236, 1, '2019-12-19 18:00:22', '2019-12-19 17:00:22', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-19 18:00:22', '2019-12-19 17:00:22', '', 71, 'http://localhost:8888/kerako/2019/12/19/71-revision-v1/', 0, 'revision', '', 0),
(237, 1, '2019-12-19 18:00:59', '2019-12-19 17:00:59', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-19 18:00:59', '2019-12-19 17:00:59', '', 71, 'http://localhost:8888/kerako/2019/12/19/71-revision-v1/', 0, 'revision', '', 0),
(238, 1, '2019-12-19 18:03:19', '2019-12-19 17:03:19', '', 'Création', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-19 18:03:19', '2019-12-19 17:03:19', '', 10, 'http://localhost:8888/kerako/2019/12/19/10-revision-v1/', 0, 'revision', '', 0),
(239, 1, '2019-12-19 18:03:35', '2019-12-19 17:03:35', '', 'Upcycling', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-12-19 18:03:35', '2019-12-19 17:03:35', '', 13, 'http://localhost:8888/kerako/2019/12/19/13-revision-v1/', 0, 'revision', '', 0),
(240, 1, '2019-12-19 18:03:47', '2019-12-19 17:03:47', '', 'Vintages', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-19 18:03:47', '2019-12-19 17:03:47', '', 16, 'http://localhost:8888/kerako/2019/12/19/16-revision-v1/', 0, 'revision', '', 0),
(241, 1, '2019-12-19 18:04:37', '2019-12-19 17:04:37', '', 'Notre histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-19 18:04:37', '2019-12-19 17:04:37', '', 18, 'http://localhost:8888/kerako/2019/12/19/18-revision-v1/', 0, 'revision', '', 0),
(242, 1, '2019-12-19 21:15:54', '2019-12-19 20:15:54', '', 'Logo_blanc', '', 'inherit', 'open', 'closed', '', 'logo_blanc-2', '', '', '2019-12-19 21:15:54', '2019-12-19 20:15:54', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/Logo_blanc-1.png', 0, 'attachment', 'image/png', 0),
(243, 1, '2019-12-19 21:27:47', '2019-12-19 20:27:47', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'footer', 'footer', 'trash', 'closed', 'closed', '', 'group_5dfbdd1a91cad__trashed', '', '', '2019-12-19 21:28:58', '2019-12-19 20:28:58', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=243', 0, 'acf-field-group', '', 0),
(244, 1, '2019-12-19 21:27:47', '2019-12-19 20:27:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'adresse', 'adresse', 'trash', 'closed', 'closed', '', 'field_5dfbdd1e8fc08__trashed', '', '', '2019-12-19 21:28:58', '2019-12-19 20:28:58', '', 243, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=244', 0, 'acf-field', '', 0),
(245, 1, '2019-12-19 21:27:47', '2019-12-19 20:27:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'tel', 'tel', 'trash', 'closed', 'closed', '', 'field_5dfbdd2f8fc09__trashed', '', '', '2019-12-19 21:28:58', '2019-12-19 20:28:58', '', 243, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=245', 1, 'acf-field', '', 0),
(246, 1, '2019-12-19 21:27:47', '2019-12-19 20:27:47', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'mail', 'mail', 'trash', 'closed', 'closed', '', 'field_5dfbdd398fc0a__trashed', '', '', '2019-12-19 21:28:58', '2019-12-19 20:28:58', '', 243, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=246', 2, 'acf-field', '', 0),
(250, 1, '2019-12-19 22:02:51', '2019-12-19 21:02:51', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'histoire_info_1', 'histoire_info_1', 'publish', 'closed', 'closed', '', 'field_5dfbe54246aa2', '', '', '2019-12-20 12:30:16', '2019-12-20 11:30:16', '', 126, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=250', 8, 'acf-field', '', 0),
(251, 1, '2019-12-19 22:02:51', '2019-12-19 21:02:51', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'histoire_info_img_1', 'histoire_info_img_1', 'publish', 'closed', 'closed', '', 'field_5dfbe55946aa4', '', '', '2019-12-20 12:30:16', '2019-12-20 11:30:16', '', 126, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=251', 9, 'acf-field', '', 0),
(252, 1, '2019-12-19 22:02:51', '2019-12-19 21:02:51', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'histoire_info_2', 'histoire_info_2', 'publish', 'closed', 'closed', '', 'field_5dfbe55546aa3', '', '', '2019-12-20 12:30:16', '2019-12-20 11:30:16', '', 126, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=252', 10, 'acf-field', '', 0),
(253, 1, '2019-12-19 22:02:51', '2019-12-19 21:02:51', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'histoire_info_img_2', 'histoire_info_img_2', 'publish', 'closed', 'closed', '', 'field_5dfbe56e46aa5', '', '', '2019-12-20 12:30:16', '2019-12-20 11:30:16', '', 126, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=253', 11, 'acf-field', '', 0),
(254, 1, '2019-12-19 22:05:45', '2019-12-19 21:05:45', '', 'dane-deaner-qRfMB-IOQjE-unsplash', '', 'inherit', 'open', 'closed', '', 'dane-deaner-qrfmb-ioqje-unsplash-2', '', '', '2019-12-19 22:06:47', '2019-12-19 21:06:47', '', 18, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/dane-deaner-qRfMB-IOQjE-unsplash.png', 0, 'attachment', 'image/png', 0),
(255, 1, '2019-12-19 22:06:47', '2019-12-19 21:06:47', '', 'Notre histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-19 22:06:47', '2019-12-19 21:06:47', '', 18, 'http://localhost:8888/kerako/2019/12/19/18-revision-v1/', 0, 'revision', '', 0),
(257, 1, '2019-12-19 22:18:50', '2019-12-19 21:18:50', '', 'Notre histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-19 22:18:50', '2019-12-19 21:18:50', '', 18, 'http://localhost:8888/kerako/2019/12/19/18-revision-v1/', 0, 'revision', '', 0),
(258, 1, '2019-12-19 22:39:49', '2019-12-19 21:39:49', '', 'Notre histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-19 22:39:49', '2019-12-19 21:39:49', '', 18, 'http://localhost:8888/kerako/2019/12/19/18-revision-v1/', 0, 'revision', '', 0),
(259, 1, '2019-12-19 22:45:34', '2019-12-19 21:45:34', '', 'behzad-ghaffarian-nhWgZNV85LQ-unsplash', '', 'inherit', 'open', 'closed', '', 'behzad-ghaffarian-nhwgznv85lq-unsplash-2', '', '', '2019-12-19 22:45:47', '2019-12-19 21:45:47', '', 18, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/behzad-ghaffarian-nhWgZNV85LQ-unsplash.png', 0, 'attachment', 'image/png', 0),
(260, 1, '2019-12-19 22:45:47', '2019-12-19 21:45:47', '', 'Notre histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-19 22:45:47', '2019-12-19 21:45:47', '', 18, 'http://localhost:8888/kerako/2019/12/19/18-revision-v1/', 0, 'revision', '', 0),
(261, 1, '2019-12-19 22:47:43', '2019-12-19 21:47:43', '', 'Notre histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-19 22:47:43', '2019-12-19 21:47:43', '', 18, 'http://localhost:8888/kerako/2019/12/19/18-revision-v1/', 0, 'revision', '', 0),
(262, 1, '2019-12-19 22:49:47', '2019-12-19 21:49:47', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'separateur_img', 'separateur_img', 'publish', 'closed', 'closed', '', 'field_5dfbf05f7da31', '', '', '2019-12-20 12:30:16', '2019-12-20 11:30:16', '', 126, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=262', 7, 'acf-field', '', 0),
(263, 1, '2019-12-19 22:50:00', '2019-12-19 21:50:00', '', 'Notre histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-19 22:50:00', '2019-12-19 21:50:00', '', 18, 'http://localhost:8888/kerako/2019/12/19/18-revision-v1/', 0, 'revision', '', 0),
(264, 1, '2019-12-20 10:15:42', '2019-12-20 09:15:42', '', 'Boutique', '', 'publish', 'closed', 'closed', '', 'boutique', '', '', '2019-12-20 10:15:42', '2019-12-20 09:15:42', '', 0, 'http://localhost:8888/kerako/boutique/', 0, 'page', '', 0),
(265, 1, '2019-12-20 10:15:42', '2019-12-20 09:15:42', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Panier', '', 'publish', 'closed', 'closed', '', 'panier-2', '', '', '2019-12-20 10:15:42', '2019-12-20 09:15:42', '', 0, 'http://localhost:8888/kerako/panier-2/', 0, 'page', '', 0);
INSERT INTO `kr_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(266, 1, '2019-12-20 10:15:42', '2019-12-20 09:15:42', '<!-- wp:shortcode -->\n[woocommerce_checkout]\n<!-- /wp:shortcode -->', 'Validation de la commande', '', 'publish', 'closed', 'closed', '', 'commande', '', '', '2019-12-20 10:50:40', '2019-12-20 09:50:40', '', 0, 'http://localhost:8888/kerako/commande/', 0, 'page', '', 0),
(267, 1, '2019-12-20 10:15:42', '2019-12-20 09:15:42', '<!-- wp:shortcode -->\n[woocommerce_my_account]\n<!-- /wp:shortcode -->', 'Mon compte', '', 'publish', 'closed', 'closed', '', 'mon-compte', '', '', '2020-01-09 10:57:22', '2020-01-09 09:57:22', '', 0, 'http://localhost:8888/kerako/mon-compte/', 0, 'page', '', 0),
(268, 1, '2019-12-20 10:20:47', '2019-12-20 09:20:47', 'lorem ipsum\r\n\r\n&nbsp;', 'produit 1', '', 'publish', 'open', 'closed', '', 'produit-1', '', '', '2019-12-20 10:23:34', '2019-12-20 09:23:34', '', 0, 'http://localhost:8888/kerako/?post_type=product&#038;p=268', 0, 'product', '', 0),
(270, 1, '2019-12-20 10:21:51', '2019-12-20 09:21:51', '&nbsp;\n\n&nbsp;', 'produit 1', '', 'inherit', 'closed', 'closed', '', '268-autosave-v1', '', '', '2019-12-20 10:21:51', '2019-12-20 09:21:51', '', 268, 'http://localhost:8888/kerako/2019/12/20/268-autosave-v1/', 0, 'revision', '', 0),
(271, 1, '2019-12-20 10:25:27', '2019-12-20 09:25:27', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam a lorem in turpis lacinia rutrum. Maecenas tincidunt at purus ut mollis. Sed dapibus augue vel orci interdum fermentum. Nullam mattis metus ac lorem dapibus placerat. Proin vel libero dictum turpis varius pretium. Vivamus placerat ex et nisi pretium, id sollicitudin sapien varius. Nam lacinia faucibus tellus, quis pulvinar enim blandit at. Duis pretium egestas eros varius malesuada. Suspendisse malesuada ligula sed eros sodales, eu lobortis justo faucibus. Mauris nec ornare ipsum, sed aliquam mi. Donec eu ipsum vitae lorem commodo sagittis. Proin congue enim vel lorem lobortis lacinia. Nam eu auctor quam, interdum aliquet urna. Aenean eget commodo dolor. Sed ornare bibendum tristique.\r\n\r\nInterdum et malesuada fames ac ante ipsum primis in faucibus. Integer hendrerit lorem lorem, non cursus erat ultrices vitae. Vestibulum at diam id lacus mattis egestas vel hendrerit diam. Pellentesque sed accumsan lectus. Nunc at euismod augue. Nulla porta neque eu nisl varius sollicitudin. Aenean placerat efficitur feugiat. Pellentesque molestie libero et lectus vestibulum vestibulum.\r\n\r\nProin sit amet lacinia risus, nec posuere odio. Nam eu leo eu ante faucibus dapibus vitae non metus. Aliquam elementum convallis placerat. Aliquam eget blandit elit. Mauris dignissim justo tortor, eget blandit metus dignissim in. Cras nibh lacus, volutpat in tincidunt at, iaculis consectetur eros. In feugiat sed tellus eu aliquet. Aenean blandit molestie vestibulum.', 'Produit 2', '', 'publish', 'open', 'closed', '', 'produit-2', '', '', '2019-12-20 10:26:06', '2019-12-20 09:26:06', '', 0, 'http://localhost:8888/kerako/?post_type=product&#038;p=271', 0, 'product', '', 0),
(272, 1, '2019-12-20 10:37:07', '2019-12-20 09:37:07', '', 'Boutique', '', 'inherit', 'closed', 'closed', '', '264-autosave-v1', '', '', '2019-12-20 10:37:07', '2019-12-20 09:37:07', '', 264, 'http://localhost:8888/kerako/2019/12/20/264-autosave-v1/', 0, 'revision', '', 0),
(273, 1, '2019-12-20 10:50:22', '2019-12-20 09:50:22', '<!-- wp:shortcode -->\n[woocommerce_checkout]\n<!-- /wp:shortcode -->', 'Validation de la commande', '', 'inherit', 'closed', 'closed', '', '266-revision-v1', '', '', '2019-12-20 10:50:22', '2019-12-20 09:50:22', '', 266, 'http://localhost:8888/kerako/2019/12/20/266-revision-v1/', 0, 'revision', '', 0),
(274, 1, '2019-12-20 12:29:52', '2019-12-20 11:29:52', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'atelier_desc_para2', 'atelier_desc_para2', 'publish', 'closed', 'closed', '', 'field_5dfcb09a25f81', '', '', '2019-12-20 12:29:52', '2019-12-20 11:29:52', '', 126, 'http://localhost:8888/kerako/?post_type=acf-field&p=274', 2, 'acf-field', '', 0),
(275, 1, '2019-12-20 12:29:52', '2019-12-20 11:29:52', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'atelier_desc_para3', 'atelier_desc_para3', 'publish', 'closed', 'closed', '', 'field_5dfcb0a625f82', '', '', '2019-12-20 12:30:16', '2019-12-20 11:30:16', '', 126, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=275', 3, 'acf-field', '', 0),
(276, 1, '2019-12-20 12:30:16', '2019-12-20 11:30:16', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'atelier_desc_para4', 'atelier_desc_para4', 'publish', 'closed', 'closed', '', 'field_5dfcb0ba40fba', '', '', '2019-12-20 12:30:16', '2019-12-20 11:30:16', '', 126, 'http://localhost:8888/kerako/?post_type=acf-field&p=276', 4, 'acf-field', '', 0),
(277, 1, '2019-12-20 12:31:02', '2019-12-20 11:31:02', '', 'Notre histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-20 12:31:02', '2019-12-20 11:31:02', '', 18, 'http://localhost:8888/kerako/2019/12/20/18-revision-v1/', 0, 'revision', '', 0),
(278, 1, '2019-12-20 12:31:23', '2019-12-20 11:31:23', '', 'Notre histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-20 12:31:23', '2019-12-20 11:31:23', '', 18, 'http://localhost:8888/kerako/2019/12/20/18-revision-v1/', 0, 'revision', '', 0),
(279, 1, '2019-12-20 13:07:10', '2019-12-20 12:07:10', '', 'Notre histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-20 13:07:10', '2019-12-20 12:07:10', '', 18, 'http://localhost:8888/kerako/2019/12/20/18-revision-v1/', 0, 'revision', '', 0),
(280, 1, '2019-12-20 13:07:22', '2019-12-20 12:07:22', '', 'Notre histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-20 13:07:22', '2019-12-20 12:07:22', '', 18, 'http://localhost:8888/kerako/2019/12/20/18-revision-v1/', 0, 'revision', '', 0),
(281, 1, '2019-12-20 13:08:17', '2019-12-20 12:08:17', '', 'Notre histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-20 13:08:17', '2019-12-20 12:08:17', '', 18, 'http://localhost:8888/kerako/2019/12/20/18-revision-v1/', 0, 'revision', '', 0),
(282, 1, '2019-12-20 13:32:40', '2019-12-20 12:32:40', '', 'Notre histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-20 13:32:40', '2019-12-20 12:32:40', '', 18, 'http://localhost:8888/kerako/2019/12/20/18-revision-v1/', 0, 'revision', '', 0),
(283, 1, '2019-12-20 14:29:04', '2019-12-20 13:29:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'tel', 'tel', 'publish', 'closed', 'closed', '', 'field_5dfccc7ec482c', '', '', '2019-12-20 14:29:04', '2019-12-20 13:29:04', '', 118, 'http://localhost:8888/kerako/?post_type=acf-field&p=283', 0, 'acf-field', '', 0),
(284, 1, '2019-12-20 14:29:04', '2019-12-20 13:29:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'mail', 'mail', 'publish', 'closed', 'closed', '', 'field_5dfccc98c482d', '', '', '2019-12-20 14:29:04', '2019-12-20 13:29:04', '', 118, 'http://localhost:8888/kerako/?post_type=acf-field&p=284', 1, 'acf-field', '', 0),
(285, 1, '2019-12-20 14:29:28', '2019-12-20 13:29:28', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-12-20 14:29:28', '2019-12-20 13:29:28', '', 26, 'http://localhost:8888/kerako/2019/12/20/26-revision-v1/', 0, 'revision', '', 0),
(286, 1, '2019-12-20 15:36:16', '2019-12-20 14:36:16', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-12-20 15:36:16', '2019-12-20 14:36:16', '', 26, 'http://localhost:8888/kerako/2019/12/20/26-revision-v1/', 0, 'revision', '', 0),
(287, 1, '2020-01-09 10:41:19', '2020-01-09 09:41:19', '', 'Client connexion', '', 'inherit', 'closed', 'closed', '', '110-autosave-v1', '', '', '2020-01-09 10:41:19', '2020-01-09 09:41:19', '', 110, 'http://localhost:8888/kerako/2020/01/09/110-autosave-v1/', 0, 'revision', '', 0),
(289, 1, '2020-01-09 10:56:13', '2020-01-09 09:56:13', '<!-- wp:shortcode -->\n[woocommerce_my_account]\n<!-- /wp:shortcode -->', 'Mon compte', '', 'inherit', 'closed', 'closed', '', '267-revision-v1', '', '', '2020-01-09 10:56:13', '2020-01-09 09:56:13', '', 267, 'http://localhost:8888/kerako/2020/01/09/267-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `kr_termmeta`
--

CREATE TABLE `kr_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `kr_termmeta`
--

INSERT INTO `kr_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'product_count_product_cat', '2');

-- --------------------------------------------------------

--
-- Structure de la table `kr_terms`
--

CREATE TABLE `kr_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `kr_terms`
--

INSERT INTO `kr_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'primary_menu', 'primary_menu', 0),
(3, 'footer', 'footer', 0),
(4, 'simple', 'simple', 0),
(5, 'grouped', 'grouped', 0),
(6, 'variable', 'variable', 0),
(7, 'external', 'external', 0),
(8, 'exclude-from-search', 'exclude-from-search', 0),
(9, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(10, 'featured', 'featured', 0),
(11, 'outofstock', 'outofstock', 0),
(12, 'rated-1', 'rated-1', 0),
(13, 'rated-2', 'rated-2', 0),
(14, 'rated-3', 'rated-3', 0),
(15, 'rated-4', 'rated-4', 0),
(16, 'rated-5', 'rated-5', 0),
(17, 'Non classé', 'non-classe', 0);

-- --------------------------------------------------------

--
-- Structure de la table `kr_term_relationships`
--

CREATE TABLE `kr_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `kr_term_relationships`
--

INSERT INTO `kr_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 1, 0),
(20, 2, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(34, 3, 0),
(37, 3, 0),
(175, 3, 0),
(176, 3, 0),
(268, 4, 0),
(268, 17, 0),
(271, 4, 0),
(271, 17, 0);

-- --------------------------------------------------------

--
-- Structure de la table `kr_term_taxonomy`
--

CREATE TABLE `kr_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `kr_term_taxonomy`
--

INSERT INTO `kr_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'product_type', '', 0, 2),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_cat', '', 0, 2);

-- --------------------------------------------------------

--
-- Structure de la table `kr_usermeta`
--

CREATE TABLE `kr_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `kr_usermeta`
--

INSERT INTO `kr_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'aelierKerako'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'kr_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'kr_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'kr_dashboard_quick_press_last_post_id', '142'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, '_woocommerce_tracks_anon_id', 'woo:7BzOFoPcXiuqaJDmGOxkQMT/'),
(22, 1, 'wc_last_active', '1578528000'),
(24, 1, 'kr_user-settings', 'libraryContent=browse&editor=tinymce'),
(25, 1, 'kr_user-settings-time', '1576435985'),
(26, 1, 'closedpostboxes_page', 'a:0:{}'),
(27, 1, 'metaboxhidden_page', 'a:0:{}'),
(29, 1, 'dismissed_no_secure_connection_notice', '1'),
(30, 1, 'dismissed_wc_admin_notice', '1'),
(31, 1, 'closedpostboxes_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(32, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(35, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"7f100b7b36092fb9b06dfb4fac360931\";a:6:{s:3:\"key\";s:32:\"7f100b7b36092fb9b06dfb4fac360931\";s:10:\"product_id\";i:271;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";}}}'),
(45, 1, 'session_tokens', 'a:1:{s:64:\"2469e61811ac9d3cda6e796c747eace3edbf7ad40e52641b2ba1989179a06c16\";a:4:{s:10:\"expiration\";i:1578740257;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117 Safari/537.36\";s:5:\"login\";i:1578567457;}}');

-- --------------------------------------------------------

--
-- Structure de la table `kr_users`
--

CREATE TABLE `kr_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `kr_users`
--

INSERT INTO `kr_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'aelierKerako', '$P$BWg75mUlUyoETp4xfA/C2eSmi4lQZF/', 'aelierkerako', 'pauline.aelion@edu.devinci.fr', '', '2019-12-05 09:10:19', '', 0, 'aelierKerako');

-- --------------------------------------------------------

--
-- Structure de la table `kr_wc_download_log`
--

CREATE TABLE `kr_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `kr_wc_product_meta_lookup`
--

CREATE TABLE `kr_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `kr_wc_product_meta_lookup`
--

INSERT INTO `kr_wc_product_meta_lookup` (`product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`) VALUES
(268, '', 0, 0, '160.00', '160.00', 0, NULL, 'instock', 0, '0.00', 0),
(271, '', 0, 0, '100.00', '100.00', 0, NULL, 'instock', 0, '0.00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `kr_wc_tax_rate_classes`
--

CREATE TABLE `kr_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `kr_wc_tax_rate_classes`
--

INSERT INTO `kr_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Taux réduit', 'taux-reduit'),
(2, 'Taux zéro', 'taux-zero');

-- --------------------------------------------------------

--
-- Structure de la table `kr_wc_webhooks`
--

CREATE TABLE `kr_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `kr_woocommerce_api_keys`
--

CREATE TABLE `kr_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `kr_woocommerce_attribute_taxonomies`
--

CREATE TABLE `kr_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `kr_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `kr_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `kr_woocommerce_log`
--

CREATE TABLE `kr_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `kr_woocommerce_order_itemmeta`
--

CREATE TABLE `kr_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `kr_woocommerce_order_items`
--

CREATE TABLE `kr_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `kr_woocommerce_payment_tokenmeta`
--

CREATE TABLE `kr_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `kr_woocommerce_payment_tokens`
--

CREATE TABLE `kr_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `kr_woocommerce_sessions`
--

CREATE TABLE `kr_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `kr_woocommerce_sessions`
--

INSERT INTO `kr_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(3, '89a31bc7a972964b95c09a03c844175d', 'a:1:{s:8:\"customer\";s:717:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"FR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"FR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:29:\"pauline.aelion@edu.devinci.fr\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1578735204),
(5, 'fa84303e786cc6b4897a9c025e61a800', 'a:1:{s:8:\"customer\";s:717:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"FR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"FR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:29:\"pauline.aelion@edu.devinci.fr\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1578736434),
(7, 'feba9529fb922e9b8ce67b593c96cc56', 'a:1:{s:8:\"customer\";s:717:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"FR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"FR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:29:\"pauline.aelion@edu.devinci.fr\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1578736569),
(9, '2d0b8d1f1dbd15a206640169043fab31', 'a:1:{s:8:\"customer\";s:717:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"FR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"FR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:29:\"pauline.aelion@edu.devinci.fr\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1578737755),
(11, '7948719053b750587176ffef46a4d853', 'a:1:{s:8:\"customer\";s:717:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"FR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"FR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:29:\"pauline.aelion@edu.devinci.fr\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1578740098),
(12, '1', 'a:11:{s:4:\"cart\";s:413:\"a:1:{s:32:\"7f100b7b36092fb9b06dfb4fac360931\";a:11:{s:3:\"key\";s:32:\"7f100b7b36092fb9b06dfb4fac360931\";s:10:\"product_id\";i:271;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:100;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:100;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:409:\"a:15:{s:8:\"subtotal\";s:6:\"100.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:5:\"10.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:6:\"100.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"110.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:377:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_9f7dc15ffb156e76da0f19a94db719ee\";s:5:\"rates\";a:1:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:7:\"Forfait\";s:4:\"cost\";s:5:\"10.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:8:\"Articles\";s:19:\"Produit 2 &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:39:\"a:1:{i:0;a:1:{i:0;s:11:\"flat_rate:1\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:8:\"customer\";s:717:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"FR\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"FR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:29:\"pauline.aelion@edu.devinci.fr\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1578740257);

-- --------------------------------------------------------

--
-- Structure de la table `kr_woocommerce_shipping_zones`
--

CREATE TABLE `kr_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `kr_woocommerce_shipping_zones`
--

INSERT INTO `kr_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'France', 0);

-- --------------------------------------------------------

--
-- Structure de la table `kr_woocommerce_shipping_zone_locations`
--

CREATE TABLE `kr_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `kr_woocommerce_shipping_zone_locations`
--

INSERT INTO `kr_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'FR', 'country');

-- --------------------------------------------------------

--
-- Structure de la table `kr_woocommerce_shipping_zone_methods`
--

CREATE TABLE `kr_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Déchargement des données de la table `kr_woocommerce_shipping_zone_methods`
--

INSERT INTO `kr_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `kr_woocommerce_tax_rates`
--

CREATE TABLE `kr_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `kr_woocommerce_tax_rate_locations`
--

CREATE TABLE `kr_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `kr_commentmeta`
--
ALTER TABLE `kr_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `kr_comments`
--
ALTER TABLE `kr_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Index pour la table `kr_links`
--
ALTER TABLE `kr_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `kr_options`
--
ALTER TABLE `kr_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Index pour la table `kr_postmeta`
--
ALTER TABLE `kr_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `kr_posts`
--
ALTER TABLE `kr_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `kr_termmeta`
--
ALTER TABLE `kr_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `kr_terms`
--
ALTER TABLE `kr_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `kr_term_relationships`
--
ALTER TABLE `kr_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `kr_term_taxonomy`
--
ALTER TABLE `kr_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `kr_usermeta`
--
ALTER TABLE `kr_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `kr_users`
--
ALTER TABLE `kr_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `kr_wc_download_log`
--
ALTER TABLE `kr_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Index pour la table `kr_wc_product_meta_lookup`
--
ALTER TABLE `kr_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Index pour la table `kr_wc_tax_rate_classes`
--
ALTER TABLE `kr_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Index pour la table `kr_wc_webhooks`
--
ALTER TABLE `kr_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `kr_woocommerce_api_keys`
--
ALTER TABLE `kr_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Index pour la table `kr_woocommerce_attribute_taxonomies`
--
ALTER TABLE `kr_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Index pour la table `kr_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `kr_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Index pour la table `kr_woocommerce_log`
--
ALTER TABLE `kr_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Index pour la table `kr_woocommerce_order_itemmeta`
--
ALTER TABLE `kr_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index pour la table `kr_woocommerce_order_items`
--
ALTER TABLE `kr_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `kr_woocommerce_payment_tokenmeta`
--
ALTER TABLE `kr_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index pour la table `kr_woocommerce_payment_tokens`
--
ALTER TABLE `kr_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `kr_woocommerce_sessions`
--
ALTER TABLE `kr_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Index pour la table `kr_woocommerce_shipping_zones`
--
ALTER TABLE `kr_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Index pour la table `kr_woocommerce_shipping_zone_locations`
--
ALTER TABLE `kr_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Index pour la table `kr_woocommerce_shipping_zone_methods`
--
ALTER TABLE `kr_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Index pour la table `kr_woocommerce_tax_rates`
--
ALTER TABLE `kr_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Index pour la table `kr_woocommerce_tax_rate_locations`
--
ALTER TABLE `kr_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `kr_commentmeta`
--
ALTER TABLE `kr_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `kr_comments`
--
ALTER TABLE `kr_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `kr_links`
--
ALTER TABLE `kr_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `kr_options`
--
ALTER TABLE `kr_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1746;

--
-- AUTO_INCREMENT pour la table `kr_postmeta`
--
ALTER TABLE `kr_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2189;

--
-- AUTO_INCREMENT pour la table `kr_posts`
--
ALTER TABLE `kr_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=290;

--
-- AUTO_INCREMENT pour la table `kr_termmeta`
--
ALTER TABLE `kr_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `kr_terms`
--
ALTER TABLE `kr_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `kr_term_taxonomy`
--
ALTER TABLE `kr_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `kr_usermeta`
--
ALTER TABLE `kr_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT pour la table `kr_users`
--
ALTER TABLE `kr_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `kr_wc_download_log`
--
ALTER TABLE `kr_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `kr_wc_tax_rate_classes`
--
ALTER TABLE `kr_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `kr_wc_webhooks`
--
ALTER TABLE `kr_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_api_keys`
--
ALTER TABLE `kr_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_attribute_taxonomies`
--
ALTER TABLE `kr_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `kr_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_log`
--
ALTER TABLE `kr_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_order_itemmeta`
--
ALTER TABLE `kr_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_order_items`
--
ALTER TABLE `kr_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_payment_tokenmeta`
--
ALTER TABLE `kr_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_payment_tokens`
--
ALTER TABLE `kr_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_sessions`
--
ALTER TABLE `kr_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_shipping_zones`
--
ALTER TABLE `kr_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_shipping_zone_locations`
--
ALTER TABLE `kr_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_shipping_zone_methods`
--
ALTER TABLE `kr_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_tax_rates`
--
ALTER TABLE `kr_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_tax_rate_locations`
--
ALTER TABLE `kr_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `kr_wc_download_log`
--
ALTER TABLE `kr_wc_download_log`
  ADD CONSTRAINT `fk_kr_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `kr_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
