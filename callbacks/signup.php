<?
if( array_key_exists('invitation_only', $account_settings) && $account_settings['invitation_only'] && !q('token') )
{
  flash_next('This web site is invitation only.');
  redirect_to_home();
}

require_ssl();

$user = User::new_model_instance();

$__core['session']['signup_info'] = array();
$tok = q('token');
if(!$tok && isset($__core['session']['token'])) $tok = $__core['session']['token'];
if($tok)
{
  $__core['session']['token'] = $tok;
  $data = callback_data($tok);
  if ($data)
  {
    if(array_key_exists('signup_info', $data))
    {
      $__core['session']['signup_info'] = $data['signup_info'];
    }
  }
}

if(p('roles'))
{
  $__core['session']['signup_info']['roles'] = split(',',p('roles'));
}

event('init_user', array('user'=>&$user));

if(isset($__core['session']['signup_info']['attributes']))
{
  $user->update_attributes($__core['session']['signup_info']['attributes'], false);
}

$user->superform_sections = $user->sections_for('signup');

if (is_postback())
{
  switch($params['superform_cmd'])
  {
    case 'refresh':
      $user->update_attributes($params['user'], false);
      break;
    case 'commit':
      $user->update_attributes($params['user']);
      if ($user->is_valid)
      {
        expire_callback($tok);
        $user->update_password();
        if($account_settings['invitation_only'])
        {
          $user->activate();
          flash_next("Your account has been activated!");
          if(p('r')) redirect_to(p('r'));
        } elseif(!$account_settings['is_activation_enabled']) {
          $user->activate();
          flash_next("Your account has been activated!");
          if(p('r')) redirect_to(p('r'));
        } else {
          $callback_url = create_restful_callback( array(
            'forward_to'=>confirm_account_url(),
            'user_id'=>$user->id
          ));
          preg_match('/([a-z0-9]{32})/', $callback_url, $matches);
          $stash->signup_token = $matches[0];
          notify($user, 'signup', array('callback_url'=>$callback_url));
          flash_next("A signup confirmation has been mailed to {$user->email}. Please check your junk mail folder if you do not receive it.");
        }
        redirect_to_home();
      }
      break;
  }
}


