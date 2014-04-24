<?php

class Test_Driiive {

	private static $instance;

	public static function get_instance() {

		if ( ! isset( self::$instance ) ) {
			self::$instance = new Test_Driiive;
			self::$instance->load();
		}
		return self::$instance;
	}

	/**
	 * Load any components of the theme
	 */
	private function load() {

		$this->setup_actions();

		if ( ! is_admin() ) {
			show_admin_bar( false );
		}

	}

	/**
	 * Set up WordPress actions for the theme
	 */
	private function setup_actions() {

		add_action( 'wp_enqueue_scripts', array( $this, 'action_wp_enqueue_scripts' ) );

	}

	/**
	 * Enqueue scripts and styles
	 */
	public function action_wp_enqueue_scripts() {

		// Foundation
		wp_enqueue_script( 'foundation', get_template_directory_uri() . '/lib/foundation/foundation.min.js', array( 'jquery' ), '5.2.2' );
		wp_enqueue_style( 'foundation', get_template_directory_uri() . '/lib/foundation/foundation.min.css', false, '5.2.2' );

		wp_enqueue_style( 'test-driiive', get_stylesheet_uri() );

	}

	/**
	 * Get the selected theme the user wants to sign up for
	 *
	 * @return WP_Theme|false
	 */
	public function get_selected_theme() {

		if ( 0 !== strpos( $_SERVER['REQUEST_URI'], '/theme/' ) ) {
			return false;
		}

		$theme_slug = sanitize_key( str_replace( '/theme/', '', $_SERVER['REQUEST_URI'] ) );

		$theme_obj = wp_get_theme( $theme_slug );
		if ( $theme_obj->exists() ) {
			return $theme_obj;
		} else {
			return false;
		}

	}

}

/**
 * Load the theme
 */
function Test_Driiive() {
	return Test_Driiive::get_instance();
}
add_action( 'after_setup_theme', 'Test_Driiive' );
