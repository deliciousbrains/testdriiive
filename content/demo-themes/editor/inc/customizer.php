<?php
/**
 * editor Theme Customizer
 *
 * @package Editor
 */

add_action( 'customize_register', 'editor_customizer_register' );

if ( ! class_exists( 'WP_Customize_Control' ) )
    return NULL;

/**
 * Category dropdown class
 */
class WP_Customize_Category_Control extends WP_Customize_Control {
    private $cats = false;

    public function __construct( $manager, $id, $args = array(), $options = array() ) {
        $this->cats = get_categories( $options );

        parent::__construct( $manager, $id, $args );
    }

    /**
     * Render the content of the category dropdown
     *
     * @return HTML
     */
    public function render_content() {

        if( !empty( $this->cats ) ) {
        ?>

            <label>
                <span class="customize-control-title"><?php echo esc_html( $this->label ); ?></span>
                <select <?php $this->link(); ?>>
                    <?php
                        // Add an empty default option
                        printf( '<option value=""> </option>' );

                        foreach ( $this->cats as $cat ) {
                            printf( '<option value="%s" %s>%s</option>', $cat->term_id, selected( $this->value(), $cat->term_id, false ), $cat->name );
                        }
                    ?>
            </select>
            </label>

        <?php }
    }
}

/**
 * Sanitize select option
 */
function editor_sanitize_scheme_select( $input ) {
    $valid = array(
        'dark'  => __( 'Dark', 'editor' ),
        'light' => __( 'Light', 'editor' ),
    );

    if ( array_key_exists( $input, $valid ) ) {
        return $input;
    } else {
        return '';
    }
}

/**
 * @param WP_Customize_Manager $wp_customize
 */
function editor_customizer_register( $wp_customize ) {

	$wp_customize->add_section( 'editor_customizer_basic', array(
		'title'    => __( 'Theme Options', 'editor' ),
		'priority' => 1
	) );

	// Logo Image Upload
	$wp_customize->add_setting( 'editor_customizer_logo', array() );

	$wp_customize->add_control( new WP_Customize_Image_Control( $wp_customize, 'editor_customizer_logo', array(
		'label'    => __( 'Logo Upload', 'editor' ),
		'section'  => 'editor_customizer_basic',
		'settings' => 'editor_customizer_logo'
	) ) );

    // Featured Category Dropdown
    $wp_customize->add_setting( 'editor_featured_cat', array(
        'default' => '',
    ) );

    $wp_customize->add_control( new WP_Customize_Category_Control( $wp_customize, 'editor_featured_cat', array(
        'label'    => __( 'Sidebar Featured Post Category', 'editor' ),
        'section'  => 'editor_customizer_basic',
        'settings' => 'editor_featured_cat'
    ) ) );

    // Color Scheme
    $wp_customize->add_setting( 'editor_customizer_sidebar_color', array(
        'default'           => 'dark',
        'capability'        => 'edit_theme_options',
        'type'              => 'option',
        'sanitize_callback' => 'editor_sanitize_scheme_select'
    ));

    $wp_customize->add_control( 'editor_customizer_sidebar_color_select', array(
        'settings' => 'editor_customizer_sidebar_color',
        'label'    => __( 'Sidebar Color', 'editor' ),
        'section'  => 'editor_customizer_basic',
        'type'     => 'select',
        'choices'  => array(
            'dark'     => __( 'Dark', 'editor' ),
            'light'    => __( 'Light', 'editor' ),
        ),
    ) );

}

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function editor_customize_register( $wp_customize ) {
	$wp_customize->get_setting( 'blogname' )->transport         = 'postMessage';
	$wp_customize->get_setting( 'blogdescription' )->transport  = 'postMessage';
	$wp_customize->get_setting( 'header_textcolor' )->transport = 'postMessage';
}
add_action( 'customize_register', 'editor_customize_register' );

/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 */
function editor_customize_preview_js() {
	wp_enqueue_script( 'editor_customizer', get_template_directory_uri() . '/js/customizer.js', array( 'customize-preview' ), '20130508', true );
}
add_action( 'customize_preview_init', 'editor_customize_preview_js' );
