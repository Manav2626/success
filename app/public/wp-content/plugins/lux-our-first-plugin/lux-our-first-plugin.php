<?php

/* 
    Plugin Name: Lux First Plugin
    Description: Amazing plugin
    Version: 1.0
    Author: Manav
    Author URL: http://success.local/

*/


//we could create funtions without class, but that would require very very unique names that no one have used in wordpress already. Tha's why we created class

class WordCountAndTimePlugin
{
    function __construct()
    {
        add_action('admin_menu', array($this, 'adminPage'));
        add_action('admin_init', array($this, 'settings'));
    }

    //also calling function in add_action is not same as before by just passing name, we have to create an array($this, 'aaaa')

    function adminPage()
    {
        add_options_page('Words Count Settings', 'Words Count', 'manage_options', 'word-count-settings-page', array($this, 'ourHTML'));
    }
    /*
    register_settings(1,2,3); // used Once for-Each options on Plugin. In our case we'll use it 5 times
    1. Name of the group that this settings belong to
    2. Name of the specific Setting/option 
    3. Array of several diff options 
        i. Sanatizing 
        ii. setting default value = 0, 0= display at the beginning, 1= display at the end (just for our referance)

    add_settings_field(1,2,3,4,5);
    1. Name to Tie with 
    2. HTML Label Text
    3. Function to output HTML
    4. Page Slug
    5. Section to add this field to...

    add_settings_section(1,2,3,4);
    1. Name of the Section 
    2. SubTitle for this section -> will generally keep empty -> null
    3. Content of section -> currently we don't want -> null
    4. Page Slu
    */
    function settings()
    {
        add_settings_section('wcp_first_section',null,null,'word-count-settings-page');
        
        add_settings_field('wcp_location','Display Location', array($this, 'locationHTML'),'word-count-settings-page','wcp_first_section');
        register_setting('wordcountPlugin', 'wcp_location', array('sanitize_callback' => 'sanitize_text_field', 'default' => '0'));
    }
    function locationHTML(){ ?>
    
    <select name="wcp_location">
        <option value="0" <?php selected(get_option('wcp_location', '0'))?>>Beginning Of Post</option>
        <option value="1" <?php selected(get_option('wcp_location', '1'))?>>End Of Post</option>
    </select>

    <?php }

    function ourHTML()
    { ?>
        <h1> Word Count Settings</h1>
        <form action="options.php" method="POST">
            <?php 
            settings_fields('wordcountPlugin');
            do_settings_sections('word-count-settings-page');
            submit_button();
            ?>
        </form>
<?php }
}

$WordCountAndTimePlugin = new WordCountAndTimePlugin();
