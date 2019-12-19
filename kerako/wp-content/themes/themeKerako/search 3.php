<?php get_header(); ?>

<section class="content">
    <!-- Lister les articles de WP ex à reprendre pour page category -->
    <h2>Resultat pour : <?php the_search_query(); ?></h2>
    <ul>
        <?php
        //le loop --> ici affiche les articles tant qu'il y en a encore a afficher
        if (have_posts()) {
            while (have_posts()) {
                the_post();
                ?>

                <li><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></li>


                <?php
            }
        }
        ?>
    </ul>

</section>


<?php get_footer(); ?>
