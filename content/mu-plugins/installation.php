<?php

/**
 * Don't permit the normal browser-based installation process
 */
global $td_demo_site, $td_main_site;
if ( defined( 'WP_INSTALLING' ) 
	&& ! empty( $td_demo_site )
	&& ! is_blog_installed()
	&& ( ! defined( 'WP_CLI' ) || ! WP_CLI ) ) {
	header( 'Location: http://' . $td_main_site );
	exit;
}

if ( ! empty( $td_demo_site ) ) {
	add_filter( 'pre_option_upload_path', function() use ( $td_demo_site ) {
		return '../content/uploads/' . $td_demo_site;
	});
	add_filter( 'upload_dir', function( $parts ) {
		$parts = str_replace( '/wp/../content/', '/content/', $parts );
		// Prevent later errors
		if ( empty( $parts['error'] ) ) {
			$parts['error'] = false;
		}
		return $parts;
	});
}
