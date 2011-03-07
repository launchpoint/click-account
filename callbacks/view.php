<?

$user = User::find_by_username($params['username']);


$sections = event_capture('view_account_sections', array('user'=>$user));
$sections = $sections['data'];

$tabs = array();
foreach($sections as $module_name=>$data)
{
  if(array_key_exists('sections', $data))
  {
    foreach($data['sections'] as $section)
    {
      $k = "{$module_name}_{$section['event']}";
      $data = (array_key_exists('data', $section)) ? $section['data'] : array();
      $data['user'] = $user;
      $cap = event_capture($section['event'], $data);
      $tabs[$k]['title'] = $section['title'];
      $tabs[$k]['output'] = $cap['output'];
    }
  } else {
    $k = $module_name;
    $tabs[$k]['title'] = $data['title'];
    $tabs[$k]['output'] = $data['__output'];
  }
}
