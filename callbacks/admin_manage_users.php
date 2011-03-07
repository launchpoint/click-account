<?

$users = User::find_all( array(
  'order'=>'username'
));

$meta = array(
  'klass'=>'User',
  'list'=>array('username', 'email', 'is_active'),
  'objects'=>$users,
  'controls'=>array('add'=>false, 'delete'=>false, 'edit'=>false),
);

superlist($meta);
