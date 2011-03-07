<?

User::$validates_uniqueness_of[] = 'username';

function user_update_password($u)
{
  if ($u->validate()) $u->save();
}

function user_generate_password($u)
{
  $u->salt = md5(microtime(true));
  $u->password = microtime(true);
  $u->update_password();
}

function user_sections_for__d($u, $mode)
{
  global $account_settings;
  $sections = array();
  foreach($u->roles as $r)
  {
    if (!array_key_exists($r->name, $account_settings['role_fields']) || !array_key_exists($mode, $account_settings['role_fields'][$r->name])) continue;
    foreach($account_settings['role_fields'][$r->name][$mode] as $section_name=>$fields)
    {
      if (!array_key_exists($section_name, $sections)) $sections[$section_name] = array();
      $sections[$section_name] = array_merge($sections[$section_name], $fields);
    }
  }
  return $sections;
}

function user_is_field_active($u, $name)
{
  foreach($u->form_fields as $section=>$fields)
  {
    if(array_key_exists($name, $fields)) return true;
  }
  return false;
}

function user_activate($u, $data=null)
{
  global $current_user, $__core;
  
  $u->activated_at = time();
  $u->validate();
  if(!$u->is_valid) click_error("Attempt to activate invalid user model", $u);
  $u->save();
  $current_user = $u;
  $__core['session']['current_user'] = $u->id;
  
  if(isset($__core['session']['invite_token'])) process_invite($__core['session']['invite_token']);
  
  unset($__core['session']['token']);
  unset($__core['session']['signup_info']);

  event('after_activation', array('user'=>$u, 'data'=>$data));
}