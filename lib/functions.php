<?

function logged_in()
{
  global $__core;
  
  return array_key_exists('current_user', $__core['session']);
}

function require_authenticated()
{
  global $full_request_path;
  if (!logged_in())
  {
    redirect_to(login_url(array('r'=>home_url().$full_request_path)));
    redirect_to(login_url());
  }
}


function require_membership($obj)
{
  global $current_user;
  require_authenticated();
  if (!$obj->is_member($current_user))
  {
    flash_next("Not authorized to view that resource.");
    redirect_to_home();
  }
}

function authenticate($email, $password)
{
  global $run_mode;
  
  $u = User::find( array(
    'conditions'=>array('username = ? or email = ? and activated_at is not null', $email, $email)
  ));
  if ($u && $run_mode != RUN_MODE_DEVELOPMENT)
  {
    $hash = md5($password.$u->salt);
    if ($hash != $u->password_hash) $u=null;
  }
  if($u)
  {
    $u->is_authenticated = true;
    event('authenticate_user', array('user'=>$u));
    if(!$u->is_authenticated) $u=null;
  }
  return $u;
}
