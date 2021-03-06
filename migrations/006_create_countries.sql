drop table if exists countries;
CREATE TABLE IF NOT EXISTS countries (
id int(11) NOT NULL auto_increment,
iso CHAR(2) NOT NULL ,
name VARCHAR(80) NOT NULL,
printable_name VARCHAR(80) NOT NULL,
iso3 CHAR(3),
numcode int(11) default NULL,
PRIMARY KEY  (`id`));
 
 
 
INSERT INTO countries VALUES (NULL, 'AF','AFGHANISTAN','Afghanistan','AFG','004');
 
INSERT INTO countries VALUES (NULL, 'AL','ALBANIA','Albania','ALB','008');
 
INSERT INTO countries VALUES (NULL, 'DZ','ALGERIA','Algeria','DZA','012');
 
INSERT INTO countries VALUES (NULL, 'AS','AMERICAN SAMOA','American Samoa','ASM','016');
 
INSERT INTO countries VALUES (NULL, 'AD','ANDORRA','Andorra','AND','020');
 
INSERT INTO countries VALUES (NULL, 'AO','ANGOLA','Angola','AGO','024');
 
INSERT INTO countries VALUES (NULL, 'AI','ANGUILLA','Anguilla','AIA','660');
 
INSERT INTO countries VALUES (NULL, 'AQ','ANTARCTICA','Antarctica',NULL,NULL);
 
INSERT INTO countries VALUES (NULL, 'AG','ANTIGUA AND BARBUDA','Antigua and Barbuda','ATG','028');
 
INSERT INTO countries VALUES (NULL, 'AR','ARGENTINA','Argentina','ARG','032');
 
INSERT INTO countries VALUES (NULL, 'AM','ARMENIA','Armenia','ARM','051');
 
INSERT INTO countries VALUES (NULL, 'AW','ARUBA','Aruba','ABW','533');
 
INSERT INTO countries VALUES (NULL, 'AU','AUSTRALIA','Australia','AUS','036');
 
INSERT INTO countries VALUES (NULL, 'AT','AUSTRIA','Austria','AUT','040');
 
INSERT INTO countries VALUES (NULL, 'AZ','AZERBAIJAN','Azerbaijan','AZE','031');
 
INSERT INTO countries VALUES (NULL, 'BS','BAHAMAS','Bahamas','BHS','044');
 
INSERT INTO countries VALUES (NULL, 'BH','BAHRAIN','Bahrain','BHR','048');
 
INSERT INTO countries VALUES (NULL, 'BD','BANGLADESH','Bangladesh','BGD','050');
 
INSERT INTO countries VALUES (NULL, 'BB','BARBADOS','Barbados','BRB','052');
 
INSERT INTO countries VALUES (NULL, 'BY','BELARUS','Belarus','BLR','112');
 
INSERT INTO countries VALUES (NULL, 'BE','BELGIUM','Belgium','BEL','056');
 
INSERT INTO countries VALUES (NULL, 'BZ','BELIZE','Belize','BLZ','084');
 
INSERT INTO countries VALUES (NULL, 'BJ','BENIN','Benin','BEN','204');
 
INSERT INTO countries VALUES (NULL, 'BM','BERMUDA','Bermuda','BMU','060');
 
INSERT INTO countries VALUES (NULL, 'BT','BHUTAN','Bhutan','BTN','064');
 
INSERT INTO countries VALUES (NULL, 'BO','BOLIVIA','Bolivia','BOL','068');
 
INSERT INTO countries VALUES (NULL, 'BA','BOSNIA AND HERZEGOVINA','Bosnia and Herzegovina','BIH','070');
 
INSERT INTO countries VALUES (NULL, 'BW','BOTSWANA','Botswana','BWA','072');
 
INSERT INTO countries VALUES (NULL, 'BV','BOUVET ISLAND','Bouvet Island',NULL,NULL);
 
INSERT INTO countries VALUES (NULL, 'BR','BRAZIL','Brazil','BRA','076');
 
INSERT INTO countries VALUES (NULL, 'IO','BRITISH INDIAN OCEAN TERRITORY','British Indian Ocean Territory',NULL,NULL);
 
INSERT INTO countries VALUES (NULL, 'BN','BRUNEI DARUSSALAM','Brunei Darussalam','BRN','096');
 
