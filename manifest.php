<?

$manifest = array(
  'requires'=>array('tabs', 'haml','restful_callback', 'jquery', 'user_security', 'email_notifier', 'activerecord', 'static_editor', 'migrate', 'superform', 'attachment', 'superform', 'js_url_helper'),
  'load_after'=>array('jquery', 'db_session', 'email_notifier', 'haml'),
  'load_before'=>array('user_security'),
  'jquery'=>array('ui.widgets', 'collapsible')
);