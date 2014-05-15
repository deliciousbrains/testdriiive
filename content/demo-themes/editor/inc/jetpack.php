<?php
/**
 * Jetpack Compatibility File
 * See: http://jetpack.me/
 *
 * @package Editor
 */

/**
 * Add theme support for Infinite Scroll.
 * See: http://jetpack.me/support/infinite-scroll/
 */
function editor_jetpack_setup() {
	add_theme_support( 'infinite-scroll', array(
		'container' => 'main',
		'footer'    => 'page',
		'render'    => 'editor_render_infinite_posts',
		'type'      => 'click'
	) );
}
add_action( 'after_setup_theme', 'editor_jetpack_setup' );

/* Render infinite posts by using template parts */
function editor_render_infinite_posts() {
	while ( have_posts() ) {
		the_post();

		get_template_part( 'content', get_post_format() );
	}
}