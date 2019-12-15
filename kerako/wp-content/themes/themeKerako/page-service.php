<?php
/*
Template name:Services
*/


get_header();
?>

    <div id="primary" class="content-area">
        <main id="main" class="site-main">
            <div >hello word
            </div>
            <p> Hello</p>

            <?php

            /* Start the Loop */
            while ( have_posts() ) :
                the_post();

                get_template_part( 'template-parts/content/content', 'page' );

                // If comments are open or we have at least one comment, load up the comment template.
                if ( comments_open() || get_comments_number() ) {
                    comments_template();
                }

            endwhile; // End of the loop.
            ?>

        </main><!-- #main -->
    </div><!-- #primary -->

<?php
get_footer();
