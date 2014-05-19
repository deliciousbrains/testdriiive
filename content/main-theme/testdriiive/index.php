<?php get_header(); ?>

	<section class="row">

		<form id="lead-capture" method="POST">

			<?php if ( $theme = Test_Driiive()->get_selected_theme() ) : ?>

				<fieldset class="small-12 medium-10 medium-offset-1 large-8 large-offset-2 column">
					<h2><?php printf( __( 'Test Drive %s Theme', 'testdriiive' ), $theme->get( 'Name' ) ); ?></h2>

					<?php if ( $screenshot = $theme->get_screenshot() ) : ?>
						<img src="<?php echo esc_url( $screenshot ); ?>" />
					<?php endif; ?>

				</fieldset>

				<fieldset class="small-6 medium-5 large-4 medium-offset-1 large-offset-2 column">
					<label for="first-name"><?php _e( 'First Name', 'testdriiive' ); ?>
						<input id="first-name" name="first-name" type="text" required />
					</label>
				</fieldset>

				<fieldset class="small-6 medium-5 large-4 column">
					<label for="last-name"><?php _e( 'Last Name', 'testdriiive' ); ?>
						<input id="last-name" name="last-name" type="text" required />
					</label>
				</fieldset>

				</div>

				<fieldset class="small-12 medium-10 medium-offset-1 large-8 large-offset-2 column">
					<label for="email"><?php _e( 'Email', 'testdriiive' ); ?>
						<input id="email" name="email" type="email" required />
					</label>
				</fieldset>

				<fieldset class="small-12 medium-10 medium-offset-1 large-8 large-offset-2 column">
					<input type="hidden" name="action" value="test-driiive-theme" />
					<input type="hidden" id="in-iframe" name="in-iframe" value="0" />
					<input id="submit" name="submit" type="submit" class="button radius" value="<?php echo esc_attr( sprintf( __( 'Test Drive %s', 'testdriiive' ), $theme->get( 'Name' ) ) ); ?>" <?php if ( empty( $theme ) ) : ?> disabled <?php endif; ?> />
				</fieldset>

				<script>
					/**
					 * Support for iframing the form
					 */
					if ( window.location.href != window.parent.location.href ) {

						jQuery(document).ready(function($){

							$('#lead-capture #in-iframe').val('1');

							$('#lead-capture').on('submit', function( e ){
								e.preventDefault();

								var data = $(this).serializeArray();
								$.post( window.location.href, data, function( response ) {
									response = $.parseJSON( response );
									if ( 'success' == response.status ) {
										window.parent.location.href = response.message;
									} else {
										alert( response.message );
									}
								} );

							});

						});
					}

				</script>

			<?php else : ?>
				<div class="alert-box warning small-12 medium-10 medium-offset-1 large-8 large-offset-2 column">
						<p><?php _e( 'Invalid theme specified.', 'testdriiive' ); ?></p>
				</div>
			<?php endif; ?>

		</form>

	</section>

<?php get_footer(); ?>