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
if ( empty( $db_name ) ) {
	$db_name = 'testdriiive';
	$wp_home = 'testdriiive.com';
}

global $td_demo_site;

if ( ! empty( $_SERVER['REQUEST_URI'] ) ) {

	preg_match( "#/demo/([a-z0-9_\-]+)#", $_SERVER['REQUEST_URI'], $matches );
	if ( ! empty( $matches[1] ) ) {
		$td_demo_site = $matches[1];
		$db_name .= '_' . $td_demo_site;
		$wp_home .= '/demo/' . $td_demo_site . '/';
	} else {
		$td_demo_site = false;
	}
}

/**
 *	Production settings.
 */

$wp_constant_defaults = array(
	'DB_NAME'            => $db_name,
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
	'WP_SITEURL'         => 'http://testdriiive.com/wp',
	'WP_HOME'            => $wp_home,
	);

foreach( $wp_constant_defaults as $key => $value ) {
	if ( ! defined( $key ) ) {
		define( $key, $value );
	}
}

if ( isset( $_SERVER['WP_CLI_PHP_USED'] )
	&& ! isset( $_SERVER['HTTP_HOST'] )
	&& defined( 'WP_HOME' ) ) {
	$_SERVER['HTTP_HOST'] = parse_url( WP_HOME, PHP_URL_HOST );
}

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
