<?php

require get_theme_file_path('/inc/like-route.php');
require get_theme_file_path('/inc/search-route.php');
function lux_custom_rest()
{
    register_rest_field('post', 'authorName', array(
        'get_callback' => function () {
            return get_the_author();
        }
    ));
    register_rest_field('note', 'userNoteCount', array(
        'get_callback' => function () {
            return count_user_posts(get_current_user_id(), 'note');
        }
    ));
};

add_action('rest_api_init', 'lux_custom_rest');


function pageBanner($args = NULL)
{
    if (!isset($args['title'])) {
        $args['title'] = get_the_title();
    }
    if (!isset($args['subtitle'])) {
        $args['subtitle'] = get_field('page_subtitle');
    }

    if (!isset($args['photo'])) {
        if (get_field('page_banner_image') and !is_archive() and !is_home()) {
            $args['photo'] = get_field('page_banner_image')['sizes']['pageBanner'];
        } else {
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
function lux_stylesheet()
{

    wp_enqueue_style('font-awsome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    wp_enqueue_style('google-custom-font', '//fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
    wp_enqueue_script('jsScript', get_theme_file_uri('/build/index.js'), array('jquery'), '1.0', true);
    wp_enqueue_style('styleIndex', get_theme_file_uri("build/style-index.css"));
    wp_enqueue_style('index', get_theme_file_uri("build/index.css"));
    wp_enqueue_style('styles', get_stylesheet_uri());
    wp_localize_script(
        'jsScript',
        'luxData',
        array(
            'root_url' => get_site_url(),
            'nonce' => wp_create_nonce('wp_rest')
        )
    );
}


add_action('wp_enqueue_scripts', 'lux_stylesheet');

function lux_features()
{
    register_nav_menu('footerMenuOne', 'Footer Menu One');
    register_nav_menu('footerMenuTwo', 'Footer Menu Two');
    register_nav_menu('headerMenuLocation', 'Header Menu Location');
    add_theme_support('title-tag');
    add_theme_support('post-thumbnails');
    add_image_size('professorLandscape', 400, 260, true);
    add_image_size('professorPortrait', 480, 650, true);
    add_image_size('pageBanner', 1500, 350, true);
    add_theme_support('editor-styles');
    add_editor_style(array('https://fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i', '/build/style-index.css', 'build/index.css'));
}

add_action('after_setup_theme', 'lux_features');




function lux_adjust_queries($query)
{
    if (!is_admin() and is_post_type_archive('program') and $query->is_main_query()) {
        $query->set('orderby', 'title');
        $query->set('order', 'ASC');
        $query->set('post_per_page', '-1');
    }

    if (!is_admin() and is_post_type_archive('event') and $query->is_main_query()) {

        $today = date('Ymd');
        $query->set('meta_key', 'event_date');
        $query->set('orderby', 'meta_value_num');
        $query->set('order', 'ASC');
        $query->set('meta_query', array(
            array(
                'key' => 'event_date',
                'compare' => '>=',
                'value' => $today,
                'type' => 'numeric'
            )
        ));
    }
}

add_action('pre_get_posts', 'lux_adjust_queries');

//Redirect Sub to Home Page


function redirectSubToFrontpage()
{
    $ourCurrentUser = wp_get_current_user();
    if (count($ourCurrentUser->roles) == 1 and $ourCurrentUser->roles[0] == 'subscriber') {
        wp_redirect(site_url('/'));
        exit;
    }
}
add_action('admin_init', 'redirectSubToFrontpage');

function noSubAdminBar()
{
    $ourCurrentUser = wp_get_current_user();
    if (count($ourCurrentUser->roles) == 1 and $ourCurrentUser->roles[0] == 'subscriber') {
        show_admin_bar(false);
    }
}
add_action('admin_init', 'noSubAdminBar');

//customise login screen

add_filter('login_headerurl', 'ourHeaderUrl');

function ourHeaderUrl()
{
    return esc_url(site_url('/'));
}

add_action('login_enqueue_scripts', 'ourLoginCSS');

function ourLoginCSS()
{
    wp_enqueue_style('font-awsome', '//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    wp_enqueue_style('google-custom-font', '/fonts.googleapis.com/css?family=Roboto+Condensed:300,300i,400,400i,700,700i|Roboto:100,300,400,400i,700,700i');
    wp_enqueue_style('styleIndex', get_theme_file_uri("build/style-index.css"));
    wp_enqueue_style('index', get_theme_file_uri("build/index.css"));
}

add_filter('login_headertitle', 'ourLoginTitle');
function ourLoginTitle()
{
    return get_bloginfo('name');
}

//Forced note posts to be Private 

add_filter('wp_insert_post_data', 'makeNotePrivate', 10, 2); //makes final changes to code, before storing in servers 

// above function is working like water filter, data passed -> data cleans(modifies) -> returns data
function makeNotePrivate($data, $postarr)
{

    if ($data['post_type'] == 'note') {
        //below function takes 2 arguments, 1: On which 2: it's which post type
        //but with only > 4 condition, if limit reached, user can't edit or delete existing post.
        // To avoid that, we'll take help of ID, because new POST will not created, and old has id. and to get that we'll add $postarr in function + in it's action, we'll add PRIORITY & NUMBER OF PARAMETERS
        if (count_user_posts(get_current_user_id(), 'note') > 4 and !$postarr['ID']) {
            die("You have reached your post limit");
        }
        //Now we'll limit the number of posts/notes user can create. Use above condition
        $data['post_content'] = sanitize_textarea_field($data['post_content']);
        $data['post_title'] = sanitize_text_field($data['post_title']);
    }
    //After setting below code that privates note post type, we also want that user should not be allowed to post html and js, thst's why we are adding above condition 
    if ($data['post_type'] == 'note' and $data['post_status'] != 'trash') {
        $data['post_status'] = "private";
    }
    return $data;
}

//function for changing to block based theme, starting with banner
//below is function example, but cant create functiion for each block type we create, repetative task, SO created Class and function , Just pass the Block name

// function bannerBlock()
// {
//     // 1 register JS
//     wp_register_script(
//         'bannerBlockScript',
//         get_stylesheet_directory_uri() . '/build/banner.js',
//         array('wp-blocks', 'wp-editor')
//     );
//     //2 register block type
//     register_block_type(
//         "ourblocktheme/banner",
//         array(
//             'editor_script' => 'bannerBlockScript'
//         )
//     );
// };

// add_action('init', 'bannerBlock');


class JSXBlock {
    function __construct($name){
        $this->name = $name;
        add_action('init', [$this, 'onInit']);
    }

    function onInit(){
        // 1 register JS
    wp_register_script(
        $this->name,
        get_stylesheet_directory_uri() . "/build/{$this->name}.js",
        array('wp-blocks', 'wp-editor')
    );
    //2 register block type
    register_block_type(
        "ourblocktheme/{$this->name}",
        array(
            'editor_script' => $this->name
        )
    );
    }
}

new JSXBlock('banner');
new JSXBlock('genericheading');