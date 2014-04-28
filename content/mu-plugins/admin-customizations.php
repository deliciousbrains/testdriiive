<?php

/**
 * Hide the plugins screen entirely
 */
add_action( 'admin_menu', function() {
	remove_menu_page( 'plugins.php' );
}, 99 );