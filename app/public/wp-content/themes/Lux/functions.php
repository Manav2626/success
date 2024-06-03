<?php 

require get_theme_file_path('/inc/search-route.php');
function lux_custom_rest(){
    register_rest_field('post','authorName',array(
        'get_callback' => function(){return get_the_author();}
    ));
};

add_action('rest_api_init', 'lux_custom_rest');


function pageBanner($args = NULL){ 
if(!isset($args['title'])){
    $args['title'] = get_the_title();
} 
if(!isset($args['subtitle'])){
    $args['subtitle'] = get_field('page_subtitle');
} 

if(!isset($args['photo'])){
    if(get_field('page_banner_image') AND !is_archive() AND !is_home()){
        $args['photo'] = get_field('page_banner_image')['sizes']['pageBanner'];
    }else{
        $args['photo'] = get_theme_file_uri('/images/ocean.jpg');
    }
}

?>
<div class="page-banner">
        <div class="page-banner__bg-image" style="background-image: url(<?php echo $args['photo']; ?>)"></div>
        <div class="page-banner__content container container--narrow">
            <h1 class="page-banner__title"><?php echo $args['title'] ?></h1>
            <div class="page-banner__intro">
                <p><?php echo $args['subtitle'] ?></p>
            </div>
        </div>
    </div>
<?php }
function lux_stylesheet(){

    wp_enqueue_style('font-awsome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    wp_enqueue_style('google-custom-font', '/fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
    wp_enqueue_script('jsScript', get_theme_file_uri('/build/index.js'), array('jquery'), '1.0', true);
    wp_enqueue_style('styleIndex', get_theme_file_uri("build/style-index.css"));
    wp_enqueue_style('index', get_theme_file_uri("build/index.css"));
    wp_enqueue_style('styles', get_stylesheet_uri());
    wp_localize_script('jsScript','luxData',array(
        'root_url' => get_site_url(),
        'nonce' => wp_create_nonce('wp_rest')
    )
    );

}


add_action('wp_enqueue_scripts', 'lux_stylesheet');

function lux_features(){
    register_nav_menu('footerMenuOne', 'Footer Menu One');
    register_nav_menu('footerMenuTwo', 'Footer Menu Two');
    register_nav_menu('headerMenuLocation', 'Header Menu Location');
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
    add_image_size('professorLandscape', 400, 260, true);
    add_image_size('professorPortrait', 480, 650, true);
    add_image_size('pageBanner', 1500, 350, true);
}

add_action('after_setup_theme', 'lux_features');




function lux_adjust_queries($query) {
    if(!is_admin() AND is_post_type_archive('program') AND $query->is_main_query()) {
        $query->set('orderby','title');
        $query->set('order', 'ASC');
        $query->set('post_per_page', '-1');
    }

    if(!is_admin() AND is_post_type_archive('event') AND $query->is_main_query()) {
        
        $today = date('Ymd');
        $query->set('meta_key','event_date');
        $query->set('orderby','meta_value_num');
        $query->set('order', 'ASC');
        $query->set('meta_query', array(
            array('key' => 'event_date',
            'compare' => '>=',
            'value'=> $today,
            'type'=> 'numeric')
        ));
    }
}

add_action('pre_get_posts', 'lux_adjust_queries');

//Redirect Sub to Home Page


function redirectSubToFrontpage(){
    $ourCurrentUser = wp_get_current_user();
    if(count($ourCurrentUser->roles) == 1 AND $ourCurrentUser->roles[0] == 'subscriber' ){
        wp_redirect(site_url('/'));
        exit;
    }
}
add_action('admin_init', 'redirectSubToFrontpage');

function noSubAdminBar(){
    $ourCurrentUser = wp_get_current_user();
    if(count($ourCurrentUser->roles) == 1 AND $ourCurrentUser->roles[0] == 'subscriber' ){
        show_admin_bar(false);
    }
}
add_action('admin_init', 'noSubAdminBar');

//customise login screen

add_filter('login_headerurl', 'ourHeaderUrl');

function ourHeaderUrl(){
    return esc_url(site_url('/'));
}

add_action('login_enqueue_scripts', 'ourLoginCSS');

function ourLoginCSS(){
    wp_enqueue_style('font-awsome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    wp_enqueue_style('google-custom-font', '/fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
    wp_enqueue_style('styleIndex', get_theme_file_uri("build/style-index.css"));
    wp_enqueue_style('index', get_theme_file_uri("build/index.css"));
}

add_filter('login_headertitle', 'ourLoginTitle');
function ourLoginTitle(){
    return get_bloginfo('name');
}