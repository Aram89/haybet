CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nick_name` char(50) NOT NULL,
  `email` char(150) NOT NULL,
  `password` char(255) NOT NULL,
  `balance` decimal(20) DEFAULT '0',
  `role`  ENUM('GUEST', 'USER', 'ADMIN') NOT NULL DEFAULT 'USER',
  `enabled` tinyint(1) DEFAULT '0', 
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `country` (
  `id` int(11) UNSIGNED NOT NULL,
  `name_en` char(255) DEFAULT NULL,
  `name_am` char(255) DEFAULT NULL,
  `name_ru` char(255) DEFAULT NULL,
  `_x_totobet_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `tournament` (
  `id` int(11) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `name_en` char(255) DEFAULT NULL,
  `name_am` char(255) DEFAULT NULL,
  `name_ru` char(255) DEFAULT NULL,
  `_x_totobet_id` int(11) DEFAULT NULL,
  `_x_country_totobet_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `game` (
  `id` int(11) UNSIGNED NOT NULL,
  `tournament_id` int(11) NOT NULL,
  `hash`     char(10)  DEFAULT NULL,
  `u_string` char(255) DEFAULT NULL,
  `name_en`  char(255) DEFAULT NULL,
  `name_am`  char(255) DEFAULT NULL,
  `name_ru`  char(255) DEFAULT NULL,
  `date`     datetime NOT NULL,

  `t_p1` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_p2` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_x`  decimal(20,16) DEFAULT '0.0000000000000000',
  `t_1x` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_12` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_x2` decimal(20,16) DEFAULT '0.0000000000000000',
  
  `t_b_05` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_b_15` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_b_25` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_b_35` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_b_45` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_b_55` decimal(20,16) DEFAULT '0.0000000000000000',
  
  `t_m_05` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_m_15` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_m_25` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_m_35` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_m_45` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_m_55` decimal(20,16) DEFAULT '0.0000000000000000',
  
  `t_b1_05` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_b1_15` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_b1_25` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_b1_35` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_b1_45` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_b1_55` decimal(20,16) DEFAULT '0.0000000000000000',
  
  `t_m1_05` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_m1_15` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_m1_25` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_m1_35` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_m1_45` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_m1_55` decimal(20,16) DEFAULT '0.0000000000000000',
  
  `t_b2_05` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_b2_15` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_b2_25` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_b2_35` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_b2_45` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_b2_55` decimal(20,16) DEFAULT '0.0000000000000000',
  
  `t_m2_05` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_m2_15` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_m2_25` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_m2_35` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_m2_45` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_m2_55` decimal(20,16) DEFAULT '0.0000000000000000',
  
  `t_t1_s_yes` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_t1_s_no`  decimal(20,16) DEFAULT '0.0000000000000000',
  `t_t2_s_yes` decimal(20,16) DEFAULT '0.0000000000000000',
  `t_t2_s_no`  decimal(20,16) DEFAULT '0.0000000000000000',
  `t_s_yes`    decimal(20,16) DEFAULT '0.0000000000000000',
  `t_s_no`     decimal(20,16) DEFAULT '0.0000000000000000',
  `_x_totobet_id` int(11) DEFAULT NULL,
  `_x_tournament_totobet_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `bet` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `bet_group_id` int(11) UNSIGNED NOT NULL,
  `game_id` int(11) UNSIGNED NOT NULL,
  `bet_type` char(15) NOT NULL,
  `is_finished` tinyint(1) DEFAULT '0',
  `status` ENUM('OK', 'NOK', 'WAIT') NOT NULL DEFAULT 'WAIT',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `bet_group` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) UNSIGNED NOT NULL,
  `amount` decimal(20,0) DEFAULT '0',
  `coefficient` decimal(20,16) DEFAULT '0.0000000000000000',
  `bets_count` int(3) UNSIGNED NOT NULL DEFAULT '0',
  `finished_bets_count` int(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` ENUM('OK', 'NOK', 'WAIT') NOT NULL DEFAULT 'WAIT',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;