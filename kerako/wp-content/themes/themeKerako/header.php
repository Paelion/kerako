<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<?php bloginfo('stylesheet_url'); ?>">
    <title><?php wp_title();  ?></title>
    <?php wp_head(); ?>

</head>
<body>
    <div id="container">
        <header>
            <img src="images/logoKerako.jpg">
            <div class="search">
                <form action="/" method="get">
                    <input type="text" name="s" value="<?php the_search_query(); ?>" placeholder="Recherche" />
                    <img src="images/loupe.png">
                </form>
            </div>
            <hr class="bottom--search">
        </header>
        <nav class="menu--nav">
            <?php wp_nav_menu(array('theme_location' => 'primary_menu')); ?>
        </nav>
