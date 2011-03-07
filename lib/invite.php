<?

function invite($type, $notify_template_name, $u, $roles = array(), $attributes = array(), $data = array(), $email_vars = array())
{
  global $stash;
  if(!is_array($roles)) $roles = array($roles);
  if(!is_array($attributes)) $attributes = array($attributes);

  $callback_url = create_restful_callback( array(
    'type'=>$type,
    'forward_to'=>invite_url(),
    'data'=>$data,
    'signup_info' => array(
      'roles'=>$roles,
      'attribtues'=>$attributes,
    )
  ));
  preg_match('/([a-z0-9]{32})/', $callback_url, $matches);
  $stash->invite_token = $matches[0];
  $email_vars['callback_url'] = $callback_url;
  
  if(!is_object($u))
  {
    $u = User::new_model_instance( array ('attributes'=>array('email'=>$u)));
  }
  notify($u, "${notify_template_name}_invitation", $email_vars);
}


function process_invite($token=null)
{
  global $__core;
  
  if(!$token && !isset($__core['session']['invite_token'])) return;
  if(!$token)
  {
    $token = $__core['session']['invite_token'];
  }
  event('invite_accepted', array('token'=>$token));
  expire_callback($token);
  if(isset($__core['session']['invite_token']) && $__core['session']['invite_token'] == $token) unset($__core['session']['invite_token']);
}