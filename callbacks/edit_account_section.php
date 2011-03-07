<?

require_authenticated();

$section_name = p('id');
if(!$section_name)
{
  foreach($account_settings['role_fields'] as $role_name=>$modes)
  {
    if(!$current_user->is($role_name)) continue;
    foreach($modes as $mode_name=>$sections)
    {
      if($mode_name!='edit') continue;
      foreach($sections as $section_name=>$fields)
      {
        redirect_to(edit_account_section_url($section_name));
      }
    }
  }
}

$is_found = false;
foreach($account_settings['role_fields'] as $role_name=>$modes)
{
  if(!$current_user->is($role_name)) continue;
  foreach($modes as $mode_name=>$sections)
  {
    if($mode_name!='edit') continue;
    foreach($sections as $section_name_to_match=>$fields)
    {
      if($section_name == $section_name_to_match)
      {
        $is_found = true;
        break;
      }
    }
  }
}

if(!isset($fields)) click_error("config/account.php contains no edit sections for any of this user's roles.");


/* If we found a section named in $account_settings, just superform it */
if($is_found)
{
  $current_user->superform_sections = array(
    $section_name=>$fields
  );

  if(is_postback())
  {
    $current_user->update_attributes($params['user']);
    if($current_user->is_valid)
    {
      flash("Information saved.");
    }
  }
  
  $current_user->superform();
} else {
  event("account_{$section_name}");
}
