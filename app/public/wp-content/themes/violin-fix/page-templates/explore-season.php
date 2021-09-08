<?php
/*  Template Name: Explore Season  */


// pull the site URL for utilization in the page to prevent migration issues.
$site_url = get_site_url();
// utilize this if you need to enque scripts or specific styles.
function enqueue_explore_season_scripts() {
    // edit the stars below with your file name if you need JavaScript.
    wp_enqueue_script( 'script_handle', '/wp-content/themes/violin-fix/src/explore-season.js', array(), '0.0.1', false);
    // wp_enqueue_script( 'script_handle', '/wp-content/themes/awmi-net-2018/jsDist/wommack-testimony.min.js', array('cashdomlibrary'), '0.0.1', false);
}
add_action( 'wp_enqueue_scripts', 'enqueue_explore_season_scripts' );
// Retrieve Header for site.
get_header();
?>
<section id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
  <div id="explore_season_page_wrapper">
    <div class="entry-content">
      <?php the_content(); ?>
      <div class="card first"><p>Scroll or press UP or DOWN</p><p>(does not work with touch yet)</p></div>
        <div class="card second" ></div>
        <div class="card third"></div>
        <div class="card fourth"></div>
        <div class="card fifth"></div>

<!-- Do you want more cards? Just add one :) -->
    </div><!-- .entry-content -->
  </div>

</section><!-- #post-<?php the_ID(); ?> -->

<?php
get_footer();
?>