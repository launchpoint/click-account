<?

if ($user->is_new || strlen($user->password) > 0 || strlen($user->password_confirm)>0)
{
  if ($user->password == '')
  {
    $user->errors['password'] = "is required.";
  }
  if ($user->password != $user->password_confirm)
  {
    $user->errors['password'] = "does not match.";
  }
}

if (!array_key_exists('new_email', $user->errors) && $user->new_email!=null)
{
  if (!is_rfc3696_valid_email_address($user->new_email))
  {
    $user->errors['new_email'] = "is not a valid email address.";
  }
}


if (!array_key_exists('username', $user->errors))
{
  if(!preg_match("/^[A-Za-z0-9_]+$/", $user->username))
  {
    $user->errors['username'] = 'must only contain letters, numbers, or underscore (_).';
  }
  if($user->is_new && User::find_by_username($user->username))
  {
    $user->errors['username'] = 'is already taken.';
  }
  
}
