<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'password');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'wD9?:gh-AeBJRo6qZk@|CV+jeZNHKOa-S^rC^XI-ha@?,irn(BdpIP+Z@f@Pt*?p');
define('SECURE_AUTH_KEY',  'K94 +].,a91#6J]Q_ *]dM!V25fgG)W~#7gIZ2?@Qug-N1|}-`O+Mh~tj}Au#e!m');
define('LOGGED_IN_KEY',    '$hk(tT^(F4VU3G6Eytun^sLe}fF}s;O={qdW$b<eITo7wv|c|~O&)}`zzv8PdEM!');
define('NONCE_KEY',        '2Pt=-6_W.oew!&wUsmL`y)bgb_*)Rd8&%yQnip1 DX94WQ>%MF(sr!XOJ>(K><OK');
define('AUTH_SALT',        'P5QnvY_t&UlAf4`Igv4nezJY[j,O%DoiUHTW:^YpC0JkA4ir}lG<?gR8X~wW1iLX');
define('SECURE_AUTH_SALT', 'p_=LS_R:;Sa0>b]5{rS)v4%I?nbl4Le~cbB?7i(A Sdnk,*+SR^i}`!y>F5[,Vyu');
define('LOGGED_IN_SALT',   'x3@RT,gC,z&mh&=u(js_HrMpHBhDDA<SRW&b(W136I[UigV`5Lt`V4|jE-xp!#^l');
define('NONCE_SALT',       '^gIsCvHRi].Uqvp70vxtNH ~_UU`FN=T9&6?,OXe-!9J+#R~yp*+l2#-uF_RSHGZ');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

define('WP_SITEURL', 'http://' . $_SERVER['HTTP_HOST']);
define('WP_HOME', 'http://' . $_SERVER['HTTP_HOST']);

define('FS_METHOD','direct');