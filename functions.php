<?php


function coffeShop_files(){
    
    wp_enqueue_style('coffeShop_main_file', get_stylesheet_uri()); 


      wp_enqueue_style('custom-google-fonts', '//fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700');

      // Enqueue Bootstrap CSS
      wp_enqueue_style('bootstrap-css', get_template_directory_uri() . '/css/bootstrap.css', array(), '5.0.2', 'all');

      // Enqueue Theme CSS (custom styles)
      wp_enqueue_style('theme-css', get_template_directory_uri() . '/css/main.css', array('bootstrap-css'), '1.0.0', 'all');
      
      // You can enqueue additional CSS files in a similar way if needed.

     // Enqueue JavaScript file with jQuery as a dependency
    wp_enqueue_script('main-js', get_template_directory_uri() . '/js/main.js', array('jquery'), '1.0.0', true);
}





add_action('wp_enqueue_scripts','coffeShop_files');
