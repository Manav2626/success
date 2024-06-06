<?php
/* We want to create our custom api for Likes just like Search
- which we are using in Like.js. 
- For that we have created our custom folder inc, where we store our cutom APIs. and created new route /wp-json/lux/v1/search
- after creating this file, we set it REQUIRED in functions.php on top of the page. 
- Now we will add actions and stuff. 
*/
add_action('rest_api_init', 'luxLikeRoutes');

function luxLikeRoutes()
{
    //under the function, created 2 routes 1 for POST, and 2nd for DELETE
    register_rest_route('lux/v1', 'manageLike', array(
        'methods' => 'POST',
        'callback' => 'createLike'
    ));
    register_rest_route('lux/v1', 'manageLike', array(
        'methods' => 'DELETE',
        'callback' => 'deleteLike'
    ));
}

//in callback, we can create inline function, but for clean code, we will create function below and will call that.

function createLike($data)
{
    
    //after creating function below, let's add some constions so that only loggedIn users can Like. And move code inside IF statement and also add return for wp_insert_post to get the ID
    //Here we forgot NONCE, so add that 

    if (is_user_logged_in()) {

        //just for testing, created siimple return, and will call this api in Like.js when button clicked using Ajax
        // return 'Thanks for creating Like';
        //Now let's create function
        $professor = sanitize_text_field($data['professorID']);

        //below is WP_Query copied from single-professor to check if like exists, and in value passed $professor from above and added it to below if condition 
        $existQuery = new WP_Query(array(
            'author' => get_current_user_id(),
            'post_type' => 'like',
            'meta_query' => array(
            array(
                'key' => 'liked_professor_id',
                'compare' => '=',
                'value' => $professor
            )
            ))); 
        
        //after NONCE, let's add condiotion to 1 User 1 Like and pase below code inside IF statement
        if($existQuery->found_posts == 0 AND get_post_type($professor) == 'professor') {
            //create new like
            return wp_insert_post(array(
                'post_type' => 'like',
                'post_status' => 'publish',
                'post_title' => 'Our PHP created Like Post Title',
                'meta_input' => array(
                    //blow we want the id of professor, so we'll modify Like.js, and get some parameters in POST body, register_rest_route passes all data, so Catched in $data -> hold in $professor -> snaitized it -> used it 
    
                    'liked_professor_id' => $professor
                )
    
            ));
        } else{
            die("invalid professor ID");
        }

        
    } else {
        die("Only logged in users can Like");
    }
}

function deleteLike()
{
    return 'Thanks for Deleting Like';
}
