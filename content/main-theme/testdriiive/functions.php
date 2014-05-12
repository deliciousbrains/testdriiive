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
		add_action( 'template_redirect', array( $this, 'action_template_redirect_handle_form_submission' ) );

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
	 * Handle the lead capture form submission
	 */
	public function action_template_redirect_handle_form_submission() {

		if ( false == ( $theme = $this->get_selected_theme() ) ) {
			return;
		}

		if ( empty( $_POST['action'] ) || 'test-driiive-theme' !== $_POST['action'] ) {
			return;
		}

		if ( empty( $_POST['first-name'] ) || empty( $_POST['last-name'] ) || empty( $_POST['email'] ) ) {
			$error_message = __( 'Both name and email address are required details.', 'testdriiive' );
			if ( ! empty( $_POST['in-iframe'] ) ) {
				echo json_encode( array( 'status' => 'error', 'message' => $error_message ) );
			} else {
				wp_die( $error_message );
			}
			exit;
		}

		if ( $user = get_user_by( 'email', sanitize_email( $_POST['email'] ) ) ) {

			$vars = array(
				'user'            => $user,
				'theme'           => $theme,
				'auto_login_url'  => $this->get_user_auto_login_url( $user ),
				);
			$message = Test_Driiive()->get_template( 'emails/returning-user', $vars );
			$subject = sprintf( '%s theme test drive', $theme->get( 'Name' ) );
			wp_mail( $user->user_email, $subject, $message );

			$demo_site_url = $this->get_user_demo_site_url( $user );
			$base_cmd = "wp --url={$demo_site_url}";
			shell_exec( escapeshellcmd( "{$base_cmd} theme activate {$theme->get_stylesheet()}" ) );

			$error_message = __( "Welcome back, I see that you already have a test drive account! I've just sent you an email with a special link to securely access your test drive site.", 'testdriiive' );
			if ( ! empty( $_POST['in-iframe'] ) ) {
				echo json_encode( array( 'status' => 'error', 'message' => $error_message ) );
			} else {
				wp_die( $error_message );
			}

			exit;
		}

		/**
		 * Create a user account
		 */
		$first_name = sanitize_text_field( $_POST['first-name'] );
		$last_name = sanitize_text_field( $_POST['last-name'] );
		$display_name = $first_name . ' ' . $last_name;
		$email = sanitize_email( $_POST['email'] );
		$user_login = md5( $display_name . $email . time() );
		$password = wp_generate_password();
		$user_id = wp_insert_user( array(
			'user_login'    => $user_login,
			'user_email'    => $email,
			'display_name'  => $display_name,
			'first_name'    => $first_name,
			'last_name'     => $last_name,
			'user_pass'     => $password
		) );
		if ( is_wp_error( $user_id ) ) {
			$error_message = $user_id->get_error_message();
			if ( ! empty( $_POST['in-iframe'] ) ) {
				echo json_encode( array( 'status' => 'error', 'message' => $error_message ) );
			} else {
				wp_die( $error_message );
			}
			exit;
		}
		$user = get_user_by( 'id', $user_id );

		/**
		 * Capture other useful details
		 */
		update_user_meta( $user_id, 'signup_theme', $theme->get_stylesheet() );

		/**
		 * Configure their demo site
		 */
		$demo_site_url = $this->get_user_demo_site_url( $user_id );
		$base_cmd = "wp --url={$demo_site_url}";
		shell_exec( escapeshellcmd( "{$base_cmd} core install --title='Just another Test Driiive Site' --admin_user={$user_login} --admin_email={$email} --admin_password={$password}" ) );
		shell_exec( escapeshellcmd( "{$base_cmd} site empty --yes" ) );
		shell_exec( escapeshellcmd( "{$base_cmd} theme activate {$theme->get_stylesheet()}" ) );
		shell_exec( escapeshellcmd( "{$base_cmd} plugin activate wordpress-importer" ) );
		shell_exec( escapeshellcmd( "{$base_cmd} user update {$user_login} --display_name='{$display_name}' --first_name='{$first_name}' --last_name='{$last_name}'" ) );

		/**
		 * Send an immediate follow-up
		 */
		$vars = array(
			'user'           => $user,
			'theme'          => $theme,
			'demo_site_url'  => $demo_site_url,
			);
		$message = Test_Driiive()->get_template( 'emails/immediate-follow-up', $vars );
		$subject = sprintf( '%s theme test drive', $theme->get( 'Name' ) );
		wp_mail( $user->user_email, $subject, $message );

		$auto_login_url = $this->get_user_auto_login_url( $user );
		if ( ! empty( $_POST['in-iframe'] ) ) {
			echo json_encode( array( 'status' => 'success', 'message' => $auto_login_url ) );
		} else {
			wp_redirect( $auto_login_url );
		}
		exit;
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

	/**
	 * Get the demo site URL for a given user
	 *
	 * @param mixed $user
	 * @return string
	 */
	public function get_user_demo_site_url( $user ) {

		if ( is_numeric( $user ) ) {
			$user = get_user_by( 'id', $user );
		}

		$home_domain = parse_url( home_url(), PHP_URL_HOST );
		return parse_url( home_url(), PHP_URL_SCHEME ) . '://' . $user->user_login . '.' . $home_domain;
	}

	/**
	 * Get the auto-login URL for a user
	 *
	 * @param string $user_login
	 * @return string
	 */
	public function get_user_auto_login_url( $user ) {
		return add_query_arg( array(
				'auto-login'     => $user->user_login,
				'secret'         => td_get_auto_login_secret( $user->user_login ),
				), $this->get_user_demo_site_url( $user ) );
	}

	/**
	 * Get a rendered template
	 *
	 * @param string $template_name
	 * @param array $vars
	 * @return string
	 */
	public function get_template( $template_name, $vars = array() ) {

		$full_path = get_stylesheet_directory() . '/parts/' . $template_name . '.tpl.php';
		if ( ! file_exists( $full_path ) ) {
			return '';
		}

		extract( $vars );
		ob_start();
		include $full_path;
		return wpautop( ob_get_clean() );
	}

}

/**
 * Load the theme
 */
function Test_Driiive() {
	return Test_Driiive::get_instance();
}
add_action( 'after_setup_theme', 'Test_Driiive' );