INSERT INTO countries VALUES (NULL, 'BG','BULGARIA','Bulgaria','BGR','100');
 
INSERT INTO countries VALUES (NULL, 'BF','BURKINA FASO','Burkina Faso','BFA','854');
 
INSERT INTO countries VALUES (NULL, 'BI','BURUNDI','Burundi','BDI','108');
 
INSERT INTO countries VALUES (NULL, 'KH','CAMBODIA','Cambodia','KHM','116');
 
INSERT INTO countries VALUES (NULL, 'CM','CAMEROON','Cameroon','CMR','120');
 
INSERT INTO countries VALUES (NULL, 'CA','CANADA','Canada','CAN','124');
 
INSERT INTO countries VALUES (NULL, 'CV','CAPE VERDE','Cape Verde','CPV','132');
 
INSERT INTO countries VALUES (NULL, 'KY','CAYMAN ISLANDS','Cayman Islands','CYM','136');
 
INSERT INTO countries VALUES (NULL, 'CF','CENTRAL AFRICAN REPUBLIC','Central African Republic','CAF','140');
 
INSERT INTO countries VALUES (NULL, 'TD','CHAD','Chad','TCD','148');
 
INSERT INTO countries VALUES (NULL, 'CL','CHILE','Chile','CHL','152');
 
INSERT INTO countries VALUES (NULL, 'CN','CHINA','China','CHN','156');
 
INSERT INTO countries VALUES (NULL, 'CX','CHRISTMAS ISLAND','Christmas Island',NULL,NULL);
 
INSERT INTO countries VALUES (NULL, 'CC','COCOS (KEELING) ISLANDS','Cocos (Keeling) Islands',NULL,NULL);
 
INSERT INTO countries VALUES (NULL, 'CO','COLOMBIA','Colombia','COL','170');
 
INSERT INTO countries VALUES (NULL, 'KM','COMOROS','Comoros','COM','174');
 
INSERT INTO countries VALUES (NULL, 'CG','CONGO','Congo','COG','178');
 
INSERT INTO countries VALUES (NULL, 'CD','CONGO, THE DEMOCRATIC REPUBLIC OF THE','Congo, the Democratic Republic of the','COD','180');
 
INSERT INTO countries VALUES (NULL, 'CK','COOK ISLANDS','Cook Islands','COK','184');
 
INSERT INTO countries VALUES (NULL, 'CR','COSTA RICA','Costa Rica','CRI','188');
 
INSERT INTO countries VALUES (NULL, 'CI','COTE D\'IVOIRE','Cote D\'Ivoire','CIV','384');
 
INSERT INTO countries VALUES (NULL, 'HR','CROATIA','Croatia','HRV','191');
 
INSERT INTO countries VALUES (NULL, 'CU','CUBA','Cuba','CUB','192');
 
INSERT INTO countries VALUES (NULL, 'CY','CYPRUS','Cyprus','CYP','196');
 
INSERT INTO countries VALUES (NULL, 'CZ','CZECH REPUBLIC','Czech Republic','CZE','203');
 
INSERT INTO countries VALUES (NULL, 'DK','DENMARK','Denmark','DNK','208');
 
INSERT INTO countries VALUES (NULL, 'DJ','DJIBOUTI','Djibouti','DJI','262');
 
INSERT INTO countries VALUES (NULL, 'DM','DOMINICA','Dominica','DMA','212');
 
INSERT INTO countries VALUES (NULL, 'DO','DOMINICAN REPUBLIC','Dominican Republic','DOM','214');
 
INSERT INTO countries VALUES (NULL, 'EC','ECUADOR','Ecuador','ECU','218');
 
INSERT INTO countries VALUES (NULL, 'EG','EGYPT','Egypt','EGY','818');
 
INSERT INTO countries VALUES (NULL, 'SV','EL SALVADOR','El Salvador','SLV','222');
 
INSERT INTO countries VALUES (NULL, 'GQ','EQUATORIAL GUINEA','Equatorial Guinea','GNQ','226');
 
INSERT INTO countries VALUES (NULL, 'ER','ERITREA','Eritrea','ERI','232');
 
