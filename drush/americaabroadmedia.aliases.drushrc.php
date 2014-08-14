<?php
/**
 * Depends on the following env variables being set.
 * Place in your ~/.bash_profile
 * export DEV_USER="userName"
 * export BLKMSH_USER="userName"
 * Then from the command line:
 * # source ~/.bash_profile
 * # ln -s $projectRoot/aam/americaabroadmedia.aliases.drushrc.php ~/.drush/
 */

$home = getenv('HOME');
$dev_user = getenv('DEV_USER');
$blkmsh_user = getenv('BLKMSH_USER');

$aliases['aam.dev'] = array (
  'env' => 'dev',
  'root' => '/var/www/vhosts/americaabroadmedia/public/aam',
  'uri' => 'http://taoti:taoti@americaabroadmedia.taotidev.com',
  'remote-user' => $dev_user,
  'remote-host' => 'aam.taotidev.com',
  array (
    '%drush' => '/usr/bin',
    '%site' => 'sites/default/',
  ),
);
/**
 * Currently amm all config, will do when it's deployed
 */
/*
$aliases['aam.prod'] = array (
  'env' => 'prod',
  'root' => '/var/www/americansall.org/htdocs/americansall',
  'uri' => 'https://americansall.org',
  'remote-user' => $blkmsh_user,
  'remote-host' => 'americansall.org',
  'path-aliases' =>
    array (
      '%drush' => '/optcd /scripts/drush',
      '%site' => 'sites/default/',
    ),
);
*/
$aliases['aam.vagrant'] = array(
  'root' => '/var/www/aam',
  'uri' => 'http://aam.dev',
  'remote-user' => 'vagrant',
  'remote-host' => '192.168.33.22',
  'ssh-options' => "-p 22 -i " . $home . "/.vagrant.d/insecure_private_key",
);
