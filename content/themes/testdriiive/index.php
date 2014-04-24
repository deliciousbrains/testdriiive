<?php get_header(); ?>

	<section class="row">

		<div class="small-12 medium-10 medium-offset-1 large-8 large-offset-2 column">

			<form method="POST">

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
					<input id="submit" name="submit" type="submit" class="button radius" value="<?php esc_attr_e( 'Test Drive', 'testdriiive' ); ?>" />
				</fieldset>

			</form>

		</div>

	</section>

<?php get_footer(); ?>