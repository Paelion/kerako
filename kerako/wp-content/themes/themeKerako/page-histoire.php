<?php
/*
Template name:Histoire
*/


get_header();

if (!function_exists('get_field')) return;
?>

    <div class="content">
        <div id="primary" class="content-area">
            <main id="main" class="site-main">
                <div class="atelier">
                    <div class="atelierTitle">
                        <h4>Mon atelier</h4>
                        <hr class="atelier--line">
                    </div>

                    <h5>Atelier Kerako</h5>
                    <div class="atelier--flex">
                        <p><?php the_field('atelier_desc'); ?></p>
                        <img class="imageAtelier" src="<?php the_field('atelier_img') ?>">
                    </div>


                </div>

                <div class="portrait">
                    <div class="portraitTitle">
                        <h4>Notre histoire</h4>
                        <hr class="portrait--line">
                    </div>
                    <div class="portrait--flex">
                        <img class="imagePortrait" src="<?php the_field('portrait_img') ?>">
                        <div class="portrait--block">
                            <h2>Elodie Hoerter</h2>
                            <p><?php the_field('portrait_desc'); ?></p>
                            <button type="button" class="btn--portrait">Me contacter</button>
                        </div>
                    </div>
                </div>

                <img class="separateurImg" src="<?php the_field('separateur_img') ?>">

                <div class="blog">
                    <h2>Notre blog</h2>
                    <button type="button" class="btn--blog">Cliquez ici</button>
                </div>

                <div class="histoireInfo histoireInfo1 ">
                    <p><?php the_field('histoire_info_1'); ?></p>
                    <img class="histoireInfoImg" src="<?php the_field('histoire_info_img_1') ?>">
                </div>

                <div class="histoireInfo">
                    <img class="histoireInfoImg" src="<?php the_field('histoire_info_img_2') ?>">
                    <p><?php the_field('histoire_info_2'); ?></p>
                </div>
            </main>
        </div>
    </div>

<?php
get_footer();
