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
                <img class="imageSlider" src="<?php the_field('slider_1') ?>">
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


    <!-- En vedette -->

    <section class="best">
        <div class="row bestRow">
            <!-- <div class="best--art1 col-3"><//?php the_field('best'); ?></div> -->
            <div class="best--art1 col-3">
                <img class="imageBest" src="<?php the_field('best_1') ?>">
                <h4 class="titleBest"><?php the_field('best_title_1') ?></h4>
            </div>
            <div class="best--art2 col-3">
                <img class="imageBest" src="<?php the_field('best_2') ?>">
                <h4 class="titleBest"><?php the_field('best_title_2') ?></h4>
            </div>
            <div class="best--art3 col-3">
                <img class="imageBest" src="<?php the_field('best_3') ?>">
                <h4 class="titleBest"><?php the_field('best_title_2') ?></h4>
            </div>
        </div>
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
                            <div class="col-sm"><img class="imageNew" src="<?php the_field('new_1') ?>"></div>
                            <div class="col-sm"><img class="imageNew" src="<?php the_field('new_2') ?>"></div>
                            <div class="col-sm"><img class="imageNew" src="<?php the_field('new_3') ?>"></div>
                            <div class="col-sm"><img class="imageNew" src="<?php the_field('new_4') ?>"></div>
                            <div class="col-sm"><img class="imageNew" src="<?php the_field('new_5') ?>"></div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-sm"><img class="imageNew" src="<?php the_field('new_1') ?>"></div>
                            <div class="col-sm"><img class="imageNew" src="<?php the_field('new_2') ?>"></div>
                            <div class="col-sm"><img class="imageNew" src="<?php the_field('new_3') ?>"></div>
                            <div class="col-sm"><img class="imageNew" src="<?php the_field('new_4') ?>"></div>
                            <div class="col-sm"><img class="imageNew" src="<?php the_field('new_5') ?>"></div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-sm"><img class="imageNew" src="<?php the_field('new_1') ?>"></div>
                            <div class="col-sm"><img class="imageNew" src="<?php the_field('new_2') ?>"></div>
                            <div class="col-sm"><img class="imageNew" src="<?php the_field('new_3') ?>"></div>
                            <div class="col-sm"><img class="imageNew" src="<?php the_field('new_4') ?>"></div>
                            <div class="col-sm"><img class="imageNew" src="<?php the_field('new_5') ?>"></div>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </section>

    <!-- Histoire -->

    <section class="myStory">
        <div class="story">
            <div class="storyAtelier">
                <img class="imageStoryHer" src="<?php the_field('story_her') ?>">
                <h3 class="storyAtelierName">Atelier Kérako</h3>
                <h4 class="storyName">Elodie Hoerter</h4>
            </div>
            <div class="story--start">
                <div class="story--content">
                    <h4 class="storyTitle">Notre histoire</h4>
                    <p class="storyDesc"><?php the_field('story_desc_1'); ?></p>
                    <p class="storyDesc"><?php the_field('story_desc_2'); ?></p>
                </div>
               <img class="imageStory" src="<?php the_field('story') ?>">
            </div>
        </div>
        <div class="buttonBlock">
            <button type="button" class="btn--story" onclick="window.location.href = 'http://localhost:8888/kerako/mon-histoire/'">En savoir plus</button>
            <button type="button" class="btn--story" onclick="window.location.href = 'http://localhost:8888/kerako/contact/'">Me contacter</button>

        </div>
    </section>

    <!-- categories -->

    <section class="categories">
        <div class="row categoryBlock">
            <div class="categoryBlock1 col-3"><img class="imageCat" src="<?php the_field('categorie_1') ?>"></div>
            <div class="categoryBlock2 col-3"><img class="imageCat" src="<?php the_field('categorie_2') ?>"></div>
            <div class="categoryBlock3 col-3"><img class="imageCat" src="<?php the_field('categorie_3') ?>"></div>
        </div>
    </section>


    <!-- Lister les articles de WP ex à reprendre pour page category -->
    <!--
    <?php
    //le loop --> ici affiche les articles tant qu'il y en a encore a afficher
    /* if (have_posts()) {
         while (have_posts()) {
             the_post();
             ?>

             <article class="actu">
                 <h2><?php the_title(); ?></h2>
                 <figure class="img_into">
                     <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail("thumbnail"); ?></a>
                 </figure>
                 <?php the_content('Lire la suite'); ?><br>
                 <?php the_tags('');
                 $catagory = get_the_category();
                 echo "Catégorie : " . $catagory[0]->name;
                 ?>
             </article>

             <?php
         }
     }*/
    ?>
-->

</section>


<?php get_footer(); ?>
