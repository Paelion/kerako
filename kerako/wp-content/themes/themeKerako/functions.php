<?php

add_theme_support('post-thumbnails');


register_nav_menus( array(
    'primary_menu' => 'Menu principal',
    'footer_menu' => 'Menu footer'
) );



add_action('wp_enqueue_scripts', 'gkp_insert_css_in_head');
function gkp_insert_css_in_head() {
    wp_register_style('style', get_bloginfo( 'stylesheet_url' ),'',false,'screen');
    wp_enqueue_style( 'style' );

    wp_enqueue_style("bs_css", "https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css");

}

