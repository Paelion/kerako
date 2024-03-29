<?php
/*
Template name:Contact
*/


get_header();

if (!function_exists('get_field')) return;
?>

    <div class="content">
        <div id="primary" class="content-area">
            <main id="main" class="site-main contact">
                <h4  class="contact--title">Me contacter</h4>
                <div class="contact--flex">
                    <div class="contat--right">
                        <h5>Téléphone</h5>
                        <p><?php the_field('tel'); ?></p>
                        <h5>Mail</h5>
                        <p><?php the_field('mail'); ?></p>
                        <h5>Réseaux sociaux</h5>
                        <div class="reseaux--img">
                            <a href=""><img src="<?php echo get_template_directory_uri(); ?>/images/insta.png"
                                            class="reseaux--img--insta"></a>
                            <a href=""><img src="<?php echo get_template_directory_uri(); ?>/images/fb.png"
                                            class="reseaux--img--fb"></a>
                        </div>
                    </div>

                    <div class="contat--left">
                        <?php echo do_shortcode( '[contact-form-7 id="341" title="Contact form 1"]' ); ?>
                    </div>
                </div>
            </main>
        </div>
    </div>

<?php
get_footer();
