<?php get_header(); ?>

<section class="content">
    <!-- Lister les articles de WP ex à reprendre pour page category -->

    <?php
    //le loop --> ici affiche les articles tant qu'il y en a encore a afficher
    if (have_posts()) {
        while (have_posts()){
            the_post();
            ?>

            <article class="actu page">
                <h2><?php the_title(); ?></h2>
                <?php the_content('Lire la suite'); ?><br>
            </article>

            <?php
        }
    }
    ?>


</section>






<?php get_footer(); ?>
