<?

$u = User::find_by_id($params['id']);

click_new_session();
$__core['session']['current_user'] = $u->id;
redirect_to_home();

