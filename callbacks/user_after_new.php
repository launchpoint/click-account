<?

if(!isset($user->password)) $user->password = null;
if(!isset($user->password_confirm)) $user->password_confirm = null;
$user->ip = getenv("REMOTE_ADDR");

$user->avatar_data = null;

$user->form_mode='edit';