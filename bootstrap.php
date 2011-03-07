<?

add_global('current_user');
add_global('viewer');
add_global('account_settings');

if(!isset($account_settings))
{
  $account_settings = array(
    'is_activation_enabled'=>true,
    'invitation_only'=>false,
    'default_role'=>'user',
    'role_fields'=>array(
      'user'=>array(
        'signup'=>array(
          'account'=>array(
            'username'=>array('required'=>true, 'type'=>'text'),
            'password'=>array('required'=>true, 'type'=>'text'),
            'password_confirm'=>array('required'=>true, 'type'=>'text'),
            'email'=>array('required'=>true, 'type'=>'email_address')
          ),
        ),
        'edit'=>array(
          'account'=>array(
            'username'=>array('required'=>true, 'type'=>'text'),
            'password'=>array('required'=>true, 'type'=>'text'),
            'password_confirm'=>array('required'=>true, 'type'=>'text'),
            'email'=>array('required'=>true, 'type'=>'email_address')
          ),
        )
      ),
    )
  );

}

/*

foreach($account_settings['role_fields'] as $role_name=>$modes)
{
  foreach($modes as $mode_name=>$sections)
  {
    foreach($sections as $section_name=>$fields)
    {
      foreach($fields as $field_name=>$attrs)
      {
        if ($attrs['display'] == 'required')
        {
          if (!array_key_exists('validators', $attrs)) $attrs['validators'] = array();
          $attrs['validators'][] = array('type'=>'regex', 'method'=>'/\S+/', 'message'=>'is required.');
          $account_settings['role_fields'][$role_name][$mode_name][$section_name][$field_name] = $attrs;
        }
      }
    }
  }
}

*/