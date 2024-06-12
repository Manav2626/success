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
        add_filter('the_content', array($this, 'ifWrap') ); //this is filter we will use to filetr content to show word counter
    }

    /* 
    function for content filter
    Filter IF 
        1. main query AND single page content
        AND
        2. first check box selected OR second check box selected OR third check box selected with DEFAULT OPTION set as 1(selected)
    Use $content||any variable and return it, and create function in methods below
    */
    function ifWrap($content){
        if((is_main_query() AND is_single()) AND (get_option('wcp_wordcount', '1') OR get_option('wcp_characterCount', '1') OR get_option('wcp_readTime', '1') )){
            return $this->createHTML($content);
        }
        return $content;
    }
    function createHTML($content){
        $html = '<h3>'.esc_html(get_option('wcp_headline', 'Post Statistics')).'</h3><p>'; //concatination of Headline value user pass from WP-ADmin or Default and esc html to protect from misc data enetred in field
        //Now here we will create a variable to calculate word count and read time, only for once and wraping into if condition 
        if(get_option('wcp_wordcount', '1') OR get_option('wcp_readTime') == '1'){
            $wordCount = str_word_count(strip_tags($content));
        }
        //AND after calculating wordcount, Adding to the HTML 
        if(get_option('wcp_wordcount','1')){
            $html .= 'This Post has '. $wordCount .' words. <br>';
        }
        if(get_option('wcp_characterCount','1')){
            $html .= 'This Post has '. strlen(strip_tags($content)) .' characters. <br>';
        }
        if(get_option('wcp_readTime','1')){
            $html .= 'This will take you '. round($wordCount/225 ).' minute(s) to read. <br>';
        }

        $html .= '</p>';

        //now if option is begining/0 add html before content or if option = end/1 add html after content
        if(get_option('wcp_location','0')=='0'){
            return $html . $content;
        }
        return $content . $html;

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
        
        //here under Display Location, for sanitizing we could use function 'sanitize_text_field' but we ready want to be strict like, we have option-1, or option-2, someone changes to 100 from inspect, than should reset to default. For that we will use custom function
        
        //for Location
        add_settings_field('wcp_location','Display Location', array($this, 'locationHTML'),'word-count-settings-page','wcp_first_section');
        register_setting('wordcountPlugin', 'wcp_location', array('sanitize_callback' => array($this, 'sanitizeLocation'), 'default' => '0'));

        //for Headline
        add_settings_field('wcp_headline','Headline Text', array($this, 'headlineHTML'),'word-count-settings-page','wcp_first_section');
        register_setting('wordcountPlugin', 'wcp_headline', array('sanitize_callback' => 'sanitize_text_field', 'default' => 'Post Statistics'));

        //for WordCount 
        add_settings_field('wcp_wordcount','Wordcount', array($this, 'wordcountHTML'),'word-count-settings-page','wcp_first_section');
        register_setting('wordcountPlugin', 'wcp_wordcount', array('sanitize_callback' => 'sanitize_text_field', 'default' => '1'));

        //for Character Count 
        add_settings_field('wcp_characterCount','Character Count', array($this, 'characterCountHTML'),'word-count-settings-page','wcp_first_section');
        register_setting('wordcountPlugin', 'wcp_characterCount', array('sanitize_callback' => 'sanitize_text_field', 'default' => '0'));

        //for Read Time 
        add_settings_field('wcp_readTime','Read Time', array($this, 'readTimeHTML'),'word-count-settings-page','wcp_first_section');
        register_setting('wordcountPlugin', 'wcp_readTime', array('sanitize_callback' => 'sanitize_text_field', 'default' => '1'));

    }

    //Function for used in Display Location field
    /* 
    1. using $input to get the data user is trying to store
    2. add_settings_error(1,2,3)
        1. error is related to 
        2. Name of error variable
        3. Error message
    3. returning updated data 
    4. If not that's the case, or just normal, return it self as it is


    */
    function sanitizeLocation($input){
        if($input != 0 AND $input != 1){
            add_settings_error('wcp_location', 'wcp_location_error', 'Display location must be Begining or End');
            return get_option('wcp_location');
        }
        return $input;

    }

    function readTimeHTML() { ?>
        <input type="checkbox" name="wcp_readTime" value="1" <?php checked(get_option('wcp_readTime'), '1') ?>/>
    <?php }
    function characterCountHTML() { ?>
        <input type="checkbox" name="wcp_characterCount" value="1" <?php checked(get_option('wcp_characterCount'), '1') ?>/>
    <?php }
    function wordcountHTML() { ?>
        <input type="checkbox" name="wcp_wordcount" value="1" <?php checked(get_option('wcp_wordcount'), '1') ?>/>
    <?php }
    function headlineHTML(){ ?>
        <input type="text" name="wcp_headline" valuCe="<?php echo esc_attr(get_option('wcp_headline')) ?>" >
    <?php }
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
