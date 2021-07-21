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
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'bjxYZA29+9T/oVUZhrnbqrOQ94KmnAJKgKbGTE2c47b48fgxdogzmQes00G9fle4JkZCb0R5asMpb90CkqzISw==');
define('SECURE_AUTH_KEY',  '9YhvLMrbCDD5kgqBMkhvpSjqroKEhapK5olHackMvMjRUjuQUUHfl3+lpR1vwH2uqmlthkEK+S91Ysw9jcxyMA==');
define('LOGGED_IN_KEY',    '638zj8Ix5aJaqXr1h+Fajmxmh2oFXSXcRwsu2TwPbYiJ9V+J0QSkq/yn43u7uUpGL+eGCh+HEF9RzbHxOXiFmQ==');
define('NONCE_KEY',        'aRllrAvlZ+jTXfF1UfoLyMEoOWcXrbS35Mbaef3cruv3Nys7X4EH6QX36b5XDfAkNPY4PXcr5v7QixzIGJptYA==');
define('AUTH_SALT',        'LM9OwdqPxPX3OhrVwpvngtJ6FHSDLFW+RtivYzT+scMvp6XZjbf9LFjA/h2i7q38AbaV8d1bJYIXVJC9Gtoq/g==');
define('SECURE_AUTH_SALT', '9rF7+V3fXfompfARw6Vo6O+bZ+MOZRGjhdAUJtFJ/nfE94Wm8la5I92t4B22wUsb0K8Vnfo0YH7FObFLdaQvfw==');
define('LOGGED_IN_SALT',   'LFdUpsq0/DGy/zIOudwOJwPEREqpoRh5qlk0PG3WbadOcvG3Sk7YFutijuApjCx/+WZ6vY6iWR+V97C+ugchRA==');
define('NONCE_SALT',       'sND6lHbxsIyhAJMueMLr32xZfpdNHtjw/ft9nXLAA2DaWXyHktHE95Yx7Nhg/4m1vsYYLabnwjWFFaGs9x7nLg==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
