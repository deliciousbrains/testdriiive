<?php
/**
 * Load up the Mandrill wp_mail() drop-in
 */

require_once dirname( __FILE__ ) . '/mandrill-wp-mail/mandrill-wp-mail.php';

add_filter( 'wp_mail_from', function() {
	return 'vroom@testdriiive.com';
});

add_filter( 'wp_mail_from_name', function() {
	return 'Mike McAlister';
});

/**
 * Don't send the default new blog notification
 */
function wp_new_blog_notification() {}