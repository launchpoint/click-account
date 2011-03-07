<?

map('content', 'account/login', 'login', 'login', true);
map('content', 'account/list', 'list', 'account_list', true);
map('content', 'account/:user_id/edit', 'admin_edit', 'edit_user_account', true);
map('content', 'account/change_email', 'change_email', 'change_email');
map('content', 'account/confirm_email', 'confirm_email', 'confirm_email');
map('content', 'account/logout', 'logout', 'logout');
map('content', 'account/reset_password', 'reset_password', 'reset_password');
map('content', 'account/confirm_password_reset', 'confirm_password_reset', 'confirm_password_reset',false);
map('content', 'account/signup', 'signup', 'signup', true);
map('content', 'users/:username', 'view', 'view_account');
map('content', 'account/confirm', 'confirm', 'confirm_account');
map('content', 'account/update', 'update', 'account_update',true);
map('content', 'admin/users', 'admin_manage_users', 'admin_manage_users');
map('content', 'admin/users/switch/:id', 'admin_switch_user', 'admin_switch_user');
map('content', 'invite', 'invite', 'invite');

map('content', 'account/edit/*', 'tabbed_account_view');
map('content', 'account/edit', 'tabbed_account_view');
map('tab_links', 'account/edit/*');
map('tab_content', 'account/edit/:id', 'edit_account_section', 'edit_account_section');
map('tab_content', 'account/edit', 'edit_account_section', 'edit_account');


map('superlist_user_columns', 'admin/users', 'superlist_user_columns');