INSERT INTO countries VALUES (NULL, 'EE','ESTONIA','Estonia','EST','233');
 
INSERT INTO countries VALUES (NULL, 'ET','ETHIOPIA','Ethiopia','ETH','231');
 
INSERT INTO countries VALUES (NULL, 'FK','FALKLAND ISLANDS (MALVINAS)','Falkland Islands (Malvinas)','FLK','238');
 
INSERT INTO countries VALUES (NULL, 'FO','FAROE ISLANDS','Faroe Islands','FRO','234');
 
INSERT INTO countries VALUES (NULL, 'FJ','FIJI','Fiji','FJI','242');
 
INSERT INTO countries VALUES (NULL, 'FI','FINLAND','Finland','FIN','246');
 
INSERT INTO countries VALUES (NULL, 'FR','FRANCE','France','FRA','250');
 
INSERT INTO countries VALUES (NULL, 'GF','FRENCH GUIANA','French Guiana','GUF','254');
 
INSERT INTO countries VALUES (NULL, 'PF','FRENCH POLYNESIA','French Polynesia','PYF','258');
 
INSERT INTO countries VALUES (NULL, 'TF','FRENCH SOUTHERN TERRITORIES','French Southern Territories',NULL,NULL);
 
INSERT INTO countries VALUES (NULL, 'GA','GABON','Gabon','GAB','266');
 
INSERT INTO countries VALUES (NULL, 'GM','GAMBIA','Gambia','GMB','270');
 
INSERT INTO countries VALUES (NULL, 'GE','GEORGIA','Georgia','GEO','268');
 
INSERT INTO countries VALUES (NULL, 'DE','GERMANY','Germany','DEU','276');
 
INSERT INTO countries VALUES (NULL, 'GH','GHANA','Ghana','GHA','288');
 
INSERT INTO countries VALUES (NULL, 'GI','GIBRALTAR','Gibraltar','GIB','292');
 
INSERT INTO countries VALUES (NULL, 'GR','GREECE','Greece','GRC','300');
 
INSERT INTO countries VALUES (NULL, 'GL','GREENLAND','Greenland','GRL','304');
 
INSERT INTO countries VALUES (NULL, 'GD','GRENADA','Grenada','GRD','308');
 
INSERT INTO countries VALUES (NULL, 'GP','GUADELOUPE','Guadeloupe','GLP','312');
 
INSERT INTO countries VALUES (NULL, 'GU','GUAM','Guam','GUM','316');
 
INSERT INTO countries VALUES (NULL, 'GT','GUATEMALA','Guatemala','GTM','320');
 
INSERT INTO countries VALUES (NULL, 'GN','GUINEA','Guinea','GIN','324');
 
INSERT INTO countries VALUES (NULL, 'GW','GUINEA-BISSAU','Guinea-Bissau','GNB','624');
 
INSERT INTO countries VALUES (NULL, 'GY','GUYANA','Guyana','GUY','328');
 
INSERT INTO countries VALUES (NULL, 'HT','HAITI','Haiti','HTI','332');
 
INSERT INTO countries VALUES (NULL, 'HM','HEARD ISLAND AND MCDONALD ISLANDS','Heard Island and Mcdonald Islands',NULL,NULL);
 
INSERT INTO countries VALUES (NULL, 'VA','HOLY SEE (VATICAN CITY STATE)','Holy See (Vatican City State)','VAT','336');
 
INSERT INTO countries VALUES (NULL, 'HN','HONDURAS','Honduras','HND','340');
 
INSERT INTO countries VALUES (NULL, 'HK','HONG KONG','Hong Kong','HKG','344');
 
INSERT INTO countries VALUES (NULL, 'HU','HUNGARY','Hungary','HUN','348');
 
INSERT INTO countries VALUES (NULL, 'IS','ICELAND','Iceland','ISL','352');
 
INSERT INTO countries VALUES (NULL, 'IN','INDIA','India','IND','356');
 
INSERT INTO countries VALUES (NULL, 'ID','INDONESIA','Indonesia','IDN','360');
 
INSERT INTO countries VALUES (NULL, 'IR','IRAN, ISLAMIC REPUBLIC OF','Iran, Islamic Republic of','IRN','364');
 
INSERT INTO countries VALUES (NULL, 'IQ','IRAQ','Iraq','IRQ','368');
 
