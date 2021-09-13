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
?>
<div id="top-of-page"></div>
<?php
    get_header();
    /* ACF Cards */
    /**** Change the field object name for each new card group ****/
    $group_1 = get_field_object('beethoven_violin_sonatas');
        $group_1_label = $group_1['label'];
        $group_1_name = $group_1['name'];
    $group_2 = get_field_object('beethoven_violin_sonatas');
        $group_2_label = $group_2['label'];
        $group_2_name = $group_2['name'];
    $group_3 = get_field_object('beethoven_violin_sonatas');
        $group_3_label = $group_3['label'];
        $group_3_name = $group_3['name'];
    $group_4 = get_field_object('beethoven_violin_sonatas');
        $group_4_label = $group_4['label'];
        $group_4_name = $group_4['name'];
    $group_5 = get_field_object('beethoven_violin_sonatas');
        $group_5_label = $group_5['label'];
        $group_5_name = $group_5['name'];
?>
<section id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
    <div id="explore_season_page_wrapper">
        <!-------------------------------DECK OF CARDS-------------------------------------------------->
        <div class="entry-content">
            <?php the_content(); ?>
            <div class="card first">
                <div class="previous"></div>
                <a href="#EXE_DIV1"><h1><?php echo $group_1_label; ?></h1></a>
                <div class="next"></div>
            </div>
            <div class="card second">
                <div class="previous"></div>
                <a href="#EXE_DIV2"><h1><?php echo $group_2_label; ?></h1></a>
                <div class="next"></div>
            </div>
            <div class="card third">
                <div class="previous"></div>
                <a href="#EXE_DIV3"><h1><?php echo $group_3_label; ?></h1></a>
                <div class="next"></div>
            </div>
            <div class="card fourth">
                <div class="previous"></div>
                <a href="#EXE_DIV4"><h1><?php echo $group_4_label; ?></h1></a>
                <div class="next"></div>
            </div>
            <div class="card fifth">
                <div class="previous"></div>
                <a href="#EXE_DIV5"><h1><?php echo $group_5_label; ?></h1></a>
                <div class="next"></div>
            </div>
        </div><!-- .entry-content -->
         <!-------------------------------SUB CARDS-------------------------------------------------->
        <?php if( have_rows($group_1_name) ): ?>
            <?php while( have_rows($group_1_name) ): the_row(); 
                // Get sub field names.
                $sonata_1 = get_sub_field_object('beethoven_violin_sonata_1');
                    $sonata_1_label = $sonata_1['label'];
                    $sonata_1_name = $sonata_1['name'];
                $sonata_2 = get_sub_field_object('beethoven_violin_sonata_2');
                    $sonata_2_label = $sonata_2['label'];
                    $sonata_2_name = $sonata_2['name'];
                $sonata_3 = get_sub_field_object('beethoven_violin_sonata_3');
                    $sonata_3_label = $sonata_3['label'];
                    $sonata_3_name = $sonata_3['name'];
                $sonata_4 = get_sub_field_object('beethoven_violin_sonata_4');
                    $sonata_4_label = $sonata_4['label'];
                    $sonata_4_name = $sonata_4['name'];
                $sonata_5 = get_sub_field_object('beethoven_violin_sonata_5');
                    $sonata_5_label = $sonata_5['label'];
                    $sonata_5_name = $sonata_5['name'];
                $sonata_6 = get_sub_field_object('beethoven_violin_sonata_6');
                    $sonata_6_label = $sonata_6['label'];
                    $sonata_6_name = $sonata_6['name'];
                $sonata_7 = get_sub_field_object('beethoven_violin_sonata_7');
                    $sonata_7_label = $sonata_7['label'];
                    $sonata_7_name = $sonata_7['name'];
                $sonata_8 = get_sub_field_object('beethoven_violin_sonata_8');
                    $sonata_8_label = $sonata_8['label'];
                    $sonata_8_name = $sonata_8['name'];
                $sonata_9 = get_sub_field_object('beethoven_violin_sonata_9');
                    $sonata_9_label = $sonata_9['label'];
                    $sonata_9_name = $sonata_9['name'];
                $sonata_10 = get_sub_field_object('beethoven_violin_sonata_10');
                    $sonata_10_label = $sonata_10['label'];
                    $sonata_10_name = $sonata_10['name'];
            endwhile;
        endif; ?>
        <section id="EXE_MAIN">
            <div class="spacer">&nbsp;</div>
            <article class="panel" id="EXE_DIV1">
                <div class="main">
                    <h1><?php echo $group_1_label; ?></h1>
                    <ul class="row-2">
                        <li class="row-2_item">
                            <div class="row-2-decks">
                                <div class="row-2_content">
                                <h1 class="row-2_title"><?php echo $sonata_1_label; ?></h1>
                                </div>
                            </div>
                        </li>
                        <li class="row-2_item">
                            <div class="row-2-decks">
                                <div class="row-2_content">
                                <h1 class="row-2_title"><?php echo $sonata_2_label; ?></h1>
                                </div>
                            </div>
                        </li>
                        <li class="row-2_item">
                            <div class="row-2-decks">
                                <div class="row-2_content">
                                <h1 class="row-2_title"><?php echo $sonata_3_label; ?></h1>
                                </div>
                            </div>
                        </li>
                        <li class="row-2_item">
                            <div class="row-2-decks">
                                <div class="row-2_content">
                                <h1 class="row-2_title"><?php echo $sonata_4_label; ?></h1>
                                </div>
                            </div>
                        </li>
                        <li class="row-2_item">
                            <div class="row-2-decks">
                                <div class="row-2_content">
                                <h1 class="row-2_title"><?php echo $sonata_5_label; ?></h1>
                                </div>
                            </div>
                        </li>
                        <li class="row-2_item">
                            <div class="row-2-decks">
                                <div class="row-2_content">
                                <h1 class="row-2_title"><?php echo $sonata_6_label; ?></h1>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
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
         <!-------------------------------MOVEMENT CARDS-------------------------------------------------->
         
    </div>
</section><!-- #post-<?php the_ID(); ?> -->

<?php
get_footer();
?>