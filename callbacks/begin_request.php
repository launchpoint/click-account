<?

$current_user = User::new_model_instance();

if (array_key_exists('current_user', $__click['session']))
{
  $current_user = User::find_by_id($__click['session']['current_user']);
  if (!$current_user)
  {
    unset($__click['session']['current_user']);
    $current_user = User::new_model_instance();
  }
}

event('init_user', array('user'=>$current_user));

if(!$current_user->is_new)
{
  $current_user->validate();
  if (!$current_user->is_valid)
  {
    if(!endswith(account_update_url(), $full_request_path) && !endswith(logout_url(), $full_request_path) && !startswith($full_request_path, 'api/'))
    {
      redirect_to(account_update_url());
    }
  }
}
$viewer = $current_user;