
CREATE TABLE IF NOT EXISTS `cc_types` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `tag` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `name` (`name`,`tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;



INSERT INTO `cc_types` (`name`, `tag`) VALUES
('Visa', 'visa'),
('MasterCard', 'mastercard'),
('American Express', 'amex'),
('Discover', 'discover');
