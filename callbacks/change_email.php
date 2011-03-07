<?

if(is_postback())
{
  $current_user->update_attributes($params['user']);
  if ($current_user->is_valid)
  {
    $callback_url = create_restful_callback( array(
      'forward_to'=>confirm_email_url(),
      'user_id'=>$current_user->id
    ));  
    notify($current_user, 'change_email', array('callback_url'=>$callback_url));
    
    flash_next("An email change request has been sent to {$current_user->new_email}. Please check your junk mail folder if you do not receive it.");
    
    redirect_to(view_account_url());
  }
}