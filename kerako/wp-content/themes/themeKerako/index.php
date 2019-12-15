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
                <img src="images/test1.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/test2.jpg" class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
                <img src="images/test3.jpg" class="d-block w-100" alt="...">
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
        <div class="row best">
            <!-- <div class="best--art1 col-3"><//?php the_field('best'); ?></div> -->
            <div class="best--art1 col-3"><img src="images/accueil/mitch_moondae_zXFtsdi9dIc_unsp.png"></div>
            <div class="best--art2 col-3"><img src="images/accueil/hal_gatewood_Vfml26Iy4mI_unspl.png"></div>
            <div class="best--art3 col-3"><img src="images/accueil/davide_cantelli_ajisKc2uuFk_un.png"></div>
        </div>
    </section>


    <!-- Nouveautés -->

    <section class="new">
        <h2 class="new--title">Les Nouveautés</h2>
        <hr class="bottom--new">
        <div class="new--slider" style="background-color: gray">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-sm"><img class="d-block w-100" src="images/accueil/phillip_goldsberry_fZuleEfeA1Q.png"
                                                     alt="1 slide"></div>
                            <div class="col-sm"><img class="d-block w-100" src="images/accueil/alexandra_gorn_JIUjvqe2ZHg_uns.png"
                                                     alt="2 slide"></div>
                            <div class="col-sm"><img class="d-block w-100" src="images/accueil/toa_heftiba_FV3GConVSss_unspla.png"
                                                     alt="3 slide"></div>
                            <div class="col-sm"><img class="d-block w-100" src="images/accueil/jean_philippe_delberghe_feijc_.png"
                                                     alt="4 slide"></div>
                            <div class="col-sm"><img class="d-block w-100" src="images/accueil/ruslan_bardash_4kTbAMRAHtQ_uns.png"
                                                     alt="5 slide"></div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-sm"><img class="d-block w-100" src="images/accueil/phillip_goldsberry_fZuleEfeA1Q.png"
                                                     alt="6 slide"></div>
                            <div class="col-sm"><img class="d-block w-100" src="images/accueil/alexandra_gorn_JIUjvqe2ZHg_uns.png"
                                                     alt="7 slide"></div>
                            <div class="col-sm"><img class="d-block w-100" src="images/accueil/toa_heftiba_FV3GConVSss_unspla.png"
                                                     alt="8 slide"></div>
                            <div class="col-sm"><img class="d-block w-100" src="images/accueil/jean_philippe_delberghe_feijc_.png"
                                                     alt="9 slide"></div>
                            <div class="col-sm"><img class="d-block w-100" src="images/accueil/ruslan_bardash_4kTbAMRAHtQ_uns.png"
                                                     alt="10 slide"></div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-sm"><img class="d-block w-100" src="images/accueil/phillip_goldsberry_fZuleEfeA1Q.png"
                                                     alt="11 slide"></div>
                            <div class="col-sm"><img class="d-block w-100" src="images/accueil/alexandra_gorn_JIUjvqe2ZHg_uns.png"
                                                     alt="12 slide"></div>
                            <div class="col-sm"><img class="d-block w-100" src="images/accueil/toa_heftiba_FV3GConVSss_unspla.png"
                                                     alt="13 slide"></div>
                            <div class="col-sm"><img class="d-block w-100" src="images/accueil/jean_philippe_delberghe_feijc_.png"
                                                     alt="14 slide"></div>
                            <div class="col-sm"><img class="d-block w-100" src="images/accueil/ruslan_bardash_4kTbAMRAHtQ_uns.png"
                                                     alt="15 slide"></div>
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

    <!-- Nouveautés -->

    <section class="myStory">
        <div class="story">
            <img src="images/her.jpg">
            <div class="story--start">
                <img src="images/accueil/tache.png">
                <h4>Mon histoire</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis turpis sapien. Vestibulum mollis
                    orci cursus nisl pulvinar tempus. Quisque leo orci, scelerisque ut felis ut, viverra euismod augue.
                    Ut et urna tincidunt, lobortis odio eget, facilisis lorem. Praesent facilisis leo vel lectus tempor,
                    eu tempor odio ornare. Aenean facilisis est et felis eleifend mattis. Nam vulputate blandit lacus,
                    et mattis nibh volutpat nec. Nulla ac massa iaculis, fringilla dolor sit amet, euismod justo. Class
                    aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam volutpat
                    nulla ante, vel pulvinar lorem ultricies in. Quisque eget nulla a enim condimentum tempor a ac arcu.
                    In hac habitasse platea dictumst.

                    Sed cursus sit amet leo id laoreet. Proin vel feugiat libero. Praesent a purus sed massa facilisis
                    efficitur. Maecenas laoreet lobortis sem sed consequat. Integer rutrum risus ac nibh ultrices, ut
                    maximus nulla finibus. Sed viverra eleifend odio mattis rhoncus. Sed vehicula vestibulum
                    euismod.</p>
                <button type="button" class="btn btn-dark btn--story">En savoir plus</button>
                <button type="button" class="btn btn-dark btn--story">Me contacter</button>
            </div>
        </div>
    </section>

    <!-- categories -->

    <section class="categories">
        <div class="row categoryBlock">
            <div class="categoryBlock1 col-3"><img src="images/accueil/robert_anasch_wj2UvbOtRbY_unsp.png"></div>
            <div class="categoryBlock2 col-3"><img src="images/accueil/behzad_ghaffarian_nhWgZNV85LQ_@2x.png"></div>
            <div class="categoryBlock3 col-3"><img src="images/accueil/dane_deaner_qRfMB_IOQjE_unspla.png"></div>
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
