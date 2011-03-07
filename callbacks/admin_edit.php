<?
require_ssl();
require_authenticated();
require_access("admin");

$edited_user = User::find_by_id($params['user_id']);
$edited_user->new_email = $edited_user->email;
$edited_user->form_mode = 'admin_edit';

$states = State::find_all();
$cc_types = CcType::find_all();


if (is_postback())
{
  $edited_user->update_attributes($params['user']);
  if ($edited_user->is_valid)
  {
    if ($edited_user->new_email != $edited_user->email)
    {
      $callback_url = create_restful_callback( array(
        'forward_to'=>confirm_email_url(),
        'user_id'=>$edited_user->id
      ));  
      $edited_user->old_email = $edited_user->email;
      $edited_user->email = $edited_user->new_email;
      notify($edited_user, 'change_email', array('new_email'=>$edited_user->new_email, 'old_email'=>$edited_user->old_email, 'callback_url'=>$callback_url));
      $edited_user->email = $edited_user->old_email;
      flash("An email change request has been sent to {$edited_user->new_email}. Please check your junk mail folder if you do not receive it.");
    }
    if ($edited_user->password != '')
    {
      $edited_user->update_password();
    }
    flash("Information saved.");
  }

  if (array_key_exists('frmResendConfirmationSubmit', $params)) {
      $callback_url = create_restful_callback( array(
        'forward_to'=>confirm_account_url(),
        'user_id'=>$user->id
      ));
      notify($user, 'signup', array('callback_url'=>$callback_url));
      flash("A signup confirmation has been mailed to {$user->email}.");

  }

  if (array_key_exists('frmResetPasswordSubmit', $params)) {
    $callback_url = create_restful_callback( array(
      'forward_to'=>confirm_password_reset_url(),
      'user_id'=>$user->id
    ));
    notify($user, 'reset_password', array('callback_url'=>$callback_url));
    flash("A password reset confirmation has been mailed to {$user->email}.");
  }
}

$sections = event_capture('edit_account_sections');
$sections = $sections['data'];
dprint($sections);
$tabs = array();
foreach($sections as $module_name=>$data)
{
  if ($module_name != "accounting") continue;
  if(array_key_exists('sections', $data))
  {
    foreach($data['sections'] as $section)
    {
      $k = "{$module_name}_{$section['event']}";
      $data = (array_key_exists('data', $section)) ? $section['data'] : array();
      $data['user'] = $edited_user;
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

