<?php
//Registro de styles

function register_enqueue_style() {
    $theme_data = wp_get_theme();

 /* Registrando estilos */
 wp_register_style('animate', get_parent_theme_file_uri('/assets/css/animate.css'),
'null', '1.0', 'screen');
 wp_register_style('iconicbootstrap', get_parent_theme_file_uri('/assets/css/open-iconic-bootstrap.min.css'),
'null', '1.0', 'screen');
wp_register_style('googlefonts','https://fonts.googleapis.com/css?family=Muli:300,400,600,700',
'null', '1.0', 'screen');
wp_register_style('fontsapis','https://fonts.googleapis.com/css?family=Indie+Flower',
'null', '1.0', 'screen');
wp_register_style('carousel', get_parent_theme_file_uri('/assets/css/owl.carousel.min.css'),
'null', '4.1.1', 'screen');
wp_register_style('themedefault', get_parent_theme_file_uri('/assets/css/owl.theme.default.min.css'),
'null', '4.1.1', 'screen');
wp_register_style('magnificpopup', get_parent_theme_file_uri('/assets/css/magnific-popup.css'),
'null', $theme_data->get('version'), 'screen');
wp_register_style('aos', get_parent_theme_file_uri('/assets/css/aos.css'),
'null', $theme_data->get('version'), 'screen');
wp_register_style('ionicons', get_parent_theme_file_uri('/assets/css/ionicons.min.css'),
'null', $theme_data->get('version'), 'screen');
wp_register_style('bootstrapdate', get_parent_theme_file_uri('/assets/css/bootstrap-datepicker.css'),
'null', $theme_data->get('version'), 'screen');
wp_register_style('timepicker', get_parent_theme_file_uri('/assets/css/jquery.timepicker.css'),
'null', $theme_data->get('version'), 'screen');
wp_register_style('flaticon', get_parent_theme_file_uri('/assets/css/flaticon.css'),
'null', $theme_data->get('version'), 'screen');
wp_register_style('icomoon', get_parent_theme_file_uri('/assets/css/icomoon.css'),
'null', $theme_data->get('version'), 'screen');
wp_register_style('mystyle', get_parent_theme_file_uri('/assets/css/style.css'),
'null', $theme_data->get('version'), 'screen');
 /* Estilos en cola */
 wp_enqueue_style('animate');
 wp_enqueue_style('iconicbootstrap');
 wp_enqueue_style('googlefonts');
 wp_enqueue_style('fontsapis');
 wp_enqueue_style('carousel');
 wp_enqueue_style('themedefault');
 wp_enqueue_style('magnificpopup');
 wp_enqueue_style('aos');
 wp_enqueue_style('ionicons');
 wp_enqueue_style('bootstrapdate');
 wp_enqueue_style('timepicker');
 wp_enqueue_style('flaticon');
 wp_enqueue_style('icomoon');
 wp_enqueue_style('mystyle');

}
add_action( 'wp_enqueue_scripts', 'register_enqueue_style' );



//Registro de scripts

function register_enqueue_scripts() {
  $theme_data = wp_get_theme();

  /* Deregistrando scripts */
  wp_deregister_script('jquery');
  wp_deregister_script('jquery-migrate');

 /* Registrando scripts */
 wp_register_script('jquery', get_parent_theme_file_uri('/assets/js/jquery.min.js'),
 '4.1.1',null, true);
 wp_register_script('jquery-migrate', get_parent_theme_file_uri('/assets/js/jquery-migrate-3.0.1.min.js'),
null, '3.2.1',true);
wp_register_script('popper', get_parent_theme_file_uri('/assets/js/popper.min.js'),
'4.1.1',null, true);
wp_register_script('bootstrapmin', get_parent_theme_file_uri('/assets/js/bootstrap.min.js'),
'4.1.1',null, true);
wp_register_script('jqueryeasing', get_parent_theme_file_uri('/assets/js/jquery.easing.1.3.js'),
'4.1.1',null, true);
wp_register_script('waypoints', get_parent_theme_file_uri('/assets/js/jquery.waypoints.min.js'),
'4.1.1',null, true);
wp_register_script('stellar', get_parent_theme_file_uri('/assets/js/jquery.stellar.min.js'),
'4.1.1',null, true);
wp_register_script('owlcarousel', get_parent_theme_file_uri('/assets/js/owl.carousel.min.js'),
'4.1.1',null, true);
wp_register_script('magnificpopup', get_parent_theme_file_uri('/assets/js/jquery.magnific-popup.min.js'),
'4.1.1',null, true);
wp_register_script('aos', get_parent_theme_file_uri('/assets/js/aos.js'),
'4.1.1',null, true);
wp_register_script('animateNumber', get_parent_theme_file_uri('/assets/js/jquery.animateNumber.min.js'),
'4.1.1',null, true);
wp_register_script('datepicker', get_parent_theme_file_uri('/assets/js/bootstrap-datepicker.js'),
'4.1.1',null, true);
wp_register_script('timepicker', get_parent_theme_file_uri('/assets/js/jquery.timepicker.min.js'),
'4.1.1',null, true);
wp_register_script('main', get_parent_theme_file_uri('/assets/js/main.js'),
'4.1.1',null, true);

 /* Estilos en cola */
 wp_enqueue_script('jquery');
 wp_enqueue_script('jquery-migrate');
 wp_enqueue_script('popper');
 wp_enqueue_script('bootstrapmin');
 wp_enqueue_script('jqueryeasing');
 wp_enqueue_script('waypoints');
 wp_enqueue_script('stellar');
 wp_enqueue_script('owlcarousel');
 wp_enqueue_script('magnificpopup');
 wp_enqueue_script('aos');
 wp_enqueue_script('animateNumber');
 wp_enqueue_script('datepicker');
 wp_enqueue_script('timepicker');
 wp_enqueue_script('main');


}
add_action( 'wp_enqueue_scripts', 'register_enqueue_scripts' );


//logo personalizable

function config_custom_logo() {
    add_theme_support( 'custom-logo', array(
      'height'      => 100,
      'width'       => 400,
      'flex-height' => true,
      'flex-width'  => true,
      'header-text' => array( 'site-title', 'site-description' ),
    ));
  }
  add_action( 'after_setup_theme', 'config_custom_logo' );


?>
