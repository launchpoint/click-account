<?

$user = User::new_model_instance();

if($run_mode == RUN_MODE_DEVELOPMENT)
{
  $cond = 'activated_at is not null';
  if(isset($current_user->is_active)) $cond .= ' and is_active=1';
  $users = User::find_all(array('conditions'=>$cond, 'order'=>'username'));
}

if (is_postback())
{
  $user->update_attributes($params['user'],false);
  
  $u =  authenticate($params['user']['username'], $params['user']['password']);
  if ($u==null)
  {
    $params['user']['password']='';
    flash("Invalid login. Please try again.");
  }
  elseif (!$u->activated_at) {
    $params['user']['password']='';
    flash("Account is not active. Please try again.");
  } else {
    if(isset($_GET['__multi']))
    {
      click_new_session();
    }
    $__core['session'] = array();
    $__core['session']['current_user'] = $u->id;
    $current_user = $u;
    flash_next("Welcome back, ?", $u->username);
    $args = array('user'=>$u);
    process_invite();
    event('after_user_authenticated', $args);
    if (p('r',null))
    {
      redirect_to(p('r'));
    }
    redirect_to_home();
  }
}
