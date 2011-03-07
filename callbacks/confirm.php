<?

$data = callback_data($params['token']);
if($data)
{
  $uid = $data['user_id'];
  $user = User::find_by_id($uid);
  $user->activate($data);
  expire_callback($params['token']);
  flash_next("Your account has been activated.");
  redirect_to_home();
} else {
  flash_next("Your account could not be activated.");
  redirect_to_home();
}
