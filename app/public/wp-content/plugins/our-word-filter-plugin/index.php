<?php

/* 
    Plugin Name: Our Word FIlter Plugin
    Description: Replace a list of words
    Version: 1.0
    Author: Manav
    Author URL: http://success.local/
*/

if(!defined('ABSPATH')) exit; // Exits if someone tries to directly access Plugin




class OurWordFilterPlugin{
    function __construct()
    {
        add_action('admin_menu', array($this, 'ourMenu'));
    }

    function ourMenu(){
        add_menu_page('Word Filter','Word Filter','manage_options','ourwordfilter',array($this, 'wordFilterPage'),'dashicons-smiley','100');
        add_submenu_page('ourwordfilter', ' Words To Filter', 'Words List', 'manage_options', 'ourwordfilter', array($this, 'wordFilterPage'));
        add_submenu_page('ourwordfilter', ' Word Filter Options', 'Options', 'manage_options', 'word-filter-option', array($this, 'optionSubPage'));
    }
    function wordFilterPage(){ ?>
    Hello World
    <?php }
    function optionSubPage(){ ?>
    Hello World Subsssss
    <?php }
}

$OurWordFilterPlugin=new OurWordFilterPlugin();



