<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'services' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

//define( 'WP_DEBUG', 'true' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'Wv@N.OE#F$4ID0U^{O_yyDo{Jl,iMR @8MMdc8D_a;B/:B@AqD~c]cV=fx4XpNTl' );
define( 'SECURE_AUTH_KEY',  'H%`{Q`?%;z2AF1b*0$-y hI8Y>>Zolv9)hB_>O-(k*T_!Y4&t3`?;`q#<t`QYW-7' );
define( 'LOGGED_IN_KEY',    '_2r/4BhzjnuXU0eISD?+bqdvV*hfpNP,|[x!3]f5C-PY[G!JhaqGLC^MH/?RO9vu' );
define( 'NONCE_KEY',        'wO-Dl+cBU^K:M<~s+uB5$9f-y5~TptLz%Q~vG_3z*yZkFQEdr&r7BIy&*BESwxnF' );
define( 'AUTH_SALT',        'nf o)F^r2tN}g&M(^Ikr%,1dn<q1>2h1:p*Rc5#`P7S9(2`)?8A4v%*F,&i>@fl&' );
define( 'SECURE_AUTH_SALT', ':dPz7~JP#_U{y|-$&U9v(z05S,gy+5j]?F@njD{O|BCeQ,Ek4.@)fZ`%G<sKXmg>' );
define( 'LOGGED_IN_SALT',   '%JHj/o2 cvhOK_mkt>=v1UtecvA5KlH<u!CqTMso=l)CRc{f?]:usk`?RX66zWTM' );
define( 'NONCE_SALT',       'h5@HQKBrRasKL@yqj_~7K:5z|Iytw&A#3{+mysZbn8HNzd~Rq57ve>f};28TTgRm' );


define('JWT_AUTH_SECRET_KEY', '+aa6B%X%|Oze-^)I$[j4am+*G^+abOfD;:m}ezx-!iL/ p5PUb6g5hRPy^rF3E%C');
define('JWT_AUTH_CORS_ENABLE', true);

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
