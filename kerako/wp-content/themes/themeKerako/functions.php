<?php

add_theme_support('post-thumbnails');

function custom_new_menu()
{
    register_nav_menus(array(
        'primary_menu' => 'Menu principal',
        'footer_menu' => 'Menu footer'
    ));
}
add_action( 'init', 'custom_new_menu' );

add_action('wp_enqueue_scripts', 'gkp_insert_css_in_head');
function gkp_insert_css_in_head()
{
    wp_enqueue_style("bs_css", "https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css");
    wp_enqueue_script("bs_popper", "https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js");
    wp_enqueue_script("bs_script", "https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js");
    wp_enqueue_style('style', get_bloginfo('stylesheet_url'));


    if (is_page_template('page-vintage.php')) {
        wp_enqueue_style('Vintage', get_template_directory_uri() . '/css/vintage.css');
    }
    if (is_page_template('page-realisation.php')) {
        wp_enqueue_style('Realisation', get_template_directory_uri() . '/css/realisation.css');
    }
    if (is_page_template('page-creation.php')) {
        wp_enqueue_style('Creation', get_template_directory_uri() . '/css/creation.css');
    }
    if (is_page_template('page-histoire.php')) {
        wp_enqueue_style('Histoire', get_template_directory_uri() . '/css/histoire.css');
    }
    if (is_page_template('page-contact.php')) {
        wp_enqueue_style('Contact', get_template_directory_uri() . '/css/contact.css');
    }
    if (is_page_template('page-client-co.php')) {
        wp_enqueue_style('ClientConnexion', get_template_directory_uri() . '/css/clientConnexion.css');
    }
    if (is_page_template('page-client-compte.php')) {
        wp_enqueue_style('ClientCompte', get_template_directory_uri() . '/css/clientCompte.css');
    }
    if (is_page_template('page-blog.php')) {
        wp_enqueue_style('Blog', get_template_directory_uri() . '/css/blog.css');
    }
    if (is_page_template('page-article-single.php')) {
        wp_enqueue_style('Article', get_template_directory_uri() . '/css/article.css');
    }
    if (is_page_template('page-pannier.php')) {
        wp_enqueue_style('Pannier', get_template_directory_uri() . '/css/pannier.css');
    }
    if (is_page_template('page-produit-single.php')) {
        wp_enqueue_style('Produit', get_template_directory_uri() . '/css/produit.css');
    }
}

function mytheme_add_woocommerce_support()
{
    add_theme_support('woocommerce');
}

add_action('after_setup_theme', 'mytheme_add_woocommerce_support');


add_filter('acf/settings/save_json', 'my_acf_json_save_point');

/*

function my_acf_json_save_point($path)
{

    // update path
    $path = get_template_directory() . '/acf-json';


    // return
    return $path;

}

add_filter('acf/settings/load_json', function ($paths) {
    $paths = array(get_template_directory() . '/acf-json');

    if (is_child_theme()) {
        $paths[] = get_stylesheet_directory() . '/acf-json';
    }

    return $paths;
});
*/
