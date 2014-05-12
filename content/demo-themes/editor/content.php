<?php
/**
 * @package Editor
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class( 'post animated fadeIn' ); ?>>
	<!-- Grab the featured image -->
	<?php if ( '' != get_the_post_thumbnail() ) { ?>
		<a class="featured-image" href="<?php the_permalink(); ?>" title="<?php the_title_attribute(); ?>"><?php the_post_thumbnail( 'large-image' ); ?></a>
	<?php } ?>

	<header class="entry-header">
		<?php if ( 'post' == get_post_type() ) : ?>
		<div class="entry-date">
			<?php editor_posted_on(); ?>
		</div><!-- .entry-meta -->
		<?php endif; ?>

		<h1 class="entry-title"><a href="<?php the_permalink(); ?>" rel="bookmark"><?php the_title(); ?></a></h1>
	</header><!-- .entry-header -->

	<div class="entry-meta">
		<?php if ( $post->post_excerpt ) { ?>
			<div class="entry-excerpt">
				<?php the_excerpt(); ?>
			</div>
		<?php } ?>

		<ul class="meta-list">
			<?php if ( has_category() ) { ?>
				<li class="meta-cat"><?php the_category( ', ' ); ?></li>
			<?php } ?>
			<?php $posttags = get_the_tags(); if ( $posttags ) { ?>
				<li class="meta-tag"><?php the_tags( '' ); ?></li>
			<?php } ?>
			<?php if ( ! post_password_required() && ( comments_open() || '0' != get_comments_number() ) ) : ?>
			<li class="meta-comment">
				<span class="comments-link"><?php comments_popup_link( __( 'Leave a comment', 'editor' ), __( '1 Comment', 'editor' ), __( '% Comments', 'editor' ) ); ?></span>
			</li>
			<?php endif; ?>
			<?php edit_post_link( __( 'Edit', 'editor' ), '<li class="meta-edit">', '</li>' ); ?>
		</ul>
	</div>

	<div class="entry-content">
		<?php the_content( __( 'Continue reading &rarr;', 'editor' ) ); ?>
		<?php
			wp_link_pages( array(
				'before' => '<div class="page-links">' . __( 'Pages:', 'editor' ),
				'after'  => '</div>',
			) );
		?>
	</div><!-- .entry-content -->

</article><!-- #post-## -->
