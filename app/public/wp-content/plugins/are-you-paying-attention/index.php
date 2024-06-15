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
        add_action('enqueue_block_editor_assets', array($this, 'adminAssets')); //to load JS file
    }
    function adminAssets(){
        wp_enqueue_script('ournewblocktype', plugin_dir_url(__FILE__).'build/index.js', array('wp-blocks', 'wp-element')); 
    }

}

$areYouPayingAttention = new AreYouPayingAttention();  


/* 
Creating Block type with React 
Create New Plugin
    1. Create test JS file with alerts
    2. Started basic index.php with class and set JS file path 

*/