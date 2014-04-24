testdriiive.com
===============

Test drive premium WordPress themes.

## Hacking

Given a fully-functional LAMP (or similar) stack, get hacking on the application with these steps:

1. Clone the repo: `git clone --recursive git@github.com:deliciousbrains/testdriiive.git testdriiive.dev`
2. Add a `/etc/hosts` record: `192.168.50.10 testdriiive.dev` (where the first is the IP for your local machine)
3. Create a wp-config-env.php file:

  ```
  <?php
  define( 'DB_USER', 'root' );
  define( 'LOCAL_DEV', true );
  define( 'WP_SITEURL', 'http://testdriiive.dev/wp' );

  // Don't define as constants because these need to be dynamic
  $db_name = 'testdriiive';
  $wp_home = 'http://testdriiive.dev';
  ```

4. Use WP-CLI to create the database and install WordPress: `wp db create; wp core install --prompt`

Et voila!
