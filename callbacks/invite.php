<?

$token = q('token');
if(logged_in())
{
  process_invite($token);
  redirect_to_home();
} else {
  $__core['session']['invite_token'] = $token;
  redirect_to(login_url());
}