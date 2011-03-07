<?

require_ssl();

$user = User::new_model_instance();

if (is_postback())
{
  $user = User::find( array(
    'conditions'=>array('username = ? or email = ?', $params['user']['username'], $params['user']['username'])
  ));
  if ($user)
  {
      $callback_url = create_restful_callback( array(
        'forward_to'=>confirm_password_reset_url(),
        'user_id'=>$user->id
      ));
      notify($user, 'reset_password', array('callback_url'=>$callback_url));
  }
  flash_next("If we found your account, a password reset link has been mailed to you. Please check your junk mail folder if you do not receive it.");
  redirect_to_home();
}
