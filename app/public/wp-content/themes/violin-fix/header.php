<?php


// pull the site URL for utilization in the page to prevent migration issues.
$site_url = get_site_url();
// utilize this if you need to enque scripts or specific styles.
function enqueue_header_scripts()
{
  // edit the stars below with your file name if you need JavaScript.
  // wp_enqueue_script('script_handle', '/wp-content/themes/violin-fix/js/scripts.js', '0.0.1', false);
  // wp_enqueue_script( 'script_handle', '/wp-content/themes/awmi-net-2018/jsDist/********.min.js', array('cashdomlibrary'), '0.0.1', false);
}
add_action('wp_enqueue_scripts', 'enqueue_header_scripts');

?>

<!DOCTYPE html>
<html>

<head>
  <?php wp_head(); ?>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>

<header class="banner current">
  <!-- Logo here -->
</header>

<div class="nav">
  <input type="checkbox" id="nav-check">
  <div class="nav-header">
    <div class="nav-title">
      Violin Fix
    </div>
  </div>
  <div class="nav-btn">
    <label for="nav-check">
      <span></span>
      <span></span>
      <span></span>
    </label>
  </div>
  
  <div class="nav-links">
    <a href="/">Home</a>
    <a href="/explore" target="_blank">Explore the Season</a>
    <a href="/concert" target="_blank">This Month's Digital Concert</a>
    <a href="/subscribe" target="_blank">Subscribe</a>
    <a href="/about" target="_blank">About the Performers</a>
    <a href="/tracking" target="_blank">Track My Progress</a>
  </div>
</div>