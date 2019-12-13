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
define( 'DB_NAME', 'kerako' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '{uOr&Rvu8kS#bw*IFk}[uu-?|d9.i#OSw[._r,.vW~xQQ8M9mGn<DN-Jo>Bbw9 ;' );
define( 'SECURE_AUTH_KEY',  'bM}__>.UJOu6H0bDHj*X|9t]N.>yN1&=Gk^L6&@{U$U+V?$v8?Bav]_>Nbe{KBZG' );
define( 'LOGGED_IN_KEY',    'fR!ABQ6j&gCbKvLnG&sgn#80B?8L5X[g5cv67V>_roUc%Q |HbqyjfMg{s]7Rn%j' );
define( 'NONCE_KEY',        '[Grtdx$f3o?V[0xBpp@l0@/,Lx%uIqf=w}nFe%H}PlCZ%9F^^*FiLv>(]q)[}Y^I' );
define( 'AUTH_SALT',        '6)@PTT+r,tZ)@7KGV~pAFt;e59,tBXvEZM3_GJ9DAQeiu%B-qp_/Z`sgjSU,n[=r' );
define( 'SECURE_AUTH_SALT', 'mqy1i,a*[,Frt00IYL+,k>(.CVyG:L~-cB=an2$T7vqpaO6M*S]D.48E7>n{%X=F' );
define( 'LOGGED_IN_SALT',   '{hUq[KFXBg4Z?efWro<63zB>+G8>8|Y;3$Su;SC{h6{.!Vs-&0 0@!yDZg6kFYF|' );
define( 'NONCE_SALT',       'f&` T~^aKH<-dN_^d|=@$e%85d}fr<MhAzO,xZhL{?nPFGnA,X.`O(o:*0el0J(5' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'kr_';

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
