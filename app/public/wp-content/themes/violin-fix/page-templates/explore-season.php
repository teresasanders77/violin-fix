<?php
/*  Template Name: Explore Season  */


// pull the site URL for utilization in the page to prevent migration issues.
$site_url = get_site_url();
// utilize this if you need to enque scripts or specific styles.
function enqueue_explore_season_scripts() {
    // edit the stars below with your file name if you need JavaScript.
    wp_enqueue_script( 'script_handle', '/wp-content/themes/violin-fix/src/explore-season.js', array(), '0.0.1', true);
    wp_enqueue_script('jquery','https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js', array(), null, true);
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
      <div class="card first">
        <div class="previous"></div>
        <a href="#EXE_DIV1"><h1>BEETHOVEN VIOLIN SONATAS</h1></a>
        <div class="next"></div>
      </div>
      <div class="card second">
        <div class="previous"></div>
        <a href="#EXE_DIV2"><h1>Test 1</h1></a>
        <div class="next"></div>
      </div>
      <div class="card third">
        <div class="previous"></div>
        <a href="#EXE_DIV3"><h1>Test2</h1></a>
        <div class="next"></div>
      </div>
      <div class="card fourth">
        <div class="previous"></div>
        <a href="#EXE_DIV4"><h1>Test3</h1></a>
        <div class="next"></div>
      </div>
      <div class="card fifth">
        <div class="previous"></div>
        <a href="#EXE_DIV5"><h1>Test4</h1></a>
        <div class="next"></div>
      </div>
      
<!-- Do you want more cards? Just add one  -->

    </div><!-- .entry-content -->
    <section id="EXE_MAIN">
    <div class="spacer">
            &nbsp;
        </div>
  <article class="panel" id="EXE_DIV1">
    <h1> Beethoven</h1>
  </article>
  <article class="panel" id="EXE_DIV2">
    <h1> Test 1 </h1>
  </article>
  <article class="panel" id="EXE_DIV3">
    <h1> Test 2 </h1>
  </article>
  <article class="panel" id="EXE_DIV4">
    <h1> Test 3</h1>
  </article>
  <article class="panel" id="EXE_DIV5">
    <h1>Test 4</h1>
  </article>
</section>
  </div>

</section><!-- #post-<?php the_ID(); ?> -->

<?php
get_footer();
?>