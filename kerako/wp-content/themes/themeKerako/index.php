<?php
/*
Template name:Home
*/

get_header();

if (!function_exists('get_field')) return;

?>

<!-- Slider -->
<section class="content">

    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="imageSlider" src="<?php the_field('slider_1') ?>">
            </div>
            <div class="carousel-item">
                <img class="imageSlider" src="<?php the_field('slider_2') ?>">
            </div>
            <div class="carousel-item">
                <img class="imageSlider" src="<?php the_field('slider_3') ?>">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <!-- Histoire -->

    <section class="myStory">
        <div class="story">
            <div class="storyAtelier">
                <h3 class="storyAtelierName">Atelier Kérako</h3>
                <h4 class="storyName">Elodie Hoerter</h4>
            </div>
            <div class="story--start">
                <div class="story--content">
                    <h3 class="storyTitle">Notre histoire</h3>
                    <p class="storyDesc"><?php the_field('story_desc_1'); ?></p>
                    <p class="storyDesc"><?php the_field('story_desc_2'); ?></p>
                </div>
            </div>
        </div>
        <div class="buttonBlock">
            <button type="button" class="btn--story"
                    onclick="window.location.href = 'http://localhost:8888/kerako/mon-histoire/'">En savoir plus
            </button>
            <button type="button" class="btn--story"
                    onclick="window.location.href = 'http://localhost:8888/kerako/contact/'">Me contacter
            </button>
        </div>
    </section>

    <!-- En vedette -->

    <section class="category">
        <h2 class="catTitle">Catégories</h2>
        <div class="row">
            <div class="cat--art1 col-3">
                <h4 class="titleCat"><?php the_field('cat_title_1') ?></h4>
                <a href="http://localhost:8888/kerako/categorie-produit/chaise/"><img class="imageCat"
                                                                                      src="<?php the_field('cat_1') ?>"></a>
            </div>
            <div class="cat--art2 col-3">
                <h4 class="titleCat"><?php the_field('cat_title_2') ?></h4>
                <a href="http://localhost:8888/kerako/categorie-produit/canapes/"><img class="imageCat"
                                                                                       src="<?php the_field('cat_2') ?>"></a>
            </div>
            <div class="cat--art3 col-3">
                <h4 class="titleCat"><?php the_field('cat_title_2') ?></h4>
                <a href="http://localhost:8888/kerako/categorie-produit/table/"><img class="imageCat"
                                                                                     src="<?php the_field('cat_3') ?>"></a>
            </div>
        </div>
    </section>

    <!-- Séparateur image -->
    <section class="separator-image">
        <img src="<?php echo get_template_directory_uri(); ?>/images/imgSeparator.png" class="imgSeparator">
    </section>
    <!-- Nouveautés -->

    <section class="new">
        <h2 class="new--title">Les Nouveautés</h2>
        <hr class="bottom--new">
        <div class="new--slider">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-sm"><a href="http://localhost:8888/kerako/produit/produit-4/"><img
                                            class="imageNew" src="<?php the_field('new_1') ?>"></a></div>
                            <div class="col-sm"><a href="http://localhost:8888/kerako/produit/produit-4/"><img
                                            class="imageNew" src="<?php the_field('new_2') ?>"></a></div>
                            <div class="col-sm"><a href="http://localhost:8888/kerako/produit/produit-4/"><img
                                            class="imageNew" src="<?php the_field('new_3') ?>"></a></div>
                            <div class="col-sm"><a href="http://localhost:8888/kerako/produit/produit-4/"><img
                                            class="imageNew" src="<?php the_field('new_4') ?>"></a></div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-sm"><a href="http://localhost:8888/kerako/produit/produit-4/"><img
                                            class="imageNew" src="<?php the_field('new_1') ?>"></a></div>
                            <div class="col-sm"><a href="http://localhost:8888/kerako/produit/produit-4/"><img
                                            class="imageNew" src="<?php the_field('new_2') ?>"></a></div>
                            <div class="col-sm"><a href="http://localhost:8888/kerako/produit/produit-4/"><img
                                            class="imageNew" src="<?php the_field('new_3') ?>"></a></div>
                            <div class="col-sm"><a href="http://localhost:8888/kerako/produit/produit-4/"><img
                                            class="imageNew" src="<?php the_field('new_4') ?>"></a></div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-sm"><a href="http://localhost:8888/kerako/produit/produit-4/"><img
                                            class="imageNew" src="<?php the_field('new_1') ?>"></a></div>
                            <div class="col-sm"><a href="http://localhost:8888/kerako/produit/produit-4/"><img
                                            class="imageNew" src="<?php the_field('new_2') ?>"></a></div>
                            <div class="col-sm"><a href="http://localhost:8888/kerako/produit/produit-4/"><img
                                            class="imageNew" src="<?php the_field('new_3') ?>"></a></div>
                            <div class="col-sm"><a href="http://localhost:8888/kerako/produit/produit-4/"><img
                                            class="imageNew" src="<?php the_field('new_4') ?>"></a></div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev carousel-control-prev-cat" href="#carouselExampleIndicators"
                   role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next carousel-control-next-cat" href="#carouselExampleIndicators"
                   role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </section>
</section>


<?php get_footer(); ?>
