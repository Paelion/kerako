<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,700&display=swap" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>">
    <title><?php wp_title(); ?></title>
    <?php wp_head(); ?>

</head>
<body <?php body_class(); ?>>
<div id="container">
    <header>
        <img src="<?php echo get_template_directory_uri(); ?>/images/logoKerako.jpg" class="logoKerako">
                <div class="header--right">
            <div class="formSearch">
                <form action="/kerako" method="get" class="searchForm">
                    <input type="text" name="s" value="<?php the_search_query(); ?>" placeholder="Recherche"/>
                    <button type="submit" class="button-search"><img
                                src="<?php echo get_template_directory_uri(); ?>/images/loupe.png" class="loupe">
                    </button>
                </form>
            </div>
            <div class="accesPage">
                <a href="http://localhost:8888/kerako/panier-2/"><img
                            src="<?php echo get_template_directory_uri(); ?>/images/accueil/shop2.png" class="logoShop"></a>
                <a href="http://localhost:8888/kerako/mon-compte/"><img
                            src="<?php echo get_template_directory_uri(); ?>/images/accueil/profil2.png"
                            class="logoProfil"></a>
            </div>
        </div>
    </header>
    <nav class="menu--nav">
        <?php wp_nav_menu(array('theme_location' => 'primary_menu')); ?>
    </nav>
