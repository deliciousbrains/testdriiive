<?php

/**
 * Hide the plugins screen entirely
 */
add_action( 'admin_menu', function() {
	remove_menu_page( 'plugins.php' );
}, 99 );

/**
 * Calls to action
 */
global $td_demo_site;
if ( ! empty( $td_demo_site ) ) {

	add_action( 'admin_bar_menu', function() use ( $td_demo_site ) {
		global $wp_admin_bar;

		$html = '<a href="' . esc_url( td_get_theme_purchase_link( get_option( 'stylesheet' ) ) ) . '" style="background: #2ea2cc; border-color: #0074a2; -webkit-box-shadow: inset 0 1px 0 rgba(120,200,230,.5),0 1px 0 rgba(0,0,0,.15); box-shadow: inset 0 1px 0 rgba(120,200,230,.5),0 1px 0 rgba(0,0,0,.15); color: #fff; text-decoration: none;">Purchase Theme</a>';

		$wp_admin_bar->add_node( array(
			'id'       => 'td-purchase-theme',
			'title'     => $html,
			)
		);

	}, 99 );

}