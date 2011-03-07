INSERT INTO `notification_templates` (`name`, `tag`, is_system) VALUES ('Reset your password', 'reset_password', 1);
INSERT INTO `email_templates` (`subject`, `body_text`, `body_html`, `email_master_template_id`, `notification_template_id`) VALUES
('Reset your password', 'We recently received a request to reset your password.\r\n\r\nIf you did not create this request, please disregard this message.\r\n\r\nIf you did create this request, reset your password by using the following link:\r\n\r\n#callback_url#', 'We recently received a request to reset your password.<br><br>If you did not create this request, please disregard this message.<br><br>If you did create this request, reset your password by using the following link:<br><br><a href="#callback_url#">#callback_url#</a>', 1, last_insert_id());


INSERT INTO `notification_template_variables` (`notification_template_id`, `name`, `php`, `description`) VALUES
((select id from notification_templates where tag='reset_password' limit 1), 'callback_url', '$callback_url', 'Callback Url'),
((select id from notification_templates where tag='reset_password' limit 1), 'username', '$to->username', 'username'),
((select id from notification_templates where tag='reset_password' limit 1), 'app_name', 'APP_NAME', 'App Name'),
((select id from notification_templates where tag='reset_password' limit 1), 'unsubscribe_url', 'edit_account_url()', 'Unsubscribe Url');


INSERT INTO `notification_templates` (`name`, `tag`, is_system) VALUES ('Activate your account', 'signup', 1);
INSERT INTO `email_templates` (`subject`, `body_text`, `body_html`, `email_master_template_id`, `notification_template_id`) VALUES
('Activate your account', 'Thanks for singing up!\r\n\r\nTo activate your account, use the link below. You will be asked to supply a password.\r\n\r\n#callback_url#', 'Thanks for singing up!<br><br>To activate your account, use the link below. You will be asked to supply a password.<br><br><a href="#callback_url#">#callback_url#</a>', 1, last_insert_id());

INSERT INTO `notification_template_variables` (`notification_template_id`, `name`, `php`, `description`) VALUES
((select id from notification_templates where tag='signup' limit 1), 'callback_url', '$callback_url', 'Callback Url'),
((select id from notification_templates where tag='signup' limit 1), 'username', '$to->username', 'username'),
((select id from notification_templates where tag='signup' limit 1), 'app_name', 'APP_NAME', 'App Name'),
((select id from notification_templates where tag='signup' limit 1), 'unsubscribe_url', 'edit_account_url()', 'Unsubscribe Url');


INSERT INTO `notification_templates` (`name`, `tag`, is_system) VALUES ('Confirm your new email address', 'change_email', 1);
INSERT INTO `email_templates` (`subject`, `body_text`, `body_html`, `email_master_template_id`, `notification_template_id`) VALUES
('Confirm your new email address', 'We have received a request to change your old email address, #old_email#, to the one we sent this message to (#new_email#).\r\n\r\nIf you did not initiate this request, please disregard.\r\n\r\nIf you did initiate this request, click the link below to confirm #new_email# as your new email address:\r\n\r\n#callback_url#\r\n', 'We have received a request to change your old email address, #old_email#, to the one we sent this message to (#new_email#).<br><br>If you did not initiate this request, please disregard.<br><br>If you did initiate this request, click the link below to confirm #new_email# as your new email address:<br><br><a href="#callback_url#">#callback_url#</a><br>', 1, last_insert_id());


INSERT INTO `notification_template_variables` (`notification_template_id`, `name`, `php`, `description`) VALUES
( (select id from notification_templates where tag='change_email' limit 1), 'old_email', '$to->username', 'Old Email'),
( (select id from notification_templates where tag='change_email' limit 1), 'new_email', '$to->new_email', 'New Email'),
( (select id from notification_templates where tag='change_email' limit 1), 'callback_url', '$callback_url', 'Callback Url'),
( (select id from notification_templates where tag='change_email' limit 1), 'username', '$to->username', 'username'),
( (select id from notification_templates where tag='change_email' limit 1), 'app_name', 'APP_NAME', 'App Name'),
( (select id from notification_templates where tag='change_email' limit 1), 'unsubscribe_url', 'edit_account_url()', 'Unsubscribe Url');
