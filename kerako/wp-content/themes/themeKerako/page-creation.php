<?php
/*
Template name:Creation
*/


get_header();

if (!function_exists('get_field')) return;
?>



    <div id="primary" class="content-area">
        <main id="main" class="site-main">
            <img src="<?php the_field('gallerie'); ?>">
        </main><!-- #main -->
    </div><!-- #primary -->

<?php
get_footer();
