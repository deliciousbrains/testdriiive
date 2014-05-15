<?php
/**
 * The template for displaying 404 pages (Not Found).
 *
 * @package Editor
 */

get_header(); ?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main" role="main">

			<header class="page-header">
				<h1 class="page-title"><?php _e( '404 / Page Not Found', 'editor' ); ?></h1>
			</header><!-- .page-header -->

			<article id="post-<?php the_ID(); ?>" <?php post_class( 'animated fadeIn post' ); ?>>
				<div class="entry-content">
					<p><?php _e( 'It looks like nothing was found at this location. Please use the search box and links below to locate the content you were looking for.', 'editor' ); ?></p>

					<?php get_search_form(); ?>

					<hr/>

					<?php the_widget( 'WP_Widget_Recent_Posts' ); ?>

					<hr/>

					<?php if ( editor_categorized_blog() ) : // Only show the widget if site has multiple categories. ?>
					<div class="widget widget_categories">
						<h2 class="widgettitle"><?php _e( 'Most Used Categories', 'editor' ); ?></h2>
						<ul>
						<?php
							wp_list_categories( array(
								'orderby'    => 'count',
								'order'      => 'DESC',
								'show_count' => 1,
								'title_li'   => '',
								'number'     => 10,
							) );
						?>
						</ul>
					</div><!-- .widget -->
					<?php endif; ?>

					<hr/>

					<?php
					/* translators: %1$s: smiley */
					$archive_content = '<p>' . sprintf( __( 'Try looking in the monthly archives. %1$s', 'editor' ), '' ) . '</p>';
					the_widget( 'WP_Widget_Archives', 'dropdown=1', "after_title=</h2>$archive_content" );
					?>
				</div><!-- .entry-content -->
			</article><!-- #post-## -->
		</main><!-- #main -->
	</div><!-- #primary -->

<?php get_footer(); ?>