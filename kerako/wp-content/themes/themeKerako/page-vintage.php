<?php
/*
Template name:Vintage
*/


get_header();


?>



    <div id="primary" class="content-area">
        <main id="main" class="site-main">
            <div class="promo"><?php the_field('table'); ?></div><br>
            <div><?php echo get_field('table_img')['url']; ?></div>
        </main><!-- #main -->
    </div><!-- #primary -->

<?php
get_footer();