INSERT INTO countries VALUES (NULL, 'IE','IRELAND','Ireland','IRL','372');
 
INSERT INTO countries VALUES (NULL, 'IL','ISRAEL','Israel','ISR','376');
 
INSERT INTO countries VALUES (NULL, 'IT','ITALY','Italy','ITA','380');
 
INSERT INTO countries VALUES (NULL, 'JM','JAMAICA','Jamaica','JAM','388');
 
INSERT INTO countries VALUES (NULL, 'JP','JAPAN','Japan','JPN','392');
 
INSERT INTO countries VALUES (NULL, 'JO','JORDAN','Jordan','JOR','400');
 
INSERT INTO countries VALUES (NULL, 'KZ','KAZAKHSTAN','Kazakhstan','KAZ','398');
 
INSERT INTO countries VALUES (NULL, 'KE','KENYA','Kenya','KEN','404');
 
INSERT INTO countries VALUES (NULL, 'KI','KIRIBATI','Kiribati','KIR','296');
 
INSERT INTO countries VALUES (NULL, 'KP','KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF','Korea, Democratic People\'s Republic of','PRK','408');
 
INSERT INTO countries VALUES (NULL, 'KR','KOREA, REPUBLIC OF','Korea, Republic of','KOR','410');
 
INSERT INTO countries VALUES (NULL, 'KW','KUWAIT','Kuwait','KWT','414');
 
INSERT INTO countries VALUES (NULL, 'KG','KYRGYZSTAN','Kyrgyzstan','KGZ','417');
 
INSERT INTO countries VALUES (NULL, 'LA','LAO PEOPLE\'S DEMOCRATIC REPUBLIC','Lao People\'s Democratic Republic','LAO','418');
 
INSERT INTO countries VALUES (NULL, 'LV','LATVIA','Latvia','LVA','428');
 
INSERT INTO countries VALUES (NULL, 'LB','LEBANON','Lebanon','LBN','422');
 
INSERT INTO countries VALUES (NULL, 'LS','LESOTHO','Lesotho','LSO','426');
 
INSERT INTO countries VALUES (NULL, 'LR','LIBERIA','Liberia','LBR','430');
 
INSERT INTO countries VALUES (NULL, 'LY','LIBYAN ARAB JAMAHIRIYA','Libyan Arab Jamahiriya','LBY','434');
 
INSERT INTO countries VALUES (NULL, 'LI','LIECHTENSTEIN','Liechtenstein','LIE','438');
 
INSERT INTO countries VALUES (NULL, 'LT','LITHUANIA','Lithuania','LTU','440');
 
INSERT INTO countries VALUES (NULL, 'LU','LUXEMBOURG','Luxembourg','LUX','442');
 
INSERT INTO countries VALUES (NULL, 'MO','MACAO','Macao','MAC','446');
 
INSERT INTO countries VALUES (NULL, 'MK','MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF','Macedonia, the Former Yugoslav Republic of','MKD','807');
 
INSERT INTO countries VALUES (NULL, 'MG','MADAGASCAR','Madagascar','MDG','450');
 
INSERT INTO countries VALUES (NULL, 'MW','MALAWI','Malawi','MWI','454');
 
INSERT INTO countries VALUES (NULL, 'MY','MALAYSIA','Malaysia','MYS','458');
 
INSERT INTO countries VALUES (NULL, 'MV','MALDIVES','Maldives','MDV','462');
 
INSERT INTO countries VALUES (NULL, 'ML','MALI','Mali','MLI','466');
 
INSERT INTO countries VALUES (NULL, 'MT','MALTA','Malta','MLT','470');
 
INSERT INTO countries VALUES (NULL, 'MH','MARSHALL ISLANDS','Marshall Islands','MHL','584');
 
INSERT INTO countries VALUES (NULL, 'MQ','MARTINIQUE','Martinique','MTQ','474');
 
INSERT INTO countries VALUES (NULL, 'MR','MAURITANIA','Mauritania','MRT','478');
 
INSERT INTO countries VALUES (NULL, 'MU','MAURITIUS','Mauritius','MUS','480');
 
INSERT INTO countries VALUES (NULL, 'YT','MAYOTTE','Mayotte',NULL,NULL);
 
