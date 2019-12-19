<?php

add_theme_support('post-thumbnails');


register_nav_menus(array(
    'primary_menu' => 'Menu principal',
    'footer_menu' => 'Menu footer'
));


add_action('wp_enqueue_scripts', 'gkp_insert_css_in_head');
function gkp_insert_css_in_head()
{
    wp_enqueue_style("bs_css", "https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css");
    wp_enqueue_style('style', get_bloginfo('stylesheet_url'));


    if (is_page_template('page-vintage.php')) {
        wp_enqueue_style('Vintage', get_template_directory_uri().'/css/vintage.css');
    }
    if (is_page_template('page-realisation.php')) {
        wp_enqueue_style('Realisation', get_template_directory_uri().'/css/realisation.css');
    }
    if (is_page_template('page-creation.php')) {
        wp_enqueue_style('Creation', get_template_directory_uri().'/css/creation.css');
    }
    if (is_page_template('page-histoire.php')) {
    wp_enqueue_style('Histoire', get_template_directory_uri().'/css/histoire.css');
    }
    if (is_page_template('page-conatct.php')) {
        wp_enqueue_style('Contact', get_template_directory_uri().'/css/contact.css');
    }
    if (is_page_template('page-client-co.php')) {
        wp_enqueue_style('ClientConnexion', get_template_directory_uri().'/css/clientConnexion.css');
    }
    if (is_page_template('page-client-compte.php')) {
        wp_enqueue_style('ClientCompte', get_template_directory_uri().'/css/clientCompte.css');
    }
    if (is_page_template('page-blog.php')) {
        wp_enqueue_style('Blog', get_template_directory_uri().'/css/blog.css');
    }
    if (is_page_template('page-article-single.php')) {
        wp_enqueue_style('Article', get_template_directory_uri().'/css/article.css');
    }
    if (is_page_template('page-pannier.php')) {
        wp_enqueue_style('Pannier', get_template_directory_uri().'/css/pannier.css');
    }
    if (is_page_template('page-produit-single.php')) {
        wp_enqueue_style('Produit', get_template_directory_uri().'/css/produit.css');
    }
}




/*if ( is_page_template( 'index.php' ) ) {
    wp_enqueue_style( 'style', get_stylesheet_directory_uri() .'style.css' );
}

if ( is_page_template( 'vintage.php' ) ) {
    wp_enqueue_style( 'header', get_stylesheet_directory_uri() .'vintage.css' );
}*/
