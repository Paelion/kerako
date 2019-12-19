<?php get_header(); ?>

<section class="content">
    <!-- Lister les articles de WP ex à reprendre pour page category -->

    <?php
    //le loop --> ici affiche les articles tant qu'il y en a encore a afficher
    if (have_posts()) {
        while (have_posts()){
            the_post();
            ?>

            <article class="actu">
                <h2><?php the_title(); ?></h2>
                <?php the_tags('');
                $catagory = get_the_category();
                echo "Catégorie : ".$catagory[0]->name;
                ?>
            </article>
            <div class="comments"><?php comments_template(); ?></div>

            <?php
        }
    }
    ?>


</section>






<?php get_footer(); ?>
