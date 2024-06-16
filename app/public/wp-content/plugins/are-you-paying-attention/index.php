<?php

/* 
    Plugin Name: Are You Paying Attention Quiz
    Description: Give your readers a multiple choice question.
    Version: 1.0
    Author: Manav
    Author URL: http://success.local/
*/

if (!defined('ABSPATH')) exit; // Exits if someone tries to directly access Plugin

class AreYouPayingAttention{
    function __construct(){
        add_action('init', array($this, 'adminAssets')); //to load JS file
    }
    function adminAssets(){
        wp_register_script('ournewblocktype', plugin_dir_url(__FILE__).'build/index.js', array('wp-blocks', 'wp-element')); 
        register_block_type('ourplugin/are-you-paying-attention', array(
            'editor_script' => 'ournewblocktype', //name we used above
            'render_callback' => array($this, 'theHTML')

        ));
    }

    function theHTML($attributes){
        // return '<p>Today the sky is'.' '.$attributes['skyColor'].' '.'and the grass is'.' '.$attributes['grassColor'].'.</p>';
        ob_start(); ?>
        <h3> Today the sky is <?php echo esc_html($attributes['skyColor']) ?> and the grass is <?php echo esc_html($attributes['grassColor']) ?></h3>
        <?php return ob_get_clean();
    }

}

$areYouPayingAttention = new AreYouPayingAttention();  


/* 
Creating Block type with React 
Create New Plugin
    1. Create test JS file with alerts
    2. Started basic index.php with class and set JS file path 

In add_action, was using add_action('enqueue_block_editor_assets', array($this, 'adminAssets'));
But for save changes from index.js, use init instead of enqueue
Under the admin assets, created register_block_type
    1. gave the value of register block type from index.js
    2. gave the script
    3. gave the HTML callback and created function for html
*/