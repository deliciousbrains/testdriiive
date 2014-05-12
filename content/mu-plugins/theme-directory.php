<?php

global $td_demo_site;

register_theme_directory( WP_CONTENT_DIR . '/demo-themes' );
if ( empty( $td_demo_site ) ) {

	register_theme_directory( WP_CONTENT_DIR . '/main-theme' );

	$main_site_theme = function() {
		return 'testdriiive';
	};
	add_filter( 'pre_option_stylesheet', $main_site_theme );
	add_filter( 'pre_option_template', $main_site_theme );
}

/**
 * Fix a bad theme root for demo sites
 *
 * Can end up as /srv/www/testdriiive.dev/./wp/wp-content/themes on initial install
 */
$fix_bad_theme_root = function( $value ) {

	$value = str_replace( '/./wp/', '/wp/', $value );
	return $value;
};
add_filter( 'option_stylesheet_root', $fix_bad_theme_root );
add_filter( 'option_template_root', $fix_bad_theme_root );

/**
 * Get the purchase link for a given theme
 */
function td_get_theme_purchase_link( $stylesheet ) {
	return 'https://array.is/themes/' . $stylesheet . '/';
}