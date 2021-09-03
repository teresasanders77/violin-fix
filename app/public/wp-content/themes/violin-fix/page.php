<?php
/*  Template Name: Home  */


// pull the site URL for utilization in the page to prevent migration issues.
$site_url = get_site_url();
// utilize this if you need to enque scripts or specific styles.
// Retrieve Header for site.
get_header();
?>
<section id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
  <div id="home_page_wrapper">
    <div class="entry-content">
      <h1>Welcome to the Premier Season!</h1>
      <?php the_content(); ?>
      <div class="weekly-video-data">
        <?php
        /* ACF Section */
        $composer = get_field('composer');
        $performers = get_field('performers');
        $piece = get_field('piece');
        ?>
        <p><strong>Composer: <?php echo $composer ?></strong></p>
        <p><strong>Performers: <?php echo $performers ?></strong></p>
        <p><strong>Piece: <?php echo $piece ?></strong></p>
      </div>
    </div><!-- .entry-content -->
  </div>

</section><!-- #post-<?php the_ID(); ?> -->

<?php
get_footer();
?>