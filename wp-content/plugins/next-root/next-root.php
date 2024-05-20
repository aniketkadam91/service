<?php
/**
 * Plugin Name: Next Rest Roots 
 * Description: Plugin take care of creating custom roots for rest api
 * Author: Aniket Kadam
 * Version: 1.0
 */

// Register Rest routes
 add_action( 'rest_api_init', function () {

  register_rest_route( 'nextroot/v1', '/register/', array(
    'methods' => 'POST',
    'callback' => 'next_create_user',
  ) );

} );


function next_create_user(WP_REST_Request $request){

  $userdata = array(
    'user_login' => $request -> get_param('username'),
    'user_pass' => $request->get_param('password'),
    'user_email' => $request->get_param('email'),
    'first_name' => $request->get_param('first_name'),
    'last_name' => $request->get_param('last_name'),
  );
  $message = wp_insert_user( $userdata );

  return  $message;

}