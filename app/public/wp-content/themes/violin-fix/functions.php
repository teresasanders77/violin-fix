<?php

function violin_fix_files()
{
  wp_enqueue_style('violin_fix_styles', get_theme_file_uri('/css/style.css'));
  wp_enqueue_script( 'my-script', get_template_directory_uri() . '/build/siteWide.min.js', array(), true );
}

add_action('wp_enqueue_scripts', 'violin_fix_files');
