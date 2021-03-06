<?php
/*
Template name:Panier
*/

get_header();

if (!function_exists('get_field')) return;
?>

    <?php the_content(); ?>

    <div id="primary" class="content-area">
        <main id="main" class="site-main">
            <div class="promo"><?php the_field('table'); ?></div><br>
            <div><?php the_field('table_img'); ?></div>
        </main><!-- #main -->
    </div><!-- #primary -->

<?php
get_footer();
