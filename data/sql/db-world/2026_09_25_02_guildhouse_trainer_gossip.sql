-- Da a los 10 class trainers del módulo su propio gossip_menu con opción de reset de talentos
-- (GOSSIP_OPTION_UNLEARNTALENTS, gestionado nativamente por el core vía SendTalentWipeConfirm,
-- sin necesidad de ScriptName). Antes solo lo tenía el Death Knight Trainer, heredado del NPC
-- real "Lady Alistra" (gossip_menu 9691) porque el resto usaba gossip_menu_id=0 (menú por
-- defecto del core sin esta opción). El ActionMenuID 9791 ya existe en el core (contenido de
-- solo lectura), se reutiliza tal cual: no se toca el NPC real.
SET @C_TEMPLATE = 500030;
SET @GOSSIP_MENU = 500040; -- mismo rango de offsets que los class trainers, reutilizado como MenuID propio

DELETE FROM `gossip_menu` WHERE `MenuID` BETWEEN @GOSSIP_MENU + 10 AND @GOSSIP_MENU + 19;
DELETE FROM `gossip_menu_option` WHERE `MenuID` BETWEEN @GOSSIP_MENU + 10 AND @GOSSIP_MENU + 19;

INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES
	(@GOSSIP_MENU + 10, 13475), -- Death Knight (TextID real de Lady Alistra)
	(@GOSSIP_MENU + 11, 13475),
	(@GOSSIP_MENU + 12, 13475),
	(@GOSSIP_MENU + 13, 13475),
	(@GOSSIP_MENU + 14, 13475),
	(@GOSSIP_MENU + 15, 13475),
	(@GOSSIP_MENU + 16, 13475),
	(@GOSSIP_MENU + 17, 13475),
	(@GOSSIP_MENU + 18, 13475),
	(@GOSSIP_MENU + 19, 13475);

INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
	(@GOSSIP_MENU + 10, 0, 3, 'I seek training.', 0, 5, 16, 0, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 10, 1, 0, 'I wish to unlearn my talents.', 62295, 1, 1, 9791, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 11, 0, 3, 'I seek training.', 0, 5, 16, 0, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 11, 1, 0, 'I wish to unlearn my talents.', 62295, 1, 1, 9791, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 12, 0, 3, 'I seek training.', 0, 5, 16, 0, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 12, 1, 0, 'I wish to unlearn my talents.', 62295, 1, 1, 9791, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 13, 0, 3, 'I seek training.', 0, 5, 16, 0, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 13, 1, 0, 'I wish to unlearn my talents.', 62295, 1, 1, 9791, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 14, 0, 3, 'I seek training.', 0, 5, 16, 0, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 14, 1, 0, 'I wish to unlearn my talents.', 62295, 1, 1, 9791, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 15, 0, 3, 'I seek training.', 0, 5, 16, 0, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 15, 1, 0, 'I wish to unlearn my talents.', 62295, 1, 1, 9791, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 16, 0, 3, 'I seek training.', 0, 5, 16, 0, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 16, 1, 0, 'I wish to unlearn my talents.', 62295, 1, 1, 9791, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 17, 0, 3, 'I seek training.', 0, 5, 16, 0, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 17, 1, 0, 'I wish to unlearn my talents.', 62295, 1, 1, 9791, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 18, 0, 3, 'I seek training.', 0, 5, 16, 0, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 18, 1, 0, 'I wish to unlearn my talents.', 62295, 1, 1, 9791, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 19, 0, 3, 'I seek training.', 0, 5, 16, 0, 0, 0, 0, '', 0, 0),
	(@GOSSIP_MENU + 19, 1, 0, 'I wish to unlearn my talents.', 62295, 1, 1, 9791, 0, 0, 0, '', 0, 0);

-- Asigna el gossip_menu_id propio a los 10 class trainers del módulo (entries 500040-500049).
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_MENU + 10 WHERE `entry` = @C_TEMPLATE + 10;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_MENU + 11 WHERE `entry` = @C_TEMPLATE + 11;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_MENU + 12 WHERE `entry` = @C_TEMPLATE + 12;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_MENU + 13 WHERE `entry` = @C_TEMPLATE + 13;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_MENU + 14 WHERE `entry` = @C_TEMPLATE + 14;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_MENU + 15 WHERE `entry` = @C_TEMPLATE + 15;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_MENU + 16 WHERE `entry` = @C_TEMPLATE + 16;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_MENU + 17 WHERE `entry` = @C_TEMPLATE + 17;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_MENU + 18 WHERE `entry` = @C_TEMPLATE + 18;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_MENU + 19 WHERE `entry` = @C_TEMPLATE + 19;

-- Alchemy Trainer (offset 20): el NPC real "Lorokeem" (19052) tiene gossip_menu_id=8540 con la
-- opción "I wish to unlearn Elixir Mastery" (especialización de Alquimia). No aplica a un
-- instructor-vendedor genérico de guildhouse: se deja el clon sin gossip_menu_id propio (0),
-- comportamiento por defecto de trainer+vendor sin ese submenú.
UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `entry` = @C_TEMPLATE + 20;
