<?php

if ( ! defined( 'WP_CLI' ) || ! WP_CLI ) {
	return;
}

class Test_Driiive_CLI_Command extends WP_CLI_Command {

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

		}

		WP_CLI::success( "Pruned demo sites." );

	}

}

WP_CLI::add_command( 'td', 'Test_Driiive_CLI_Command' );
