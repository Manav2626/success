<?php

/* 
    Plugin Name: Our Word FIlter Plugin
    Description: Replace a list of words
    Version: 1.0
    Author: Manav
    Author URL: http://success.local/
*/

if (!defined('ABSPATH')) exit; // Exits if someone tries to directly access Plugin




class OurWordFilterPlugin
{
    function __construct()
    {
        add_action('admin_menu', array($this, 'ourMenu'));
        add_action('admin_init', array($this, 'ourSettings'));
        if(get_option('plugin_words_to_filter')) add_filter('the_content', array($this, 'filterLogic'));
    }

    //function for HTML for text to replace with
    function ourSettings(){
        add_settings_section('replacement-text-section', null, null, 'word-filter-option');
        register_setting('replacementField', 'replacementText');
        add_settings_field('replacementText', 'Filter Text', array($this, 'replacementFieldHTML'), 'word-filter-option', 'replacement-text-section');
    }

    //Function for Replacement page HTML
    function replacementFieldHTML(){ ?>
    <input type="text" name="replacementText" value="<?php echo esc_attr(get_option('replacementText', '***'));?>" >
    <p class="description">Leave blank to simply remove the filtered words.</p>

    <?php }

    //function to replace words with
    function filterLogic($content){
        $badwords = explode(',', get_option('plugin_words_to_filter'));
        $badwordsTrimmed = array_map('trim', $badwords);
        return str_ireplace($badwordsTrimmed, esc_html(get_option('replacementTExt', '****')), $content);
        

    }

    function ourMenu()
    {
        $mainPageHook = add_menu_page('Word Filter', 'Word Filter', 'manage_options', 'ourwordfilter', array($this, 'wordFilterPage'), 'dashicons-smiley', '100');
        add_submenu_page('ourwordfilter', ' Words To Filter', 'Words List', 'manage_options', 'ourwordfilter', array($this, 'wordFilterPage'));
        add_submenu_page('ourwordfilter', ' Word Filter Options', 'Options', 'manage_options', 'word-filter-option', array($this, 'optionSubPage'));
        add_action("load-{$mainPageHook}", array($this, 'mainPageAssets')); //loads function which helps to add aditional CSS
    }

    //function to add CSS for main page Hook
    function mainPageAssets()
    {
        wp_enqueue_style('filterAdminCss', plugin_dir_url(__FILE__) . 'style.css');
    }

    //Function for success message when submit clicked
    function handleForm()
    {
        //condition to check nonce passed with form
        if (wp_verify_nonce($_POST['ourNonce'], 'saveFilterWords') and current_user_can('manage_options')) {
            update_option('plugin_words_to_filter', sanitize_text_field($_POST['plugin_words_to_filter'])); //name after text are in form field 
?>
            <div class="updated">
                <p>Your filtered words were saved.</p>
            </div>
        <?php
        } else { ?>
            <div class="error">
                <p>Sorry, you don't have permission to perform that action</p>
            </div>
        <?php }
    }
    //function for HTML output
    function wordFilterPage()
    { ?>
        <div class="wrap">
            <h1>Word Filter</h1>
            <?php if (isset($_POST['justsubmitted']) == "true") $this->handleForm() ?>
            <form method="POST">
                <input type="hidden" name="justsubmitted" value="true">
                <?php wp_nonce_field('saveFilterWords', 'ourNonce') ?>
                <label for="plugin_words_to_filter">
                    <p>Enter a <strong>comma-separated</strong> List of words tofilter from site's content.</p>
                </label>
                <div class="word-filter__flex-container">
                    <textarea name="plugin_words_to_filter" id="plugin_words_to_filter" placeholder="bad, mean, awful, horrible"><?php echo esc_textarea(get_option('plugin_words_to_filter')) ?></textarea>
                </div>
                <input type="submit" name="submit" id="submit" class="button button-primary" value="Save Changes" />
            </form>
        </div>
    <?php }
    function optionSubPage()
    { ?>
        <div class="wrap">
            <h1> Word Filter Options</h1>
            <form action="options.php" method="POST">
                <?php 
                settings_errors(); //for success messages
                settings_fields('replacementField');
                do_settings_sections('word-filter-option');
                submit_button();
                ?>
            </form>
        </div>
<?php }
}

$OurWordFilterPlugin = new OurWordFilterPlugin();


