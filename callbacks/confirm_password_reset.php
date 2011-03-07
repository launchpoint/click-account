<?

if(!p('token'))
{
  flash_next("Your password could not be reset because no authentication token was provided.");
  redirect_to_home();
}

$callback = RestfulCallback::find_by_token($params['token']);

if(!$callback)
{
  flash_next("Your password could not be reset because the authentication token provided was invalid.");
  redirect_to_home();
}

$uid = $callback->args['user_id'];
$user = User::find_by_id($uid);

if (is_postback())
{
  $user->update_attributes($params['user'],false);
  $user->validate();
  if (!array_key_exists('password', $user->errors))
  {
    $user->update_password();
    $__core['session']['current_user'] = $user->id;
    flash_next("Your password has been reset. You are now logged in.");
    $callback->expire();
    redirect_to_home();
  }
}
