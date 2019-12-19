<?php
/*
Template name:Vintage
*/


get_header();


if (!function_exists('get_field')) return;
?>

    <img src="<?php the_field('img')?>">

    <div id="primary" class="content-area">
        <main id="main" class="site-main">
        </main><!-- #main -->
    </div><!-- #primary -->

<?php
get_footer();
