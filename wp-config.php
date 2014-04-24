<?php

/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

/**
 * Don't edit this file directly, instead, create a wp-config-env.php file and add your database
 * settings and defines in there. This file contains the production settings
 */
if ( file_exists( dirname( __FILE__ ) . '/wp-config-env.php' ) ) {
	include( dirname( __FILE__ ) . '/wp-config-env.php' );
}

/**
 * Magic db-switching action
 */
global $td_demo_site, $table_prefix;

if ( ! empty( $_SERVER['HTTP_HOST'] ) ) {

	$parts = explode( '.', $_SERVER['HTTP_HOST'] );
	if ( count( $parts ) > 2 ) {
		$key = array_shift( $parts );
		$key = strtolower( $key );
		$td_demo_site = preg_replace( '/[^a-z0-9_\-]/', '', $key );
	} else {
		$td_demo_site = false;
	}

}

if ( ! empty( $td_demo_site ) ) {
	$table_prefix = 'wp_' . $td_demo_site . '_';
} else {
	$table_prefix = 'wp_';
}


if ( isset( $_SERVER['WP_CLI_PHP_USED'] )
	&& ! isset( $_SERVER['HTTP_HOST'] ) ) {
	$_SERVER['HTTP_HOST'] = defined( 'LOCAL_DEV') && LOCAL_DEV ? 'testdriiive.dev' : 'testdriiive.com';
}


/**
 *	Production settings.
 */

$wp_constant_defaults = array(
	'DB_NAME'            => '',
	'DB_USER'            => '',
	'DB_PASSWORD'        => '',
	'DB_HOST'            => 'localhost',
	'DB_CHARSET'         => 'utf8',
	'DB_COLLATE'         => '',
	'AUTH_KEY'           => '',
	'SECURE_AUTH_KEY'    => '',
	'LOGGED_IN_KEY'      => '',
	'NONCE_KEY'          => '',
	'AUTH_SALT'          => '',
	'SECURE_AUTH_SALT'   => '',
	'LOGGED_IN_SALT'     => '',
	'NONCE_SALT'         => '',
	'WP_SITEURL'         => 'http://' . $_SERVER['HTTP_HOST'] . '/wp',
	'WP_HOME'            => 'http://' . $_SERVER['HTTP_HOST'],
	);

foreach( $wp_constant_defaults as $key => $value ) {
	if ( ! defined( $key ) ) {
		define( $key, $value );
	}
}

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define( 'WPLANG', '' );

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
if ( defined( 'LOCAL_DEV' ) && LOCAL_DEV ) {

	if ( ! defined( 'WP_DEBUG' ) )
		define( 'WP_DEBUG', true );

	if ( ! defined( 'SAVEQUERIES' ) )
		define( 'SAVEQUERIES', true );

} else {

	define( 'WP_DEBUG', false );

}

// Define path & url for Content
define( 'WP_BASE_URL', parse_url( WP_HOME, PHP_URL_SCHEME ) . '://' . parse_url( WP_HOME, PHP_URL_HOST ) );
define( 'WP_CONTENT_DIR', dirname( __FILE__ ) . '/content' );
define( 'WP_CONTENT_URL', WP_BASE_URL . '/content' );

// Set path to MU Plugins.
define( 'WPMU_PLUGIN_DIR', dirname( __FILE__ ) . '/content/mu-plugins' );
define( 'WPMU_PLUGIN_URL', WP_BASE_URL . '/content/mu-plugins' );

// Set default theme.
define( 'WP_DEFAULT_THEME', 'testdriiive' );

// Prevent editing of files through the admin.
define( 'DISALLOW_FILE_EDIT', true );

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) )
	define( 'ABSPATH', dirname(__FILE__) . '/' );

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
