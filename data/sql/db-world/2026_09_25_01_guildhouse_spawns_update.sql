-- Reasigna las coordenadas ya existentes en guild_house_spawns a los entries propios del módulo
-- (500040-500066), creados en 2026_09_25_00_guildhouse_class_prof_trainers.sql. El Butler ahora
-- clona estos entries en vez de los NPC reales (mod_guildhouse_butler.cpp), así que la fila con
-- el entry real ya no se usa y se elimina.
SET @C_TEMPLATE = 500030;

DELETE FROM `guild_house_spawns` WHERE `entry` IN (
	26327, 26324, 26325, 26326, 26328, 26329, 26330, 26331, 26332, 29195,
	2836, 8128, 8736, 18774, 18751, 18773, 18753, 30721, 30722, 19187,
	19180, 19052, 908, 2627, 19184, 2834, 19185
);

REPLACE INTO `guild_house_spawns` (`id`, `entry`, `posX`, `posY`, `posZ`, `orientation`, `comment`) VALUES
	(1, @C_TEMPLATE + 14, 16216.5, 16279.4, 20.9306, 0.552869, 'Paladin Trainer'),
	(2, @C_TEMPLATE + 11, 16221.3, 16275.7, 20.9285, 1.37363, 'Druid Trainer'),
	(3, @C_TEMPLATE + 12, 16218.6, 16277, 20.9872, 0.967188, 'Hunter Trainer'),
	(4, @C_TEMPLATE + 13, 16224.9, 16274.9, 20.9319, 1.58765, 'Mage Trainer'),
	(5, @C_TEMPLATE + 15, 16227.9, 16275.9, 20.9254, 1.9941, 'Priest Trainer'),
	(6, @C_TEMPLATE + 16, 16231.4, 16278.1, 20.9222, 2.20026, 'Rogue Trainer'),
	(7, @C_TEMPLATE + 17, 16235.5, 16280.8, 20.9257, 2.18652, 'Shaman Trainer'),
	(8, @C_TEMPLATE + 18, 16240.8, 16283.3, 20.9299, 1.86843, 'Warlock Trainer'),
	(9, @C_TEMPLATE + 19, 16246.6, 16284.5, 20.9301, 1.68975, 'Warrior Trainer'),
	(12, @C_TEMPLATE + 10, 16252.3, 16284.9, 20.9324, 1.79537, 'Death Knight Trainer'),
	(13, @C_TEMPLATE + 21, 16220.5, 16302.3, 13.176, 6.14647, 'Blacksmithing Trainer'),
	(14, @C_TEMPLATE + 26, 16220.2, 16299.6, 13.178, 6.22894, 'Mining Trainer'),
	(15, @C_TEMPLATE + 22, 16219.8, 16296.9, 13.1746, 6.24465, 'Engineering Trainer'),
	(16, @C_TEMPLATE + 30, 16222.4, 16293, 13.1813, 1.51263, 'Jewelcrafting Trainer (Alliance)'),
	(17, @C_TEMPLATE + 31, 16222.4, 16293, 13.1813, 1.51263, 'Jewelcrafting Trainer (Horde)'),
	(18, @C_TEMPLATE + 28, 16227.5, 16292.3, 13.1839, 1.49691, 'Enchanting Trainer (Alliance)'),
	(19, @C_TEMPLATE + 29, 16227.5, 16292.3, 13.1839, 1.49691, 'Enchanting Trainer (Horde)'),
	(20, @C_TEMPLATE + 32, 16231.6, 16301, 13.1757, 3.07372, 'Inscription Trainer (Alliance)'),
	(21, @C_TEMPLATE + 33, 16231.6, 16301, 13.1757, 3.07372, 'Inscription Trainer (Horde)'),
	(22, @C_TEMPLATE + 24, 16231.2, 16295, 13.1761, 3.06574, 'Leatherworking Trainer'),
	(23, @C_TEMPLATE + 25, 16228.9, 16304.7, 13.1819, 4.64831, 'Skinning Trainer'),
	(24, @C_TEMPLATE + 20, 16218.1, 16281.8, 13.1756, 6.1975, 'Alchemy Trainer'),
	(25, @C_TEMPLATE + 27, 16218.3, 16284.3, 13.1756, 6.1975, 'Herbalism Trainer'),
	(26, @C_TEMPLATE + 23, 16220.4, 16278.7, 13.1756, 1.46157, 'Tailoring Trainer'),
	(27, @C_TEMPLATE + 34, 16225, 16310.9, 29.262, 6.22119, 'First Aid Trainer'),
	(28, @C_TEMPLATE + 35, 16225.3, 16313.9, 29.262, 6.28231, 'Fishing Trainer'),
	(29, @C_TEMPLATE + 36, 16227, 16278, 13.1762, 1.4872, 'Cooking Trainer');
