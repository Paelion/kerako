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

                <!-- Atelier -->
                <div class="atelier">
                    <div class="atelierTitle">
                        <h4>Mon atelier</h4>
                        <hr class="atelier--line">
                    </div>
                    <div class="atelier--flex">
                        <div class="atelierPara">
                            <h5>Atelier Kerako</h5>
                            <p><?php the_field('atelier_desc_para1'); ?></p>
                            <p><?php the_field('atelier_desc_para2'); ?></p>
                            <p><?php the_field('atelier_desc_para3'); ?></p>
                            <p><?php the_field('atelier_desc_para4'); ?></p>
                        </div>

                    </div>
                    <div class="atelier--bc"></div>
                </div>

                <!-- Portrait -->
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

                <!-- Separateur photo -->
                <img class="separateurImg" src="<?php the_field('separateur_img') ?>">

                <!-- Acces Blog  -->
                <div class="blog">
                    <div class="blog--content">
                        <h2>Notre blog</h2>
                        <button type="button" class="btn--blog">Cliquez ici</button>
                    </div>
                </div>

                <!-- Info -->
                <div class="histoireInfo histoireInfo1 ">
                    <p><?php the_field('histoire_info_1'); ?></p>
                    <img class="histoireInfoImg" src="<?php the_field('histoire_info_img_1') ?>">
                </div>
                <div class="histoireInfo histoireInfo2">
                    <img class="histoireInfoImg" src="<?php the_field('histoire_info_img_2') ?>">
                    <p><?php the_field('histoire_info_2'); ?></p>
                </div>


            </main>
        </div>
    </div>

<?php
get_footer();
