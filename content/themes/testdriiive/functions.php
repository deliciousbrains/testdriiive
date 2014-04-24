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

}

/**
 * Load the theme
 */
function Test_Driiive() {
	return Test_Driiive::get_instance();
}
add_action( 'after_setup_theme', 'Test_Driiive' );