INSERT INTO countries VALUES (NULL, 'MX','MEXICO','Mexico','MEX','484');
 
INSERT INTO countries VALUES (NULL, 'FM','MICRONESIA, FEDERATED STATES OF','Micronesia, Federated States of','FSM','583');
 
INSERT INTO countries VALUES (NULL, 'MD','MOLDOVA, REPUBLIC OF','Moldova, Republic of','MDA','498');
 
INSERT INTO countries VALUES (NULL, 'MC','MONACO','Monaco','MCO','492');
 
INSERT INTO countries VALUES (NULL, 'MN','MONGOLIA','Mongolia','MNG','496');
 
INSERT INTO countries VALUES (NULL, 'MS','MONTSERRAT','Montserrat','MSR','500');
 
INSERT INTO countries VALUES (NULL, 'MA','MOROCCO','Morocco','MAR','504');
 
INSERT INTO countries VALUES (NULL, 'MZ','MOZAMBIQUE','Mozambique','MOZ','508');
 
INSERT INTO countries VALUES (NULL, 'MM','MYANMAR','Myanmar','MMR','104');
 
INSERT INTO countries VALUES (NULL, 'NA','NAMIBIA','Namibia','NAM','516');
 
INSERT INTO countries VALUES (NULL, 'NR','NAURU','Nauru','NRU','520');
 
INSERT INTO countries VALUES (NULL, 'NP','NEPAL','Nepal','NPL','524');
 
INSERT INTO countries VALUES (NULL, 'NL','NETHERLANDS','Netherlands','NLD','528');
 
INSERT INTO countries VALUES (NULL, 'AN','NETHERLANDS ANTILLES','Netherlands Antilles','ANT','530');
 
INSERT INTO countries VALUES (NULL, 'NC','NEW CALEDONIA','New Caledonia','NCL','540');
 
INSERT INTO countries VALUES (NULL, 'NZ','NEW ZEALAND','New Zealand','NZL','554');
 
INSERT INTO countries VALUES (NULL, 'NI','NICARAGUA','Nicaragua','NIC','558');
 
INSERT INTO countries VALUES (NULL, 'NE','NIGER','Niger','NER','562');
 
INSERT INTO countries VALUES (NULL, 'NG','NIGERIA','Nigeria','NGA','566');
 
INSERT INTO countries VALUES (NULL, 'NU','NIUE','Niue','NIU','570');
 
INSERT INTO countries VALUES (NULL, 'NF','NORFOLK ISLAND','Norfolk Island','NFK','574');
 
INSERT INTO countries VALUES (NULL, 'MP','NORTHERN MARIANA ISLANDS','Northern Mariana Islands','MNP','580');
 
INSERT INTO countries VALUES (NULL, 'NO','NORWAY','Norway','NOR','578');
 
INSERT INTO countries VALUES (NULL, 'OM','OMAN','Oman','OMN','512');
 
INSERT INTO countries VALUES (NULL, 'PK','PAKISTAN','Pakistan','PAK','586');
 
INSERT INTO countries VALUES (NULL, 'PW','PALAU','Palau','PLW','585');
 
INSERT INTO countries VALUES (NULL, 'PS','PALESTINIAN TERRITORY, OCCUPIED','Palestinian Territory, Occupied',NULL,NULL);
 
INSERT INTO countries VALUES (NULL, 'PA','PANAMA','Panama','PAN','591');
 
INSERT INTO countries VALUES (NULL, 'PG','PAPUA NEW GUINEA','Papua New Guinea','PNG','598');
 
INSERT INTO countries VALUES (NULL, 'PY','PARAGUAY','Paraguay','PRY','600');
 
INSERT INTO countries VALUES (NULL, 'PE','PERU','Peru','PER','604');
 
INSERT INTO countries VALUES (NULL, 'PH','PHILIPPINES','Philippines','PHL','608');
 
INSERT INTO countries VALUES (NULL, 'PN','PITCAIRN','Pitcairn','PCN','612');
 
INSERT INTO countries VALUES (NULL, 'PL','POLAND','Poland','POL','616');
 
INSERT INTO countries VALUES (NULL, 'PT','PORTUGAL','Portugal','PRT','620');
 
