<?
require_ssl();

require_authenticated();

$current_user->new_email = $current_user->email;

if($current_user->is_valid) redirect_to(home_url());

foreach($current_user->errors as $error_field_name=>$error_message)
{
  $found = false;
  foreach($current_user->sections_for('edit') as $section_name=>$section_fields)
  {
    $found |= superform_find_field_in_section($section_fields, $error_field_name);
  }
  if(!$found)
  {
    click_error("User {$current_user->username} has an invalid {$error_field_name}, but that field is not specified for form mode {$current_user->form_mode}");
  }
}

$states = State::find_all();
$cc_types = CcType::find_all();

if (is_postback())
{
  $current_user->update_attributes($params['user']);
  if ($current_user->is_valid)
  {
    if ($current_user->new_email != $current_user->email)
    {
      $callback_url = create_restful_callback( array(
        'forward_to'=>confirm_email_url(),
        'user_id'=>$current_user->id
      ));  
      $current_user->old_email = $current_user->email;
      $current_user->email = $current_user->new_email;
      notify($current_user, 'change_email', array('new_email'=>$current_user->new_email, 'old_email'=>$current_user->old_email, 'callback_url'=>$callback_url));
      $current_user->email = $current_user->old_email;
      flash("An email change request has been sent to {$current_user->new_email}. Please check your junk mail folder if you do not receive it.");
    }
    if ($current_user->password != '')
    {
      $current_user->update_password();
    }
    flash_next("Thanks for updating your account!");
    redirect_to_home();
  } else {
    flash("Some of your data contains errors. Please check below.");
  }
}
