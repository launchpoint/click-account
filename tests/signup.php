<?

if($account_settings['invitation_only'])
{
} else {
  $res = get(signup_url());
  
  data_scope("['theme_render_theme']['vars']['content']['data']");
  
  extract(data('account_signup'));
  a($user);
  
  post(signup_url(), array(
      'user'=>array(
        'email'=>''
      )
    )
  );
  extract(data('account_signup'));
  a($user->errors['email']);
  a($user->errors['tos_accepted_at']);
  a($user->errors['age_confirmed_at']);
  a($user->errors['password']);
  a($user->errors['username']);
  ace($emails, 0);
  
  post(signup_url(), array(
      'user'=>array(
        'email'=>time().'@launchpointsoftware.com',
        'username'=>time(),
        'password'=>'password',
        'password_confirm'=>'password',
        'tos_accepted_at'=>1,
        'age_confirmed_at'=>1
      )
    ), 302
  );
  extract(data('account_signup'));
  ae($result_code,302);
  ace($emails, 1);
  ace($user->errors, 0);
  
  $parts = parse_url($callback_url);
  data_scope("['theme_render_api']['vars']['data']");
  get($parts['path'], null, 302);
  extract(data('restful_callback_callback'));
  ae($result_code, 302);
  
  data_scope("['theme_render_theme']['vars']['content']['data']");
  get($result_vpath, null, 302);
  ae($result_code, 302);
  ae($result_vpath, '/');
  
  get('/');
  ae($GLOBALS['current_user']->is_new, false);
  alte(time() - $GLOBALS['current_user']->tos_accepted_at, 5);
}
