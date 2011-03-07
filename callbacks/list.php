<?
require_ssl();
require_authenticated();
require_access("admin");
$users = FALSE;
$search_config = array();

$q = (array_key_exists('q', $params)) ? ($params['q']) : ("");
if ($q != "") {
  $search_config['conditions'] = array("email LIKE(?) OR username LIKE(?) OR first_name LIKE(?) OR last_name LIKE(?)", "%".$q."%", "%".$q."%", "%".$q."%", "%".$q."%");
  $users = User::find_all($search_config);
}