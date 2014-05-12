<?php
/**
 * The template for displaying search results.
 *
 * @package Editor
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class( 'animated fadeIn post' ); ?>>
	<!-- Grab the featured image -->
	<?php if ( '' != get_the_post_thumbnail() ) { ?>
		<a class="featured-image" href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><?php the_post_thumbnail( 'large-image' ); ?></a>
	<?php } ?>

	<header class="entry-header">
		<div class="entry-date">
			<?php editor_posted_on(); ?>
		</div><!-- .entry-meta -->

		<h1 class="entry-title"><a href="<?php the_permalink(); ?>" rel="bookmark"><?php the_title(); ?></a></h1>
	</header><!-- .entry-header -->

	<div class="entry-content">
		<?php the_excerpt( __( 'Continue reading &rarr;', 'editor' ) ); ?>
	</div><!-- .entry-content -->

</article><!-- #post-## -->