INSERT INTO countries VALUES (NULL, 'PR','PUERTO RICO','Puerto Rico','PRI','630');
 
INSERT INTO countries VALUES (NULL, 'QA','QATAR','Qatar','QAT','634');
 
INSERT INTO countries VALUES (NULL, 'RE','REUNION','Reunion','REU','638');
 
INSERT INTO countries VALUES (NULL, 'RO','ROMANIA','Romania','ROM','642');
 
INSERT INTO countries VALUES (NULL, 'RU','RUSSIAN FEDERATION','Russian Federation','RUS','643');
 
INSERT INTO countries VALUES (NULL, 'RW','RWANDA','Rwanda','RWA','646');
 
INSERT INTO countries VALUES (NULL, 'SH','SAINT HELENA','Saint Helena','SHN','654');
 
INSERT INTO countries VALUES (NULL, 'KN','SAINT KITTS AND NEVIS','Saint Kitts and Nevis','KNA','659');
 
INSERT INTO countries VALUES (NULL, 'LC','SAINT LUCIA','Saint Lucia','LCA','662');
 
INSERT INTO countries VALUES (NULL, 'PM','SAINT PIERRE AND MIQUELON','Saint Pierre and Miquelon','SPM','666');
 
INSERT INTO countries VALUES (NULL, 'VC','SAINT VINCENT AND THE GRENADINES','Saint Vincent and the Grenadines','VCT','670');
 
INSERT INTO countries VALUES (NULL, 'WS','SAMOA','Samoa','WSM','882');
 
INSERT INTO countries VALUES (NULL, 'SM','SAN MARINO','San Marino','SMR','674');
 
INSERT INTO countries VALUES (NULL, 'ST','SAO TOME AND PRINCIPE','Sao Tome and Principe','STP','678');
 
INSERT INTO countries VALUES (NULL, 'SA','SAUDI ARABIA','Saudi Arabia','SAU','682');
 
INSERT INTO countries VALUES (NULL, 'SN','SENEGAL','Senegal','SEN','686');
 
INSERT INTO countries VALUES (NULL, 'CS','SERBIA AND MONTENEGRO','Serbia and Montenegro',NULL,NULL);
 
INSERT INTO countries VALUES (NULL, 'SC','SEYCHELLES','Seychelles','SYC','690');
 
INSERT INTO countries VALUES (NULL, 'SL','SIERRA LEONE','Sierra Leone','SLE','694');
 
INSERT INTO countries VALUES (NULL, 'SG','SINGAPORE','Singapore','SGP','702');
 
INSERT INTO countries VALUES (NULL, 'SK','SLOVAKIA','Slovakia','SVK','703');
 
INSERT INTO countries VALUES (NULL, 'SI','SLOVENIA','Slovenia','SVN','705');
 
INSERT INTO countries VALUES (NULL, 'SB','SOLOMON ISLANDS','Solomon Islands','SLB','090');
 
INSERT INTO countries VALUES (NULL, 'SO','SOMALIA','Somalia','SOM','706');
 
INSERT INTO countries VALUES (NULL, 'ZA','SOUTH AFRICA','South Africa','ZAF','710');
 
INSERT INTO countries VALUES (NULL, 'GS','SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS','South Georgia and the South Sandwich Islands',NULL,NULL);
 
INSERT INTO countries VALUES (NULL, 'ES','SPAIN','Spain','ESP','724');
 
INSERT INTO countries VALUES (NULL, 'LK','SRI LANKA','Sri Lanka','LKA','144');
 
INSERT INTO countries VALUES (NULL, 'SD','SUDAN','Sudan','SDN','736');
 
INSERT INTO countries VALUES (NULL, 'SR','SURINAME','Suriname','SUR','740');
 
INSERT INTO countries VALUES (NULL, 'SJ','SVALBARD AND JAN MAYEN','Svalbard and Jan Mayen','SJM','744');
 
INSERT INTO countries VALUES (NULL, 'SZ','SWAZILAND','Swaziland','SWZ','748');
 
INSERT INTO countries VALUES (NULL, 'SE','SWEDEN','Sweden','SWE','752');
 
INSERT INTO countries VALUES (NULL, 'CH','SWITZERLAND','Switzerland','CHE','756');
 
