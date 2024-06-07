<?php
function lux_post_types()
{
    //professor type
    register_post_type('professor', array(

        'supports' => array('title', 'editor', 'thumbnail'),
        'show_in_rest' => true,
        'public' => true,
        'labels' => array(
            'name' => 'Professors',
            'add_new_item' => 'Add New Professor',
            'edit_item' => 'Edit Professor',
            'all_items' => 'All Professors',
            'singular_name' => 'Professor',

        ),

        'menu_icon' => 'dashicons-welcome-learn-more'
    ));
    //event type
    register_post_type('event', array(
        'capability_type' => 'event',
        'map_meta_cap' => true,
        'has_archive' => true,
        'supports' => array('title', 'editor', 'excerpt'),
        'show_in_rest' => true,
        'rewrite' => array('slug' => 'events'),
        'public' => true,
        'labels' => array(
            'name' => 'Events',
            'add_new_item' => 'Add New Event',
            'edit_item' => 'Edit Event',
            'all_items' => 'All Events',
            'singular_name' => 'Event',

        ),

        'menu_icon' => 'dashicons-calendar-alt'
    ));
    //program type
    register_post_type('program', array(
        'has_archive' => true,
        'supports' => array('title'),
        'show_in_rest' => true,
        'rewrite' => array('slug' => 'programs'),
        'public' => true,
        'labels' => array(
            'name' => 'Programs',
            'add_new_item' => 'Add New Program',
            'edit_item' => 'Edit Program',
            'all_items' => 'All Programs',
            'singular_name' => 'Program',

        ),

        'menu_icon' => 'dashicons-awards'
    ));

    //note post type
    register_post_type('note', array(
        //for adding post method for ROLES section for granting permission, add below 2 lines
        'capability_type' => 'note',
        'map_meta_cap' => true,
        'supports' => array('title', 'editor'),
        'show_in_rest' => true,
        'public' => false,
        'show_ui' => true,
        'labels' => array(
            'name' => 'Notes',
            'add_new_item' => 'Add New Note',
            'edit_item' => 'Edit Note',
            'all_items' => 'All Notes',
            'singular_name' => 'Note',

        ),

        'menu_icon' => 'dashicons-welcome-write-blog'
    ));
    //like post type
    register_post_type('like', array(
        
        'supports' => array('title'),
        
        'public' => false,
        'show_ui' => true,
        'labels' => array(
            'name' => 'Likes',
            'add_new_item' => 'Add New Like',
            'edit_item' => 'Edit Like',
            'all_items' => 'All Likes',
            'singular_name' => 'Like',

        ),

        'menu_icon' => 'dashicons-heart'
    ));

}

add_action('init', 'lux_post_types');
