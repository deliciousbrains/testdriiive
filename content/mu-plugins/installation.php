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