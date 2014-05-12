<?php
/**
 * The Header for our theme.
 *
 * Displays all of the <head> section and everything up till <div id="content">
 *
 * @package Editor
 */
?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php wp_title( '|', true, 'right' ); ?></title>
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">

<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>

<div id="page" class="hfeed site container">

	<?php $editor_sidebar_color = get_option( 'editor_customizer_sidebar_color' ); ?>
	<header id="masthead" class="site-header <?php echo $editor_sidebar_color; ?>" role="banner">
		<div id="tabs" class="toggle-tabs">
			<!-- Tab navigation -->
			<ul class="toggle-bar">
			    <li class="current">
			    	<a href="#tabs-1" class="current" data-tab="tab-1"><i class="fa fa-bars"></i></a>
			    </li>

			    <!-- Show featured post tab navigation -->
			    <?php if ( get_theme_mod( 'editor_featured_cat' ) ) { ?>
					<li>
						<a href="#tab-2" data-tab="tab-2"><i class="fa fa-thumb-tack"></i></a>
					</li>
			    <?php } ?>

			    <li>
			    	<a href="#tab-3" class="folder-toggle" data-tab="tab-3"><i class="fa fa-folder"></i><i class="fa fa-folder-open"></i></a>
			    </li>
			</ul>

			<div class="site-header-inside">

				<!-- Logo, description and main navigation -->
				<div id="tab-1" class="tab-content current animated fadeIn">
					<div class="site-branding">
						<h1 class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></h1>
						<h2 class="site-description"><?php bloginfo( 'description' ); ?></h2>
					</div>

					<nav id="site-navigation" class="main-navigation" role="navigation">
						<?php wp_nav_menu( array( 'theme_location' => 'primary' ) ); ?>
					</nav><!-- #site-navigation -->
				</div>

				<!-- Feature posts (set category in Appearance -> Customize -> Theme Options) -->
				<?php if ( get_theme_mod( 'editor_featured_cat' ) ) { ?>
					<div id="tab-2" class="widget-area tab-content animated fadeIn">
						<div class="widget featured-posts-widget">
							<h2 class="widget-title"><?php echo get_cat_name( get_theme_mod( 'editor_featured_cat' ) ) ?></h2>

							<div class="featured-posts">
							    <?php
									$featured_posts_args = array(
										'posts_per_page' => 10,
										'cat'            => get_theme_mod( 'editor_featured_cat' )
									);
									$featured_posts_posts = new WP_Query( $featured_posts_args );
								?>

								<?php while( $featured_posts_posts->have_posts() ) : $featured_posts_posts->the_post() ?>
									<div class="featured-post">
										<?php if ( '' != get_the_post_thumbnail() ) { ?>
							            	<a class="featured-post-image" href="<?php the_permalink(); ?>" rel="bookmark"><?php the_post_thumbnail( 'featured-post-image' ); ?></a>
							            <?php } ?>
							            <h3><a href="<?php the_permalink(); ?>" rel="bookmark"><?php the_title(); ?></a></h3>

							            <div class="featured-post-meta">
								            <?php editor_posted_on(); ?>
								            <span class="sep"> &mdash; </span>
								            <span class="featured-post-comment"><?php comments_popup_link( __( '<i class="fa fa-comment-o"></i> 0', 'editor' ), __( '1 <i class="fa fa-comment"></i>', 'editor' ), __( '<i class="fa fa-comment-o"></i> %', 'editor' ) ); ?></span>
							            </div>
									</div>
								<?php endwhile; ?>
								<?php wp_reset_postdata(); ?>
							</div><!-- .featured-posts -->
						</div><!-- .featured-posts-widget -->
					</div><!-- .widget-area -->
				<?php } ?>

				<!-- Sidebar widgets -->
				<div id="tab-3" class="tab-content animated fadeIn">
					<?php get_sidebar(); ?>
				</div>
			</div><!-- .site-header-inside -->
		</div><!-- #tabs -->
	</header><!-- #masthead -->

	<div id="content" class="site-content">
