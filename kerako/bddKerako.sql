-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mer. 18 déc. 2019 à 10:38
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
(29, 'rewrite_rules', 'a:150:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"produit/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produit/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produit/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produit/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produit/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produit/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produit/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produit/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:36:\"produit/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produit/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:32:\"produit/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produit/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produit/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produit/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produit/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produit/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produit/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:33:\"produit/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produit/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produit/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:56:\"categorie-produit/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:51:\"categorie-produit/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:32:\"categorie-produit/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:44:\"categorie-produit/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:26:\"categorie-produit/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:58:\"etiquette-produit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:53:\"etiquette-produit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:34:\"etiquette-produit/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:46:\"etiquette-produit/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:28:\"etiquette-produit/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
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
(97, 'WPLANG', '', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:14:{i:1576665571;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1576667420;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1576669124;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1576673310;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576673320;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576684110;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576694910;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1576703420;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1576710000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576746619;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576746629;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1576746632;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1578355200;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
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
(185, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:29:\"pauline.aelion@edu.devinci.fr\";s:7:\"version\";s:5:\"5.3.1\";s:9:\"timestamp\";i:1576241069;}', 'no'),
(194, 'woocommerce_store_address', '', 'yes'),
(195, 'woocommerce_store_address_2', '', 'yes'),
(196, 'woocommerce_store_city', '', 'yes'),
(197, 'woocommerce_default_country', 'GB', 'yes'),
(198, 'woocommerce_store_postcode', '', 'yes'),
(199, 'woocommerce_allowed_countries', 'all', 'yes'),
(200, 'woocommerce_all_except_countries', '', 'yes'),
(201, 'woocommerce_specific_allowed_countries', '', 'yes'),
(202, 'woocommerce_ship_to_countries', '', 'yes'),
(203, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(204, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(205, 'woocommerce_calc_taxes', 'no', 'yes'),
(206, 'woocommerce_enable_coupons', 'yes', 'yes'),
(207, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(208, 'woocommerce_currency', 'GBP', 'yes'),
(209, 'woocommerce_currency_pos', 'left', 'yes'),
(210, 'woocommerce_price_thousand_sep', ',', 'yes'),
(211, 'woocommerce_price_decimal_sep', '.', 'yes'),
(212, 'woocommerce_price_num_decimals', '2', 'yes'),
(213, 'woocommerce_shop_page_id', '', 'yes'),
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
(273, 'woocommerce_cart_page_id', '', 'no'),
(274, 'woocommerce_checkout_page_id', '', 'no'),
(275, 'woocommerce_myaccount_page_id', '', 'no'),
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
(300, 'current_theme_supports_woocommerce', 'no', 'yes'),
(301, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(302, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(303, 'product_cat_children', 'a:0:{}', 'yes'),
(304, 'default_product_cat', '17', 'yes'),
(307, 'woocommerce_version', '3.8.1', 'yes'),
(308, 'woocommerce_db_version', '3.8.1', 'yes'),
(309, 'woocommerce_admin_notices', 'a:3:{i:0;s:7:\"install\";i:1;s:20:\"no_secure_connection\";i:2;s:8:\"wc_admin\";}', 'yes'),
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
(325, '_transient_timeout_external_ip_address_::1', '1576846112', 'no'),
(326, '_transient_external_ip_address_::1', '89.30.29.68', 'no'),
(327, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(328, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:8:\"approved\";s:1:\"1\";s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(329, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(373, 'acf_version', '5.8.7', 'yes'),
(597, 'new_admin_email', 'pauline.aelion@edu.devinci.fr', 'yes'),
(607, '_transient_timeout__woocommerce_helper_subscriptions', '1576666425', 'no'),
(608, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(609, '_site_transient_timeout_theme_roots', '1576667325', 'no'),
(610, '_site_transient_theme_roots', 'a:5:{s:11:\"themeKerako\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(611, '_transient_timeout__woocommerce_helper_updates', '1576708725', 'no'),
(612, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1576665525;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(614, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.1\";s:7:\"version\";s:5:\"5.3.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1576665529;s:15:\"version_checked\";s:5:\"5.3.1\";s:12:\"translations\";a:0:{}}', 'no'),
(615, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1576665530;s:7:\"checked\";a:5:{s:11:\"themeKerako\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.0\";}s:8:\"response\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.1.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}}', 'no'),
(616, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1576665530;s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.8.7\";s:19:\"akismet/akismet.php\";s:5:\"4.1.3\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.8.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.8.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.8.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

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
(25, 10, '_edit_lock', '1576570005:1'),
(26, 12, '_menu_item_type', 'post_type'),
(27, 12, '_menu_item_menu_item_parent', '0'),
(28, 12, '_menu_item_object_id', '10'),
(29, 12, '_menu_item_object', 'page'),
(30, 12, '_menu_item_target', ''),
(31, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 12, '_menu_item_xfn', ''),
(33, 12, '_menu_item_url', ''),
(34, 12, '_menu_item_orphaned', '1576139942'),
(35, 13, '_edit_lock', '1576586698:1'),
(36, 16, '_edit_lock', '1576586702:1'),
(37, 18, '_edit_lock', '1576139923:1'),
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
(78, 26, '_edit_lock', '1576433988:1'),
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
(90, 33, '_menu_item_type', 'post_type'),
(91, 33, '_menu_item_menu_item_parent', '0'),
(92, 33, '_menu_item_object_id', '28'),
(93, 33, '_menu_item_object', 'page'),
(94, 33, '_menu_item_target', ''),
(95, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 33, '_menu_item_xfn', ''),
(97, 33, '_menu_item_url', ''),
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
(117, 36, '_menu_item_type', 'post_type'),
(118, 36, '_menu_item_menu_item_parent', '0'),
(119, 36, '_menu_item_object_id', '30'),
(120, 36, '_menu_item_object', 'page'),
(121, 36, '_menu_item_target', ''),
(122, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(123, 36, '_menu_item_xfn', ''),
(124, 36, '_menu_item_url', ''),
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
(145, 26, '_wp_page_template', 'page-service.php'),
(146, 16, '_wp_page_template', 'page-vintage.php'),
(147, 47, '_edit_last', '1'),
(148, 47, '_edit_lock', '1576586139:1'),
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
(186, 66, '_wp_attached_file', '2019/12/tache.png'),
(187, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:965;s:6:\"height\";i:785;s:4:\"file\";s:17:\"2019/12/tache.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"tache-300x244.png\";s:5:\"width\";i:300;s:6:\"height\";i:244;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"tache-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"tache-768x625.png\";s:5:\"width\";i:768;s:6:\"height\";i:625;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:17:\"tache-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:17:\"tache-600x488.png\";s:5:\"width\";i:600;s:6:\"height\";i:488;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:17:\"tache-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:17:\"tache-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:17:\"tache-600x488.png\";s:5:\"width\";i:600;s:6:\"height\";i:488;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:17:\"tache-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(188, 67, '_wp_attached_file', '2019/12/toa_heftiba_FV3GConVSss_unspla.png'),
(189, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:283;s:4:\"file\";s:42:\"2019/12/toa_heftiba_FV3GConVSss_unspla.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"toa_heftiba_FV3GConVSss_unspla-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:42:\"toa_heftiba_FV3GConVSss_unspla-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:42:\"toa_heftiba_FV3GConVSss_unspla-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(190, 70, 'table', '67'),
(191, 70, '_table', 'field_5df6860a06a89'),
(192, 71, '_edit_lock', '1576447551:1'),
(193, 73, '_edit_last', '1'),
(194, 73, '_edit_lock', '1576447681:1'),
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
(205, 71, 'story', ''),
(206, 71, '_story', 'field_5df6ac62defda'),
(207, 71, 'story_desc', ''),
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
(286, 93, '_edit_lock', '1576525818:1'),
(287, 94, '_edit_last', '1'),
(288, 94, '_edit_lock', '1576585964:1'),
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
(315, 110, '_edit_lock', '1576571305:1'),
(316, 110, '_wp_page_template', 'page-client-co.php'),
(317, 112, '_edit_lock', '1576571326:1'),
(318, 112, '_wp_page_template', 'page-client-compte.php'),
(319, 114, '_edit_lock', '1576571347:1'),
(320, 114, '_wp_page_template', 'page-blog.php'),
(321, 116, '_edit_lock', '1576571366:1'),
(322, 116, '_wp_page_template', 'page-article-single.php'),
(323, 118, '_edit_last', '1'),
(324, 118, '_edit_lock', '1576571418:1'),
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
(338, 126, '_edit_lock', '1576571604:1');

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
(10, 1, '2019-12-12 09:38:36', '2019-12-12 08:38:36', '', 'Créations', '', 'publish', 'closed', 'closed', '', 'creation', '', '', '2019-12-16 20:51:29', '2019-12-16 19:51:29', '', 0, 'http://localhost:8888/kerako/?page_id=10', 0, 'page', '', 0),
(11, 1, '2019-12-12 09:38:36', '2019-12-12 08:38:36', '', 'Création', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-12 09:38:36', '2019-12-12 08:38:36', '', 10, 'http://localhost:8888/kerako/2019/12/12/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-12-12 09:39:02', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-12 09:39:02', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/kerako/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2019-12-12 09:40:27', '2019-12-12 08:40:27', '', 'Réalisations', '', 'publish', 'closed', 'closed', '', 'realisations', '', '', '2019-12-17 09:25:08', '2019-12-17 08:25:08', '', 0, 'http://localhost:8888/kerako/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-12-12 09:40:27', '2019-12-12 08:40:27', '', 'Réalisations', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-12-12 09:40:27', '2019-12-12 08:40:27', '', 13, 'http://localhost:8888/kerako/2019/12/12/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2019-12-12 09:40:36', '2019-12-12 08:40:36', '', 'Créations', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2019-12-12 09:40:36', '2019-12-12 08:40:36', '', 10, 'http://localhost:8888/kerako/2019/12/12/10-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2019-12-12 09:40:47', '2019-12-12 08:40:47', '', 'Vintage', '', 'publish', 'closed', 'closed', '', 'vintage', '', '', '2019-12-17 13:12:04', '2019-12-17 12:12:04', '', 0, 'http://localhost:8888/kerako/?page_id=16', 0, 'page', '', 0),
(17, 1, '2019-12-12 09:40:47', '2019-12-12 08:40:47', '', 'Vintage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-12 09:40:47', '2019-12-12 08:40:47', '', 16, 'http://localhost:8888/kerako/2019/12/12/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-12-12 09:41:04', '2019-12-12 08:41:04', '', 'Mon histoire', '', 'publish', 'closed', 'closed', '', 'mon-histoire', '', '', '2019-12-12 09:41:04', '2019-12-12 08:41:04', '', 0, 'http://localhost:8888/kerako/?page_id=18', 0, 'page', '', 0),
(19, 1, '2019-12-12 09:41:04', '2019-12-12 08:41:04', '', 'Mon histoire', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-12-12 09:41:04', '2019-12-12 08:41:04', '', 18, 'http://localhost:8888/kerako/2019/12/12/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-12-12 09:41:18', '2019-12-12 08:41:18', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2019-12-12 11:21:34', '2019-12-12 10:21:34', '', 0, 'http://localhost:8888/kerako/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2019-12-12 09:41:18', '2019-12-12 08:41:18', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2019-12-12 11:21:34', '2019-12-12 10:21:34', '', 0, 'http://localhost:8888/kerako/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2019-12-12 09:41:18', '2019-12-12 08:41:18', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2019-12-12 11:21:34', '2019-12-12 10:21:34', '', 0, 'http://localhost:8888/kerako/?p=22', 3, 'nav_menu_item', '', 0),
(23, 1, '2019-12-12 09:41:18', '2019-12-12 08:41:18', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2019-12-12 11:21:34', '2019-12-12 10:21:34', '', 0, 'http://localhost:8888/kerako/?p=23', 4, 'nav_menu_item', '', 0),
(25, 1, '2019-12-12 10:05:26', '2019-12-12 09:05:26', '', 'loupe', '', 'inherit', 'open', 'closed', '', 'loupe', '', '', '2019-12-12 10:05:26', '2019-12-12 09:05:26', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/loupe.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2019-12-12 11:20:44', '2019-12-12 10:20:44', '<!-- wp:image {\"id\":40,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/kerako/wp-content/uploads/2019/12/test3-1024x683.jpg\" alt=\"\" class=\"wp-image-40\"/></figure>\n<!-- /wp:image -->', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2019-12-15 19:15:16', '2019-12-15 18:15:16', '', 0, 'http://localhost:8888/kerako/?page_id=26', 0, 'page', '', 0),
(27, 1, '2019-12-12 11:20:44', '2019-12-12 10:20:44', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-12-12 11:20:44', '2019-12-12 10:20:44', '', 26, 'http://localhost:8888/kerako/2019/12/12/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2019-12-12 11:21:00', '2019-12-12 10:21:00', '', 'Mentions Légales', '', 'trash', 'closed', 'closed', '', 'mentions-legales__trashed', '', '', '2019-12-17 09:28:52', '2019-12-17 08:28:52', '', 0, 'http://localhost:8888/kerako/?page_id=28', 0, 'page', '', 0),
(29, 1, '2019-12-12 11:21:00', '2019-12-12 10:21:00', '', 'Mentions Légales', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-12-12 11:21:00', '2019-12-12 10:21:00', '', 28, 'http://localhost:8888/kerako/2019/12/12/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2019-12-12 11:21:12', '2019-12-12 10:21:12', '', 'CGV', '', 'trash', 'closed', 'closed', '', 'cgv__trashed', '', '', '2019-12-17 09:28:46', '2019-12-17 08:28:46', '', 0, 'http://localhost:8888/kerako/?page_id=30', 0, 'page', '', 0),
(31, 1, '2019-12-12 11:21:12', '2019-12-12 10:21:12', '', 'CGV', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2019-12-12 11:21:12', '2019-12-12 10:21:12', '', 30, 'http://localhost:8888/kerako/2019/12/12/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2019-12-12 11:23:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-12 11:23:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/kerako/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2019-12-12 11:23:40', '2019-12-12 10:23:40', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2019-12-12 11:23:43', '2019-12-12 10:23:43', '', 0, 'http://localhost:8888/kerako/?p=33', 3, 'nav_menu_item', '', 0),
(34, 1, '2019-12-12 11:23:40', '2019-12-12 10:23:40', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2019-12-12 11:23:43', '2019-12-12 10:23:43', '', 0, 'http://localhost:8888/kerako/?p=34', 2, 'nav_menu_item', '', 0),
(35, 1, '2019-12-12 11:23:06', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2019-12-12 11:23:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/kerako/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2019-12-12 11:23:40', '2019-12-12 10:23:40', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2019-12-12 11:23:43', '2019-12-12 10:23:43', '', 0, 'http://localhost:8888/kerako/?p=36', 4, 'nav_menu_item', '', 0),
(37, 1, '2019-12-12 11:23:40', '2019-12-12 10:23:40', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2019-12-12 11:23:43', '2019-12-12 10:23:43', '', 0, 'http://localhost:8888/kerako/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2019-12-12 12:14:27', '2019-12-12 11:14:27', '', 'test1', '', 'inherit', 'open', 'closed', '', 'test1', '', '', '2019-12-12 12:14:27', '2019-12-12 11:14:27', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/test1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2019-12-12 12:14:40', '2019-12-12 11:14:40', '', 'test2', '', 'inherit', 'open', 'closed', '', 'test2', '', '', '2019-12-12 12:14:40', '2019-12-12 11:14:40', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/test2.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2019-12-12 12:14:47', '2019-12-12 11:14:47', '', 'test3', '', 'inherit', 'open', 'closed', '', 'test3', '', '', '2019-12-12 12:14:47', '2019-12-12 11:14:47', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/test3.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2019-12-12 12:14:54', '2019-12-12 11:14:54', '', 'her', '', 'inherit', 'open', 'closed', '', 'her', '', '', '2019-12-12 12:14:54', '2019-12-12 11:14:54', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/her.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2019-12-13 13:48:30', '2019-12-13 12:48:30', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2019-12-13 13:48:30', '2019-12-13 12:48:30', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2019-12-15 19:14:06', '2019-12-15 18:14:06', '<!-- wp:html -->\nhellowolrd!\n<!-- /wp:html -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-12-15 19:14:06', '2019-12-15 18:14:06', '', 26, 'http://localhost:8888/kerako/2019/12/15/26-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-12-15 19:16:36', '2019-12-15 18:16:36', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '26-autosave-v1', '', '', '2019-12-15 19:16:36', '2019-12-15 18:16:36', '', 26, 'http://localhost:8888/kerako/2019/12/15/26-autosave-v1/', 0, 'revision', '', 0),
(45, 1, '2019-12-15 19:14:46', '2019-12-15 18:14:46', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-12-15 19:14:46', '2019-12-15 18:14:46', '', 26, 'http://localhost:8888/kerako/2019/12/15/26-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-12-15 19:15:16', '2019-12-15 18:15:16', '<!-- wp:image {\"id\":40,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost:8888/kerako/wp-content/uploads/2019/12/test3-1024x683.jpg\" alt=\"\" class=\"wp-image-40\"/></figure>\n<!-- /wp:image -->', 'Contact', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2019-12-15 19:15:16', '2019-12-15 18:15:16', '', 26, 'http://localhost:8888/kerako/2019/12/15/26-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2019-12-15 19:27:54', '2019-12-15 18:27:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-vintage.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Vintage', 'vintage', 'publish', 'closed', 'closed', '', 'group_5df67a3adc7bb', '', '', '2019-12-17 13:35:38', '2019-12-17 12:35:38', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=47', 0, 'acf-field-group', '', 0),
(48, 1, '2019-12-15 19:27:54', '2019-12-15 18:27:54', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'table', 'table', 'publish', 'closed', 'closed', '', 'field_5df67a4ca5136', '', '', '2019-12-15 20:01:05', '2019-12-15 19:01:05', '', 47, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=48', 0, 'acf-field', '', 0),
(49, 1, '2019-12-15 19:29:56', '2019-12-15 18:29:56', '', 'Vintage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-15 19:29:56', '2019-12-15 18:29:56', '', 16, 'http://localhost:8888/kerako/2019/12/15/16-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2019-12-15 19:53:08', '2019-12-15 18:53:08', '', 'Vintage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-15 19:53:08', '2019-12-15 18:53:08', '', 16, 'http://localhost:8888/kerako/2019/12/15/16-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2019-12-15 20:07:26', '2019-12-15 19:07:26', '', 'alexandra_gorn_JIUjvqe2ZHg_uns', '', 'inherit', 'open', 'closed', '', 'alexandra_gorn_jiujvqe2zhg_uns', '', '', '2019-12-15 20:07:26', '2019-12-15 19:07:26', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/alexandra_gorn_JIUjvqe2ZHg_uns.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2019-12-15 20:07:27', '2019-12-15 19:07:27', '', 'behzad_ghaffarian_nhWgZNV85LQ_@2x', '', 'inherit', 'open', 'closed', '', 'behzad_ghaffarian_nhwgznv85lq_2x', '', '', '2019-12-15 20:07:27', '2019-12-15 19:07:27', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/behzad_ghaffarian_nhWgZNV85LQ_@2x.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2019-12-15 20:07:33', '2019-12-15 19:07:33', '', 'Capture', '', 'inherit', 'open', 'closed', '', 'capture', '', '', '2019-12-15 20:07:33', '2019-12-15 19:07:33', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/Capture.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2019-12-15 20:07:35', '2019-12-15 19:07:35', '', 'dane_deaner_qRfMB_IOQjE_unspla', '', 'inherit', 'open', 'closed', '', 'dane_deaner_qrfmb_ioqje_unspla', '', '', '2019-12-15 20:07:35', '2019-12-15 19:07:35', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/dane_deaner_qRfMB_IOQjE_unspla.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2019-12-15 20:07:37', '2019-12-15 19:07:37', '', 'davide_cantelli_ajisKc2uuFk_un', '', 'inherit', 'open', 'closed', '', 'davide_cantelli_ajiskc2uufk_un', '', '', '2019-12-15 20:07:37', '2019-12-15 19:07:37', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/davide_cantelli_ajisKc2uuFk_un.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2019-12-15 20:07:39', '2019-12-15 19:07:39', '', 'forme3', '', 'inherit', 'open', 'closed', '', 'forme3', '', '', '2019-12-15 20:07:39', '2019-12-15 19:07:39', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/forme3.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2019-12-15 20:07:39', '2019-12-15 19:07:39', '', 'hal_gatewood_Vfml26Iy4mI_unspl', '', 'inherit', 'open', 'closed', '', 'hal_gatewood_vfml26iy4mi_unspl', '', '', '2019-12-15 20:07:39', '2019-12-15 19:07:39', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/hal_gatewood_Vfml26Iy4mI_unspl.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2019-12-15 20:07:40', '2019-12-15 19:07:40', '', 'hutomo_abrianto_X5BWooeO4Cw_un', '', 'inherit', 'open', 'closed', '', 'hutomo_abrianto_x5bwooeo4cw_un', '', '', '2019-12-15 20:07:40', '2019-12-15 19:07:40', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/hutomo_abrianto_X5BWooeO4Cw_un.png', 0, 'attachment', 'image/png', 0),
(60, 1, '2019-12-15 20:07:43', '2019-12-15 19:07:43', '', 'jean_philippe_delberghe_feijc_', '', 'inherit', 'open', 'closed', '', 'jean_philippe_delberghe_feijc_', '', '', '2019-12-17 09:23:50', '2019-12-17 08:23:50', '', 13, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/jean_philippe_delberghe_feijc_.png', 0, 'attachment', 'image/png', 0),
(61, 1, '2019-12-15 20:07:44', '2019-12-15 19:07:44', '', 'Logo_blanc', '', 'inherit', 'open', 'closed', '', 'logo_blanc', '', '', '2019-12-15 20:07:44', '2019-12-15 19:07:44', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/Logo_blanc.png', 0, 'attachment', 'image/png', 0),
(62, 1, '2019-12-15 20:07:44', '2019-12-15 19:07:44', '', 'mitch_moondae_zXFtsdi9dIc_unsp', '', 'inherit', 'open', 'closed', '', 'mitch_moondae_zxftsdi9dic_unsp', '', '', '2019-12-17 09:25:08', '2019-12-17 08:25:08', '', 13, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/mitch_moondae_zXFtsdi9dIc_unsp.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2019-12-15 20:07:45', '2019-12-15 19:07:45', '', 'phillip_goldsberry_fZuleEfeA1Q', '', 'inherit', 'open', 'closed', '', 'phillip_goldsberry_fzuleefea1q', '', '', '2019-12-17 09:23:50', '2019-12-17 08:23:50', '', 13, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/phillip_goldsberry_fZuleEfeA1Q.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2019-12-15 20:07:46', '2019-12-15 19:07:46', '', 'robert_anasch_wj2UvbOtRbY_unsp', '', 'inherit', 'open', 'closed', '', 'robert_anasch_wj2uvbotrby_unsp', '', '', '2019-12-17 09:09:25', '2019-12-17 08:09:25', '', 13, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/robert_anasch_wj2UvbOtRbY_unsp.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2019-12-15 20:07:47', '2019-12-15 19:07:47', '', 'ruslan_bardash_4kTbAMRAHtQ_uns', '', 'inherit', 'open', 'closed', '', 'ruslan_bardash_4ktbamrahtq_uns', '', '', '2019-12-15 23:01:57', '2019-12-15 22:01:57', '', 71, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/ruslan_bardash_4kTbAMRAHtQ_uns.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2019-12-15 20:07:48', '2019-12-15 19:07:48', '', 'tache', '', 'inherit', 'open', 'closed', '', 'tache', '', '', '2019-12-15 20:07:48', '2019-12-15 19:07:48', '', 0, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/tache.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2019-12-15 20:07:49', '2019-12-15 19:07:49', '', 'toa_heftiba_FV3GConVSss_unspla', '', 'inherit', 'open', 'closed', '', 'toa_heftiba_fv3gconvsss_unspla', '', '', '2019-12-15 20:15:28', '2019-12-15 19:15:28', '', 16, 'http://localhost:8888/kerako/wp-content/uploads/2019/12/toa_heftiba_FV3GConVSss_unspla.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2019-12-15 20:14:09', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-12-15 20:14:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&p=68', 0, 'acf-field-group', '', 0),
(69, 1, '2019-12-15 20:15:08', '2019-12-15 19:15:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'table_img', 'table_img', 'publish', 'closed', 'closed', '', 'field_5df6860a06a89', '', '', '2019-12-17 13:35:38', '2019-12-17 12:35:38', '', 47, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=69', 1, 'acf-field', '', 0),
(70, 1, '2019-12-15 20:15:28', '2019-12-15 19:15:28', '', 'Vintage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-15 20:15:28', '2019-12-15 19:15:28', '', 16, 'http://localhost:8888/kerako/2019/12/15/16-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2019-12-15 22:54:38', '2019-12-15 21:54:38', '', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2019-12-15 23:07:16', '2019-12-15 22:07:16', '', 0, 'http://localhost:8888/kerako/?page_id=71', 0, 'page', '', 0),
(72, 1, '2019-12-15 22:54:38', '2019-12-15 21:54:38', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-15 22:54:38', '2019-12-15 21:54:38', '', 71, 'http://localhost:8888/kerako/2019/12/15/71-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"index.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Accueil', 'accueil', 'publish', 'closed', 'closed', '', 'group_5df6abb2a1152', '', '', '2019-12-15 23:00:39', '2019-12-15 22:00:39', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=73', 0, 'acf-field-group', '', 0),
(74, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'slider', 'slider', 'publish', 'closed', 'closed', '', 'field_5df6abbcdefd6', '', '', '2019-12-15 23:00:39', '2019-12-15 22:00:39', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&p=74', 0, 'acf-field', '', 0),
(75, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'best', 'best', 'publish', 'closed', 'closed', '', 'field_5df6abdcdefd7', '', '', '2019-12-15 23:00:39', '2019-12-15 22:00:39', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&p=75', 1, 'acf-field', '', 0),
(76, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'best_title', 'best_title', 'publish', 'closed', 'closed', '', 'field_5df6ac03defd8', '', '', '2019-12-15 23:00:39', '2019-12-15 22:00:39', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&p=76', 2, 'acf-field', '', 0),
(77, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'best_desc', 'best_desc', 'publish', 'closed', 'closed', '', 'field_5df6ac22defd9', '', '', '2019-12-15 23:00:39', '2019-12-15 22:00:39', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&p=77', 3, 'acf-field', '', 0),
(78, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'story', 'story', 'publish', 'closed', 'closed', '', 'field_5df6ac62defda', '', '', '2019-12-15 23:00:39', '2019-12-15 22:00:39', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&p=78', 4, 'acf-field', '', 0),
(79, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'story_desc', 'story_desc', 'publish', 'closed', 'closed', '', 'field_5df6ac78defdb', '', '', '2019-12-15 23:00:39', '2019-12-15 22:00:39', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&p=79', 5, 'acf-field', '', 0),
(80, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'categories', 'categories', 'publish', 'closed', 'closed', '', 'field_5df6aca1defdc', '', '', '2019-12-15 23:00:39', '2019-12-15 22:00:39', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&p=80', 6, 'acf-field', '', 0),
(81, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'categories_title', 'categories_title', 'publish', 'closed', 'closed', '', 'field_5df6acb2defdd', '', '', '2019-12-15 23:00:39', '2019-12-15 22:00:39', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&p=81', 7, 'acf-field', '', 0),
(82, 1, '2019-12-15 23:00:39', '2019-12-15 22:00:39', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'categories_desc', 'categories_desc', 'publish', 'closed', 'closed', '', 'field_5df6acc7defde', '', '', '2019-12-15 23:00:39', '2019-12-15 22:00:39', '', 73, 'http://localhost:8888/kerako/?post_type=acf-field&p=82', 8, 'acf-field', '', 0),
(84, 1, '2019-12-15 23:01:57', '2019-12-15 22:01:57', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-15 23:01:57', '2019-12-15 22:01:57', '', 71, 'http://localhost:8888/kerako/2019/12/15/71-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2019-12-15 23:06:44', '2019-12-15 22:06:44', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-15 23:06:44', '2019-12-15 22:06:44', '', 71, 'http://localhost:8888/kerako/2019/12/15/71-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2019-12-15 23:07:16', '2019-12-15 22:07:16', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2019-12-15 23:07:16', '2019-12-15 22:07:16', '', 71, 'http://localhost:8888/kerako/2019/12/15/71-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2019-12-15 23:08:48', '2019-12-15 22:08:48', '', 'Vintage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-15 23:08:48', '2019-12-15 22:08:48', '', 16, 'http://localhost:8888/kerako/2019/12/15/16-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2019-12-15 23:09:45', '2019-12-15 22:09:45', '', 'Vintage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-15 23:09:45', '2019-12-15 22:09:45', '', 16, 'http://localhost:8888/kerako/2019/12/15/16-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2019-12-15 23:10:54', '2019-12-15 22:10:54', '', 'Vintage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-15 23:10:54', '2019-12-15 22:10:54', '', 16, 'http://localhost:8888/kerako/2019/12/15/16-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2019-12-15 23:15:02', '2019-12-15 22:15:02', '', 'Vintage', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-12-15 23:15:02', '2019-12-15 22:15:02', '', 16, 'http://localhost:8888/kerako/2019/12/15/16-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2019-12-16 20:52:38', '2019-12-16 19:52:38', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"page-creation.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Creation', 'creation', 'publish', 'closed', 'closed', '', 'group_5df7e07203f5b', '', '', '2019-12-16 20:52:38', '2019-12-16 19:52:38', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=93', 0, 'acf-field-group', '', 0),
(94, 1, '2019-12-16 20:52:52', '2019-12-16 19:52:52', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:20:\"page-realisation.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Realisation', 'realisation', 'publish', 'closed', 'closed', '', 'group_5df7e08a3173a', '', '', '2019-12-17 09:24:41', '2019-12-17 08:24:41', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=94', 0, 'acf-field-group', '', 0),
(95, 1, '2019-12-17 09:08:56', '2019-12-17 08:08:56', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'galerie', 'galerie', 'publish', 'closed', 'closed', '', 'field_5df88ce328c10', '', '', '2019-12-17 09:10:41', '2019-12-17 08:10:41', '', 94, 'http://localhost:8888/kerako/?post_type=acf-field&#038;p=95', 0, 'acf-field', '', 0),
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
(118, 1, '2019-12-17 09:32:38', '2019-12-17 08:32:38', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-contact.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Contact', 'contact', 'publish', 'closed', 'closed', '', 'group_5df89298b6aae', '', '', '2019-12-17 09:32:38', '2019-12-17 08:32:38', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=118', 0, 'acf-field-group', '', 0),
(119, 1, '2019-12-17 09:32:54', '2019-12-17 08:32:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"page-blog.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Blog', 'blog', 'publish', 'closed', 'closed', '', 'group_5df892aa77ea7', '', '', '2019-12-17 09:32:54', '2019-12-17 08:32:54', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=119', 0, 'acf-field-group', '', 0);
INSERT INTO `kr_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(120, 1, '2019-12-17 09:33:14', '2019-12-17 08:33:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"page-article-single.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'ArticleSingle', 'articlesingle', 'publish', 'closed', 'closed', '', 'group_5df892b8dfcc9', '', '', '2019-12-17 09:33:14', '2019-12-17 08:33:14', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=120', 0, 'acf-field-group', '', 0),
(121, 1, '2019-12-17 09:34:05', '2019-12-17 08:34:05', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:23:\"page-produit-single.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'ProduitSingle', 'produitsingle', 'publish', 'closed', 'closed', '', 'group_5df892d605e5d', '', '', '2019-12-17 09:34:05', '2019-12-17 08:34:05', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=121', 0, 'acf-field-group', '', 0),
(122, 1, '2019-12-17 09:34:09', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-12-17 09:34:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&p=122', 0, 'acf-field-group', '', 0),
(123, 1, '2019-12-17 09:34:36', '2019-12-17 08:34:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"page-pannier.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Panier', 'panier', 'publish', 'closed', 'closed', '', 'group_5df8930d0237d', '', '', '2019-12-17 09:34:36', '2019-12-17 08:34:36', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=123', 0, 'acf-field-group', '', 0),
(124, 1, '2019-12-17 09:35:01', '2019-12-17 08:35:01', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"page-client-co.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'ClientConnexion', 'clientconnexion', 'publish', 'closed', 'closed', '', 'group_5df8931f29449', '', '', '2019-12-17 09:35:01', '2019-12-17 08:35:01', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=124', 0, 'acf-field-group', '', 0),
(125, 1, '2019-12-17 09:35:18', '2019-12-17 08:35:18', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:22:\"page-client-compte.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'ClientCompte', 'clientcompte', 'publish', 'closed', 'closed', '', 'group_5df893386fb3b', '', '', '2019-12-17 09:35:18', '2019-12-17 08:35:18', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=125', 0, 'acf-field-group', '', 0),
(126, 1, '2019-12-17 09:35:45', '2019-12-17 08:35:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"page-histoire.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Histoire', 'histoire', 'publish', 'closed', 'closed', '', 'group_5df8934b1d529', '', '', '2019-12-17 09:35:45', '2019-12-17 08:35:45', '', 0, 'http://localhost:8888/kerako/?post_type=acf-field-group&#038;p=126', 0, 'acf-field-group', '', 0);

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
(33, 3, 0),
(34, 3, 0),
(36, 3, 0),
(37, 3, 0);

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
(4, 4, 'product_type', '', 0, 0),
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
(17, 17, 'product_cat', '', 0, 0);

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
(16, 1, 'session_tokens', 'a:1:{s:64:\"dd66578aa9175f0f59e531e8ec5caf96f98ac6b0d27f6602fed1d6fb72b098a5\";a:4:{s:10:\"expiration\";i:1576605509;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36\";s:5:\"login\";i:1576432709;}}'),
(17, 1, 'kr_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '3'),
(21, 1, '_woocommerce_tracks_anon_id', 'woo:7BzOFoPcXiuqaJDmGOxkQMT/'),
(22, 1, 'wc_last_active', '1576540800'),
(24, 1, 'kr_user-settings', 'libraryContent=browse&editor=tinymce'),
(25, 1, 'kr_user-settings-time', '1576435985'),
(26, 1, 'closedpostboxes_page', 'a:0:{}'),
(27, 1, 'metaboxhidden_page', 'a:0:{}');

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

-- --------------------------------------------------------

--
-- Structure de la table `kr_woocommerce_shipping_zones`
--

CREATE TABLE `kr_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=617;

--
-- AUTO_INCREMENT pour la table `kr_postmeta`
--
ALTER TABLE `kr_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT pour la table `kr_posts`
--
ALTER TABLE `kr_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT pour la table `kr_termmeta`
--
ALTER TABLE `kr_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_shipping_zones`
--
ALTER TABLE `kr_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_shipping_zone_locations`
--
ALTER TABLE `kr_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `kr_woocommerce_shipping_zone_methods`
--
ALTER TABLE `kr_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
