<?

$links = array();
foreach($account_settings['role_fields'] as $role_name=>$modes)
{
  if(!$current_user->is($role_name)) continue;
  foreach($modes as $mode_name=>$sections)
  {
    if($mode_name!='edit') continue;
    foreach($sections as $section_name=>$fields)
    {
      $links[] = array('href'=>edit_account_section_url($section_name), 'label'=>$section_name . ' tab');
    }
  }
}

$data = event('account_section_names');
$sections = gather($data, 'sections');
foreach($sections as $section_name)
{
  $links[] = array('href'=>edit_account_section_url($section_name), 'label'=>$section_name . ' tab');
}