INSERT INTO countries VALUES (NULL, 'SY','SYRIAN ARAB REPUBLIC','Syrian Arab Republic','SYR','760');
 
INSERT INTO countries VALUES (NULL, 'TW','TAIWAN, PROVINCE OF CHINA','Taiwan, Province of China','TWN','158');
 
INSERT INTO countries VALUES (NULL, 'TJ','TAJIKISTAN','Tajikistan','TJK','762');
 
INSERT INTO countries VALUES (NULL, 'TZ','TANZANIA, UNITED REPUBLIC OF','Tanzania, United Republic of','TZA','834');
 
INSERT INTO countries VALUES (NULL, 'TH','THAILAND','Thailand','THA','764');
 
INSERT INTO countries VALUES (NULL, 'TL','TIMOR-LESTE','Timor-Leste',NULL,NULL);
 
INSERT INTO countries VALUES (NULL, 'TG','TOGO','Togo','TGO','768');
 
INSERT INTO countries VALUES (NULL, 'TK','TOKELAU','Tokelau','TKL','772');
 
INSERT INTO countries VALUES (NULL, 'TO','TONGA','Tonga','TON','776');
 
INSERT INTO countries VALUES (NULL, 'TT','TRINIDAD AND TOBAGO','Trinidad and Tobago','TTO','780');
 
INSERT INTO countries VALUES (NULL, 'TN','TUNISIA','Tunisia','TUN','788');
 
INSERT INTO countries VALUES (NULL, 'TR','TURKEY','Turkey','TUR','792');
 
INSERT INTO countries VALUES (NULL, 'TM','TURKMENISTAN','Turkmenistan','TKM','795');
 
INSERT INTO countries VALUES (NULL, 'TC','TURKS AND CAICOS ISLANDS','Turks and Caicos Islands','TCA','796');
 
INSERT INTO countries VALUES (NULL, 'TV','TUVALU','Tuvalu','TUV','798');
 
INSERT INTO countries VALUES (NULL, 'UG','UGANDA','Uganda','UGA','800');
 
INSERT INTO countries VALUES (NULL, 'UA','UKRAINE','Ukraine','UKR','804');
 
INSERT INTO countries VALUES (NULL, 'AE','UNITED ARAB EMIRATES','United Arab Emirates','ARE','784');
 
INSERT INTO countries VALUES (NULL, 'GB','UNITED KINGDOM','United Kingdom','GBR','826');
 
INSERT INTO countries VALUES (NULL, 'US','UNITED STATES','United States','USA','840');
 
INSERT INTO countries VALUES (NULL, 'UM','UNITED STATES MINOR OUTLYING ISLANDS','United States Minor Outlying Islands',NULL,NULL);
 
INSERT INTO countries VALUES (NULL, 'UY','URUGUAY','Uruguay','URY','858');
 
INSERT INTO countries VALUES (NULL, 'UZ','UZBEKISTAN','Uzbekistan','UZB','860');
 
INSERT INTO countries VALUES (NULL, 'VU','VANUATU','Vanuatu','VUT','548');
 
INSERT INTO countries VALUES (NULL, 'VE','VENEZUELA','Venezuela','VEN','862');
 
INSERT INTO countries VALUES (NULL, 'VN','VIET NAM','Viet Nam','VNM','704');
 
INSERT INTO countries VALUES (NULL, 'VG','VIRGIN ISLANDS, BRITISH','Virgin Islands, British','VGB','092');
 
INSERT INTO countries VALUES (NULL, 'VI','VIRGIN ISLANDS, U.S.','Virgin Islands, U.s.','VIR','850');
 
INSERT INTO countries VALUES (NULL, 'WF','WALLIS AND FUTUNA','Wallis and Futuna','WLF','876');
 
INSERT INTO countries VALUES (NULL, 'EH','WESTERN SAHARA','Western Sahara','ESH','732');
 
INSERT INTO countries VALUES (NULL, 'YE','YEMEN','Yemen','YEM','887');
 
INSERT INTO countries VALUES (NULL, 'ZM','ZAMBIA','Zambia','ZMB','894');
 
INSERT INTO countries VALUES (NULL, 'ZW','ZIMBABWE','Zimbabwe','ZWE','716');