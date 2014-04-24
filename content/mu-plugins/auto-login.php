<?php

add_action( 'init', function() {

	if ( empty( $_GET['auto-login' ] ) ) {
		return;
	}

	if ( false == ( $user = get_user_by( 'login', sanitize_user( $_GET['auto-login'] ) ) ) ) {
		wp_die( __( 'Invalid user.' ) );
	}

	if ( empty( $_GET['secret'] ) || td_get_auto_login_secret( $user->user_login ) !== $_GET['secret'] ) {
		wp_die( __( 'Invalid secret' ) );
	}

	wp_set_auth_cookie( $user->ID, true );

	wp_safe_redirect( admin_url( 'customize.php' ) );
	exit;
});

function td_get_auto_login_secret( $user_login ) {

	$bits = array(
		constant( 'AUTH_KEY' ),
		constant( 'SECURE_AUTH_KEY' ),
		constant( 'LOGGED_IN_KEY' ),
		constant( 'NONCE_KEY' ),
		constant( 'AUTH_SALT' ),
		constant( 'SECURE_AUTH_SALT' ),
		constant( 'LOGGED_IN_SALT' ),
		constant( 'NONCE_SALT' ),
		$user_login,
		);

	return md5( serialize( $bits ) );
}