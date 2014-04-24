<?php get_header(); ?>

	<section class="row">

		<div class="small-12 medium-10 medium-offset-1 large-8 large-offset-2 column">

			<form id="lead-capture" method="POST">

				<?php if ( $theme = Test_Driiive()->get_selected_theme() ) : ?>

					<fieldset>
						<h2><?php printf( __( 'You are one step away from test driving %s', 'testdriiive' ), $theme->get( 'Name' ) ); ?></h2>

						<?php if ( $screenshot = $theme->get_screenshot() ) : ?>
							<img src="<?php echo esc_url( $screenshot ); ?>" />
						<?php endif; ?>

					</fieldset>

					<fieldset>
						<label for="name"><?php _e( 'Name', 'testdriiive' ); ?>
							<input id="name" name="name" type="text" required />
						</label>
					</fieldset>

					<fieldset>
						<label for="email"><?php _e( 'Email', 'testdriiive' ); ?>
							<input id="email" name="email" type="email" required />
						</label>
					</fieldset>

					<fieldset>
						<input type="hidden" name="action" value="test-driiive-theme" />
						<input id="submit" name="submit" type="submit" class="button radius" value="<?php echo esc_attr( sprintf( __( 'Test Drive %s', 'testdriiive' ), $theme->get( 'Name' ) ) ); ?>" <?php if ( empty( $theme ) ) : ?> disabled <?php endif; ?> />
					</fieldset>

				<?php else : ?>
					<div class="alert-box warning">
 						<p><?php _e( 'Invalid theme specified.', 'testdriiive' ); ?></p>
					</div>
				<?php endif; ?>

			</form>

		</div>

	</section>

<?php get_footer(); ?>