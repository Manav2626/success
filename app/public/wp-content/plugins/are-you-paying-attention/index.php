<?php

/* 
    Plugin Name: Are You Paying Attention Quiz
    Description: Give your readers a multiple choice question.
    Version: 1.0
    Author: Manav
    Author URL: http://success.local/
*/

if (!defined('ABSPATH')) exit; // Exits if someone tries to directly access Plugin

class AreYouPayingAttention
{
    function __construct()
    {
        add_action('init', array($this, 'adminAssets')); //to load JS file
    }
    function adminAssets()
    {
        //SINCE USING block.json using DIR, below line are no longer needed, commented for reffernce only 
        // wp_register_style('quizeditcss', plugin_dir_url(__FILE__) . 'build/index.css');
        // wp_register_script('ournewblocktype', plugin_dir_url(__FILE__) . 'build/index.js', array('wp-blocks', 'wp-element', 'wp-editor'));
        register_block_type(__DIR__, array(
            // 'editor_script' => 'ournewblocktype', //name we used above for script
            // 'editor_style' => 'quizeditcss', //name we used above for css
            'render_callback' => array($this, 'theHTML')

        ));
    }

    function theHTML($attributes)
    {
        //Below code is of Frontend CSS & JS path, but added path in block.json viewStyle, below code are commented just for reference
        // if (!is_admin()) {
        //     wp_enqueue_script('attentionFrontend', plugin_dir_url(__FILE__) . 'build/frontend.js', array('wp-element'), '1.0', true); 
        //     wp_enqueue_style('attentionFrontendStyles', plugin_dir_url(__FILE__) . 'build/frontend.css'); 
        // }

        // return '<p>Today the sky is'.' '.$attributes['skyColor'].' '.'and the grass is'.' '.$attributes['grassColor'].'.</p>';
        ob_start(); ?>
        <div class="paying-attention-update-me"><pre style="display: none"><?php echo wp_json_encode($attributes) ?></pre></div>
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
Started CSS
    1. Created CSS file
    2. added in adminAssets 
    3. Add more fields in JS
*/


//Moving values from here to Block.json , and using __DIR__