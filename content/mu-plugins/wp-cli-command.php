<?php

if ( ! defined( 'WP_CLI' ) || ! WP_CLI ) {
	return;
}

class Test_Driiive_CLI_Command extends WP_CLI_Command {

	/**
	 * Send email follow-ups to users.
	 *
	 * <email-type>
	 * : Type of the email to send.
	 *
	 * --age=<age>
	 * : User age to send the email. Example "2 days".
	 *
	 * @subcommand send-follow-up-emails
	 */
	public function send_follow_up_emails( $args, $assoc_args ) {

		list( $email_type ) = $args;

		/**
		 * Confirm valid email type
		 */
		$valid_types = array(
			'one-day-follow-up',
			);
		if ( ! in_array( $email_type, $valid_types ) ) {
			WP_CLI::error( "Invalid email type." );
		}
		$meta_key = 'email_sent_' . $email_type;

		/**
		 * Get all users registered in the age range that haven't been emailed
		 */
		$age = date( 'Y-m-d H:i:s', strtotime( '-' . $assoc_args['age'] ) );
		$filter_to_age = function( &$user_query ) use ( $age ) {
			global $wpdb;
			$user_query->query_where .= " AND {$wpdb->users}.user_registered <='{$age}'";
		};
		add_action( 'pre_user_query', $filter_to_age );
		$users = get_users( array(
			'meta_key'      => $meta_key,
			'meta_compare'  => 'NOT EXISTS',
			) );
		remove_action( 'pre_user_query', $filter_to_age );

		$user_count = count( $users );
		if ( $user_count ) {
			WP_CLI::success( "Found {$user_count} users to send emails to." );
		} else {
			WP_CLI::error( "Didn't find any users to send emails to." );
		}

		/**
		 * Generate and send emails for each user
		 */
		foreach( $users as $user ) {

			$signup_theme = get_user_meta( $user->ID, 'signup_theme', true );
			$theme = wp_get_theme( $signup_theme );
			if ( ! $signup_theme || ! $theme->exists() ) {
				WP_CLI::warning( "User {$user->ID} ({$user->user_email}) signed up with a theme that doesn't exist." );
				update_user_meta( $user->ID, $meta_key, '1' );
				continue;
			}

			$vars = array(
				'user'           => $user,
				'theme'          => $theme,
				'demo_site_url'  => Test_Driiive()->get_user_demo_site_url( $user ),
				'purchase_url'   => td_get_theme_purchase_link( $theme->get_stylesheet() ),
				);
			$message = Test_Driiive()->get_template( 'emails/one-day-follow-up', $vars );
			$subject = sprintf( 'How was your test drive of %s?', $theme->get( 'Name' ) );
			$ret = wp_mail( $user->user_email, $subject, $message );
			if ( $ret ) {
				WP_CLI::line( "Sent follow-up email to {$user->ID} ({$user->user_email}) who signed up to try {$theme->get('Name')}." );
			} else {
				WP_CLI::warning( "Error sending follow-up email to {$user->ID} ({$user->user_email}) who signed up to try {$theme->get('Name')}." );
			}

			update_user_meta( $user->ID, $meta_key, '1' );

		}

		WP_CLI::success( "Emails sent." );

	}

	/**
	 * Prune demo sites.
	 *
	 * --age=<age>
	 * : Age in some human-readable format. Example "3 days".
	 *
	 * @subcommand prune-demo-sites
	 */
	public function prune_demo_sites( $args, $assoc_args ) {
		global $wpdb;

		$users = get_users();

		foreach( $users as $user ) {

			if ( strtotime( $user->user_registered ) > strtotime( '-' . $assoc_args['age'] ) ) {
				continue;
			}

			$results = $wpdb->query( "SHOW TABLES LIKE 'wp_{$user->user_login}_%'" );
			$user_tables = array();
			foreach( $wpdb->last_result as $table ) {
				$user_table = (array)$table;
				$user_tables[] = array_shift( $user_table );
			}

			if ( ! empty( $user_tables ) ) {
				$wpdb->query( "DROP TABLE IF EXISTS " . implode( ', ', $user_tables ) );
				WP_CLI::line( "Deleted demo site tables for {$user->user_login}." );
			}

			$uploads_dir = ABSPATH . 'content/uploads/' . $user->user_login;
			if ( is_dir( $uploads_dir ) ) {
				shell_exec( escapeshellcmd( "rm -rf {$uploads_dir}" ) );
				WP_CLI::line( "Deleted uploads directory for {$user->user_login}." );
			}

		}

		WP_CLI::success( "Pruned demo sites." );

	}

}

WP_CLI::add_command( 'td', 'Test_Driiive_CLI_Command' );
