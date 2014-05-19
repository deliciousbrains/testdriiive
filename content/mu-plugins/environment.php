<?php

/**
 * Always discourage search engines
 */
add_filter( 'pre_option_blog_public', '__return_zero' );
