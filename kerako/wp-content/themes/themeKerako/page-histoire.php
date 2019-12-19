<?php
/*
Template name:Histoire
*/


get_header();

if (!function_exists('get_field')) return;
?>



    <div id="primary" class="content-area">
        <main id="main" class="site-main">
            <div class="portrait">
                <h4>Mon histoire</h4>
                <hr class="portrait--line">
                <img class="imagePortrait" src="<?php the_field('portrait_img')?>">
                <h2>Elodie Hoerter</h2>
                <p><?php the_field('portrait_desc'); ?></p>
                <button type="button" class="btn--portrait">Me contacter</button>
            </div>
            <div class="atelier">
                <h4>Mon atelier</h4>
                <hr class="portrait--line">
                <h5>Atelier Kerako</h5>
                <p><?php the_field('atelier_desc'); ?></p>
                <img class="imagePortrait" src="<?php the_field('atelier_img')?>">
            </div>
            <img src="<?php the_field('atelier_img')?>">





        </main>
    </div>

<?php
get_footer();
