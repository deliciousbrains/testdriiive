<?php

register_theme_directory( ABSPATH . 'wp-content/themes' );

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

