<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'local' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', 'root' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

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
define( 'AUTH_KEY',          'dufQF9,z%&w,3i!=F,A2J{8Lq:Vqti)olvaNYB^98)RGH:x-#Caw1@#1noh&F&;!' );
define( 'SECURE_AUTH_KEY',   'a5J4>P,i:lh(wvK._U*2SNaN>W!u<hDfo8bJk HKnU2+$)Ady;Y&.tttjCTaDa>-' );
define( 'LOGGED_IN_KEY',     'tAdF_?n{{TO%V1c/3}|rXv1hYJch5K4`zA!7 5j4CT)C%^ASkBz@U^G1= 7w`?n8' );
define( 'NONCE_KEY',         '}$xPp_8_e#~bHsH9>/_x4GxZ#?pJtWKk@XKlb?a`2ev@lAd#2pIl#Ce.B02k1,2x' );
define( 'AUTH_SALT',         'TtYpuHTpTyOAo7E^cH7wT&I2e98^?i2-2#N{+JL{HYN2*Eq2Wtdkm99`B P_Xzf{' );
define( 'SECURE_AUTH_SALT',  ')VBw$k-a{R*!6XKUuEN*2z7pjC1s9Yi ]CEsR+C>r,,IP:ZeI-SZq?EeDQ~{e /&' );
define( 'LOGGED_IN_SALT',    '|8IdQ4+@3:EBv#Z2G9)ZY#@/oyL%c4`8pA@ ?_AlcpaJzd=~c&v5}[U*@1o0q-<b' );
define( 'NONCE_SALT',        '09;!rmW-cVE:QxSPs(%%F^nVPap91lQR:Abdx{Y_ML 6h:TB8]+hmr?Yc$Di`*D-' );
define( 'WP_CACHE_KEY_SALT', 'w.n2o2n$f,4>_7Zs4/hjex4Z&2`xYwA-meJ%i53mb6fi8B&H-*oEN?tgX]Z;c9KH' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

define( 'WP_ENVIRONMENT_TYPE', 'local' );
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
