<?php
/*
Template name:Realisation
*/


get_header();

if (!function_exists('get_field')) return;
?>



    <div id="primary" class="content-area">
        <main id="main" class="site-main">
            <div class="galerie--realisation"><?php the_field('galerie'); ?></div>
        </main><!-- #main -->
    </div><!-- #primary -->

<?php
get_footer();
