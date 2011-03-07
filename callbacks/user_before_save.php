<?

if (is_file_upload($user->avatar_data))
{
  associate_attachment($user, 'avatar');
}


if (!$user->salt)
{
  $user->salt = md5(microtime(true));
}

if($user->password)
{
  $hash = md5($user->password.$user->salt);
  $user->password_hash = $hash;
}